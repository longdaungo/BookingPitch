
import 'package:bookingpitch5/screen/home_screen/bill-pitch/main_screen.dart';
import 'package:bookingpitch5/screen/home_screen/booking_date/main_screen.dart';
import 'package:bookingpitch5/screen/home_screen/booking_slot/button_pay.dart';
import 'package:bookingpitch5/screen/home_screen/detail_pitch/detail_pitch.dart';
import 'package:bookingpitch5/screen/home_screen/location/Location.dart';
import 'package:bookingpitch5/screen/home_screen/profile/profile.dart';
import 'package:bookingpitch5/screen/home_screen/rate_pitch/ratingactivity.dart';
import 'package:bookingpitch5/screen/home_screen/voucher/voucherTab.dart';
import 'package:bookingpitch5/screen/home_screen/wallet/Wallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'booking_slot/main_screen.dart';
import 'calendar_today/my_activity.dart';
import 'detail_pitch/main_screen.dart';
import 'main_screen/Homescreen.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;
    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (_) => Homescreen());

      case '/second':
          return MaterialPageRoute(
              builder: (_) =>
                  MainScreenDetailPitch(
                      settings.arguments.toString()
                  ));
      case '/dateBooking':
        return MaterialPageRoute(
            builder: (_) =>
                MainScreenBookingDate(
                    settings.arguments as ParamenterToDateBookingScreen
                ));
      case '/slotBooking':
          return MaterialPageRoute(
              builder: (_) => MainScreenBookingSlot(
                settings.arguments as ParameterToSlotPitch));
      case '/account':
      return MaterialPageRoute(
          builder: (_) => ProfilePage());
      case '/screen.home_screen.calendar_today':
        return MaterialPageRoute(
            builder: (_) => CalendarToday());
      case '/vourcher':
        return MaterialPageRoute(
            builder: (_) => VoucherTab());
      case '/billPitch':
        return MaterialPageRoute(
            builder: (_) => BillPitch(settings.arguments as ParameterToBillPitch));
      case '/ratePitch':
        return MaterialPageRoute(
            builder: (_) => RatingScreen());
      case '/checkLocation':
        return MaterialPageRoute(
            builder: (_) => Location());
      case '/wallet':
        return MaterialPageRoute(
            builder: (_) => Wallet());

        default:
        return MaterialPageRoute(builder: (_) => Homescreen());
      
    }
  }
}