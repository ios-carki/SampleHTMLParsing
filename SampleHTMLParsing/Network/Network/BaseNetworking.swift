//
//  BaseNetworking.swift
//  ios-code-base
//
//  Created by Esat Gözcü on 24.03.2022.
//

import Foundation

import Alamofire
import XMLCoder
import SWXMLHash

final class BaseNetworking {
    static let shared = BaseNetworking()
    private init() {}
    var currentElement: String = ""
    var currentStation: [String: String] = [:]
    var stations: [[String: String]] = []
    let decoder = XMLDecoder()
    
    func noParamRequest(endPoint: API, completion: @escaping ([Row]) -> Void) {
        decoder.shouldProcessNamespaces = true
        
        let url = buildRequestURL(endPoint: endPoint)
        
        if(url != nil) {
            AF.request(url!,
                       method: endPoint.method, parameters: nil
            ).validate().response { (response) in
                switch response.result {
                case .success(_):
                    
                    let xml = XMLHash.parse(response.data ?? Data())
                    var result: [Row] = []
                    
                    let t = xml["SearchSTNBySubwayLineInfo"]["row"].all//[0]["STATION_CD"].element?.text
                    
                    
                    t.forEach { value in
                        if let stationName = value["STATION_NM"].element?.text, let lineNumber = value["LINE_NUM"].element?.text {
                            result.append(Row(stationNm: stationName, lineNum: lineNumber))
                        }
                    }
                    completion(result)
                    
                case .failure(let error):
                    print("❌❌❌❌❌\nResponse Fail... Cause: \(error.localizedDescription)\n(Code: \(response.response?.statusCode ?? 999))\n❌❌❌❌❌")
                    
                }
            }
        } else {
            
        }
    }
    
    
    private func buildRequestURL(endPoint: API) -> URL? {
        
        let env = AppEnvironment.current
        var components = URLComponents()
        components.scheme = "http"
        components.host = env.baseURL
        components.path = endPoint.path
        components.port = 8088
        ///if we have any query parameters we should add them here
        components.queryItems = endPoint.queryParameters.map {
            URLQueryItem(name: $0, value: "\($1)")
        }
        
        print("현재 서비스: ", AppEnvironment.current)
        print("풀 URL: \(components.scheme!)://\(components.host!):\(components.port ?? 3001)\(components.path)")
        return components.url
    }
    
    // Async Alamofire Request
    private let session: Session = {
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForRequest = 10
        configuration.timeoutIntervalForResource = 10
        return Session(configuration: configuration)
    }()
    
    // Called when an opening tag is encountered
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        currentElement = elementName
        if elementName == "row" {
            currentStation = [:]
        }
    }
    
    // Called when a closing tag is encountered
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if elementName == "row" {
            stations.append(currentStation)
        }
        currentElement = ""
    }
    
    // Called when characters are found between tags
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        let trimmedString = string.trimmingCharacters(in: .whitespacesAndNewlines)
        if !trimmedString.isEmpty {
            currentStation[currentElement] = trimmedString
        }
    }
}
