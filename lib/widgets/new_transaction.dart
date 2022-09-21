import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Tytuł'),
              controller: titleController,
              //onChanged: (val) {
              // titleInput = val;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Kwota'),
              controller: amountController,
              // onChanged: (val) => amountInput = val,
            ),
            TextButton(
              child: Text('Dodaj Tranzakcję'),
              onPressed: () {
                addTx(titleController.text, double.parse(amountController.text));
              },
            ),
          ],
        ),
      ),
    );
  }
}
