import 'package:flutter/material.dart';
import 'package:mlm_dashboard/colors.dart';
import 'package:mlm_dashboard/widgets/appBar/app_bar.dart';
import 'package:mlm_dashboard/widgets/e-wallet/third_row.dart';
import 'package:mlm_dashboard/widgets/profile/bankDetails.dart';
import 'package:mlm_dashboard/widgets/profile/cad_avatar.dart';
import 'package:intl/intl.dart';
import 'package:mlm_dashboard/widgets/profile/contactDetails.dart';
import 'package:mlm_dashboard/widgets/profile/paymentDetails.dart';
import 'package:mlm_dashboard/widgets/profile/row2personal_details.dart';
import 'package:mlm_dashboard/widgets/profile/settings.dart';

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  // final GlobalKey<FormState> _formKeyTwo = GlobalKey<FormState>();
  // final TextEditingController addressLineOneController =
  //     TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController dropdownMenuCOntroller = TextEditingController();
  final TextEditingController dateTimecontroller = TextEditingController();
  final format = DateFormat.yMMMd();

  DateTime selectedDateTime;

  var editText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppBarNotificationBar(),
              const SizedBox(height: 15),
              Text(
                'Profile View',
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(height: 10),
              const CardAvatar(),
              const SizedBox(height: 15),
              Row(
                children: [
                  PersonalDetails(),
                  const SizedBox(width: 9.5),
                  ContactDetails(),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  BankDetails(),
                  SizedBox(
                    width: 9.5,
                  ),
                  PaymentDetails(),
                  SizedBox(
                    width: 9.5,
                  ),
                  Settings(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
