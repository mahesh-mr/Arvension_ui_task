import 'package:arvension_ui_test/view/screen/screen_detaild/detaild_screen.dart';
import 'package:arvension_ui_test/view/screen/widgets/custom_clip_choice.dart';
import 'package:arvension_ui_test/view/style/style.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: customAppbar(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Cateogries", style: subline),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: CustomCips(),
            ),
            CarouselSlider.builder(
                itemCount: 10,
                itemBuilder: (context, index, realIndex) {
                  return GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScereen(),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Container(
                            
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 40),
                            child: Container(
                                height: 330,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      offset: Offset(3, 43),
                                      spreadRadius: -6,
                                      blurRadius: 7,
                                      color: Color.fromARGB(255, 226, 223, 223),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  color: brown,
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 45),
                                        child: Text(
                                          "Cappuccino",
                                          style: mainHeadWhite,
                                        ),
                                      ),
                                      h15,
                                      price(),
                                      h15,
                                      volumeText(),
                                      h15,
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 30),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            starRating(),
                                            const CircleAvatar(
                                              radius: 30,
                                              backgroundColor: white,
                                              child: Icon(
                                                Icons.add,
                                                color: brownshadow,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 14,
                          child: ClipOval(
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(120), // Image radius
                              child: Image.asset(
                                'assets/coff.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                options: CarouselOptions(
                  autoPlay: true,
                  disableCenter: true,
                  enlargeCenterPage: true,
                  viewportFraction: 0.6,
                  aspectRatio: .8,
                  initialPage: 0,
                ))
          ],
        ),
      ),
    );
  }

//price======================================
  Wrap starRating() {
    return Wrap(
      children: const [
        Text(
          '\$ ',
          style: TextStyle(color: white),
        ),
        Text(
          '25.40',
          style: TextStyle(
            color: white,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }

//volume==============================================
  Wrap volumeText() {
    return Wrap(
      children: [
        Text(
          'Volume',
          style: TextStyle(
              color: white.withOpacity(.4), fontWeight: FontWeight.bold),
        ),
        w8,
        const Text(
          '160 ml',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: white,
          ),
        )
      ],
    );
  }

//staReting===================================
  Container price() {
    return Container(
      height: 30,
      width: 60,
      decoration: BoxDecoration(
        color: brownshadow,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Icon(
            Icons.star,
            color: white,
            size: 20,
          ),
          const Text(
            "4.3",
            style: TextStyle(color: white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

//appbar=========================================================
  Container customAppbar() {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: white,
        image: DecorationImage(
            image: AssetImage('assets/bg.png'), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/man.jpg'),
                  ),
                  Wrap(
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: lightBrown,
                      ),
                      Text(
                        "Lagos,Nigeria",
                        style: subText,
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.notifications_none,
                    color: black,
                  )
                ],
              ),
            ),
            textfomfeild(),
          ],
        ),
      ),
    );
  }

//search==============================================================
  TextField textfomfeild() {
    return TextField(
      onChanged: (value) {},
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(10.0),
        hintText: "Search",
        hintStyle: TextStyle(color: Colors.grey.shade600),
        suffixIcon: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 2,
            backgroundColor: lightBrown,
            child: Icon(
              Icons.search,
              color: white,
              size: 30,
            ),
          ),
        ),
        filled: true,
        fillColor: lightGrey,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: lightGrey)),
      ),
    );
  }
}
