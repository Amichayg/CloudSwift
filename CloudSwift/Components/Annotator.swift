//
//  Annotator.swift
//  CloudSwift
//
//  Created by Amichay Giuili on 10/29/23.
//

import Foundation
import SwiftUI
import SwiftData

@Model
final class Hey{
    var name: String
    init(name: String) {
        self.name = name
    }
}

struct AnnotatorView: View{
    @Environment(\.modelContext) private var modelContext
    @Query private var heys: [Hey]
    var body: some View{
        VStack{
            Text("Annotate Me!")
            Button("Hey"){
                modelContext.insert(Hey(name: "You"))
            }
            ForEach(heys, id: \.self) { hey in
                Text(hey.name)
            }
        }
    }
}

#Preview {
    AnnotatorView().modelContainer(for: Hey.self, inMemory: true)
}
