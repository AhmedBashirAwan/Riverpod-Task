import 'package:dashboardtask/src/utils/global.dart';
import 'package:flutter/material.dart';

class PanelCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final Color color;
  final Color bgColor;

  const PanelCard(
      {super.key,
      required this.icon,
      required this.title,
      required this.onTap,
      required this.color,
      required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 2,
        child: SizedBox(
          height: getHeight(context) * 0.092,
          width: getWidth(context) * 0.42,
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: color.withOpacity(0.4)),
                  child: Icon(
                    icon,
                    color: color,
                    size: 25,
                  ),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: getWidth(context) * 0.2,
                  child: Center(
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 14,
                        height: 0,
                        fontWeight: FontWeight.w600,
                        color: color,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
