//
//  PlayGame.swift
//  EdutainmentKids
//
//  Created by Vitaliy Novichenko on 05.03.2024.
//

import SwiftUI


struct OptionGame: View {
    private var multipliers: [Int] = Array(1...12)
    private var exampleAmount = [5,10,15,20]
    @State private var choosenGamerAmountExemple = 0
    @State private var choosenGamer = 0
    private let colors: [Color] = [.red,.green,.blue,.yellow]
    
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 80))
    ]
    private let adaptiveCol = [
        GridItem(.adaptive(minimum: 70))
    ]
    var body: some View {
        NavigationStack {
            ZStack {
                Image("UIbg")
                     .resizable()
                     .ignoresSafeArea()
                VStack {
                    Spacer()
                   Text("Выбери число")
                        .font(.largeTitle.bold())
                        .foregroundStyle(.brown)
                        .shadow(radius: 20)
                    
                    LazyVGrid(columns: adaptiveColumns, spacing: 20) {
                        ForEach(multipliers, id: \.self) { number in
                            Button {
                               choosenGamer = number
                            } label: {
                                Text("\(number)")
                                    .buttonStyle()
                                    
                                    
                            }
                        }
                    }
                    .frameStyle()
                    .padding(.horizontal)
                    .padding(.vertical)
                    Text("Cколько примеров хочешь решить?")
                        .font(.title3.bold())
                        .foregroundStyle(.brown)
                        .shadow(radius: 20)
                    
                    LazyVGrid(columns: adaptiveCol,spacing: 20) {
                        ForEach(exampleAmount, id: \.self) { num in
                            Button {
                                    
                                } label: {
                                    ZStack {
                                    Rectangle()
                                        .frame(width: 70,height: 70)
                                        .foregroundStyle(colors[num%4])
                                        .cornerRadius(25)
                                        .shadow(radius: 20)
                                        
                                    Text(String(num))
                                            .foregroundStyle(.white)
                                            .font(.largeTitle.bold())
                                            .shadow(radius: 20)
                                            .padding(.horizontal, 10)
                                }
                                    
                            }
                                
                        }
                        
                    }
                    Spacer()
                    Spacer()
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    OptionGame()
}
