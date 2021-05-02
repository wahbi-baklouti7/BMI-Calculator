import 'package:bmi_app/bmi_screen_result.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bmi_card.dart';
import 'gender_card.dart';

enum Gender { male, female }

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var backColor = Color(0xFFEEEEEE);
  var primColor = Color(0xFFFFFFFF);
  var pinkColor = Color(0xFF693DB8);

  var inactiveColor = Colors.grey[200];

  var selectedGender = Gender.male;

  int height = 170;
  int weight = 70;
  int age = 24;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      appBar: AppBar(
        backgroundColor: primColor,
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  child: Row(
                    children: [
                      BmiCard(
                        cardChild: GenderCard(
                          onTap: () {
                            setState(() {
                              selectedGender = Gender.male;
                            });
                          },
                          gender: "Male",
                          genderIcon: FontAwesomeIcons.mars,
                          iconColor: (selectedGender == Gender.male)
                              ? Colors.blue[500]
                              : inactiveColor,
                        ),
                      ),
                      BmiCard(
                        cardChild: GenderCard(
                          onTap: () {
                            setState(() {
                              selectedGender = Gender.female;
                            });
                          },
                          gender: "Female",
                          genderIcon: FontAwesomeIcons.venus,
                          iconColor: (selectedGender == Gender.female)
                              ? Colors.pink[500]
                              : inactiveColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Row(
                    children: [
                      BmiCard(
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Height",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text("$height",
                                    style: TextStyle(
                                      fontSize: 55,
                                      fontWeight: FontWeight.bold,
                                    )),
                                Text("CM")
                              ],
                            ),
                            SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 10),
                                overlayShape:
                                    RoundSliderOverlayShape(overlayRadius: 25),
                              ),
                              child: Slider(
                                activeColor: pinkColor,
                                inactiveColor: Color(0xFFEBAB36),
                                value: height.toDouble(),
                                max: 220,
                                onChanged: (double newValue) {
                                  setState(() {
                                    height = newValue.round();
                                  });
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Row(
                    children: [
                      BmiCard(
                        cardChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Age",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("$age",
                                  style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                  )),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ButtonPlusMinus(
                                    iconColor: Color(0xFF693DB8),
                                    buttonIcon: FontAwesomeIcons.plus,
                                    onPress: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  ButtonPlusMinus(
                                      buttonIcon: FontAwesomeIcons.minus,
                                      iconColor: pinkColor,
                                      onPress: () {
                                        setState(() {
                                          age--;
                                        });
                                      })
                                ],
                              ),
                            ]),
                      ),
                      BmiCard(
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Weight",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("$weight",
                                style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ButtonPlusMinus(
                                  iconColor: Color(0xFF693DB8),
                                  buttonIcon: FontAwesomeIcons.plus,
                                  onPress: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                ButtonPlusMinus(
                                    buttonIcon: FontAwesomeIcons.minus,
                                    iconColor: pinkColor,
                                    onPress: () {
                                      setState(() {
                                        weight--;
                                      });
                                    })
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BmiScreenResult()));
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(15),
                  height: 56,
                  width: MediaQuery.of(context).size.width * 0.50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: pinkColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[400],
                          blurRadius: 80,
                        )
                      ]),
                  child: Text(
                    "CALCULATE",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonPlusMinus extends StatelessWidget {
  final IconData buttonIcon;
  final Function onPress;
  final Color iconColor;

  ButtonPlusMinus({this.buttonIcon, this.iconColor, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        buttonIcon,
        color: iconColor,
      ),
      splashColor: Colors.purple[100],
      elevation: 2.5,
      onPressed: onPress,
      fillColor: Color(0xFFEEEEEE),
      constraints: BoxConstraints.tightFor(width: 53, height: 53),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
    );
  }
}
