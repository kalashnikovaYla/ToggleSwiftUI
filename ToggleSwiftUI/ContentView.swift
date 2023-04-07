//
//  ContentView.swift
//  ToggleSwiftUI
//
//  Created by sss on 07.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var isOnToggle = false
    
       
    var body: some View {
        
        VStack {
            
            ZStack {
                
                HStack {
                    VStack {
                        Text("Page")
                        Text("Page2")
                        Spacer().frame(height: 500)
                    }
                    Spacer()
                }
                
                RoundedRectangle(cornerRadius: 10).fill(Color.yellow).offset(x: isOnToggle ? 100: 0)
                Text("There is something").offset(x: isOnToggle ? 100: 0)
            }
            Toggle(isOn: $isOnToggle) {
               Text("Show settings")
           }.padding()
            
        }.animation(.spring(response: 0.5, dampingFraction: 0.7, blendDuration: 0.6))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
