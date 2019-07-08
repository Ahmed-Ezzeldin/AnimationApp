import 'package:flutter/material.dart';

class ThirdTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ThirdTabState();
  }
}
class ThirdTabState extends State<ThirdTab> with SingleTickerProviderStateMixin{
  AnimationController controller;
  Animation<Alignment> alignmentAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: Duration(milliseconds: 8000));
    final curve = CurvedAnimation(parent: controller,curve: Curves.linear);
    final align1 = AlignmentTween(begin: Alignment.topCenter,end: Alignment.bottomCenter);
    final align2 = AlignmentTween(begin: Alignment.bottomCenter,end: Alignment.bottomLeft);
    final align3 = AlignmentTween(begin: Alignment.bottomLeft,end: Alignment.topLeft);
    final align4 = AlignmentTween(begin: Alignment.topLeft,end: Alignment.topRight);
    final align5 = AlignmentTween(begin: Alignment.topRight,end: Alignment.bottomRight);
    final align6 = AlignmentTween(begin: Alignment.bottomRight,end: Alignment.bottomCenter);
    final align7 = AlignmentTween(begin: Alignment.bottomCenter,end: Alignment.center);

    
    final alignSec = TweenSequence<Alignment>([
      TweenSequenceItem<Alignment>(tween: align1,weight: 1.0),
      TweenSequenceItem<Alignment>(tween: align2,weight: 1.0),
      TweenSequenceItem<Alignment>(tween: align3,weight: 1.0),
      TweenSequenceItem<Alignment>(tween: align4,weight: 1.0),
      TweenSequenceItem<Alignment>(tween: align5,weight: 1.0),
      TweenSequenceItem<Alignment>(tween: align6,weight: 1.0),
      TweenSequenceItem<Alignment>(tween: align7,weight: 1.0),
    ]);
    alignmentAnimation = alignSec.animate(curve);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          color: Colors.white,
          child: GestureDetector(
            onDoubleTap: (){
              controller.forward();
            },
            child: Stack(
              children: <Widget>[
                AnimatedBuilder(
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red
                    ),
                  ),
                  builder: (BuildContext context, Widget child){
                    return Align(
                      alignment: alignmentAnimation.value,
                      child: child,
                    );
                  },
                  animation: alignmentAnimation,
                )
              ],
            ),
          ),
        )
    );
  }
}
