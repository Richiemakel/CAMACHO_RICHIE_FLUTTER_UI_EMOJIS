import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
      ),
      appBar: AppBar(

        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              width: 50,
              height: 65,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.lightBlueAccent,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/tuxedo.png',
                    ),

                  )
              ),),
          ),
        ],
        backgroundColor: Colors.grey[200],
        elevation: 50.0,
        leading: Icon(Icons.menu),
      ),
      
      body: SingleChildScrollView(
        child: Center(
          
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 150,
                  height: 80,
                  child: Text(
                    'SEARCH FOR \n RECIPES',
                    style: TextStyle(
                        fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 50.0,
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.grey[200],
                  ),
                  padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                    child: TextField(
                    decoration: InputDecoration(
                      hintText: "SEARCH",
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,



                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(

                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        width: 150,
                        height: 80,
                      child: Text(
                      "Recommended",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),
                    ),

                    )

                ),

                ),
              ),


            Container(
                margin: EdgeInsets.symmetric(vertical: 5.0),
                height: 225.0,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: 180.0,
                            decoration: BoxDecoration(
                              color: Colors.orange.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          child:Column(

                          children: <Widget>[
                            Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                width: 150,
                                height: 80,
                                decoration: BoxDecoration(
                                  //borderRadius: BorderRadius.circular(10.0),
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child:
                                Image(
                                    image: AssetImage('assets/burger.png'),

                                ),
                              ),
                            ),
                          ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Column(
                                  children: [
                                    Text(
                                        "Hamburger",
                                style: TextStyle(
                                  color: Colors.orangeAccent,
                                    fontWeight: FontWeight.bold
                                ),
                                    ),
                                    Text(
                                        "   £21",
                                      style: TextStyle(
                                        color: Colors.orangeAccent,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                ),
                              )
                            )
                         ] )

                      ),
                    ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 180.0,

                          decoration: BoxDecoration(
                            color: Colors.lightBlue.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        child: Column(

                            children: <Widget>[
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 150,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      //borderRadius: BorderRadius.circular(10.0),
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child:
                                    Image(
                                      image: AssetImage('assets/fries.png'),
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Text(
                                        "Chips",
                                        style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      Text(
                                        "   £15",
                                        style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontWeight: FontWeight.bold
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ] ),
                    ),
          ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: 180.0,
                            decoration: BoxDecoration(
                              color: Colors.lightGreenAccent.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child:Column(

                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Container(
                                        width: 150,
                                        height: 80,
                                        decoration: BoxDecoration(
                                          //borderRadius: BorderRadius.circular(10.0),
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                        ),
                                        child:
                                        Image(
                                          image: AssetImage('assets/cheese.png'),

                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        child: Column(
                                          children: [
                                            Text(
                                              "cheese",
                                              style: TextStyle(
                                                  color: Colors.lightGreen,
                                                  fontWeight: FontWeight.bold
                                              ),
                                            ),
                                            Text(
                                              "   £21",
                                              style: TextStyle(
                                                  color: Colors.lightGreen,
                                                  fontWeight: FontWeight.bold
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                  )
                                ] )

                        ),
                      ),


                ],
              ),
        ),
        Container(
                  margin: EdgeInsets.symmetric(vertical: 2.0),
                  height: 50.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                    children: <Widget>
                    [
                      Padding(
                        padding: const EdgeInsets.all(1.0),

                        child: Container(
                          width: 90.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0)
                          ),

                          child: Text(
                            'FEATURED',
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold

                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          width: 90.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Text(
                              'COMBO',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.grey
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          width: 95.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Text(
                              'FAVORITES',
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.grey
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          width: 150.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Text(
                              'RECOMMENDED    ',
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.grey
                              )
                          ),
                        ),
                      ),

                    ]

                  )
              ),

              Container(
                margin: EdgeInsets.symmetric(vertical: 2.0),
                height: 250.0,

                child:
                  ListView(
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        Row(
                          children: <Widget>[

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 100,
                                height: 80,
                                decoration: BoxDecoration(

                                    color: Colors.pinkAccent.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(12.0)
                                ),
                                child:
                                Image(
                                  image: AssetImage('assets/hotdog.png'),
                                ),


                              ),
                            ),

                          Column(
                                children: <Widget>[
                                  Text(
                                    'Delicious hot dog',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold

                                      )
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.star, size: 20.0, color: Colors.yellow),
                                      Icon(Icons.star, size: 20.0, color: Colors.yellow),
                                      Icon(Icons.star, size: 20.0, color: Colors.yellow),
                                      Icon(Icons.star, size: 20.0, color: Colors.yellow),
                                    ],
                                  ),

                                  Container(
                                    width: 50,
                                    child: Row(
                                      children:<Widget>[
                                        Text("\$6",
                                        style: TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 18,
                                        ),
                                        ),
                                        Text(" \$18",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                            decoration: TextDecoration.lineThrough,
                                          ),
                                        ),
                                      ]
                                    ),
                                  )

                                ],
                              ),

                          ],
                        ),
                        Row(
                          children: <Widget>[

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 100,
                                height: 80,
                                decoration: BoxDecoration(

                                    color: Colors.pinkAccent.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(12.0)
                                ),
                                child:
                                Image(
                                  image: AssetImage('assets/hotdog.png'),
                                ),


                              ),
                            ),

                            Column(
                              children: <Widget>[
                                Text(
                                    'Delicious hot dog',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold

                                    )
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star, size: 20.0, color: Colors.yellow),
                                    Icon(Icons.star, size: 20.0, color: Colors.yellow),
                                  ],
                                ),

                                Container(
                                  width: 50,
                                  child: Row(
                                      children:<Widget>[
                                        Text("\$6",
                                          style: TextStyle(
                                            color: Colors.redAccent,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Text(" \$18",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                            decoration: TextDecoration.lineThrough,
                                          ),
                                        ),
                                      ]
                                  ),
                                )

                              ],
                            ),

                          ],
                        ),
                        Row(
                          children: <Widget>[

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 100,
                                height: 80,
                                decoration: BoxDecoration(

                                    color: Colors.pinkAccent.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(12.0)
                                ),
                                child:
                                Image(
                                  image: AssetImage('assets/hotdog.png'),
                                ),


                              ),
                            ),

                            Column(
                              children: <Widget>[
                                Text(
                                    'Delicious hot dog',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold

                                    )
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star, size: 20.0, color: Colors.yellow),
                                    Icon(Icons.star, size: 20.0, color: Colors.yellow),
                                  ],
                                ),

                                Container(
                                  width: 50,
                                  child: Row(
                                      children:<Widget>[
                                        Text("\$6",
                                          style: TextStyle(
                                            color: Colors.redAccent,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Text(" \$18",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                            decoration: TextDecoration.lineThrough,
                                          ),
                                        ),
                                      ]
                                  ),
                                )

                              ],
                            ),

                          ],
                        ),


                      ]

                  )
              )

   ]
          )
        ),
      )
    );
  }
}
