import 'package:car_servicing_app/Screens/Garage/vehicleList_page.dart';
import 'package:car_servicing_app/Screens/search_page.dart';
import 'package:car_servicing_app/Screens/vehicle_page.dart';
import 'package:car_servicing_app/widget/customButton.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';
import 'Garage/billList_page.dart';
import 'Garage/servicesList_page.dart';
// import 'noVehiclefound_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController numberController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  late String carNo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appUiLightColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 15),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome To",
                    style: subHeadingTextStyle,
                  ),
                  Text(
                    "My Servicing",
                    style: themeHeadingTextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80.0),
                    child: Text(
                      "Vehicle No.",
                      style: subHeadingTextStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: TextFormField(
                      style: textfieldInputStyle,
                      controller: numberController,
                      keyboardType: TextInputType.text,
                      // textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        hintText: "HRXXXX",
                        hintStyle: hintTextStyle,
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Enter Vehicle Number";
                        } else if (!RegExp(
                                r'^[A-Z]{2}[0-9]{2}[A-Z]{2}[0-9]{4}$')
                            .hasMatch(value)) {
                          return "Enter Correct Vehicle Number";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: CustomThemeButton(
                          buttonText: "Search",
                          ontap: () {
                            if (formKey.currentState!.validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      VehiclePage(num: numberController.text),
                                ),
                              );
                            }
                          })
                      // GestureDetector(
                      //   behavior: HitTestBehavior.translucent,
                      //   onTap: () {
                      //     if (formKey.currentState!.validate()) {
                      //       Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //           builder: (context) =>
                      //               VehiclePage(num: numberController.text),
                      //         ),
                      //       );
                      //     }
                      //   },
                      //   child: Container(
                      //     height: 45,
                      //     width: double.infinity,
                      //     decoration: BoxDecoration(
                      //       color: appUiThemeColor,
                      //       borderRadius: BorderRadius.circular(8),
                      //     ),
                      //     child: Center(
                      //       child: Text(
                      //         "Search",
                      //         style: TextStyle(
                      //             fontSize: 18,
                      //             fontWeight: FontWeight.w400,
                      //             color: appUiLightColor),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SearchPage(),
                          ),
                        );
                      },
                      child: Container(
                        height: 45,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: appUiLightColor,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: appUiBorderColor, width: 1),
                        ),
                        child: Center(
                          child: Text(
                            "New Service",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: appUiDarkColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Center(
                      child: Text(
                        "My Garage",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: appUiDarkColor),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => VehicleListPage(),
                              ),
                            );
                          },
                          child: Container(
                            height: 160,
                            width: 105,
                            decoration: BoxDecoration(
                              color: appUiContainerColor,
                              borderRadius: BorderRadius.circular(8),
                              border:
                                  Border.all(color: appUiBorderColor, width: 1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 15),
                              child: Column(
                                children: [
                                  Text(
                                    "Vehicles",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: appUiDarkColor),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Image(
                                      width: 80,
                                      height: 100,
                                      image:
                                          AssetImage("assets/images/img2.png"),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ServicesListPage(),
                              ),
                            );
                          },
                          child: Container(
                            height: 160,
                            width: 105,
                            decoration: BoxDecoration(
                              color: appUiContainerColor,
                              borderRadius: BorderRadius.circular(8),
                              border:
                                  Border.all(color: appUiBorderColor, width: 1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 15),
                              child: Column(
                                children: [
                                  Text(
                                    "Services",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: appUiDarkColor),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Image(
                                      width: 80,
                                      height: 100,
                                      image:
                                          AssetImage("assets/images/img3.png"),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BillListPage(),
                              ),
                            );
                          },
                          child: Container(
                            height: 160,
                            width: 105,
                            decoration: BoxDecoration(
                              color: appUiContainerColor,
                              borderRadius: BorderRadius.circular(8),
                              border:
                                  Border.all(color: appUiBorderColor, width: 1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 15),
                              child: Column(
                                children: [
                                  Text(
                                    "Bills",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: appUiDarkColor),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Image(
                                      width: 80,
                                      height: 100,
                                      image:
                                          AssetImage("assets/images/img4.png"),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
