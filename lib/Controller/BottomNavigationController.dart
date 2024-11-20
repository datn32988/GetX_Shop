import 'package:chodotot_getx/Page/Search/Search_Product.dart';
import 'package:chodotot_getx/Page/HomePage.dart';
import 'package:chodotot_getx/Page/Profile/ProfilePage.dart';
import 'package:chodotot_getx/Page/Setting/SettingPage.dart';
import 'package:get/get.dart';

class BottomNavController extends GetxController {
  RxInt index = 0.obs;
  var pages = [
    const Homepage(),
    const Profilepage(),
    const AddproductPage(),
    const SettingPage(),
  ];
}
