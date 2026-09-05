import 'package:flutter/material.dart';
import 'package:mfs_chrage/custom%20widget/app_text.dart';

import '../../mfs data/mfs_data.dart';
import '../Home/widget/amount_section.dart';

class CashOutPage extends StatefulWidget {
  const CashOutPage({
    super.key,
    required this.mfsName,
  });

  final String mfsName;

  @override
  State<CashOutPage> createState() => _CashOutPageState();
}

class _CashOutPageState extends State<CashOutPage> {
  TextEditingController amountController= TextEditingController();
  String ? selectedMethod;
  double amount = 0;
  double charge = 0;
  double total = 0;
  double rate = 0;
  void calculateCharge() {
    if (selectedMethod == null) {
      setState(() {

      });
      return;
    }

    amount = double.tryParse(
      amountController.text.trim(),
    ) ?? 0;


    if (selectedMethod != null) {
      rate = mfsData[widget.mfsName]?["cashOut"]![selectedMethod]! ?? 0;
    }

    charge = (amount / 100) * rate;

    total = amount + charge;

    setState(() {});
  }
  @override
  void dispose() {
    amountController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: DropdownMenu(
              hintText: "Cash Out Method",
              textStyle: TextStyle(fontWeight: FontWeight.bold),
              width: 250,
              inputDecorationTheme: InputDecorationTheme(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                ),
              ),
              onSelected: (value) {
                setState(() {
                  selectedMethod = value;
                });
                calculateCharge();
              },
              menuStyle: MenuStyle(

                backgroundColor: WidgetStatePropertyAll(Colors.white),
                elevation: WidgetStatePropertyAll(5),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              dropdownMenuEntries: [
                DropdownMenuEntry(
                  value: "agent",
                  label: "Agent",
                ),
                DropdownMenuEntry(
                  value: "priyo",
                  label: "Priyo",
                ),
                DropdownMenuEntry(
                  value: "atm",
                  label: "ATM",
                ),
              ],

            ),
          ),
          SizedBox(height: 10),
          TextField(
            keyboardType: TextInputType.number,
            onChanged: (value) {
              calculateCharge();
            },
            controller: amountController,
            decoration: InputDecoration(
              hintText: "৳ Amount",
              hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              fillColor: Colors.grey.shade200,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: AppText(
              text: "Cashout Rate :৳ $rate %",
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10,),
          SizedBox(height: 35, child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              AmountSection(onTab: () {
                amountController.text = "1,000";
              }, taka: '1,000',),
              SizedBox(width: 5,),
              AmountSection(onTab: () { amountController.text = "2,000"; }, taka: '2,000',),
              SizedBox(width: 5,),
              AmountSection(onTab: () {  amountController.text = "5,000";}, taka: '5,000',),
              SizedBox(width: 5,),
              AmountSection(onTab: () { amountController.text = "1,0000"; }, taka: '1,0000',),
              SizedBox(width: 5,),
              AmountSection(onTab: () {amountController.text = "15,000";  }, taka: '150,00',),
            ],
          )),
          SizedBox(height: 20,),
          Container(
              padding: EdgeInsets.all(5),
              height: 200,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                // color: Colors.lightBlue.shade100,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 0.5,color: Colors.grey),
              ),
              child: Column(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: AppText(text: 'Result',fontSize: 30,fontWeight: FontWeight.bold,)),
                  SizedBox(height: 5,),
                  AppText(text: "Charage :৳ $charge",fontSize: 20,fontWeight: FontWeight.bold,),
                  AppText(text: "With Chrage :৳ $total",fontSize: 20,fontWeight: FontWeight.bold,),
                  AppText(text: "without Charage :৳ $amount",fontSize: 20,fontWeight: FontWeight.bold,),
                ],
              )
          )
        ],
      ),
    );
  }
}