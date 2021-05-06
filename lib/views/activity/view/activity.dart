import 'package:flutter/material.dart';
import 'package:gender_picker/source/enums.dart';
import 'package:gender_picker/source/gender_picker.dart';

import '../../../core/core_shelf.dart';
import '../../../core/decoration/circular_border.dart';
import 'components/activity_button.dart';

class ActivityScreen extends StatefulWidget {
  @override
  _ActivityScreenState createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  String age = '';

  String height = '';

  String weight = '';

  Gender? gender;

  double kalori = 0;

  double bmi = 0;

  bool isCalculated = false;

  void calori() {
    //işlemler
    var weightInt = double.parse(weight);
    var heightInt = double.parse(height);
    var ageInt = double.parse(age);

    if (gender == Gender.Male) {
      kalori = (665 + (9.6 * heightInt) + (1.7 * weightInt) - (4.7 * ageInt));
    } else if (gender == Gender.Female) {
      kalori = (66 + (9.6 * heightInt) + (1.7 * weightInt) - (4.7 * ageInt));
    } else {
      kalori = (300 + (9.6 * heightInt) + (1.7 * weightInt) - (4.7 * ageInt));
    }
  }

  void vki() {
    var weightDouble = double.parse(weight);
    var heightDouble = double.parse(height);

    var heightMetre = heightDouble * heightDouble / 10000;
    var bmi = weightDouble / heightMetre;
    this.bmi = bmi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            slivers: [
          SliverAppBar(
            backgroundColor: context.primary,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              background: Center(),
              centerTitle: true,
              title: Container(
                decoration: CircularBorder().appBar(context),
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Activity Calculator'),
                    Text(
                      'Please enter your',
                      style: TextStyle(fontSize: 10),
                    ),
                    Text(
                      'information',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
              ),
            ),
            pinned: true,
            expandedHeight: context.height * 20,
            centerTitle: true,
            shape: CircularBorder().appBarRounded(context),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(30),
              width: context.width * 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Text('Gender'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: GenderPickerWithImage(
                      showOtherGender: true,
                      verticalAlignedText: false,
                      selectedGender: Gender.Male,
                      selectedGenderTextStyle: TextStyle(
                          color: Color(0xFF8b32a8),
                          fontWeight: FontWeight.bold),
                      unSelectedGenderTextStyle: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.normal),
                      onChanged: (Gender? gender) {
                        this.gender = gender;
                        print(this.gender);
                      },
                      equallyAligned: true,
                      animationDuration: Duration(milliseconds: 300),
                      isCircular: true,
                      // default : true,
                      opacityOfGradient: 0.4,
                      padding: const EdgeInsets.all(3),
                      size: 50, //default : 40
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Text('Age'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 20, left: 20),
                    decoration: TextFormDeco().inputFilledContainer(),
                    child: TextField(
                      decoration: TextFormDeco().borderlessInput(),
                      onChanged: (String age) {
                        this.age = age;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Text('Height'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 20, left: 20),
                    decoration: TextFormDeco().inputFilledContainer(),
                    child: TextField(
                      decoration: TextFormDeco().borderlessInput(),
                      onChanged: (String height) {
                        this.height = height;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Text('Weight'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 20, left: 20),
                    decoration: TextFormDeco().inputFilledContainer(),
                    child: TextField(
                        decoration: TextFormDeco().borderlessInput(),
                        onChanged: (String weight) {
                          this.weight = weight;
                        }),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ActivityButton(onTapFunc: () {
                    calori();
                    vki();
                    setState(() {
                      isCalculated = true;
                    });
                  }),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(isCalculated
                        ? 'Calori: ${kalori.toString().substring(0, 4)}'
                        : ''),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(isCalculated
                        ? 'BMI: ${bmi.toString().substring(0, 5)}'
                        : ''),
                  ),
                ],
              ),
            ),
          ),
        ]));
  }
}
