import 'package:carteira_digital/models/bank_model.dart';
import 'package:carteira_digital/models/transaction_model.dart';

class TransactionRepository {
  List<Bank> banks = [
    Bank(
      idBank: 1,
      nameBank: "Nubank",
      imageBank: "assets/images/nubank_logo_branca.png",
      transactions: [
        TransactionModel(
          id: 1,
          banco: "Nubank",
          loja: "Magazine Luiza",
          valor: 250.00,
          pagamento: "credito",
          data: "02/09/2021",
        ),
        TransactionModel(
          id: 2,
          banco: "Nubank",
          loja: "Amazon",
          valor: 1200.00,
          pagamento: "credito",
          data: "09/10/2021",
        ),
        TransactionModel(
          id: 3,
          banco: "Nubank",
          loja: "Amazon",
          valor: 820.00,
          pagamento: "credito",
          data: "11/10/2021",
        ),
      ],
    ),
    Bank(
      idBank: 2,
      nameBank: "Sicoob",
      imageBank: "assets/images/nubank_logo_branca.png",
      transactions: [
        TransactionModel(
          id: 1,
          banco: "Sicoob",
          loja: "Pizzaria Capitolio",
          valor: 55.99,
          pagamento: "debito",
          data: "11/09/2021",
        ),
        TransactionModel(
          id: 2,
          banco: "Sicoob",
          loja: "Casa de Carnes",
          valor: 200.00,
          pagamento: "credito",
          data: "20/10/2021",
        ),
        TransactionModel(
          id: 3,
          banco: "Sicoob",
          loja: "Aliexpress",
          valor: 250.00,
          pagamento: "credito",
          data: "21/10/2021",
        ),
        TransactionModel(
          id: 4,
          banco: "Sicoob",
          loja: "Bike e Aventura",
          valor: 30.00,
          pagamento: "debito",
          data: "21/10/2021",
        ),
      ],
    ),
  ];

}
