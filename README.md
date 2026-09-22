 # FlutIQ 🎯

> **Your Flutter & Dart Interview Preparation App**
> Built with ❤️ using Flutter + Firebase + Provider (MVC Architecture)

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white" alt="Flutter">
  <img src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white" alt="Dart">
  <img src="https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=black" alt="Firebase">
  <img src="https://img.shields.io/badge/Firestore-FFCA28?style=for-the-badge&logo=firebase&logoColor=black" alt="Cloud Firestore">
  <img src="https://img.shields.io/badge/Architecture-MVC-6C63FF?style=for-the-badge" alt="MVC">
  <img src="https://img.shields.io/badge/State-Provider-4CAF50?style=for-the-badge" alt="Provider">
  <img src="https://img.shields.io/badge/Version-1.1.0-FF6584?style=for-the-badge" alt="v1.1.0">
</p>

---

## 📱 Project Overview

**FlutIQ** is a responsive Flutter interview-preparation application designed to help developers prepare for Flutter and Dart interviews through an organized and interactive Q&A experience.

The app contains **70+ interview questions** covering Flutter/Dart fundamentals, State Management, Widgets/UI, Navigation, Data/API concepts, and other important interview topics.

Q&A content is stored and managed using **Cloud Firestore**, allowing questions to be added, edited, or removed without maintaining a hardcoded local question list.

FlutIQ also provides real-time search, category-based filtering, single-expand accordion cards, dynamic statistics, category-wise numbering, search highlighting, and code-style keyword formatting. 

---

 
## ✨ Features


| Feature | Description |
|---|---|
| 🔥 **Cloud Firestore Integration** | Q&A content is dynamically fetched from Firebase Cloud Firestore |
| 🔍 **Smart Search** | Search across questions, answers, and categories with highlighted matches |
| 🏷️ **Category Filtering** | Filter interview questions based on their topic/category |
| 📂 **Accordion Q&A Cards** | Expand/collapse answers with smooth animations |
| ☝️ **Single Expansion** | Opening a new Q&A card automatically collapses the previously opened card |
| 🔢 **Dynamic Numbering** | Displays global question IDs in All and sequential numbering inside filtered categories |
| 💻 **Code Keyword Highlighting** | Backtick-wrapped technical terms are rendered with code-style formatting |
| 📊 **Dynamic Stats** | Displays total questions, currently visible questions, and available categories |
| 🎬 **Animated Splash Screen** | Intro screen with logo animation, gradient background, and fade transition |
| 🧩 **Provider State Management** | `ChangeNotifier` and Provider manage search, filtering, expansion, and Firestore-driven UI state |
| 🏗️ **MVC Architecture** | Separates Models, Views, and Controllers for maintainable code |
| 📱 **Responsive UI** | Responsive interface designed for web and mobile screen sizes |
| 🎨 **Modern Design** | Gradient header, category chips, animated accordion cards, and clean Q&A layout |
| 🌐 **Firebase Hosting** | Flutter web application deployed and hosted using Firebase Hosting |
 

### 🎯 Special Features
- **Firestore-powered Q&A Management** — Questions can be maintained from Firebase instead of a hardcoded local list
- **Single-Open Accordion** — Keeps only one answer expanded at a time
- **Dynamic Category Numbering** — Filtered categories automatically display sequential question numbers
- **Clear Search One-Tap** — Instantly reset search with clear button
- **Auto-collapse on Category Change** — Clean slate when switching categories
- **Empty State UI** — Friendly message when no results found with reset option
- **Dynamic Question Count** — Question and category statistics automatically update from loaded data
- **Footer Attribution** — Built-in footer for app branding

---

## 🛠️ Tech Stack

```
Frontend
├── Flutter 3.x              — UI Framework
├── Dart 3.x                 — Programming Language
├── Provider                 — State Management
└── Material Design 3        — Design System

Backend / Database
├── Firebase Core            — Firebase initialization
├── Cloud Firestore          — Cloud-based Q&A database
└── Firebase Hosting         — Web application hosting

Architecture
├── MVC Pattern              — Clean separation of concerns
├── Model Layer              — Data classes + Repository (business logic)
├── View Layer               — Screens + Widgets (UI only)
└── Controller Layer         — ChangeNotifier (state bridge)

Tools
├── VS Code / Android Studio — Development environment
├── Flutter CLI              — Build and run tools
├── Firebase CLI             — Firebase deployment
├── FlutterFire CLI          — Flutter/Firebase configuration
└── Git + GitHub             — Version control
```

