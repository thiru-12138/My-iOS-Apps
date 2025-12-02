//
//  Item.swift
//  TestApp
//
//  Created by Thirumalai Ganesh G on 28/10/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
