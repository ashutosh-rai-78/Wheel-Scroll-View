import 'package:flutter/material.dart';

class ListWheelView extends StatefulWidget {
  const ListWheelView({Key? key}) : super(key: key);

  @override
  _ListWheelViewState createState() => _ListWheelViewState();
}

class _ListWheelViewState extends State<ListWheelView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wheel Scroll View",) ,
      ),
      body: ListWheelScrollView.useDelegate(
        itemExtent: 75,
        childDelegate: ListWheelChildBuilderDelegate(
          builder: (BuildContext context, int index) {
            if (index < 0 || index > 8) {
              return null;
            }
            return ListTile(
              leading: Text(
                "$index",
                style: TextStyle(fontSize: 50),
              ),
              title: Text("Title $index"),
              subtitle: Text('Description here'),
            );
          },
        ),
      ),
    );
  }
}