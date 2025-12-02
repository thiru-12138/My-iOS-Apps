//
//  SecondView.swift
//  TestApp
//
//  Created by Thirumalai Ganesh G on 28/10/25.
//

import SwiftUI

struct SecondView: View {
    @EnvironmentObject var settings: UserSettings
    
    var body: some View {
        ZStack {
            VStack {
                TextField("Name", text: $settings.name)
                    .textFieldStyle(.roundedBorder)
                TextField("Email", text: $settings.email)
                    .textFieldStyle(.roundedBorder)
            }.padding()
        }.navigationTitle("Second Screen")
    }
}

#Preview {
    SecondView()
}
