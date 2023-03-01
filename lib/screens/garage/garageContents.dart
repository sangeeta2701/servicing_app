import 'package:flutter/material.dart';
import '../../utils/constants.dart';

class GarageContents extends StatelessWidget {
  String name;
  String img;
  String vkey;
  String value;
  GarageContents(this.name, this.img, this.vkey, this.value);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: appUiDarkColor,
                size: 18,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: appUiDarkColor),
                  ),
                  Image(
                    width: 40,
                    height: 40,
                    image: AssetImage(img),
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Divider(
              color: appUiBorderColor,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    vkey,
                    style: TextStyle(
                        color: appUiDarkColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    value,
                    style: TextStyle(
                        color: appUiDarkColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Divider(
                color: appUiBorderColor,
                thickness: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