### 📦 Major Packages

| Package | Version | Purpose |
|---|---|---|
| `flutter` | SDK `>=3.0.0` | Core framework |
| `provider` | `^6.1.0` | State management |
| `firebase_core` |  `^22.2.1` | Initializes Firebase in the Flutter application |
| `cloud_firestore` | `^26.6.0` | Fetches and manages Q&A data from Cloud Firestore |
| `flutter_lints` | `^3.0.0` | Code quality |
| `flutter_test` | SDK | Testing |

---

## 📂 Folder Structure (MVC)

```
lib/
│
├── main.dart                         # App entry point + Firebase + Provider setup
│
├── firebase_options.dart             # FlutterFire generated Firebase configuration
│
├── models/                           # 🔵 MODEL LAYER
│   ├── question_model.dart           # Question model (id, question, answer, category)
│   └── constants/
│       └── app_constants.dart        # Colors, category labels and app constants
│
├── controllers/                      # 🟠 CONTROLLER LAYER
│   └── home_controller.dart          # Firestore data + search/filter/accordion state
│
└── views/                            # 🟢 VIEW LAYER
    └── screens/
        ├── splash_screen.dart        # Animated intro screen
        ├── home_screen.dart          # Main Q&A screen using CustomScrollView + Slivers
        │
        └── widgets/
            ├── app_header.dart       # Header with title + question count
            ├── search_bar.dart       # Search input + clear action
            ├── stats_row.dart        # Total, showing and category statistics
            ├── category_tabs.dart    # Horizontal category filter
            └── qa_card.dart          # Accordion + search/code highlighting
```
---
## 📸 Screenshots

### Splash Screen

<p align="center">
  <img src="screenshots/splash_screen.png" width="300", height="300">
</p>

### Home Screen
<p align="center"> 
  <img src="screenshots/home.png" width="250", height="300">
  <img src="screenshots/home_screen.png" width="250", height="300">
</p>
 
 
 
### 📱 App Flow Diagram

```
┌─────────────────┐
│   Splash Screen  │  (2.5s animated)
│   💡 FlutIQ      │
└────────┬────────┘
         │ fade transition
         ▼ 
┌─────────────────────┐
│    Firebase Init    │
│   Cloud Firestore   │
└──────────┬──────────┘
           │
           ▼
┌─────────────────────┐
│     Home Screen     │
│                     │
│  🔍 Search          │
│  📊 Dynamic Stats   │
│  🏷️ Categories      │
│  📝 Q&A Cards       │
└──────────┬──────────┘
           │
           ▼
┌─────────────────────┐
│   Select Question   │
│         ↓           │
│   Expand Answer     │
│         ↓           │
│ Code/Search Styling │
└─────────────────────┘ 
```

---

## 🚀 Installation Steps

### Prerequisites

- Flutter SDK `>=3.0.0`
- Dart SDK `>=3.0.0`
- Android Studio / VS Code with Flutter extensions
- Firebase CLI
- FlutterFire CLI

### Step 1 — Clone the Repository

```bash
git clone https://github.com/YOUR_USERNAME/flutiq.git
cd flutiq
```

### Step 2 — Install Dependencies

```bash
flutter pub get
```
### Step 3 — Firebase Configuration

The project uses Firebase and Cloud Firestore.

If configuring Firebase for your own Firebase project, run:

```bash
flutterfire configure
```

Make sure the required Firebase platforms are configured before running the application.

### Step 4 — Run the App

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

### Step 5 — Build APK (Production)

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
### Step 6 — Build & Deploy Flutter Web

Build the latest Flutter web version:

```bash
flutter build web
```

Deploy it to Firebase Hosting:

```bash
firebase deploy --only hosting
```

 
 ---

## 👨‍💻 Author

<div align="center">

### **[BHUPENDER]**

> Flutter Developer | Building meaningful apps 🚀 

[![GitHub](https://img.shields.io/badge/GitHub-333?style=for-the-badge&logo=github&logoColor=white)](https://github.com/bhupender1208)

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/bhupender-00b134282/)

[![Email](https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:bhupender00012@gmail.com)

</div>

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
