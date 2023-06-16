import 'package:flutter/material.dart';
import 'package:my_food_recipe_app/src/pages/login/view/widget/my_custom_login.dart';



class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        backgroundColor: const Color(0xff035259),
        appBar: AppBar(title: const Text('login to my recipe app'),backgroundColor: const Color(0xFF00282F)),
        body:const MyCustomLogin(),
      );
}
