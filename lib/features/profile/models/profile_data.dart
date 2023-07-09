import 'package:flutter/material.dart';
import 'package:organization_app1/features/profile/models/profile.dart';
import 'package:organization_app1/features/profile/models/edit_icon_button.dart';
import 'package:organization_app1/features/profile/models/profile_field.dart';

class ProfileData extends StatefulWidget {
  const ProfileData({Key? key, required this.profile}) : super(key: key);
  final Profile profile;

  @override
  State<ProfileData> createState() => _ProfileDataState();
}

class _ProfileDataState extends State<ProfileData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blueGrey[800],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          columnWidths: const {0: FlexColumnWidth(), 1: FixedColumnWidth(100)},
          children: [
            TableRow(children: [
              ProfileField(title: "Name", subTitle: widget.profile.name),
              const EditInfoButton(tag: "name",),
            ]),
            TableRow(children: [
              ProfileField(title: "Sex", subTitle: widget.profile.sex),
              const EditInfoButton(tag: "sex",),
            ]),
            TableRow(children: [
              ProfileField(title: "Mail", subTitle: widget.profile.email),
              const EditInfoButton(tag: "mail",),
            ]),
            TableRow(children: [
              ProfileField(
                  title: "Region", subTitle: widget.profile.regionData),
              const EditInfoButton(tag: "region",),
            ]),
            TableRow(children: [
              ProfileField(
                  title: "Phone Number", subTitle: widget.profile.phoneNumber),
              const EditInfoButton(tag: "phone",),
            ])
          ],
        ),
      ),
    );
  }
}
