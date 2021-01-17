import 'package:flutter/material.dart';
import 'package:water/Widgets/infoWidgets.dart';
import 'package:water/class/ItemDataCard.dart';
import 'package:water/component/CompanyItemCard.dart';

class CompanyScreen extends StatefulWidget {
  CompanyScreen({this.name});
  final String name;
  @override
  _CompanyScreenState createState() => _CompanyScreenState();
}

class _CompanyScreenState extends State<CompanyScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        centerTitle: true,
        backgroundColor: Color(0xf41D0B6A),
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
          child: InfoWidget(
            builder: (context,deviceInfo){
              return Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return CompanyItemCard(
                            name: data[index].name,
                            minNumber: data[index].minNumber,
                            price: data[index].price,
                            image: data[index].image,
                            discount: data[index].discount,
                          );
                        }),
                  )
                ],
              );
            },
          )
        ),
      ),
    );
  }
}
