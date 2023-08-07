import 'package:carteira_digital/models/transaction_model.dart';

class TransactionData {
  List<TransactionModel> transactions = [
    TransactionModel(
      id: 1,
      bank: 'Nubank',
      store: 'Magazine Luiza',
      value: 250.20,
      payment: 'credito',
      date: '02/09/2021',
    ),
    TransactionModel(
      id: 4,
      bank: 'Sicoob',
      store: 'Bike e Aventura',
      value: 30.50,
      payment: 'debito',
      date: '11/09/2021',
    ),
    TransactionModel(
      id: 1,
      bank: 'Sicoob',
      store: 'Pizzaria Capitolio',
      value: 55.99,
      payment: 'debito',
      date: '11/09/2021',
    ),
    TransactionModel(
      id: 3,
      bank: 'Nubank',
      store: 'Amazon',
      value: 820.99,
      payment: 'credito',
      date: '11/10/2021',
    ),
    TransactionModel(
      id: 2,
      bank: 'Sicoob',
      store: 'Casa de Carnes',
      value: 200,
      payment: 'credito',
      date: '20/10/2021',
    ),
    TransactionModel(
      id: 3,
      bank: 'Sicoob',
      store: 'Aliexpress',
      value: 250,
      payment: 'credito',
      date: '21/10/2021',
    ),
    TransactionModel(
      id: 2,
      bank: 'Nubank',
      store: 'Amazon',
      value: 1200.99,
      payment: 'credito',
      date: '30/10/2021',
    ),
  ];
}
