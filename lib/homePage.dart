import 'package:admin_app/add_bus_screens/bus_credetials_input.dart';
import 'package:admin_app/bus_info_screen/bus_info.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String>itemlist=['Bus 1','Bus 2','Bus 3','Bus 4'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder:(context) => CredInputScreen()));
        },
        icon: const Icon(Icons.add),
        label: const Text('Add Bus',),
        backgroundColor: Colors.blue,
      ),



      appBar: AppBar(title: Text("Add bus"),
      backgroundColor: Colors.black,),
      body:
      ListView.builder(
            itemCount: 4,
            itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(11.0),
                child: Card(
                    child: InkWell(
                      onTap: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder:(context) => BusInfo()));
                      },
                      child: ListTile(
                        title:Text(itemlist[index]),

                      ),
                    )
                ),
              );
            }
        ),

    );
  }
}
