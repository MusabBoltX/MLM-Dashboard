import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mlm_dashboard/colors.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryColor,
      child: Column(
        children: [
          DrawerHeader(child: Image.asset("assets/images/logo.png")),
          DrawerListTile(
            title: "Dashboard",
            image: "assets/icons/menu_dashbord.svg",
          ),
          DrawerListTile(title: 'Downline', image: "assets/icons/pdf_file.svg"),
          DrawerListTile(
            title: "Package/Product",
            image: "assets/icons/menu_store.svg",
          ),
          DrawerListTile(
            title: "Register",
            image: "assets/icons/menu_setting.svg",
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({Key key, this.title, this.image}) : super(key: key);

  final String title, image;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: SvgPicture.asset(
        image,
        color: Colors.white,
        height: 16,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}
