import 'package:expenditure/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return  Container(
              height: 300,
              child: ListView.builder(
                itemBuilder: (ctx, index ){
                  return Card(
                    child: Row(children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).primaryColor,
                            width: 2,
                          ),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Text(
                          '\$${transactions[index].amount.toStringAsFixed(2)}',
                          style: Theme.of(context).textTheme.title,
                          // TextStyle(
                          //   fontWeight: FontWeight.bold,
                          //   fontSize: 20,
                          //   color: Colors.purple[500],
                          // ),
                        ),
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              transactions[index].title,
                             ),
                            Text(
                              // tx.date.toString(),
                              DateFormat().format(transactions[index].date),
                            )
                          ])
                    ]),
                  );
                },
                itemCount: transactions.length,

                // children: transactions.map((tx) {
                  
                // }).toList(),
              ),
      );
  }
}