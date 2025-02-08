import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../Models/ResponceModel.dart';
import '../Models/UserLoginModel.dart';
import '../Screen/Services Screens/Home Screen.dart';
import '../Services/Login Services.dart';

class LoginProvider extends ChangeNotifier {
  final AuthService _authService = AuthService();
  bool isLoading = false;
  String? message;
  ResponceModel? user;

  Future<void> login(LoginRequestModel userRequest, BuildContext context) async {
    isLoading = true;
    notifyListeners();

    try {
      final response = await _authService.login(userRequest);
      if (response != null) {
        user = response;
        message = 'Login Successful';
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Container(
            width: double.infinity.h,
            height: 17.h,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(6.5.h),
                    topRight: Radius.circular(6.5.h)),
                border: Border.all(
                    color: Color(0xFF093923),
                    width: 0.3.h
                )
            ),
            child: Center(
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.fromLTRB(4.h, 3.6.h,0,0),child: Text(
                        'Success login',
                        style: TextStyle(
                            color: Color(0xFF093923),
                            fontFamily: 'Poppins',
                            fontSize: 2.8.h),
                      ),),
                      Padding(padding: EdgeInsets.fromLTRB(5.h, 0,0,0),child: Text(
                        'Welome my best user',
                        style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Zian',
                            fontSize: 2.1.h),
                      ),),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.h, 0, 4.h, 0.h),
                    child: Image(image: AssetImage('assets/images/Success Login.png')),
                  )
                ],
              ),
            ),
          ),
          padding: EdgeInsets.all(0),
          backgroundColor: Colors.transparent,),
        );
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
      }
    } catch (error) {
      message = error.toString();

    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
