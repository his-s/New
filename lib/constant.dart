import 'package:flutter/material.dart';
import 'package:water/component/description%20card.dart';
// text style for HomeCard
const kHomeCardMainName =TextStyle(
  color: Color(0xff1D0B6A),
  // fontSize: 20,
  fontWeight: FontWeight.normal,
);
const kHomeCardLocationName =TextStyle(
  color: Colors.grey,
  // fontSize: 18,
  fontWeight: FontWeight.normal,
);
// text Style for Company Card
const kCompanyCardMainName =TextStyle(
  color: Color(0xff1D0B6A),
  // fontSize: 18,
  fontWeight: FontWeight.bold,
);
const kCompanyCardPrice =TextStyle(
  color: Colors.black87,
  // fontSize: 15,
  fontWeight: FontWeight.normal,
);
// Red Discount Card Style
const kCompanyCardDiscount = TextStyle(
  color: Colors.white,
);
const kCompanyButton = TextStyle(
  color: Colors.white,
);
// DescriptionCard style
const kDescriptionCardSuffex = TextStyle(
  color: Colors.grey,
  fontSize: 20,
  fontWeight: FontWeight.bold,
);
const kDescriptionCardPerfex = TextStyle(
  color: Colors.black,
  fontSize: 18,
  fontWeight: FontWeight.bold,
);

//description card style
const kDiscountCard = TextStyle(
  color: Colors.blueAccent,
fontSize: 20,
    fontWeight:FontWeight.bold,
);
// description card box
var  kDescriptionCardDecoration =  BoxDecoration(
  borderRadius: BorderRadius.circular(15),
  border: Border.all(
    color: Colors.black,
    style: BorderStyle.solid,
  ),
  color: Colors.white,
);