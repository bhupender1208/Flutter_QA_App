import 'package:FlutIQ/models/constants/app_constants.dart';
import 'package:flutter/material.dart';

class StatsRow extends StatelessWidget {
  final int total;
  final int showing;
  final int expanded;

  const StatsRow({
    super.key,
    required this.total,
    required this.showing,
    required this.expanded,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Row(
        children: [
          _statCard(total.toString(), 'Total Questions', Icons.list_alt),
          const SizedBox(width: 10),
          _statCard(showing.toString(), 'Showing', Icons.visibility),
          const SizedBox(width: 10),
          _statCard(expanded.toString(), 'Expanded', Icons.unfold_more),
        ],
      ),
    );
  }

  Widget _statCard(String value, String label, IconData icon) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade200),
          boxShadow: const [BoxShadow(color: Color(0x0A000000), blurRadius: 4, offset: Offset(0, 1))],
        ),
        child: Column(
          children: [
            Icon(icon, size: 18, color: kPrimaryBlue.withOpacity(0.5)),
            const SizedBox(height: 6),
            Text(value, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: kPrimaryBlue)),
            const SizedBox(height: 2),
            Text(label, style: TextStyle(fontSize: 11, color: Colors.grey.shade600, fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }
}

