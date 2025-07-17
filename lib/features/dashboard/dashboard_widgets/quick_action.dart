import 'package:flutter/material.dart';
import 'package:my_naija_bank/shared/constants/custom_text.dart';

class OuickActionContainer extends StatelessWidget {
  const OuickActionContainer({
    super.key,
    required this.icon,
    required this.title,
    this.isTitle = true,
  });
  final IconData icon;
  final String title;
  final bool isTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.lightGreen.shade100,
            ),
            child: Center(child: Icon(icon, size: 20)),
          ),
          SizedBox(height: 5),
          if (isTitle)
            CustomText(
              text: title,
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
        ],
      ),
    );
  }
}