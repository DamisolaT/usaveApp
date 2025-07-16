import 'package:flutter/material.dart';
import 'package:my_naija_bank/shared/constants/custom_text.dart';
import 'package:my_naija_bank/shared/constants/custom_textfield.dart';
import 'package:my_naija_bank/shared/utils/app_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              Center(
                child: Text(
                  'uSave',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 20),
              CustomBorderedTextFormField(
                title: '',
                hintText: 'Phone number or email',
              ),
              SizedBox(height: 20),
              AppButton(
                text: 'Continue',
                onPressed: () {
                  Navigator.pushNamed(context, '/dashboard_page');
                },
                color: Colors.green,
                textStyle: TextStyle(color: Colors.white, fontSize: 18),
              ),
              SizedBox(height: 20),
              CustomText(
                text: 'By continuing, you accept our Terms & Privacy',
                color: Colors.black54,
                fontSize: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
