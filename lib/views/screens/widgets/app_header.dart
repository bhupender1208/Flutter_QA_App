import 'package:FlutIQ/models/constants/app_constants.dart';
import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  final int totalQuestions;
  final String subtitle;
  const AppHeader({
    super.key,
    required this.totalQuestions,
    this.subtitle = 'Master the most common Flutter interview questions',
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final w = constraints.maxWidth;
      final double titleSize = (w < 380) ? 20 : (w < 720 ? 26 : 32);
      final double subtitleSize = (w < 380) ? 12 : (w < 720 ? 14 : 18);
      final double horizontalPadding = (w * 0.06).clamp(12.0, 56.0);

      return Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [kPrimaryBlue, kAccentBlue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: EdgeInsets.only(
          top: 36,
          bottom: 24,
          left: horizontalPadding,
          right: horizontalPadding,
        ),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Column(
              children: [
                Text(
                  '🐦 Flutter Interview Q&A',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: titleSize,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    letterSpacing: 1.0,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  subtitle,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: subtitleSize,
                    height: 1.25,
                  ),
                ),
                const SizedBox(height: 14),
                Wrap(
                  spacing: 10,
                  runSpacing: 8,
                  alignment: WrapAlignment.center,
                  children: [
                    _Badge(label: '📱 $totalQuestions Questions'),
                    const _Badge(label: '🎯 Categorized'),
                    const _Badge(label: '🔍 Searchable'),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

class _Badge extends StatelessWidget {
  final String label;
  const _Badge({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.18),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white),
      ),
    );
  }
}

