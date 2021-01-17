import 'package:flutter/material.dart';
import 'package:water/Widgets/infoWidgets.dart';
import 'package:water/component/RedDicountCard.dart';

class CompanyCardImage extends StatelessWidget {
  const CompanyCardImage({
    Key key,
    @required this.image,
    @required this.discount,
  }) : super(key: key);

  final String image;
  final String discount;

  @override
  Widget build(BuildContext context) {
    return InfoWidget(
      builder: (context,deviceInfo){
        return Container(
          margin: EdgeInsets.all( 5),
          child: Stack(

            alignment: Alignment.bottomRight,
            children: [
              Container(
                width: deviceInfo.screenWidth/3,
                height: deviceInfo.screenHeight/5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: Colors.green,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      image,
                    ),
                  ),
                ),
              ),
              RedDiscountCard(discount: discount),
            ],
          ),
        );
      },
    );
  }
}