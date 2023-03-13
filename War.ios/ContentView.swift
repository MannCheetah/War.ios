//
//  ContentView.swift
//  War.ios
//
//  Created by Michael Cuellar on 3/11/23.
//

import SwiftUI

struct ContentView: View {
    
    var playaCard = "card14"
    var playaScore = 0
    var cpuCard = "card13"
    var cpuScore = 0
    
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
        print("Deal Cards")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
