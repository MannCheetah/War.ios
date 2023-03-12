//
//  ContentView.swift
//  War.ios
//
//  Created by Michael Cuellar on 3/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(.green)
                .ignoresSafeArea()
            VStack {

                Image("Leo")
                    .resizable()
                    .cornerRadius(150)
                    .aspectRatio(contentMode: .fit)
                    .padding(.all)
                Text("President Leo")
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
            }
            
            
        }
        


    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
