import 'package:expandx/fund.dart';
import 'package:expandx/savetax.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: const Color.fromARGB(255, 216, 114, 74),
      title: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(45))),
        child: TextField(
          controller: _searchController,
          decoration: const InputDecoration(
            hintText: "Search Mutual Fun..",
            prefixIcon: Icon(Icons.search),
            border: InputBorder.none,
            contentPadding:
                EdgeInsets.only(left: 15, top: 15, bottom: 15, right: 20),
          ),
          onChanged: (value) {
            // Perform search here
          },
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.share),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.bookmark_border_outlined),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.shopping_cart_outlined),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class transact extends StatefulWidget {
  transact({Key? key}) : super(key: key);

  final TextEditingController _searchController = TextEditingController();

  @override
  State<transact> createState() => _transactState();
}

class _transactState extends State<transact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: MyAppBar(),
      body: SafeArea(
        child: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(12, 15, 12, 0),
            height: 100.0,
            width: 290.0,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 238, 183, 179),
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              margin: EdgeInsets.fromLTRB(0, 0, 260, 0),
              child: const Text(
                "Popular Funds",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                width: MediaQuery.of(context).size.width * 0.93,
                height: 105,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 1.0,
                      spreadRadius: 1.0,
                      offset: Offset(0.0, 0.0),
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(00, 0, 0, 40),
                      child: Image.asset(
                        "assets/images/kotak.png",
                        width: 50,
                        height: 50,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                      child: const Expanded(
                        child: Text(
                            " Mirae Asset Emergging - \n  Bluechip Fund - Growth"),
                      ),
                    ),
                    Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.fromLTRB(110, 14, 0, 0),
                          child: Text("12.46%"),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(90, 0, 4, 30),
                          child: Text("> 5Y returns"),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              margin: EdgeInsets.fromLTRB(0, 0, 250, 0),
              child: const Text(
                "Best Categories",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )),
          Row(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                height: MediaQuery.of(context).size.height * 0.35,
                width: MediaQuery.of(context).size.width * 0.93,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 1.0,
                      spreadRadius: 1.0,
                      offset: Offset(0.0, 0.0),
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      height: 100.0,
                      width: 100.0,
                      margin: const EdgeInsets.fromLTRB(10, 0, 0, 120),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 1.0,
                            offset: Offset(2.0, 2.0),
                          )
                        ],
                      ),
                      child: Image.asset(
                        "assets/images/img1.jpg",
                        width: 50,
                        height: 50,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 100.0,
                      width: 100.0,
                      margin: const EdgeInsets.fromLTRB(10, 0, 0, 120),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 1.0,
                            offset: Offset(2.0, 2.0),
                          )
                        ],
                      ),
                      child: Image.asset(
                        "assets/images/img2.jpg",
                        width: 50,
                        height: 50,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 100.0,
                      width: 100.0,
                      margin: const EdgeInsets.fromLTRB(10, 0, 0, 120),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 1.0,
                            offset: Offset(2.0, 2.0),
                          )
                        ],
                      ),
                      child: Image.asset(
                        "assets/images/img3.png",
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Transact',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: const Color.fromARGB(255, 216, 114, 74),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: (index) {
          if (index == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const savetax()),
            );
          } else if (index == 2) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const fund()),
            );
          }
        },
      ),
    );
  }
}





