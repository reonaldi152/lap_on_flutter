import 'package:flutter/material.dart';
import 'package:flutter_lapon/config/app_color.dart';
import 'package:flutter_lapon/view/booking/booking_page.dart';

class VenueDetailPage extends StatefulWidget {
  const VenueDetailPage({super.key});

  @override
  State<VenueDetailPage> createState() => _VenueDetailPageState();
}

class _VenueDetailPageState extends State<VenueDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/venue1.png",
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 26),
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 300),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      color: AppColor.white),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 26),
                        Text(
                          "Taruna Mandiri",
                          style: fontTextStyle.copyWith(
                            color: AppColor.colorPrimaryGreen,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
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
                        const SizedBox(height: 32),
                        Text(
                          "Looking for the perfect place to relax and unwind? This stunning Balinese villa is the ultimate tropical getaway. Located on a quiet street just minutes from the beach, this beautiful home offers everything you need for a luxurious and comfortable stay.",
                          style: fontTextStyle.copyWith(fontSize: 12),
                        ),
                        const SizedBox(height: 36),
                        Text(
                          "Jam Operasional",
                          style: fontTextStyle.copyWith(
                            color: AppColor.colorPrimaryGreen,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Senin - Jumat",
                                  style: fontTextStyle.copyWith(),
                                ),
                                Text(
                                  "Sabtu",
                                  style: fontTextStyle.copyWith(),
                                ),
                                Text(
                                  "Minggu",
                                  style: fontTextStyle.copyWith(),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "08.00- 23.00",
                                  style: fontTextStyle.copyWith(
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "07.00- 00.00",
                                  style: fontTextStyle.copyWith(
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "07.00- 00.00",
                                  style: fontTextStyle.copyWith(
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        Text(
                          "Fasilitas",
                          style: fontTextStyle.copyWith(
                            color: AppColor.colorPrimaryGreen,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Cafe",
                          style: fontTextStyle.copyWith(),
                        ),
                        Text(
                          "Parkir",
                          style: fontTextStyle.copyWith(),
                        ),
                        Text(
                          "Kamar Mandi",
                          style: fontTextStyle.copyWith(),
                        ),
                        Text(
                          "Smoking Area",
                          style: fontTextStyle.copyWith(),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          "Lokasi",
                          style: fontTextStyle.copyWith(
                            color: AppColor.colorPrimaryGreen,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Jl. Kebon Jeruk XV Jl. Mangga Besar IV H No.20, RT.14/RW.8, Maphar, Kec. Taman Sari, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11160(hreff)",
                          style: fontTextStyle.copyWith(fontSize: 13),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 16),
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
                                    "Mulai dari",
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
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => BookingPage(),));
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 11, horizontal: 16),
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: AppColor.colorPrimaryGreen,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Text(
                                    "Book Sekarang",
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
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
