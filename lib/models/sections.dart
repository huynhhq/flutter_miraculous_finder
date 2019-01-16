import 'package:flutter/material.dart';

const Color kMariner = Color(0xFF3B5F8F);
const Color kMediumPurple = Color(0xFF8266D4);
const Color kTomato = Color(0xFFF95B57);
const Color kMySin = Color(0xFFF3A646);

const String kGalleryAssetsPackage = 'flutter_miraculous_finder_assets';

class Section {
  const Section({
    this.title,
    this.backgroundAsset,
    this.backgroundAssetPackage,
    this.leftColor,
    this.rightColor,
  });
  final String title;
  final String backgroundAsset;
  final String backgroundAssetPackage;
  final Color leftColor;
  final Color rightColor;

  @override
  bool operator==(Object other) {
    if (other is! Section)
      return false;
    final Section otherSection = other;
    return title == otherSection.title;
  }

  @override
  int get hashCode => title.hashCode;
}

final List<Section> allSections = <Section>[
  const Section(
      title: 'MAIN SEARCH',
      leftColor: kMediumPurple,
      rightColor: kMariner,
      backgroundAsset: 'assets/images/test.png',
      backgroundAssetPackage: kGalleryAssetsPackage
  ),
  const Section(
    title: 'SEARCH BY IMAGE',
    leftColor: kTomato,
    rightColor: kMediumPurple,
    backgroundAsset: 'assets/images/loop-glass.jpg',
    backgroundAssetPackage: kGalleryAssetsPackage,
  ),
  const Section(
    title: 'SETTING',
    leftColor: kMySin,
    rightColor: kTomato,
    backgroundAsset: 'assets/images/loop-glass.jpg',
    backgroundAssetPackage: kGalleryAssetsPackage,
  ),
  const Section(
    title: 'ABOUT US',
    leftColor: Colors.white,
    rightColor: kTomato,
    backgroundAsset: 'assets/images/loop-glass.jpg',
    backgroundAssetPackage: kGalleryAssetsPackage,
  ),
];