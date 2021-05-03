import 'package:flutter/material.dart';
import 'bmi_calculator.dart';

class BmiScreenResult extends StatelessWidget {
  String result;
  String desc;
  String msg;
  // TextStyle resultStyle;

  BmiScreenResult({this.desc, this.msg, this.result});

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
          padding: const EdgeInsets.fromLTRB(16, 70, 16, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                result,
                style: TextStyle(fontSize: 90, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Your BMI index:",
              style: TextStyle(color: Colors.grey[600]),),
              SizedBox(
                height: 50,
              ),
              Text(
                msg,
                textAlign: TextAlign.center,
                style: resultStyle(msg),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                desc,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 40,
              ),
              RaisedButton(
                  elevation: 3,
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

  TextStyle resultStyle(String result) {
    switch (result) {
      case "VERY SEVERELY UNDERWEIGHT":
        return TextStyle(
          
          color: Color(0xFF5599FF),
          fontSize: 40,
          fontWeight: FontWeight.w900,
          letterSpacing: 2,
        );
        break;

      case "SEVERELY UNDERWEIGHT":
        return TextStyle(
          color: Color(0xFF00A9E7),
          fontSize: 40,
          fontWeight: FontWeight.w900,
          letterSpacing: 2,
        );
        break;

      case "UNDERWEIGHT":
        return TextStyle(
          color: Color(0xFF77D2FB),
          fontSize: 40,
          fontWeight: FontWeight.w900,
          letterSpacing: 2,
        );
        break;

      case "NORMAL":
        return TextStyle(
          color: Color(0xFFBEE475),
          fontSize: 40,
          fontWeight: FontWeight.w900,
          letterSpacing: 2,
        );
        break;

      case "OVERWEIGHT":
        return TextStyle(
          color: Color(0xFFFFE53A),
          fontSize: 40,
          fontWeight: FontWeight.w900,
          letterSpacing: 2,
        );
        break;

      case "OBESE Class I \n(Moderately obese)":
        return TextStyle(
          color: Color(0xFFFFA651),
          fontSize: 40,
          fontWeight: FontWeight.w900,
          letterSpacing: 2,
        );
        break;

      case "OBESE Class II \n(Severely obese)":
        return TextStyle(
          color: Color(0xFFFFAFAF),
          fontSize: 40,
          fontWeight: FontWeight.w900,
          letterSpacing: 2,
        );
        break;

      case "OBESE Class III\n(Very Severely obese)":
        return TextStyle(
          color: Color(0xFFDD1111),
          fontSize: 40,
          fontWeight: FontWeight.w900,
          letterSpacing: 2,

        );
        break;
      // default:
      // return TextStyle(
      //     color: Color(0xFFDD1111),
      //     fontSize: 25,
      //     fontWeight: FontWeight.w600,
      //     letterSpacing: 1,
      //   );
    }
  }
}
