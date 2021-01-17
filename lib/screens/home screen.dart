
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
                        margin: EdgeInsets.symmetric(vertical: 20),
                        width: double.infinity,
                        // height: deviceInfo.orientation==Orientation.landscape?deviceInfo.screenWidth/6:deviceInfo.screenHeight/3,
                        height: deviceInfo.screenHeight/3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.green,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              cardData[0].image,
                            ),
                          ),
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


