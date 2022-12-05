import 'package:flutter/cupertino.dart';
/*
 To create a custom page route transition
        1- Set up a PageRouteBuilder
        2- Create a Tween
        3- Add an AnimatedWidget
        4- Use a CurveTween
        5-Combine the two Tweens

  Link For Doc : https://docs.flutter.dev/cookbook/animation/page-route-animation
*/

class SlideRightBySlideTransition extends PageRouteBuilder{
  var page;
  SlideRightBySlideTransition({this.page}):super(
    pageBuilder: (context,animation,animationTwo)=>page,
    transitionsBuilder: (context,animation,animationTwo,child){
      var begin =const Offset(1.0, 0.0);
      var end = Offset.zero;
      var tween = Tween(begin: begin,end: end);
      // var offsetAnimation = animation.drive(tween);
      var curveAnimation = CurvedAnimation(parent: animation, curve: Curves.linearToEaseOut);
      return SlideTransition(position: tween.animate(curveAnimation),child: child);
    },
  );
}

class SlideByScaleTransition extends PageRouteBuilder{
  var page;
  SlideByScaleTransition({this.page}):super(
    pageBuilder: (context,animation,animationTwo)=>page,
    transitionsBuilder: (context,animation,animationTwo,child){
      var begin =0.5;
      var end = 1.0;
      var tween = Tween(begin: begin,end: end);
      // var offsetAnimation = animation.drive(tween);
      var curveAnimation = CurvedAnimation(parent: animation, curve: Curves.easeInBack);
      return ScaleTransition(scale: tween.animate(curveAnimation),child: child);
    },
  );
}

class SlideByRotationTransition extends PageRouteBuilder{
  var page;
  SlideByRotationTransition({this.page}):super(
    pageBuilder: (context,animation,animationTwo)=>page,
    transitionsBuilder: (context,animation,animationTwo,child){
      var begin =0.0;
      var end = 1.0;
      var tween = Tween(begin: begin,end: end);
      // var offsetAnimation = animation.drive(tween);
      var curveAnimation = CurvedAnimation(parent: animation, curve: Curves.easeInBack);
      return RotationTransition(turns: tween.animate(curveAnimation),child: child);
    },
  );
}

class SlideBySizeTransition extends PageRouteBuilder{
  var page;
  SlideBySizeTransition({this.page}):super(
    pageBuilder: (context,animation,animationTwo)=>page,
    transitionsBuilder: (context,animation,animationTwo,child){
      return Align(child: SizeTransition(sizeFactor: animation,child: child,),);
    },
  );
}

class SlideByFadeTransition extends PageRouteBuilder{
  var page;
  SlideByFadeTransition({this.page}):super(
    pageBuilder: (context,animation,animationTwo)=>page,
    transitionsBuilder: (context,animation,animationTwo,child){
      return FadeTransition(opacity: animation,child: child,);
    },
  );
}

class SlideByScaleAndRotateTransition extends PageRouteBuilder{
  var page;
  SlideByScaleAndRotateTransition({this.page}):super(
    pageBuilder: (context,animation,animationTwo)=>page,
    transitionsBuilder: (context,animation,animationTwo,child){
      var begin =0.5;
      var end = 1.0;
      var tween = Tween(begin: begin,end: end);
      // var offsetAnimation = animation.drive(tween);
      var curveAnimation = CurvedAnimation(parent: animation, curve: Curves.easeInBack);
      return ScaleTransition(scale: tween.animate(curveAnimation),child: RotationTransition(child: child,turns: tween.animate(curveAnimation),));
    },
  );
}
