import 'package:flutter/material.dart';
import 'package:webview_app/Screens/home_screen.dart';

void main(){
  // 플러터 프레임워크가 실행할 준비가 될 때까지 기다림
  // state less 위치에서 컨트롤러를 쓰기 때문에 직접 이 코드를 추가해야 함
  WidgetsFlutterBinding.ensureInitialized(); 

  runApp( // 원래라면 이 위치에서 7번줄을 자동실행
    MaterialApp(
      home : HomeScreen(),
    ),
  );
}

