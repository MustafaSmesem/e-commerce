import 'package:ecommerce/localization/language.dart';
import 'package:ecommerce/localization/locale_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: Colors.green,
        ),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xffccaaff),
              ),
              child: Text(Localizations.of(context, Languages).settings),
            ),
            Row(
              children: [
                OutlinedButton(
                  onPressed: () {
                    changeLanguage(context, "ar");
                  },
                  child: const Text("العربية"),
                ),
                OutlinedButton(
                  onPressed: () {
                    changeLanguage(context, "en");
                  },
                  child: const Text("English"),
                ),
              ],
            ),
          ],
        ));
  }
}
