import 'package:flutter/material.dart';
import 'package:responsive_design/Utils/screen_utils.dart';

class ResponsiveBuilder extends StatelessWidget {
  ResponsiveBuilder(
      {super.key, required this.mobile, required this.desktop, this.tablet});

  final Widget mobile;
  final Widget desktop;
  final Widget? tablet;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final deviceType = ScreenUtils.getDeviceSize(size.width);

    if(deviceType == DeviceType.mobile) {
      return mobile;
    }
    else if(deviceType == DeviceType.tablet) {
      return tablet ?? mobile; //if not tablet it will be mobile
    }
    return desktop;
  }
}

