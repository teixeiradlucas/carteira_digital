import 'package:carteira_digital/constants.dart';
import 'package:flutter/material.dart';

class NuCard extends StatelessWidget {
  const NuCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 320,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.blue,
          gradient: LinearGradient(
            colors: [nuColor.withOpacity(0.7), nuColor],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
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
                const SizedBox(
                  height: 30,
                  width: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 25,
              width: 25,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '**** **** **** 8055',
                  style: TextStyle(
                    fontFamily: 'LouisGeorgeCafe',
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
              width: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  height: 30,
                  width: 30,
                ),
                Image.asset(
                  nubankLogo,
                  height: 65,
                  width: 65,
                ),
                const SizedBox(
                  height: 10,
                  width: 10,
                ),
                const Text(
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
      ),
    );
  }
}
