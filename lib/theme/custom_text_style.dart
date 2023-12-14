import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodySmallRocGroteskRegularOnPrimaryContainer =>
      theme.textTheme.bodySmall!.rocGroteskRegular.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  // Label text style
  static get labelLargeOrangeA200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.orangeA200,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelMediumRocGroteskOnPrimaryContainer =>
      theme.textTheme.labelMedium!.rocGrotesk.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  // Title text style
  static get titleMediumGray500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 16.fSize,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
  static get titleMediumRedA200 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.redA200,
      );
  static get titleMediumRocGrotesk => theme.textTheme.titleMedium!.rocGrotesk;
  static get titleMediumRocGrotesk17 =>
      theme.textTheme.titleMedium!.rocGrotesk.copyWith(
        fontSize: 17.fSize,
      );
}

extension on TextStyle {
  TextStyle get rocGroteskRegular {
    return copyWith(
      fontFamily: 'RocGrotesk-Regular',
    );
  }

  TextStyle get rocGrotesk {
    return copyWith(
      fontFamily: 'Roc Grotesk',
    );
  }

  TextStyle get siinFont {
    return copyWith(
      fontFamily: 'SiinFont',
    );
  }
}
