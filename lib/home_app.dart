import 'package:carteira_digital/components/transactions.dart';
import 'package:flutter/material.dart';
import 'components/nu_card.dart';
import 'components/sicoob_card.dart';

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0
    );
    super.initState();
  }


  Widget build(BuildContext context) {
    final _sizewidth = MediaQuery.of(context).size.width;
    print(_sizewidth);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 20,
          width: _sizewidth,
        ),
        Container(
          height: _sizewidth * 0.50,
          width: _sizewidth * 0.90,
          child: PageView(

            controller: _pageController,
            children: [
              NuCard(
                widthcard: _sizewidth * 0.85,
                heightcard: _sizewidth * 0.49,
              ),
              SicoobCard(
                widthcard: _sizewidth * 0.85,
                heightcard: _sizewidth * 0.49,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
          width: _sizewidth,
        ),
        Transactions(),
      ],
    );
  }
}
