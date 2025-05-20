import 'package:flutter/material.dart';

import 'device_type.dart';
import 'responsive_layout.dart';

class ResponsiveBuilder extends StatelessWidget {
  final WidgetBuilder mobile;
  final WidgetBuilder? tablet;
  final WidgetBuilder? desktop;

  const ResponsiveBuilder({
    super.key,
    required this.mobile,
    this.tablet,
    this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    final device = ResponsiveLayout.getDeviceType(context);
    switch (device) {
      case DeviceType.mobile:
        return mobile(context);
      case DeviceType.tablet:
        return tablet?.call(context) ?? mobile(context);
      case DeviceType.desktop:
        return desktop?.call(context) ?? tablet?.call(context) ?? mobile(context);

    }
  }
}