import 'package:flutter/material.dart';
import 'package:my_transaction/Transaction.dart';

import './Transaction.dart';
void main(){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final List<Transaction> transaction = [
    Transaction(
      Id: 'Item 1',
      Title: 'Apple',
      Amount: 300.0,
      Date: DateTime.now(),
    ),
    Transaction(
      Id: 'Item 2',
      Title: 'Mango',
      Amount: 400.0,
      Date: DateTime.now(),
    ),
    Transaction(
      Id: 'Item 3',
      Title: 'Pizza',
      Amount: 240.0,
      Date: DateTime.now(),
    ),
    Transaction(
      Id: 'Item 4',
      Title: 'Burger',
      Amount: 120.0,
      Date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Daily Expenses'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.lightBlue,
                child: Center(
                  child: Text(
                    'CHART',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Center(
                  child: Container(
                    color: Colors.lightBlue[800],
                    padding: EdgeInsets.all(10),
                    child: Text('Transaction',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ...transaction.map((all){
                  return Container(
                    //child: Text(all.Date.toString()),
                    child: Card(
                      color: Colors.lightBlue[200],
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Center(
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(all.Id),
                              SizedBox(
                                width: 20,
                              ),
                              Text(all.Title),
                              SizedBox(
                                width: 20,
                              ),
                              Text(all.Amount.toString()),
                              SizedBox(
                                width: 20,
                              ),
                              Text(all.Date.toString()),
                          ],
                          ),
                        ),
                      ),
                    ),
                    
                  );
                }).toList(),
                // Card(
                //   child: Row(
                //     mainA
                //   )
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}