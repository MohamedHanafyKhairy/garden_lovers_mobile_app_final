import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../Services Screens/Home Screen.dart';

class GardenLovers_ChatBot extends StatefulWidget {
  const GardenLovers_ChatBot({super.key});

  @override
  State<GardenLovers_ChatBot> createState() => _GardenLovers_ChatBotState();
}

class _GardenLovers_ChatBotState extends State<GardenLovers_ChatBot> {
  int _currentIndex = 2;
  final _user = ChatUser(id: '1', firstName: 'Hanafy');
  final _bot = ChatUser(id: '2', firstName: 'Levi', profileImage: 'assets/images/Levi Logo.png');
  List<ChatMessage> messages = [];

  late final String _huggingFaceApiKey;

  @override
  void initState() {
    super.initState();
    dotenv.load().then((_) {
      _huggingFaceApiKey = dotenv.env['OPENAI_API_KEY'] ?? 'your-api-key-here';
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });


    if (index == 2) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  GardenLovers_ChatBot()));
    }
    else if(index == 0)
    {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  HomeScreen()));
    }

  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (p0, p1, p2) {
        return Scaffold(
          body: Container(
            width: 100.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/images/Background.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
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
                        Padding(
                          padding: EdgeInsets.fromLTRB(2.5.h, 2.5.h, 0.h, 0.h),
                          child: Center(
                            child: Row(
                                children: [
                                  Container(
                                    height: 5.5.h,
                                    width: 5.5.h,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child: Center(
                                        child: Image(
                                            image: AssetImage('assets/images/Avatar.png'))),
                                  ),
                                ]
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(1.5.h, 1.5.h, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Levi - ChatBot',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Zian',
                                  fontSize: 2.6.h,
                                ),
                              ),
                              Text(
                                '🟢 Always active',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Zain',
                                  fontSize: 1.2.h,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.h, 0.h, 0.h, 0.h),
                  child: Container(
                    width: 7.h,
                    height: 8.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/Levi Logo.png')
                        )
                    ),
                  ),
                ),
                Expanded(child: DashChat(currentUser: _user, onSend: onSend, messages: messages)),
              ],
            ),
          ),
          bottomNavigationBar: Container(
            height: 7.5.h,
            width: double.infinity.h,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/Background.png'),
                    fit: BoxFit.cover)),
            child: NavigationBar(
              backgroundColor: Colors.transparent,
              selectedIndex: _currentIndex,
              onDestinationSelected: _onItemTapped,
              destinations: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0.5.h, 2.h, 0.h, 0.h),
                  child: NavigationDestination(
                    icon: Image(image: AssetImage('assets/images/Before_Home.png')),
                    label: '',
                    selectedIcon: Image(image: AssetImage('assets/images/AfterHome.png')),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.h, 2.h, 0.h, 0.h),
                  child: NavigationDestination(
                    icon: Image(image: AssetImage('assets/images/Before_Likes.png')),
                    label: '',
                    selectedIcon: Image(image: AssetImage('assets/images/After_Likes.png')),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.h, 2.h, 0.h, 0.h),
                  child: NavigationDestination(
                    icon: Image(image: AssetImage('assets/images/Before_Chat.png')),
                    selectedIcon: Image(image: AssetImage('assets/images/After_Chat.png')),
                    label: '',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.h, 2.h, 0.h, 0.5.h),
                  child: NavigationDestination(
                    icon: Image(image: AssetImage('assets/images/Before_Cart.png')),
                    selectedIcon: Image(image: AssetImage('assets/images/After_Cart.png')),
                    label: '',
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void onSend(ChatMessage message) async {
    setState(() {
      messages.insert(0, message);
    });

    var response = await _sendMessageToOpenAI(message.text);

    if (response != null) {
      setState(() {
        messages.insert(
            0,
            ChatMessage(
                text: response,
                user: _bot,
                createdAt: DateTime.now()));
      });
    }
  }

  Future<String?> _sendMessageToOpenAI(String message) async {
    var url = Uri.parse('https://api.openai.com/v1/chat/completions');
    var headers = {
      'Authorization': 'Bearer $_huggingFaceApiKey',
      'Content-Type': 'application/json'
    };

    var body = json.encode({
      "model": "gpt-3.5-turbo",
      "messages": [
        {"role": "user", "content": message},
      ],
    });

    try {
      var response = await http.post(url, headers: headers, body: body);
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        print('Response Data: $data');  // طباعة الاستجابة للتحقق منها
        return data['choices'][0]['message']['content'];
      } else {
        print('Error: ${response.statusCode}');
        return 'Sorry, there was an issue with the request.';
      }
    } catch (e) {
      print('Error: $e');
      return 'Sorry, something went wrong.';
    }
  }

}

