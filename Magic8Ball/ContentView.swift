//
//  ContentView.swift
//  Magic8Ball
//
//  Created by Adam Mroz on 13/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    let advicesArray = ["Yes!","No!","Might be...","Sure!","Tomorrow!"]
    @State var advice = ""
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea(.all)
            
            VStack {
                Spacer()
                ZStack{
                    Image("8ball")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text(advice)
                        .foregroundStyle(.white)
                        .frame(width: 140,
                               height: 80,
                               alignment: .center)
                }
                Spacer()
                Button("Ask me") {
                    advice = drawAdvice()
                }
            }
        }
    }
    
    func drawAdvice () -> String {
        
        //Draw advice
        return(advicesArray[Int.random(in: 0...advicesArray.count-1)])
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
