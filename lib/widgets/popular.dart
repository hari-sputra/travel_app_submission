import 'package:flutter/material.dart';
import 'package:travel_app_submission/const.dart';

class Popular extends StatelessWidget {
  final String img, title, location;
  const Popular({
    Key? key,
    required this.img,
    required this.title,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/detail");
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(11),
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: youngGreyColor,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Row(
          children: [
            Container(
              width: 55,
              height: 53,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: primaryTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/icons/location.png",
                      width: 13,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      location,
                      style: secondaryTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
