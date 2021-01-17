
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import 'package:water/Widgets/infoWidgets.dart';
import 'package:water/class/DataCard.dart';
import 'package:water/component/WaterHomeCard.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xf41D0B6A),
       leading: IconButton(
         icon:Icon(FontAwesomeIcons.userAlt,color: Colors.white,),

       ),

        title: Text('مراد'),
        centerTitle: true,
        elevation: 0,
      ),
      endDrawer: Column(),
      body: SafeArea(
        child: InfoWidget(

          builder: (context,deviceInfo){
            print(deviceInfo.deviceType);
            print(deviceInfo.screenWidth) ;
            return Stack(
              children: [
                Container(
                  color: Colors.white,
                ),
                Container(
                  color: Color(0xf41D0B6A),
                  width: double.infinity,
                  height: deviceInfo.orientation==Orientation.landscape?deviceInfo.screenWidth/5:deviceInfo.screenHeight/3.5,

                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
Container(
                      width: deviceInfo.screenWidth,
                      height: deviceInfo.screenHeight / 3,
                      decoration: BoxDecoration(
                        

                      ),
                      child: Carousel(
                        borderRadius: true,
                        dotSize: 5,
                        indicatorBgPadding: 10,
                        dotBgColor: Colors.transparent,

                        boxFit: BoxFit.cover,
                        images: [
                          AssetImage('assets/images/1.png'),
                          AssetImage('assets/images/2.png'),
                          AssetImage('assets/images/5.png'),
                        ],
                      ),
                    ),
                      Expanded(
                        flex: 1,
                        child: ListView.builder(
                            itemCount: cardData.length,
                            itemBuilder: (context, index) {
                              return WaterHomeCard(
                                name: cardData[index].name,
                                location: cardData[index].description,
                                image: cardData[index].image,
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }
        ),
      ),
    );
  }
}


