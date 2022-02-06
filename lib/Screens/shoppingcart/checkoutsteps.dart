import 'package:flutter/material.dart';
import 'package:mlm_dashboard/Screens/shoppingcart/ordersummary.dart';
import 'package:mlm_dashboard/Screens/shoppingcart/info_contact.dart';
import 'package:mlm_dashboard/Screens/shoppingcart/packages.dart';
import 'package:mlm_dashboard/colors.dart';
import 'package:mlm_dashboard/widgets/appBar/app_bar.dart';

// import '../../colors.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:im_stepper/main.dart';
// import 'package:im_stepper/stepper.dart';
// import 'package:mlm_dashboard/colors.dart';
// import 'package:mlm_dashboard/Screens/shoppingcart/contactInfo.dart';

class Checkout extends StatefulWidget {
  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<Checkout> {
  int _currentStep = 0;
  StepperType stepperType = StepperType.horizontal;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: AppBarNotificationBar(),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              // color: secondaryColor,
              height: 600,

              child: Card(
                color: secondaryColor,
                elevation: 5,
                child: Stepper(
                  type: stepperType,
                  physics: ScrollPhysics(),
                  currentStep: _currentStep,
                  onStepTapped: (step) => tapped(step),
                  onStepContinue: continued,
                  onStepCancel: cancel,
                  steps: <Step>[
                    Step(
                      //Step # 1
                      title: new Text('Packages'),
                      content: Packages(),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 0
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                    Step(
                      //Step # 2
                      title: new Text('Contact Information'),
                      content: InfoContact(),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 1
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                    Step(
                      //Step # 3
                      title: new Text('Order Summary'),
                      content: OrderSummary(),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 2
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                    Step(
                      //Step # 4
                      title: new Text('Order Summary'),
                      content: InfoContact(),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 3
                          ? StepState.complete
                          : StepState.disabled,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  switchStepsType() {
    setState(() => stepperType == StepperType.horizontal
        ? stepperType = StepperType.horizontal
        : stepperType = StepperType.vertical);
  }

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() {
    _currentStep < 3 ? setState(() => _currentStep += 1) : null;
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }
}
