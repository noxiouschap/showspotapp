import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_booking_app1/screens/details_screen.dart';
import 'package:movie_booking_app1/utils/dummy_data.dart';
import 'package:movie_booking_app1/widgets/item_block.dart';

class MoviesItems extends StatelessWidget {
  const MoviesItems({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: 230,
      width: size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movies.length,
        itemBuilder: (_, i) {
          return Hero(
            tag: "${movies[i].title}$i",
            child: ItemBlock(
              model: movies[i],
              isMovie: true,
              onTap: (model) {
                Get.to(() => DetailsScreen(), arguments: [movies[i], i]);
              },
            ),
          );
        },
      ),
    );
  }
}
