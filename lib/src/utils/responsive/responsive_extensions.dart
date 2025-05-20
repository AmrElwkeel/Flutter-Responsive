import 'package:flutter/material.dart';

import 'device_type.dart';
import 'responsive_layout.dart';
import 'responsive_sizing.dart';

extension ResponsiveExtensions on BuildContext {
  DeviceType get deviceType => ResponsiveLayout.getDeviceType(this);

  double responsivePadding() => ResponsiveSizing.getBasePadding(deviceType);

  double responsiveValue({
    required double mobile,
    double? tablet,
    double? desktop,
  }) => ResponsiveSizing.getResponsiveValue(
    this,
    mobile: mobile,
    tablet: tablet,
    desktop: desktop,
  );
}