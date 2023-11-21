// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Wrapper extends StatefulWidget {
  Wrapper(
      {super.key,
      required this.child,
      this.hasBg = false,
      this.appBar,
      this.margin,
      this.inScrol = false,
     required this.bottomBar});
  Widget child;
  bool? hasBg;
  bool inScrol;
  EdgeInsets? margin;
  AppBar? appBar;
  BottomNavigationBar bottomBar;

  @override
  // ignore: library_private_types_in_public_api
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: widget.inScrol
            ? SingleChildScrollView(
                child: Container(
                    margin: widget.margin ?? const EdgeInsets.only(top: 40),
                    child: widget.child),
              )
            : Container(
                margin: const EdgeInsets.only(top: 40), child: widget.child),
      ),
      bottomNavigationBar: widget.bottomBar,
    );
  }
}
