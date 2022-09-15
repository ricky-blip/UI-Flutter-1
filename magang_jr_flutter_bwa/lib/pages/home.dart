import 'package:flutter/material.dart';
import 'package:magang_jr_flutter_bwa/model/feature_model.dart';
import 'package:magang_jr_flutter_bwa/model/most_model.dart';
import 'package:magang_jr_flutter_bwa/pages/search.dart';
import 'package:magang_jr_flutter_bwa/themes/theme.dart';
import 'package:magang_jr_flutter_bwa/widgets/feature_widget.dart';
import 'package:magang_jr_flutter_bwa/widgets/most_widget.dart';
import 'package:magang_jr_flutter_bwa/widgets/most_widget2.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width * 0.280,
              color: Colors.grey.shade50,
            ),
            ListView(
              children: [
                //SECTION Header
                Padding(
                  padding: const EdgeInsets.only(
                    top: 29,
                    left: 24,
                    bottom: 30,
                  ),
                  child: Row(
                    children: [
                      //NOTE Column Text Header
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Moviez",
                            style: titleTextStyle.copyWith(
                              fontWeight: FontWeight.w900,
                              fontSize: 28,
                              fontFamily: 'Avenir-Black',
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "Watch much easier",
                            style: subtitleTextStyle.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              fontFamily: 'Avenir-Book',
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      //NOTE Column Button Search
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(37),
                              bottomLeft: Radius.circular(37),
                            ),
                            child: Container(
                              width: 55,
                              height: 45,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(37),
                                  bottomLeft: Radius.circular(37),
                                ),
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SearchPages(),
                                    ),
                                  );
                                },
                                child: Icon(Icons.search),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                //SECTION Feature
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 24,
                      bottom: 30,
                    ),
                    child: Row(
                      //SECTION Row Parent
                      children: [
                        FeatureWidgets(
                          Feature(
                            imageUrl: "assets/johnwick4.png",
                            title: "John Wick 4",
                            genre: "Action, Crime",
                          ),
                        ),
                        SizedBox(width: 24),
                        FeatureWidgets(
                          Feature(
                            imageUrl: "assets/bohemian.jpg",
                            title: "Bohemian",
                            genre: "Documentary",
                          ),
                        ),
                        SizedBox(width: 24),
                      ],
                    ),
                  ),
                ),
                //SECTION Text From Disney
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 24,
                        bottom: 20,
                      ),
                      child: Text(
                        "From Disney",
                        textAlign: TextAlign.start,
                        style: titleTextStyle.copyWith(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          fontFamily: 'Avenir-Black',
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ],
                ),
                //SECTION Most
                //NOTE Most 1
                Padding(
                  padding: const EdgeInsets.only(
                    left: 24,
                    bottom: 30,
                  ),
                  child: MostWidgets(
                    Most(
                      imageUrl: "assets/mulan.png",
                      title: "Mulan",
                      genre: "History, War",
                    ),
                  ),
                ),
                //NOTE Most 2
                Padding(
                  padding: const EdgeInsets.only(
                    left: 24,
                  ),
                  child: MostWidgets2(
                    Most(
                      imageUrl: "assets/beautybeast.png",
                      title: "Beauty & Beast",
                      genre: "Sci-Fiction",
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
