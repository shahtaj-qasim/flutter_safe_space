import 'package:flutter/material.dart';
import 'package:safe_space/constants.dart';

class RoundedInputField extends StatelessWidget{
  final Widget child;
  const RoundedInputField({
    Key? key,
    required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context){
  Size size = MediaQuery.of(context).size;
    return Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            margin: EdgeInsets.symmetric(vertical: 10),
            width:  size.width *0.8,
            decoration: BoxDecoration(
              color: kPrimaryInputFieldColor,
              borderRadius: BorderRadius.circular(29),
            ),
            child: child,
          );
  }
}
