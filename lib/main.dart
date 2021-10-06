import 'package:app_demo/company_info.dart';
import 'package:app_demo/item.dart';
import 'package:app_demo/product_description.dart';
import 'package:app_demo/product_information.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
            ),
            splashRadius: 15,
            onPressed: () {},
          ),
          title: Text(
            'Chi tiết sản phẩm',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.search_outlined,
                color: Colors.black,
              ),
              splashRadius: 15,
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset('images/sp.png'),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 35, top: 5),
                            child: Icon(
                              Icons.favorite_border_outlined,
                              size: 30,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 8, right: 8),
                            margin: EdgeInsets.only(right: 50),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              '1/3',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 270),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            SizedBox(width: 5),
                            Container(
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            SizedBox(width: 5),
                            Container(
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('images/sp1.png'),
                  Image.asset('images/sp2.png'),
                  Image.asset('images/sp3.png'),
                ],
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                child: Text(
                  'THIÊN VIỆT - YẾN SÀO LỌ ĐƯỜNG ĂN KIÊNG 70ML',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  '220.000đ',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Colors.red,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Text(
                      'Tìm cửa hàng có sản phẩm gần nhất',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.red,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.red,
                      size: 20,
                    ),
                  ],
                ),
              ),
              Image.asset('images/image.png'),
              Divider(thickness: 15, color: Colors.grey[200]),
              Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Thông tin sản phẩm',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 25),
                    ProductInformation('Thương hiệu', 'Kid’s Nest Plus'),
                    Divider(thickness: 1, color: Colors.grey),
                    ProductInformation('Danh mục', 'Danh mục 1'),
                    Divider(thickness: 1, color: Colors.grey),
                    ProductInformation('Mua số lượng lớn', 'Liên hệ'),
                  ],
                ),
              ),
              Divider(thickness: 15, color: Colors.grey[200]),
              CompanyInfo(
                'images/logo.png',
                'Kid’s Nest Plus',
                'Thương hiệu dành cho trẻ em',
              ),
              Divider(thickness: 15, color: Colors.grey[200]),
              ProductDescription(),
              Divider(thickness: 15, color: Colors.grey[200]),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'Sản phẩm tương tự',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ItemButton(
                    'images/orther1.png',
                    'Yến sào nguyên chất Thiên Việt',
                    220,
                  ),
                  ItemButton(
                    'images/orther2.png',
                    'Yến sào nguyên chất Thiên Việt',
                    220,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
