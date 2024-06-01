import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI CALCULATOR',
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                        colour: activeCardColor,
                        cardChild: IconContent(
                          iconImage: FontAwesomeIcons.mars,
                          iconName: "MALE",
                        ))),
                Expanded(
                    child: ReusableCard(
                  colour: activeCardColor,
                  cardChild: IconContent(
                      iconImage: FontAwesomeIcons.venus, iconName: "FEMALE"),
                )),
              ],
            ),
          ),
          Expanded(child: ReusableCard(colour: activeCardColor)),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(colour: activeCardColor)),
                Expanded(child: ReusableCard(colour: activeCardColor)),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
