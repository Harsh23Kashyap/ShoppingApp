import 'package:basic_app/models/catalog.dart';
import 'package:basic_app/widgets/item_widgets.dart';
import 'package:basic_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';
import 'package:velocity_x/src/extensions/num_ext.dart';
import 'package:velocity_x/src/extensions/string_ext.dart';
import 'package:velocity_x/src/flutter/padding.dart';
import 'package:velocity_x/src/flutter/sizedbox.dart';
import 'package:velocity_x/src/flutter/widgets.dart';

import 'home_widgets/catalog_list.dart';
import 'homedetail_page.dart';

import 'package:animated_text_kit/animated_text_kit.dart';

const colorizeColors = [
  Colors.blueAccent,
  Colors.black,
  Colors.lightBlueAccent,
  Colors.white,
];

const colorizeTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Horizon',
);

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.canvasColor,
        appBar: AppBar(
          title: "Cart".text.make(),
        ),
        body: Column(
          children: [
            _CartList().p(32).expand(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    ColorizeAnimatedText(
                      'Thank You for Shopping!!!',
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            _CartTotal(),
          ],
        ));
  }
}

class _CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          "₹ 99999".text.xl4.color(context.theme.accentColor).make(),
          30.widthBox,
          ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: "Buying not supported yet!!!".text.make(),
                    ));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(context.theme.buttonColor)),
                  child: "Buy".text.white.make())
              .w32(context)
        ],
      ),
    );
  }
}

class _CartList extends StatefulWidget {
  const _CartList({Key? key}) : super(key: key);

  @override
  __CartListState createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  final dummylist = List.generate(1, (index) => CatalogModel.items[0]);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: dummylist.length,
      itemBuilder: (context, index) {
        return ItemWidget(item: dummylist[index]);
        ;
      },
    );
  }
}
