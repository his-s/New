import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:water/Widgets/infoWidgets.dart';
import 'package:water/class/ItemDataCard.dart';
import 'package:water/component/%D9%8DplaceCard.dart';
import 'package:water/component/Notes.dart';
import 'package:water/component/PriceCard.dart';
import 'package:water/component/SignCard.dart';
import 'package:water/component/amountCard.dart';
import 'package:water/component/description%20card.dart';
import 'package:water/component/discountCard.dart';
import 'package:water/component/timeCard.dart';
import 'package:water/constant.dart';

class ItemScreen extends StatefulWidget {
  final ItemData itemData;
  ItemScreen(this.itemData);
  @override
  _ItemScreenState createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDFE1DE),
      appBar: AppBar(
        title: Text(widget.itemData.name),
        centerTitle: true,
        backgroundColor: Color(0xf41D0B6A),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: InfoWidget(
            builder:(context,deviceInfo){
              return Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height: deviceInfo.screenHeight/1.6,

                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),



                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.white,
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            widget.itemData.image,
                                          ),
                                          // fit: BoxFit.cover,
                                        ),
                                      ),
                                      width: double.infinity,
                                      height: deviceInfo.screenHeight/5,
                                    ),
                                    DescriptionCard(
                                      suffex: 'اسم المنتج',
                                      style: kDescriptionCardPerfex.copyWith(
                                          color: Colors.indigo
                                      ),
                                      perfex: widget.itemData.name,
                                    ),
                                    Divider(
                                      thickness: .5,
                                      color: Colors.grey[400],
                                    ),
                                    DescriptionCard(
                                      suffex: 'السعر',
                                      style: kDescriptionCardPerfex,
                                      perfex: widget.itemData.price.toString(),
                                    ),
                                    Divider(
                                      thickness: .5,
                                      color: Colors.grey[400],
                                    ),
                                    DescriptionCard(
                                      suffex: 'الحد الادنى',
                                      style: kDescriptionCardPerfex,
                                      perfex: widget.itemData.minNumber.toString(),
                                    ),
                                    Divider(
                                      thickness: .5,
                                      color: Colors.grey[400],
                                    ),
                                    DescriptionCard(
                                      suffex: 'المواصفات',
                                      style: kDescriptionCardPerfex,
                                      perfex: widget.itemData.discount,
                                    ),
                                  ],
                                ),
                              ),
                              DiscountCard(),
                              AmountCord(amount: widget.itemData.minNumber),
                              PriceCard(
                                price: widget.itemData.price,
                                cardName: 'السعر الاجمالى',
                              ),
                              PriceCard(
                                cardName: 'رسوم التوصيل',
                                price: widget.itemData.price,
                              ),
                              PlaceCard(),
                              TimeCard(),
                              Notes(),
                              SignUp(),

                            ],
                          );
                        }),
                  ),
                ],
              );
            } ,
          ),
        ),
      ),
    );
  }
}


