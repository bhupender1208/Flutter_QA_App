import 'package:FlutIQ/models/question_model.dart'; 

const List<Question> questionsList = [
  // ============================================================
  // 🔵 CORE — Flutter & Dart Fundamentals (21 questions)
  // ============================================================

  // --- Q1-Q7: Flutter & Dart Basics ---
  Question(
    id: 1,
    question: 'What is Flutter?',
    answer:
        "Flutter is Google's open-source, cross-platform UI toolkit (released 2017) for building "
        "high-performance, beautiful apps for Android, iOS, Linux, macOS, Windows, and Web — "
        "all from a single Dart codebase. Key highlights: reactive programming model, rich pre-built "
        "widgets, and Hot Reload for instant code updates without full rebuild.",
    category: 'core',
  ),
  Question(
    id: 2,
    question: 'What is Dart, and why is it used in Flutter?',
    answer:
        "Dart is a client-side programming language optimized for cross-platform development. "
        "Why Flutter uses it: (1) Optimized for client-side — perfect for UI-heavy apps. "
        "(2) Modern & easy to learn. (3) Compiled language — faster than JavaScript. "
        "(4) Sound type system — great for large-scale applications.",
    category: 'core',
  ),
  Question(
    id: 3,
    question: 'What are the different types of widgets in Flutter?',
    answer:
        "Widgets are Flutter's UI building blocks. Two types: "
        "(1) StatelessWidget — Immutable, cannot change once built (Text, Icons, static labels). "
        "(2) StatefulWidget — Mutable, updates dynamically based on user interaction or events "
        "(TextField, Checkbox, Slider). Requires a separate State object to manage mutable data.",
    category: 'core',
  ),
  Question(
    id: 4,
    question: 'Difference between StatelessWidget and StatefulWidget?',
    answer:
        "StatelessWidget: No mutable state, properties can't change after build, best for static "
        "content (Text, Icons). StatefulWidget: Has mutable state, properties can change via user "
        "interaction, best for dynamic/interactive content (TextField, Checkbox, Slider).",
    category: 'core',
  ),
  Question(
    id: 5,
    question: 'What is the purpose of a Key in Flutter?',
    answer:
        "A Key is an object that uniquely identifies a widget in the widget tree. It maintains "
        "widget state and optimizes rendering when the tree is modified (widgets added/removed/moved). "
        "Types: GlobalKey (access widget from anywhere), UniqueKey (unique on every rebuild), "
        "ValueKey (identifies by value, common in ListView), ObjectKey (identifies by object identity).",
    category: 'core',
  ),
  Question(
    id: 6,
    question: 'Difference between MaterialApp and WidgetsApp?',
    answer:
        "MaterialApp: For Material Design apps — provides pre-built widgets (AppBar, BottomNavBar, "
        "FAB, Card, SnackBar), built-in themes, routing, i18n. WidgetsApp: Minimal base for custom "
        "designs — only provides Navigator, Text, GestureDetector. Use MaterialApp for standard apps, "
        "WidgetsApp for fully custom UI systems.",
    category: 'core',
  ),
  Question(
    id: 7,
    question: 'What are some common Flutter performance optimization techniques?',
    answer:
        "(1) Minimize rebuilds: use const/final, shouldRebuild to control rebuilds. "
        "(2) Reduce widget size: use SizedBox, Spacer, Expanded. (3) Right widget choice: "
        "StatelessWidget for static, AnimatedBuilder for animations, FutureBuilder for async. "
        "(4) Reduce layers: ClipRRect for clipping, RepaintBoundary to isolate. "
        "(5) Right data structures: Set/Map for lookups, List for ordered collections. "
        "(6) Avoid large assets — smaller assets render faster.",
    category: 'core',
  ),

  // --- Q8-Q11: State & Lifecycle ---
  Question(
    id: 8,
    question: 'What is State in Flutter?',
    answer:
        "State refers to data/information that can change dynamically during a widget's lifetime. "
        "StatefulWidgets maintain state via a separate State object, created when the widget is "
        "inserted into the tree and destroyed when removed. This separation allows the widget to "
        "be immutable while the State object handles dynamic data.",
    category: 'core',
  ),
  Question(
    id: 9,
    question: 'What is the purpose of setState()?',
    answer:
        "setState() tells Flutter that state has changed and the UI needs rebuilding. It takes "
        "a function that updates state, then triggers the build() method. This is the simplest "
        "way to update UI in Flutter — but it rebuilds the entire widget, so for complex UIs, "
        "consider ValueListenableBuilder or state management solutions like Provider.",
    category: 'core',
  ),
  Question(
    id: 10,
    question: 'Performance difference between StatelessWidget and StatefulWidget?',
    answer:
        "StatelessWidget is more performant — no mutable state to track, no rebuild overhead. "
        "StatefulWidget is slightly less performant because Flutter tracks mutable state and "
        "rebuilds on every change. However, the difference is negligible for most apps. "
        "Choose based on functional needs, not performance alone.",
    category: 'core',
  ),
  Question(
    id: 11,
    question: 'What is hot reload vs hot restart?',
    answer:
        "Hot Reload: Updates code changes instantly without restarting the app — preserves "
        "app state. Hot Restart: Restarts the app completely and resets all app state. "
        "Hot reload is faster for iterative development; hot restart is needed when state "
        "initialization changes. Both are key to Flutter's fast development cycle.",
    category: 'core',
  ),

  // --- Q12-Q14: App Structure ---
  Question(
    id: 12,
    question: 'What is the purpose of the MaterialApp widget?',
    answer:
        "MaterialApp creates a Material Design application — the root widget for most Flutter apps. "
        "It provides: pre-built widgets (AppBar, BottomNavBar, FAB, Card, SnackBar), theme "
        "customization, internationalization support, and routing. It's the most commonly used "
        "widget for creating mobile apps in Flutter.",
    category: 'core',
  ),
  Question(
    id: 13,
    question: 'What is BuildContext?',
    answer:
        "BuildContext represents a widget's location in the widget tree. It's used to: "
        "(1) Access the widget tree and build/update widgets. (2) Access properties of ancestor "
        "widgets via the nearest BuildContext ancestor. (3) Required in the build() method. "
        "It's essentially a handle to the location of a widget in the tree.",
    category: 'core',
  ),
  Question(
    id: 14,
    question: 'What are the different build modes in Flutter?',
    answer:
        "Three modes: (1) Debug Mode — for development with hot reload, assertions, debugging "
        "tools. (2) Profile Mode — for testing/measuring performance, some debugging retained. "
        "(3) Release Mode — for production, removes all debugging info, maximum optimization. "
        "Use debug during development, release for Play Store/App Store deployment.",
    category: 'core',
  ),

  // --- Q15-Q16: Dart Concepts ---
  Question(
    id: 15,
    question: 'Difference between final and const in Dart?',
    answer:
        "final: Runtime constant — value is set once at runtime and cannot change. "
        "const: Compile-time constant — value is known and fixed at compile time. "
        "Use const for values known before compilation (better performance), final for values "
        "determined at runtime. const objects are canonicalized (same instance reused).",
    category: 'core',
  ),
  Question(
    id: 16,
    question: 'What is null safety in Dart?',
    answer:
        "Null safety prevents null reference runtime errors by making all types non-nullable "
        "by default. Use ? to mark a type as nullable. Benefits: catches null errors at compile "
        "time instead of runtime, cleaner code, better performance. Dart 2.12+ has sound null safety.",
    category: 'core',
  ),

  // --- Q17-Q18: Async ---
  Question(
    id: 17,
    question: 'What is async and await in Dart?',
    answer:
        "async and await handle asynchronous operations in Dart. An async function returns "
        "a Future. The await keyword pauses execution until the Future completes — without "
        "blocking the main thread. This makes async code read like synchronous code, avoiding "
        "callback hell. Used for API calls, file I/O, database operations.",
    category: 'core',
  ),
  Question(
    id: 18,
    question: 'Difference between Future and Stream?',
    answer:
        "Future: Returns a single value (or error) once, then completes. Use for one-shot "
        "operations like API calls. Stream: Returns multiple values over time asynchronously. "
        "Use for continuous data like user input, WebSocket messages, sensor data, or real-time "
        "updates. Stream is like a pipe that delivers multiple Future-like events.",
    category: 'core',
  ),

  // --- Q19-Q20: Tools & Debugging ---
  Question(
    id: 19,
    question: 'What is the Widget Inspector?',
    answer:
        "The Widget Inspector is a debugging tool in Flutter DevTools that lets you inspect "
        "and debug the widget tree. It shows: properties and state of each widget, real-time "
        "UI debugging capabilities, widget selection and highlighting. Access via DevTools or "
        "Ctrl+Alt+Shift+W on Android. Essential for understanding layout issues.",
    category: 'core',
  ),
  Question(
    id: 20,
    question: 'Why do Flutter apps take a long time for the first build?',
    answer:
        "The initial build compiles everything from scratch: (1) Dart code must be converted "
        "to native code. (2) Flutter engine and all libraries must initialize. (3) Assets "
        "(images, fonts) are included. After the first full build, Hot Reload is very fast "
        "because the engine and libraries are already initialized. This is a one-time cost.",
    category: 'core',
  ),

  // --- Q21: Comparison ---
  Question(
    id: 21,
    question: 'Flutter vs React Native — which one is better?',
    answer:
        "Flutter: Faster performance (compiles to native code), more UI customization freedom, "
        "rapidly growing community, uses Dart. React Native: Larger community/more libraries, "
        "uses JavaScript (easier for JS devs), uses native components. Choose Flutter for high "
        "performance + custom UIs. Choose React Native for JS ecosystem + larger library support.",
    category: 'core',
  ),

  // ============================================================
  // 🟠 STATE — State Management (11 questions)
  // ============================================================

  Question(
    id: 22,
    question: 'What is Provider in Flutter?',
    answer:
        "Provider is a popular state management solution in Flutter, built on top of "
        "InheritedWidget. It simplifies data flow: wrap the app with ChangeNotifierProvider, "
        "then use context.watch() or context.read() in widgets. Benefits: simple API, "
        "efficient rebuilds, no boilerplate. Ideal for small to medium apps.",
    category: 'state',
  ),
  Question(
    id: 23,
    question: 'What is GetX?',
    answer:
        "GetX is a lightweight Flutter package combining state management, navigation, and "
        "dependency injection. Features: reactive state management (obs variables), route "
        "management without BuildContext, dependency injection. Benefits: minimal boilerplate, "
        "high performance, built-in utilities. Popular for its simplicity.",
    category: 'state',
  ),
  Question(
    id: 24,
    question: 'What is InheritedWidget?',
    answer:
        "InheritedWidget efficiently passes data down the widget tree to descendants without "
        "explicit constructor passing. It's Flutter's built-in mechanism for data propagation. "
        "Provider and many state management solutions are built on top of it. When data changes, "
        "only dependent widgets rebuild — not the entire tree.",
    category: 'state',
  ),
  Question(
    id: 25,
    question: 'What is the purpose of ValueListenableBuilder?',
    answer:
        "ValueListenableBuilder rebuilds a specific widget when a ValueListenable (like "
        "ValueNotifier) changes — WITHOUT rebuilding the entire widget tree like setState(). "
        "This is a performance optimization: only the builder widget rebuilds, not its parent "
        "or siblings. Great for granular UI updates.",
    category: 'state',
  ),
  Question(
    id: 26,
    question: 'What is the purpose of StreamBuilder?',
    answer:
        "StreamBuilder listens to a Stream and rebuilds its widget whenever new data is emitted. "
        "It handles all async states: waiting (shows loader), error (shows error), and data "
        "(shows UI). Ideal for real-time features: chat messages, live scores, stock tickers. "
        "Automatically disposes the stream subscription when the widget is removed.",
    category: 'state',
  ),
  Question(
    id: 27,
    question: 'What is the purpose of FutureBuilder?',
    answer:
        "FutureBuilder rebuilds a widget when a Future completes. It provides a builder "
        "function that handles: waiting state (ConnectionState.waiting), error state, and "
        "data state. Perfect for one-shot async operations like API calls, database queries, "
        "or file reading. Simplifies async UI patterns significantly.",
    category: 'state',
  ),
  Question(
    id: 28,
    question: 'StreamBuilder vs FutureBuilder — what is the difference?',
    answer:
        "StreamBuilder: Handles continuous/live data streams, updates whenever new data arrives, "
        "best for real-time features (chat, stock prices). FutureBuilder: Handles one-time data "
        "fetching, updates once when Future completes, best for API calls and DB queries. "
        "StreamBuilder = multiple updates over time. FutureBuilder = single update.",
    category: 'state',
  ),
  Question(
    id: 29,
    question: 'What is the app lifecycle in Flutter?',
    answer:
        "App lifecycle describes app states: resumed (app is visible and responsive), "
        "inactive (app is in an inactive state), paused (app is not visible), detached "
        "(app is about to be removed). Tracked via WidgetsBindingObserver mixin. Useful "
        "for pausing/resuming video, saving state, or stopping background tasks.",
    category: 'state',
  ),
  Question(
    id: 30,
    question: 'Difference between debug and release mode?',
    answer:
        "Debug Mode: For development — includes hot reload, assertions, debugging tools, "
        "larger APK size. Release Mode: For production — removes all debugging, enables "
        "optimizations (tree shaking, minification), smaller APK, faster performance. "
        "Use debug during coding, release for Play Store deployment.",
    category: 'state',
  ),

  // ============================================================
  // 🟢 UI — Widgets & Layout (23 questions)
  // ============================================================

  Question(
    id: 31,
    question: 'What is the purpose of Scaffold?',
    answer:
        "Scaffold provides the basic Material Design visual structure for a screen. It offers: "
        "AppBar (top), BottomNavigationBar (bottom), body (main content), Drawer (side menu), "
        "FloatingActionButton, and SnackBar support. It's the most common screen-level widget "
        "in Flutter apps, providing consistent layout structure.",
    category: 'ui',
  ),
  Question(
    id: 32,
    question: 'What is MediaQuery and MediaQuery.of()?',
    answer:
        "MediaQuery retrieves device information: screen size (width/height), orientation "
        "(portrait/landscape), devicePixelRatio, textScaleFactor, padding (notch, status bar). "
        "MediaQuery.of(context) accesses this data from the nearest MediaQuery widget. Essential "
        "for responsive UIs that adapt to different screen sizes and orientations.",
    category: 'ui',
  ),
  Question(
    id: 33,
    question: 'What is the purpose of SafeArea?',
    answer:
        "SafeArea insets its child to avoid system UI obstructions — status bar, notch, "
        "navigation bar, or camera cutout. It ensures content is always visible and not "
        "hidden behind system elements. Use it as the first widget inside Scaffold body "
        "for consistent cross-device UI rendering.",
    category: 'ui',
  ),
  Question(
    id: 34,
    question: 'What is the Expanded widget?',
    answer:
        "Expanded makes a child widget fill all available space within a Row, Column, or Flex. "
        "If multiple children have Expanded, they share available space proportionally (using "
        "the flex property). Essential for flexible layouts where widgets should stretch to "
        "fill remaining space.",
    category: 'ui',
  ),
  Question(
    id: 35,
    question: 'What is the Flexible widget?',
    answer:
        "Flexible allows a child to adjust its size flexibly within available space — similar "
        "to Expanded but with more control. Key difference: Flexible has `fit` property "
        "(FlexFit.loose lets child be smaller than available space; FlexFit.tight forces "
        "filling, like Expanded). Use Flexible when you want optional expansion.",
    category: 'ui',
  ),
  Question(
    id: 36,
    question: 'What is the purpose of the Flex widget?',
    answer:
        "Flex creates a flexible container for complex layouts. Properties: direction (horizontal "
        "or vertical), mainAxisSize, mainAxisAlignment, crossAxisAlignment. Row and Column are "
        "actually subclasses of Flex. Use Flex directly when you need programmatic control "
        "over the layout direction.",
    category: 'ui',
  ),
  Question(
    id: 37,
    question: 'What is the purpose of ListView?',
    answer:
        "ListView displays a scrollable list of items. Constructors: ListView.builder (lazy-loads "
        "items from data — best for long lists), ListView.separated (adds separators between items), "
        "ListView (simple, for short static lists). It's the go-to widget for any scrollable "
        "vertical list in Flutter.",
    category: 'ui',
  ),
  Question(
    id: 38,
    question: 'What is the purpose of GridView?',
    answer:
        "GridView displays a scrollable grid of items in rows and columns. Constructors: "
        "GridView.builder (dynamic grid from data), GridView.count (fixed column count), "
        "GridView.extent (fixed item width). Use childAspectRatio to control item sizing. "
        "Perfect for photo galleries, product grids, and category displays.",
    category: 'ui',
  ),
  Question(
    id: 39,
    question: 'ListView vs GridView — key differences?',
    answer:
        "ListView: Single column layout, each item below previous, full width by default, "
        "use for contacts/messages/lists. GridView: Multi-column grid layout, items in cells, "
        "controlled via childAspectRatio, use for image galleries/product grids. Both support "
        "builder pattern for lazy loading and performance.",
    category: 'ui',
  ),
  Question(
    id: 40,
    question: 'What is the purpose of the Wrap widget?',
    answer:
        "Wrap arranges children in a line and automatically wraps to the next line when space "
        "runs out. Unlike Row (which overflows), Wrap handles overflow gracefully. Properties: "
        "spacing (horizontal gap), runSpacing (vertical gap), alignment. Ideal for chips, tags, "
        "filter buttons — any scenario with many items that may not fit in one row.",
    category: 'ui',
  ),
  Question(
    id: 41,
    question: 'What is the purpose of the Stack widget?',
    answer:
        "Stack positions children on top of each other (overlapping). Properties: alignment "
        "(positions children), overflow (controls overflow behavior). Use Positioned widget "
        "inside Stack for precise placement. Perfect for: text on images, badges, floating "
        "UI elements, custom overlays, and complex layered designs.",
    category: 'ui',
  ),
  Question(
    id: 42,
    question: 'What is the purpose of SizedBox?',
    answer:
        "SizedBox creates a box with fixed width and/or height. Two main uses: (1) Constrain "
        "a child widget to specific dimensions. (2) Add fixed spacing between widgets "
        "(SizedBox(height: 16)). Similar to Container but lighter — has only width and height, "
        "no decoration. Prefer SizedBox over Container for simple sizing/spacing.",
    category: 'ui',
  ),
  Question(
    id: 43,
    question: 'What is the purpose of LayoutBuilder?',
    answer:
        "LayoutBuilder rebuilds its child when the parent's constraints change. The builder "
        "function receives BoxConstraints (maxWidth, maxHeight, etc.), enabling adaptive "
        "layouts. Use when: building responsive UIs that change layout based on available "
        "space (e.g., switching between row and column at different widths).",
    category: 'ui',
  ),
  Question(
    id: 44,
    question: 'What is the purpose of ConstrainedBox?',
    answer:
        "ConstrainedBox applies min/max width and height constraints to its child. Properties: "
        "minWidth, maxWidth, minHeight, maxHeight. Useful for: limiting image dimensions, "
        "ensuring minimum button sizes, constraining Text width in wrapped layouts, or creating "
        "responsive containers with both minimum and maximum bounds.",
    category: 'ui',
  ),
  Question(
    id: 45,
    question: 'What is the purpose of Tooltip?',
    answer:
        "Tooltip displays a floating label when a widget is long-pressed or hovered. Two ways "
        "to use: (1) Wrap any widget with Tooltip(message: '...'). (2) Use the tooltip property "
        "on IconButton and FloatingActionButton. Essential for accessibility — provides context "
        "for icon-only buttons.",
    category: 'ui',
  ),
  Question(
    id: 46,
    question: 'What is the purpose of ClipRRect?',
    answer:
        "ClipRRect clips its child into a rounded rectangle shape using the borderRadius "
        "property. Commonly used for: images with rounded corners, custom-shaped cards, "
        "circular avatars (with large borderRadius). It's the most common clipping widget — "
        "simpler than ClipPath for rounded shapes.",
    category: 'ui',
  ),
  Question(
    id: 47,
    question: 'What is the purpose of ShaderMask?',
    answer:
        "ShaderMask applies a shader (like a gradient) to a widget's rendered output. "
        "Properties: shader (the gradient/effect to apply), blendMode (how the shader "
        "blends). Example use: applying a gradient overlay to text or images, creating "
        "fade effects at edges, or colorizing widgets dynamically.",
    category: 'ui',
  ),
  Question(
    id: 48,
    question: 'What is the purpose of GestureDetector?',
    answer:
        "GestureDetector detects user gestures: tap, double-tap, long-press, swipe/drag, "
        "pinch, scale. Provides callbacks like onTap, onDoubleTap, onLongPress, "
        "onVerticalDragUpdate. Essential for making any widget interactive — you can wrap "
        "a Container, Image, or Text to make it respond to touch.",
    category: 'ui',
  ),
  Question(
    id: 49,
    question: 'What widgets create button-like behavior without using button widgets?',
    answer:
        "Two approaches: (1) GestureDetector with onTap — wraps any widget, detects gestures, "
        "no visual feedback. (2) InkWell with onTap — provides Material ripple/splash effect "
        "on press, looks and feels like a button. Both can wrap Container, Text, Image, or "
        "any custom widget to make it tappable like a button.",
    category: 'ui',
  ),
  Question(
    id: 50,
    question: 'What is responsive UI in Flutter?',
    answer:
        "Responsive UI adapts to different screen sizes, orientations, and device types. "
        "Techniques: (1) MediaQuery for screen dimensions. (2) LayoutBuilder for constraint-based "
        "adaptation. (3) Flexible/Expanded for proportional layouts. (4) OrientationBuilder "
        "for portrait/landscape switching. (5) Breakpoints for tablet vs phone layouts.",
    category: 'ui',
  ),

  // --- Animation widgets ---
  Question(
    id: 51,
    question: 'What is the purpose of Hero widget?',
    answer:
        "Hero creates smooth 'flying' transition animations between screens. Both source and "
        "destination widgets must have the same tag. When navigating, the Hero widget animates "
        "from its position on the first screen to its position on the second screen. Perfect "
        "for image galleries, product details, or any shared-element transitions.",
    category: 'ui',
  ),
  Question(
    id: 52,
    question: 'What is the purpose of AnimatedContainer?',
    answer:
        "AnimatedContainer automatically animates changes to its properties (size, color, "
        "borderRadius, padding, etc.) over a specified duration with a curve. Simply change "
        "the properties and it animates smoothly. Simplest way to add animations — no "
        "AnimationController needed. Use for: button size changes, color transitions, "
        "expanding cards.",
    category: 'ui',
  ),
  Question(
    id: 53,
    question: 'What is the purpose of AnimatedOpacity?',
    answer:
        "AnimatedOpacity animates the transparency (opacity) of a child widget over a duration "
        "with a curve. Simply toggle the opacity value and it fades in/out smoothly. Common "
        "uses: fade-in on screen entry, fade-out on dismiss, loading state transitions, "
        "conditional visibility with smooth animation.",
    category: 'ui',
  ),
  Question(
    id: 54,
    question: 'What is the purpose of AnimatedBuilder?',
    answer:
        "AnimatedBuilder creates custom animations by providing a builder function that rebuilds "
        "a widget tree on every animation tick. More flexible than AnimatedContainer/Opacity — "
        "can animate any property (position, rotation, scale). Use with an AnimationController "
        "for full control. Best for complex custom animations beyond built-in animated widgets.",
    category: 'ui',
  ),
  Question(
    id: 55,
    question: 'What is the purpose of Tween animation?',
    answer:
        "A Tween (in-between) creates smooth interpolation between a start and end value over "
        "time. Examples: ColorTween (color transitions), SizeTween (size changes), "
        "AlignmentTween (position). Chain with an AnimationController to produce the actual "
        "animation. Tween defines WHAT values change; Controller defines WHEN.",
    category: 'ui',
  ),

  // ============================================================
  // 🔴 NAVIGATION (4 questions)
  // ============================================================

  Question(
    id: 56,
    question: 'What is Navigator in Flutter?',
    answer:
        "Navigator manages the navigation stack (screen/route history) in Flutter. Key methods: "
        "push (navigate to new screen), pop (go back), pushReplacement (replace current), "
        "pushAndRemoveUntil (clear stack). Works like a stack data structure — push adds, "
        "pop removes. Essential for any multi-screen app.",
    category: 'nav',
  ),
  Question(
    id: 57,
    question: 'Difference between push and pushReplacement?',
    answer:
        "push: Adds new route on top of the stack — previous screen remains, user can go back. "
        "pushReplacement: Replaces current screen with new one — previous screen is removed, "
        "no going back. Use push for normal navigation (home→details), pushReplacement for "
        "splash→home or login→dashboard transitions.",
    category: 'nav',
  ),
  Question(
    id: 58,
    question: 'Difference between Navigator and Router?',
    answer:
        "Navigator: Simple stack-based navigation, easy to use, limited customization. "
        "Router: More flexible and powerful — custom transitions, complex flows, easy data "
        "passing, deep linking support. Requires more code/setup. Use Navigator for simple "
        "apps, Router (or GoRouter) for complex navigation with deep links.",
    category: 'nav',
  ),
  Question(
    id: 59,
    question: 'What is the purpose of the Navigator widget?',
    answer:
        "Navigator is a widget that manages a stack of Route objects. It provides imperative "
        "navigation methods: push(), pop(), canPop(), maybePop(), pushNamed() for named routes. "
        "It handles the back button automatically for Android and supports swipe-back gestures "
        "on iOS. Every MaterialApp has a default Navigator.",
    category: 'nav',
  ),

  // ============================================================
  // 🔵 DATA — APIs, Storage & Async (8 questions)
  // ============================================================

  Question(
    id: 60,
    question: 'How to call API in Flutter?',
    answer:
        "Use the http package (or dio for advanced features). Steps: (1) Add http/dio to "
        "pubspec.yaml. (2) Make GET/POST request with URL and optional headers/body. "
        "(3) Parse JSON response using dart:convert (jsonDecode). (4) Map JSON to Dart "
        "model objects. (5) Use FutureBuilder or async/await in initState. Always handle "
        "errors with try-catch and show loading/error states.",
    category: 'data',
  ),
  Question(
    id: 61,
    question: 'What is JSON parsing in Flutter?',
    answer:
        "JSON parsing converts JSON data (from API responses or local files) into Dart objects. "
        "Methods: (1) Manual — jsonDecode() + fromJson() factory constructor. (2) Code generation "
        "— json_serializable package with @JsonSerializable annotations. Manual works for small "
        "models; code generation is better for large/complex models with many fields.",
    category: 'data',
  ),
  Question(
    id: 62,
    question: 'Difference between GET and POST API requests?',
    answer:
        "GET: Fetches/retrieves data from server, parameters in URL, cached by browsers, "
        "idempotent (same result on repeated calls), less secure for sensitive data. "
        "POST: Sends/submits data to server, data in request body, not cached, not idempotent, "
        "more secure. Use GET for fetching data, POST for creating/updating data.",
    category: 'data',
  ),
  Question(
    id: 63,
    question: 'What is SharedPreferences?',
    answer:
        "SharedPreferences stores simple key-value pairs locally on the device. Use for: "
        "user settings (theme, language), login tokens, onboarding completion flags, small "
        "amounts of persistent data. Not for: large data, complex objects, or relational data. "
        "For those, use SQLite (sqflite) or Hive. Data persists across app restarts.",
    category: 'data',
  ),
  Question(
    id: 64,
    question: 'What is Firebase?',
    answer:
        "Firebase is Google's Backend-as-a-Service (BaaS) platform for mobile/web apps. "
        "Services: Authentication (Google/Email sign-in), Firestore (NoSQL database), "
        "Realtime Database, Cloud Storage (file storage), FCM (push notifications), "
        "Analytics, Crashlytics. Great for rapid prototyping and MVPs — reduces backend "
        "development time significantly.",
    category: 'data',
  ),
  Question(
    id: 65,
    question: 'What is FCM (Firebase Cloud Messaging)?',
    answer:
        "FCM is Firebase's push notification service — sends notifications to Android, iOS, "
        "and Web apps. Features: targeted messaging (by topic, device, or user segment), "
        "rich notifications with images, data messages for silent background updates. "
        "Free and scalable. Essential for user engagement and re-engagement features.",
    category: 'data',
  ),
  Question(
    id: 66,
    question: 'What is a Stream in Flutter?',
    answer:
        "A Stream is a sequence of asynchronous events — like a pipe that delivers data over "
        "time. Producer pushes data into the stream; Consumer listens and responds. Common uses: "
        "user input events, WebSocket/network responses, device sensors, animations. Based on "
        "Dart's Stream API. Use StreamBuilder widget to consume streams in UI automatically.",
    category: 'data',
  ),
  Question(
    id: 67,
    question: 'What is Infinite Scroll Pagination and how to implement it?',
    answer:
        "Infinite Scroll Pagination (endless scrolling/lazy loading) loads more data as the "
        "user scrolls near the bottom. Implementation: (1) Use ScrollController with "
        "addListener. (2) When scroll position approaches maxScrollExtent, fetch next page. "
        "(3) Append new data to existing list. (4) Show loading indicator at bottom. "
        "Packages: infinite_scroll_pagination simplifies this. Benefits: better performance "
        "with large datasets, loads only when needed.",
    category: 'data',
  ),
];
