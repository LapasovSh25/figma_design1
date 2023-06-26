import 'package:figma_design1/view/pages/welcome_page.dart';
import 'package:flutter/material.dart';

class RegisterProvider extends ChangeNotifier {
  // Controller
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  bool isLoading = false;

  // To sign up login . . .
  Future<void> register(BuildContext context) async {
    isLoading = true;
    notifyListeners();
    try {
      if (emailController.text.isNotEmpty && passController.text.isNotEmpty) {
        isLoading = false;
        notifyListeners();
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const WelcomePage()));
      }
    } catch (e) {}
  }
}
