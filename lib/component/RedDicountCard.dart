import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:water/Widgets/infoWidgets.dart';
import 'package:water/constant.dart';

class RedDiscountCard extends StatelessWidget {
  const RedDiscountCard({
    Key key,
    @required this.discount,
  }) : super(key: key);

  final String discount;

  @override
  Widget build(BuildContext context) {
    return InfoWidget(
      builder: (context,deviceInfo){
        return Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          width: deviceInfo.screenWidth/5,
          height: deviceInfo.screenHeight/20,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
          ),
          child: Center(
            child: AutoSizeText(
              '%$discount ' + 'خصم',
              style: kCompanyCardDiscount,
              maxLines: 1,
            ),
          ),
        );
      },
    );
  }
}