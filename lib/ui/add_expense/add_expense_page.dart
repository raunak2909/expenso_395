import 'package:expenso_395/app_constants.dart';
import 'package:expenso_395/data/local/model/cat_model.dart';
import 'package:expenso_395/utils/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddExpensePage extends StatelessWidget {
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController amtController = TextEditingController();

  int selectedCatIndex = -1;
  DateTime? selectedDate;
  DateFormat dateFormat = DateFormat.yMMMEd();
  List<String> expType = ["Debit", "Credit"];
  String selectedExpType = "Debit";

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
              ),
            ),
            SizedBox(height: 11),

            StatefulBuilder(
              builder: (context, ss) {
                return OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    maximumSize: Size(double.infinity, 55),
                    minimumSize: Size(double.infinity, 55),
                    side: BorderSide(color: Colors.purple, width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (_) {
                        return Container(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: GridView.builder(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                            ),
                            itemCount: AppConstants.mCategories.length,
                            itemBuilder: (_, index){

                              CategoryModel eachCat = AppConstants.mCategories[index];

                              return InkWell(
                                onTap: (){
                                  selectedCatIndex = index;
                                  ss((){});
                                  Navigator.pop(context);
                                },
                                child: Column(
                                  children: [
                                    Image.asset(eachCat.imgPath, width: 50, height: 50,),
                                    SizedBox(
                                      height: 11,
                                    ),
                                    Text(eachCat.name),
                                  ],
                                ),
                              );
                            },
                          ),
                        );
                      },
                    );
                  },
                  child: selectedCatIndex>=0 ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(AppConstants.mCategories[selectedCatIndex].imgPath),
                      ),
                      Text(" - ${AppConstants.mCategories[selectedCatIndex].name}")
                    ],
                  ) : Text("Choose Category"),
                );
              }
            ),

            SizedBox(height: 11),

            StatefulBuilder(
                builder: (context, ss) {
                  return OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      maximumSize: Size(double.infinity, 55),
                      minimumSize: Size(double.infinity, 55),
                      side: BorderSide(color: Colors.purple, width: 2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () async{

                     selectedDate = await showDatePicker(context: context, firstDate: DateTime.now().subtract(Duration(days: 366)), lastDate: DateTime.now());
                     ss((){});

                    },
                    child: Text(dateFormat.format(selectedDate ?? DateTime.now())),
                  );
                }
            ),

            SizedBox(height: 11),

            StatefulBuilder(
              builder: (context, ss) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: expType.map((e){
                    return RadioMenuButton(
                        value: e,
                        groupValue: selectedExpType,
                        onChanged: (value){
                          selectedExpType = value!;
                          ss((){});
                        },
                        child: Text(e));
                  }).toList()
                );
              }
            ),

            DropdownMenu(
              initialSelection: selectedExpType,
                dropdownMenuEntries: expType.map((e){
              return DropdownMenuEntry(value: e, label: e);
            }).toList()),

            StatefulBuilder(
              builder: (context, ss) {
                return DropdownButton(
                  value: selectedExpType,
                    items: expType.map((e){
                  return DropdownMenuItem(value: e,child: Text(e),);
                }).toList(), onChanged: (value){
                  selectedExpType = value ?? "Debit";
                  ss((){});
                });
              }
            )

            ///category
            ///date
            ///type
          ],
        ),
      ),
    );
  }
}
