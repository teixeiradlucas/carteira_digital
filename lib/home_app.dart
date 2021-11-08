import 'package:carteira_digital/components/transactions.dart';
import 'package:flutter/material.dart';
import 'components/nu_card.dart';

class HomeApp extends StatelessWidget {
  @override
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
        NuCard(
          widthcard: _sizewidth * 0.85,
          heightcard: _sizewidth * 0.49,
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
