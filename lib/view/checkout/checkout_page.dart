import 'package:flutter/material.dart';

import '../../config/app_color.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.colorPrimaryGreen,
      appBar: AppBar(
        backgroundColor: AppColor.colorPrimaryGreen,
        title: Text(
          "Check Out",
          style: fontTextStyle.copyWith(
              color: AppColor.white, fontSize: 18, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 16,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.only(top: 12),
        decoration: const BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      "https://picsum.photos/400/200",
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  "Stadium Elektro",
                  style: fontTextStyle.copyWith(
                      color: AppColor.colorPrimaryGreen,
                      fontSize: 20,
                      fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.location_pin),
                    const SizedBox(width: 4),
                    Text(
                      "Serpong, Tangerang Selatan",
                      style: fontTextStyle.copyWith(fontSize: 13),
                    ),
                  ],
                ),
                const SizedBox(height: 36),
                Text(
                  "Jadwal Booking",
                  style: fontTextStyle.copyWith(
                      color: AppColor.colorPrimaryGreen,
                      fontWeight: FontWeight.w800,
                      fontSize: 16,),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Lapangan A",
                      style: fontTextStyle.copyWith(
                          color: AppColor.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.delete, color: AppColor.colorPrimaryGreen,),),
                  ],
                ),
                Text(
                  "Kamis, 9 May 2024",
                  style: fontTextStyle.copyWith(
                    color: Color(0xFF6F737A),
                    fontWeight: FontWeight.w500,
                    fontSize: 14,),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          color: AppColor.colorPrimaryGreen.withOpacity(0.5), // Warna background baris hijau muda
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Text(
                                '22:00 - 23:00',
                                style: fontTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: Text(
                                'Rp 70.000',
                                style: fontTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF4B6975), // Warna harga sesuai gambar
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 26),
                Text(
                  'Checkout Review',
                  style: fontTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: AppColor.colorPrimaryGreen, // Warna hijau teks header
                  ),
                ),
                SizedBox(height: 16),
                _buildRow('Biaya Sewa', 'Rp 210.000'),
                SizedBox(height: 8),
                _buildRow('Admin', 'Rp 5.000', isLink: true),
                SizedBox(height: 8),
                _buildRow('PPN (10%)', 'Rp 14.000'),
                Divider(thickness: 1, color: Colors.grey[300]),
                SizedBox(height: 8),
                _buildRow('Total', 'Rp 279.000', isBold: true),
                Divider(thickness: 1, color: Colors.grey[300]),
                SizedBox(height: 8),

                const SizedBox(height: 36),
              ],
            ),
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total : 3 Sesi terpilih",
                    style: fontTextStyle.copyWith(
                      color: const Color(0xFF121212),
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "Rp 150.000",
                    style: fontTextStyle.copyWith(
                        color: const Color(0xFF121212),
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CheckoutPage(),));
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

  Widget _buildRow(String title, String value, {bool isLink = false, bool isBold = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        isLink
            ? InkWell(
          onTap: () {
            // Aksi ketika teks link ditekan
          },
          child: Text(
            title,
            style: fontTextStyle.copyWith(
              fontSize: 16,
              color: Color(0xFF4B6975), // Warna link biru
              decoration: TextDecoration.underline,
            ),
          ),
        )
            : Text(
          title,
          style: fontTextStyle.copyWith(
            fontSize: 16,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        Text(
          value,
          style: fontTextStyle.copyWith(
            fontSize: 16,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            color: Color(0xFF4B6975), // Warna teks angka
          ),
        ),
      ],
    );
  }
}



