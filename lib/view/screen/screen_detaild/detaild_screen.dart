import 'package:arvension_ui_test/view/screen/screen_detaild/widgets/counter.dart';
import 'package:arvension_ui_test/view/screen/screen_detaild/widgets/custom_choice.dart';
import 'package:arvension_ui_test/view/style/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';

class DetailsScereen extends StatelessWidget {
  DetailsScereen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 350,
                  color: white,
                  alignment: Alignment.topCenter,
                  child: Container(
                    // ignore: sort_child_properties_last
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  CupertinoIcons.arrow_left_circle,
                                  size: 40,
                                  color: white,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  CupertinoIcons.heart_circle,
                                  size: 40,
                                  color: white,
                                ))
                          ],
                        ),
                      ),
                    ),
                    width: double.infinity,
                    height: 280,
                    decoration: const BoxDecoration(
                        color: brown,
                        image: DecorationImage(
                            image: AssetImage('assets/bg.png'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50))),
                  ),
                ),
                Positioned(
                  bottom: -19,
                  left: 5,
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(170), // Image radius
                      child: Image.asset('assets/coff.png', fit: BoxFit.cover),
                    ),
                  ),
                ),
              ],
            ),

      
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  starRating(),
                  h25,
                  priceAndName(),
                  h25,
                  Text(
                    "Coffe Size",
                    style: subText,
                  ),
                  h8,
                  CustomChoice(),
                  h25,
                  Text(
                    "About",
                    style: subText,
                  ),
                  h8,
                  about(),
                  h25,
                  volume(),
                  h25,
                  h8,
                  cart()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

//cart=====================================
  Row cart() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          FontAwesomeIcons.bagShopping,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                minimumSize:const Size(250, 50),
                backgroundColor: lightBrown),
            onPressed: () {},
            child: const Text(
              "Buy Now",
              style: TextStyle(fontWeight: FontWeight.bold, color: white),
            ))
      ],
    );
  }

//volume==============================================
  Row volume() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Wrap(
          children: const [
            Text(
              'Volume',
              style: TextStyle(color: grey, fontWeight: FontWeight.bold),
            ),
            Text(
              '160 ml',
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        const CounterWidegets()
      ],
    );
  }
  //reademore=======================================================

  ReadMoreText about() {
    return ReadMoreText(
      'The consumption of coffee in Europe was initially based on the traditional Ottoman rt    preparation of the drink, by bringing to boil the mixture of coffee and water together, sometimes adding sugar. The British seem to have started filtering and steeping coffee already in the second part of the 18th century,[12] and France and continental Europe followed suit. By the 19th century, coffee was brewed in different devices designed for both home and public cafés. ',
      trimLines: 2,
      style: normalText,
      colorClickableText: shadowblue,
      trimMode: TrimMode.Line,
      trimCollapsedText: '...Read more',
      trimExpandedText: ' Less',
    );
  }

//price==============================================
  Row priceAndName() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Cappuccino",
          style: mainHeadblack,
        ),
        Wrap(
          children:const[
             Text('\$ '),
             Text(
              '25.40',
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        )
      ],
    );
  }
//starrating================================
  Container starRating() {
    return Container(
      height: 30,
      width: 60,
      decoration: BoxDecoration(
          color: lightBrown, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:const [
           Icon(
            Icons.star,
            color: white,
            size: 20,
          ),
           Text(
            "4.3",
            style: TextStyle(color: white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
