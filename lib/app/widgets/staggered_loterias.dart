import 'package:efictec_srl/app/models/loterias_model.dart';
import 'package:flutter/material.dart';

class StaggeredLoteria extends StatelessWidget {
  final IndexedWidgetBuilder itemBuilder;
  final int itemCount;
  final double spacing;
  final double aspectRatio;

  const StaggeredLoteria({
    Key? key,
    required this.itemBuilder,
    required this.itemCount,
    this.spacing = 0.0,
    this.aspectRatio = 0.7,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return (size.width < 1024)
        ? GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: aspectRatio,
              crossAxisSpacing: spacing,
              mainAxisSpacing: spacing,
              mainAxisExtent: 260.0,
            ),
            itemBuilder: itemBuilder,
            itemCount: loterias.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          )
        : GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: aspectRatio,
              crossAxisSpacing: spacing,
              mainAxisSpacing: spacing,
              mainAxisExtent: 260.0,
            ),
            itemBuilder: itemBuilder,
            itemCount: loterias.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          );
  }
}
