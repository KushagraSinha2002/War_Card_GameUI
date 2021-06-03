//
//  ContentView.swift
//  WarCardGame UI Practice
//
//  Created by kushagra sinha on 22/05/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card5"
    @State var cpuCard = "card6"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            //Background
            Image("background").ignoresSafeArea()
            VStack{
                Spacer()
                //Logo
                Image("logo")
                Spacer()
                HStack{
                    //Cards
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    
                    let playerRandom = Int.random(in: 2...14)
                    let cpuRandom = Int.random(in: 2...14)
                    
                    playerCard = "card" + String(playerRandom)
                    cpuCard = "card" + String(cpuRandom)
                    
                    if playerRandom > cpuRandom{
                        playerScore += 1
                    }
                    else if cpuRandom > playerRandom{
                        cpuScore += 1
                    }
                    
                }, label: {
                    Image("dealbutton")
                })
                Spacer()
                HStack{
                    Spacer()
                    //Score
                    VStack{
                        Text("Player")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    Spacer()
                }
                Spacer()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
