import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NameTitle {
  String img, nicname, name, gen, bod, debut;
  Color bgcolor, avatarColor;

  NameTitle({
    required this.img,
    required this.nicname,
    required this.name,
    required this.gen,
    required this.bod,
    required this.debut,
    required this.bgcolor,
    required this.avatarColor,
  });
}

class WifeName {
  List<NameTitle> _wifeData = [
    NameTitle(
      img: 'botan',
      nicname: 'Botan',
      name: 'Shishiro Botan',
      gen: 'HOLOLIVE 5th GEN',
      bod: 'September 8',
      debut: 'August 14',
      bgcolor: Colors.grey,
      avatarColor: Colors.black38,
    ),
    NameTitle(
      img: 'kronii',
      nicname: 'Kronii',
      name: 'Ouro Kronii',
      gen: 'HOLO EN 2th GEN',
      bod: 'March 14',
      debut: 'August 23',
      bgcolor: Colors.blue,
      avatarColor: Color(0xFF0c218a),
    ),
    NameTitle(
      img: 'subaru',
      nicname: 'Subaru',
      name: 'Oozora Subaru',
      gen: 'HOLOLIVE 2th GEN',
      bod: 'July 2',
      debut: 'September 16',
      bgcolor: Color(0xFFf7ba00),
      avatarColor: Color(0xFFf5f527),
    ),
    NameTitle(
      img: 'reine',
      nicname: 'Reine',
      name: 'Pavolia Reine',
      gen: 'HOLO ID 2th GEN',
      bod: 'September 9',
      debut: 'December 6',
      bgcolor: Colors.lightBlueAccent,
      avatarColor: Color(0xFF27f2eb),
    ),
  ];

  String getImg(int num) {
    return _wifeData[num].img;
  }

  String getNicname(int num) {
    return _wifeData[num].nicname;
  }

  String getName(int num) {
    return _wifeData[num].name;
  }

  String getGen(int num) {
    return _wifeData[num].gen;
  }

  String getBod(int num) {
    return _wifeData[num].bod;
  }

  String getDebut(int num) {
    return _wifeData[num].debut;
  }

  Color getBgColor(int num) {
    return _wifeData[num].bgcolor;
  }

  Color getAvatarColor(int num) {
    return _wifeData[num].avatarColor;
  }

  int getLength() {
    return _wifeData.length;
  }
}
