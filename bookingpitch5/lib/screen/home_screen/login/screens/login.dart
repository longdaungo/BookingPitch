import 'package:flutter/material.dart';
import 'package:bookingpitch5/screen/home_screen/login//screens/reset_password.dart';
import 'package:bookingpitch5/screen/home_screen/login//screens/signup.dart';
import 'package:bookingpitch5/screen/home_screen/login//theme.dart';
import 'package:bookingpitch5/screen/home_screen/login//widgets/login_form.dart';
import 'package:bookingpitch5/screen/home_screen/login//widgets/login_option.dart';
import 'package:bookingpitch5/screen/home_screen/login//widgets/primary_button.dart';

class LogInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: Padding(
        padding: kDefaultPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: Image.asset(
                 'assets/images/Title.png' 
                ),
              ),
              Center(
                child: Image.asset(
                   'assets/images/iconBall.png' 
                ),
              ),
              Center(
                child: 
                  Text('Cháy cùng đam mê', 
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic
                    ),)
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'Người mới hả?',
                    style: subTitle,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Đăng ký',
                      style: textButton.copyWith(
                        decoration: TextDecoration.underline,
                        decorationThickness: 1,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              LogInForm(),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResetPasswordScreen()));
                },
                child: Text(
                  'Mật khẩu mà cũng không nhớ?',
                  style: TextStyle(
                    color: kZambeziColor,
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                    decorationThickness: 1,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              PrimaryButton(
                'Đăng nhập',
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Đăng nhập bằng:',
                style: subTitle.copyWith(color: kBlackColor),
              ),
              SizedBox(
                height: 20,
              ),
              LoginOption(),
            ],
          ),
        ),
      ),
    );
  }
}
