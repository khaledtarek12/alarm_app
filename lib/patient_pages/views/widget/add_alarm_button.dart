import 'package:alarmapp/patient_pages/data/services/local_notification.service.dart';
import 'package:alarmapp/patient_pages/views/widget/bottom_sheet.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class AddAlramButton extends StatelessWidget {
  const AddAlramButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      strokeWidth: 3,
      color: const Color(0xff6796A7).withOpacity(.9),
      borderType: BorderType.RRect,
      radius: const Radius.circular(24),
      dashPattern: const [6, 8],
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: const Color(0xff6796A7).withOpacity(.35),
            boxShadow: [
              BoxShadow(
                  color: Colors.transparent.withOpacity(.2),
                  blurRadius: 8,
                  spreadRadius: 2,
                  offset: const Offset(4, 4))
            ]),
        child: MaterialButton(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 29),
          onPressed: () {
            showModalBottomSheet(
              constraints: const BoxConstraints(maxHeight: 500),
              context: context,
              builder: (context) {
                return const BottomSheetpage();
              },
            );
            LocalNotificationServices.showBasicNotification();
          },
          child: const Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(Icons.add_alert, size: 45),
            SizedBox(height: 8),
            Text('Add Alarm',
                style: TextStyle(
                    fontWeight: FontWeight.normal, color: Colors.black))
          ]),
        ),
      ),
    );
  }
}
