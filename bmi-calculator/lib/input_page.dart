import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_Content.dart';
import 'reuseable_cart.dart';
import 'constants.dart';

enum Gender {
  male,female
}


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;
  int weight = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male ? kActiveCardColour : kInactiveCardColour,
                    cardChild: IconWidget(
                      text: 'MALE',
                      icon: FaIcon(FontAwesomeIcons.mars, size: kIconHeight),
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female ? kActiveCardColour : kInactiveCardColour,
                    cardChild: IconWidget(
                      text: 'FEMALE',
                      icon: FaIcon(FontAwesomeIcons.venus, size: kIconHeight),
                    ),
                  ),
                ),
              ],
            )),
            Expanded(child: ReusableCard(
                colour: kActiveCardColour,
                 cardChild: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      SizedBox(width: 5.0),
                      Text(
                          'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF8D8E98),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: kMinHeight,
                      max: kMaxHeight,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            ),
            Expanded(child: Row(
              children: [
                Expanded(child: ReusableCard(
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('WEIGHT',style: kLabelTextStyle,),
                      Text(weight.toString(),style: kNumberTextStyle, ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(icon: FontAwesomeIcons.plus),
                          SizedBox(width: 20.0),
                          RoundIconButton(icon: FontAwesomeIcons.minus),
                        ],
                      )
                    ],
                  ),
                    colour: kActiveCardColour
                ),
                ),
                Expanded(child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE',style: kLabelTextStyle,),
                        Text(weight.toString(),style: kNumberTextStyle, ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(icon: FontAwesomeIcons.plus),
                            SizedBox(width: 20.0),
                            RoundIconButton(icon: FontAwesomeIcons.minus),
                          ],
                        )
                      ],
                    ),
                    colour: kActiveCardColour
                ),
                ),
              ],
            )),
            Container(
              color: kBottomContainerColour,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
            ),
          ],
        )
    );
  }
}


class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon});
  final dynamic icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(onPressed: () { },
      child: FaIcon(icon),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0
      ),
        shape: CircleBorder(),
        fillColor: Color(0xFF4C4F5E),
    );
  }
}


