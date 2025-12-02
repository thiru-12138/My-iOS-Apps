//
//  MySecondView.swift
//  TestApp
//
//  Created by Thirumalai Ganesh G on 28/10/25.
//

import SwiftUI

struct MySecondView: View {
    @Bindable var settings: MySettings
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                TextField("Name", text: $settings.name)
                    .textFieldStyle(.roundedBorder)
                TextField("Email", text: $settings.email)
                    .textFieldStyle(.roundedBorder)
            }.padding()
        }
    }
}

//#Preview {
//    MySecondView()
//}
