import 'package:flutter/material.dart';

import '../../../config/app_color.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: Text(
          "Detail Product",
          style: fontTextStyle.copyWith(
              color: AppColor.black, fontSize: 18, fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Container(
            padding: const EdgeInsets.only(top: 12, right: 12, bottom: 12, left: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColor.white
            ),
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 16,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    // Image.network(
                    //   'https://moltensports.com/images/products/20200807_162244basketball-GG7X-700px.png',
                    //   width: 180,
                    //   height: 180,
                    // ),
                    Image.asset(
                      'assets/basket.png',
                      width: 180,
                      height: 180,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     _buildThumbnailImage(
              //         'https://moltensports.com/images/products/20200807_162244basketball-GG7X-700px.png'),
              //     _buildThumbnailImage(
              //         'https://moltensports.com/images/products/20200807_162244basketball-GG7X-700px.png'),
              //     _buildThumbnailImage(
              //         'https://moltensports.com/images/products/20200807_162244basketball-GG7X-700px.png'),
              //     _buildThumbnailImage(
              //         'https://moltensports.com/images/products/20200807_162244basketball-GG7X-700px.png'),
              //     _buildThumbnailImage(
              //         'https://moltensports.com/images/products/20200807_162244basketball-GG7X-700px.png',
              //         isSelected: true),
              //   ],
              // ),
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Bola Basket',
                      style: fontTextStyle.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0,
                      ),
                    ),
                  ),
                  // Row(
                  //   children: [
                  //     Icon(Icons.star, color: Colors.amber),
                  //     SizedBox(width: 4),
                  //     Text('5.0 (6.828)', style: TextStyle(fontSize: 16.0)),
                  //   ],
                  // ),
                  // SizedBox(width: 8),
                  // Icon(Icons.favorite_border, color: Colors.teal),
                ],
              ),
              SizedBox(height: 16.0),
              Text(
                'Deskripsi',
                style: fontTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'This edition of the RS-X T3CH features bold pops of color and amplified detailing in the upper.',
                style: fontTextStyle.copyWith(fontSize: 16.0, color: Colors.grey[600]),
              ),
              // SizedBox(height: 16.0),
              // Text(
              //   'Ukuran yang tersedia',
              //   style: TextStyle(
              //     fontWeight: FontWeight.bold,
              //     fontSize: 18.0,
              //     color: Colors.grey[700],
              //   ),
              // ),
              // SizedBox(height: 8.0),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     _buildSizeOption('4'),
              //     _buildSizeOption('5'),
              //     _buildSizeOption('6'),
              //     _buildSizeOption('7', isSelected: true),
              //   ],
              // ),
              // SizedBox(height: 24.0),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Expanded(
              //       child: ElevatedButton.icon(
              //         style: ElevatedButton.styleFrom(
              //           padding: EdgeInsets.symmetric(vertical: 16.0),
              //           shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(16.0),
              //           ),
              //         ),
              //         onPressed: () {},
              //         icon: Icon(Icons.shopping_bag_outlined),
              //         label: Text('Beli'),
              //       ),
              //     ),
              //     SizedBox(width: 16.0),
              //     Expanded(
              //       child: ElevatedButton.icon(
              //         style: ElevatedButton.styleFrom(
              //           padding: EdgeInsets.symmetric(vertical: 16.0),
              //           shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(16.0),
              //           ),
              //         ),
              //         onPressed: () {},
              //         icon: Icon(Icons.shopping_bag_outlined),
              //         label: Text('Sewa'),
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: AppColor.white,
        height: 80,
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
              color: AppColor.white,
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff94A8BE).withOpacity(0.3),
                  spreadRadius: 0.4,
                  blurRadius: 6,
                  offset: const Offset(
                      0.5, 0), // changes position of shadow
                )
              ],
              borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Rp 150.000",
                style: fontTextStyle.copyWith(
                    color: const Color(0xFF121212),
                    fontWeight: FontWeight.w700, fontSize: 18),
              ),
              InkWell(
                onTap: (){
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 11, horizontal: 16),
                  height: 40,
                  decoration: BoxDecoration(
                      color: AppColor.colorPrimaryGreen,
                      borderRadius: BorderRadius.circular(12)),
                  child: Text(
                    "Checkout Sekarang",
                    style: fontTextStyle.copyWith(
                      color: AppColor.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildThumbnailImage(String imageUrl, {bool isSelected = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          border: isSelected
              ? Border.all(color: Colors.teal, width: 2.0)
              : null,
          borderRadius: BorderRadius.circular(8),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildSizeOption(String size, {bool isSelected = false}) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? Colors.teal : Colors.grey[300],
      ),
      child: Center(
        child: Text(
          size,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
