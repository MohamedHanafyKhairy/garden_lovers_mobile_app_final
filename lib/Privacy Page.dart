import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Sizer(builder: (context, orientation, deviceType) {
        return Container(
          width: 100.w,
          height: 100.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              // Header Section
              Padding(
                padding: EdgeInsets.fromLTRB(1.9.h, 4.3.h, 1.9.h, 0.2.h),
                child: Container(
                  width: double.infinity,
                  height: 12.h,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 2.5.h),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 5.2.h,
                            height: 5.2.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(1.3.h),
                            ),
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 2.7.h,
                              color: Color(0xFF113B27),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 1.5.h, top: 2.5.h),
                        child: Center(
                          child: Text(
                            'Privacy Policy',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Lilita',
                              fontSize: 3.h,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.zero,
                        child: Container(
                          width: 7.h,
                          height: 8.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/Garden Lovers Logo.png'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Container(
                height: 80.h,
                child: Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 80.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5.h),
                        topLeft: Radius.circular(5.h),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(3.h),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildSectionTitle("Types of Data We Collect"),
                            _buildSectionContent(
                                "We collect various types of personal data to provide and improve our services. This includes:\n"
                                    "- Identifiable information such as name, email, phone number.\n"
                                    "- Usage data such as your activity within the app.\n"
                                    "- Device information like IP address, operating system, and browser type."
                            ),

                            _buildSectionTitle("Use of Your Personal Data"),
                            _buildSectionContent(
                                "We use the collected data for different purposes, such as:\n"
                                    "- Enhancing the user experience.\n"
                                    "- Providing customer support.\n"
                                    "- Monitoring usage trends and security threats.\n"
                                    "- Complying with legal obligations."
                            ),

                            _buildSectionTitle("How We Protect Your Data"),
                            _buildSectionContent(
                                "We take user security seriously and implement the following:\n"
                                    "- Data encryption to protect sensitive information.\n"
                                    "- Secure servers with restricted access.\n"
                                    "- Regular security audits and vulnerability testing.\n"
                                    "- Two-factor authentication for added protection."
                            ),

                            _buildSectionTitle("Your Rights and Control Over Your Data"),
                            _buildSectionContent(
                                "You have several rights regarding your data, including:\n"
                                    "- Access: You can request access to your personal data.\n"
                                    "- Correction: You can ask us to correct any incorrect data.\n"
                                    "- Deletion: You have the right to request data deletion.\n"
                                    "- Opt-out: You can unsubscribe from marketing communications at any time."
                            ),

                            _buildSectionTitle("Third-Party Sharing and Disclosure"),
                            _buildSectionContent(
                                "We do not sell or share your data with third parties except in the following cases:\n"
                                    "- When required by law or governmental authorities.\n"
                                    "- With trusted partners for service improvement (e.g., analytics, cloud storage).\n"
                                    "- In the event of a business transfer, such as a merger or acquisition."
                            ),

                            _buildSectionTitle("How We Ensure Compliance"),
                            _buildSectionContent(
                                "We adhere to global data protection standards, including:\n"
                                    "- GDPR (General Data Protection Regulation) for European users.\n"
                                    "- CCPA (California Consumer Privacy Act) for California residents.\n"
                                    "- Industry best practices for data privacy and security."
                            ),

                            _buildSectionTitle("Contact Us"),
                            _buildSectionContent(
                                "If you have any concerns about our privacy practices, you can contact us at:\n"
                                    "- Email: support@gardenlovers.com\n"
                                    "- Phone: +1 234 567 890\n"
                                    "- Office: 123 Green Street, Garden City, USA"
                            ),

                            SizedBox(height: 3.h),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(top: 2.h, bottom: 1.h),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 2.5.h,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget _buildSectionContent(String content) {
    return Padding(
      padding: EdgeInsets.only(bottom: 2.h),
      child: Text(
        content,
        style: TextStyle(
          fontSize: 1.8.h,
          color: Colors.black87,
        ),
      ),
    );
  }
}
