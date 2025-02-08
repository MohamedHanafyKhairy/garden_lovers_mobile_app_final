import 'package:flutter/material.dart';
import 'package:garden_lovers_mobile_app/Screen/Regestration%20Screens/Login%20Screen.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../../Models/UserModel-SignUp.dart';
import '../../Providers/UserProvider-SignUp.dart';

class SignUpProvider extends ChangeNotifier {
  bool isPasswordVisible = false;

  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    notifyListeners();
  }
}

TextEditingController name = TextEditingController();
TextEditingController email = TextEditingController();
TextEditingController pass = TextEditingController();
TextEditingController address = TextEditingController();
TextEditingController phone = TextEditingController();

class SignUp_Screen extends StatefulWidget {
  const SignUp_Screen({super.key});

  @override
  _SignUp_ScreenState createState() => _SignUp_ScreenState();
}

class _SignUp_ScreenState extends State<SignUp_Screen> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (p0, p1, p2) {
      return ChangeNotifierProvider(
        create: (_) => SignUpProvider(),
        child: Consumer<SignUpProvider>(
          builder: (context, signUpProvider, child) {
            return Scaffold(
              resizeToAvoidBottomInset: false,
              body: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    child: Stack(
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
                          padding: EdgeInsets.fromLTRB(18.5.h, 6.h, 0, 0),
                          child: Container(
                            height: 10.6.h,
                            width: 10.5.h,
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
                              height: 76.5.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5.5.h),
                                  topLeft: Radius.circular(5.5.h),
                                ),
                              ),
                              child: Center(
                                child: Container(
                                  width: 39.h,
                                  height: 73.h,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(0, 0.h, 0, 0),
                                        child: Center(
                                          child: Column(
                                            children: [
                                              Text(
                                                'Hi!',
                                                style: TextStyle(
                                                    fontSize: 3.8.h,
                                                    fontWeight: FontWeight.w800,
                                                    color: Color(0xFF093923),
                                                    fontFamily: 'Poppins'),
                                              ),
                                              Text(
                                                'Welcome to Garden Lovers App',
                                                style: TextStyle(
                                                    fontSize: 1.8.h,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xFF093923),
                                                    fontFamily: 'Poppins_Reg'),
                                              ),
                                              SizedBox(height: 3.h),
                                              TextFormField(
                                                controller: name,
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
                                                  labelText: 'Your name',
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
                                              SizedBox(height: 2.h),
                                              TextFormField(
                                                controller: phone,
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
                                                  labelText: 'Phone number',
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
                                              SizedBox(height: 2.h),
                                              TextFormField(
                                                controller: email,
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
                                                  labelText: 'Email Address',
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
                                              SizedBox(height: 2.h),
                                              TextFormField(
                                                controller: address,
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
                                                  labelText: 'Your Address - Location',
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
                                              SizedBox(height: 2.h),
                                              TextFormField(
                                                controller: pass,
                                                obscureText: signUpProvider.isPasswordVisible,
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
                                                      child: signUpProvider.isPasswordVisible
                                                          ? Image(
                                                          image: AssetImage(
                                                              'assets/images/icon-area-2.png'))
                                                          : Icon(
                                                        Icons.visibility_off,
                                                        color: Colors.white,
                                                      ),
                                                      onTap: () {
                                                        signUpProvider.togglePasswordVisibility();
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
                                              Container(
                                                height: 7.5.h,
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      bottom: 0,
                                                      left: 0,
                                                      child: ElevatedButton(
                                                        onPressed: () async {
                                                          UserModel user = UserModel(
                                                            name: name.text,
                                                            email: email.text,
                                                            password: pass.text,
                                                            Phone: phone.text,
                                                            address: address.text,
                                                          );

                                                          try {
                                                            await Provider.of<AuthProvider>(context, listen: false).signUp(user, context);

                                                          } catch (e) {
                                                            ScaffoldMessenger.of(context).showSnackBar(
                                                              SnackBar(content: Text('SignUp Error: $e')),
                                                            );
                                                          }
                                                        },
                                                        style: ElevatedButton.styleFrom(
                                                          backgroundColor:
                                                          Color(0xFF093923),
                                                          minimumSize:
                                                          Size(38.7.h, 5.4.h),
                                                          shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                            BorderRadius.circular(1.5.h),
                                                          ),
                                                        ),
                                                        child: Text(
                                                          'Sign up',
                                                          style: TextStyle(
                                                              color: Colors.white,
                                                              fontSize: 1.7.h,
                                                              fontFamily: 'Poppins'),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                EdgeInsets.fromLTRB(0, 1.h, 0, 0),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      'Already have an account?',
                                                      style: TextStyle(
                                                          fontSize: 1.3.h,
                                                          color: Color(0xFFB7B7B7),
                                                          fontFamily: 'Poppins'),
                                                    ),
                                                    SizedBox(height: 2.h),
                                                    Padding(
                                                      padding: EdgeInsets.fromLTRB(
                                                          0.5.h, 0.h, 0, 0),
                                                      child: GestureDetector(
                                                        child: Text(
                                                          'Login',
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
                                                        onTap:(){
                                                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginFun(),));
                                                        },
                                                      )
                                                    )
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 3.h,
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 0.2.h,
                                                    width: 10.h,
                                                    decoration: BoxDecoration(
                                                        color: Colors.grey,
                                                        borderRadius:
                                                        BorderRadius.circular(0.1.h)),
                                                  ),
                                                  SizedBox(
                                                    width: 2.h,
                                                  ),
                                                  Text(
                                                    'Or Continue With',
                                                    style: TextStyle(
                                                        fontSize: 1.6.h,
                                                        color: Color(0xFFB7B7B7),
                                                        fontFamily: 'Poppins'),
                                                  ),
                                                  SizedBox(
                                                    width: 2.h,
                                                  ),
                                                  Container(
                                                    height: 0.2.h,
                                                    width: 10.h,
                                                    decoration: BoxDecoration(
                                                        color: Colors.grey,
                                                        borderRadius:
                                                        BorderRadius.circular(0.1.h)),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 2.h,
                                              ),
                                              Center(
                                                child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      width: 60,
                                                      height: 60,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                        BorderRadius.circular(15),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(0.3),
                                                            spreadRadius: 2,
                                                            blurRadius: 5,
                                                            offset:
                                                            Offset(0, 3),
                                                          ),
                                                        ],
                                                      ),
                                                      child: Center(
                                                        child: Image.asset(
                                                          'assets/images/Facebook Icon.png',
                                                          width: 3.3.h,
                                                          height: 3.3.h,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 16,
                                                    ),
                                                    Container(
                                                      width: 60,
                                                      height: 60,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                        BorderRadius.circular(15),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(0.3),
                                                            spreadRadius: 2,
                                                            blurRadius: 5,
                                                            offset: Offset(0, 3),
                                                          ),
                                                        ],
                                                      ),
                                                      child: Center(
                                                        child: Image.asset(
                                                          'assets/images/Google Icon.png',
                                                          width: 3.3.h,
                                                          height: 3.3.h,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
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
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(29.h, 13.9.h, 0, 0),
                    child: Image(image: AssetImage('assets/images/Levi Logo.png'),height:22.h,),
                  )
                ],
              ),
            );
          },
        ),
      );
    });
  }
}