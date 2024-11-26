import 'package:cology/main.dart';
import 'package:cology/pages/batch_page.dart';
import 'package:cology/pages/chatPage.dart';
import 'package:cology/pages/college_page.dart';
import 'package:cology/pages/coursePage.dart';
import 'package:cology/pages/forgit_password.dart';
import 'package:cology/pages/interests.dart';
import 'package:cology/pages/lectures.dart';
import 'package:cology/pages/login.dart';
import 'package:cology/pages/messages.dart';
import 'package:cology/pages/post_comments.dart';
import 'package:cology/pages/profile.dart';
import 'package:cology/pages/request.dart';
import 'package:cology/pages/singin.dart';
import 'package:flutter/material.dart';

class RoutManager {
  static Route<dynamic>? GenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MyHomePage.routeName:
        return _goto(const MyHomePage());

      case Singin.routeName:
        return _goto(const Singin());

      case Login.routeName:
        return _goto(const Login());

      case CollegePage.routeName:
        return _goto(const CollegePage());
      case Messages.routeName:
        return _goto(const Messages());
      case BatchPage.routeName:
        return _goto(const BatchPage());

      case (Chat.routeName):
        if(settings.arguments is int){
          int index = settings.arguments as int;
          return _goto(Chat(index: index,));
        }
        return _goto(const Messages());
    case Course.routeName:
        return _goto(const Course());
    case ForgitPasswordPage.routeName:
        return _goto(ForgitPasswordPage());
    case Interests.routeName:
        return _goto(const Interests());
    case Lectures.routeName:
        return _goto(const Lectures());
    case PostComments.routeName:
      if(settings.arguments is int) {
        int index = settings.arguments as int;
        return _goto(PostComments(index: index,));    
      }  
      break;
    case Profile.routeName:
      return _goto(const Profile());
    case Request.routeName:
      return _goto(const Request());
      
      default:
        return _goto(const MyHomePage());
    }
  }

  static MaterialPageRoute _goto(Widget page) {
    return MaterialPageRoute(builder: (_) => page);
  }
}
