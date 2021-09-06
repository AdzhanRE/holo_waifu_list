import 'package:contact_card/home.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'title.dart';

WifeName wifeName = WifeName();

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);
  static const String id = 'info_screen';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Arguments;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: wifeName.getBgColor(args.num),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundColor: wifeName.getAvatarColor(args.num),
                backgroundImage:
                    AssetImage('images/i' + wifeName.getImg(args.num) + '.png'),
              ),
              KTextFront(
                title: wifeName.getName(args.num),
                tstyle: kTextName,
              ),
              KTextFront(
                title: wifeName.getGen(args.num),
                tstyle: kTextGen,
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.black,
                  thickness: 1,
                ),
              ),
              KCardInfo(
                title: wifeName.getBod(args.num),
                iconName: Icons.cake_outlined,
              ),
              KCardInfo(
                title: wifeName.getDebut(args.num),
                iconName: Icons.star_border_sharp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
