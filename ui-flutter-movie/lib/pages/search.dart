import 'package:flutter/material.dart';
import 'package:magang_jr_flutter_bwa/themes/theme.dart';
import 'package:magang_jr_flutter_bwa/widgets/most_widget2.dart';
import 'package:magang_jr_flutter_bwa/widgets/most_widget3.dart';
import '../model/most_model.dart';

class SearchPages extends StatefulWidget {
  const SearchPages({Key? key}) : super(key: key);

  @override
  State<SearchPages> createState() => _SearchPagesState();
}

class _SearchPagesState extends State<SearchPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width * 0.227,
              color: homebgColor,
            ),
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 24,
                        right: 24,
                        top: 39,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(37),
                          boxShadow: [
                            BoxShadow(
                              color: textColor1.withOpacity(0.1),
                              spreadRadius: 0,
                              blurRadius: 1,
                              offset: Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(37),
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 22,
                                      top: 11,
                                      bottom: 12,
                                      right: 16,
                                    ),
                                    child: Icon(
                                      Icons.search,
                                      size: 22,
                                      color: textColor1,
                                    ),
                                  ),
                                  Text(
                                    "The Dar|",
                                    style: titleTextStyle.copyWith(
                                      fontFamily: "Avenir-Book",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // TextField(
                            //   style: TextStyle(color: textColor1, fontSize: 16),
                            //   decoration: InputDecoration(
                            //     filled: true,
                            //     fillColor: Colors.white,
                            //     border: OutlineInputBorder(
                            //       borderRadius: BorderRadius.circular(30),
                            //       borderSide: BorderSide.none,
                            //     ),
                            //     hintText: "The Dar|",
                            //     hintStyle: titleTextStyle.copyWith(
                            //       fontSize: 16,
                            //       fontWeight: FontWeight.w400,
                            //       fontFamily: 'Avenir-Roman',
                            //     ),
                            //     prefixIcon: Padding(
                            //       padding: const EdgeInsets.only(
                            //         left: 22,
                            //         right: 16,
                            //       ),
                            //       child: Icon(
                            //         Icons.search,
                            //         size: 40,
                            //         color: textColor1,
                            //       ),
                            //     ),
                            //     prefixIconColor: textColor1,
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 35),
                    //NOTE Text SEARCH RESULT
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 24,
                          ),
                          child: Row(
                            children: [
                              Text(
                                "Search Result",
                                style: titleTextStyle.copyWith(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Avenir-Heavy',
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "(3)",
                                style: titleTextStyle.copyWith(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Avenir-Heavy',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    //SECTION Most
                    //NOTE Most 1
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 24,
                        // bottom: 20,
                      ),
                      child: MostWidgets3(
                        Most(
                          imageUrl: "assets/thedark2.png",
                          title: "The Dark II",
                          genre: "Horror",
                        ),
                      ),
                    ),
                    //NOTE Most 2
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 30,
                        left: 24,
                        // bottom: 20,
                      ),
                      child: MostWidgets2(
                        Most(
                          imageUrl: "assets/thedarkknight.png",
                          title: "The Dark Knight",
                          genre: "Heroes",
                        ),
                      ),
                    ),
                    //NOTE Most 3
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 30,
                        left: 24,
                        bottom: 73,
                      ),
                      child: MostWidgets3(
                        Most(
                          imageUrl: "assets/thedarktower.png",
                          title: "The Dark Tower",
                          genre: "Action",
                        ),
                      ),
                    ),
                    //NOTE Button
                    Material(
                      elevation: 10,
                      borderRadius: BorderRadius.circular(37),
                      shadowColor: textColor1,
                      child: Ink(
                        width: MediaQuery.of(context).size.width * 0.65,
                        height: 50,
                        decoration: BoxDecoration(
                          color: textColor1,
                          borderRadius: BorderRadius.circular(37),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(37),
                          onTap: () {},
                          child: const Center(
                            child: Text(
                              "Suggest Movie",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Avenir-Medium',
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        ),
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
