import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:magang_jr_flutter_bwa/model/feature_model.dart';
import 'package:magang_jr_flutter_bwa/themes/theme.dart';

class FeatureWidgets extends StatelessWidget {
  final Feature fitur;

  const FeatureWidgets(this.fitur);

  @override
  Widget build(BuildContext context) {
    return Row(
      //NOTE Row 1
      children: [
        Container(
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber,
                  boxShadow: [
                    BoxShadow(
                      color: textColor1.withOpacity(0.2),
                      spreadRadius: 0,
                      blurRadius: 20,
                      offset: Offset(0, 20),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    child: Image.asset(
                      fitur.imageUrl,
                      width: 356,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 19),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          fitur.title,
                          style: titleTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        RatingBar(
                          ratingWidget: RatingWidget(
                            full: Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            empty: Icon(Icons.star_border, color: Colors.amber),
                            half: Icon(Icons.star_half, color: Colors.amber),
                          ),
                          initialRating: 5,
                          ignoreGestures: true,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 18,
                          itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                          onRatingUpdate: (rating) {},
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Text(
                      fitur.genre,
                      style: subtitleTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
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
