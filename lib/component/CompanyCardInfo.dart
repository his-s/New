import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:water/Widgets/infoWidgets.dart';
import 'package:water/constant.dart';

class CompanyCardInfo extends StatelessWidget {
  const CompanyCardInfo({
    Key key,
    @required this.name,
    @required this.price,
    @required this.minNumber,
  }) : super(key: key);

  final String name;
  final int price;
  final String minNumber;

  @override
  Widget build(BuildContext context) {
    return InfoWidget(
      builder: (context,deviceInfo){
        return Container(
          margin: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,

            children: [
              AutoSizeText(name,style: kCompanyCardMainName,maxLines: 1,minFontSize: 15,),
              AutoSizeText('$price',style: kCompanyCardPrice,maxLines: 1,minFontSize: 15,),
              AutoSizeText('$minNumber' + ' : ' + 'الحد الادنى ',style: kCompanyCardPrice,),
            ],
          ),
        );
      },
    );
  }
}