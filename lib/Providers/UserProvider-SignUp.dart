import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../Models/UserModel-SignUp.dart';
import '../Screen/Regestration Screens/Login Screen.dart';
import '../Services/UserService-SignUp.dart';

class AuthProvider with ChangeNotifier {
  final ApiService _apiService = ApiService();
  bool _isLoading = false;
  String? _errorMessage;

  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  Future<void> signUp(UserModel user, BuildContext context) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      await _apiService.signUp(user);

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
                    Padding(padding: EdgeInsets.fromLTRB(3.5.h, 3.6.h,0,0),child: Text(
                      'Success Signup',
                      style: TextStyle(
                          color: Color(0xFF093923),
                          fontFamily: 'Poppins',
                          fontSize: 2.5.h),
                    ),),
                    Padding(padding: EdgeInsets.fromLTRB(5.h, 0,0,0),child: Text(
                      'Thanks for joining',
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

      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginFun(),));
    } catch (e) {
      _errorMessage = e.toString();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Container(
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
                      'Signup Field',
                      style: TextStyle(
                          color: Colors.red,
                          fontFamily: 'Poppins',
                          fontSize: 3.3.h),
                    ),),
                    Padding(padding: EdgeInsets.fromLTRB(5.h, 0,0,0),child: Text(
                      'Check From Your Data ',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Zian',
                          fontSize: 2.h),
                    ),),
                    Padding(padding: EdgeInsets.fromLTRB(5.h, 0,0,0),child: Text(
                      'Try Again ',
                      style: TextStyle(
                          color: Colors.red,
                          fontFamily: 'Zian',
                          fontSize: 2.h),
                    ),)

                  ],
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.h, 0, 4.h, 0.h),
                  child: Image(
                      image: AssetImage('assets/images/Wrong Login.png')),
                )
              ],
            ),
          ),
        ),
        padding: EdgeInsets.all(0),
        backgroundColor: Colors.transparent,
      ),);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}