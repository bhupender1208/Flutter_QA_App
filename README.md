 
# flutter_qa_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
 
# Flutter_QA_App


 # FlutIQ 🎯

> **Your Flutter & Dart Interview Preparation App**
> Buit with ❤️ using Flutter + Provider (MVC Architecture)

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white" alt="Flutter">
  <img src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white" alt="Dart">
  <img src="https://img.shields.io/badge/Architecture-MVC-6C63FF?style=for-the-badge" alt="MVC">
  <img src="https://img.shields.io/badge/State-Provider-4CAF50?style=for-the-badge" alt="Provider">
  <img src="https://img.shields.io/badge/Version-1.0.0-FF6584?style=for-the-badge" alt="v1.0.0">
</p>

---

## 📱 Project Overview

**FlutIQ** ek Flutter-powered Q&A application hai jo Flutter developers ke liye interview preparation ko easy aur effective banata hai. 

Ismein **100+ interview questions** hain jo Flutter, Dart, State Management, Widgets, aur advanced topics ko cover karte hain — category-wise organized, searchable, aur expand-on-tap format mein.

> *"Interview prep, one tap at a time"*

---

## ✨ Features

| Feature | Description |
|---|---|
| 🔍 **Smart Search** | Real-time search across questions, answers, and categories |
| 🏷️ **Category Filtering** | Filter questions by topic (Flutter Basics, Dart, State Management, etc.) |
| 📂 **Expandable Q&A Cards** | Tap to expand/collapse answers with smooth animations |
| 📊 **Live Stats** | Real-time count of total, filtered, and expanded questions |
| 🎬 **Animated Splash Screen** | Professional intro with logo animation, gradient background, and fade transitions |
| 🌓 **Clean Architecture** | MVC pattern with separate Model, View, Controller layers |
| 📱 **Responsive UI** | Works smoothly on all Android screen sizes |
| ⚡ **Fast Performance** | Pure Dart logic, no heavy dependencies |
| 🎨 **Modern Design** | Gradient header, animated category chips, accordion cards |
| 🌐 **Hindi + English** | UI strings mix of both for better understanding |

### 🎯 Special Features

- **Multiple Expansion Support** — Expand one or multiple Q&A cards simultaneously
- **Clear Search One-Tap** — Instantly reset search with clear button
- **Auto-collapse on Category Change** — Clean slate when switching categories
- **Empty State UI** — Friendly message when no results found with reset option
- **Footer Attribution** — Built-in footer for app branding

---

## 🛠️ Tech Stack

```
Frontend
├── Flutter 3.x              — UI Framework
├── Dart 3.x                 — Programming Language
├── Provider                 — State Management
└── Material Design 3        — Design System

Architecture
├── MVC Pattern              — Clean separation of concerns
├── Model Layer              — Data classes + Repository (business logic)
├── View Layer               — Screens + Widgets (UI only)
└── Controller Layer         — ChangeNotifier (state bridge)

Tools
├── Android Studio / VS Code — IDE
├── Flutter CLI              — Build tools
└── Git + GitHub             — Version control
```

| Package | Version | Purpose |
|---|---|---|
| `flutter` | SDK `>=3.0.0` | Core framework |
| `provider` | `^6.1.0` | State management |
| `flutter_lints` | `^3.0.0` | Code quality |
| `flutter_test` | SDK | Testing |

---

## 📂 Folder Structure (MVC)

```
lib/
│
├── main.dart                         # 🎬 App entry point + Provider setup
│
├── models/                           # 🔵 MODEL LAYER
│   ├── question_model.dart           #   Question data class (id, question, answer, category)
│   └── question_repository.dart      #   Data source + search/filter/Stats business logic
│
├── views/                            # 🟢 VIEW LAYER (UI — No business logic)
│   ├── screens/
│   │   ├── splash_screen.dart        #   Animated intro screen (2.5s auto-navigation)
│   │   └── home_screen.dart          #   Main Q&A screen (CustomScrollView + Slivers)
│   └── widgets/
│       ├── app_header.dart           #   Gradient header with title + question count
│       ├── search_bar.dart           #   Search input with clear button
│       ├── stats_row.dart            #   Stats cards (total, showing, expanded)
│       ├── category_tabs.dart        #   Horizontal scrollable category filter chips
│       └── qa_card.dart              #   Expandable accordion Q&A card widget
│
├── controllers/                      # 🟠 CONTROLLER LAYER
│   └── home_controller.dart          #   ChangeNotifier — state + actions bridge
│
├── data/
│   └── questions_data.dart           #   Static Q&A data (100+ questions)
│
└── constants/
    └── app_constants.dart            #   Colors, strings, dimensions, theme constants
```

### 📐 MVC Data Flow

```
main.dart
    │
    ▼
ChangeNotifierProvider<HomeController>
    │
    ├─── HomeController (Logic)
    │        │
    │        ├── _activeCategory    ← State
    │        ├── _searchQuery       ← State
    │        ├── _expandedIds       ← State
    │        │
    │        ├── filterQuestions()  ← Business Logic
    │        ├── toggleExpansion()  ← Actions
    │        ├── onCategorySelected()
    │        ├── clearSearch()
    │        │
    │        └── notifyListeners() ──────────────────┐
    │                                              (rebuild)
    │
    └─── HomeScreen (View)
             │
             ├── AppHeader       (UI)
             ├── SearchBar       (UI)
             ├── StatsRow        (UI)
             ├── CategoryTabs    (UI)
             ├── QACard List     (UI)
             └── Empty/Footer    (UI)
```

---

## 📸 Screenshots

> Add your app screenshots here

