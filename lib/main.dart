import 'package:flutter/material.dart';
import 'package:training_project/Core/Utils/assets_data.dart';
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
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: ThemeData(fontFamily: AssetsData.poppinsFont),
    );
  }
}