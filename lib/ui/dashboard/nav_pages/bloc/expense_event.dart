import 'package:expenso_395/data/local/model/expense_model.dart';

abstract class ExpenseEvent{}

class AddExpenseEvent extends ExpenseEvent{
  ExpenseModel newExp;
  int filterType;
  AddExpenseEvent({required this.newExp, this.filterType=1});
}

class FetchAllExpenseEvent extends ExpenseEvent{
  int filterType;
  FetchAllExpenseEvent({this.filterType=1});
}