import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:garden_lovers_mobile_app/main.dart';
import 'package:sizer/sizer.dart';


class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.lightGreen[50],
          image: DecorationImage(
            image: NetworkImage(
                'https://firebasestorage.googleapis.com/v0/b/gardenlovers-4d08b.appspot.com/o/bg.png?alt=media&token=6b1ecc50-8b3f-4b1a-a4b9-c4654b98489c'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 20),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: Color(0xff134914),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'Menu',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 20, top: 20),
                    child: Image.network(
                      'https://firebasestorage.googleapis.com/v0/b/gardenlovers-4d08b.appspot.com/o/logo-removebg-preview.png?alt=media&token=e49b1081-7156-4c12-9d7f-0295b63c460b',
                      width: 50,
                      height: 50,
                    ),
                  ),
                ],
              ),


              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Contact Us',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Feel free to contact us if you have any suggestions, complaints, or issues that need to be resolved.',
                      style: TextStyle(fontSize: 16, color: Color(0xffffffff)),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _ContactOption(
                          icon: Icons.phone,
                          text: 'Call Us',
                          subtitle:
                          'Our team is available Monday to Friday 9-5',
                        ),
                        _ContactOption(
                          icon: Icons.email,
                          text: 'Email Us',
                          subtitle:
                          'Our team is available Monday to Friday 9-5',
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'Connect with us on social media',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffffffff)),
                    ),
                    const SizedBox(height: 10),
                    _SocialMediaLink(
                      icon: FontAwesomeIcons.instagram,
                      platform: 'Instagram',
                      followers: '4.6K Followers',
                      posts: '118 Posts',
                    ),
                    _SocialMediaLink(
                      icon: FontAwesomeIcons.telegram,
                      platform: 'Telegram',
                      followers: '1.3K Followers',
                      posts: '85 Posts',
                    ),
                    _SocialMediaLink(
                      icon: FontAwesomeIcons.facebook,
                      platform: 'Facebook',
                      followers: '3.8K Followers',
                      posts: '136 Posts',
                    ),
                    _SocialMediaLink(
                      icon: FontAwesomeIcons.whatsapp,
                      platform: 'WhatsApp',
                      followers: '4.6K Followers',
                      posts: '118 Posts',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://firebasestorage.googleapis.com/v0/b/gardenlovers-4d08b.appspot.com/o/bg.png?alt=media&token=6b1ecc50-8b3f-4b1a-a4b9-c4654b98489c'),
            fit: BoxFit.cover,
          ),
        ),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Likes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
          ],
          currentIndex: _currentIndex,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.white,
          backgroundColor: Colors.transparent,
          onTap: onTabTapped,
        ),
      ),
    );
  }
}

class _ContactOption extends StatelessWidget {
  final IconData icon;
  final String text;
  final String subtitle;

  const _ContactOption({
    required this.icon,
    required this.text,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      width: 17.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(2.h),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
         Container(
           width: 6.h,
           height: 6.h,
           decoration: BoxDecoration(
             color: Colors.black,
             borderRadius: BorderRadius.circular(1.1.h),
           ),
           child:  Icon(icon, size: 3.1.h, color: Colors.white,),
         ),
          const SizedBox(height: 10),
          Text(text,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          Text(subtitle,
              style: const TextStyle(color: Colors.grey),
              textAlign: TextAlign.center),
        ],
      ),
    );
  }
}

class _SocialMediaLink extends StatelessWidget {
  final IconData icon;
  final String platform;
  final String followers;
  final String? posts;

  const _SocialMediaLink({
    required this.icon,
    required this.platform,
    required this.followers,
    this.posts,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icon, size: 30),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(platform,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text(followers, style: const TextStyle(color: Colors.grey)),
                    if (posts != null)
                      Text(posts!, style: const TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),
            const Icon(Icons.file_upload_outlined, size: 24),
          ],
        ),
      ),
    );
  }
}