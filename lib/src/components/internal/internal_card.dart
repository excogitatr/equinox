import 'package:equinox/equinox.dart';

import 'package:flutter/material.dart' as MaterialDesign;
import 'package:flutter/widgets.dart';

class EqInternalCard extends StatelessWidget {
  final Widget child;
  final BorderRadius borderRadius;
  final EqThemeData themeOverride;

  const EqInternalCard({
    Key key,
    @required this.child,
    this.borderRadius = BorderRadius.zero,
    this.themeOverride,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = themeOverride ?? EqTheme.of(context);

    var backgroundColor = theme.backgroundBasicColors.color1;

    return AnimatedContainer(
      duration: theme.minorAnimationDuration,
      curve: theme.minorAnimationCurve,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        boxShadow: [theme.shadow],
        color: backgroundColor,
      ),
      child: MaterialDesign.Material(
        type: MaterialDesign.MaterialType.transparency,
        child: child,
      ),
    );
  }
}
