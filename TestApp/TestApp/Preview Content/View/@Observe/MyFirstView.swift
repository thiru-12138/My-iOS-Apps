//
//  MyFirstView.swift
//  TestApp
//
//  Created by Thirumalai Ganesh G on 28/10/25.
//

import SwiftUI

struct MyFirstView: View {
    @Bindable var settings: MySettings
    
    var body: some View {
        NavigationStack {
            ZStack {
                NavigationLink {
                    MySecondView(settings: settings)
                } label: {
                    VStack(alignment: .leading) {
                        Text("Name: \(settings.name)")
                        Text("Email: \(settings.email)")
                    }.padding()
                }
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        }
    }
}

//#Preview {
//    MyFirstView(settings: )
//}
