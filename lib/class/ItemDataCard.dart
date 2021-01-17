class ItemData {
  final String name, image,discount;
  final int minNumber,price;
  ItemData({this.name, this.price, this.minNumber, this.image,this.discount});

}

List<ItemData> data = [
  ItemData(
    name: 'مياه نوفا مل200',
    price: 13,
    minNumber: 10,
    discount: '0',
    image: 'assets/images/1.png',
  ), ItemData(
    name: 'مياه نوفا مل550',
    price: 17,
    minNumber: 10,
    discount: '0',
    image: 'assets/images/1.png',
  ), ItemData(
    name: 'مياه بيرين مل330',
    price: 20,
    minNumber: 10,
    discount: '0',
    image: 'assets/images/1.png',
  ),ItemData(
    name: 'مياه بيرين مل330',
    price: 20,
    minNumber: 10,
    discount: '0',
    image: 'assets/images/1.png',
  ),


];
