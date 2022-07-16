

import 'dart:html';

import 'package:animeweb/Constants/Constants.dart';
import 'package:animeweb/Controller/ConstantExtention.dart';
import 'package:flutter/material.dart';
import 'package:animeweb/Constants//Data.dart';



class ChampionCard extends StatelessWidget {
  ChampionCard({Key? key}) : super(key: key);

  PageController controller = PageController(initialPage: 0);
  int controllernumber=0;
  PageController controller2 = PageController(initialPage: 0);
  int controllernumber2=0;
  PageController controller3 = PageController(initialPage: 0);
  int controllernumber3=0;
  var ChampionCards = Bilgiler.instance.ChampionCards;


  @override
  Widget build(BuildContext context) {
    return Center(child: context.dynwidth(1) > 650 ?
    buildRow(context) :
    buildWrap(context));
  }

  Wrap buildWrap(BuildContext context) {
    return Wrap(
    runSpacing: ContextExtension(context).dynwidth(0.1),

    children: [
      InkWell(
          onTap: () {
            controllernumber += 1;
            if (controllernumber == 3) controllernumber = 0;
            controller.animateToPage(controllernumber,
                duration: Duration(seconds: 1), curve: Curves.linear);
          },
          child: Container(
              width: ContextExtension(context).dynwidth(0.6),

              decoration: BoxDecoration(
                  borderRadius: BorderRadiusConstants.instance.LowBorder,
                  color: Colors.lightBlueAccent),
              child: Column(children: [
                ListTile(
                    title: Text("${ChampionCards['Karakter_ad']}",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: ContextExtension(context).dynwidth(0.04))),
                    leading: Icon(Icons.ac_unit, size: ContextExtension(context).dynwidth(0.08).toDouble()),
                    trailing: Icon(Icons.card_membership,size:ContextExtension(context).dynwidth(0.055).toDouble()),
                    subtitle: Text("${ChampionCards['Karakter_unvan']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.03)),),
                    iconColor: Colors.black87,
                    textColor: Colors.black87),
                Container(
                  width: double.maxFinite,
                  height: ContextExtension(context).dynmheight(0.65),
                  child: PageView(
                    controller: controller,
                    scrollDirection: Axis.horizontal,
                    physics: PageScrollPhysics(),
                    children: [
                      Container(
                        child: ClipRRect(
                            child: Image.asset("${ChampionCards['Karakter_resim01']}",
                                fit: BoxFit.cover),
                            borderRadius: BorderRadiusConstants.instance.VeryLowBorder),
                        padding: PaddingConstants.instance.LowPad,
                      ),
                      Container(
                        padding: PaddingConstants.instance.LowPad,
                        margin: PaddingConstants.instance.LowPad,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusConstants.instance.LowBorder,
                            color: Colors.black45),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                  height: ContextExtension(context).dynmheight(0.57),
                                  child: ClipRRect(
                                      child: Image.asset("${ChampionCards['Karakter_resim02']}",
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadiusConstants.instance.VeryLowBorder),
                                )),
                            Expanded(
                                flex: 1,
                                child: Container(
                                  child: Column(
                                    children: [
                                      ListTile(
                                          title: Text("Rol",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.035))),
                                          subtitle: Text("${ChampionCards['Karakter_rol']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.027)))),
                                      ListTile(
                                          title: Text("Zorluk",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.035))),
                                          subtitle: Text("${ChampionCards['Karakter_zorluk']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.027)))),
                                      ListTile(
                                          title: Text("Koridor",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.035))),
                                          subtitle: Text("${ChampionCards['Karakter_koridor']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.027)))),
                                      ListTile(
                                          title: Text("Yetenek",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.035))),
                                          subtitle: Text("${ChampionCards['Karakter_yetenek']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.027)))),
                                      ListTile(
                                          title: Text("Güç",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.035))),
                                          subtitle: Text("${ChampionCards['Karakter_güc']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.027)))),
                                      ListTile(
                                          title: Text("Bölge",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.035))),
                                          subtitle: Text("${ChampionCards['Karakter_bölge']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.027)))),
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Container(
                        padding: PaddingConstants.instance.LowPad,
                        margin: PaddingConstants.instance.LowPad,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusConstants.instance.LowBorder,
                            color: Colors.white24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("${ChampionCards['Karakter_hik']}",
                                style: TextStyle(
                                    color: Colors.black, fontSize: ContextExtension(context).dynwidth(0.04))),
                            Text(
                                "${ChampionCards['Karakter_hikaye']}",
                                style: TextStyle(color: Colors.black45,fontSize: ContextExtension(context).dynwidth(0.025)),
                                textAlign: TextAlign.justify)
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ]))),
      InkWell(
          onTap: () {
            controllernumber2 += 1;
            if (controllernumber2 == 3) controllernumber2 = 0;
            controller2.animateToPage(controllernumber2,
                duration: Duration(seconds: 1), curve: Curves.linear);
          },
          child: Container(
              width: ContextExtension(context).dynwidth(0.6),

              decoration: BoxDecoration(
                  borderRadius: BorderRadiusConstants.instance.LowBorder,
                  color: Colors.redAccent),
              child: Column(children: [
                ListTile(
                    title: Text("${ChampionCards['1Karakter_ad']}",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: ContextExtension(context).dynwidth(0.04))),
                    leading: Icon(Icons.ac_unit, size: ContextExtension(context).dynwidth(0.08).toDouble()),
                    trailing: Icon(Icons.card_membership,size:ContextExtension(context).dynwidth(0.055).toDouble()),
                    subtitle: Text("${ChampionCards['1Karakter_unvan']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.03)),),
                    iconColor: Colors.black87,
                    textColor: Colors.black87),
                Container(
                  width: double.maxFinite,
                  height: ContextExtension(context).dynmheight(0.65),
                  child: PageView(
                    controller: controller2,
                    scrollDirection: Axis.horizontal,
                    physics: PageScrollPhysics(),
                    children: [
                      Container(
                        child: ClipRRect(
                            child: Image.asset("${ChampionCards['1Karakter_resim01']}",
                                fit: BoxFit.cover),
                            borderRadius: BorderRadiusConstants.instance.VeryLowBorder),
                        padding: PaddingConstants.instance.LowPad,
                      ),
                      Container(
                        padding: PaddingConstants.instance.LowPad,
                        margin: PaddingConstants.instance.LowPad,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusConstants.instance.LowBorder,
                            color: Colors.black45),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                  height: ContextExtension(context).dynmheight(0.57),
                                  child: ClipRRect(
                                      child: Image.asset("${ChampionCards['1Karakter_resim02']}",
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadiusConstants.instance.VeryLowBorder),
                                )),
                            Expanded(
                                flex: 1,
                                child: Container(
                                  child: Column(
                                    children: [
                                      ListTile(
                                          title: Text("Rol",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.035))),
                                          subtitle: Text("${ChampionCards['1Karakter_rol']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.027)))),
                                      ListTile(
                                          title: Text("Zorluk",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.035))),
                                          subtitle: Text("${ChampionCards['1Karakter_zorluk']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.027)))),
                                      ListTile(
                                          title: Text("Koridor",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.035))),
                                          subtitle: Text("${ChampionCards['1Karakter_koridor']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.027)))),
                                      ListTile(
                                          title: Text("Yetenek",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.035))),
                                          subtitle: Text("${ChampionCards['1Karakter_yetenek']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.027)))),
                                      ListTile(
                                          title: Text("Güç",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.035))),
                                          subtitle: Text("${ChampionCards['1Karakter_güc']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.027)))),
                                      ListTile(
                                          title: Text("Bölge",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.035))),
                                          subtitle: Text("${ChampionCards['1Karakter_bölge']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.027)))),
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Container(
                        padding: PaddingConstants.instance.LowPad,
                        margin: PaddingConstants.instance.LowPad,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusConstants.instance.LowBorder,
                            color: Colors.white24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("${ChampionCards['1Karakter_hik']}",
                                style: TextStyle(
                                    color: Colors.black, fontSize: ContextExtension(context).dynwidth(0.04))),
                            Text(
                                "${ChampionCards['1Karakter_hikaye']}",
                                style: TextStyle(color: Colors.black45,fontSize: ContextExtension(context).dynwidth(0.025)),
                                textAlign: TextAlign.justify)
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ]))),
      InkWell(
          onTap: () {
            controllernumber3 += 1;
            if (controllernumber3 == 3) controllernumber3 = 0;
            controller3.animateToPage(controllernumber3,
                duration: Duration(seconds: 1), curve: Curves.linear);
          },
          child: Container(
              width: ContextExtension(context).dynwidth(0.6),

              decoration: BoxDecoration(
                  borderRadius: BorderRadiusConstants.instance.LowBorder,
                  color: Colors.greenAccent),
              child: Column(children: [
                ListTile(
                    title: Text("${ChampionCards['2Karakter_ad']}",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: ContextExtension(context).dynwidth(0.04))),
                    leading: Icon(Icons.ac_unit, size: ContextExtension(context).dynwidth(0.08).toDouble()),
                    trailing: Icon(Icons.card_membership,size:ContextExtension(context).dynwidth(0.055).toDouble()),
                    subtitle: Text("${ChampionCards['2Karakter_unvan']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.03)),),
                    iconColor: Colors.black87,
                    textColor: Colors.black87),
                Container(
                  width: double.maxFinite,
                  height: ContextExtension(context).dynmheight(0.65),
                  child: PageView(
                    controller: controller3,
                    scrollDirection: Axis.horizontal,
                    physics: PageScrollPhysics(),
                    children: [
                      Container(
                        child: ClipRRect(
                            child: Image.asset("${ChampionCards['2Karakter_resim01']}",
                                fit: BoxFit.cover),
                            borderRadius: BorderRadiusConstants.instance.VeryLowBorder),
                        padding: PaddingConstants.instance.LowPad,
                      ),
                      Container(
                        padding: PaddingConstants.instance.LowPad,
                        margin: PaddingConstants.instance.LowPad,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusConstants.instance.LowBorder,
                            color: Colors.black45),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                  height: ContextExtension(context).dynmheight(0.57),
                                  child: ClipRRect(
                                      child: Image.asset("${ChampionCards['2Karakter_resim02']}",
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadiusConstants.instance.VeryLowBorder),
                                )),
                            Expanded(
                                flex: 1,
                                child: Container(
                                  child: Column(
                                    children: [
                                      ListTile(
                                          title: Text("Rol",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.035))),
                                          subtitle: Text("${ChampionCards['2Karakter_rol']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.027)))),
                                      ListTile(
                                          title: Text("Zorluk",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.035))),
                                          subtitle: Text("${ChampionCards['2Karakter_zorluk']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.027)))),
                                      ListTile(
                                          title: Text("Koridor",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.035))),
                                          subtitle: Text("${ChampionCards['2Karakter_koridor']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.027)))),
                                      ListTile(
                                          title: Text("Yetenek",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.035))),
                                          subtitle: Text("${ChampionCards['2Karakter_yetenek']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.027)))),
                                      ListTile(
                                          title: Text("Güç",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.035))),
                                          subtitle: Text("${ChampionCards['2Karakter_güc']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.027)))),
                                      ListTile(
                                          title: Text("Bölge",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.035))),
                                          subtitle: Text("${ChampionCards['2Karakter_bölge']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.027)))),
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Container(
                        padding: PaddingConstants.instance.LowPad,
                        margin: PaddingConstants.instance.LowPad,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusConstants.instance.LowBorder,
                            color: Colors.white24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("${ChampionCards['2Karakter_hik']}",
                                style: TextStyle(
                                    color: Colors.black, fontSize: ContextExtension(context).dynwidth(0.04))),
                            Text(
                                "${ChampionCards['2Karakter_hikaye']}",
                                style: TextStyle(color: Colors.black45,fontSize: ContextExtension(context).dynwidth(0.025)),
                                textAlign: TextAlign.justify)
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ]))),

    ],);
  }

  Row buildRow(BuildContext context) {
    return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      InkWell(
          onTap: () {
            controllernumber += 1;
            if (controllernumber == 3) controllernumber = 0;
            controller.animateToPage(controllernumber,
                duration: Duration(seconds: 1), curve: Curves.linear);
          },
          child: Container(
              width: ContextExtension(context).dynwidth(0.24),
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusConstants.instance.LowBorder,
                  color: Colors.lightBlueAccent),
              child: Column(children: [
                ListTile(
                    title: Text("${ChampionCards['Karakter_ad']}",
                    style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w500, fontSize: ContextExtension(context).dynwidth(0.015))),
                    leading: Icon(Icons.ac_unit, size:ContextExtension(context).dynwidth(0.03).toDouble()),
                    trailing: Icon(Icons.card_membership,size:ContextExtension(context).dynwidth(0.02).toDouble()),
                    subtitle: Text("${ChampionCards['Karakter_unvan']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.011)),),
                    iconColor: Colors.black87,
                    textColor: Colors.black87),
                Container(
                  width: double.maxFinite,
                  height: ContextExtension(context).dynmheight(0.65),
                  child: PageView(
                    controller: controller,
                    scrollDirection: Axis.horizontal,
                    physics: PageScrollPhysics(),
                    children: [
                      Container(
                        child: ClipRRect(
                            child: Image.asset("${ChampionCards['Karakter_resim01']}",
                                fit: BoxFit.cover),
                            borderRadius: BorderRadiusConstants.instance.VeryLowBorder),
                        padding: PaddingConstants.instance.LowPad,
                      ),
                      Container(
                        padding: PaddingConstants.instance.LowPad,
                        margin: PaddingConstants.instance.LowPad,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusConstants.instance.LowBorder,
                            color: Colors.black45),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                  height: ContextExtension(context).dynmheight(0.55),
                                  child: ClipRRect(
                                      child: Image.asset("${ChampionCards['Karakter_resim02']}",
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadiusConstants.instance.VeryLowBorder),
                                )),
                            Expanded(
                                flex: 1,
                                child: Container(
                                  child: Column(
                                    children: [
                                      ListTile(
                                          title: Text("Rol",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.013))),
                                          subtitle: Text("${ChampionCards['Karakter_rol']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.010)))),
                                      ListTile(
                                          title: Text("Zorluk",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.013))),
                                          subtitle: Text("${ChampionCards['Karakter_zorluk']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.010)))),
                                      ListTile(
                                          title: Text("Koridor",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.013))),
                                          subtitle: Text("${ChampionCards['Karakter_koridor']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.010)))),
                                      ListTile(
                                          title: Text("Yetenek",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.013))),
                                          subtitle: Text("${ChampionCards['Karakter_yetenek']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.010)))),
                                      ListTile(
                                          title: Text("Güç",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.013))),
                                          subtitle: Text("${ChampionCards['Karakter_güc']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.010)))),
                                      ListTile(
                                          title: Text("Bölge",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.013))),
                                          subtitle: Text("${ChampionCards['Karakter_bölge']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.010)))),
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Container(
                        padding: PaddingConstants.instance.LowPad,
                        margin: PaddingConstants.instance.LowPad,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusConstants.instance.LowBorder,
                            color: Colors.white24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("${ChampionCards['Karakter_hik']}",
                                style: TextStyle(color: Colors.black, fontSize: ContextExtension(context).dynwidth(0.016))),
                            Text(
                                "${ChampionCards['Karakter_hikaye']}",
                                style: TextStyle(color: Colors.black45,fontSize: ContextExtension(context).dynwidth(0.011)),
                                textAlign: TextAlign.justify)
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ]))),
      InkWell(
          onTap: () {
            controllernumber2 += 1;
            if (controllernumber2 == 3) controllernumber2 = 0;
            controller2.animateToPage(controllernumber2,
                duration: Duration(seconds: 1), curve: Curves.linear);
          },
          child: Container(
              width: ContextExtension(context).dynwidth(0.24),
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusConstants.instance.LowBorder,
                  color: Colors.redAccent),
              child: Column(children: [
                ListTile(
                    title: Text("${ChampionCards['1Karakter_ad']}",
                        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w500, fontSize: ContextExtension(context).dynwidth(0.015))),
                    leading: Icon(Icons.ac_unit, size:ContextExtension(context).dynwidth(0.03).toDouble()),
                    trailing: Icon(Icons.card_membership,size:ContextExtension(context).dynwidth(0.02).toDouble()),
                    subtitle: Text("${ChampionCards['1Karakter_unvan']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.011)),),
                    iconColor: Colors.black87,
                    textColor: Colors.black87),
                Container(
                  width: double.maxFinite,
                  height: ContextExtension(context).dynmheight(0.65),
                  child: PageView(
                    controller: controller2,
                    scrollDirection: Axis.horizontal,
                    physics: PageScrollPhysics(),
                    children: [
                      Container(
                        child: ClipRRect(
                            child: Image.asset("${ChampionCards['1Karakter_resim01']}",
                                fit: BoxFit.cover),
                            borderRadius: BorderRadiusConstants.instance.VeryLowBorder),
                        padding: PaddingConstants.instance.LowPad,
                      ),
                      Container(
                        padding: PaddingConstants.instance.LowPad,
                        margin: PaddingConstants.instance.LowPad,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusConstants.instance.LowBorder,
                            color: Colors.black45),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                  height: ContextExtension(context).dynmheight(0.55),
                                  child: ClipRRect(
                                      child: Image.asset("${ChampionCards['1Karakter_resim02']}",
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadiusConstants.instance.VeryLowBorder),
                                )),
                            Expanded(
                                flex: 1,
                                child: Container(
                                  child: Column(
                                    children: [
                                      ListTile(
                                          title: Text("Rol",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.013))),
                                          subtitle: Text("${ChampionCards['1Karakter_rol']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.010)))),
                                      ListTile(
                                          title: Text("Zorluk",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.013))),
                                          subtitle: Text("${ChampionCards['1Karakter_zorluk']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.010)))),
                                      ListTile(
                                          title: Text("Koridor",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.013))),
                                          subtitle: Text("${ChampionCards['1Karakter_koridor']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.010)))),
                                      ListTile(
                                          title: Text("Yetenek",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.013))),
                                          subtitle: Text("${ChampionCards['1Karakter_yetenek']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.010)))),
                                      ListTile(
                                          title: Text("Güç",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.013))),
                                          subtitle: Text("${ChampionCards['1Karakter_güc']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.010)))),
                                      ListTile(
                                          title: Text("Bölge",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.013))),
                                          subtitle: Text("${ChampionCards['1Karakter_bölge']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.010)))),
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Container(
                        padding: PaddingConstants.instance.LowPad,
                        margin: PaddingConstants.instance.LowPad,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusConstants.instance.LowBorder,
                            color: Colors.white24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("${ChampionCards['1Karakter_hik']}",
                                style: TextStyle(color: Colors.black, fontSize: ContextExtension(context).dynwidth(0.016))),
                            Text(
                                "${ChampionCards['1Karakter_hikaye']}",
                                style: TextStyle(color: Colors.black45,fontSize: ContextExtension(context).dynwidth(0.011)),
                                textAlign: TextAlign.justify)
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ]))),
      InkWell(
          onTap: () {
            controllernumber3 += 1;
            if (controllernumber3 == 3) controllernumber3 = 0;
            controller3.animateToPage(controllernumber3,
                duration: Duration(seconds: 1), curve: Curves.linear);
          },
          child: Container(
              width: ContextExtension(context).dynwidth(0.24),
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusConstants.instance.LowBorder,
                  color: Colors.greenAccent),
              child: Column(children: [
                ListTile(
                    title: Text("${ChampionCards['2Karakter_ad']}",
                        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w500, fontSize: ContextExtension(context).dynwidth(0.015))),
                    leading: Icon(Icons.ac_unit, size:ContextExtension(context).dynwidth(0.03).toDouble()),
                    trailing: Icon(Icons.card_membership,size:ContextExtension(context).dynwidth(0.02).toDouble()),
                    subtitle: Text("${ChampionCards['2Karakter_unvan']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.011)),),
                    iconColor: Colors.black87,
                    textColor: Colors.black87),
                Container(
                  width: double.maxFinite,
                  height: ContextExtension(context).dynmheight(0.65),
                  child: PageView(
                    controller: controller3,
                    scrollDirection: Axis.horizontal,
                    physics: PageScrollPhysics(),
                    children: [
                      Container(
                        child: ClipRRect(
                            child: Image.asset("${ChampionCards['2Karakter_resim01']}",
                                fit: BoxFit.cover),
                            borderRadius: BorderRadiusConstants.instance.VeryLowBorder),
                        padding: PaddingConstants.instance.LowPad,
                      ),
                      Container(
                        padding: PaddingConstants.instance.LowPad,
                        margin: PaddingConstants.instance.LowPad,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusConstants.instance.LowBorder,
                            color: Colors.black45),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                  height: ContextExtension(context).dynmheight(0.55),
                                  child: ClipRRect(
                                      child: Image.asset("${ChampionCards['2Karakter_resim02']}",
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadiusConstants.instance.VeryLowBorder),
                                )),
                            Expanded(
                                flex: 1,
                                child: Container(
                                  child: Column(
                                    children: [
                                      ListTile(
                                          title: Text("Rol",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.013))),
                                          subtitle: Text("${ChampionCards['2Karakter_rol']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.010)))),
                                      ListTile(
                                          title: Text("Zorluk",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.013))),
                                          subtitle: Text("${ChampionCards['2Karakter_zorluk']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.010)))),
                                      ListTile(
                                          title: Text("Koridor",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.013))),
                                          subtitle: Text("${ChampionCards['2Karakter_koridor']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.010)))),
                                      ListTile(
                                          title: Text("Yetenek",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.013))),
                                          subtitle: Text("${ChampionCards['2Karakter_yetenek']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.010)))),
                                      ListTile(
                                          title: Text("Güç",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.013))),
                                          subtitle: Text("${ChampionCards['2Karakter_güc']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.010)))),
                                      ListTile(
                                          title: Text("Bölge",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.013))),
                                          subtitle: Text("${ChampionCards['2Karakter_bölge']}",style: TextStyle(fontSize: ContextExtension(context).dynwidth(0.010)))),
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Container(
                        padding: PaddingConstants.instance.LowPad,
                        margin: PaddingConstants.instance.LowPad,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusConstants.instance.LowBorder,
                            color: Colors.white24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("${ChampionCards['2Karakter_hik']}",
                                style: TextStyle(color: Colors.black, fontSize: ContextExtension(context).dynwidth(0.016))),
                            Text(
                                "${ChampionCards['2Karakter_hikaye']}",
                                style: TextStyle(color: Colors.black45,fontSize: ContextExtension(context).dynwidth(0.011)),
                                textAlign: TextAlign.justify)
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ]))),

    ],
  );
  }
}





