import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import '../utils/constants.dart';



class NewServiceScreen extends StatefulWidget {
  const NewServiceScreen({super.key});

  @override
  State<NewServiceScreen> createState() => _NewServiceScreenState();
}

class _NewServiceScreenState extends State<NewServiceScreen> {
  String? type;

  TextEditingController dateController = TextEditingController();
  TextEditingController vNumberController = TextEditingController();
  TextEditingController modelController = TextEditingController();
  TextEditingController distanceController = TextEditingController();
  TextEditingController billNumberController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  final formKey = GlobalKey<FormState>();


//add service
Future<void> _addService() async {
    const apiUrl = "http://192.168.1.12:3000/api/vehicles/addService";
    Map<String, dynamic> body = {
      "vehicleNo": vNumberController.text,
      "vehicleModel": modelController.text,
      "customerName": nameController.text,
      "phoneNumber": phoneNumberController.text,
      "serviceDate": dateController.text,
      "serviceType": "RR",
      "vehicleKm": distanceController.text,
      "billNumber": billNumberController.text,
      "billAmount": amountController.text,
    };
    final response = await http.post(
      Uri.parse(apiUrl),
      body: (body),
    );
    print(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: appUiThemeColor,
          content: Text("Service Added Successfully!!")));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: appUiThemeColor,
          content: Text("Something went Wrong")));
    }
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
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
                      "New Service",
                      style: headingTextStyle,
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Form(
                        key: formKey,
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Vehicle Number",
                                  style: textFieldTextStyle,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: TextFormField(
                                    style: textfieldInputStyle,
                                    controller: vNumberController,
                                    keyboardType: TextInputType.text,
                                    textInputAction: TextInputAction.done,
                                    decoration: InputDecoration(
                                      hintText: "Enter Vehicle Number",
                                      hintStyle: hintTextStyle,
                                      enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: appUiBorderColor, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: appUiThemeColor, width: 1),
            ),
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Please Enter Vehicle Number";
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Model",
                                    style: textFieldTextStyle,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: TextFormField(
                                      style: textfieldInputStyle,
                                      controller: modelController,
                                      keyboardType: TextInputType.text,
                                      textInputAction: TextInputAction.done,
                                      decoration: InputDecoration(
                                        hintText: "Enter Vehicle Model",
                                        hintStyle: hintTextStyle,
                                        enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: appUiBorderColor, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: appUiThemeColor, width: 1),
            ),
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Please Enter Model";
                                        } else {
                                          return null;
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Distance",
                                    style: textFieldTextStyle,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: TextFormField(
                                      style: textfieldInputStyle,
                                      controller: distanceController,
                                      keyboardType: TextInputType.number,
                                      textInputAction: TextInputAction.done,
                                      decoration: InputDecoration(
                                        hintText: "Enter Distance(Km)",
                                        hintStyle: hintTextStyle,
                                        enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: appUiBorderColor, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: appUiThemeColor, width: 1),
            ),
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Please Enter Distance";
                                        } else {
                                          return null;
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Service Date",
                                    style: textFieldTextStyle,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: TextFormField(
                                      controller: dateController,
                                      style: textfieldInputStyle,
                                      keyboardType: TextInputType.datetime,
                                      textInputAction: TextInputAction.done,
                                      decoration: InputDecoration(
                                        hintText: "yyyy-mm-dd",
                                        hintStyle: hintTextStyle,
                                        enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: appUiBorderColor, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: appUiThemeColor, width: 1),
            ),
                                      ),
                                      onTap: () async {
                                        DateTime? pickedDate = await showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime(1950),
                                            lastDate: DateTime(2100));
              
                                        if (pickedDate != null) {
                                          print(pickedDate);
                                          String formattedDate =
                                              DateFormat('yyyy-MM-dd')
                                                  .format(pickedDate);
                                          print(formattedDate);
                                          setState(() {
                                            dateController.text = formattedDate;
                                          });
                                        } else {}
                                      },
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Please Enter Service Date Number";
                                        } else {
                                          return null;
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Container(
                                // height: 50,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border:
                                      Border.all(color: appUiBorderColor, width: 1),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Service Type :",
                                        style: textFieldTextStyle,
                                      ),
                                      Row(
                                        children: [
                                          Radio(
                                              activeColor: appUiThemeColor,
                                              value: "P/S",
                                              groupValue: type,
                                              onChanged: (val) {
                                                setState(() {
                                                  type = val;
                                                });
                                              }),
                                          Text(
                                            "P/S",
                                            style: textfieldInputStyle,
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10.0),
                                        child: Row(
                                          children: [
                                            Radio(
                                                activeColor: appUiThemeColor,
                                                value: "R/R",
                                                groupValue: type,
                                                onChanged: (val) {
                                                  setState(() {
                                                    type = val;
                                                  });
                                                }),
                                            Text(
                                              "R/R",
                                              style: textfieldInputStyle,
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Customer Name",
                                    style: textFieldTextStyle,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: TextFormField(
                                      style: textfieldInputStyle,
                                      controller: nameController,
                                      keyboardType: TextInputType.number,
                                      textInputAction: TextInputAction.done,
                                      decoration: InputDecoration(
                                        hintText: "Enter Name",
                                        hintStyle: hintTextStyle,
                                        enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: appUiBorderColor, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: appUiThemeColor, width: 1),
            ),
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Please Enter  Name";
                                        } else if (RegExp(
                                                r'/(^[a-zA-Z][a-zA-Z\s]{0,20}[a-zA-Z]$)/')
                                            .hasMatch(value)) {
                                          return "Enter Correct Name";
                                        } else {
                                          return null;
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Phone Number",
                                    style: textFieldTextStyle,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: TextFormField(
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(10),
                                      ],
                                      style: textfieldInputStyle,
                                      controller: phoneNumberController,
                                      keyboardType: TextInputType.number,
                                      textInputAction: TextInputAction.done,
                                      decoration: InputDecoration(
                                        hintText: "Enter Phone Number",
                                        hintStyle: hintTextStyle,
                                        enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: appUiBorderColor, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: appUiThemeColor, width: 1),
            ),
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Please Enter Mobile Number";
                                        } else if (!RegExp(
                                                r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$')
                                            .hasMatch(value)) {
                                          return "Enter Correct Phone Number";
                                        } else {
                                          return null;
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Bill Number",
                                    style: textFieldTextStyle,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: TextFormField(
                                      style: textfieldInputStyle,
                                      controller: billNumberController,
                                      keyboardType: TextInputType.number,
                                      textInputAction: TextInputAction.done,
                                      decoration: InputDecoration(
                                        hintText: "Enter Bill Number",
                                        hintStyle: hintTextStyle,
                                        enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: appUiBorderColor, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: appUiThemeColor, width: 1),
            ),
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Please Enter Bill Number";
                                        } else {
                                          return null;
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Amount",
                                      style: textFieldTextStyle,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8.0, bottom: 150),
                                      child: TextFormField(
                                        style: textfieldInputStyle,
                                        controller: amountController,
                                        keyboardType: TextInputType.number,
                                        textInputAction: TextInputAction.done,
                                        decoration: InputDecoration(
                                          hintText: "Enter Amount",
                                          hintStyle: hintTextStyle,
                                          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: appUiBorderColor, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(color: appUiThemeColor, width: 1),
            ),
                                        ),
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "Please Enter Amount ";
                                          } else {
                                            return null;
                                          }
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
          ),]),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        height: 50,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
          child: FloatingActionButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                _addService();
              } else {
                Center(child: CircularProgressIndicator());
              }
            },
            backgroundColor: appUiThemeColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                "Add Service  +",
                style: themeButtonTextStyle
              ),
            ),
          ),
        ),
      ),
    );
    
  }
}