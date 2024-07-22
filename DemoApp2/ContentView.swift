//
//  ContentView.swift
//  DemoApp2
//
//  Created by Geetansh Rajesh on 10/07/24.
//

import SwiftUI

struct ContentView: View {
    @State private var Country = ["Estonia","France","Germany","Ireland","Italy","Monaco","Nigeria","Poland","Spain","UK","Ukraine","US"].shuffled()
   @State private var CorrectAnswer = Int.random(in: 0...2)
    @State private var showingscore = false
    @State private var scoretitle = ""
    var body: some View {
        ZStack{
            
            ///  LinearGradient(colors: [.white ,.purple], startPoint: .top, endPoint: .bottom)
            RadialGradient(stops: [
                .init(color: .purple, location: 0.3),
                .init(color: .green, location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 700)
            .ignoresSafeArea()
            .ignoresSafeArea()
            VStack{
                Spacer()
                Text("Guess the flag")
                    .foregroundColor(.white)
                    .font(.title.bold())
                Spacer()
                
                VStack(spacing: 20){
                    
                    VStack {
                       
                        Text("Tap the flag of")
                            .foregroundColor(.secondary)
                            .font(.subheadline.weight(.heavy))
                        Text(Country[CorrectAnswer]).foregroundColor(.blue)
                            .font(.title.weight(.semibold))
                        
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            Flagtapped(number)
                        } label: {
                            Image(Country[number])
                        }
                        .clipShape(.capsule)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical,20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 30 )
                )
                Spacer()
                Spacer()
                Text("Score ???")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .font(.title.bold())
                Spacer()
                
                
            }
            .padding()
            
        }
        .alert(scoretitle, isPresented: $showingscore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is ???")
        }
     }
    func Flagtapped(_ number : Int){
        if number == CorrectAnswer
        {
            scoretitle = "Correct"
        }
        else {
            scoretitle = "Wrong"
        }
        showingscore = true
    }
        func askQuestion() {
        Country.shuffle()
        CorrectAnswer = Int.random(in: 0...2)
    }
}

#Preview {
    ContentView()
}
