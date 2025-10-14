import 'package:flutter/material.dart';
import 'package:todolist/gen/assets.gen.dart';

class IconProvider extends ChangeNotifier{ 

  final List<String> _icons = [

    Assets.userIcons.book.path, 
    Assets.userIcons.check.path,
    Assets.userIcons.coffeeCupOnAPlateBlackSilhouettes.path, 
    Assets.userIcons.facetimeButton.path, 
    Assets.userIcons.flagBlackShape.path,
    Assets.userIcons.mobilePhone.path, 
    Assets.userIcons.photoCamera.path, 
    Assets.userIcons.fighterJetSilhouette.path, 
    Assets.userIcons.speechBubblesCommentOption.path
  ];
  List<String> get icons => _icons;

  String? _selectedIcon;
  String? get selectedIcon => _selectedIcon;
  
  void setSelectedIcon(String icon) {
    _selectedIcon = icon;
    notifyListeners();
  } 
}

//dont give up never give up