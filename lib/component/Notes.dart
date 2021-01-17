import 'package:flutter/material.dart';
import 'package:water/Widgets/infoWidgets.dart';
import 'package:water/component/DescriptionCardName.dart';
import 'package:water/constant.dart';

class Notes extends StatelessWidget {
  const Notes({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InfoWidget(

      builder: (context,deviceInfo){
        return Container(
          child: Column(
            children: [
              DescriptionCardName(cardName: 'اكتب هنا ان كان لديك ملاحاظات'),
              Container(
                height: deviceInfo.screenHeight/4,
                decoration: kDescriptionCardDecoration,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
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
