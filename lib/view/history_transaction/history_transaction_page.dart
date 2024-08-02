import 'package:flutter/material.dart';
import 'package:flutter_lapon/config/app_color.dart';

class HistoryTransactionPage extends StatefulWidget {
  const HistoryTransactionPage({super.key});

  @override
  State<HistoryTransactionPage> createState() => _HistoryTransactionPageState();
}

class _HistoryTransactionPageState extends State<HistoryTransactionPage> {
  String _selected = "Riwayat";

  List<String> _wording = [
    "Riwayat",
    "Dalam Proses",
    "Terjadwal",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.colorPrimaryGreen,
      appBar: AppBar(
        backgroundColor: AppColor.colorPrimaryGreen,
        title: Text(
          "Riwayat Transaksi",
          style: fontTextStyle.copyWith(
            color: AppColor.white,
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  _wording.length,
                  (index) {
                    bool isSelected = _selected == _wording[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _selected =
                          _wording[index]; // Set kategori yang dipilih
                        });
                      },
                      child: Text(
                        _wording[index],
                        style: fontTextStyle.copyWith(
                            fontWeight: isSelected ? FontWeight.w800 : FontWeight.w500, color: isSelected ? AppColor.black : AppColor.black.withOpacity(0.6)),
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 36),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Today, 19 Desember 2021",
                    style: fontTextStyle.copyWith(
                      color: AppColor.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                      width: double.infinity, color: AppColor.black, height: 1),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/f.png", width: 40),
                            const SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Futsal",
                                  style: fontTextStyle.copyWith(
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Stadium info....",
                                  style: fontTextStyle.copyWith(
                                    fontSize: 12,
                                    color: const Color(0xFF121212),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        Text("-Rp20.000", style: fontTextStyle.copyWith(fontWeight: FontWeight.w700, color: AppColor.colorRed,),),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: const Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/bt.png", width: 40),
                            const SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Badminton",
                                  style: fontTextStyle.copyWith(
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Stadium info....",
                                  style: fontTextStyle.copyWith(
                                    fontSize: 12,
                                    color: const Color(0xFF121212),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        Text("Rp20.000", style: fontTextStyle.copyWith(fontWeight: FontWeight.w700, color: const Color(0xFF30475E),),),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "Yesterday",
                    style: fontTextStyle.copyWith(
                      color: const Color(0xFF9F9F9F),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                      width: double.infinity, color: const Color(0xFF9F9F9F), height: 1),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: const Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/r.png", width: 40),
                            const SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mini Soccer",
                                  style: fontTextStyle.copyWith(
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Stadium info....",
                                  style: fontTextStyle.copyWith(
                                    fontSize: 12,
                                    color: const Color(0xFF121212),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        Text("Rp20.000", style: fontTextStyle.copyWith(fontWeight: FontWeight.w700, color: const Color(0xFF30475E),),),
                      ],
                    ),
                  ),
                  const SizedBox(height: 46),
                  Text(
                    "Saturday, 9 Desember 2021",
                    style: fontTextStyle.copyWith(
                      color: const Color(0xFF9F9F9F),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                      width: double.infinity, color: const Color(0xFF9F9F9F), height: 1),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: const Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/r.png", width: 40),
                            const SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mini Soccer",
                                  style: fontTextStyle.copyWith(
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Stadium info....",
                                  style: fontTextStyle.copyWith(
                                    fontSize: 12,
                                    color: const Color(0xFF121212),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        Text("Rp20.000", style: fontTextStyle.copyWith(fontWeight: FontWeight.w700, color: const Color(0xFF30475E),),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
