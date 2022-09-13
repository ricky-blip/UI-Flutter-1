import 'package:flutter/material.dart';
import 'package:magang_jr_flutter_bwa/model/feature_model.dart';
import 'package:magang_jr_flutter_bwa/themes/theme.dart';
import 'package:magang_jr_flutter_bwa/widgets/feature_widget.dart';

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
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
            child: IconButton(
              onPressed: () {},
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
            color: Colors.amber,
          ),
          ListView(
            children: [
              //NOTE Feature
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  bottom: 20,
                  // left: 29,
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
                          imageUrl: "assets/johnwick4.png",
                          title: "John Wick",
                          genre: "Action",
                        ),
                      ),
                    ],
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
