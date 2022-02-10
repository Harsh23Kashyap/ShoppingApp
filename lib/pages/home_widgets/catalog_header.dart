import 'package:basic_app/widgets/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';
import 'package:velocity_x/src/extensions/string_ext.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      "Shopping App".text.xl5.bold.color(context.theme.accentColor).make(),
      "Trending Products".text.xl2.color(context.theme.buttonColor).make(),
    ]);
  }
}
