import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:study/button/full_button.dart';
import 'package:study/button/round_active_button.dart';
import 'package:study/button/round_subActive_button.dart';
import 'package:study/modal/popup.dart';
import 'package:study/modal/popup2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          brightness: Brightness.dark,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.green,
        disabledColor: Colors.grey,
        backgroundColor: Colors.white,
        dialogBackgroundColor: Colors.white,

        // dialogTheme: const DialogTheme(
        //     shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.all(Radius.circular(16)))),
      ),
      home: MainApp()
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child:
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            // Row(
            //   children: [
            //     Container(
            //       width:70,
            //       child: const RoundButton(),
            //     ),
            //     const Expanded(
            //     flex: 2,
            //     child: RoundButton(),
            //   ),const Expanded(child: RoundButton(),)],
            // ),
            // const SizedBox(
            //   height: 30,
            // ),
            // FullButton(),
            // const SizedBox(height: 10),
            // RoundButton(),
            // const SizedBox(height: 10),
            //
            widgetPopup(
              widget: Expanded(
                child: Text("20"),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

