import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Homepage',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget Examples'),
          centerTitle: true,
          actions: <Widget> [
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications),)
          ],
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () { },
          ),
        ),
        body: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            Text(
              'Welcome to Flutter',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100.0,
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        'Row Widget =' ,
                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: Container(
                    height: 100.0,
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        'Displays in horizondal array',
                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Column(
              children: [
                Container(
                  height: 150.0,
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      'Column Widget = ',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Container(
                  height: 150.0,
                  color: Colors.orange,
                  child: Center(
                    child: Text(
                      'Dispalys in Vertical Array',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                Card(
                  child: Center(
                    child: Text('Grid Widget =' ),
                  ),
                ),
                Card(
                  child: Center(
                    child: Text('Scrollable'),
                  ),
                ),
                Card(
                  child: Center(
                    child: Text('creates a layout with tiles'),
                  ),
                ),
                Card(
                  child: Center(
                    child: Text('2D array of Widgets'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    width: 200.0,
                    height: 100.0,
                    color: Colors.purple,
                  ),
                ),
                Text(
                  'Flutter Image',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 16.0),

            Image
              (image: NetworkImage('https://1.bp.blogspot.com/-ak_aEW48mmA/XNCDH1UYfaI/AAAAAAAAHeg/NUhgwcoZX2Ei7exfQreLRSmOfPtxdCReQCLcBGAs/s1600/image2.png',
            )
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {},
              child: Text('Elevated Button'),
            ),
            SizedBox(height: 16.0),
            TextButton(
              onPressed: () {},
              child: Text('Text Button'),
            ),
            SizedBox(height: 16.0),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('This is a padded text'),
            ),
            SizedBox(height: 16.0),
            Card(
              child: ListTile(
                leading: Icon(Icons.star),
                title: Text('Card Item'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
