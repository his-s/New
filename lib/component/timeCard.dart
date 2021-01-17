import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:water/Widgets/infoWidgets.dart';
import 'package:water/component/DescriptionCardName.dart';
import 'package:water/constant.dart';

class TimeCard extends StatelessWidget {
  const TimeCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InfoWidget(
      builder: (context,deviceInfo){
        return Container(

          child: Column(
            children: [
              DescriptionCardName(cardName: 'تحديد معاد التسليم'),
              AutoSizeText('يجيب ان يترواح المعاد بين الساعه 7 و 10',style: TextStyle(
                color: Colors.red,

              ),
                maxLines: 1,
                minFontSize: 15,),
              Container(
                padding: EdgeInsets.all(20),
                height: deviceInfo.screenHeight/9,
                decoration: kDescriptionCardDecoration,


                child: TextField(

                  textAlign: TextAlign.end,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(

                    border: InputBorder.none,
                    prefixIcon:Icon(FontAwesomeIcons.table),
                    hintText: 'اضغط هنا وحدد معاد التسليم',



                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: deviceInfo.screenHeight/9,
                margin:EdgeInsets.symmetric(vertical: 5),
                decoration: kDescriptionCardDecoration,
                child: TextField(
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon:Icon(FontAwesomeIcons.arrowDown),
                    hintText: 'اضغط هنا وحدد معاد التسليم',


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