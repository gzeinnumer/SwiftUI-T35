//
//  ContentView.swift
//  SwiftUI T35
//
//  Created by M Fadli Zein on 24/03/22.
//

import SwiftUI

struct ContentView: View {
    @State var isHover = false
    
    var body: some View {
        VStack {
            Button(action: {}) {
                Text("Hello, world!")
            }
            .padding()
            .contentShape(RoundedRectangle(cornerRadius: 10))
            .hoverEffect(.lift)
            
            Text("Hover Effect")
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .trim(from: isHover ? 0 : 1, to: 1)
                        .stroke()
                )
                .contentShape(RoundedRectangle(cornerRadius: 10))
                .scaleEffect(isHover ? 1.2 : 1)
                .animation(.spring())
                .onHover{ hover in
                    isHover = hover
                }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
