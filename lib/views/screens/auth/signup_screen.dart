import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../widgets/text_input_field.dart';

class SignupScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Heading of application

            Text(
              'Tiktok Clone',
              style: TextStyle(
                fontSize: 35,
                color: buttonColor,
                fontWeight: FontWeight.bold,
              ),
            ),

            // subHeading of the application

            const Text(
              'Register',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            // Profile picture

            Stack(
              children: [
                const CircleAvatar(
                  radius: 64,
                  backgroundImage: NetworkImage(
                      'https://www.pngitem.com/pimgs/m/150-1503945_transparent-user-png-default-user-image-png-png.png'),
                  backgroundColor: Colors.black,
                ),
                Positioned(
                  bottom: -10,
                  left: 80,
                  child: IconButton(
                    onPressed: () {
                      print('Pick image');
                    },
                    icon: Icon(Icons.add_a_photo),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),

            // Username textfield input

            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: TextInputField(
                controller: _usernameController,
                labelText: 'Username',
                isObsecure: false,
                icon: Icons.person,
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            // Email textfield input

            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: TextInputField(
                controller: _emailController,
                labelText: 'Email',
                isObsecure: false,
                icon: Icons.email_outlined,
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            // Password textfield input

            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: TextInputField(
                controller: _passwordController,
                labelText: 'Password',
                isObsecure: true,
                icon: Icons.lock,
              ),
            ),
            const SizedBox(
              height: 35,
            ),

            // Register button

            Container(
              width: MediaQuery.of(context).size.width - 40,
              height: 50,
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: InkWell(
                onTap: () {
                  print('Register User');
                },
                child: const Center(
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),

            // Already have an account? Login

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account? ',
                  style: TextStyle(fontSize: 20),
                ),
                InkWell(
                  onTap: () => print('Navigating user'),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20,
                      color: buttonColor,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
