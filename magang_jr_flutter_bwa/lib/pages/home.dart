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
      backgroundColor: homebgColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: homebgColor,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        toolbarHeight: 100,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 29),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Moviez",
                style: titleTextStyle.copyWith(
                  fontWeight: FontWeight.w900,
                  fontSize: 28,
                  fontFamily: 'Avenir',
                  fontStyle: FontStyle.normal,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "Watch much easier",
                style: subtitleTextStyle.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  fontFamily: 'Avenir',
                  fontStyle: FontStyle.normal,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: IconButton(
              highlightColor: homebgColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchPages()),
                );
              },
              icon: Icon(
                Icons.search,
                size: 50,
                color: textColor1,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: 140,
            color: homebgColor2,
          ),
          ListView(
            children: [
              //SECTION Feature
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  bottom: 20,
                  // left: 29,
                  // right: 29,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    //SECTION Row Parent
                    children: [
                      const SizedBox(width: 10),
                      Padding(padding: EdgeInsets.only(left: 29)),
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
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  left: 40,
                  right: 40,
                ),
                child: Row(
                  children: [
                    Text(
                      "From Disney",
                      textAlign: TextAlign.start,
                      style: titleTextStyle.copyWith(
                        fontWeight: FontWeight.w900,
                        fontSize: 24,
                        fontFamily: 'Avenir',
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
              ),
              //SECTION Most
              //NOTE Most 1
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 40,
                  bottom: 20,
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
                  left: 40,
                  bottom: 40,
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
    );
  }
}
