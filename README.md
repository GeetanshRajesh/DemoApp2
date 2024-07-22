Guess the Flag

"Guess the Flag" is an engaging and educational app developed using Swift and SwiftUI.
Designed to test and improve geographical knowledge, the app presents users with a series of flags from various countries.
The objective is to correctly identify the country associated with each flag from a set of multiple-choice answers.
The intuitive and visually appealing interface, powered by SwiftUI, ensures a seamless and interactive user experience.
With each correct guess, players earn points and progress through increasingly challenging levels, making "Guess the Flag" both a fun and informative way to learn about the world's flags.

### Features


  Interactive Gameplay: Users are presented with three flags and must select the correct one based on the country name displayed.
    Dynamic Interface: Utilizes SwiftUI's RadialGradient for a visually appealing background.
    Score Tracking: Users receive feedback on whether their guess is correct or incorrect.
    Randomized Flags: Flags and correct answers are shuffled each round for a fresh experience every time.

### Requirements

   Xcode 12 or later
   iOS 14.0 or later

### Installation

Clone the repository:
git clone https://github.com/GeetanshRajesh/DemoApp2.git

### Open the project in Xcode:
   cd DemoApp2
   open DemoApp2.xcodeproj

### Usage

   Build and run the project on the simulator or a physical device.
   The app will display a country name and three flag options.
   Tap the flag that corresponds to the country name displayed.
   An alert will inform you whether your guess was correct or incorrect.
   Continue guessing flags and track your progress.

### Code Overview

  ContentView.swift: Contains the main user interface and game logic.
  Country: Array of country names.
  CorrectAnswer: Random index for the correct flag.
  showingscore: Boolean to control the display of the score alert.
  scoretitle: Title for the score alert.
  Flagtapped(_ number: Int): Checks if the selected flag is correct.
  askQuestion(): Shuffles the flags and updates the correct answer.

### Screenshots

<img width="337" alt="Screenshot 2024-07-22 at 11 31 40 PM" src="https://github.com/user-attachments/assets/f67c1fd6-0276-46df-85d9-472bed494c4c">

<img width="303" alt="Screenshot 2024-07-22 at 11 32 13 PM" src="https://github.com/user-attachments/assets/8c07fc47-2810-4b8e-84a3-535bd7e7064d">

<img width="325" alt="Screenshot 2024-07-22 at 11 31 53 PM" src="https://github.com/user-attachments/assets/6f813ca3-cfe0-4335-befb-2263b1efe02a">



### Contributing

  Fork the repository.
  Create a new branch (git checkout -b feature-branch).
  Make your changes.
  Commit your changes (git commit -am 'Add new feature').
  Push to the branch (git push origin feature-branch).
  Open a Pull Request.
