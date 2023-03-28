import 'package:flutter/material.dart';

class MyPracticeListView extends StatefulWidget {
  const MyPracticeListView({required this.title, Key? key}) : super(key: key);

  final String title;

  @override
  State<MyPracticeListView> createState() => _MyPracticeListViewState();
}

class _MyPracticeListViewState extends State<MyPracticeListView> {
  List names = [
    'Imran',
    'j@Gu',
    'M@Ni',
    'H@shMi',
    'B@Gu',
    'Mithu',
    'Imran',
    'j@Gu',
    'M@Ni',
    'H@shMi',
    'B@Gu',
    'Mithu',
    'Imran Nazeer',
    'Imran',
    'j@Gu',
    'M@Ni',
    'Imran Nazeer',
    'Imran',
    'j@Gu',
    'M@Ni',
  ];
  List mgs = [
    'Hy',
    'Kya Kr Rhe Ho ?',
    'Morning',
    'Have A Nice Day !!!',
    'Lub u ',
    'Miss u',
    'Oy',
    'Ya ALLAH Khair',
    'Hlw',
    ' Developer',
    '?',
    'Project Manager',
    'Hellow',
    'How Are you ?',
    'Ummmah',
    'Pagl',
    'Bhai Jan',
    'Hlw',
    'Hy',
    'By',
  ];
  List time = [
    '2:35 am',
    '6:02 pm',
    '12:15 am',
    '11:05 pm',
    '1:09 am',
    '3:30 pm',
    '2:35 am',
    '6:02 pm',
    '7:07 am',
    '9:29 pm',
    '3:44 am',
    '12:15 am',
    '11:05 pm',
    '1:09 am',
    '3:30 pm',
    '2:35 am',
    '6:02 pm',
    '7:07 am',
    '9:29 pm',
    '3:44 am',
  ];
  List images = [
    'assets/images/mani.jpg',
    'assets/images/jani.jpg',
    'assets/images/bagu.jpg',
    'assets/images/bhalu.jpg',
    'assets/images/dil.jpg',
    'assets/images/img.jpg',
    'assets/images/mani.jpg',
    'assets/images/jani.jpg',
    'assets/images/imran.jpg',
    'assets/images/jagu.jpg',
    'assets/images/mani.jpg',
    'assets/images/jan.jpg',
    'assets/images/jind.jpg',
    'assets/images/jani.jpg',
    'assets/images/me.jpg',
    'assets/images/my.jpg',
    'assets/images/mani.jpg',
    'assets/images/bagu.jpg',
    'assets/images/bhalu.jpg',
    'assets/images/imran.jpg',
  ];

//  final myList = List<String>.generate(30, (index) => 'J@Gu $index');

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Searching ........'),
                ),
              );
            },
            icon: const Icon(
              Icons.search,
              size: 32,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('One Man Army !!!'),
                  ),
                );
              },
              icon: const Icon(
                Icons.person,
                size: 32,
              ),
            ),
          ),
        ],
      ),
      body: myListViewCustom(),
      drawer: myDrawer(),
      floatingActionButton: myFloatingActionButton(),
      bottomNavigationBar: myBottomNavigationBar(),
    );
  }

  Widget myListViewCustom() {
    var size = MediaQuery.of(context).size;

    return ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: size.height * 0.15,
            width: size.width * double.infinity,
            color: Colors.white70,
            child: Card(
              elevation: 5.0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(0),
                ),
              ),
              child: Row(
                //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            images[index],
                          ),
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                          width: 130,
                          child: Text(
                            names[index],
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 20),
                          child: SizedBox(
                            height: 30,
                            width: 150,
                            child: Text(
                              mgs[index],
                              style: const TextStyle(
                                color: Colors.black45,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 150),
                    child: Text(
                      time[index],
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  Widget myFloatingActionButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(
            Icons.add,
            size: 32,
          ),
        ),
        FloatingActionButton(
          onPressed: _decrementCounter,
          tooltip: 'Decrement',
          child: const Icon(
            Icons.remove,
            size: 32,
          ),
        ),
      ],
    );
  }

  Widget myBottomNavigationBar() {
    return SizedBox(
      height: 70,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // Fixed
        backgroundColor: Colors.black,
        // <-- This works for fixed
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(
              Icons.camera_alt_rounded,
              size: 32,
            ),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(
              Icons.chat,
              size: 32,
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(
              Icons.group,
              size: 32,
            ),
            label: 'Group',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(
              Icons.stacked_bar_chart,
              size: 32,
            ),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(
              Icons.call,
              size: 32,
            ),
            label: 'Call',
          ),
        ],
      ),
    );
  }

  Widget myDrawer() {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Colors.green,
            child: const DrawerHeader(
              child: Center(
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: ListTile(
              leading: Icon(
                Icons.person,
                size: 32,
              ),
              title: Text(
                'M@Ni',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(
                Icons.account_circle,
                size: 32,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: ListTile(
              leading: Icon(
                Icons.person,
                size: 32,
              ),
              title: Text(
                'J@Gu',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(
                Icons.account_circle,
                size: 32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
