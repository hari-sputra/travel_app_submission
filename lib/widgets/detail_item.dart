import 'package:flutter/material.dart';
import 'package:travel_app_submission/const.dart';

class DetailItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  const DetailItem({Key? key, required this.title, this.isSelected = false,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Text(
            title,
            style: isSelected ? orangeTextStyle.copyWith(
              fontSize: 13,
              fontWeight: medium,
            ) : greyTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
          ),
          const SizedBox(
            height: 2,
          ),
         isSelected ? Image.asset(
            "assets/icons/slide.png",
            width: 30,
          ) : Container(),
        ],
      ),
    );
  }
}
