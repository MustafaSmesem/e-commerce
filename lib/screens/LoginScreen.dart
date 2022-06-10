import 'package:flutter/material.dart';
import 'package:ecommerce/constant.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void signIn() {
    debugPrint(
        'Sign in with user [${emailController.text}] and password: ${passwordController.text}');
  }

  void register() {
    debugPrint(
        'Sign in with user [${emailController.text}] and password: ${passwordController.text}');
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle outlineButtonStyle = OutlinedButton.styleFrom(
      minimumSize: const Size.fromHeight(45),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
      ),
    ).copyWith(
      side: MaterialStateProperty.resolveWith<BorderSide>(
        (Set<MaterialState> states) {
          return BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 1,
          ); // Defer to the widget's default.
        },
      ),
    );

    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      onPrimary: Colors.white,
      minimumSize: const Size.fromHeight(45),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
      ),
    );

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(0.8, 1),
                colors: <Color>[lightOrangeColor, darkOrangeColor, pinkColor],
                // Gradient from https://learnui.design/tools/gradient-generator.html
                tileMode: TileMode.mirror,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                  defaultPadding, 300.0, defaultPadding, 20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultBorderRadius * 4),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 2),
                    ),
                  ],
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                      defaultPadding * 1.5,
                      defaultPadding * 2.5,
                      defaultPadding * 1.5,
                      defaultPadding),
                  child: Column(
                    children: [
                      TextField(
                        controller: emailController,
                        obscureText: false,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Username or Email',
                        ),
                      ),
                      const SizedBox(
                        height: defaultSpacerHeight,
                      ),
                      TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                      ),
                      const SizedBox(
                        height: defaultSpacerHeight,
                      ),
                      ElevatedButton(
                        style: raisedButtonStyle,
                        onPressed: signIn,
                        child: const Text('Sign In'),
                      ),
                      const SizedBox(
                        height: defaultSpacerHeight / 4,
                      ),
                      const Text('-OR-'),
                      const SizedBox(
                        height: defaultSpacerHeight / 4,
                      ),
                      OutlinedButton(
                        style: outlineButtonStyle,
                        onPressed: () {},
                        child: const Text('Sign Up'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage(
                  'assets/images/login_ar.png',
                ),
              ),
            ),
            height: 330.0,
          ),
        ],
      ),
    );
  }
}
