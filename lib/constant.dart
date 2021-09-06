import 'package:flutter/material.dart';
import 'title.dart';

WifeName wifeName = WifeName();

const kTextLogo = TextStyle(
  fontFamily: 'Amaranth',
  fontSize: 30,
  color: Colors.lightBlue,
  letterSpacing: 1,
  fontWeight: FontWeight.bold,
);

const kTextHome = TextStyle(
  fontFamily: 'Allison',
  fontSize: 40,
  color: Colors.black87,
  letterSpacing: 5,
  fontWeight: FontWeight.bold,
);

const kTextName = TextStyle(
  fontFamily: 'Allison',
  fontSize: 40,
  color: Colors.black,
  fontWeight: FontWeight.bold,
);

const kTextGen = TextStyle(
  fontFamily: 'DancingScript',
  fontSize: 20,
  color: Colors.black87,
  fontWeight: FontWeight.bold,
);

class KAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('My Hololive Wife'),
      backgroundColor: Colors.blueAccent,
    );
  }
}

class KTextFront extends StatelessWidget {
  KTextFront({
    required this.title,
    required this.tstyle,
  });

  final String title;
  final TextStyle tstyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: tstyle,
    );
  }
}

class KCardInfo extends StatelessWidget {
  KCardInfo({required this.title, required this.iconName});

  final String title;
  final IconData iconName;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 70),
      child: ListTile(
        leading: Icon(
          iconName,
          color: Colors.black54,
        ),
        title: Text(
          title,
          style: TextStyle(
            color: Colors.black87,
            fontFamily: 'SourceSansPro',
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class KCardHome extends StatelessWidget {
  KCardHome({required this.num, required this.onPressed});

  final int num;
  final VoidCallback onPressed; //tuko function kps voidcalback

  @override
  Widget build(BuildContext context) {
    return Card(
      child: FlatButton(
        minWidth: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: Column(
          children: [
            Image(
              image: AssetImage('images/f' + wifeName.getImg(num) + '.png'),
              height: 120,
              width: 120,
            ),
            KTextFront(
              title: wifeName.getNicname(num),
              tstyle: kTextHome,
            ),
          ],
        ),
        onPressed: onPressed,
      ),
    );
  }
}
