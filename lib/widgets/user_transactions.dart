// import 'package:flutter/material.dart';

// import './new_transaction.dart';
// import './transaction_list.dart';
// import '../models/transaction.dart';

// class UserTransactions extends StatefulWidget {
//   @override
//   _UserTransactionsState createState() => _UserTransactionsState();
// }

// class _UserTransactionsState extends State<UserTransactions> {
//   @override
//     final List<Transaction> _userTransaction = [
//         Transaction(
//         id: 't1', 
//         title: 'New Shoes', 
//         amount: 78.9, 
//         date: DateTime.now()),
//     Transaction(
//         id: 't2', 
//         title: 'Weekly grocery', 
//         amount: 18.9, 
//         date: DateTime.now()),
//   ];

//   void _addNewTransaction(String txTitle, double txAmount) {
//     final newTx = Transaction(
//       title: txTitle,
//       amount: txAmount,
//       date: DateTime.now(),
//       id:DateTime.now().toString(),
//     );

//     setState(() {
//       _userTransaction.add(newTx);
//     });

    
//   }

//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         NewTransaction(_addNewTransaction),
        
//       ],
      
//     );
//   }
// }
