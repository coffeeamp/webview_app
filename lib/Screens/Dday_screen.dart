import 'package:flutter/cupertino.dart';
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
        padding: EdgeInsets.fromLTRB(10, 70, 10, 0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              _TopPart(),
              _BottomPart(),
            ],
          )
        ),
      )
    );
  }
}

class _TopPart extends StatelessWidget {
  const _TopPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Social-Agent',
                  style: TextStyle(
                    fontSize: 60,
                    fontFamily: 'Parisienne',
                    color: Colors.white,
                  ),
                ),
                Column(
                  children: [
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
                  ],
                ),
                IconButton(
                  iconSize: 60,
                  onPressed: (){
                    // dialog
                    showCupertinoDialog(
                      context: context,
                      barrierDismissible: true,
                      builder: (BuildContext context) {
                        return Align( // 정렬위젯
                          alignment: Alignment.bottomCenter, // 아래쪽 중앙정렬
                          child: Container(
                              color: Colors.white,
                              height: 300,
                              child: CupertinoDatePicker(
                                mode: CupertinoDatePickerMode.date, //  날짜만 보면 됨
                                onDateTimeChanged: (DateTime data) {
                                  
                                },
                              ),
                          ),
                        );
                      },
                    );
                  },
                  icon: Icon(
                    Icons.support_agent,
                    color: Colors.blue[900],
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
    );
  }
}

class _BottomPart extends StatelessWidget {
  const _BottomPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset(
                  'asset/img/middle_image.png'
                ),
    );
  }
}