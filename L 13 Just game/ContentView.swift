//
//  ContentView.swift
//  L 13 Just game
//
//  Created by Kirill Willer on 19/11/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var credits = 1000
    @State private var earn = 0
    @State private var slot1 = 1
    @State private var slot2 = 1
    @State private var slot3 = 1
    var body: some View {
        ZStack{
            Rectangle()
                .fill(
            RadialGradient(gradient: Gradient(colors: [.red, .yellow]), center: .center, startRadius: 50, endRadius: 300)
            )
                .ignoresSafeArea()
            
        VStack(spacing: 20){
            Text("SwiftUI Slots!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
                //.shadow(color: Color.primary, radius: 6, x: 5, y: 5)
            
            Spacer()
            Text("Credits: \(credits)")
                .padding()
                .background(Color.white.opacity(0.6))
                .cornerRadius(14)
                
                
            Text("Earn Now: \(earn)")
            
            Spacer()
            HStack{
                
                Image("fruit\(slot1)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .background(Color.white.opacity(0.6))
                    .cornerRadius(14)
                Image("fruit\(slot2)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .background(Color.white.opacity(0.6))
                    .cornerRadius(14)
                Image("fruit\(slot3)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .background(Color.white.opacity(0.6))
                    .cornerRadius(14)
            }
            Spacer()
            Button("Spin!") {
                slot1 = Int.random(in: 1...3)
                slot2 = Int.random(in: 1...3)
                slot3 = Int.random(in: 1...3)
                
                if slot1 == slot2 && slot1 == slot3{
                    credits += 150
                    earn = 150
                }
                else{
                    credits -= 50
                    earn = -50
                }
            }
            .padding()
            .padding(.horizontal, 40.0)
            .font(.headline)
                .foregroundColor(Color.black)
                //.background(Color(.systemPink))
                .background(RadialGradient(gradient: Gradient(colors: [.yellow, .red ]), center: .center, startRadius: 10, endRadius: 50))
                .cornerRadius(13)
                .shadow(color: Color.primary, radius: 6, x: 5, y: 5)

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
