import 'package:flutter/cupertino.dart';

abstract class Languages {

  static Languages? of(BuildContext context) {
    return Localizations.of<Languages>(context, Languages);
  }

  String get appName;

  String get labelWelcome;

  String get labelInfo;

  String get labelSelectLanguage;

  String get email;

  String get password;
  String get signIn;
  String get signUp;
  String get OR;


  //screens
  String get settings;

}
