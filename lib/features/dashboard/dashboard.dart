import 'package:flutter/material.dart';
import 'package:my_naija_bank/shared/assets/assets.dart';
import 'package:my_naija_bank/shared/constants/custom_text.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
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
                  
                    children:  [
                      Expanded(
                        child: DashboardContainer(
                          title: 'Deposit',
                          icon: Icons.add, color: Colors.green[300]!,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(child: DashboardContainer(title: 'Withdraw', icon: Icons.arrow_downward, color: Colors.black,)),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                   
                    children:  [
                      Expanded(
                        child: DashboardContainer(
                          title: 'Save',
                          icon: Icons.savings_outlined, color: Colors.green[300]!,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(child: DashboardContainer(title: 'Transfer', icon: Icons.directions, color: Colors.black,)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DashboardContainer extends StatelessWidget {
  const DashboardContainer({
    super.key,
    required this.title,
    required this.icon, required this.color,
  });

  final String title;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Icon(icon, size: 30, color: Colors.white),
            const SizedBox(width: 10),
            CustomText(text: title, fontSize: 25, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
