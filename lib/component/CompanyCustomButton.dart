
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:water/Widgets/infoWidgets.dart';
import 'package:water/constant.dart';

class CustomCompanyButton extends StatelessWidget {
  const CustomCompanyButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InfoWidget(
      builder: (context,deviceInfo){
        return Container(
          margin: EdgeInsets.all(5.0),
          width: deviceInfo.screenWidth/6,
          height: deviceInfo.screenHeight/20,
          decoration: BoxDecoration(
              color: Color(0xf41D0B6A),
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: AutoSizeText(
              'طلب',
              style: kCompanyButton,
            ),
          ),
        );
      },
    );
  }
}