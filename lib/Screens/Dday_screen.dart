import 'package:flutter/material.dart';
import 'package:webview_app/Screens/Dday_screen.dart';
import 'package:webview_app/Screens/home_screen.dart';

class DdayScreen extends StatefulWidget {
  const DdayScreen({super.key});

  @override
  State<DdayScreen> createState() => _DdayScreenState();
}

class _DdayScreenState extends State<DdayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 90, 145, 247),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 70, 10, 10),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Text(
                'Social-Agent',
                style: TextStyle(
                  fontSize: 60,
                  fontFamily: 'Parisienne',
                  color: Colors.white,
                ),
              ),
              Text(
                '소집일',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'sunflower',
                  color: Colors.white,
                ),
              ),
              Text(
                '2022.09.26',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'sunflower',
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.support_agent,
                  ),
                ),
              Text(
                'D+1',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'sunflower',
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}