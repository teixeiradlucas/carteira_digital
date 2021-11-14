import 'package:carteira_digital/constants.dart';
import 'package:carteira_digital/data/transaction_data.dart';
import '../constants.dart';
import 'package:flutter/material.dart';

class Transactions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TransactionData transactionData = TransactionData();
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      height: 380,
      width: 350,
      child: ListView.builder(
        itemCount: transactionData.transactions.length,
        itemBuilder: (context, index) {
          return Card(
            color: primaryColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  child: Image.asset(() {
                    if (transactionData.transactions[index].bank == "Nubank") {
                      return nubankLogo;
                    }
                    if (transactionData.transactions[index].bank == "Sicoob") {
                      return sicoobLogo;
                    } else {
                      return nubankLogo2;
                    }
                  }()),
                ),
                Column(
                  children: [
                    Text(
                      transactionData.transactions[index].store,
                      style: TextStyle(
                        fontFamily: "LouisGeorgeCafe",
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      transactionData.transactions[index].date,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Container(
                  height: 17,
                  width: 80,
                  child: Text(
                    "R\$ ${transactionData.transactions[index].value.toStringAsFixed(2)}",
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
