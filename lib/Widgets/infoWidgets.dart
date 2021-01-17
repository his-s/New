import 'package:flutter/material.dart';

import 'package:water/Model/DeviceInfo.dart';
import 'package:water/cores/functions/getDeviceType.dart';

class InfoWidget extends StatelessWidget {
 final Widget Function(BuildContext context,DeviceInfo deviceInfo) builder ;

  const InfoWidget({Key key, this.builder}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constrains){
        var mediaQueryData =MediaQuery.of(context);
        var deviceInfo = DeviceInfo(
          orientation: mediaQueryData.orientation,
          deviceType: getDeviceType(mediaQueryData),
          screenHeight: mediaQueryData.size.height,
          screenWidth: mediaQueryData.size.width,
          localHeight: constrains.maxHeight,
          localWidth: constrains.maxWidth,

        );
        return builder(context,deviceInfo);
      }
    );
  }
}
