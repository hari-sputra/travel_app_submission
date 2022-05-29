import 'package:flutter/material.dart';
import 'package:travel_app_submission/const.dart';
import 'package:travel_app_submission/widgets/detail_item.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isLike = false;

  List imgActivities = [
    "assets/images/detail1.jpg",
    "assets/images/detail2.jpg",
    "assets/images/detail3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    // head content
    Widget headContent() {
      return Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/recom1.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 21, right: 22, left: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      "assets/icons/back.png",
                      width: 39,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isLike = !isLike;
                      });
                    },
                    child: Image.asset(
                      isLike
                          ? "assets/icons/Love-filled.png"
                          : "assets/icons/love.png",
                      width: 39,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // card
          Container(
            margin: const EdgeInsets.only(left: 30, right: 30, top: 290),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(26),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: greyColor.withOpacity(.2),
                  spreadRadius: .1,
                  blurRadius: 10,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Wilson Island Tour",
                  style: primaryTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$499.00",
                      style: orangeTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/icons/location.png",
                            width: 15,
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Maldives, Asia",
                            style: primaryTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: medium,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      );
    }

    // content
    Widget content() {
      return Container(
        margin: const EdgeInsets.only(top: 16, right: 25, left: 25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                DetailItem(
                  title: "Details",
                  isSelected: true,
                ),
                DetailItem(
                  title: "Reviews",
                  isSelected: false,
                ),
                DetailItem(
                  title: "Budget",
                  isSelected: false,
                ),
                DetailItem(
                  title: "Highlight",
                  isSelected: false,
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              "Wilson island appeals through its sheer natural beauty of loom volcanoes and lush terraced rice fields that exude peace and  serenity. Wilson enchancts with its dramatic and colourful of a ceremonies.",
              style: greyTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
          ],
        ),
      );
    }

    // activities
    Widget activites() {
      return Container(
        margin: const EdgeInsets.only(top: 25, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Activities",
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
              height: 15,
            ),
            SizedBox(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: imgActivities.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 16),
                    width: 120,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage(
                          imgActivities[index],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      );
    }

    // price and button
    Widget footer() {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Total price",
                  style: secondaryTextStyle.copyWith(
                    fontSize: 10,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "\$499.00",
                  style: orangeTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/success', (route) => false);
              },
              style: ElevatedButton.styleFrom(
                primary: orangeColor,
                padding: const EdgeInsets.symmetric(
                  horizontal: 38,
                  vertical: 13,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              child: Text(
                "Book now",
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
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
            headContent(),
            content(),
            activites(),
            footer(),
          ],
        ),
      ),
    );
  }
}
