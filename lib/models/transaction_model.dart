class TransactionModel {
  TransactionModel({
    required this.id,
    required this.bank,
    required this.store,
    required this.value,
    required this.payment,
    required this.date,
  });
  final int id;
  final String bank;
  final String store;
  final double value;
  final String payment;
  final String date;
}
