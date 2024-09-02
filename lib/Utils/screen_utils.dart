enum DeviceType {
  mobile, tablet, desktop
}

class ScreenUtils {
  static const mobileMaxSize = 640;
  static const tabletMaxSize = 1008;
  static const desktopMinSize = 1008;

  static DeviceType getDeviceSize(double width) {
    if(width < mobileMaxSize) {
      return DeviceType.mobile;
    }
    else if(width >= mobileMaxSize && width < tabletMaxSize) {
      return DeviceType.tablet; //if not tablet it will be mobile
    }
    return DeviceType.desktop;
  }
}