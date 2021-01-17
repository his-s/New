import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:water/constant.dart';

class DescriptionCardName extends StatelessWidget {
  const DescriptionCardName({
    Key key,
    @required this.cardName,
  }) : super(key: key);

  final String cardName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      child: Center(
        child: AutoSizeText(
          cardName,
          style: kDiscountCard,
          maxLines: 1,
        ),
      ),
    );
  }
}