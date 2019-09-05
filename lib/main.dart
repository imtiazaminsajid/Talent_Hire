import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FlutterLogo(
          colors: Colors.green,
          size: 25.0,
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {

          },
          icon: Icon(Icons.arrow_back),
          color: Colors.grey,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {

            },
            icon: Icon(Icons.menu),
            color: Colors.grey,
          )
        ],

      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment(0.0, -0.4),
                height: 100.0,
                color: Colors.white,
                child: Text(
                  'Get Coaching',
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25.0, 80.0, 25.0, 0.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2.0,
                        color: Colors.grey
                    )
                  ],
                ),

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                          child: Text(
                            'YOU HAVE',
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Quicksand',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.fromLTRB(
                                  25.0, 40.0, 5.0, 25.0),
                              child: Text(
                                '200',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 0.0),
                              child: Icon(
                                Icons.favorite, color: Colors.red, size: 16,),
                            ),
                          ],
                        ),

//                        Container(
//                          padding: EdgeInsets.fromLTRB(25.0, 40.0, 5.0, 25.0),
//                          child: Text(
//                            '200',
//                            style: TextStyle(
//                              color: Colors.black,
//                              fontFamily: 'Quicksand',
//                              fontSize: 40.0,
//                              fontWeight: FontWeight.bold,
//                            ),
//                          ),
//                        ),
                      ],
                    ),
                    SizedBox(
                      width: 60.0,
                    ),
                    Container(
                      height: 50.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent[100].withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Text(
                          'Buy More',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Quicksand',
                            color: Colors.green,
                          ),

                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            width: 40,
            height: 30,
          ),
          Container(
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'MY COACHES',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'VIEW PAST SESSIONS',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          GridView.count(
            crossAxisCount: 2,
            primary: false,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 4.0,
            shrinkWrap: true,
            children: <Widget>[
              _buildCard('https://avatars1.githubusercontent.com/u/23582745?s=460&v=4','Sajid', 'Away', 1),
              _buildCard('https://cdn.vox-cdn.com/thumbor/SCCJbqNCgDjZbqQWVELGe-EJ84E=/512x512/cdn.vox-cdn.com/author_profile_images/191545/jbareham_170503_1707_0023..0.jpg','Imtiaz', 'Active', 2),
              _buildCard('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5fIPJ6-EHJd0Y4YuyMww6n30RyNV3okPt5hqnnm5E_pe1JFy_', 'Amin', 'Away', 3),
              _buildCard('https://yt3.ggpht.com/a-/ACSszfGI0pWy5qlJNkcOnYNNZGiGJ2Hu4fVycFNyJA=s900-mo-c-c0xffffffff-rj-k-no', 'Amin', 'Active', 4),
              _buildCard('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCdZhJ-R7GW3esRpZAVUL64InQTHvf7P9GVIz9bdZ4ktiaXWjCpQ', 'Sajid', 'Active', 5),
              _buildCard('https://yt3.ggpht.com/a-/ACSszfGI0pWy5qlJNkcOnYNNZGiGJ2Hu4fVycFNyJA=s900-mo-c-c0xffffffff-rj-k-no', 'Imtiaz', 'Away', 6),
              _buildCard('https://avatars1.githubusercontent.com/u/23582745?s=460&v=4', 'Amin', 'Active', 7),
              _buildCard('https://yt3.ggpht.com/a-/ACSszfGI0pWy5qlJNkcOnYNNZGiGJ2Hu4fVycFNyJA=s900-mo-c-c0xffffffff-rj-k-no', 'Sakib', 'Away', 8),
              _buildCard('https://avatars1.githubusercontent.com/u/23582745?s=460&v=4','Sajid', 'Away', 9),
              _buildCard('https://cdn.vox-cdn.com/thumbor/SCCJbqNCgDjZbqQWVELGe-EJ84E=/512x512/cdn.vox-cdn.com/author_profile_images/191545/jbareham_170503_1707_0023..0.jpg','Imtiaz', 'Active', 10),
              _buildCard('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5fIPJ6-EHJd0Y4YuyMww6n30RyNV3okPt5hqnnm5E_pe1JFy_', 'Zahid', 'Active', 11),
              _buildCard('https://yt3.ggpht.com/a-/ACSszfGI0pWy5qlJNkcOnYNNZGiGJ2Hu4fVycFNyJA=s900-mo-c-c0xffffffff-rj-k-no', 'Rashed', 'Away', 12),
              _buildCard('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCdZhJ-R7GW3esRpZAVUL64InQTHvf7P9GVIz9bdZ4ktiaXWjCpQ', 'Sajid', 'Active', 13),
              _buildCard('https://yt3.ggpht.com/a-/ACSszfGI0pWy5qlJNkcOnYNNZGiGJ2Hu4fVycFNyJA=s900-mo-c-c0xffffffff-rj-k-no', 'Imtiaz', 'Active', 14),
              _buildCard('https://avatars1.githubusercontent.com/u/23582745?s=460&v=4', 'Amin', 'Away', 15),
              _buildCard('https://yt3.ggpht.com/a-/ACSszfGI0pWy5qlJNkcOnYNNZGiGJ2Hu4fVycFNyJA=s900-mo-c-c0xffffffff-rj-k-no', 'Asif', 'Active', 16),

            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCard(String url, String name, String status, int cardIndex) {
    return Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)
        ),
        elevation: 7.0,
        child: Column(
          children: <Widget>[
            SizedBox(height: 12.0),
            Stack(
                children: <Widget>[
                  Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.green,
                        image: DecorationImage(
                            image: NetworkImage(
                                url,
                            )
                        )
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 40.0),
                    height: 20.0,
                    width: 20.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: status == 'Away' ? Colors.amber : Colors.green,
                        border: Border.all(
                            color: Colors.white,
                            style: BorderStyle.solid,
                            width: 2.0
                        )
                    ),
                  )
                ]),
            SizedBox(height: 8.0),
            Text(
              name,
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              status,
              style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                  color: Colors.grey
              ),
            ),
            SizedBox(height: 15.0),
            Expanded(
                child: Container(
                    width: 175.0,
                    decoration: BoxDecoration(
                      color: status == 'Away' ? Colors.grey : Colors.green,
                      borderRadius: BorderRadius.only
                        (
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0)
                      ),
                    ),
                    child: Center(
                      child: Text('Request',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'Quicksand'
                        ),
                      ),
                    )
                )
            )
          ],
        ),
        margin: cardIndex.isEven
            ? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0)
            : EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0)
    );
  }
}
