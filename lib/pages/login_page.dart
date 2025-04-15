import 'package:flutter/material.dart';
import 'package:startertemplate/main_page.dart';
import '../components/my_login_button.dart';
import '../components/my_square_tile.dart';
import '../components/my_textfield.dart';

/*

L O G I N P A G E

This is the LoginPage, the first page the user will see based off what was configured in the main.dart file.

Once the user is authenticated, they are directed to the homepage.

When considering logging in users into your app, you must consider AUTHENTICATION:

- email sign in
- google sign in
- apple sign in
- facebook sign in, etc

There are many authentication services including firebase. This is highly dependent on your needs.

*/

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  bool _obscurePassword = true;

  // sign user in method
  void signUserIn() {
    // once user is authenticated, direct them to the main page
    Navigator.pop(context);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const MainPage(),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[300],
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 40),

                  // logo
                  // Container(
                  //   decoration: BoxDecoration(
                  //     color: const Color(0xFFEAF6FF),
                  //     borderRadius: BorderRadius.circular(20),
                  //   ),
                  //   padding: const EdgeInsets.all(16),
                  //   child: Image.asset(
                  //     'assets/images/neighbouraid_logo.png',
                  //     width: 120,
                  //     height: 120,
                  //   ),
                  // ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Image.asset(
                        'assets/images/neighbouraid_logo_filled.png',
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),

                  const SizedBox(height: 24,),

                  // Image.asset(
                  //   'assets/images/neighbouraid_logo.png',
                  //   width: 150,
                  //   height: 150,
                  // ),

                  /*------ OLD PLACEHOLDER LOGO ------*/
                  // Icon(
                  //   Icons.lock,
                  //   size: 100,
                  //   color: Colors.grey[900],
                  // ),
                  /*------ OLD PLACEHOLDER LOGO ------*/


                  // welcome back, you've been missed!
                  // Text(
                  //   'Welcome back you\'ve been missed!',
                  //   style: TextStyle(
                  //     color: Colors.grey[700],
                  //     fontSize: 16,
                  //   ),
                  // ),

                  // Text(
                  //   'Welcome Back!👋',
                  //   style: TextStyle(
                  //     color: Colors.grey[800],
                  //     fontSize: 16,
                  //     // fontWeight: FontWeight.bold,
                  //   ),
                  // ),

                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0D3673),
                      ),
                      children: [
                        TextSpan(text: 'Welcome to ',),
                        TextSpan(
                          text: 'NeighbourAid',
                          style: TextStyle(
                            color: Color(0xFF004AAD),
                          ),
                        ),
                        TextSpan(text: ' 👋',),
                      ],
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Center(
                    child: Text(
                      'Help your community, earn rewards!',
                      style: TextStyle(
                        fontSize: 16,
                        // color: Color(0xFF125099),
                        color: Color(0xFF333333),
                      ),
                    ),
                  ),

                  const SizedBox(height: 32),

                  TextField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      prefixIcon: const Icon(
                        Icons.email_outlined,
                        color: Color(0xFF176ABF),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Color(0xFFBDBDBD)),
                      ),
                      // fillColor: const Color(0xFFEEEEEE),
                      fillColor: const Color(0xFFF7F7F7),
                      filled: true,
                    ),
                  ),

                  const SizedBox(height: 16),

                  TextField(
                    controller: _passwordController,
                    obscureText: _obscurePassword,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      prefixIcon: const Icon(
                        Icons.lock_outline,
                        color: Color(0xFF176ABF),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                          color: const Color(0xFF176ABF),
                        ),
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Color(0xFFBDBDBD)),
                      ),
                      // fillColor: const Color(0xFFEEEEEE),
                      fillColor: const Color(0xFFF7F7F7),
                      filled: true,
                    ),
                  ),

                  const SizedBox(height: 12),

                  // password text field
                  // MyTextField(
                  //   controller: _passwordController,
                  //   hintText: 'Password',
                  //   obscureText: true,
                  // ),

                  // remember me (flutter have cookie?)

                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Color(0xFF2FA0F0),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onPressed: (){},
                    ),
                  ),

                  const SizedBox(height: 18),

                  // forgot password?
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.end,
                  //     children: [
                  //       Text(
                  //         'Forgot Password?',
                  //         style: TextStyle(color: Colors.grey[600]),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  //
                  // const SizedBox(height: 25),

                  // sign in button
                  ElevatedButton(
                    onPressed: () {
                      signUserIn();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF004AAD),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),),
                    ),
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  // MyButton(
                  //   onTap: signUserIn,
                  // ),

                  const SizedBox(height: 50),

                  // or continue with
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'Or continue with',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 50),

                  // google + apple sign in buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Google Sign-in Button
                      OutlinedButton.icon(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12,),
                          side: const BorderSide(color: Color(0xFFBDBDBD)),
                          backgroundColor: const Color(0xFFFAFAFA),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        icon: Image.asset('assets/images/google.png', width: 24, height: 24,),
                        label: const Text(
                          'Google',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      const SizedBox(width: 16,),
                      // Apple Sign-in Button
                      OutlinedButton.icon(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12,),
                          side: const BorderSide(color: Color(0xFFBDBDBD)),
                          backgroundColor: const Color(0xFFFAFAFA),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        icon: Image.asset('assets/images/apple.png', width: 24, height: 24,),
                        label: const Text(
                          'Apple',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 24,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                          color: Color(0xFF333333),
                        ),
                      ),
                      TextButton(
                        onPressed: (){},
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Color(0xFF004AAD),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 24,),


                  // const Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     // google button
                  //     SquareTile(imagePath: 'assets/images/google.png', label: 'Google'),
                  //
                  //     SizedBox(width: 25),
                  //
                  //     // apple button
                  //     SquareTile(imagePath: 'assets/images/apple.png', label: 'Apple')
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
