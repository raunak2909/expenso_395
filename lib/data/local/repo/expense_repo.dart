import 'package:expenso_395/data/local/helper/db_helper.dart';
import 'package:expenso_395/data/local/model/filter_expense_model.dart';
import 'package:intl/intl.dart';

import '../model/expense_model.dart';

class ExpenseRepository {
  DBHelper dbHelper;

  ExpenseRepository({required this.dbHelper});

  Future<bool> addExpense({required ExpenseModel expense}) async {
    return await dbHelper.addExpense(expense: expense);
  }

  Future<List<FilteredExpenseModel>> fetchAllExpenses() async {
    List<ExpenseModel> allExp = await dbHelper.fetchAllExpenses();
    return filterExpenses(allExp: allExp);
  }

  List<FilteredExpenseModel> filterExpenses({
    required List<ExpenseModel> allExp,
  }) {
    DateFormat df = DateFormat.yMMMEd();
    List<FilteredExpenseModel> mFilteredExp = [];

    ///filtering
    ///date wise

    ///unique dates
    ///1
    List<String> uniqueDates = [];
    for (ExpenseModel eachExp in allExp) {
      String eachDate = df.format(
        DateTime.fromMillisecondsSinceEpoch(int.parse(eachExp.createdAt)),
      );

      if(!uniqueDates.contains(eachDate)){
        uniqueDates.add(eachDate);
      }
    }

    ///filter by date
    for(String eachDate in uniqueDates){
      num allAmt = 0;
      List<ExpenseModel> totalExpList = [];


      for(ExpenseModel eachExp in allExp){
        print("eachExpAmt: ${eachExp.amount}");
        String eachExpDate = df.format(
          DateTime.fromMillisecondsSinceEpoch(int.parse(eachExp.createdAt)),
        );

        if(eachExpDate==eachDate){
          totalExpList.add(eachExp);

          if(eachExp.expenseType==1){
            allAmt -= eachExp.amount;
          } else {
            allAmt += eachExp.amount;
          }
        }



      }

      mFilteredExp.add(FilteredExpenseModel(
          title: eachDate, totalAmt: allAmt, expList: totalExpList));
    }


    return mFilteredExp;
  }

  ///update
  ///delete
}
