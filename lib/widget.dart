import 'package:flutter/cupertino.dart';

class MyBorderRadius {
  double radius;
  bool topLeft;
  bool topRight;
  bool bottomLeft;
  bool bottomRight;
  bool top;
  bool bottom;
  bool left;
  bool right;
  MyBorderRadius(this.radius, {
    this.topLeft = false,
    this.topRight = false,
    this.bottomLeft = false,
    this.bottomRight = false,
    this.top = false,
    this.bottom = false,
    this.left = false,
    this.right = false,
  });
  BorderRadius build() {
    if( top ){
      return BorderRadius.vertical(top: Radius.circular(radius));
    } else if( bottom ){
      return BorderRadius.vertical(bottom: Radius.circular(radius));
    } else if( left ){
      return BorderRadius.horizontal(left: Radius.circular(radius));
    } else if( right ){
      return BorderRadius.horizontal(right: Radius.circular(radius));
    } else if( topLeft || topRight || bottomLeft || bottomRight ){
      return BorderRadius.only(
        topLeft: topLeft ? Radius.circular(radius) : Radius.zero,
        topRight: topRight ? Radius.circular(radius) : Radius.zero,
        bottomLeft: bottomLeft ? Radius.circular(radius) : Radius.zero,
        bottomRight: bottomRight ? Radius.circular(radius) : Radius.zero,
      );
    }
    return BorderRadius.circular(radius);
  }
}

class MyRoundedContainer extends Container {
  MyRoundedContainer( {
    Key? key,
    AlignmentGeometry alignment = Alignment.topLeft,
    EdgeInsetsGeometry? padding,
    Color? color,
//    Decoration? decoration,
//    Decoration? foregroundDecoration,
    required MyBorderRadius borderRadius,
    required double width,
    required double height,
    BoxConstraints? constraints,
    EdgeInsetsGeometry? margin,
    Matrix4? transform,
    AlignmentGeometry? transformAlignment,
    Widget? child,
    Clip clipBehavior = Clip.none,
  } ) : super(
    key: key,
    alignment: alignment,
    padding: padding,
//    color: color,
//    decoration: decoration,
//    foregroundDecoration: foregroundDecoration,
    decoration: BoxDecoration(
      color: color,
      borderRadius: borderRadius.build(),
    ),
    width: width,
    height: height,
    constraints: constraints,
    margin: margin,
    transform: transform,
    transformAlignment: transformAlignment,
    child: child,
    clipBehavior: clipBehavior,
  );
}
