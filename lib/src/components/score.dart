import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ScoreCard extends StatelessWidget {
  final int score;
  final String title;
  final String status;
  final Color color;
  final Color backgroundColor;

  const ScoreCard(
      {super.key,
      required this.score,
      required this.title,
      required this.status,
      required this.color,
      required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            ),
            const SizedBox(height: 8),
            CircularPercentIndicator(
              radius: 65.0,
              lineWidth: 16.0,
              percent: score / 100.0,
              center: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "$score/100",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: color,
                    ),
                  ),
                  Text(
                    status,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: color,
                    ),
                  ),
                ],
              ),
              progressColor: color,
              backgroundColor: color.withOpacity(0.2),
              circularStrokeCap: CircularStrokeCap.round,
            ),
          ],
        ),
      ),
    );
  }
}
