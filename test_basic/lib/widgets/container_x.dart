import 'package:flutter/material.dart';

class ContainerX extends StatelessWidget {
  final String label;
  final Widget childx;
  final double widthx;
  final double heightx;
  final Color colorx;
  const ContainerX({
    Key? key,
    required this.label,
    required this.childx,
    this.widthx = 200,
    this.heightx = 70,
    this.colorx = Colors.amber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthx,
      height: heightx,
      child: OutlinedButton(
        onPressed: () => debugPrint('you have been tapped widget with label => $label '),
        child: Padding(
          padding: const EdgeInsets.all(3),
          child: Column(
            children: [
              Text(
                label,
                style: const TextStyle(color: Colors.black),
              ),
              Expanded(
                child: Center(child: childx),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
