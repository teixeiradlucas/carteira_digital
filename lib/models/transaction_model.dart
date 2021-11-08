import 'package:flutter/foundation.dart';

class TransactionModel {
  final int id;
  final String bank;
  final String store;
  final double value;
  final String payment;
  final String date;

  TransactionModel({
    @required this.id,
    @required this.bank,
    @required this.store,
    @required this.value,
    @required this.payment,
    @required this.date,
  });
}


