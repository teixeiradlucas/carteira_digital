import 'package:carteira_digital/constants.dart';
import 'package:carteira_digital/data/transaction_data.dart';
import 'package:flutter/material.dart';

class Transactions extends StatelessWidget {
  const Transactions({super.key});

  @override
  Widget build(BuildContext context) {
    final transactionData = TransactionData().transactions;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      height: 350,
      width: 350,
      child: ListView.builder(
        itemCount: transactionData.length,
        itemBuilder: (context, index) {
          return Card(
            color: primaryColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    () {
                      if (transactionData[index].bank == 'Nubank') {
                        return nubankLogo;
                      }
                      if (transactionData[index].bank == 'Sicoob') {
                        return sicoobLogo;
                      } else {
                        return nubankLogo2;
                      }
                    }(),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      transactionData[index].store,
                      style: const TextStyle(
                        fontFamily: 'LouisGeorgeCafe',
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      transactionData[index].date,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 17,
                  width: 80,
                  child: Text(
                    'R\$ ${transactionData[index].value.toStringAsFixed(2)}',
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
