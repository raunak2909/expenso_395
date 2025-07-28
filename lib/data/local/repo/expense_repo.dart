import 'package:expenso_395/data/local/helper/db_helper.dart';

import '../model/expense_model.dart';

class ExpenseRepository{
  DBHelper dbHelper;
  ExpenseRepository({required this.dbHelper});

  Future<bool> addExpense({required ExpenseModel expense}) async{
    return await dbHelper.addExpense(expense: expense);
  }

  Future<List<ExpenseModel>> fetchAllExpenses() async{
    return await dbHelper.fetchAllExpenses();
  }

  ///update
  ///delete


}