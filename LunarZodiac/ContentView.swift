//
//  ContentView.swift
//  LunarZodiac
//
//  Created by Andy Jung on 1/30/23.
//

import SwiftUI

struct ContentView: View {
    @State private var currentyear = 2023
    @State private var imageyear = 3
    var body: some View {
        VStack {
            Text(String(currentyear))
                .fontWeight(.black)
                .font(.largeTitle)
                .foregroundColor(.red)
                .padding()
            
            Spacer()
            
            Image("image\(imageyear)")
                .resizable()
                .scaledToFit()
                .padding()
            
            Spacer()
            
            
            HStack{
                Button {
                    if imageyear > 0{
                        imageyear -= 1
                    }else{
                        imageyear = 11
                    }
                    
                    if currentyear > 0{
                        currentyear -= 1
                    }else{
                        currentyear = 2023
                    }
                } label: {
                    Image(systemName: "chevron.left")
                }
                
                Spacer()
                
                Button {
                    if imageyear < 11{
                        imageyear = imageyear + 1
                    }   else{
                        imageyear = 0
                    }
                    
                    if currentyear > 0{
                        currentyear = currentyear + 1
                    }else{
                        currentyear = 2023
                    }
                } label: {
                    Image(systemName: "chevron.right")
                }
                
                
            }
            .buttonStyle(.borderedProminent)
            .fontWeight(.black)
            .font(.largeTitle)
            .tint(.red)
            .padding()
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
