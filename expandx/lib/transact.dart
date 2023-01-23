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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 12, 10, 0),
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(18, 10, 10, 0),
                    height: 100.0,
                    width: 320.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color.fromARGB(255, 245, 207, 151)),
                    child: Positioned(
                      top: 30.0,
                      left: 20.0,
                      child: const Text(
                        "sdsd",
                      ),
                    )),
              ],
            ),
          ),
        ));
  }
}





// SafeArea(
//           child: Column(children: [
//             SizedBox(
//               height: 25.0,
//               width: MediaQuery.of(context).size.height * 0.6,
//             ),
//             Container(
//               width: 360,
//               height: 125,
//               decoration: BoxDecoration(
//                 color: Color.fromARGB(255, 255, 214, 160),
//                 borderRadius: BorderRadius.circular(10),
//                 border: Border.all(
//                   color: Color.fromARGB(255, 235, 175, 135),
//                   width: 1,
//                 ),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.5),
//                     spreadRadius: 1,
//                     blurRadius: 1,
//                     offset: const Offset(0, 1),
//                   ),
//                 ],
//               ),
//               child: Column(
//                 children: const [
//                   Padding(
//                     padding: EdgeInsets.fromLTRB(0, 18, 105, 0),
//                     child: Text(
//                       "Get Started With Ease!",
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.fromLTRB(10, 25, 90, 0),
//                     child: Text(
//                       "Make a smart move towards a better financial future",
//                       style: TextStyle(
//                         fontSize: 15,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(
//               height: 20.0,
//             ),
//             SizedBox(
//               child: Row(
//                 children: [
//                   Container(
//                     margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
//                     width: 500,
//                     height: 350,
//                     decoration: const BoxDecoration(
//                       color: Colors.white,
//                     ),
//                     child: const Text("Popular Funds",
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                         )),
//                   ),
//                   Container(
//                     width: 20.0,
//                   ),
//                   Column(
//                     children: [
//                       Container(
//                         width: 20,
//                         height: 20,
//                         decoration: const BoxDecoration(
//                           color: Colors.white,
//                         ),
//                         child: const Icon(Icons.arrow_forward_ios),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             )
//           ]),
//         )