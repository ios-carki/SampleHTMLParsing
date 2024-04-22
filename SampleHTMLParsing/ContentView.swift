//   Created on 2024/04/22
//   Using Swift 5.0
//   ContentView.swift
//   Created by Owen
  

import SwiftUI

struct ContentView: View {
    var services = RestServices()
    @State var row: [Row] = []
    
    var body: some View {
        VStack {
            Button {
                services.test(start: "1", end: "5", lineNumber: "4호선") { response in
                    row = response
                }
            } label: {
                Text("새로고침")
            }
            .buttonStyle(.borderedProminent)
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            ScrollView {
                ForEach(0..<row.count, id: \.self) { index in
                    Divider()
                    Text("역이름: \(row[index].stationNm)")
                    Text("호선: \(row[index].lineNum)")
                    
                    Divider()
                }
            }
        }
        .padding()
        .onAppear(perform: {
            services.test(start: "1", end: "5", lineNumber: "4호선") { response in
                row = response
            }
        })
    }
}

#Preview {
    ContentView()
}
