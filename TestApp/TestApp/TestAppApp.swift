//
//  TestAppApp.swift
//  TestApp
//
//  Created by Thirumalai Ganesh G on 28/10/25.
//

import SwiftUI
import SwiftData

@main
struct TestAppApp: App {
    //For @Environment
    @StateObject private var settings = UserSettings()
    
    //For @Observe
    @State private var mysettings = MySettings()
    
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            //ContentView()
//            FirstView()
//                .environmentObject(settings)
            //MyFirstView(settings: mysettings)
            ImageLoadView()
        }
        .modelContainer(sharedModelContainer)
    }
}
