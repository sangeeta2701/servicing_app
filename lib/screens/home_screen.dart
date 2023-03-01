import 'package:car_servicing_app/screens/newService_screen.dart';
import 'package:car_servicing_app/widget/customButton.dart';
import 'package:car_servicing_app/widget/textfield.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController vehicleNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
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
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  "Welcome to",
                  style: contentTextStyle,
                ),
              ),
              Text(
                "My Service",
                style: themeHeadingTextStyle,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Text(
                  "Enter Vehicle Number:",
                  style: subHeadingTextStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: TextFieldValue(
                    hintText: "HRXXXXX",
                    controller: vehicleNumberController,
                    textInputType: TextInputType.text),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: CustomThemeButton(buttonText: "Search", ontap: () {}),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>NewServiceScreen(),),);
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: appUiBorderColor, width: 1),
                    ),
                    child: Center(
                      child: Text(
                        "New Service",
                        style: buttonTextStyle,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "My Garage",
                    style: subHeadingTextStyle,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      garageContents(
                          "Vehicles", "assets/images/img2.png", () {}),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: garageContents(
                            "Services", "assets/images/img3.png", () {}),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: garageContents(
                            "Bills", "assets/images/img4.png", () {}),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget garageContents(String name, String img, VoidCallback ontap) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 200,
        width: 150,
        decoration: BoxDecoration(
          border: Border.all(color: appUiBorderColor, width: 1),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Text(
              name,
              style: subHeadingTextStyle,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Image(
                height: 100,
                width: 100,
                image: AssetImage(img),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
