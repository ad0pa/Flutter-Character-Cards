

import 'dart:async';

import 'package:animeweb/Constants/Constants.dart';
import 'package:flutter/material.dart';
import 'package:animeweb/Controller/ConstantExtention.dart';

class WelcomeCard extends StatefulWidget {
  const WelcomeCard({Key? key}) : super(key: key);

  @override
  _WelcomeCardState createState() => _WelcomeCardState();
}

class _WelcomeCardState extends State<WelcomeCard> {
  bool _ContainerNumber=false;

  @override

  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: (){
          setState(() {
            _ContainerNumber=!_ContainerNumber;
          });
        },
        child: AnimatedContainer(
          width: _ContainerNumber? ContextExtension(context).dynwidth(1):ContextExtension(context).dynwidth(0.3),
          height: _ContainerNumber? ContextExtension(context).dynwidth(0.4):ContextExtension(context).dynwidth(0.06),
          decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadiusConstants.instance.RegularBorder
          ),
          curve: Curves.linear,
          duration: Duration(seconds: 1),
          child: _ContainerNumber?
          Container(
            margin: PaddingConstants.instance.VLP,
            decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadiusConstants.instance.RegularBorder
            ),
            child:FutureBuilder(
              future: getData(),
              builder: (context,snapshot){
                if(snapshot.hasData)
                  {
                    return Padding(
                      padding: PaddingConstants.instance.VeryLowMediumPad,
                      child: Column(

                        children: [
                          Expanded(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.centerLeft,
                                child: ListTile(
                                  title: Text("Maceraya Sürüklen",style: TextStyle(color: Colors.black54,fontSize: ContextExtension(context).dynwidth(0.04),fontWeight: FontWeight.w600)),
                                  subtitle: Text("Birbirinden farklı etkinliklere festivallere hazırlan!",style: TextStyle(color: Colors.black54,fontSize: ContextExtension(context).dynwidth(0.022),fontWeight: FontWeight.w400)),
                                  trailing: Icon(Icons.api,size: ContextExtension(context).dynwidth(0.04).toDouble(),),
                                  iconColor: Colors.black54,
                                ),),
                          ),
                          Expanded(
                            flex:2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly  ,
                              children: [
                                Container(
                                  width: ContextExtension(context).dynwidth(0.25),

                                  child: ClipRRect(
                                      child: Image.asset("assets/Fest0.jpg",
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadiusConstants.instance.LowBorder),
                                  padding: PaddingConstants.instance.LowPad,
                                ),
                                Container(
                                  width: ContextExtension(context).dynwidth(0.25),

                                  child: ClipRRect(
                                      child: Image.asset("assets/Fast1.jpg",
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadiusConstants.instance.LowBorder),
                                  padding: PaddingConstants.instance.LowPad,
                                ),
                                Container(
                                  width: ContextExtension(context).dynwidth(0.25),

                                  child: ClipRRect(
                                      child: Image.asset("assets/Fast2.jpg",
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadiusConstants.instance.LowBorder),
                                  padding: PaddingConstants.instance.LowPad,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                else
                  {
                   return Center(child: CircularProgressIndicator());
                  }
              },
            ),
          ):
          Center(child: Text("Görünürlüğü Aç",style: TextStyle(color: Colors.black),)),
        ),
      ),
    );
  }

  Future getData() async{
    await Future.delayed(Duration(seconds: 2));
    return 0;
  }


}
