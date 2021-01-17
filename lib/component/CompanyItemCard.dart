import 'package:flutter/material.dart';
import 'package:water/Widgets/infoWidgets.dart';
import 'package:water/class/ItemDataCard.dart';
import 'package:water/component/CompanyCardImage.dart';
import 'package:water/component/CompanyCardInfo.dart';
import 'package:water/component/CompanyCustomButton.dart';
import 'package:water/component/RedDicountCard.dart';
import 'package:water/constant.dart';
import 'package:water/screens/item%20screen.dart';

class CompanyItemCard extends StatelessWidget {
  final String name, image, discount;
  final int minNumber,price;
  CompanyItemCard(
      {this.name, this.price, this.minNumber, this.image, this.discount});
  @override
  Widget build(BuildContext context) {
    return InfoWidget(
      builder: (context,deviceInfo){
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ItemScreen(ItemData(
                    name: name,
                    discount: discount,
                    minNumber: minNumber,
                    image: image,
                    price: price,
                  ))));
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 4,
              shadowColor: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomCompanyButton(),
                  Expanded(
                    flex: 1,
                    child: CompanyCardInfo(name: name, price: price, minNumber: minNumber.toString()),
                  ),
                  Expanded(
                    flex: 1,
                    child: CompanyCardImage(image: image, discount: discount),
                  ),
                ],
              ),
            ),
          ),
        );
    },
    );
  }
}