```
┌─────────────────────────────────────────┐
│  ┌─────────────────────────────────┐    │
│  │ 💡 IQ                           │    │   ← Animated Splash
│  │                                 │    │      (2.5s)
│  │      FlutIQ                     │    │
│  │   Flutter Interview Prep        │    │
│  └─────────────────────────────────┘    │
└─────────────────────────────────────────┘

┌─────────────────────────────────────────┐
│  ██████╗ ███████╗███╗   ███╗███████╗    │
│  ██╔══██╗██╔════╝████╗ ████║██╔════╝    │   ← Gradient Header
│  ███████║███████╗██╔████╔██║███████╗    │      "Flutter Q&A"
│  ██╔══██║╚════██║██║╚██╔╝██║╚════██║    │
│  ██║  ██║███████║██║ ╚═╝ ██║███████║    │
│  ╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝╚══════╝    │
│                                         │
│  🔍 Search questions...            ✕    │   ← Search Bar
│                                         │
│  ┌─────────────┐  ┌─────────────┐       │
│  │  📚  Total   │  │  🔥 Results │       │   ← Stats Row
│  │     42      │  │      12     │       │
│  └─────────────┘  └─────────────┘       │
│                                         │
│  [All] [Flutter] [Dart] [State Mng]     │   ← Category Tabs
│                                         │
│  ┌─────────────────────────────────┐    │
│  │ [Flutter] What is StatefulWidget │ ▼ │   ← Q&A Card
│  └─────────────────────────────────┘    │      (Collapsed)
│                                         │
│  ┌─────────────────────────────────┐    │
│  │ [Dart]    async/await kaise     │ ▼ │   ← Q&A Card
│  │           work karte hain?      │   │      (Expanded)
│  │  ┌───────────────────────────┐  │    │
│  │  │ async function Future      │  │    │   ← Answer
│  │  │ return karta hai...       │  │    │
│  │  └───────────────────────────┘  │    │
│  └─────────────────────────────────┘    │
└─────────────────────────────────────────┘
```

### 📱 App Flow Diagram

```
┌─────────────────┐
│   Splash Screen  │  (2.5s animated)
│   💡 FlutIQ      │
└────────┬────────┘
         │ fade transition
         ▼
┌─────────────────┐
│   Home Screen    │
│                  │
│  🔍 Search       │
│  📊 Stats        │
│  🏷️ Categories   │
│  📝 Q&A Cards    │
│     ↓ tap        │
│  Expand Answer   │
└─────────────────┘
```

---

## 🚀 Installation Steps

### Prerequisites

- Flutter SDK `>=3.0.0`
- Dart SDK `>=3.0.0`
- Android Studio / VS Code with Flutter extensions

### Step 1 — Clone the Repository

```bash
git clone https://github.com/YOUR_USERNAME/flutiq.git
cd flutiq
```

### Step 2 — Install Dependencies

```bash
flutter pub get
```

### Step 3 — Run the App

```bash
# For debug mode
flutter run

# For release mode (recommended for testing performance)
flutter run --release

# For specific device
flutter run -d android        # Android
flutter run -d chrome         # Web
flutter run -d windows        # Windows
```

### Step 4 — Build APK (Production)

```bash
# Debug APK
flutter build apk --debug

# Release APK
flutter build apk --release

# Bundle for Play Store
flutter build appbundle --release
```

The APK will be at:
```
build/app/outputs/flutter-apk/app-release.apk
```

---

## 🔧 Configuration

### Change App Name

In `pubspec.yaml`:
```yaml
name: flutiq
description: "FlutIQ - Flutter & Dart Interview Q&A App"
```

### Change Theme Colors

In `lib/constants/app_constants.dart`:
```dart
class AppColors {
  static const primary = Color(0xFF6C63FF);    // Change primary color
  static const accent = Color(0xFFFF6584);     // Change accent color
  static const background = Color(0xFFF5F6FA); // Change background
}
```

### Add More Questions

In `lib/data/questions_data.dart`, add new entries to `questionsList`:
```dart
Question(
  id: '101',
  question: 'Your new question here?',
  answer: 'Your detailed answer here.',
  category: 'Flutter Basics',  // Existing or new category
),
```

---

## 📊 Available Categories

| Category | Description |
|---|---|
| **All** | Show all questions |
| **Flutter Basics** | Widgets, state, lifecycle |
| **Dart** | Language features, async, null safety |
| **State Management** | Provider, BLoC, InheritedWidget |
| **Advanced** | Performance, architecture, testing |

---

## 👨‍💻 Author

<div align="center">

### **[YOUR_NAME]**

> Flutter Developer | Building meaningful apps 🚀

[![GitHub](https://img.shields.io/badge/GitHub-333?style=for-the-badge&logo=github&logoColor=white)](https://github.com/YOUR_USERNAME)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com/in/YOUR_USERNAME)
[![Twitter](https://img.shields.io/badge/Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/YOUR_USERNAME)
[![Email](https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:your.email@example.com)

</div>

---

## 🤝 Contributing

Contributions are welcome! 🎉

1. **Fork** the repository
2. **Clone** your fork
3. **Create** a new branch: `git checkout -b feature/your-feature-name`
4. **Commit** your changes: `git commit -m 'Add some amazing feature'`
5. **Push** to the branch: `git push origin feature/your-feature-name`
6. **Open** a **Pull Request**

---

## 📄 License

This project is open source and available under the **MIT License**.

```
MIT License

Copyright (c) 2024 FlutIQ
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
```

---

## ⭐ Show Your Support

> If this project helped you in your interview prep, give it a ⭐!

```
Your support motivates me to build more open-source Flutter projects.
```

---

<div align="center">

**Built with ❤️ using Flutter** | **MVC Architecture** | **FlutIQ v1.0.0**

</div>
