import 'package:flutter/material.dart';

class BmiScreenResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "BMI RESULT",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(16, 16, 16, 8),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey[300],
            blurRadius: 80,
          ),
        ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 80, 0, 20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "23.5",
                style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text("your Bmi is:"),
              SizedBox(
                height: 50,
              ),
              Text(
                "reslut",
                style: TextStyle(fontSize: 35),
              ),
              SizedBox(
                height: 40,
              ),
              Text("paragraphe"),
              SizedBox(
                height: 40,
              ),
              RaisedButton(
                  elevation: 5,
                  padding: EdgeInsets.all(15),
                  color: Color(0xFF693DB8),
                  child: Text(
                    "Re-Calculate",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(150)),
                  onPressed: () {
                    Navigator.pop(context);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
