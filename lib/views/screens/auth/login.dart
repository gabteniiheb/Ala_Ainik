import 'package:flutter/material.dart';
import 'package:idarti_dari/views/screens/auth/signup.dart';
import 'package:idarti_dari/views/screens/menuscreen.dart';
import 'package:idarti_dari/views/widgets/text_input_field.dart';
//import 'package:videogab/constants.dart';
//import 'package:videogab/views/screens/auth/signup_screen.dart';
//import 'package:videogab/views/widgets/text_input_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

 // final TextEditingController _emailController = TextEditingController();
  //final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const   Text(
             'نضمن حقي نفاذ  المعلومة',
              style: TextStyle(
                fontSize: 35,
                color: Colors.green,
                fontWeight: FontWeight.w900,
              ),
            ),
            const Text(
              'د خول',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child:  TextInputField(
               // controller: _emailController,
                labelText: 'دخل إميل',
                icon: Icons.email,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child:const  TextInputField(
                //controller: _passwordController,
                labelText: 'آدخل كلمة السر',
                icon: Icons.lock,
                isObscure: true,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 40,
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius:  BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: InkWell(
                onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>  MenuScreen(),
                    ),
                  ),
              child: const Center(
                  child: Text(
                    ' دخول',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              /*  const Text(
               'ان لم يكن لديك حساب؟',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),*/
                InkWell(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SignupScreen(),
                    ),
                  ),
                  child: const Text(
                    'نشاءحساب',
                    style: TextStyle(fontSize: 20, color: Colors.green),
                    textAlign: TextAlign.center,
                  ),
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