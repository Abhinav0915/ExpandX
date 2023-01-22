import 'package:expandx/signup.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(children: [
          const SizedBox(
            height: 60.0,
            width: 400.0,
          ),
          Image.asset(
            'assets/images/logo.jpeg',
            height: 150.0,
          ),
          Container(
            width: 500.0,
            height: 350.0,
            child: Column(
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                ToggleSwitch(

                  minWidth: 150.0,
                  initialLabelIndex: 0,
                  cornerRadius: 20.0,
                  activeBgColor: [Colors.red],
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.grey,
                  inactiveFgColor: Colors.white,
                  labels: const ['Login', 'Signup'],
                  onToggle: (index) {
                    if (index == 0) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const login()),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const signup()),
                      );
                    }
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, 2),
                        // blurRadius: 5.0,
                        // spreadRadius: 5.0,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  width: 300.0,
                  child: const TextField(
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: 'Mobile no',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, 2),
                        // blurRadius: 5.0,
                        // spreadRadius: 5.0,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  width: 300.0,
                  child: const TextField(
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.visibility_off),
                      isDense: true,
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: 180.0,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 216, 114, 74),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text('Login'),
                  ),
                ),
                //forgot password
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Forgot Password?'),
                  ],
                ),
              ],
            ),
          ),
        ])));
  }
}
