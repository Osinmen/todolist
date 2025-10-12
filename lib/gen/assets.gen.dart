// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/add.png
  AssetGenImage get add => const AssetGenImage('assets/icons/add.png');

  /// File path: assets/icons/apple.png
  AssetGenImage get apple => const AssetGenImage('assets/icons/apple.png');

  /// File path: assets/icons/arrow-left.png
  AssetGenImage get arrowLeft =>
      const AssetGenImage('assets/icons/arrow-left.png');

  /// File path: assets/icons/backButton.png
  AssetGenImage get backButton =>
      const AssetGenImage('assets/icons/backButton.png');

  /// File path: assets/icons/calendar.png
  AssetGenImage get calendar =>
      const AssetGenImage('assets/icons/calendar.png');

  /// File path: assets/icons/clock.png
  AssetGenImage get clock => const AssetGenImage('assets/icons/clock.png');

  /// File path: assets/icons/fingerprint_white.png
  AssetGenImage get fingerprintWhite =>
      const AssetGenImage('assets/icons/fingerprint_white.png');

  /// File path: assets/icons/flash.png
  AssetGenImage get flash => const AssetGenImage('assets/icons/flash.png');

  /// File path: assets/icons/google.png
  AssetGenImage get google => const AssetGenImage('assets/icons/google.png');

  /// File path: assets/icons/home.png
  AssetGenImage get home => const AssetGenImage('assets/icons/home.png');

  /// File path: assets/icons/info-circle.png
  AssetGenImage get infoCircle =>
      const AssetGenImage('assets/icons/info-circle.png');

  /// File path: assets/icons/key.png
  AssetGenImage get key => const AssetGenImage('assets/icons/key.png');

  /// File path: assets/icons/like.png
  AssetGenImage get like => const AssetGenImage('assets/icons/like.png');

  /// File path: assets/icons/logout.png
  AssetGenImage get logout => const AssetGenImage('assets/icons/logout.png');

  /// File path: assets/icons/menu.png
  AssetGenImage get menu => const AssetGenImage('assets/icons/menu.png');

  /// File path: assets/icons/profile.png
  AssetGenImage get profile => const AssetGenImage('assets/icons/profile.png');

  /// File path: assets/icons/setting-2.png
  AssetGenImage get setting2 =>
      const AssetGenImage('assets/icons/setting-2.png');

  /// File path: assets/icons/sort.png
  AssetGenImage get sort => const AssetGenImage('assets/icons/sort.png');

  /// File path: assets/icons/user.png
  AssetGenImage get user => const AssetGenImage('assets/icons/user.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    add,
    apple,
    arrowLeft,
    backButton,
    calendar,
    clock,
    fingerprintWhite,
    flash,
    google,
    home,
    infoCircle,
    key,
    like,
    logout,
    menu,
    profile,
    setting2,
    sort,
    user,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Checklist-rafiki 1.png
  AssetGenImage get checklistRafiki1 =>
      const AssetGenImage('assets/images/Checklist-rafiki 1.png');

  /// List of all assets
  List<AssetGenImage> get values => [checklistRafiki1];
}

class $AssetsOnboardingImagesGen {
  const $AssetsOnboardingImagesGen();

  /// File path: assets/onboardingImages/page_one.png
  AssetGenImage get pageOne =>
      const AssetGenImage('assets/onboardingImages/page_one.png');

  /// File path: assets/onboardingImages/page_three.png
  AssetGenImage get pageThree =>
      const AssetGenImage('assets/onboardingImages/page_three.png');

  /// File path: assets/onboardingImages/page_two.png
  AssetGenImage get pageTwo =>
      const AssetGenImage('assets/onboardingImages/page_two.png');

  /// List of all assets
  List<AssetGenImage> get values => [pageOne, pageThree, pageTwo];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsOnboardingImagesGen onboardingImages =
      $AssetsOnboardingImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
