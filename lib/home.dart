import 'package:contact_card/info.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'title.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

WifeName wifeName = WifeName();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFedfeff),
        appBar: KAppBar(),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('images/logo.png'),
                    height: 70,
                    width: 70,
                  ),
                  KTextFront(
                    title: 'HOLOLIVE WAIFU',
                    tstyle: kTextLogo,
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    for (int i = 0; i < wifeName.getLength(); i++)
                      KCardHome(
                        num: i,
                        onPressed: () {
                          Navigator.pushNamed(context, InfoScreen.id,
                              arguments: Arguments(i));
                        },
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Arguments {
  final int num;

  Arguments(this.num);
}
