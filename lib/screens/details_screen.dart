import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:movie_booking_app1/screens/list_cinema_screen.dart';
import 'package:movie_booking_app1/widgets/cast_crew_block.dart';

import 'package:movie_booking_app1/widgets/offers_block.dart';
import 'package:movie_booking_app1/widgets/review_block.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({super.key});

  final dynamic model = Get.arguments[0];
  final int index = Get.arguments[1];

  titleWidget(model) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Black Panther",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          Row(
            children: [
              const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "${model.like}%",
                style: const TextStyle(fontSize: 10),
              )
            ],
          )
        ],
      );

  final screensWidget = Row(
    children: [
      const Text(
        "English",
        style: TextStyle(
          color: Colors.lightBlue,
        ),
      ),
      const SizedBox(
        width: 10,
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          color: Colors.lightBlue.withOpacity(0.1),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
        ),
        child: const Text(
          "3D",
          style: TextStyle(
            color: Colors.lightBlue,
          ),
        ),
      ),
      const SizedBox(
        width: 10,
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          color: Colors.lightBlue.withOpacity(0.1),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
        ),
        child: const Text(
          "2D",
          style: TextStyle(
            color: Colors.lightBlue,
          ),
        ),
      ),
    ],
  );

  final descriptionWidget = RichText(
    text: TextSpan(
      children: [
        const WidgetSpan(
          child: Icon(
            Icons.history,
            size: 15,
            color: Colors.black45,
          ),
        ),
        const WidgetSpan(
          child: SizedBox(
            width: 10,
          ),
        ),
        const TextSpan(
          text: "2h 59m",
          style: TextStyle(
            color: Colors.black45,
          ),
        ),
        const WidgetSpan(
          child: SizedBox(
            width: 10,
          ),
        ),
        WidgetSpan(
          child: SvgPicture.asset(
            "assets/icons/theater_masks.svg",
            height: 15,
            width: 15,
            color: Colors.black45,
          ),
        ),
        const WidgetSpan(
          child: SizedBox(
            width: 10,
          ),
        ),
        const TextSpan(
          text: "Action, Drama",
          style: TextStyle(
            color: Colors.black45,
          ),
        ),
      ],
    ),
  );

  Widget block1(model) => Container(
        color: Colors.white,
        width: double.maxFinite,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleWidget(model),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "UA | Oct 15, 2019",
                  style: TextStyle(
                    color: Colors.black45,
                  ),
                ),
                Text(
                  "1.8K votes",
                  style: TextStyle(
                    color: Colors.lightBlue,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            screensWidget,
            const SizedBox(
              height: 10,
            ),
            descriptionWidget,
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: ElevatedButton(
          onPressed: () {
            Get.to(
              () => ListCinemaScreen(
                model: model,
              ),
            );
          },
          child: Container(
            width: double.maxFinite,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/icons/armchair.svg",
                  color: Colors.white,
                  height: 20,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Book Seats",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 6, 37, 86),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
          ),
        ),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.grey,
            leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            title: Text(
              model.title,
              style: const TextStyle(color: Colors.white),
            ),
            pinned: true,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: "${model.title}$index",
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/movie_banner.png",
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              color: const Color(0xFFF5F5FA),
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    block1(model),
                    const SizedBox(
                      height: 20,
                    ),
                    const OffersBlock(),
                    const SizedBox(
                      height: 20,
                    ),
                    const ReviewBlock(),
                    const SizedBox(
                      height: 20,
                    ),
                    const CrewCastBlock(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
