import 'package:admin_app/homePage.dart';
import 'package:flutter/material.dart';

class RoutAdd extends StatefulWidget {
  const RoutAdd({super.key});

  @override
  State<RoutAdd> createState() => _RoutAddState();
}

class _RoutAddState extends State<RoutAdd> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(

          title: Row(
            children: [
              Text(
                "Add Routes",
              ),
             ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder:(context) => HomePage()));}, child: Row(
             children: [Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text("Confirm"),
             ),
               Icon(Icons.check)
             ],  
               
             ))
            ],
          ),
          backgroundColor: Colors.black45,
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: ((BuildContext context) {
                    return SimpleDialog(
                      title: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 8, 17, 8),
                        child: Row(
                          children: [
                            Text("Add Route"),
                            SizedBox(width: 10,)
                          ],
                        ),
                      ),
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                onChanged: (value) {},
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                onChanged: (value) {},
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("Add"),
                              ),
                            )
                          ],
                        )
                      ],
                    );
                  }));
            },
            child: Icon(Icons.add)),
        body: ListView.builder(
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
              child: Material(
                elevation: 20,
                child: ListTile(
                  leading: Icon(Icons.arrow_downward_sharp),
                  title: Text(
                    "$index",
                  ),
                  shape: Border(
                      left: BorderSide(color: Colors.white),
                      bottom: BorderSide(color: Colors.white)),
                ),
              ),
            );
          }),
          itemCount: 4,
        ),
      ),
    );
  }
}