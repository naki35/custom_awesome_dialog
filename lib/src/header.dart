import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:awesome_dialog/src/anims/flare_anim.dart';
import 'package:flutter/material.dart';

///Header of the [AwesomeDialog]
class AwesomeDialogHeader extends StatelessWidget {
  ///Constructor of the [AwesomeDialogHeader]
  const AwesomeDialogHeader({
    required this.dialogType,
    required this.loop,
    Key? key,
  }) : super(key: key);

  ///Defines the type of [AwesomeDialogHeader]
  final DialogType dialogType;

  ///Defines if the animation loops or not
  final bool loop;

  @override
  Widget build(BuildContext context) {
    switch (dialogType) {
      case DialogType.info:
        return const FlareAssetAnimation(
          assetPath: 'packages/awesome_dialog/assets/flare/info2.flr',
          fit: BoxFit.cover,
          animName: 'appear',
        );
      case DialogType.infoReverse:
        return const FlareAssetAnimation(
          assetPath: 'packages/awesome_dialog/assets/flare/info.flr',
          fit: BoxFit.cover,
          animName: 'appear',
        );

      case DialogType.question:
        return const FlareAssetAnimation(
          assetPath: 'packages/awesome_dialog/assets/flare/question.flr',
          fit: BoxFit.cover,
          animName: 'anim',
        );
      case DialogType.warning:
        return const FlareAssetAnimation(
          assetPath: 'packages/awesome_dialog/assets/flare/warning.flr',
          fit: BoxFit.cover,
          animName: 'appear',
        );
      case DialogType.error:
        return const FlareAssetAnimation(
          assetPath: 'packages/awesome_dialog/assets/flare/error.flr',
          fit: BoxFit.fill,
          animName: 'Error',
        );
      case DialogType.success:
        return const FlareAssetAnimation(
          assetPath: 'packages/awesome_dialog/assets/flare/success.flr',
          fit: BoxFit.fill,
          animName: 'Untitled',
        );
      case DialogType.noHeader:
        return const SizedBox.shrink();
    }
  }
}
