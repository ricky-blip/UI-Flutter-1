import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:magang_jr_flutter_bwa/model/most_model.dart';
import 'package:magang_jr_flutter_bwa/themes/theme.dart';

class MostWidgets extends StatelessWidget {
  final Most most;

  const MostWidgets(this.most);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amber,
                boxShadow: [
                  BoxShadow(
                    color: textColor1.withOpacity(0.3),
                    spreadRadius: 0,
                    blurRadius: 30,
                    offset: Offset(0, 30),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                  ),
                  child: Image.asset(
                    most.imageUrl,
                    width: 100,
                    height: 127,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 19),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    most.title,
                    style: titleTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Avenir-Heavy',
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    most.genre,
                    style: subtitleTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Avenir-Book',
                    ),
                  ),
                  SizedBox(height: 20),
                  //NOTE STAR
                  RatingBar(
                    ratingWidget: RatingWidget(
                      full: Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      empty: Icon(Icons.star, color: Color(0xffE1E1EA)),
                      half: Icon(Icons.star_half, color: Colors.amber),
                    ),
                    initialRating: 3,
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
            ),
          ],
        ),
      ],
    );
  }
}
