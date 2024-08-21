import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

///RiveRuntimeRender
class FlareAssetAnimation extends StatefulWidget {
  ///Constructor
  const FlareAssetAnimation({
    required this.assetPath,
    required this.fit,
    required this.animName,
    Key? key,
  }) : super(key: key);

  ///Path of the .riv assets file
  final String assetPath;

  ///Fit of the animation
  final BoxFit fit;

  ///Name od the animation to load
  final String animName;
  @override
  State<FlareAssetAnimation> createState() => _FlareAnimationState();
}

class _FlareAnimationState extends State<FlareAssetAnimation> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FlareActor(
      widget.assetPath,
      fit: widget.fit,
      animation: widget.animName,
    );
  }
}
