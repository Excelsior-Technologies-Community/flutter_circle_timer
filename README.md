# ⏳flutter_circle_timer
```
flutter_circle_timer is a modern animated circular timer library for Flutter that helps developers easily build countdown timers, count-up timers, Pomodoro timers, workout timers, quiz timers and OTP timers with beautiful progress animations.

The library provides gradient progress support, reverse animation mode, tick scaling effects, auto repeat functionality, time formatting utilities and flexible controller based timer management.

Developers can create engaging time-based UI experiences for Android, iOS, Web and Desktop applications without writing complex animation logic, custom painters or manual timer handling.
```

-------------------

## 🌟 Features
```
- 🧭 Circular animated progress indicator  
- ⌛ Countdown & count-up timer modes  
- 🔁 Reverse progress animation support  
- 🌈 Gradient progress stroke colors  
- 🎬 Smooth tick scale animation  
- ▶️ Start / Pause / Resume / Reset controls  
- 🔄 Auto repeat timer functionality  
- 🔔 Timer completion callback  
- 🕒 mm:ss time formatting utility  
- 🧩 Custom center child widget support  
- 🎯 Controller based timer state management  
- ⚙️ Highly customizable style configuration  
- 🚀 Lightweight and high performance  
- 🌍 Supports Android, iOS, Web & Desktop
```

--------------------

## 📦 Installation

Add dependency in your pubspec.yaml
```
yaml
dependencies:
  flutter_circle_timer:
    path: https://github.com/Excelsior-Technologies-Community/flutter_circle_timer/tree/stage
```
Then run:
```
flutter pub get
```

--------------------

## 🎥 Preview

https://github.com/user-attachments/assets/08a0b983-2a78-49d0-870d-42725c7986d8

------------------

## 🗂 File Structure
```
flutter_circle_timer/
│
├─ lib/
│   ├─ flutter_circle_timer.dart
│   │   // Main library export file
│   │
│   ├─main.dart
│   │  // Example demo application
│   │
│   └─ src/
│       ├─ circle_timer.dart
│       │   // Main circular timer widget
│       │
│       ├─ circle_timer_controller.dart
│       │   // Timer control logic (start / pause / reset)
│       │
│       ├─ circle_timer_style.dart
│       │   // Style configuration model
│       │
│       ├─ circle_timer_painter.dart
│       │   // Custom circular progress painter
│       │
│       └─ circle_timer_utils.dart
│           // Time formatting helper functions
│
│
├─ README.md
│   // Package documentation
│
├─ LICENSE
│   // Open source license
│
└─ pubspec.yaml
    // Package configuration
```

------------

## 🚀 How To Use

1️⃣ Import Package
```
import 'package:flutter_circle_timer/flutter_circle_timer.dart';
```
2️⃣ Create Controller
```
CircleTimerController controller = CircleTimerController()
  ..autoRepeat = true
  ..countUp = false;
```
3️⃣ Add Circular Timer
```
CircleTimer(
  duration: 60,
  controller: controller,
  reverse: true,
  style: const CircleTimerStyle(
    size: 220,
    strokeWidth: 14,
    gradientColors: [
      Colors.blue,
      Colors.purple,
      Colors.pink,
    ],
  ),
)
```
4️⃣ Custom Center Widget
```
CircleTimer(
  duration: 30,
  controller: controller,
  child: Icon(Icons.timer, size: 40),
)
```

---------------

## 🎨 Timer Style Properties

| Property        | Description                 |
| --------------- | --------------------------- |
| size            | Timer widget size           |
| strokeWidth     | Circular progress thickness |
| gradientColors  | Gradient progress colors    |
| backgroundColor | Circle background color     |
| textStyle       | Timer text style            |
| showAnimation   | Tick scale animation enable |

--------------------------

## 🧠 Controller Properties

| Property   | Description                 |
| ---------- | --------------------------- |
| autoRepeat | Restart timer automatically |
| countUp    | Enable count-up mode        |
| onTick     | Callback every second       |
| onComplete | Timer finished callback     |

----------------------

## 📄 MIT License
```
MIT License

Copyright (c) 2026

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files to deal in the Software without restriction.
```



