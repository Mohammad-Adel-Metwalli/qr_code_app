import 'package:flutter/material.dart';
import 'package:training_project/Features/Home/Presentation/Views/Widgets/apps_list_view_body.dart';

class AppsListView extends StatefulWidget
{
  const AppsListView({super.key});

  @override
  State<AppsListView> createState() => _AppsListViewState();
}

class _AppsListViewState extends State<AppsListView>
{
  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.1,
      width: double.infinity,
      child: const AppsListViewBody(),
    );
  }
}