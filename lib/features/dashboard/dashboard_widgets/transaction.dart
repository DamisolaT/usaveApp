import 'package:flutter/material.dart';
import 'package:my_naija_bank/features/dashboard/dashboard_widgets/quick_action.dart';
import 'package:my_naija_bank/shared/constants/custom_text.dart';

class TransactionsContainer extends StatelessWidget {
  const TransactionsContainer({
    super.key,
    required this.name,
    required this.amount,
  });
  final String name;
  final String amount;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            OuickActionContainer(
              icon: Icons.send_and_archive_outlined,
              isTitle: false,
              title: '',
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: name,
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
                CustomText(
                  text: 'July 17,2025',
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: amount,
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
            CustomText(
              text: 'Successful',
              color: Colors.green,
              fontSize: 13,
              fontWeight: FontWeight.w700,
            ),
          ],
        ),
      ],
    );
  }
}
