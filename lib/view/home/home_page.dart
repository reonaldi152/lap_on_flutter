import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lapon/config/app_color.dart';
import 'package:flutter_lapon/view/venue/venue_detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<String> _bannerList = [
    "assets/banner1.png",
    "assets/banner2.png",
    "assets/banner1.png",
  ];

  String selectedCategory = "Semua";
  List<String> categories = ["Semua", "Rekomendasi", "Populer", "Terdekat"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top + 36),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi John Doe",
                    style: fontTextStyle.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "Jelajahi Olahraga yang seru!",
                    style: fontTextStyle.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            CarouselSlider(
              items: _bannerList
                  .map((e) => GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: const EdgeInsets.only(right: 6, left: 6),
                          child: Center(
                            child: Image.asset(
                              e,
                              // width: 320,
                              fit: BoxFit.cover,
                              // errorBuilder: (context, error,
                              //     stackTrace) =>
                              //     Image.asset(
                              //         "assets/placeholder_ads.png"),
                            ),
                          ),
                        ),
                      ))
                  .toList(),
              carouselController: _controller,

              options: CarouselOptions(
                  initialPage: (_bannerList.length / 2).floor(),
                  aspectRatio: 2.4,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Text(
                "Categories",
                style: fontTextStyle.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Image.asset("assets/categories.png", width: double.infinity),
            ),
            const SizedBox(height: 33),
            SizedBox(
              height: 36,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 13, right: 26),
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  bool isSelected = selectedCategory == categories[index];
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategory =
                            categories[index]; // Set kategori yang dipilih
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 13),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: isSelected
                              ? AppColor.colorPrimaryGreen
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(16),
                          border:
                              Border.all(color: AppColor.colorPrimaryGreen)),
                      child: Text(
                        categories[index],
                        style: fontTextStyle.copyWith(
                          fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                          color: isSelected ? AppColor.white : AppColor.colorPrimaryGreen,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 32),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const VenueDetailPage(),));
              },
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                      color: AppColor.white,
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff94A8BE).withOpacity(0.3),
                          spreadRadius: 0.1,
                          blurRadius: 4,
                          offset: const Offset(0.5, 0), // changes position of shadow
                        )
                      ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/field1.png", width: 340,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Taruna Mandiri", style: fontTextStyle.copyWith(color: AppColor.black, fontWeight: FontWeight.w700),),
                            const SizedBox(height: 4),
                            Text("Jl.Salak, Pamulang", style: fontTextStyle.copyWith(color: AppColor.black.withOpacity(0.5), fontSize: 12),),
                            const SizedBox(height: 10),
                            Text("Rp. 150.000/jam", style: fontTextStyle.copyWith(color: AppColor.black, fontWeight: FontWeight.w700),),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColor.white,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff94A8BE).withOpacity(0.3),
                      spreadRadius: 0.1,
                      blurRadius: 4,
                      offset: const Offset(0.5, 0), // changes position of shadow
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/field2.png", width: 340,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Noel Futsal", style: fontTextStyle.copyWith(color: AppColor.black, fontWeight: FontWeight.w700),),
                          const SizedBox(height: 4),
                          Text("Jl.Salak, Pamulang", style: fontTextStyle.copyWith(color: AppColor.black.withOpacity(0.5), fontSize: 12),),
                          const SizedBox(height: 10),
                          Text("Rp. 150.000/jam", style: fontTextStyle.copyWith(color: AppColor.black, fontWeight: FontWeight.w700),),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 18),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColor.white,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff94A8BE).withOpacity(0.3),
                      spreadRadius: 0.1,
                      blurRadius: 4,
                      offset: const Offset(0.5, 0), // changes position of shadow
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/field3.png", width: 340,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("ITI Stadion Arena", style: fontTextStyle.copyWith(color: AppColor.black, fontWeight: FontWeight.w700),),
                          const SizedBox(height: 4),
                          Text("Jl.Salak, Pamulang", style: fontTextStyle.copyWith(color: AppColor.black.withOpacity(0.5), fontSize: 12),),
                          const SizedBox(height: 10),
                          Text("Rp. 150.000/jam", style: fontTextStyle.copyWith(color: AppColor.black, fontWeight: FontWeight.w700),),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 32),

          ],
        ),
      ),
    );
  }
}
