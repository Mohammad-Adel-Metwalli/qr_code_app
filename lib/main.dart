import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_project/Core/Utils/assets_data.dart';
import 'package:training_project/Features/Home/Presentation/Manager/Cubits/Home_Cubit/home_cubit.dart';
import 'Core/Utils/app_router.dart';

void main()
{
  runApp(const QrCodeApp());
}

class QrCodeApp extends StatelessWidget
{
  const QrCodeApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
        theme: ThemeData(fontFamily: AssetsData.poppinsFont),
      ),
    );
  }
}