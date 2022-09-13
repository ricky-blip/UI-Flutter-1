import 'package:flutter/material.dart';
import 'package:magang_jr_flutter_bwa/model/feature_model.dart';
import 'package:magang_jr_flutter_bwa/themes/theme.dart';

class FeatureWidgets extends StatelessWidget {
  //NOTE access class 'Popular' model --> Atribute 'popular'
  final Feature fitur;

  //NOTE Constractor
  const FeatureWidgets(this.fitur);

  @override
  Widget build(BuildContext context) {
    return Row(
      //NOTE Row 1
      children: [
        Container(
          width: 300,
          decoration: BoxDecoration(
              // color: homebgColor,
              ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  child: Image.asset(
                    //NOTE access Model Popular untuk image
                    fitur.imageUrl,
                    // width: MediaQuery.of(context).size.width,
                    width: 356,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 19),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      //NOTE access Model Popular untuk name
                      fitur.title,
                      style: titleTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      //NOTE access Model Popular untuk harga
                      fitur.genre,
                      style: subtitleTextStyle.copyWith(fontSize: 12),
                    ),

                    //NOTE Star
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.start,
                    //   children: [
                    //     RatingsWidget(),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
    ;
  }
}
