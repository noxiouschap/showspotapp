import 'package:flutter/material.dart';
import 'package:movie_booking_app1/model/event_model.dart';
import 'package:movie_booking_app1/widgets/item_block.dart';

class EventItems extends StatelessWidget {
  final List<EventModel> events;
  const EventItems({super.key, required this.events});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: 230,
      width: size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: events.length,
        itemBuilder: (_, i) {
          return ItemBlock(
            model: events[i],
            onTap: (model) {},
          );
        },
      ),
    );
  }
}