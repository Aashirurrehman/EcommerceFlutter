import 'package:flutter/material.dart';

class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
        top: 10,
        bottom: 0,
      ),
      color: Colors.white,
      child: profile(),
    );
  }
}

Widget profile() {
  return Container(
    padding: EdgeInsets.only(left: 10),
    decoration: BoxDecoration(color: Colors.grey[50], boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.2),
        blurRadius: 13,
        spreadRadius: 2,
      )
    ]),
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 130,
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Image(
                  image: AssetImage(
                    'assets/images/user.png',
                  ),
                  width: 100,
                  height: 100,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'User',
                      style: TextStyle(
                          fontSize: 23.5, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'abc@gmail.com',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 14.5),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'logout',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple[800]),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(color: Colors.transparent),
            child: Text(
              'ACCOUNT INFORMATION',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 0,
          ),
          accountInfo('Full Name', 'User', true),
          accountInfo('Email', 'user@gmail.com', false),
          accountInfo('Phone', '+0900-786 01', false),
          accountInfo(
              'Address', 'New York, Random Street, House No. 72', false),
          accountInfo('Gender', 'Female', false),
          accountInfo('Date of Birth', 'October 13, 1999', false)
        ],
      ),
    ),
  );
}

Widget accountInfo(String title, String subTitle, bool isShow) {
  return ListTile(
    title: Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: Text(
        '$title',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    subtitle: Container(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Text(
          '$subTitle',
          style: TextStyle(fontSize: 16),
        )),
    trailing: isShow == true ? Icon(Icons.edit) : null,
  );
}
