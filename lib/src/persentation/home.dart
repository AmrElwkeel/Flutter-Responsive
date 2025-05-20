import 'package:flutter/material.dart';
import 'package:test_app_responsive_reverpod/src/utils/responsive/responsive_extensions.dart';

import '../utils/responsive/responsive_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(
        mobile: (_) => _MobileLayout(),
        tablet: (_) => _TabletLayout(),
        desktop: (_) => _DesktopLayout(),
      ),
    );
  }
}

class _MobileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Container(color: Colors.blue),
        ),
        Expanded(
          flex: 3,
          child: Container(color: Colors.red,child: Text("Mobile"),),
        ),
      ],
    );
  }
}

class _TabletLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: context.responsiveValue(mobile: 3.0, tablet: 5.0).toInt(),
          child: Container(color: Colors.yellow,child: Text("Tablet"),),
        ),
      ],
    );
  }
}

class _DesktopLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(color: Colors.purple),
        ),
        Expanded(
          flex: 4,
          child: Container(color: Colors.orange,child: Text("Desktop"),),
        ),
      ],
    );
  }
}