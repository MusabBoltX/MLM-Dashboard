import 'package:flutter/material.dart';
import 'package:mlm_dashboard/widgets/appBar/app_bar.dart';

class Reg extends StatefulWidget {
  @override
  _RegState createState() => _RegState();
}

class _RegState extends State<Reg> {
  int _currentStep = 0;

  StepperType stepperType = StepperType.horizontal;

  var checkedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: AppBarNotificationBar(),
            ),
            Expanded(
              child: Stepper(
                type: stepperType,
                physics: ScrollPhysics(),
                currentStep: _currentStep,
                onStepTapped: (step) => tapped(step),
                onStepContinue: continued,
                onStepCancel: cancel,
                steps: <Step>[
                  /// --- step 1
                  Step(
                    title: new Text('Step 1'),
                    content: Column(children: <Widget>[
                      Center(
                        child: Card(
                          elevation: 5,
                          color: Colors.white70,
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.55,
                            color: Colors.white70,
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: Column(
                              children: [
                                // sponsor text //
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'SPONSOR AND PACKAGE INFORMATION',
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                // text username //
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Sponsor Username",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                      ),
                                    )
                                  ],
                                ),

                                // textfield //
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.60,
                                        height: 30,
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            focusColor: Colors.transparent,
                                            disabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide.none),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide.none),
                                            fillColor: Colors.black12,
                                            filled: true,
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide.none),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),

                                // text full name //
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Sponsor Fullname",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                      ),
                                    )
                                  ],
                                ),

                                //  textfield  //
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.60,
                                        height: 30,
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            focusColor: Colors.transparent,
                                            disabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide.none),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide.none),
                                            fillColor: Colors.black12,
                                            filled: true,
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide.none),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),

                                // Position //
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Position",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                //  textfield  //
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.60,
                                        height: 30,
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            focusColor: Colors.transparent,
                                            disabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide.none),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide.none),
                                            fillColor: Colors.black12,
                                            filled: true,
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide.none),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),

                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Product",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                //  textfield  //
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.60,
                                        height: 30,
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            focusColor: Colors.transparent,
                                            disabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide.none),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide.none),
                                            fillColor: Colors.black12,
                                            filled: true,
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide.none),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ]),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 0
                        ? StepState.complete
                        : StepState.disabled,
                  ),

                  /// --- step 2
                  Step(
                    title: new Text('Step 2'),
                    content: Column(
                      children: <Widget>[
                        Center(
                          child: Card(
                            elevation: 5,
                            color: Colors.white70,
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.6,
                              color: Colors.white70,
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: Column(
                                children: [
                                  // sponsor text //
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'SPONSOR AND PACKAGE INFORMATION',
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  // text username //
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "First Name",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  // textfield //
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.60,
                                          height: 30,
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              focusColor: Colors.transparent,
                                              disabledBorder:
                                                  OutlineInputBorder(
                                                      borderSide:
                                                          BorderSide.none),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide.none),
                                              fillColor: Colors.black12,
                                              filled: true,
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide.none),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),

                                  // text full name //
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Last Name",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  //  textfield  //
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.60,
                                          height: 30,
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              focusColor: Colors.transparent,
                                              disabledBorder:
                                                  OutlineInputBorder(
                                                      borderSide:
                                                          BorderSide.none),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide.none),
                                              fillColor: Colors.black12,
                                              filled: true,
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide.none),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),

                                  // Position //
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Date of Birth",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  //  textfield  //
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.60,
                                          height: 30,
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              focusColor: Colors.transparent,
                                              disabledBorder:
                                                  OutlineInputBorder(
                                                      borderSide:
                                                          BorderSide.none),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide.none),
                                              fillColor: Colors.black12,
                                              filled: true,
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide.none),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),

                                  // Position //
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Email",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),

                                  //  textfield  //
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.60,
                                          height: 30,
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              focusColor: Colors.transparent,
                                              disabledBorder:
                                                  OutlineInputBorder(
                                                      borderSide:
                                                          BorderSide.none),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide.none),
                                              fillColor: Colors.black12,
                                              filled: true,
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide.none),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),

                                  // Position //
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Phone Number",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  //  textfield  //
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.60,
                                          height: 30,
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              focusColor: Colors.transparent,
                                              disabledBorder:
                                                  OutlineInputBorder(
                                                      borderSide:
                                                          BorderSide.none),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide.none),
                                              fillColor: Colors.black12,
                                              filled: true,
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide.none),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 1
                        ? StepState.complete
                        : StepState.disabled,
                  ),

                  /// --- step 3
                  Step(
                    title: new Text('Step 3'),
                    content: Column(
                      children: <Widget>[
                        Center(
                          child: Card(
                            elevation: 5,
                            color: Colors.white70,
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.45,
                              color: Colors.white70,
                              width: MediaQuery.of(context).size.width * 0.6,
                              child: Column(
                                children: [
                                  // sponsor text //
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'SPONSOR AND PACKAGE INFORMATION',
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  // text username //
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Username",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),

                                  // textfield //
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.60,
                                          height: 30,
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              focusColor: Colors.transparent,
                                              disabledBorder:
                                                  OutlineInputBorder(
                                                      borderSide:
                                                          BorderSide.none),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide.none),
                                              fillColor: Colors.black12,
                                              filled: true,
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide.none),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),

                                  // text full name //
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Password",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),

                                  //  textfield  //
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.60,
                                          height: 30,
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              focusColor: Colors.transparent,
                                              disabledBorder:
                                                  OutlineInputBorder(
                                                      borderSide:
                                                          BorderSide.none),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide.none),
                                              fillColor: Colors.black12,
                                              filled: true,
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide.none),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),

                                  // Position //
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Confirm Password",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  //  textfield  //
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.60,
                                          height: 30,
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              focusColor: Colors.transparent,
                                              disabledBorder:
                                                  OutlineInputBorder(
                                                      borderSide:
                                                          BorderSide.none),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide.none),
                                              fillColor: Colors.black12,
                                              filled: true,
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide.none),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),

                                  // CheckboxListTile(
                                  //   title: Text("I ACCEPT TERMS AND CONDITIONS"),
                                  //   value: checkedValue,
                                  //   onChanged: (newValue) {
                                  //     setState(() {
                                  //       checkedValue = newValue;
                                  //     });
                                  //   },
                                  //   controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                                  // ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 2
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  switchStepsType() {
    setState(() => stepperType == StepperType.vertical
        ? stepperType = StepperType.horizontal
        : stepperType = StepperType.vertical);
  }

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() {
    _currentStep < 2 ? setState(() => _currentStep += 1) : null;
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }
}
