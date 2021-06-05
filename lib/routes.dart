import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:otp_ui/pages/OPT/otp_screen.dart';
import 'package:otp_ui/pages/Register/register_screen.dart';
import 'package:otp_ui/pages/Welcome/welcome_screen.dart';


routes()=> [
  GetPage(name: "/", page:()=> Welcome()),
  GetPage(name: "/register", page:()=> Register()),
  GetPage(name: "/otp", page:()=> Otp()),
]; 