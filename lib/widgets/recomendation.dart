import 'package:flutter/material.dart';
import 'package:travel_app_submission/const.dart';

class Recomendation extends StatelessWidget {
  final String img, title, location, rating;
  const Recomendation({
    Key? key,
    required this.img,
    required this.title,
    required this.location,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/detail");
      },
      child: Container(
        margin: const EdgeInsets.only(left: 30),
        width: 204,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(26),
          color: youngGreyColor,
        ),
        child: Column(
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(26),
                ),
                image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 14, bottom: 14, left: 14, right: 6),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: primaryTextStyle.copyWith(
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
                                fontSize: 11,
                                fontWeight: medium,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    "assets/icons/star.png",
                    width: 14,
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Text(
                    rating,
                    style: secondaryTextStyle.copyWith(
                      fontSize: 11,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
