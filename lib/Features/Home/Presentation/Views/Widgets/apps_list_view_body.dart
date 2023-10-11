import 'package:flutter/material.dart';
import 'package:training_project/Features/Home/Data/Models/qr_code_details_model.dart';
import '../../../../../Core/Utils/assets_data.dart';
import 'apps_icons.dart';

class AppsListViewBody extends StatefulWidget
{
  const AppsListViewBody({super.key,});

  @override
  State<AppsListViewBody> createState() => _AppsListViewBodyState();
}

class _AppsListViewBodyState extends State<AppsListViewBody>
{
  QrCodeDetailsModel? qrCodeDetailsModel;
  int? isSelected;

  @override
  Widget build(BuildContext context)
  {
    return ListView.builder(
        itemCount: AssetsData.appsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index)
        {
          final appName = AssetsData.appsList.keys.toList()[index];
          final appIcon = AssetsData.appsList[appName]!.keys.toList()[0];
          final appColor = AssetsData.appsList[appName]!.values.toList()[0];

          return Padding(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width * 0.016),
            child: InkWell(
              borderRadius: BorderRadius.circular(100),
              onTap: ()
              {
                isSelected = index;
                QrCodeDetailsModel().setQrCodeColor(appColor);
                setState((){});
              },

              child: AppsIcons(appIcon: appIcon, selectedIndex: isSelected == index),
            ),
          );
        }
    );
  }
}