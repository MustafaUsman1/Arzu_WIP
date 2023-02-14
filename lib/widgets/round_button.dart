import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String data;
  final VoidCallback ontap;
  const RoundButton({Key? key, required this.data, required this.ontap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(data,
              style: const TextStyle(color: Colors.white, fontSize: 20)),
        ),
      ),
    );
  }
}
