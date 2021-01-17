import 'package:flutter/cupertino.dart';

class Price extends ChangeNotifier {
  double amount ;
  double price ;
  getTotalPrice (){
  double totalPrice = amount * price;
  return totalPrice;

  }
}