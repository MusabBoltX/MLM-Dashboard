import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:mlm_dashboard/Screens/Reg.dart';
import 'package:mlm_dashboard/Screens/dashboard.dart';
import 'package:mlm_dashboard/Screens/login_new.dart';
import 'package:mlm_dashboard/Screens/profile.dart';
import 'package:mlm_dashboard/Screens/shoppingcart/checkoutsteps.dart';
import 'package:mlm_dashboard/Screens/shoppingcart/packages.dart';
import 'package:mlm_dashboard/Screens/signup.dart';
import 'package:mlm_dashboard/Screens/test_screen_income.dart';
import 'package:mlm_dashboard/main_startup.dart';
import 'Screens/e-wallet.dart';
import 'Screens/shoppingcart/shoppingcart.dart';
// import 'package:mlm_dashboard/custom_drawer.dart';
// import 'package:mlm_dashboard/Screens/login.dart';
// import 'package:mlm_dashboard/models/contact_info.dart';
// import 'Screens/shoppingcart/packages.dart';
// import 'Screens/shoppingcart/ordersummary.dart';
// import 'Screens/shoppingcart/info_contact.dart';
// import 'Screens/shoppingcart/steps.dart';

import './colors.dart';
import 'Screens/signUp_new.dart';

void main() async {
  var box = await Hive.openBox('auth');
  final accessToken = box.get('access_token');
  box.close();

  runApp(MyApp(token: accessToken));
}

class MyApp extends StatelessWidget {
  final token;
  MyApp({Key key, @required this.token}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 16.0, color: Colors.white),
          headline6: TextStyle(color: Colors.white),
          headline5: TextStyle(color: Colors.white),
          // headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, color: Colors.black),
        ),
      ),
      home: SafeArea(child: token != null ? const MyHomePage() : const Login()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          NavigationRail(
            backgroundColor: navigationRailcolor,
            selectedLabelTextStyle: TextStyle(color: Colors.white),
            unselectedLabelTextStyle: TextStyle(color: Colors.white),
            extended: true,
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) async {
              if (index > 5) {
                var box = await Hive.openBox('auth');
                box.delete('access_token');
                box.close();

                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => Login()),
                    (Route<dynamic> route) => false);
              } else {
                setState(() {
                  _selectedIndex = index;
                });
              }
            },
            leading: Container(
              padding: const EdgeInsets.all(15.0),
              margin: const EdgeInsets.symmetric(vertical: 15.0),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 110,
                      width: 180,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage('assets/images/Logo_Text_Final.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Divider(),
                ],
              ),
            ),
            labelType: NavigationRailLabelType.none,
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.dashboard_rounded),
                selectedIcon: Icon(Icons.dashboard_outlined),
                label: Text('Dashboard'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.account_tree),
                selectedIcon: Icon(Icons.account_tree_outlined),
                label: Text('Downline'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.account_circle),
                selectedIcon: Icon(Icons.account_circle_outlined),
                label: Text('Register'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.wallet_giftcard),
                selectedIcon: Icon(Icons.wallet_giftcard_outlined),
                label: Text('Ewallet'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.account_box_sharp),
                selectedIcon: Icon(Icons.account_box_outlined),
                label: Text('Profile'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.shopping_cart_rounded),
                selectedIcon: Icon(Icons.shopping_cart_outlined),
                label: Text('Package'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.logout),
                selectedIcon: Icon(Icons.logout_outlined),
                label: Text('Logout'),
              ),
            ],
          ),
          const VerticalDivider(thickness: 1, width: 1),
          // This is the main content.
          Expanded(
              child: _selectedIndex == 0
                  ? Dashboard()
                  : _selectedIndex == 1
                      ? IncomeScreen()
                      : _selectedIndex == 2
                          ? Reg() // shoppingcart()
                          : _selectedIndex == 3
                              ? EWallate()
                              : _selectedIndex == 4
                                  ? Profile() //Checkout
                                  : _selectedIndex == 5
                                      ? ShoppingCart()
                                      : Checkout()),
        ],
      ),
    );
  }
}
