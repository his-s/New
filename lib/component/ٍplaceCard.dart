import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:water/Widgets/infoWidgets.dart';
import 'package:water/component/DescriptionCardName.dart';
import 'package:water/constant.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InfoWidget(
      builder: (context,deviceInfo){
        return Container(
          height: deviceInfo.screenHeight/4.5,
          child: Column(
            children: [
              DescriptionCardName(cardName: 'تحديد موقع التوصيل'),
              Container(
                padding: EdgeInsets.all(20),
                height: deviceInfo.screenHeight/9,
                decoration: kDescriptionCardDecoration,
                child: TextField(
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon:Icon(FontAwesomeIcons.locationArrow),
                    hintText: 'اضغط هنا وحدد موقعك',


                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}