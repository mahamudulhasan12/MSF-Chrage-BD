import 'package:flutter/material.dart';

import '../../../custom widget/app_text.dart';

class AmountSection extends StatelessWidget {
  const AmountSection({
    super.key, required this.onTab, required this.taka,
  });
  final VoidCallback onTab;
  final String taka;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTab,
      child: Container(
        height: 17,
        width: 85,
        decoration: BoxDecoration(
          color: Colors.blue.shade500,
          borderRadius: BorderRadius.circular(20),
        ),
        alignment: Alignment.center,
        child: AppText(text: taka,fontSize: 20,fontWeight: FontWeight.bold,colors: Colors.white,),
      ),

    );
  }
}