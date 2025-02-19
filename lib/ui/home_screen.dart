import 'package:alkan_app/ui/tabs/more_tab.dart';
import 'package:alkan_app/ui/tabs/my_insurances_tab.dart';
import 'package:alkan_app/ui/tabs/types_tab.dart';
import 'package:alkan_app/utils/app_assets.dart';
import 'package:alkan_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTabIndex = 0;
  List<Widget> tabs =[
    TypesTab(),
    MyInsurancesTab(),
    MoreTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  tabs[currentTabIndex],
      bottomNavigationBar: BuildBottomNavigationBar(),
    );
  }
  Widget BuildBottomNavigationBar (){
    return BottomNavigationBar(
      selectedItemColor: AppColors.primary,
      currentIndex:currentTabIndex ,
      onTap: (index){
        currentTabIndex = index ;
        setState(() {});
      },
      iconSize: 32,
      selectedFontSize: 14,
      // selectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
      items: [
        BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.types_icon)),label:"Types" ),
        BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.insurances_icon)),label: "MyInsurances"),
        BottomNavigationBarItem(icon: ImageIcon(AssetImage(AppAssets.more_icon)),label:"More" ),
      ],
    );
  }

}
