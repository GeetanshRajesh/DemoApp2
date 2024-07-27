//
//  ContentView.swift
//  DemoApp2
//
//  Created by Geetansh Rajesh on 10/07/24.
//

import SwiftUI

struct ContentView: View {
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Monaco", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"]
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score = 0
    @State private var gameOver = false

    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: .purple, location: 0.3),
                .init(color: .green, location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 700)
            .ignoresSafeArea()

            VStack {
                Spacer()
                Text("Guess the flag")
                    .foregroundColor(.white)
                    .font(.title.bold())
                Spacer()

                VStack(spacing: 20) {
                    VStack {
                        Text("Tap the flag of")
                            .foregroundColor(.secondary)
                            .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnswer])
                            .foregroundColor(.blue)
                            .font(.title.weight(.semibold))
                    }

                    ForEach(0..<3) { number in
                        Button {
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                                .renderingMode(.original)
                                .clipShape(Capsule())
                                .shadow(radius: 10)
                        }
                       
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 30))

                Spacer()
                Spacer()
                Text("Score: \(score)") // Display the score
                    .foregroundColor(.blue)
                    .font(.title.bold())
                Spacer()
            }
            .padding()

            if gameOver {
                VStack {
                    VStack{
                        Text("Game Over")
                            .font(.largeTitle)
                            .foregroundColor(.secondary)
                        Text("Your final score is \(score)")
                            .font(.title)
                            .foregroundColor(.secondary)
                            .padding()
                        
                        Button(action: resetGame) {
                            Text("Play Again")
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 20)
                    .background(Gradient(colors: [.purple , .green]))
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                }
                .padding()
            }
        }
        .onAppear(perform: startGame)
    }

    func startGame() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }

    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
            askQuestion()
        } else {
            scoreTitle = "Wrong"
            gameOver = true
        }
        showingScore = true
    }

    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }

    func resetGame() {
        score = 0
        gameOver = false
        askQuestion()
    }
}

#Preview {
    ContentView()
}
