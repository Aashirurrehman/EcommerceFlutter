import 'package:ecommerce_screens/history.dart';
import 'package:ecommerce_screens/user.dart';
import 'package:flutter/material.dart';

class EcommerceApp extends StatefulWidget {
  @override
  _EcommerceAppState createState() => _EcommerceAppState();
}

class _EcommerceAppState extends State<EcommerceApp> {
  var menubar = Icon(
    Icons.menu,
    color: Colors.black,
  );
  int _currentIndex = 0;
  List _pages = [HomePage(), History(), User()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// App Bar
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {}),
        title: Center(
          child: Text(
            'Ecommerce App UI',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                letterSpacing: 0.05),
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
              onPressed: () {}),
        ],
      ),

      /// Body Content
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

/// Home Page Class
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          productCard(
              'assets/images/iphone12.jpg', 'Iphone 12', 5.0, 23, 90, 20, 1),
          SizedBox(
            height: 10,
          ),
          productCard('assets/images/note_20_ultra.jpg', 'Note 20 Ultra ', 5.0,
              23, 90, 20, 1),
          SizedBox(
            height: 10,
          ),
          productCard('assets/images/macbook_air.jpg', 'MacBook Air', 5.0, 23,
              90, 20, 1),
          SizedBox(
            height: 10,
          ),
          productCard('assets/images/macbook_pro.jpg', 'Macbook Pro', 5.0, 23,
              90, 20, 1),
          SizedBox(
            height: 10,
          ),
          productCard(
              'assets/images/gaming_pc.jpg', 'Gaming PC  ', 5.0, 23, 90, 20, 1),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    ));
  }
}

//// Product Card Widget

Widget productCard(
    String productImage,
    String productName,
    double productRatings,
    double productReviews,
    double productPrice,
    int productCount,
    int productQuantity) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2.0,
            blurRadius: 2.0,
            // offset: Offset(5, 5)
          )
        ]),
    child: Row(
      children: [
        Container(
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            child: Image.asset(
              '$productImage',
              width: 110,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '$productName',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      letterSpacing: 1.0),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow[600],
                    ),
                    Text(
                      ' $productRatings ($productReviews Reviews)',
                      style: TextStyle(color: Colors.grey[600]),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '$productCount',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '\$$productPrice',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.purple[800],
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                Text(
                  'Quantity: $productQuantity',
                  style: TextStyle(color: Colors.grey[600]),
                )
              ],
            ))
      ],
    ),
  );
}
