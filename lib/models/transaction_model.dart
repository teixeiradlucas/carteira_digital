import 'package:flutter/foundation.dart';

class TransactionModel {
  final int id;
  final String banco;
  final String loja;
  final double valor;
  final String pagamento;
  final String data;


  TransactionModel({
    @required this.id,
    @required this.banco,
    @required this.loja,
    @required this.valor,
    @required this.pagamento,
    @required this.data,

  });
}
