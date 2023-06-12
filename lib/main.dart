import 'package:dummy_courze/themes/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          width: double.infinity,
          height: 203,
          decoration: BoxDecoration(
            color: mainTheme,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 26, top: 46, right: 36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Hi, John',
                      style: GoogleFonts.poppins(
                        color: neutral50,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(
                      flex: 6,
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: const Color(0xff171717).withOpacity(0.15),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: IconTheme(
                        data: IconThemeData(color: neutral50, size: 20),
                        child: HeroIcon(
                          HeroIcons.user,
                          style: HeroIconStyle.outline,
                        ),
                      ),
                    ),
                    const SizedBox(width: 24),
                    Container(
                      padding: const EdgeInsets.all(5),
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: const Color(0xff171717).withOpacity(0.15),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: IconTheme(
                        data: IconThemeData(color: neutral50, size: 20),
                        child: HeroIcon(
                          HeroIcons.bell,
                          style: HeroIconStyle.outline,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  "Let's start learning",
                  style: GoogleFonts.montserrat(
                    color: neutral50,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 30),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: neutral50,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 38,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Find Course',
                              hintStyle: GoogleFonts.montserrat(
                                color: neutral300,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                              prefixIcon: IconTheme(
                                data:
                                    IconThemeData(color: neutral300, size: 20),
                                child: HeroIcon(
                                  HeroIcons.magnifyingGlass,
                                  style: HeroIconStyle.outline,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 21),
                      Container(
                        width: 38,
                        height: 38,
                        padding: EdgeInsets.all(9),
                        decoration: BoxDecoration(
                          color: neutral50,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: IconTheme(
                          data: IconThemeData(color: mainTheme, size: 20),
                          child: HeroIcon(
                            HeroIcons.adjustmentsHorizontal,
                            style: HeroIconStyle.outline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 23),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 45,
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(children: [
            Row(
              children: [
                Text(
                  "Popular Courses",
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  "See more",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: indigo400,
                  ),
                )
              ],
            ),
            SizedBox(height: 25),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                      4,
                      (index) => Row(
                            children: [
                              CourseViewCard(title: "Lorem.", rating: '4.5'),
                              SizedBox(
                                width: 20,
                              )
                            ],
                          ))),
            )
          ]),
        ))
      ]),
    );
  }
}

class CourseViewCard extends StatelessWidget {
  const CourseViewCard({
    super.key,
    required this.rating,
    required this.title,
  });
  final String rating;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 100,
          width: 165,
          decoration: BoxDecoration(
            color: Color(0xffD4d4d4),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 36,
                  height: 16,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 3,
                      ),
                      IconTheme(
                        data: IconThemeData(color: yellow400, size: 10),
                        child: HeroIcon(
                          HeroIcons.star,
                          style: HeroIconStyle.solid,
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        rating,
                        style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            height: 1.5),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          title,
          style: GoogleFonts.poppins(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
        ),
        Container(
          child: Row(
            children: [
              IconTheme(
                data: IconThemeData(color: neutral300, size: 20),
                child: HeroIcon(
                  HeroIcons.user,
                  style: HeroIconStyle.solid,
                ),
              ),
              Text(
                'name',
                style: GoogleFonts.poppins(
                    color: neutral300,
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    height: 1.5),
              )
            ],
          ),
        ),
      ],
    );
  }
}
