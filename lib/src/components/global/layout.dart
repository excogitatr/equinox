import 'package:equinox/equinox.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart' as MaterialDesign;

/// A widget that represents a page. Similar to [Scaffold].
class EqLayout extends StatefulWidget {
  /// A theme to use in this page. Overwrites the [EquinoxApp.theme].
  final EqThemeData theme;

  /// Page's body. Will be placed below [appBar].
  final Widget child;

  /// A slot for [EqAppBar] or other application bars. Can be `null`.
  final Widget appBar;

  /// A slot for [EqTabBar.bottom()] or other widget to place on the bottom. Can be `null`.
  final Widget bottomTabBar;

  const EqLayout({
    Key key,
    this.theme,
    @required this.child,
    this.appBar,
    this.bottomTabBar,
  }) : super(key: key);
  @override
  _EqLayoutState createState() => _EqLayoutState();
}

class _EqLayoutState extends State<EqLayout> {
  @override
  Widget build(BuildContext context) {
    var theme = widget.theme ?? EqTheme.of(context);
    return EqTheme(
      theme: theme,
      child: AnimatedContainer(
        duration: theme.majorAnimationDuration,
        curve: theme.majorAnimationCurve,
        color: theme.backgroundBasicColors.color3,
        child: MaterialDesign.Material(
          type: MaterialDesign.MaterialType.transparency,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              if (widget.appBar != null) widget.appBar,
              Expanded(
                // child: SafeArea(
                //   child: widget.child,
                // ),
                child: widget.child,
              ),
              if (widget.bottomTabBar != null) widget.bottomTabBar,
            ],
          ),
        ),
      ),
    );
  }
}
