import 'package:flutter/material.dart';
import 'package:garden_lovers_mobile_app/Models/UserLoginModel.dart';
import 'package:garden_lovers_mobile_app/Screen/Regestration%20Screens/Login%20Screen.dart';
import '../Services/Repeat Pass.dart';

class Repeat_Provider with ChangeNotifier {
  bool _isPasswordResetSuccessful = false;
  String? message;

  bool get isPasswordResetSuccessful => _isPasswordResetSuccessful;

  Future<void> resetPassword(BuildContext context, String email, String password) async {
    final model = LoginRequestModel(email: email, password: password);

    if (model.email.isNotEmpty && model.password.isNotEmpty) {

      _isPasswordResetSuccessful = await Repeat_Service().repeatPassword(model);

      if (_isPasswordResetSuccessful) {
        message = 'Password Reset Successful';

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message!)),
        );

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginFun()),
        );
      } else {
        message = 'Failed to reset password';
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message!)),
        );
      }


      notifyListeners();
    } else {
      message = 'Please fill all fields';
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message!)),
      );
    }
  }
}
