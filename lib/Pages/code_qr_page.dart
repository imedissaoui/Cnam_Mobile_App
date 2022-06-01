import 'package:flutter/material.dart';
import 'package:pcd2/Pages/two.dart';
import 'package:pcd2/Widgets/app_colors.dart';

import 'one.dart';

class CodeQrPage extends StatefulWidget {
  const CodeQrPage({Key? key}) : super(key: key);

  @override
  State<CodeQrPage> createState() => _CodeQrPageState();
}

class _CodeQrPageState extends State<CodeQrPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child:Scaffold(
          backgroundColor: AppColors.LightGrey,
          appBar: AppBar(
            backgroundColor: AppColors.Blue,
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.qr_code,
                    size: 30,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.qr_code_scanner,
                    size: 30,
                  ),
                ),
              ],
            ),
            title: Text(
              '                                    QR CODE ',
            ),
          ),
          body: TabBarView(
            children: [
              First(),
              Second(),
            ],
          ),
        ),
    );
  }
}
