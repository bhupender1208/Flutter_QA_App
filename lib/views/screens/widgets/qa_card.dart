import 'package:FlutIQ/models/constants/app_constants.dart';
import 'package:FlutIQ/models/question_model.dart';
import 'package:flutter/material.dart';

class QACard extends StatelessWidget {
  final Question question;
  final int index;
  final bool isExpanded;
  final VoidCallback onTap;
  final String searchQuery;

  const QACard({
    super.key,
    required this.question,
    required this.index,
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
        side: BorderSide(color: isExpanded ? kAccentBlue.withOpacity(0.3) : Colors.grey.shade200, width: 1),
      ),
      child: Column(
        children: [
          InkWell(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12), bottom: Radius.circular(12)),
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              child: Row(
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(color: isExpanded ? kPrimaryBlue : kLightBlue, borderRadius: BorderRadius.circular(8)),
                    alignment: Alignment.center,
                    child: Text('${index + 1}', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12, color: isExpanded ? Colors.white : kPrimaryBlue)),
                  ),
                  const SizedBox(width: 12),
                  Expanded(child: _buildHighlightedText(context, question.question, searchQuery, isBold: true, fontSize: 14.5)),
                  const SizedBox(width: 8),
                  AnimatedRotation(turns: isExpanded ? 0.5 : 0.0, duration: const Duration(milliseconds: 250), child: Icon(Icons.keyboard_arrow_down_rounded, size: 24, color: isExpanded ? kPrimaryBlue : Colors.grey.shade400)),
                ],
              ),
            ),
          ),
          AnimatedCrossFade(
            firstChild: const SizedBox.shrink(),
            secondChild: Container(
              width: double.infinity,
              decoration: BoxDecoration(color: const Color(0xFFFAFBFC), borderRadius: const BorderRadius.vertical(bottom: Radius.circular(12)), border: Border(top: BorderSide(color: Colors.grey.shade200))),
              padding: const EdgeInsets.fromLTRB(58, 14, 18, 18),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(color: kLightBlue, borderRadius: BorderRadius.circular(12)),
                  child: Text(categoryLabels[question.category] ?? question.category, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w700, color: kPrimaryBlue)),
                ),
                const SizedBox(height: 10),
                _buildHighlightedText(context, question.answer, searchQuery, isBold: false, fontSize: 14),
              ]),
            ),
            crossFadeState: isExpanded ? CrossFadeState.showSecond : CrossFadeState.showFirst,
            duration: const Duration(milliseconds: 280),
            sizeCurve: Curves.easeInOut,
          ),
        ],
      ),
    );
  }

  Widget _buildHighlightedText(BuildContext context, String text, String query, {bool isBold = false, double fontSize = 14}) {
    if (query.isEmpty) {
      return Text(text, style: TextStyle(fontSize: fontSize, fontWeight: isBold ? FontWeight.w600 : FontWeight.w400, color: isBold ? Colors.black87 : Colors.grey.shade800, height: 1.45));
    }

    final lowerText = text.toLowerCase();
    final lowerQuery = query.toLowerCase();
    final List<TextSpan> spans = [];
    int start = 0;

    while (true) {
      final idx = lowerText.indexOf(lowerQuery, start);
      if (idx == -1) {
        spans.add(TextSpan(text: text.substring(start), style: TextStyle(fontWeight: isBold ? FontWeight.w600 : FontWeight.w400, color: isBold ? Colors.black87 : Colors.grey.shade800)));
        break;
      }

      if (idx > start) {
        spans.add(TextSpan(text: text.substring(start, idx), style: TextStyle(fontWeight: isBold ? FontWeight.w600 : FontWeight.w400, color: isBold ? Colors.black87 : Colors.grey.shade800)));
      }

      spans.add(TextSpan(text: text.substring(idx, idx + query.length), style: TextStyle(backgroundColor: Colors.yellow.shade200, fontWeight: FontWeight.w700, color: Colors.black87)));
      start = idx + query.length;
    }

    return RichText(text: TextSpan(style: TextStyle(fontSize: fontSize, height: 1.45), children: spans));
  }
}

