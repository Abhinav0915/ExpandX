import 'package:expandx/transact.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 216, 114, 74),
      leading: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/transact');
        },
        child: Icon(Icons.arrow_back),
      ),
      title: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(45))),
        child: TextField(
          controller: _searchController,
          decoration: const InputDecoration(
            hintText: "Search Mutual Fun..",
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.settings),
            border: InputBorder.none,
            contentPadding:
                EdgeInsets.only(left: 15, top: 15, bottom: 15, right: 20),
          ),
          onChanged: (value) {
            // Perform search here
          },
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class savetax extends StatefulWidget {
  const savetax({Key? key}) : super(key: key);

  @override
  State<savetax> createState() => _savetaxState();
}

class _savetaxState extends State<savetax> {
  @override
  Widget build(BuildContext context) {
    var row = Row(
      children: [
        Image.asset(
          "assets/images/axis.png",
          width: 50,
          height: 50,
        ),
        const Expanded(
          child: Text(" Axis Long Term Equity \n Fund-Growth"),
        ),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
              child: Text("8.98%"),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 4, 30),
              child: Text("> 3Y returns"),
            ),
          ],
        ),
      ],
    );
    var container = Container(
      margin: const EdgeInsets.fromLTRB(0, 4, 0, 0),
      width: MediaQuery.of(context).size.width * 0.93,
      height: 75,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5.0,
            spreadRadius: 1.0,
            offset: Offset(0.0, 0.0),
          )
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/kotak.png",
            width: 50,
            height: 50,
          ),
          const Expanded(
            child: Text("  Kotak Tax Saver Fund - \n  Regular Growth"),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: Text("17.45%"),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 4, 30),
                child: Text("> 3Y returns"),
              ),
            ],
          ),
        ],
      ),
    );
    var container2 = Container(
      margin: const EdgeInsets.fromLTRB(0, 4, 0, 0),
      width: MediaQuery.of(context).size.width * 0.93,
      height: 75,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5.0,
            spreadRadius: 1.0,
            offset: Offset(0.0, 0.0),
          )
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/birla.png",
            width: 50.0,
            height: 50,
          ),
          const Expanded(
            child: Text("  Aditya Birla Sun Life Tax \n  Relief 96 - Growth"),
          ),
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: Text("8.07%"),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 4, 30),
                child: Text("> 3Y returns"),
              ),
            ],
          ),
        ],
      ),
    );
    var container22 = container2;
    var container3 = Container(
      margin: const EdgeInsets.fromLTRB(0, 4, 0, 0),
      width: MediaQuery.of(context).size.width * 0.93,
      height: 75,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5.0,
            spreadRadius: 1.0,
            offset: Offset(0.0, 0.0),
          )
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/dsp.png",
            width: 50,
            height: 50,
          ),
          const Expanded(
            child: const Text("  DSP Tax Saver Fund - \n  Growth"),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: Text("17.35%"),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 4, 30),
                child: Text("> 3Y returns"),
              ),
            ],
          ),
        ],
      ),
    );
    var container32 = container3;
    var container4 = Container(
      margin: const EdgeInsets.fromLTRB(0, 4, 0, 0),
      width: MediaQuery.of(context).size.width * 0.93,
      height: 75,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5.0,
            spreadRadius: 1.0,
            offset: Offset(0.0, 0.0),
          )
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/invesco.png",
            width: 50,
            height: 50,
          ),
          const Expanded(
            child: const Text(" Invesco India Tax Plan - \n Growth"),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: Text("13.11%"),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 4, 30),
                child: Text("> 3Y returns"),
              ),
            ],
          ),
        ],
      ),
    );
    var container5 = Container(
      margin: const EdgeInsets.fromLTRB(0, 4, 0, 0),
      width: MediaQuery.of(context).size.width * 0.93,
      height: 75,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5.0,
            spreadRadius: 1.0,
            offset: Offset(0.0, 0.0),
          )
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/canara.png",
            width: 50,
            height: 50,
          ),
          const Expanded(
            child: const Text("  Canara Robeco Tax \n  Saver - Growth"),
          ),
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: Text("19.41%"),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 4, 30),
                child: Text("> 3Y returns"),
              ),
            ],
          ),
        ],
      ),
    );
    var container52 = container5;
    var container6 = Container(
      margin: const EdgeInsets.fromLTRB(0, 4, 0, 0),
      width: MediaQuery.of(context).size.width * 0.93,
      height: 75,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5.0,
            spreadRadius: 1.0,
            offset: Offset(0.0, 0.0),
          )
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/tata.png",
            width: 50,
            height: 50,
          ),
          const Expanded(
            child: const Text("  Tata India Tax \n  Saver Fund - Growth"),
          ),
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: Text("15.27"),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 4, 30),
                child: Text("> 3Y returns"),
              ),
            ],
          ),
        ],
      ),
    );
    var container62 = container6;
    return Scaffold(
        appBar: MyAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(15, 5, 5, 0),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                  width: MediaQuery.of(context).size.width * 0.93,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5.0,
                        spreadRadius: 1.0,
                        offset: Offset(0.0, 0.0),
                      )
                    ],
                  ),
                  child: row,
                ),
                const SizedBox(
                  height: 15,
                ),
                container2,
                const SizedBox(
                  height: 15,
                ),
                container22,
                const SizedBox(
                  height: 15,
                ),
                container32,
                const SizedBox(
                  height: 15,
                ),
                container4,
                const SizedBox(
                  height: 15,
                ),
                container52,
                const SizedBox(
                  height: 15,
                ),
                container62,
              ],
            ),
          ),
        ));
  }
}
