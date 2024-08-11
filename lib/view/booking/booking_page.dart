import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lapon/config/app_color.dart';
import 'package:flutter_lapon/view/checkout/checkout_page.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.colorPrimaryGreen,
      appBar: AppBar(
        backgroundColor: AppColor.colorPrimaryGreen,
        title: Text(
          "Cek Jadwal",
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              EasyDateTimeLine(
                initialDate: DateTime.now(),
                onDateChange: (selectedDate) {
                  //`selectedDate` the new date selected.
                },
                activeColor: AppColor.colorPrimaryGreen,
                dayProps: const EasyDayProps(
                  todayHighlightStyle: TodayHighlightStyle.withBackground,
                  todayHighlightColor: Color(0xffE1ECC8),
                ),
              ),
              const SizedBox(height: 26),
              ExpansionTile(
                title: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          "https://picsum.photos/300/300",
                          width: 70,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Lapangan A",
                            style: fontTextStyle.copyWith(
                                color: AppColor.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          ),
                          Text(
                            "3 Jadwal Tersedia",
                            style: fontTextStyle.copyWith(
                                color: AppColor.colorPrimaryGreen,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                children: List.generate(
                  4,
                  (index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColor.white,
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xff94A8BE).withOpacity(0.3),
                            spreadRadius: 0.1,
                            blurRadius: 4,
                            offset: const Offset(
                                0.5, 0), // changes position of shadow
                          ),
                        ],
                        // border: Border.all(color: AppColor.colorPrimaryGreen, width: 3)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "60 Menit",
                                style: fontTextStyle.copyWith(
                                  fontSize: 10,
                                  color: const Color(0xFF6F737A),
                                ),
                              ),
                              Text(
                                "22:00 - 23:00",
                                style: fontTextStyle.copyWith(
                                  color: AppColor.black,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Rp. 70.000",
                                style: fontTextStyle.copyWith(
                                  color: AppColor.black,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(width: 4),
                              Icon(
                                Icons.circle_outlined,
                                color: AppColor.black,
                              ),
                              // Icon(Icons.check_circle, color: AppColor.colorPrimaryGreen,)
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              ExpansionTile(
                title: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          "https://picsum.photos/300/300",
                          width: 70,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Lapangan B",
                            style: fontTextStyle.copyWith(
                                color: AppColor.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          ),
                          Text(
                            "3 Jadwal Tersedia",
                            style: fontTextStyle.copyWith(
                                color: AppColor.colorPrimaryGreen,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                children: List.generate(
                  4,
                  (index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColor.white,
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xff94A8BE).withOpacity(0.3),
                            spreadRadius: 0.1,
                            blurRadius: 4,
                            offset: const Offset(
                                0.5, 0), // changes position of shadow
                          ),
                        ],
                        // border: Border.all(color: AppColor.colorPrimaryGreen, width: 3)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "60 Menit",
                                style: fontTextStyle.copyWith(
                                  fontSize: 10,
                                  color: const Color(0xFF6F737A),
                                ),
                              ),
                              Text(
                                "22:00 - 23:00",
                                style: fontTextStyle.copyWith(
                                  color: AppColor.black,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Rp. 70.000",
                                style: fontTextStyle.copyWith(
                                  color: AppColor.black,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(width: 4),
                              Icon(
                                Icons.circle_outlined,
                                color: AppColor.black,
                              ),
                              // Icon(Icons.check_circle, color: AppColor.colorPrimaryGreen,)
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 36),
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
}
