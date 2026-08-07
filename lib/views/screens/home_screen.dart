import 'package:FlutIQ/controllers/home_controller.dart';
import 'package:FlutIQ/models/constants/app_constants.dart';
import 'package:FlutIQ/views/screens/widgets/app_header.dart';
import 'package:FlutIQ/views/screens/widgets/category_tabs.dart';
import 'package:FlutIQ/views/screens/widgets/qa_card.dart';
import 'package:FlutIQ/views/screens/widgets/search_bar.dart';
import 'package:FlutIQ/views/screens/widgets/stats_row.dart';
import 'package:flutter/material.dart' hide SearchBar;
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final TextEditingController _searchController = TextEditingController();
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {

    context.read<HomeController>().onSearchChanged(_searchController.text);
  }

  void _clearSearch() {
    _searchController.clear();
    context.read<HomeController>().clearSearch();
  }

  @override
  Widget build(BuildContext context) {

    final ctrl = context.watch<HomeController>();
    final filtered = ctrl.filteredQuestions;

    return Scaffold(
      backgroundColor: kBackground,
      body: SafeArea(
        child: CustomScrollView(
          controller: _scrollController,
          physics: const BouncingScrollPhysics(),
          slivers: [

            SliverToBoxAdapter(
              child: AppHeader(totalQuestions: ctrl.totalQuestions),
            ),


            SliverToBoxAdapter(
              child: SearchBar(
                controller: _searchController,
                onChanged: (_) {}, // handled by listener above
                onClear: _clearSearch,
              ),
            ),


            SliverToBoxAdapter(
              child: StatsRow(
                total: ctrl.totalQuestions,
                showing: ctrl.filteredCount,
                expanded: ctrl.expandedCount,
              ),
            ),

            SliverToBoxAdapter(
              child: CategoryTabs(
                activeCategory: ctrl.activeCategory,
                onCategorySelected: ctrl.onCategorySelected,
              ),
            ),

            if (filtered.isEmpty)
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 36),
                  child: _buildEmptyState(),
                ),
              )
            else
              SliverPadding(
                padding: const EdgeInsets.only(bottom: 40),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                        (context, index) {
                      final q = filtered[index];
                      final isExpanded = ctrl.expandedIds.contains(q.id);
                      return QACard(
                        question: q,
                        index: index,
                        isExpanded: isExpanded,
                        onTap: () => ctrl.toggleExpansion(q.id),
                        searchQuery: ctrl.searchQuery,
                      );
                    },
                    childCount: filtered.length,
                  ),
                ),
              ),

            SliverToBoxAdapter(child: _buildFooter()),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('🤷', style: TextStyle(fontSize: 56)),
            const SizedBox(height: 16),
            const Text(
              'No questions match your search.',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              'Try different keywords or clear the filter.',
              style: TextStyle(fontSize: 14, color: Colors.grey.shade500),
            ),
            const SizedBox(height: 20),
            TextButton.icon(
              onPressed: _clearSearch,
              icon: const Icon(Icons.refresh, size: 18),
              label: const Text('Reset Filters'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 14),
      color: Colors.transparent,
      child: Text(
        'Built for Flutter learners • Tap any question to reveal its answer',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
      ),
    );
  }
}





