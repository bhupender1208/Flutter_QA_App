 import 'package:FlutIQ/models/constants/app_constants.dart';
import 'package:FlutIQ/models/question_model.dart';
import 'package:flutter/material.dart';

class QACard extends StatelessWidget {
  final Question question;
  final int displayNumber;
  final bool isExpanded;
  final VoidCallback onTap;
  final String searchQuery;

  const QACard({
    super.key,
    required this.question,
    required this.displayNumber,
    required this.isExpanded,
    required this.onTap,
    required this.searchQuery,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      elevation: isExpanded ? 2 : 0.5,
      shadowColor: Colors.black26,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: isExpanded
              ? kAccentBlue.withOpacity(0.3)
              : Colors.grey.shade200,
          width: 1,
        ),
      ),
      child: Column(
        children: [
          InkWell(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(12),
              bottom: Radius.circular(12),
            ),
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 14,
              ),
              child: Row(
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: isExpanded ? kPrimaryBlue : kLightBlue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      '$displayNumber',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                        color:
                            isExpanded ? Colors.white : kPrimaryBlue,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),

                  Expanded(
                    child: _buildHighlightedText(
                      context,
                      question.question,
                      searchQuery,
                      isBold: true,
                      fontSize: 14.5,
                    ),
                  ),

                  const SizedBox(width: 8),

                  AnimatedRotation(
                    turns: isExpanded ? 0.5 : 0.0,
                    duration: const Duration(milliseconds: 250),
                    child: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 24,
                      color: isExpanded
                          ? kPrimaryBlue
                          : Colors.grey.shade400,
                    ),
                  ),
                ],
              ),
            ),
          ),

          AnimatedCrossFade(
            firstChild: const SizedBox.shrink(),
            secondChild: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFFAFBFC),
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(12),
                ),
                border: Border(
                  top: BorderSide(
                    color: Colors.grey.shade200,
                  ),
                ),
              ),
              padding: const EdgeInsets.fromLTRB(
                58,
                14,
                18,
                18,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: kLightBlue,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      categoryLabels[question.category] ??
                          question.category,
                      style: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        color: kPrimaryBlue,
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  _buildHighlightedText(
                    context,
                    question.answer,
                    searchQuery,
                    isBold: false,
                    fontSize: 14,
                  ),
                ],
              ),
            ),
            crossFadeState: isExpanded
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
            duration: const Duration(milliseconds: 280),
            sizeCurve: Curves.easeInOut,
          ),
        ],
      ),
    );
  }

  Widget _buildHighlightedText(
    BuildContext context,
    String text,
    String query, {
    bool isBold = false,
    double fontSize = 14,
  }) {
    final List<InlineSpan> spans = [];

    // Backtick text detection
    final RegExp codePattern = RegExp(r'`([^`]+)`');

    int currentIndex = 0;

    for (final match in codePattern.allMatches(text)) {
      // Normal text before code word
      if (match.start > currentIndex) {
        final normalText =
            text.substring(currentIndex, match.start);

        spans.addAll(
          _buildSearchHighlightedSpans(
            normalText,
            query,
            isBold: isBold,
          ),
        );
      }

      // Text inside backticks
      final codeText = match.group(1)!;

      spans.add(
        WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 2,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 2),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              codeText,
              style: TextStyle(
                fontSize: fontSize - 1,
                fontFamily: 'monospace',
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
          ),
        ),
      );

      currentIndex = match.end;
    }

    // Remaining normal text
    if (currentIndex < text.length) {
      spans.addAll(
        _buildSearchHighlightedSpans(
          text.substring(currentIndex),
          query,
          isBold: isBold,
        ),
      );
    }

    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: fontSize,
          height: 1.45,
          color: isBold
              ? Colors.black87
              : Colors.grey.shade800,
        ),
        children: spans,
      ),
    );
  }

  List<TextSpan> _buildSearchHighlightedSpans(
    String text,
    String query, {
    required bool isBold,
  }) {
    // Search empty hai
    if (query.isEmpty) {
      return [
        TextSpan(
          text: text,
          style: TextStyle(
            fontWeight:
                isBold ? FontWeight.w600 : FontWeight.w400,
            color: isBold
                ? Colors.black87
                : Colors.grey.shade800,
          ),
        ),
      ];
    }

    final lowerText = text.toLowerCase();
    final lowerQuery = query.toLowerCase();

    final List<TextSpan> spans = [];
    int start = 0;

    while (true) {
      final index =
          lowerText.indexOf(lowerQuery, start);

      if (index == -1) {
        spans.add(
          TextSpan(
            text: text.substring(start),
            style: TextStyle(
              fontWeight:
                  isBold ? FontWeight.w600 : FontWeight.w400,
              color: isBold
                  ? Colors.black87
                  : Colors.grey.shade800,
            ),
          ),
        );
        break;
      }

      // Normal text before searched word
      if (index > start) {
        spans.add(
          TextSpan(
            text: text.substring(start, index),
            style: TextStyle(
              fontWeight:
                  isBold ? FontWeight.w600 : FontWeight.w400,
              color: isBold
                  ? Colors.black87
                  : Colors.grey.shade800,
            ),
          ),
        );
      }

      // Search result yellow highlight
      spans.add(
        TextSpan(
          text: text.substring(
            index,
            index + query.length,
          ),
          style: TextStyle(
            backgroundColor: Colors.yellow.shade200,
            fontWeight: FontWeight.w700,
            color: Colors.black87,
          ),
        ),
      );

      start = index + query.length;
    }

    return spans;
  }
}