import 'package:flutter/material.dart';
import 'package:gympass/theme/colors.dart';

class GymCard extends StatelessWidget {
  final String name;
  final String distance;
  final String imageUrl;

  const GymCard(this.name, this.distance, this.imageUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(color: AppColors.black45, blurRadius: 4),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment
                  .center,
              crossAxisAlignment: CrossAxisAlignment
                  .center,
              children: [
                Center(
                  child: Image.network(imageUrl, width: 80, height: 80),
                ),
                const SizedBox(
                    height: 8),
                Text(name, style: const TextStyle(fontSize: 14)),
                Text(distance,
                    style: const TextStyle(
                        fontSize: 12, color: AppColors.labelColor)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
