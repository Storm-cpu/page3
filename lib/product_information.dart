import 'package:flutter/material.dart';

class ProductInformation extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);
  final String Label;
  final String Info;
  ProductInformation(this.Label, this.Info);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          Label,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
        Row(
          children: [
            Text(
              Info,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              size: 15,
            ),
          ],
        ),
      ],
    );
  }
}
