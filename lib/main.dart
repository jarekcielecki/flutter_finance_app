import 'package:flutter/material.dart';

import 'package:flutter_finance_app/widgets/user_transactions.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  // String titleInput;
  // String amountInput;

  final titleController = TextEditingController();
  final amountCountroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter App'),
        ),
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                color: Colors.red,
                child: Container(
                  width: double.infinity,
                  child: Text('Wykres'),
                ),
              ),
              UserTransactions()
            ],
          ),
        ));
  }
}
