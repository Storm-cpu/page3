import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  //const ProductDescription({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Title('Mô tả sản phẩm'),
          Description(
            'Mẹ đang tìm kiếm dòng sản phẩm bổ sung dinh dưỡng đủ đầy trong giai đoạn phát triển của bé? Đến từ thương hiệu yến sào Thiên Việt, nước yến Kid’s Nest Plus+ lọ 70ml sẽ mang tới một gợi ý thích hợp để mẹ lựa chọn cho bé.',
          ),
          Description(
            'Sản phẩm lấy nguồn nguyên liệu từ tổ yến thiên nhiên của vùng đảo Cù Lao Chàm - một trong những vùng đất nổi tiếng với chất lượng yến bổ dưỡng bậc nhất. Kết hợp thêm các dưỡng chất là Canxi, Lysine và chất xơ, nước yến đặc biệt thích hợp để kích thích ăn ngon, bồi bổ cơ thể cho các bé biếng ăn, suy dinh dưỡng. Sản phẩm đã được Bộ Y Tế công nhận chất lượng, do đó mẹ hoàn toàn yên tâm khi cho bé dùng hàng ngày.',
          ),
          Title('Thành phần sản phẩm'),
          Description(
            'Nước tinh khiết, Yến sào 500mg/70ml, đường, CalciumLactate, Sodium Alginate, Potasium Sorbate, Lysine, Chất xơ, Vitamin D3, hương yến tự nhiên.',
          ),
          Title('Hướng dẫn sử dụng'),
          Description(
            'Trẻ em từ 1 - 3 tuổi: 1 lọ/ngày',
          ),
          Description(
            'Trẻ em từ 3 - 16 tuổi: 2 - 3 lọ/ngày',
          ),
          Description(
            'Lắc đều trước khi uống. Ngon hơn khi uống lạnh. Sử dụng ngay khi mở nắp',
          ),
          Title('Bảo quản'),
          Description(
            'Nơi khô ráo, thoáng mát và tránh ánh nắng trực tiếp.',
          ),
          Title('Hạn sử dụng'),
          Description(
            'Nơi khô ráo, thoáng mát và tránh ánh nắng trực tiếp.',
          ),
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  //const Title({ Key? key }) : super(key: key);
  final String TitleText;
  Title(this.TitleText);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 19),
      child: Text(
        TitleText,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18,
          color: Colors.black,
        ),
      ),
    );
  }
}

class Description extends StatelessWidget {
  //const Description({ Key? key }) : super(key: key);
  final String DescriptionText;
  Description(this.DescriptionText);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 19),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("• "),
          Expanded(
            child: Text(
              DescriptionText,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
