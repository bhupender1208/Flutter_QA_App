import 'package:FlutIQ/models/question_model.dart';

const List<Question> questionsList = [

  // Core (IDs 1..13)
  Question(
    id: 1,
    question: 'What is Flutter?',
    answer:
        "Flutter is Google's open-source UI toolkit for building cross-platform apps from a single codebase.",
    category: 'core',
  ),
  Question(
    id: 2,
    question: 'What is Dart?',
    answer: 'Dart is the programming language used by Flutter.',
    category: 'core',
  ),
  Question(
    id: 3,
    question: 'Difference between StatelessWidget and StatefulWidget?',
    answer:
        'StatelessWidget is immutable while StatefulWidget can change dynamically.',
    category: 'core',
  ),
  Question(
    id: 4,
    question: 'What is hot reload?',
    answer:
        'Hot reload updates code changes instantly without restarting the app.',
    category: 'core',
  ),
  Question(
    id: 5,
    question: 'What is hot restart?',
    answer: 'Hot restart restarts the app completely and resets app state.',
    category: 'core',
  ),
  Question(
    id: 6,
    question: 'What is BuildContext?',
    answer:
        'BuildContext represents the location of a widget inside the widget tree.',
    category: 'core',
  ),
  Question(
    id: 7,
    question: 'What are widgets in Flutter?',
    answer: 'Widgets are the basic UI building blocks in Flutter.',
    category: 'core',
  ),
  Question(
    id: 8,
    question: 'Difference between final and const?',
    answer: 'final is runtime constant while const is compile-time constant.',
    category: 'core',
  ),
  Question(
    id: 9,
    question: 'What is null safety?',
    answer: 'Null safety prevents null reference runtime errors.',
    category: 'core',
  ),
  Question(
    id: 10,
    question: 'What is async and await?',
    answer: 'Used for asynchronous programming in Dart.',
    category: 'core',
  ),
  Question(
    id: 11,
    question: 'Difference between Future and Stream?',
    answer:
        'Future returns a single value while Stream returns multiple values over time.',
    category: 'core',
  ),
  Question(
    id: 12,
    question: 'What is app lifecycle?',
    answer: 'It describes app states like resumed, paused, and inactive.',
    category: 'core',
  ),
  Question(
    id: 13,
    question: 'Difference between debug and release mode?',
    answer:
        'Debug mode is for development while release mode is optimized for production.',
    category: 'core',
  ),

  // State (IDs 14..16)
  Question(
    id: 14,
    question: 'What is setState()?',
    answer: 'setState updates the UI by rebuilding the widget.',
    category: 'state',
  ),
  Question(
    id: 15,
    question: 'What is Provider?',
    answer: 'Provider is a popular state management solution in Flutter.',
    category: 'state',
  ),
  Question(
    id: 16,
    question: 'What is GetX?',
    answer:
        'GetX is a Flutter package for state management, navigation, and dependency injection.',
    category: 'state',
  ),

  // UI & Layout (17..22)
  Question(
    id: 17,
    question: 'Difference between ListView and Column?',
    answer: 'ListView is scrollable while Column is not.',
    category: 'ui',
  ),
  Question(
    id: 18,
    question: 'What is Expanded widget?',
    answer: 'Expanded fills available space inside Row or Column.',
    category: 'ui',
  ),
  Question(
    id: 19,
    question: 'What is Flexible widget?',
    answer: 'Flexible adjusts its size flexibly within available space.',
    category: 'ui',
  ),
  Question(
    id: 20,
    question: 'What is Scaffold?',
    answer: 'Scaffold provides basic app structure like AppBar and Body.',
    category: 'ui',
  ),
  Question(
    id: 21,
    question: 'What is MediaQuery?',
    answer: 'MediaQuery provides screen size and orientation information.',
    category: 'ui',
  ),
  Question(
    id: 22,
    question: 'What is responsive UI?',
    answer: 'Responsive UI adapts to different screen sizes.',
    category: 'ui',
  ),

  // Navigation (23..24)
  Question(
    id: 23,
    question: 'What is Navigator in Flutter?',
    answer: 'Navigator manages screen navigation in Flutter.',
    category: 'nav',
  ),
  Question(
    id: 24,
    question: 'Difference between push and pushReplacement?',
    answer:
        'push adds a new screen while pushReplacement replaces the current screen.',
    category: 'nav',
  ),

  // APIs & Data (25..30)
  Question(
    id: 25,
    question: 'How to call API in Flutter?',
    answer: 'Using packages like http or dio.',
    category: 'data',
  ),
  Question(
    id: 26,
    question: 'What is JSON parsing?',
    answer: 'Converting JSON data into Dart objects.',
    category: 'data',
  ),
  Question(
    id: 27,
    question: 'Difference between GET and POST API?',
    answer: 'GET fetches data while POST sends data.',
    category: 'data',
  ),
  Question(
    id: 28,
    question: 'What is SharedPreferences?',
    answer: 'SharedPreferences stores small local key-value data.',
    category: 'data',
  ),
  Question(
    id: 29,
    question: 'What is Firebase?',
    answer: "Firebase is Google's backend platform for mobile apps.",
    category: 'data',
  ),
  Question(
    id: 30,
    question: 'What is FCM?',
    answer: 'Firebase Cloud Messaging is used for push notifications.',
    category: 'data',
  ),
];
