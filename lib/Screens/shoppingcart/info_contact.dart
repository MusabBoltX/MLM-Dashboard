import 'package:flutter/material.dart';
import 'package:mlm_dashboard/colors.dart';
import 'package:mlm_dashboard/models/contact_info.dart';

class InfoContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final contactData = ContactInfoData();

    return Padding(
      padding: const EdgeInsets.only(right: 800),
      child: Container(
        height: 350,
        decoration: BoxDecoration(
          color: secondaryColor,
          border: Border.all(
            color: primaryColor,
          ),
          boxShadow: [
            BoxShadow(
              color: primaryColor,
              blurRadius: 10.0,
            ),
          ],
        ),
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 1,
          ),
          itemBuilder: (context, index) => ContactGrid(
              name: contactData.info[index].name,
              address: contactData.info[index].address,
              city: contactData.info[index].city,
              zipcode: contactData.info[index].zipcode,
              number: contactData.info[index].phoneNum),
        ),
      ),
    );
  }
}

class ContactGrid extends StatelessWidget {
  final String name;
  final String address;
  final String city;
  final int zipcode;
  final int number;

  const ContactGrid({
    Key key,
    @required this.name,
    @required this.address,
    @required this.city,
    @required this.zipcode,
    @required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 12,
          ),
          Container(
            child: Text(
              name,
              style: TextStyle(fontSize: 22),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            color: divider,
          ),
          SizedBox(
            height: 12,
          ),
          Text(address),
          SizedBox(
            height: 12,
          ),
          Divider(
            color: divider,
          ),
          SizedBox(
            height: 12,
          ),
          Text(city),
          SizedBox(
            height: 12,
          ),
          Divider(
            color: divider,
          ),
          SizedBox(
            height: 12,
          ),
          Text(zipcode.toString()),
          SizedBox(
            height: 12,
          ),
          Divider(
            color: divider,
          ),
          SizedBox(
            height: 12,
          ),
          Text(number.toString()),
          SizedBox(
            height: 12,
          ),
          Divider(
            color: divider,
          ),
          SizedBox(
            height: 2,
          ),
          Center(
            child: ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
              icon: Icon(Icons.remove_red_eye),
              label: Text("Default"),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          // ElevatedButton.icon(
          //   onPressed: () {},
          //   style: ElevatedButton.styleFrom(primary: Colors.purple),
          //   icon: Icon(Icons.add_circle_outline_outlined),
          //   label: Text('New Address'),
          // ),
        ],
      ),
    );
  }
}
