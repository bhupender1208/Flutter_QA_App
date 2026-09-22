import 'package:FlutIQ/models/question_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'dart:async';

class HomeController extends ChangeNotifier {
  String _activeCategory = 'all';
  String _searchQuery = '';
 int? _expandedId;
  final List<Question> _questions = [];

  bool _isLoading = false;
  String? _errorMessage;
  StreamSubscription<QuerySnapshot<Map<String, dynamic>>>?
      _questionsSubscription;

  String get activeCategory => _activeCategory;
  String get searchQuery => _searchQuery;
  int? get expandedId => _expandedId;

  List<Question> get questions => _questions;

  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  List<Question> get filteredQuestions {
    final q = _searchQuery;

    return _questions.where((item) {
      final matchesCategory =
          _activeCategory == 'all' ||
          item.category == _activeCategory;

      final matchesSearch =
          q.isEmpty ||
          item.question.toLowerCase().contains(q) ||
          item.answer.toLowerCase().contains(q) ||
          item.category.toLowerCase().contains(q);

      return matchesCategory && matchesSearch;
    }).toList();
  }

  int get totalQuestions => _questions.length;
  int get filteredCount => filteredQuestions.length;
  int get categoriesCount => _questions.map((q) => q.category).toSet().length;
  int get expandedCount => _expandedId == null ? 0 : 1;
  void listenToQuestions() {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    _questionsSubscription = FirebaseFirestore.instance
        .collection('questions')
        .orderBy('id')
        .snapshots()
        .listen(
      (snapshot) {
        _questions.clear();

        for (final doc in snapshot.docs) {
          final data = doc.data();

          _questions.add(
            Question(
              id: data['id'] as int,
              question: data['question'] as String,
              answer: data['answer'] as String,
              category: data['category'] as String,
            ),
          );
        }

        _isLoading = false;
        _errorMessage = null;
        notifyListeners();
      },
      onError: (error) {
        _isLoading = false;
        _errorMessage = 'Failed to load questions: $error';
        notifyListeners();
      },
    );
  }

  void onSearchChanged(String query) {
    final v = query.trim().toLowerCase();

    if (v == _searchQuery) return;

    _searchQuery = v;
    notifyListeners();
  }

  void onCategorySelected(String cat) {
    _activeCategory = cat;
    _expandedId = null;
    notifyListeners();
  }

  void toggleExpansion(int id) {
  if (_expandedId == id) {
    _expandedId = null;
  } else {
    _expandedId = id;
  }

  notifyListeners();
}

  void clearSearch() {
    _searchQuery = '';
    notifyListeners();
  }

  @override
  void dispose() {
    _questionsSubscription?.cancel();
    super.dispose();
  }
}