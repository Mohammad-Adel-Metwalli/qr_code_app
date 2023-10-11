import 'package:flutter/material.dart';
import 'package:training_project/Features/Home/Presentation/Views/Widgets/apps_list_view.dart';
import 'package:training_project/Features/Home/Presentation/Views/Widgets/bottom_sheet_image_text_field.dart';
import 'bottom_of_bottom_sheet.dart';
import 'bottom_sheet_link_text_field.dart';
import 'head_of_bottom_sheet.dart';

class CreateQrCode extends StatefulWidget
{
  const CreateQrCode({super.key});
  static TextEditingController linkText = TextEditingController();
  static TextEditingController imageText = TextEditingController();

  @override
  State<CreateQrCode> createState() => _CreateQrCodeState();
}

class _CreateQrCodeState extends State<CreateQrCode>
{
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.only(
          right: 16,
          left: 16,
          bottom: MediaQuery.viewInsetsOf(context).bottom * 1.2
      ),

      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
            
            const HeadOfBottomSheet(),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

            BottomSheetLinkTextField(
              textOfTheField: 'Link',
              textEditingController: CreateQrCode.linkText,
            ),

            BottomSheetImageTextField(
              textOfTheField: 'Image name',
              textEditingController: CreateQrCode.imageText,
            ),

            const AppsListView(),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.04),

            const BottomOfBottomSheet(),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
          ],
        ),
      ),
    );
  }
}