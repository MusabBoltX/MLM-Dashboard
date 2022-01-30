import 'package:flutter/cupertino.dart';

class ContactInfo {
  final String name;
  final String address;
  final int zipcode;
  final String city;
  final int phoneNum;

  ContactInfo({
    this.name,
    this.address,
    this.zipcode,
    this.city,
    this.phoneNum,
  });
}

class ContactInfoData {
  List<ContactInfo> _info = [
    ContactInfo(
      name: "Malik",
      address: "dha",
      zipcode: 0124,
      city: "KHI",
      phoneNum: 0123456700,
    )
  ];

  List<ContactInfo> get info {
    return [..._info];
  }
}
