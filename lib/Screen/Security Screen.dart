import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SecurityScreen extends StatelessWidget {
  const SecurityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4.w), // 4% من عرض الشاشة
          child: Column(
            children: [
              Container(
                height: 20.h, // 20% من ارتفاع الشاشة
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/leaves_bg.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 3.h),
              Text(
                'Protect all your data with strong security access',
                style: TextStyle(fontSize: 5.w, fontWeight: FontWeight.bold), // حجم النص متجاوب
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 3.h),
              Image.asset('assets/security_illustration.png', height: 30.h), // الصورة متجاوبة
              SizedBox(height: 3.h),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.w)),
                  padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 10.w),
                ),
                onPressed: () {},
                child: Text(
                  'Learn More',
                  style: TextStyle(color: Colors.white, fontSize: 4.w), // حجم النص متجاوب
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}