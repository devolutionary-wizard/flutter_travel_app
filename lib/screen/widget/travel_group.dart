import 'package:flutter/material.dart';

class TravelGroup extends StatelessWidget {
  const TravelGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Category',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
            ),
            Text('View All',
                style: TextStyle(
                    fontWeight: FontWeight.normal, color: Colors.grey))
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 120,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                                image: NetworkImage(
                                  'https://source.unsplash.com/random/100x100?sig=$index',
                                ),
                                fit: BoxFit.contain)),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Phnom Penh'),
                         const SizedBox(height: 15,),
                          const Text('Due: 20th Feb 2023'),
                          const SizedBox(height: 15,),
                          Row(
                            children: List.generate(
                                4,
                                (index) => ClipOval(
                                      child: Image.network(
                                          'https://source.unsplash.com/random/30x30?sig=$index'),
                                    )),
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 10,
                );
              },
              itemCount: 5),
        )
      ],
    );
  }
}
