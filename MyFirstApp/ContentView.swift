//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Saida Zghal on 15/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    var listOfSandwiches = ["Bagel_saumon", "Bagel_pizza", "Bagel_bleu"]
    
    var body: some View {
        List {
            Text("Sandwiches")
            ForEach(listOfSandwiches, id: \.self) { sandwichName in
                HStack {
                    Image(sandwichName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 80, height: 80)
                        .clipped()
                    Text(sandwichName)
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
