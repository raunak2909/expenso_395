import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<Map<String, dynamic>> expenses = [
    {
      'icon': Icons.phone,
      'title': 'Electronic',
      'subtitle': 'Buy new iphone 14',
      'amount':1290,
      "color":Colors.orangeAccent.withOpacity(.2)
    },
    {
      'icon': Icons.shopping_cart,
      'title': 'Shop',
      'subtitle': 'Buy new clothes',
      'amount':90,
      "color":Colors.blue.withOpacity(.2)
    },
  ];
  final List<Map<String,dynamic>>expensesList=[
    {
      'icon': Icons.car_crash_outlined,
      'title': 'Transportation',
      'subtitle': 'trip to Malang',
      'amount':60,
      "color":Colors.redAccent.withOpacity(.2)
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            // Row with logo
            Row(
              children: [
                Image.asset(
                  "assets/images/logo-transparent.png",
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 8), // optional spacing
                const Text(
                  "Monety",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontFamily: "Bold",
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1.2,
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.search,
                  size: 35,
                ),
              ],
            ),
            const SizedBox(height: 10),
            // ListTile with aligned profile image
            ListTile(
              contentPadding: const EdgeInsets.only(left: 0, right: 0),
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.yellow,
                child: Image.asset(
                  "assets/images/pers.png",
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                ),
              ),
              title: const Text(
                "James",
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: "Regular",
                  color: Colors.grey,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: const Text(
                "Vashundra Vihar colony",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Regular",
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
              trailing: Container(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.blueAccent.withOpacity(.2),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      "This month",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: "Regular",
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Card(
                  elevation: 3,
                  // shape: RoundedRectangleBorder(),
                  child: Container(
                    height:180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      gradient: const LinearGradient(
                        colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Padding(padding: EdgeInsets.only(left: 20,top: 20,bottom: 20),

                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Expense total",style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontFamily: "Regular"
                        ),),
                        SizedBox(height: 10,),
                        Text("\$3,734",style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontFamily: "Bold",
                            fontWeight: FontWeight.normal,
                            letterSpacing: 2
                        ),),
                        SizedBox(height: 10,),

                        Row(
                          children: [
                            Container(
                              padding:EdgeInsets.symmetric(horizontal: 5,vertical: 3),
                              decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: Colors.deepOrange
                              ),
                              child:  Text("+\$240",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontFamily: "Regular"
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Text("than last month",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontFamily: "Regular"
                              ),
                            ),
                          ],
                        )
                      ],
                    ),)
                  ),
                ),
                Positioned(
                    right: 0,
                    top: 35,
                    child: Image.asset("assets/images/expense.png",
                      width: 190,
                      fit: BoxFit.cover,))
              ],
            ),
            SizedBox(height: 20,),
            Text("Expense List",
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontFamily: "Regular",
                fontWeight: FontWeight.w900
              ),
            ),
            SizedBox(height: 10,),
            Container(
              // margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignInside, // Needs Flutter 3.10+
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Tuesday, 14",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        "-\$1380",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  const Divider(thickness: 1.5, height: 20),
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: expenses.length,
                    itemBuilder: (context, index) {
                      final expense = expenses[index];
                      return ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color:expense["color"],
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Icon(expense['icon'], color: Colors.blue),
                        ),
                        title: Text(expense['title'],  style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),),
                        subtitle: Text(expense['subtitle'],  style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),),
                        trailing: Text("-\$${expense['amount']}",  style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),),
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              // margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignInside, // Needs Flutter 3.10+
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Monday, 13",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        "-\$60",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  const Divider(thickness: 1.5, height: 20),
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: expensesList.length,
                    itemBuilder: (context, index) {
                      final expenseList = expensesList[index];
                      return ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color:expenseList["color"],
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Icon(expenseList['icon'], color: Colors.blue),
                        ),
                        title: Text(expenseList['title'],  style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),),
                        subtitle: Text(expenseList['subtitle'],  style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),),
                        trailing: Text("-\$${expenseList['amount']}",  style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),),
                      );
                    },
                  ),
                ],
              ),
            ),





          ],
        ),
      ),
    );
  }
}
