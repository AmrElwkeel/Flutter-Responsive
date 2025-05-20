import 'package:flutter/material.dart';

import 'package:test_app_responsive_reverpod/src/utils/responsive/responsive_breakpoints.dart';

import 'device_type.dart';


class ResponsiveLayout {
  static DeviceType getDeviceType(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    if (width < ResponsiveBreakpoints.mobileMax) return DeviceType.mobile;
    if (width < ResponsiveBreakpoints.tabletMax) return DeviceType.tablet;
    return DeviceType.desktop;
  }
}