import 'package:expenso_395/utils/ui_helper.dart';
import 'package:flutter/material.dart';

class AddExpensePage extends StatelessWidget {
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController amtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Expense")),
      body: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Column(
          children: [
            ///title
            TextField(
              controller: titleController,
              decoration: UIHelper.getMyTextFieldDecoration(
                labelTxt: "Title",
                hintTxt: "Enter your title here..",
                prefixIcon: Icons.title,
              ),
            ),
            SizedBox(height: 11),

            ///description
            TextField(
              controller: titleController,
              decoration: UIHelper.getMyTextFieldDecoration(
                labelTxt: "Description",
                hintTxt: "Enter your description here..",
                prefixIcon: Icons.description,
              ),
            ),
            SizedBox(height: 11),

            ///amount
            TextField(
              controller: titleController,
              decoration: UIHelper.getMyTextFieldDecoration(
                labelTxt: "Amount",
                hintTxt: "Enter your amount here..",
                prefixIcon: Icons.money,
              )
            ),
            SizedBox(height: 11),

            ///category
            ///date
            ///type
          ],
        ),
      ),
    );
  }
}
