import 'package:flutter/material.dart';
import 'package:travel_app_submission/const.dart';
import 'package:travel_app_submission/widgets/popular.dart';
import 'package:travel_app_submission/widgets/recomendation.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size;
    // heading
    Widget heading() {
      return Container(
        margin: const EdgeInsets.only(top: 30, left: 30, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/icons/nav.png",
              width: 26,
            ),
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                image: const DecorationImage(
                  image: AssetImage(
                    "assets/images/profile.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      );
    }

    // head title
    Widget headTitle() {
      return Container(
        margin: const EdgeInsets.only(top: 30, right: 30, left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello, Hari",
              style: primaryTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              "Let's discover best package for you.",
              style: secondaryTextStyle.copyWith(
                fontSize: 12,
                fontWeight: medium,
              ),
            ),
          ],
        ),
      );
    }

    // search box
    Widget searchBox() {
      return Container(
        margin: const EdgeInsets.only(top: 25, right: 30, left: 30),
        child: Row(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(right: 9),
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                height: 45,
                // width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: youngGreyColor,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/icons/search.png",
                      width: 24,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: TextField(
                        style: greyTextStyle.copyWith(),
                        cursorColor: greyColor,
                        decoration: InputDecoration(
                          hintText: "Search your favorite place here.",
                          hintStyle: greyTextStyle.copyWith(
                            fontSize: 12,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 45,
              height: 45,
              margin: const EdgeInsets.only(right: 9),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: youngGreyColor,
              ),
              child: Center(
                child: Image.asset(
                  "assets/icons/filter.png",
                  width: 24,
                ),
              ),
            ),
          ],
        ),
      );
    }

    // Recomendation item
    Widget recomendationItem() {
      return Container(
        margin: const EdgeInsets.only(top: 25),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended",
                    style: primaryTextStyle.copyWith(
                      fontSize: 15,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    "View all",
                    style: orangeTextStyle.copyWith(
                      fontSize: 11,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                children: const [
                  Recomendation(
                    img: "assets/images/recom1.png",
                    title: "Wilson Island Tour",
                    location: "Maldives, Asia",
                    rating: "4.9",
                  ),
                  Recomendation(
                    img: "assets/images/recom2.png",
                    title: "St. Lucia island",
                    location: "Saint Lucia",
                    rating: "4.5",
                  ),
                  Recomendation(
                    img: "assets/images/recom3.jpg",
                    title: "Borobudur Temple",
                    location: "Central Java",
                    rating: "5.0",
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    // Popular item
    Widget popularITem() {
      return Container(
        margin: const EdgeInsets.only(
          top: 25,
          right: 30,
          left: 30,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular package",
                  style: primaryTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  "View all",
                  style: orangeTextStyle.copyWith(
                    fontSize: 11,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const Popular(
              img: "assets/images/popular1.png",
              title: "Alesund viewpoint package",
              location: "Norway",
            ),
            const Popular(
              img: "assets/images/popular2.png",
              title: "Manarola package",
              location: "La Spezia, Italy",
            ),
            const Popular(
              img: "assets/images/popular3.png",
              title: "Heceta head viewpoint package",
              location: "Florence, USA ",
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            heading(),
            headTitle(),
            searchBox(),
            recomendationItem(),
            popularITem(),
          ],
        ),
      ),
    );
  }
}
