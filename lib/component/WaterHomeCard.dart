import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:water/Widgets/infoWidgets.dart';
import 'package:water/constant.dart';
import 'package:water/screens/company%20screen.dart';
import 'package:flutter_simple_rating_bar/flutter_simple_rating_bar.dart';

class WaterHomeCard extends StatelessWidget {
  final String name, location, image;
  WaterHomeCard({this.name, this.location, this.image});
  @override
  Widget build(BuildContext context) {
    return InfoWidget(builder: (context, deviceInfo) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CompanyScreen(
                  name: name,
                ),
              ),
            );
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            elevation: 4,
            shadowColor: Colors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      // color: Colors.blue,

                      borderRadius: BorderRadius.circular(18),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        AutoSizeText(
                          name,
                          style: kHomeCardMainName,
                          maxLines: 1,
                          minFontSize: 15,
                        ),
                        AutoSizeText(
                          location,
                          style: kHomeCardLocationName,
                          maxLines: 1,
                          minFontSize: 15,
                        ),
                        RatingBar(
                          icon: Icon(
                            Icons.star,
                            size: 30,
                            color: Colors.grey[300],
                          ),
                          starCount: 5,
                          spacing: 12,
                          size: 2,
                          isIndicator: false,
                          allowHalfRating: true,
                          onRatingCallback:
                              (double value, ValueNotifier<bool> isIndicator) {
                            print('Number of stars-->  $value');
                            //change the isIndicator from false  to true ,the       RatingBar cannot support touch event;
                            isIndicator.value = true;
                          },
                          color: Colors.amber,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    width: deviceInfo.screenWidth/6,
                    height: deviceInfo.screenHeight/5,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(18),
                      image: DecorationImage(
                        image: AssetImage(
                          image,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
