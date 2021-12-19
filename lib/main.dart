import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';
import 'package:google_fonts/google_fonts.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  
  // Untuk Button Text
  final Color createNewAccountColor = "07080B".toColor();
  final Color joinUsColor = "373C44".toColor();
  final Color buttonColor = "1C5D99".toColor();
  final Color hintColor = "848A95".toColor();
  final Color borderSideColor = "E4E5E7".toColor();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();

  final TextStyle createNewAccountText = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    fontSize: 20,
  );
  final TextStyle buttonText = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );
  final TextStyle joinUsText =
      GoogleFonts.poppins(fontSize: 14, letterSpacing: -0.006);
  final TextStyle labelInputText = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );
  final TextStyle inputText = GoogleFonts.poppins(
    fontSize: 14,
  );

   LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 43.6,
                ),
                const Icon(
                  Icons.arrow_back,
                  size: 19.2,
                ),
                const SizedBox(
                  height: 19.2,
                ),
                Text(
                  'Create New Account',
                  style: createNewAccountText.copyWith(
                    color: createNewAccountColor,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'Join us and transfer from your phone just one click!',
                  style: joinUsText,
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'Name',
                  style: labelInputText,
                ),
                const SizedBox(height: 8),
                SizedBox(
                  height: 40,
                  child: TextField(
                    controller : nameController,
                    style: inputText,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      hintText: 'Name',
                      hintStyle: inputText.copyWith(color: hintColor),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 0.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide:
                            BorderSide(color: borderSideColor, width: 1.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Email',
                  style: labelInputText,
                ),
                const SizedBox(height: 8),
                SizedBox(
                  height: 40,
                  
                  child: TextField(
                    style: inputText,
                    controller : emailController,
                    keyboardType : TextInputType.emailAddress,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      hintText: 'Email',
                      hintStyle: inputText.copyWith(color: hintColor),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 0.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide:
                            BorderSide(color: borderSideColor, width: 1.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Phone Number',
                  style: labelInputText,
                ),
                const SizedBox(height: 8),

                SizedBox(
                  height: 40,
                  child: TextField(
                    controller : phoneNumberController,
                    keyboardType: TextInputType.phone,
                    style: inputText,
                    decoration: InputDecoration(
                      
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      hintText: 'Phone Number',
                      hintStyle: inputText.copyWith(color: hintColor),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide:
                            const BorderSide(color: Colors.grey, width: 0.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide:
                            BorderSide(color: borderSideColor, width: 1.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                // Button Continue
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Text('Continue', style: buttonText),
                    onPressed: () {
                      print(emailController.text);
                      print(nameController.text);
                      print(phoneNumberController.text);

                    },
                    style: ElevatedButton.styleFrom(
                      primary: buttonColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          6,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
