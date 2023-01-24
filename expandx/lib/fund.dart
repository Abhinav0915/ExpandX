import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 216, 114, 74),
      title: const Text('Fund Details'),
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
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class fund extends StatefulWidget {
  const fund({Key? key}) : super(key: key);

  @override
  State<fund> createState() => _fundState();
}

class _fundState extends State<fund> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
                child: Row(children: <Widget>[
              SizedBox(
                height: 60.0,
                width: 100.0,
                child: Image.asset(
                  'assets/images/kotak.png',
                  height: 150.0,
                  width: 50.0,
                ),
              ),
              const SizedBox(
                child: Expanded(
                  child: Text(
                    '     Kotak Select Focus 25 Fund',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ])),
            SizedBox(
                child: Row(
              children: <Widget>[
                SizedBox(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(120, 0, 20, 0),
                    child: Expanded(
                      child: Text(
                        'Equity',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: const Expanded(
                      child: Text(
                        'Large & MidCap',
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                  child: const SizedBox(
                    child: Expanded(
                      child: Text(
                        'High Risk',
                      ),
                    ),
                  ),
                ),
              ],
            )),
            SizedBox(
              child: Row(
                children: <Widget>[
                  SizedBox(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(50, 30, 20, 0),
                      child: const Expanded(
                        child: Text(
                          '10.74%',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(120, 30, 0, 0),
                    child: const SizedBox(
                      child: Expanded(
                        child: Text(
                          '97.00800',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Row(
                children: <Widget>[
                  SizedBox(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(50, 10, 20, 0),
                      child: const Expanded(
                        child: Text(
                          '6 Months Return',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(80, 10, 0, 0),
                    child: const SizedBox(
                      child: Expanded(
                        child: Text(
                          'NAV: 05-01-2023',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 1500,
              margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Image.asset(
                'assets/images/graph.jpg',
                fit: BoxFit.fill,
                height: 350.0,
                width: 1250.0,
              ),
            ),
            SizedBox(
              child: Row(
                children: <Widget>[
                  Container(
                    width: 170.0,
                    //add button
                    margin: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                    child: SizedBox(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Add'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Color.fromARGB(255, 216, 114, 74),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 170.0,
                    //add button
                    margin: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                    child: SizedBox(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Invest Now'),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 216, 114, 74),
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: const BorderSide(
                              color: Color.fromARGB(255, 216, 114, 74),
                              width: 5,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
