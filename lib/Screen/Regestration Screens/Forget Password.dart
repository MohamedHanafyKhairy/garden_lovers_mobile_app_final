import 'package:flutter/material.dart';
import 'package:garden_lovers_mobile_app/Providers/Repeat%20Provider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../../Models/UserLoginModel.dart';

class Forget_Screen extends StatefulWidget {
  const Forget_Screen({super.key});

  @override
  _Forget_ScreenState createState() => _Forget_ScreenState();
}

class _Forget_ScreenState extends State<Forget_Screen> {
  bool isPasswordVisible = false;
  bool isPasswordVisible2 = false;
  final TextEditingController _emailPhoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordController2 = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<Repeat_Provider>(context);

    return Sizer(builder: (p0, p1, p2) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Background.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(1.9.h, 4.3.h, 1.9.h, 0.2.h),
              child: Container(
                width: double.infinity.w,
                height: 12.h,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.h, 2.5.h, 0.h, 0.h),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 5.2.h,
                          height: 5.2.h,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(1.3.h)),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(1.h, 1.h, 0.1.h, 1.h),
                            child: Icon(Icons.arrow_back_ios,
                                size: 2.7.h, color: Color(0xFF113B27)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15.h, 15.h, 0, 0),
              child: Container(
                height: 18.6.h,
                width: 17.3.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/greenery-logo (2).png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(1.5.h),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5.2.h),
                    topLeft: Radius.circular(5.2.h),
                  ),
                ),
                child: Container(
                  height: 59.3.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5.5.h),
                      topLeft: Radius.circular(5.5.h),
                    ),
                  ),
                  child: Center(
                    child: Container(
                      width: 38.8.h,
                      height: 56.4.h,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0.7.h, 0, 0),
                            child: Center(
                              child: Column(
                                children: [
                                  Text(
                                    'Hi!',
                                    style: TextStyle(
                                        fontSize: 3.7.h,
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xFF093923),
                                        fontFamily: 'Poppins'),
                                  ),
                                  Text(
                                    'Register Yourself with us',
                                    style: TextStyle(
                                        fontSize: 1.7.h,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF093923),
                                        fontFamily: 'Poppins_Reg'),
                                  ),
                                  SizedBox(height: 5.2.h),
                                  TextFormField(
                                    controller: _emailPhoneController,
                                    decoration: InputDecoration(
                                      prefixIcon: Image(
                                          image: AssetImage(
                                              'assets/images/area_user.png')),
                                      fillColor: Color(0xFF093923),
                                      prefixIconColor: Colors.white,
                                      prefixStyle:
                                      TextStyle(color: Colors.white),
                                      labelStyle: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Poppins_Reg',
                                          fontSize: 1.5.h),
                                      labelText: 'Phone number or E-mail',
                                      filled: true,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(1.5.h),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 2.5.h),
                                  TextFormField(
                                    controller: _passwordController,
                                    obscureText: isPasswordVisible,
                                    decoration: InputDecoration(
                                      prefixIcon: Image(
                                          image: AssetImage(
                                              'assets/images/icon-area-1.png')),
                                      prefixIconColor: Colors.white,
                                      prefixStyle:
                                      TextStyle(color: Colors.white),
                                      labelStyle: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Poppins_Reg',
                                          fontSize: 1.5.h),
                                      fillColor: Color(0xFF093923),
                                      labelText: 'Password',
                                      suffixIcon: Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            0.h, 0.h, 1.h, 0.h),
                                        child: GestureDetector(
                                          child: isPasswordVisible
                                              ? Image(
                                              image: AssetImage(
                                                  'assets/images/icon-area-2.png'))
                                              : Icon(
                                            Icons.visibility_off,
                                            color: Colors.white,
                                          ),
                                          onTap: () {
                                            setState(() {
                                              isPasswordVisible =
                                              !isPasswordVisible;
                                              print(isPasswordVisible);
                                            });
                                          },
                                        ),
                                      ),
                                      filled: true,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(1.5.h),
                                      ),
                                    ),
                                    cursorColor: Colors.white,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins'),
                                  ),
                                  SizedBox(height: 2.5.h),
                                  TextFormField(
                                    controller: _passwordController2,
                                    obscureText: isPasswordVisible2,
                                    decoration: InputDecoration(
                                      prefixIcon: Image(
                                          image: AssetImage(
                                              'assets/images/icon-area-1.png')),
                                      prefixIconColor: Colors.white,
                                      prefixStyle:
                                      TextStyle(color: Colors.white),
                                      labelStyle: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Poppins_Reg',
                                          fontSize: 1.5.h),
                                      fillColor: Color(0xFF093923),
                                      labelText: 'Repeat your password',
                                      suffixIcon: Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            0.h, 0.h, 1.h, 0.h),
                                        child: GestureDetector(
                                          child: isPasswordVisible2
                                              ? Image(
                                              image: AssetImage(
                                                  'assets/images/icon-area-2.png'))
                                              : Icon(
                                            Icons.visibility_off,
                                            color: Colors.white,
                                          ),
                                          onTap: () {
                                            setState(() {
                                              isPasswordVisible2 =
                                              !isPasswordVisible2;

                                            });
                                          },
                                        ),
                                      ),
                                      filled: true,
                                      border: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(1.5.h),
                                      ),
                                    ),
                                    cursorColor: Colors.white,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins'),
                                  ),
                                  SizedBox(height: 1.h),
                                  Container(
                                    height: 13.h,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          bottom: 0,
                                          left: 0,
                                          child: ElevatedButton(
                                            onPressed: () async {
                                              setState(() {
                                                isLoading = true;
                                              });
                                              LoginRequestModel user =
                                              LoginRequestModel(
                                                email: _emailPhoneController.text,
                                                password:
                                                _passwordController.text,
                                              );

                                              try {
                                                if(_passwordController.text == _passwordController2.text)
                                                  {
                                                    await authProvider.resetPassword(context,_emailPhoneController.text,_passwordController2.text);
                                                  }
                                                if (authProvider.isPasswordResetSuccessful == null) {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(SnackBar(
                                                      content: Text(
                                                          'Login Failed')));
                                                }
                                              } catch (e) {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(SnackBar(
                                                    content:
                                                    Text('Error: $e')));
                                              } finally {
                                                setState(() {
                                                  isLoading = false;
                                                });
                                              }
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                              Color(0xFF093923),
                                              minimumSize: Size(38.7.h, 5.4.h),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(
                                                    1.5.h),
                                              ),
                                            ),
                                            child: Text(
                                              'Repeat your password',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 1.7.h,
                                                  fontFamily: 'Poppins'),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          right: 0,
                                          bottom: 0,
                                          child: Image.asset(
                                            'assets/images/man1_one.png',
                                            width: 15.h,
                                            height: 13.3.h,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 1.h, 0, 0),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Don\'t have an account?',
                                          style: TextStyle(
                                              fontSize: 1.3.h,
                                              color: Color(0xFFB7B7B7),
                                              fontFamily: 'Poppins'),
                                        ),
                                        SizedBox(height: 2.h),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              0.5.h, 0.h, 0, 0),
                                          child: Text(
                                            'Sign up',
                                            style: TextStyle(
                                                fontSize: 1.3.h,
                                                color: Color(0xFF093923),
                                                decoration:
                                                TextDecoration.underline,
                                                decorationColor:
                                                Color(0xFF093923),
                                                decorationThickness: 0.2.h,
                                                fontFamily: 'Poppins'),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}