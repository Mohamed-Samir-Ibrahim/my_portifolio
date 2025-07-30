/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Poppins-Regular.ttf
  String get poppinsRegular => 'assets/fonts/Poppins-Regular.ttf';

  /// List of all assets
  List<String> get values => [poppinsRegular];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/c-plus-plus-50.png
  AssetGenImage get cPlusPlus50 =>
      const AssetGenImage('assets/icons/c-plus-plus-50.png');

  /// File path: assets/icons/dart.png
  AssetGenImage get dart => const AssetGenImage('assets/icons/dart.png');

  /// File path: assets/icons/flutter.png
  AssetGenImage get flutter => const AssetGenImage('assets/icons/flutter.png');

  /// File path: assets/icons/icons8-app-store-50.png
  AssetGenImage get icons8AppStore50 =>
      const AssetGenImage('assets/icons/icons8-app-store-50.png');

  /// File path: assets/icons/icons8-git-48.png
  AssetGenImage get icons8Git48 =>
      const AssetGenImage('assets/icons/icons8-git-48.png');

  /// File path: assets/icons/icons8-github-50.png
  AssetGenImage get icons8Github50 =>
      const AssetGenImage('assets/icons/icons8-github-50.png');

  /// File path: assets/icons/icons8-google-play-store-50.png
  AssetGenImage get icons8GooglePlayStore50 =>
      const AssetGenImage('assets/icons/icons8-google-play-store-50.png');

  /// File path: assets/icons/icons8-linux-48.png
  AssetGenImage get icons8Linux48 =>
      const AssetGenImage('assets/icons/icons8-linux-48.png');

  /// File path: assets/icons/icons8-nestjs-48.png
  AssetGenImage get icons8Nestjs48 =>
      const AssetGenImage('assets/icons/icons8-nestjs-48.png');

  /// File path: assets/icons/icons8-python-48.png
  AssetGenImage get icons8Python48 =>
      const AssetGenImage('assets/icons/icons8-python-48.png');

  /// File path: assets/icons/icons8-sql-48.png
  AssetGenImage get icons8Sql48 =>
      const AssetGenImage('assets/icons/icons8-sql-48.png');

  /// File path: assets/icons/icons8-typescript-50.png
  AssetGenImage get icons8Typescript50 =>
      const AssetGenImage('assets/icons/icons8-typescript-50.png');

  /// File path: assets/icons/icons8-video-48.png
  AssetGenImage get icons8Video48 =>
      const AssetGenImage('assets/icons/icons8-video-48.png');

  /// File path: assets/icons/java.png
  AssetGenImage get java => const AssetGenImage('assets/icons/java.png');

  /// File path: assets/icons/python.png
  AssetGenImage get python => const AssetGenImage('assets/icons/python.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        cPlusPlus50,
        dart,
        flutter,
        icons8AppStore50,
        icons8Git48,
        icons8Github50,
        icons8GooglePlayStore50,
        icons8Linux48,
        icons8Nestjs48,
        icons8Python48,
        icons8Sql48,
        icons8Typescript50,
        icons8Video48,
        java,
        python
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/am.png
  AssetGenImage get am => const AssetGenImage('assets/images/am.png');

  /// File path: assets/images/cailery.png
  AssetGenImage get cailery => const AssetGenImage('assets/images/cailery.png');

  /// File path: assets/images/dushka.png
  AssetGenImage get dushka => const AssetGenImage('assets/images/dushka.png');

  /// File path: assets/images/grow_green.png
  AssetGenImage get growGreen =>
      const AssetGenImage('assets/images/grow_green.png');

  /// File path: assets/images/profile.jpeg
  AssetGenImage get profile =>
      const AssetGenImage('assets/images/profile.jpeg');

  /// List of all assets
  List<AssetGenImage> get values => [am, cailery, dushka, growGreen, profile];
}

class $AssetsLottieGen {
  const $AssetsLottieGen();

  /// File path: assets/lottie/hand_wave.json
  String get handWave => 'assets/lottie/hand_wave.json';

  /// List of all assets
  List<String> get values => [handWave];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLottieGen lottie = $AssetsLottieGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
    FilterQuality filterQuality = FilterQuality.low,
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
