<img width="387" height="771" alt="Screenshot 2026-09-08 at 10 00 49 AM" src="https://github.com/user-attachments/assets/ac6673fb-4efa-4091-972c-c9a96b7b3098" />
<img width="382" height="772" alt="Screenshot 2026-09-08 at 10 01 55 AM" src="https://github.com/user-attachments/assets/10d96f18-01a1-440e-a4e3-f1a29b0d56e3" />

# Calculator in SwiftUI

A simple and clean calculator app built using **SwiftUI** and **MVVM architecture**.  
This project was created as part of my iOS development learning journey.

## Features

- Basic arithmetic operations
- Addition, subtraction, multiplication, and division
- Percentage calculation
- Decimal numbers
- Positive / negative conversion
- Clear and delete functionality
- Calculator history
- Clean and responsive SwiftUI interface
- Reusable UI components
- MVVM architecture

## Technologies

- Swift
- SwiftUI
- MVVM
- Xcode
- iOS

## Project Structure

```text
Calculator
│
├── Models
│   └── CalculatorButtonType.swift
│
├── ViewModels
│   └── CalculatorViewModel.swift
│
├── Views
│   ├── ContentView.swift
│   ├── DisplayView.swift
│   ├── TopBarView.swift
│   ├── ButtonGridView.swift
│   └── CalculatorButton.swift
│
└── Utilities
    ├── AppColors.swift
    └── Constants.swift
````

## Architecture

This project follows the **MVVM (Model-View-ViewModel)** pattern.

```text
User Interaction
       ↓
     View
       ↓
CalculatorViewModel
       ↓
 Calculator Logic
       ↓
     View
       ↓
   Updated UI
```

## Future Improvements

* Scientific calculator
* Improved calculation history
* Haptic feedback
* Animations
* Accessibility improvements
* Unit and UI testing

## Author

**Developed by M.Zahid Khan**

Aspiring iOS Developer learning and building with:

**Swift • SwiftUI • MVVM • iOS Development**
