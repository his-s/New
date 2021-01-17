import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:water/Widgets/infoWidgets.dart';
import 'package:water/component/DescriptionCardName.dart';
import 'package:water/constant.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InfoWidget(
      builder: (context,deviceInfo){
        return Container(
          width: double.infinity,
          height: deviceInfo.screenHeight/5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              DescriptionCardName(cardName: 'كوبون الخصم'),
              Container(
                height: deviceInfo.screenHeight/12,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        child: SizedBox(
                          width: double.infinity,
                          height: double.infinity,
                          child: FlatButton(
                            onPressed: () {

                            },
                            color: Colors.blueAccent,
                            child: AutoSizeText('تحقق',style: kCompanyButton.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                              side: BorderSide(color: Colors.blue),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        padding: EdgeInsets.all(10),
                        decoration: kDescriptionCardDecoration,
                        child: TextField(
                          onSubmitted: (val){

                          },
                          textAlign: TextAlign.end,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'ضع كوبون الخصم ',

                            border: InputBorder.none,
                            hintStyle: TextStyle(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
