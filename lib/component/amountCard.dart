import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:water/Widgets/infoWidgets.dart';
import 'package:water/constant.dart';

class AmountCord extends StatefulWidget {
  final int amount;
  AmountCord({this.amount});

  @override
  _AmountCordState createState() => _AmountCordState(amount);


}

class _AmountCordState extends State<AmountCord> {
  _AmountCordState(this.amount);
  int amount ;




  @override
  Widget build(BuildContext context) {
    return InfoWidget(
      builder: (context,deviceInfo){
        return Container(
          height: deviceInfo.screenHeight/10,
          margin: EdgeInsets.only(top: 15),
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: kDescriptionCardDecoration.copyWith(
            border: Border.all(
              color: Colors.white,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  IconButton(

                      icon: Icon(FontAwesomeIcons.minusCircle,color: Colors.indigo,size: 35,), onPressed: () {
                    setState(() {
                      if(amount>widget.amount){
                        amount-=1;
                      }
                    });
                  }),
                  Text('$amount',style: kDescriptionCardPerfex,),
                  IconButton(
                      icon: Icon(FontAwesomeIcons.plusCircle,color: Colors.indigo,size: 35,), onPressed: () {
                    setState(() {
                      amount+=1;
                    });
                  }),
                ],
              ),
              AutoSizeText(
                'الكمية',
                style: kDiscountCard,
              ),
            ],
          ),
        );
      },
    );
  }
}
