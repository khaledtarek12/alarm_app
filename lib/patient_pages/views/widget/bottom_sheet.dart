import 'package:alarmapp/patient_pages/views/widget/custom_button.dart';
import 'package:alarmapp/patient_pages/views/widget/text_form_validator_field.dart';
import 'package:flutter/material.dart';

class BottomSheetpage extends StatefulWidget {
  const BottomSheetpage({super.key});

  @override
  State<BottomSheetpage> createState() => _BottomSheetpageState();
}

class _BottomSheetpageState extends State<BottomSheetpage> {
  TimeOfDay timeOfDay =
      TimeOfDay(hour: DateTime.now().hour, minute: DateTime.now().minute);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(25),
      child: Column(
        children: [
          const CustomFormTextField(hint: 'Title'),
          const CustomFormTextField(hint: 'Discription'),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(timeOfDay.format(context).toString(),
                    style: const TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                IconButton(
                    onPressed: () {
                      showtimepicker();
                    },
                    icon: const Icon(
                      Icons.add_alarm,
                      size: 35,
                    ))
              ],
            ),
          ),
          const Spacer(),
          CusttomButton(
              text: 'Save',
              onTap: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }

  void showtimepicker() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      setState(() {
        timeOfDay = value!;
      });
    });
  }
}
