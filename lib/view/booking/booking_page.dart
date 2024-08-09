import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lapon/config/app_color.dart';

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
        margin: EdgeInsets.only(top: 12),
        decoration: const BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.only(
                topRight: const Radius.circular(20),
                topLeft: const Radius.circular(20))),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              EasyDateTimeLine(
                initialDate: DateTime.now(),
                onDateChange: (selectedDate) {
                  //`selectedDate` the new date selected.
                },
                activeColor: const Color(0xff85A389),
                dayProps: const EasyDayProps(
                  todayHighlightStyle: TodayHighlightStyle.withBackground,
                  todayHighlightColor: Color(0xffE1ECC8),
                ),
              ),
              const SizedBox(height: 26),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: AppColor.black))
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        "https://picsum.photos/300/300",
                        width: 70,
                      ),
                    ),
                    Column(
                      children: [

                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
