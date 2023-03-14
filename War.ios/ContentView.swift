//
//  ContentView.swift
//  War.ios
//
//  Created by Michael Cuellar on 3/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playaCard = "card14"
    @State var playaScore = 0
    @State var cpuCard = "card13"
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                
                HStack{
                    Spacer()
                    Image(playaCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                
                Button(action: {
                    deal()
                }, label: {
                    Image("button")
                })
                .foregroundColor(.white)
                
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("You")
                            .font(.headline)
                            .fontWeight(.bold)
                            .padding(.bottom, 10.0)
                        Text(String(playaScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("Her Other Dude")
                            .font(.headline)
                            .fontWeight(.bold)
                            .padding(.bottom, 10.0)
                        
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                
            }
            
        }


    }
    
    func deal(){
        // Randomize Player Card
        let playaCardValue = Int.random(in: 2...14)
        playaCard = "card" + String(playaCardValue)
        
        // Randomize Cpu Card
        let cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        // Update Score
        if playaCardValue > cpuCardValue {
        //adds 1 to player score
           
                
                playaScore += 1
            }
        else if cpuCardValue > playaCardValue{
            cpuScore += 1
        }
        else{
            //tie
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
