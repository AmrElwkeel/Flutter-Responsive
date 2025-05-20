import 'package:flutter/material.dart';

import 'device_type.dart';
import 'responsive_layout.dart';

class ResponsiveSizing {
  static double getBasePadding(DeviceType deviceType) {
    switch (deviceType) {
      case DeviceType.mobile:
        return 16.0;
      case DeviceType.tablet:
        return 24.0;
      case DeviceType.desktop:
        return 32.0;
    }
  }

  static double getResponsiveValue(BuildContext context,
      {required double mobile, double? tablet, double? desktop}) {
    final device = ResponsiveLayout.getDeviceType(context);
    switch (device) {
      case DeviceType.mobile:
        return mobile;
      case DeviceType.tablet:
        return tablet ?? mobile * 1.5;
      case DeviceType.desktop:
        return desktop ?? mobile * 2;
    }
  }
}