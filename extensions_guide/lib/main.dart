import 'package:extensions_guide/helpers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Extensions Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          inputDecorationTheme:
              InputDecorationTheme(border: OutlineInputBorder())),
      home: MyHomePage(title: 'Extensions Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _text;

  @override
  void initState() {
    super.initState();
    _text = '';
  }

  @override
  Widget build(BuildContext context) {
    final int maxLines = addTen(5);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          height: getScreenHeight(context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                onChanged: (value) {
                  setState(() {
                    _text = value;
                  });
                },
                minLines: maxLines,
                maxLines: maxLines,
              ),
              Text(
                '${getWordsCount(_text)} words',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
