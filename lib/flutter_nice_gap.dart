import 'package:flutter/widgets.dart';

class Gap extends StatelessWidget {
  final double mainAxisExtent;

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
    final parent = context.findAncestorRenderObjectOfType<RenderFlex>();
    return parent?.direction == axis;
  }
}
