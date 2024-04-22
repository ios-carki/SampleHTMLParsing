//
//  AppEnvironment.swift
//  ios-code-base
//
//  Created by Esat Gözcü on 24.03.2022.
//

//import Foundation
//
//// MARK: - App Environment class containing the current evn and helpers checks
//public class AppEnvironment {
//
//    public static var current: Environment {
//        let appSchema = Bundle.main.infoDictionary?["App Environment"] as? String
//        switch appSchema {
//        case ".test":
//            return .test
//        default:
//            return .live
//        }
//    }
//
//    public static var isLive: Bool {
//        AppEnvironment.current == Environment.live
//    }
//
//    public static var isTest: Bool {
//        AppEnvironment.current == Environment.test
//    }
//}

import Foundation

final public class AppEnvironment {
    
    public static var current: RestEnvironment {
        let appScheme = Bundle.main.infoDictionary?["App Environment"] as? String
        
        switch appScheme {
        case ".develop":
            return .develop
        case ".service":
            return .service
        default:
            return .service
        }
    }
    
    public static var isService: Bool {
        AppEnvironment.current == RestEnvironment.service
    }
    
    public static var isTest: Bool {
        AppEnvironment.current == RestEnvironment.develop
    }
}
