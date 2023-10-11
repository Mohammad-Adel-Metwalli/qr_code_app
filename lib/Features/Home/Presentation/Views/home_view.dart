import 'package:flutter/material.dart';
import 'package:training_project/Core/Utils/constant_colors.dart';
import 'Widgets/custom_floating_action_button.dart';
import 'Widgets/home_view_body.dart';

class HomeView extends StatefulWidget
{
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
{
  @override
  Widget build(BuildContext context)
  {
    return const SafeArea(
        child: Scaffold(
          body: HomeViewBody(),
          backgroundColor: ConstantColors.teaGreen,
          floatingActionButton: CustomFloatingActionButton(),
        )
    );
  }
}