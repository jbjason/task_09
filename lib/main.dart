import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:task_09/config/theme/app_theme.dart';
import 'package:task_09/feature/home/data/repository/home_repository.dart';
import 'package:task_09/feature/home/prensentation/page/home.dart';
import 'package:task_09/feature/home/prensentation/provider/home_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => HomeProvider(HomeRepository())),
        ],
        child: MaterialApp(
          title: 'Task 09',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.light(),
          home: Home(),
        ),
      ),
    );
  }
}