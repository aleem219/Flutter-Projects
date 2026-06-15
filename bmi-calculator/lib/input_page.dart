import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_Content.dart';
import 'reuseable_cart.dart';

const activeCardColour = Color(0xFF1D1E33);
const bottomContainerHeight = 80.0;
const bottomContainerColour = Color(0xFFEB1555);
const iconHeight = 80.0;


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                    cardChild: IconWidget(
                      text: 'MALE',
                      icon: FaIcon(FontAwesomeIcons.mars, size: iconHeight),
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                    cardChild: IconWidget(
                      text: 'FEMALE',
                      icon: FaIcon(FontAwesomeIcons.venus, size: iconHeight),
                    ),
                  ),
                ),
              ],
            )),
            Expanded(child: ReusableCard(
                colour: activeCardColour
            ),
            ),
            Expanded(child: Row(
              children: [
                Expanded(child: ReusableCard(
                    colour: activeCardColour
                ),
                ),
                Expanded(child: ReusableCard(
                    colour: activeCardColour
                ),
                ),
              ],
            )),
            Container(
              color: bottomContainerColour,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ],
        )
    );
  }
} // _InputPageState ends here

