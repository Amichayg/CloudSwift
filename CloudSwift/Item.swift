//
//  Item.swift
//  CloudSwift
//
//  Created by Amichay Giuili on 10/29/23.
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
