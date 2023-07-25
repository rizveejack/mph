import 'package:flutter/material.dart';

class NotiFicationScreen extends StatelessWidget {
  const NotiFicationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("Notifications"),
        centerTitle: true,
        elevation: 0,
        forceMaterialTransparency: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 18,
          itemBuilder: (_, index) {
            return Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome To MCPH",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                      "learn your course that you love to develope your skill"),
                  Text(
                    "10:00 23/12/2022",
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      color: Colors.black26,
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
