import 'package:bookticket/utils/app_layout.dart';
import 'package:bookticket/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Hotel Price is ${hotel["price"]}");
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: AppLayout.GetHeight(350),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 20,
              spreadRadius: 5,
            )
          ]),
      child: Column(
        children: [
          Container(
            height: AppLayout.GetHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/${hotel["image"]}")),
            ),
          ),
          const Gap(10),
          Text(
            hotel['place'],
            style: Styles.headlinestyle2.copyWith(color: Styles.kakiColor),
          ),
          const Gap(5),
          Text(
            hotel['destination'],
            style: Styles.headlinestyle3.copyWith(color: Colors.white),
          ),
          const Gap(8),
          Text(
            '\$${hotel['price']}/night',
            style: Styles.headlinestyle1.copyWith(color: Styles.kakiColor),
          ),
        ],
      ),
    );
  }
}
