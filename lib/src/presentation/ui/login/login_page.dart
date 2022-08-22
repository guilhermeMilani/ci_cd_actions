import 'package:flutter/material.dart';

import 'widgets/button_login.dart';
import 'widgets/text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
              "https://lp.warren.com.br/hs-fs/hubfs/Logo_warren_white.png?noresize&width=130&name=Logo_warren_white.png",
              scale: 3,
            ),
            Column(
              children: [
                TextFieldLogin(nomeTextField: "Login"),
                const SizedBox(height: 10),
                TextFieldLogin(nomeTextField: "Senha"),
              ],
            ),
            ButtonLogin(context),
          ],
        ),
      ),
    );
  }
}
