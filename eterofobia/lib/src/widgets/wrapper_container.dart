import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class WrappedContainer extends StatelessWidget {
  final Widget child;
  const WrappedContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        // Check the sizing information here and return your UI
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return Center(
            child: Container(
              width: 1000,
              child: child,
            ),
          );
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: child,
          );
        }

        return child;
      },
    );
  }
}
