import 'package:flutter/material.dart';

class FirstCw extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String distance;
  final double rating;
  final String age;
  final String category;
  final String duration;

  const FirstCw({super.key,
  required this.imageUrl,
  required this.title,
  required this.subtitle,
  required this.distance,
  required this.rating,
  required this.age,
  required this.category,
  required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsetsGeometry.all(20),
      child: Container(

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadiusGeometry.circular(25),

          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(title,
                    style: TextStyle(
                      fontSize: 27,

                    ),),
                  Text(subtitle,
                    style: TextStyle(
                      color: Colors.black12,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.location_on_outlined,
                    size: 25,),
                  Text("1.8 likes",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.star,
                    size: 25,
                  ),
                  Text(distance,
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18
                    ),
                  ),
                  const Spacer(),
                  const Icon(Icons.star_border_outlined,
                  size: 20,
                  color: Colors.pink,),
                  const SizedBox(width: 8,),

                  Text(
                    rating.toString(),
                    style: const TextStyle(
                      color: Colors.yellow
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 24,
              width: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(crossAxisAlignment: CrossAxisAlignment.end,

                children: [



                  Container(
                    height: 25,
                    width: 55,
                    decoration: BoxDecoration(
                        border: Border.fromBorderSide(
                          const BorderSide(
                            color: Colors.grey,
                            width: 2
                          )
                        )
                    ),
                  child: Text(
                'like',
                style: TextStyle(
                    color: Colors.purpleAccent),
              ),

                  ),
                  Spacer(),
                  Container(

                    height: 25,  width: 55,
                    decoration: BoxDecoration(
                        border: Border.fromBorderSide(
                            const BorderSide(
                                color: Colors.grey,
                                width: 2
                            )
                        )
                    ),
                    child: Text(
                      'like',
                      style: TextStyle(
                          color: Colors.purpleAccent),
                    ),
                  ),
                  Spacer(),
                  Container(

                    height: 25, width: 55,
                    decoration: BoxDecoration(

                        border: Border.fromBorderSide(
                            const BorderSide(
                                color: Colors.grey,
                                width: 2
                            )
                        )
                    ),
                    child: Text(
                      'like',
                      style: TextStyle(
                          color: Colors.purpleAccent),
                    ),
                  ),

                ],
              ),
            )
          ],

        ),

      ),

    );
  }
}
