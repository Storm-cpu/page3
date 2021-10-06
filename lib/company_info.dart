import 'package:flutter/material.dart';

class CompanyInfo extends StatelessWidget {
  //const CompanyInfo({ Key? key }) : super(key: key);
  final String Logo;
  final String Name;
  final String Label;
  CompanyInfo(this.Logo, this.Name, this.Label);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Thông tin thương hiệu',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Xem tất cả',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.red,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 15,
                    color: Colors.red,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Image.asset(Logo),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Name,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 7),
                  Text(
                    Label,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
