import 'package:car_servicing_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../model/vehicleListData.dart';
import 'garageContents.dart';

class VehicleListPage extends StatefulWidget {
  const VehicleListPage({Key? key}) : super(key: key);

  @override
  State<VehicleListPage> createState() => _VehicleListPageState();
}

class _VehicleListPageState extends State<VehicleListPage> {
  @override
  void initState() {
    _getVehicleList();
    super.initState();
  }

  List<Vehicle> vehicleList = [];

  Future _getVehicleList() async {
    const apiUrl = "http://192.168.1.12:3000/api/vehicles";
    final response = await http.get(
      Uri.parse(apiUrl),
    );
    var result = response.body.toString();

    print(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      var _vehicle = vehicleListDataFromJson(result);
      print(_vehicle);
      setState(() {
        vehicleList = _vehicle.vehicles!;
      });
    } else {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("No Vehicles Found"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appUiLightColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GarageContents(
                "Vehicles", "assets/images/img2.png", "Number", "Model"),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: SizedBox(
                height: 530,
                child: ListView.builder(
                    itemCount: vehicleList.length,
                    itemBuilder: (context, index) {
                      Vehicle data = vehicleList[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "${data.vehicleNo}",
                                  style: textfieldInputStyle,
                                ),
                                Text(
                                  "${data.vehicleModel}",
                                  style: textfieldInputStyle,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
