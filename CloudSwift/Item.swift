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


@Model
final class Element{
    var id: PersistentIdentifier
    var name: String
    var content: String
    init(id: PersistentIdentifier, name: String, content: String) {
        self.id = id
        self.name = name
        self.content = content
    }
}
