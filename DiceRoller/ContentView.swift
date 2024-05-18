//
//  ContentView.swift
//  DiceRoller
//
//  Created by Lucca Dias on 14/05/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var numberOfDice: Int = 1
    
    var body: some View {
        VStack {
            Text("Dice Roller")
                .font(.largeTitle.lowercaseSmallCaps())
                .foregroundStyle(.white)
            
            
            HStack {
                ForEach(1...numberOfDice, id: \.description) { _ in
                    DiceView()
                }
            }
            .padding()
            
            HStack {
                Button("Remove Dice", systemImage: "minus.circle.fill") {
                    numberOfDice -= 1
                }
                .disabled(numberOfDice == 1)
                Button("Add Dice", systemImage: "plus.circle.fill"){
                    numberOfDice += 1
                }
                .disabled(numberOfDice == 5)
            }
            .labelStyle(.iconOnly)
            .padding()
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.myBackground)
        .tint(.white)
    }
}

#Preview {
    ContentView()
}
