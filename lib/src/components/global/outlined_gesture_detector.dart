import 'package:equinox/equinox.dart';
import 'package:flutter/widgets.dart';

class OutlinedGestureDetector extends StatelessWidget {
  final Widget child;
  final Function(bool) onOutlineChange;
  final VoidCallback onTap;

  const OutlinedGestureDetector(
      {Key key, this.onOutlineChange, this.onTap, this.child})
      : super(key: key);

  void onTapDown(data) {
    onOutlineChange(true);
  }

  void clearOutline(EqThemeData theme) {
    Future.delayed(theme.minorAnimationDuration, () => onOutlineChange(false));
  }

  @override
  Widget build(BuildContext context) {
    var theme = EqTheme.of(context);
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      onTapDown: (onTap != null) ? onTapDown : null,
      onTapUp: (onTap != null) ? (_) => clearOutline(theme) : null,
      onTapCancel: (onTap != null) ? () => clearOutline(theme) : null,
      child: child,
    );
  }
}
