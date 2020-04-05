//
//  ContentView.swift
//  DiceeDashSwiftUI
//
//  Created by Saul Rivera on 04/04/20.
//  Copyright © 2020 Saul Rivera. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: 1)
                    DiceView(n: 1)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    
                }) {
                    Text("Roll")
                        .font(.system(size: 40))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
            }
        }
    }
}

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding(.all)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
