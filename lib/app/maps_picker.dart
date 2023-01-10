import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../hyper_ui/widget/checkbox/checkbox.dart';
import '../hyper_ui/widget/combo/combo.dart';
import '../hyper_ui/widget/datepicker/datepicker.dart';
import '../hyper_ui/widget/datepicker/timepicker.dart';
import '../hyper_ui/widget/list/list_view.dart';
import '../hyper_ui/widget/location_picker/location_picker.dart';
import '../hyper_ui/widget/radio/radio.dart';
import '../hyper_ui/widget/radio/switch.dart';
import '../hyper_ui/widget/rating/rating.dart';
import '../hyper_ui/widget/textfield/textfield.dart';

class LocationUI extends StatefulWidget {
  const LocationUI({Key? key}) : super(key: key);

  @override
  State<LocationUI> createState() => _LocationUIState();
}

class _LocationUIState extends State<LocationUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const ExTextField(
                id: "first_name",
                label: "First Name",
                value: null,
              ),
              const ExTimePicker(
                id: "working_hour",
                label: "Working Hour",
                value: null,
              ),
              const ExSwitch(
                id: "gender",
                label: "Gender",
                value: true,
              ),
              const ExRating(
                id: "rating",
                label: "Rating",
                value: null,
              ),
              const ExRadio(
                id: "gender",
                label: "Gender",
                items: [
                  {
                    "label": "Male",
                    "value": "Male",
                  },
                  {
                    "label": "Female",
                    "value": "Female",
                  }
                ],
                value: "Female",
              ),
              const ExTextField(
                id: "password",
                label: "Password",
                textFieldType: TextFieldType.password,
                value: null,
              ),
              const ExTextField(
                id: "qty",
                label: "Qty",
                keyboardType: TextInputType.number,
                value: null,
              ),
              ExListView(
                shrinkWrap: true,
                futureBuilder: (page) async {
                  var response = await Dio().get(
                    "https://reqres.in/api/users",
                    options: Options(
                      headers: {
                        "Content-Type": "application/json",
                      },
                    ),
                  );
                  return response;
                },
                builder: (index, item) {
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: NetworkImage(
                          item["avatar"],
                        ),
                      ),
                      title: Text("${item["first_name"]}"),
                      subtitle: Text("${item["email"]}"),
                    ),
                  );
                },
              ),
              // ExAutoComplete(
              //   value: "",
              //   future: (search) async {
              //     var response = await Dio().get(
              //       "https://dummyjson.com/products/search?q=search",
              //       options: Options(
              //         headers: {
              //           "Content-Type": "application/json",
              //         },
              //       ),
              //     );
              //     Map obj = response.data;
              //     return obj["products"]; //List
              //   },
              //   valueField: "id",
              //   displayField: "title",
              //   photoField: "thumbnail",
              //   onChanged: (value) {
              //     print("Your value is $value");
              //   },
              // ),
              const ExCheckBox(
                id: "my_hobby",
                label: "My Hobby",
                items: [
                  {
                    "label": "Coding",
                    "value": "Coding",
                  },
                  {
                    "label": "Afk",
                    "value": "Afk",
                  },
                  {
                    "label": "E-Sport",
                    "value": "E-Sport",
                  }
                ],
                value: [
                  "Coding",
                ],
              ),
              const ExLocationPicker(
                id: "location",
                label: "Location",
                latitude: -6.218481065235333,
                longitude: 106.80254435779423,
              ),
              const ExDatePicker(
                id: "birth_date",
                label: "Birth Date",
                value: null,
              ),
              const ExCombo(
                id: "gender",
                label: "Gender",
                items: [
                  {
                    "label": "Male",
                    "value": "Male",
                  },
                  {
                    "label": "Female",
                    "value": "Female",
                  }
                ],
                value: "Female",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
