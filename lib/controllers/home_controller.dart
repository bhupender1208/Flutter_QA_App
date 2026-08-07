import 'package:FlutIQ/models/question_model.dart';
import 'package:FlutIQ/models/questions_data.dart';
import 'package:flutter/foundation.dart';

class HomeController extends ChangeNotifier {

  String _activeCategory = 'all';
  String _searchQuery = '';
  final Set<int> _expandedIds = {};

  String get activeCategory => _activeCategory;
  String get searchQuery => _searchQuery;
  Set<int> get expandedIds => _expandedIds;

  List<Question> get filteredQuestions {
    final q = _searchQuery;
    return questionsList.where((item) {
      final matchesCategory =
          _activeCategory == 'all' || item.category == _activeCategory;
      final matchesSearch = q.isEmpty ||
          item.question.toLowerCase().contains(q) ||
          item.answer.toLowerCase().contains(q) ||
          item.category.toLowerCase().contains(q);
      return matchesCategory && matchesSearch;
    }).toList();
  }

  int get totalQuestions => questionsList.length;
  int get filteredCount => filteredQuestions.length;
  int get expandedCount => _expandedIds.length;

    void onSearchChanged(String query) {
    final v = query.trim().toLowerCase();
    if (v == _searchQuery) return;
    _searchQuery = v;
    notifyListeners();
  }

  void onCategorySelected(String cat) {
    _activeCategory = cat;
    _expandedIds.clear();
    notifyListeners();
  }

  void toggleExpansion(int id) {
    if (_expandedIds.contains(id)) {
      _expandedIds.remove(id);
    } else {
      _expandedIds.add(id);
    }
    notifyListeners();
  }

  void clearSearch() {
    _searchQuery = '';
    notifyListeners();
  }
}
