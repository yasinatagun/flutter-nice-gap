import 'package:flutter/widgets.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}

/// A simple gap widget that automatically adapts to its parent's direction.
///
/// When used inside a [Row], it creates horizontal spacing.
/// When used inside a [Column], it creates vertical spacing.
///
/// Example:
/// ```dart
/// Row(
///   children: [
///     Text('Hello'),
///     Gap(10), // Creates 10 logical pixels of horizontal spacing
///     Text('World'),
///   ],
/// )
/// ```
class Gap extends StatelessWidget {
  /// The size of the gap in logical pixels.
  final double mainAxisExtent;

  /// Creates a gap with the specified size.
  const Gap(this.mainAxisExtent, {super.key});

  @override
  Widget build(BuildContext context) {
    final isHorizontal = _isInFlexWithDirection(context, Axis.horizontal);

    return SizedBox(
      width: isHorizontal ? mainAxisExtent : 0,
      height: isHorizontal ? 0 : mainAxisExtent,
    );
  }

  bool _isInFlexWithDirection(BuildContext context, Axis axis) {
    final widget = context.findAncestorWidgetOfExactType<Flex>();
    return widget?.direction == axis;
  }
}
