import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Admin',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSport = false;
  String selectedValue;

  TextEditingController tPair = TextEditingController();
  TextEditingController zone = TextEditingController();
  TextEditingController lvg = TextEditingController();
  TextEditingController sl = TextEditingController();
  TextEditingController tlink = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff13182B),
          title: const Text(
            'Dashboard',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 20,
              color: Color(0xffffffff),
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
        ),
        backgroundColor: Color(0xff111422),
        body: Container(
          width: double.infinity,
          margin: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Create a Signal',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xffffffff),
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    // GestureDetector(onTap: () {
                    //   setState(() {
                    //     isSport = true;
                    //   });

                    //   child:
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 19),
                      decoration: BoxDecoration(
                        color: !isSport ? Color(0xfff2ad0b) : Color(0xffffffff),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Text(
                        'Sport',
                        style: TextStyle(
                          fontSize: 11,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                    // }),
                    SizedBox(width: 6),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 19),
                      decoration: BoxDecoration(
                        color: const Color(0xffbfbfbf),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Text(
                        'Futures',
                        style: TextStyle(
                          fontSize: 11,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    const Text(
                      'Trading Pair:',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xffffffff),
                      ),
                      softWrap: false,
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      child: SizedBox(
                        height: 42,
                        child: TextField(
                          controller: tPair,
                          style: TextStyle(fontSize: 14, color: Colors.white),
                          decoration: InputDecoration(
                              isDense: true,
                              hintText: 'E.g BTC USDT',
                              hintStyle:
                                  TextStyle(fontSize: 9, color: Colors.white),
                              filled: true,
                              fillColor: Color(0xff2A2C39),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Text(
                      'Direction:',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xffffffff),
                      ),
                      softWrap: false,
                    ),
                    SizedBox(width: 24),
                    Expanded(
                      child: SizedBox(
                        height: 42,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButtonFormField(
                            hint: const Text(
                              'Direction',
                              style: TextStyle(
                                fontSize: 9,
                                color: Color(0xffffffff),
                              ),
                            ),
                            onChanged: (val) {},
                            icon: Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: Color(0xfff2ad0b),
                            ),
                            items: const [
                              DropdownMenuItem(
                                child: Text(
                                  'Buy/Long',
                                  style: TextStyle(
                                      fontSize: 10, color: Color(0xfff2ad0b)),
                                ),
                                value: 'Buy/Long',
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  'Sell/Short',
                                  style: TextStyle(
                                      fontSize: 10, color: Color(0xfff2ad0b)),
                                ),
                                value: 'Sell/Short',
                              ),
                            ],
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Color(0xff2A2C39),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    const Text(
                      'Zone:',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xffffffff),
                      ),
                      softWrap: false,
                    ),
                    SizedBox(width: 50),
                    Expanded(
                      child: SizedBox(
                        height: 42,
                        child: TextField(
                          style: TextStyle(fontSize: 14, color: Colors.white),
                          controller: zone,
                          decoration: InputDecoration(
                              hintText: 'E.g BTC USDT',
                              hintStyle:
                                  TextStyle(fontSize: 9, color: Colors.white),
                              filled: true,
                              fillColor: Color(0xff2A2C39),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    const Text(
                      'Leverage:',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xffffffff),
                      ),
                    ),
                    SizedBox(width: 26),
                    Expanded(
                      child: SizedBox(
                        height: 42,
                        child: TextField(
                          controller: lvg,
                          style: TextStyle(fontSize: 14, color: Colors.white),
                          decoration: InputDecoration(
                              hintText: '\$39,000-42,000',
                              hintStyle:
                                  TextStyle(fontSize: 9, color: Colors.white),
                              filled: true,
                              fillColor: Color(0xff2A2C39),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Targets:',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xffffffff),
                      ),
                      softWrap: false,
                    ),
                    SizedBox(width: 36),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 42,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 31),
                                  decoration: BoxDecoration(
                                    color: const Color(0xff2a2c39),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: const Text(
                                    'TP 1',
                                    style: TextStyle(
                                      fontSize: 9,
                                      color: Color(0xffbfbfbf),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 6),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 42,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 31),
                                  decoration: BoxDecoration(
                                    color: const Color(0xff2a2c39),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: const Text(
                                    'TP 2',
                                    style: TextStyle(
                                      fontSize: 9,
                                      color: Color(0xffbfbfbf),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 42,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 31),
                                  decoration: BoxDecoration(
                                    color: const Color(0xff2a2c39),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: const Text(
                                    'TP 3',
                                    style: TextStyle(
                                      fontSize: 9,
                                      color: Color(0xffbfbfbf),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 6),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 42,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 31),
                                  decoration: BoxDecoration(
                                    color: const Color(0xff2a2c39),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: const Text(
                                    'TP 4',
                                    style: TextStyle(
                                      fontSize: 9,
                                      color: Color(0xffbfbfbf),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    const Text(
                      'SL:',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xffffffff),
                      ),
                    ),
                    SizedBox(width: 67),
                    Expanded(
                      child: SizedBox(
                        height: 42,
                        child: TextField(
                          style: TextStyle(fontSize: 14, color: Colors.white),
                          controller: tPair,
                          decoration: InputDecoration(
                              isDense: true,
                              hintText: 'Stop Loss',
                              hintStyle:
                                  TextStyle(fontSize: 9, color: Colors.white),
                              filled: true,
                              fillColor: Color(0xff2A2C39),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      'Span:',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xffffffff),
                      ),
                      softWrap: false,
                    ),
                    SizedBox(width: 24),
                    Expanded(
                      child: SizedBox(
                        height: 42,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButtonFormField(
                            hint: const Text(
                              'Span',
                              style: TextStyle(
                                fontSize: 9,
                                color: Color(0xffffffff),
                              ),
                            ),
                            onChanged: (val) {},
                            icon: Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: Color(0xfff2ad0b),
                            ),
                            items: const [
                              DropdownMenuItem(
                                child: Text(
                                  'Buy/Long',
                                  style: TextStyle(
                                      fontSize: 10, color: Color(0xfff2ad0b)),
                                ),
                                value: 'Buy/Long',
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  'Sell/Short',
                                  style: TextStyle(
                                      fontSize: 10, color: Color(0xfff2ad0b)),
                                ),
                                value: 'Sell/Short',
                              ),
                            ],
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Color(0xff2A2C39),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
