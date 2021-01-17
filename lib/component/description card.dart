import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:water/class/ItemDataCard.dart';
import 'package:water/constant.dart';
import 'package:water/screens/item%20screen.dart';

class DescriptionCard extends StatelessWidget {
final String suffex ,perfex ;
final TextStyle style;
DescriptionCard({this.suffex,this.perfex,this.style});



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(top: .5),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      // height: 80,

      child: Row(
        mainAxisAlignment:
        MainAxisAlignment.spaceBetween,
        children: [
          AutoSizeText(perfex,style:style ,),
          AutoSizeText(suffex,style: kDescriptionCardSuffex,),
        ],
      ),
    );
  }

}