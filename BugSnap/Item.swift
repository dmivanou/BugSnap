//
//  Item.swift
//  BugSnap
//
//  Created by Dima on 23.09.2026.
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
