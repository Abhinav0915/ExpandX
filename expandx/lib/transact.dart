import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 216, 114, 74),
      title: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(45))),
        child: TextField(
          controller: _searchController,
          decoration: const InputDecoration(
            hintText: "Search Mutual Fund..",
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
          icon: Icon(Icons.circle_notifications),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.bookmark),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
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
        appBar: MyAppBar(),
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
          selectedItemColor: Color.fromARGB(255, 216, 114, 74),
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          onTap: (index) {},
        ),
        body: SafeArea(
          child: Row(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width * 0.1,
            ),
            Container(
              width: 330,
              height: 125,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 214, 160),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color.fromARGB(255, 235, 175, 135),
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 18, 105, 0),
                    child: Text(
                      "Get Started With Ease!",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 25, 90, 0),
                    child: Text(
                      "Make a smart move towards a better financial future",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ));
  }
}
