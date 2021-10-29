import 'package:flutter/foundation.dart';

class Bank {
  final String nameBank;
  final String imageBank;
  final int idBank;
  final List transactions;
  Bank({
    @required this.transactions, 
    @required this.nameBank,
    @required this.imageBank,
    @required this.idBank,
  });
}
