import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PlantInformation extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const PlantInformation({
    Key? key,
    required this.title,
    required this.description,
    required this.imageUrl, // سيتم تمرير اسم الصورة هنا
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Padding(
          padding: EdgeInsets.zero,
          child: Container(
            height: 19.h,
            width: 55.h,
            child: Stack(
              children: [
                // الخلفية مع تأثير الـ blur والعنوان
                Padding(
                  padding: EdgeInsets.fromLTRB(0.h, 1.h, 0.h, 0.h),
                  child: Center(
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 0.6.h, sigmaY: 0.6.h),
                        child: Container(
                          height: 19.2.h,
                          width: 44.h,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.white60,
                                Colors.grey.withOpacity(0.3),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(1.2.h),
                            border: Border.all(
                              color: Colors.white60.withOpacity(0.5),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(1.h, 2.h, 0, 0),
                            child: Text(
                              title,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontSize: 1.5.h,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // حاوية الصورة
                Padding(
                  padding: EdgeInsets.fromLTRB(20.5.h, 2.h, 0, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(2.h),
                    ),
                    height: 16.h,
                    width: 22.h,
                    child: Image.asset(
                      imageUrl, // استخدام AssetImage هنا
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // نص الوصف
                Padding(
                  padding: EdgeInsets.fromLTRB(1.h, 8.h, 0, 0),
                  child: Text(
                    description,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 1.1.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
