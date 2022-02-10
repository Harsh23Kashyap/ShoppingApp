import 'package:basic_app/models/catalog.dart';
import 'package:basic_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/src/flutter/padding.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        backgroundColor: context.canvasColor,
        bottomNavigationBar: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "₹ ${catalog.price}".text.bold.xl4.blue500.make(),
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(context.theme.buttonColor),
                    shape: MaterialStateProperty.all(StadiumBorder())),
                child: "Add to Cart".text.make())
          ],
        ).p(32),
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(catalog.image),
              ).h32(context),
              Expanded(
                  child: VxArc(
                      height: 30,
                      arcType: VxArcType.CONVEY,
                      edge: VxEdge.TOP,
                      child: Container(
                        color: context.cardColor,
                        width: context.screenWidth,
                        child: Column(children: [
                          catalog.name.text.xl4
                              .color(context.accentColor)
                              .bold
                              .make(),
                          catalog.desc.text.lg.italic
                              .color(context.theme.buttonColor)
                              .make(),
                          10.heightBox,
                          "This products is amazing and you can buy it an amazing price. It is recommended by millions of users and you will love it when you use it. Personally used by best in the industry, you should definetely try this. The specifications are top notch and it is based on the philosphy of never settle. The new edge technology is world promising.  "
                              .text
                              .gray600
                              .make()
                              .p8()
                        ]).py64(),
                      )))
            ],
          ),
        ));
  }
}
