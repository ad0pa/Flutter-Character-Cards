import 'package:animeweb/Constants/Constants.dart';
import 'package:animeweb/Controller/ConstantExtention.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'Companents/ChampionCards.dart';
import 'Companents/WelcomeCard.dart';

void main() {
  runApp(const MainWebApplication() ,);
}

class MainWebApplication extends StatelessWidget {
  const MainWebApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Web Denemeleri",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: WebPage(),
    );
  }
}

class WebPage extends StatefulWidget {
  const WebPage({Key? key}) : super(key: key);

  @override
  _WebPageState createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child:Padding(
            padding: PaddingConstants.instance.VeryLowBigPad,
            child: Wrap(
              runSpacing: ContextExtension(context).dynwidth(0.06),
              children: [
                ChampionCard(),
                WelcomeCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip);
        }),
        actions: [
          Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                  child: Text("Animation Cards",
                      style: Theme.of(context).textTheme.headline6)))
        ]);
  }

}
