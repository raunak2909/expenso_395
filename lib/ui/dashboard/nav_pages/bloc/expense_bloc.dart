import 'package:expenso_395/data/local/repo/expense_repo.dart';
import 'package:expenso_395/ui/dashboard/nav_pages/bloc/expense_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/local/model/expense_model.dart';
import 'expense_state.dart';

class ExpenseBloc extends Bloc<ExpenseEvent, ExpenseState>{
  ExpenseRepository expenseRepository;
  ExpenseBloc({required this.expenseRepository}) : super(ExpenseInitialState()){
    
    on<AddExpenseEvent>((event, emit) async{
      
      emit(ExpenseLoadingState());
      
      bool check = await expenseRepository.addExpense(expense: event.newExp);
      
      if(check){
        List<ExpenseModel> allExp = await expenseRepository.fetchAllExpenses();
        emit(ExpenseLoadedState(allExp: allExp));
      } else {
        emit(ExpenseErrorState(errorMsg: "Something went wrong"));
      }
      
    });
    
    on<FetchAllExpenseEvent>((event, emit) async{
      emit(ExpenseLoadingState());
      
      List<ExpenseModel> allExp = await expenseRepository.fetchAllExpenses();
      
      emit(ExpenseLoadedState(allExp: allExp));
    });
    
  }
  
}