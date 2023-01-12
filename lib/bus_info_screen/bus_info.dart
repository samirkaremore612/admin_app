import 'package:admin_app/globals.dart';
import 'package:flutter/material.dart';

class BusInfo extends StatefulWidget {
  const BusInfo({Key? key}) : super(key: key);

  @override
  State<BusInfo> createState() => _BusInfoState();
}

class _BusInfoState extends State<BusInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Bus No $BusSrNo"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
       children: [

          Padding(
            padding: const EdgeInsets.fromLTRB(8, 30, 8, 10),
            child: Row(children: [
              Container(

                color: Colors.black12,
                child: Text("Start location"),),
              SizedBox(width: 10,),
              Icon(Icons.arrow_forward),
              SizedBox(width: 10,),
              Container(
                color: Colors.black12,
                child: Text("End location"),),
            ],),
          ),

        ],
      ),
    );
  }
}



