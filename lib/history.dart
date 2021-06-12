import 'package:flutter/material.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          borderSide: BorderSide(color: Colors.grey[400])),
                      suffixIcon: Icon(Icons.search),
                      labelText: 'Username',
                      labelStyle:
                          TextStyle(color: Colors.grey[600], fontSize: 17),
                      filled: true,
                      fillColor: Colors.grey[50],
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 25)),
                )),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'History',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  historyCard(
                      'assets/images/iphone12.jpg', 'Iphone 12', 5.0, 23, 10),
                  historyCard('assets/images/note_20_ultra.jpg',
                      'Note 20 Ultra', 5.0, 23, 10),
                  historyCard('assets/images/macbook_air.jpg', 'Macbook Air',
                      5.0, 23, 10),
                  historyCard('assets/images/macbook_pro.jpg', 'Macbook Pro',
                      5.0, 23, 10),
                  historyCard(
                      'assets/images/gaming_pc.jpg', 'Gaming PC', 5.0, 23, 10),
                  historyCard('assets/images/backlit_keyboard.jpg',
                      'Backlit Keyboard', 5.0, 23, 10),
                  historyCard(
                      'assets/images/mercedes.jpeg', 'Mercedes', 5.0, 23, 10),
                  historyCard(
                      'assets/images/mutton_car.jpg', 'Mutton', 5.0, 23, 10),
                  historyCard(
                      'assets/images/roadster.jpg', 'Roadster', 5.0, 23, 10),
                  historyCard('assets/images/royal_field.jpg', 'Royal Field',
                      5.0, 23, 10),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget historyCard(String productImage, String productName,
    double productRatings, int productReviews, double productPrice) {
  return ListTile(
    leading: CircleAvatar(
      radius: 25,
      backgroundImage: AssetImage('$productImage'),
    ),
    title: Text(
      '$productName',
      style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
          letterSpacing: 0.7),
    ),
    subtitle: Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow[600],
          size: 18,
        ),
        Text(
          ' $productRatings.0 ($productReviews Reviews)',
          style: TextStyle(color: Colors.grey[600]),
        )
      ],
    ),
    trailing: Text('\$$productPrice'),
  );
}
