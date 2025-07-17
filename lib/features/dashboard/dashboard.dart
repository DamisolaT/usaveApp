import 'package:flutter/material.dart';

import 'package:my_naija_bank/features/dashboard/dashboard_widgets/dashboard.dart';
import 'package:my_naija_bank/features/dashboard/dashboard_widgets/quick_action.dart';
import 'package:my_naija_bank/features/dashboard/dashboard_widgets/transaction.dart';
import 'package:my_naija_bank/shared/assets/assets.dart';
import 'package:my_naija_bank/shared/constants/custom_text.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    CircleAvatar(
                      //radius: 50,
                      backgroundImage: AssetImage(AppAssets.profile),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Hi,Damisola',
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                        CustomText(
                          text: '@Damisola56',
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.notification_add_outlined, color: Colors.green),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CustomText(
                              text: 'Total Balance',
                              fontSize: 20,
                              color: Colors.black,
                            ),
                            SizedBox(width: 10),
                            Icon(Icons.remove_red_eye, color: Colors.black54),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: Container(
                                height: 30,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.greenAccent,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 5,
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(AppAssets.flag),
                                      CustomText(
                                        text: 'USD',
                                        color: Colors.black,
                                        fontSize: 20,
                                      ),
                                      Icon(Icons.expand_more),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        CustomText(
                          text: '#980,000.00',
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: DashboardContainer(
                            title: 'Deposit',
                            icon: Icons.add,
                            color: Colors.green[300]!,
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: DashboardContainer(
                            title: 'Withdraw',
                            icon: Icons.arrow_downward,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: DashboardContainer(
                            title: 'Save',
                            icon: Icons.savings_outlined,
                            color: Colors.green[300]!,
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: DashboardContainer(
                            title: 'Transfer',
                            icon: Icons.directions,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                CustomText(
                  text: 'Quick Action',
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(height: 20),
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OuickActionContainer(icon: Icons.call, title: 'Airtime'),
                      OuickActionContainer(icon: Icons.wifi, title: 'Wi-fi'),
                      OuickActionContainer(
                        icon: Icons.electric_bolt,
                        title: 'Electric',
                      ),
                      OuickActionContainer(
                        icon: Icons.balcony_outlined,
                        title: 'Betting',
                      ),
                      OuickActionContainer(
                        icon: Icons.more_horiz_outlined,
                        title: 'More',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: 'Transactions',
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                    Icon(Icons.arrow_forward_ios_sharp, color: Colors.grey),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  CustomText(
                                    text: 'Credit Alert',
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  SizedBox(height: 4),
                                  Container(
                                    height: 4,
                                    width: 55,
                                    color: Color(0xFF0D5C63),
                                  ),
                                ],
                              ),
                              CustomText(
                                text: 'Debit Alert',
                                color: Colors.grey,
                                fontSize: 18,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        TransactionsContainer(
                          name: 'Damisola Taiwo',
                          amount: '#11200',
                        ),
                        TransactionsContainer(
                          name: 'Adeoye Sade',
                          amount: '#3400',
                        ),
                        TransactionsContainer(
                          name: 'Kehinde Audu',
                          amount: '#600',
                        ),
                        TransactionsContainer(
                          name: 'Damisola Taiwo',
                          amount: '#11200',
                        ),
                        TransactionsContainer(
                          name: 'Adeoye Sade',
                          amount: '#3400',
                        ),
                        TransactionsContainer(
                          name: 'Kehinde Audu',
                          amount: '#600',
                        ),
                      ],
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
