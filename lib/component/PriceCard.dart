import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:water/Widgets/infoWidgets.dart';
import 'package:water/component/DescriptionCardName.dart';
import 'package:water/constant.dart';

class PriceCard extends StatelessWidget {
  final int price;
  final String cardName;
  PriceCard({this.price, this.cardName});

  @override
  Widget build(BuildContext context) {
    return InfoWidget(
      builder: (context,deviceInfo){
        return Container(
          height: deviceInfo.screenHeight/4.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DescriptionCardName(cardName: cardName),
              Container(
                child: Container(
                  decoration: kDescriptionCardDecoration.copyWith(
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  width: double.infinity,
                  height: deviceInfo.screenHeight/9,
                  child: Center(
                    child: AutoSizeText(
                      '$price',
                      style: kDescriptionCardPerfex,
                      maxLines: 1,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
