import 'package:flutter/material.dart';

void main() {
  //runApp接受的widget将成为widget树的根(ps：相当于顶层容器)
//  runApp(new MaterialApp(
//    title: "我的应用",
////    使用主题更改Ui
//    theme: new ThemeData(
//      primaryColor: Colors.white,
//    ),
//    home: new MyScaffold(),
//  )
//  );
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    padding: const EdgeInsets.only(bottom: 80),
                    child: new Text(
                      "哈哈哈哈哈啊哈哈哈",
                      style: new TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  new Text(
                    "嘻嘻嘻嘻嘻嘻嘻嘻嘻",
                    style: new TextStyle(color: Colors.grey),
                  ),
                ],
              )),
          new Icon(
            Icons.star,
            color: Colors.red,
          ),
          new Text('100'),
        ],
      ),
    );

    Column getText(IconData icon, String text) {
      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Icon(icon, color: Colors.blue[500],),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
              child: new Text(text, style: new TextStyle(color: Colors.blue),),
          )
        ],
      );
    };

    Widget buttonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          getText(Icons.call, '联系'),
          getText(Icons.near_me, '附近'),
          getText(Icons.share, "分享"),
        ],
      ),
    );


    Widget textSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        '轻轻的我走了，正如我轻轻的来；我轻轻的招手，作别西天的云彩。那河畔的金柳，是夕阳中的新娘；波光里的艳影，在我的心头荡漾。',
        softWrap: true,
      ),
    );

    return new MaterialApp(
      title: '流式布局',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("流式布局"),
        ),
        body: new ListView(
          children: <Widget>[
            new Image.asset("images/xiaozhu_horse.jpg",
            width: 600,
            height: 240,
            fit: BoxFit.cover,),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );

  }
}

class TutoriaHome extends StatelessWidget {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(icon: new Icon(Icons.menu),
            tooltip: "导航菜单",
            onPressed: null),
        title: new Text("商城"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.shopping_cart),
              tooltip: "进入购物车",
              onPressed: openCart),
        ],
      ),
      body: new Center(
        child: new Text("hello flutter"),
      ),

      floatingActionButton: new FloatingActionButton(
          tooltip: "增加",
          child: new Icon(Icons.add),
          backgroundColor: Colors.pink,
          onPressed: addCount),
    );
  }

  void openCart() {
    print("进入购物车");
  }

  void addCount() {
    print(this.count++);
  }
}

class MyAppBar extends StatelessWidget {
  final Widget title;
  final int test;

//  MyAppBar(this.title);
  MyAppBar({this.title, this.test});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      height: 56.0,
      margin: const EdgeInsets.fromLTRB(0, 44, 0, 0),
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: new BoxDecoration(color:Colors.white),
      child: new Row(
        children: <Widget>[
          new IconButton(icon: new Icon(Icons.menu),
              tooltip: '导航菜单',
              onPressed: null),
          new Expanded(child: title),
          new IconButton(icon: new Icon(Icons.search),
              tooltip: "搜索",
              onPressed: null)
        ],
      ),
    );
  }

}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Column(
        children: <Widget>[
          new MyAppBar(
            title: new Text("京东商城",
              style: Theme.of(context).primaryTextTheme.title,
                textAlign: TextAlign.center,)
          ),
          new Expanded(
              child: new Center(
                child: new Text("Hello!"),
              ))
        ],
      ),
    );
  }
}
/**
class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /**
     * Scaffold 是 Material library 中提供的一个widget,
     * 它提供了默认的导航栏、标题和包含主屏幕widget树的body属性。
     * widget树可以很复杂
     */
    return new Material(
      child: new Scaffold(
          appBar: new AppBar(
            title: new Text("Welcome!",
                style: Theme.of(context).primaryTextTheme.title),
          ),
          //Center控件使其子控件在中间位置
          body: new Center(
//              Text控件显示各种文本
            child: new Text("hello flutter"),
          )),
    );
  }
}
 */

//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        // This is the theme of your application.
//        //
//        // Try running your application with "flutter run". You'll see the
//        // application has a blue toolbar. Then, without quitting the app, try
//        // changing the primarySwatch below to Colors.green and then invoke
//        // "hot reload" (press "r" in the console where you ran "flutter run",
//        // or press Run > Flutter Hot Reload in a Flutter IDE). Notice that the
//        // counter didn't reset back to zero; the application is not restarted.
//        primarySwatch: Colors.blue,
//      ),
//      home: MyHomePage(title: 'Flutter Demo Home Page'),
//    );
//  }
//}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

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
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
