import 'package:flutter/material.dart';
import '../constants.dart';

class NuCard extends StatelessWidget {
  double widthcard;
  double heightcard;
  NuCard({
    @required this.widthcard,
    @required this.heightcard,
  });

  @override
  Widget build(BuildContext context) {
    final _sizewidth = MediaQuery.of(context).size.width;
    print(_sizewidth);
    return Container(
      width: widthcard,
      height: heightcard,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.blue,
        gradient: LinearGradient(
          colors: [cardColor.withOpacity(0.7), cardColor],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 7,
            width: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                mastercardLogo,
                height: 50,
                width: 50,
              ),
              SizedBox(
                height: 30,
                width: 30,
              ),
            ],
          ),
          SizedBox(
            height: 25,
            width: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '**** **** **** 8055',
                style: TextStyle(
                    fontFamily: 'LouisGeorgeCafe',
                    color: Colors.white,
                    fontSize: 18),
              ),
            ],
          ),
          SizedBox(
            height: 10,
            width: 10,
          ),
          Row(
            children: [
              SizedBox(
                height: 30,
                width: 30,
              ),
              Image.asset(
                nubankLogo,
                height: 65,
                width: 65,
              ),
              SizedBox(
                height: 10,
                width: 10,
              ),
              Text(
                'LUCAS F TEIXEIRA',
                style: TextStyle(
                  fontFamily: 'LouisGeorgeCafe',
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
