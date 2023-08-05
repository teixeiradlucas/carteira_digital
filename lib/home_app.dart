import 'package:carteira_digital/components/nu_card.dart';
import 'package:carteira_digital/components/sicoob_card.dart';
import 'package:carteira_digital/components/transactions.dart';
import 'package:flutter/material.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  late PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
            width: 200,
          ),
          SizedBox(
            width: 400,
            height: 250,
            child: PageView(
              controller: _pageController,
              children: const [
                NuCard(),
                SicoobCard(),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
            width: 200,
          ),
          const Transactions(),
        ],
      ),
    );
  }
}
