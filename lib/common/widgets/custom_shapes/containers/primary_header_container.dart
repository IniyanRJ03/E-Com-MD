import 'package:flutter/material.dart';
import 'package:nsbm_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:nsbm_store/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:nsbm_store/utils/constants/colors.dart';

class NPrimaryHeaderContainer extends StatelessWidget {
  const NPrimaryHeaderContainer({
    super.key,
    required this.child
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return NCurvedEdgesWidget(
      child: Container(
        color: NColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: NCircularContainer(
                  backgroundColor: NColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: NCircularContainer(
                  backgroundColor: NColors.textWhite.withOpacity(0.1),
                ),
              ),
              child
            ],
          ),
        ),
      ),
    );
  }
}