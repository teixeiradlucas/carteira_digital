import 'package:flutter/material.dart';
import '../constants.dart';

class SicoobCard extends StatelessWidget {
  double widthcard;
  double heightcard;
  SicoobCard({
    @required this.widthcard,
    @required this.heightcard,
  });

  @override
  Widget build(BuildContext context) {
    final _sizewidth = MediaQuery.of(context).size.width;
    print(_sizewidth);
    return Row(
      children: [
        SizedBox(
          height: 10,
          width: 10,
        ),
        Container(
          width: widthcard,
          height: heightcard,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.blue,
            gradient: LinearGradient(
              colors: [sicoobColor.withOpacity(0.5), sicoobColor],
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
                    sicoobLogo,
                    height: 65,
                    width: 65,
                  ),
                  SizedBox(
                    height: 30,
                    width: 30,
                  ),
                ],
              ),
              SizedBox(
                height: 18,
                width: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '**** **** **** 8512',
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
                    height: 10,
                    width: 105,
                  ),
                  Text(
                    'LUCAS F TEIXEIRA',
                    style: TextStyle(
                      fontFamily: 'LouisGeorgeCafe',
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                    width: 25,
                  ),
                  Image.asset(
                    mastercardLogo,
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
            ],
          ),
        ),
        //SizedBox(height: 10,width: 10,),
      ],
    );
  }
}
