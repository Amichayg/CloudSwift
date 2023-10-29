//
//  Editor.swift
//  CloudSwift
//
//  Created by Amichay Giuili on 10/29/23.
//

import Foundation
import SwiftUI
import SwiftData

struct PillView: View{
    let name: String
    @State private var isCapsule = true
        @State private var width: CGFloat = 100
        @State private var height: CGFloat = 60
        @State private var cornerRadius: CGFloat = 30

        var body: some View {
            VStack {
                Rectangle()
                    .frame(width: width, height: height)
                    .cornerRadius(cornerRadius)
                    .onTapGesture {
                        isCapsule.toggle()

                        withAnimation(Animation.easeInOut(duration: 0.3)) {
                            // First step: Expand width and reduce corner radius
                            if isCapsule{
                                width =  220
                            }
                            else{
                                height = 60
                            }
                            cornerRadius = isCapsule ? 15 : 30

                        }

                        // Second step: Delay the height expansion to start after the first animation ends
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                            withAnimation(Animation.easeInOut(duration: 0.5)) {
                                if isCapsule{
                                    height =  120
                                }
                                else{
                                    width = 110
                                }
                            }
                        }
                    }

                }
        }

}

#Preview{
    PillView(name: "Cookie")
}
