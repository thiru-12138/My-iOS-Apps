//
//  FirstView.swift
//  TestApp
//
//  Created by Thirumalai Ganesh G on 28/10/25.
//

import SwiftUI

struct FirstView: View {
    @EnvironmentObject var settings: UserSettings
    
    var body: some View {
        NavigationSplitView {
            ZStack {
                NavigationLink {
                    SecondView()
                } label: {
                    VStack(alignment: .leading) {
                        Text("Name: \(settings.name)")
                        Text("Email: \(settings.email)")
                    }.padding()
                }
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .navigationTitle("First Screen")
        } detail: {
            Text("Detail")
        }
    }
}

#Preview {
    FirstView()
}
