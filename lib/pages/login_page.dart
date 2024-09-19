import 'package:flutter/material.dart';
import 'package:note/components/custom_icon.dart';
import 'package:note/components/my_button.dart';
import 'package:note/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              const SizedBox(height: 50,),

              //logo
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(height: 50,),

              //welcome text
              Text(
                'Welcome back you\'ve been missed!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700]
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              //username input
              MyTextfield(
                controller: userNameController,
                hintText: 'User Name',
                obscureText: false
              ),
              const SizedBox(
                height: 10,
              ),
              //password input
              MyTextfield(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true
              ),
              // forget password
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                        color: Colors.grey[700]
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25,),
              //login button
              
              MyButton(
                onPress: signUserIn,
              ),
              //login with google or apple
              const SizedBox(
                height: 50,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        height: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'login with',
                        style: TextStyle(
                          color: Colors.grey[700]
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        height: 0.5,
                        color: Colors.grey[400],
                      ),
                    )
                  ],
                ),
              ),
              
              const SizedBox(height: 50,),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomIcon(filePath: 'lib/images/google.png'),
                  SizedBox(width: 40,),
                  CustomIcon(filePath: 'lib/images/apple.png'),
                ],
              ),
              const SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member',
                    style: TextStyle(
                      color: Colors.grey[700]
                    ),
                  ),
                  const SizedBox(width: 4,),
                  Text(
                    'Register Now',
                    style: TextStyle(
                      color: Colors.blue[700]
                    ),
                  )
                ],
              )
            ],

          ),
        ),
      ),
    );
  }
}