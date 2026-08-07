import 'package:FlutIQ/models/constants/app_constants.dart';
import 'package:flutter/material.dart';

class CategoryTabs extends StatelessWidget {
  final String activeCategory;
  final ValueChanged<String> onCategorySelected;

  const CategoryTabs({
    super.key,
    required this.activeCategory,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      margin: const EdgeInsets.only(top: 10, bottom: 6),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: categories.length,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final cat = categories[index];
          final isActive = activeCategory == cat;
          return GestureDetector(
            onTap: () => onCategorySelected(cat),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                color: isActive ? kPrimaryBlue : Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: isActive ? kPrimaryBlue : Colors.grey.shade300, width: 1.5),
                boxShadow: isActive ? [BoxShadow(color: kPrimaryBlue.withOpacity(0.25), blurRadius: 6, offset: const Offset(0, 2))] : null,
              ),
              child: Text(
                categoryLabels[cat] ?? cat,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: isActive ? Colors.white : Colors.grey.shade700),
              ),
            ),
          );
        },
      ),
    );
  }
}

