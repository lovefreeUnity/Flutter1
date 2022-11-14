import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:study/button/round_active_button.dart';
import 'package:study/button/round_subActive_button.dart';
import 'package:study/modal/custom_popup.dart';
import 'package:study/modal/function.dart';

import 'button/full_button.dart';

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
            primarySwatch: Colors.lightBlue,
            disabledColor: Colors.grey,
            backgroundColor: Colors.white,
            dialogBackgroundColor: Colors.white,
            snackBarTheme: const SnackBarThemeData(
              backgroundColor: Color(0xFF545454),
              contentTextStyle: TextStyle(color: Color(0xFFFFFFFF),fontSize: 16,fontWeight: FontWeight.w400),
              disabledActionTextColor: Color(0xFF545454),
            )
            // dialogTheme: const DialogTheme(
            //     shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.all(Radius.circular(16)))),
            ),
        home: MainApp());
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
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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

            RoundButton(
              onClick: () {
                ShowPopup.customPopup(
                    context: context,
                    title: Text("test"),
                    content: Container(),
                    footer: Default(
                      leftButton: "left",
                      rightButton: "right",
                      leftClick: () {
                        print("leftClick");
                      },
                      rightClick: () {
                        print("right Click");
                      },
                    ));
              },
            ),
            SizedBox(height: 20),
            RoundSubActivityButton(
              onClick: () {
                ShowPopup.defaultPopup(
                  context: context,
                  title: "title",
                  content: "content",
                  leftButton: "leftButton",
                  rightButton: "rightButton",
                  leftClick: () {},
                  rightClick: () {},
                );
              },
            ),
            SizedBox(height: 20),
            RoundButton(
              onClick: () {
                print("object");
                ShowPopup.horizontal1Popup(
                  context: context,
                  title: "title",
                  content: "lkjgyu",
                  button: "button",
                  buttonClick: () {},
                );
              },
            ),
            SizedBox(height: 20),
            FullButton(
              onTap: () {
                Toast.showToast(
                    context: context
                );
              },
            )
            // FullButton(onTap: () {
            //   ShowPopup.horizontal2Popup(
            //     context: context,
            //     title: "title",
            //     content: "sdfg",
            //     topButton: "topButton",
            //     bottomButton: "bottomButton",
            //     topClick: () {},
            //     bottomClick: () {},
            //   );
            // })
          ]),
        ),
      ),
    );
  }
}
