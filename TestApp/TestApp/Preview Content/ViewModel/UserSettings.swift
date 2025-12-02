//
//  UserSettings.swift
//  TestApp
//
//  Created by Thirumalai Ganesh G on 28/10/25.
//

import Foundation

class UserSettings: ObservableObject {
    @Published var name: String = "Guest"
    @Published var email: String = "Guest@exmaple.com"
}
