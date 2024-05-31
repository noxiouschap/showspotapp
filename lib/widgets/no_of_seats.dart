import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:movie_booking_app1/controllers/seat_selection_controller.dart';
import 'package:movie_booking_app1/utils/dummy_data.dart';

class NoOfSeats extends StatelessWidget {
  final Function(int) onTap;
  const NoOfSeats({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Wrap(
        alignment: WrapAlignment.spaceAround,
        children: List.generate(
          s.length,
          (index) => GestureDetector(
            onTap: () {
              onTap(index + 1);
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color:
                    index + 1 == SeatSelectionController.instance.noOfSeats.value ? Colors.green : Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.all(5),
              child: Center(
                child: Text(
                  "${index + 1}",
                  style: TextStyle(
                    color: index + 1 == SeatSelectionController.instance.noOfSeats.value ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}