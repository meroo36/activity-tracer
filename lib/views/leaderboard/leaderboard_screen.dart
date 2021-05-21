import 'package:activityTracer/core/decoration/circular_border.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../core/core_shelf.dart';

class LeaderBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            decoration: CircularBorder().appBar(context),
            width: context.width * 100,
            height: context.height * 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Container(
                    //   width: context.height * 14,
                    //   height: context.height * 14,
                    //   margin: EdgeInsets.only(bottom: 10),
                    //   decoration: BoxDecoration(
                    //     color: Colors.green,
                    //     image: DecorationImage(
                    //         image: NetworkImage(
                    //             'https://png.pngtree.com/png-vector/20190114/ourmid/pngtree-vector-avatar-icon-png-image_313572.jpg')),
                    //     borderRadius: BorderRadiusDirectional.circular(64),
                    //   ),
                    // ),
                    CachedNetworkImage(
                      imageUrl:
                          'https://png.pngtree.com/png-vector/20190114/ourmid/pngtree-vector-avatar-icon-png-image_313572.jpg',
                      imageBuilder: (context, imageProvider) => Container(
                        width: context.height * 14,
                        height: context.height * 14,
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.9),
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: Offset(0, 3),
                            )
                          ],
                          image: DecorationImage(
                              image: imageProvider, fit: BoxFit.cover),
                        ),
                      ),
                      placeholder: (context, url) => Container(
                        width: 50,
                        height: 50,
                        child: CircularProgressIndicator(),
                      ),
                    ),
                    Container(
                      color: Color(0xffC0C0C0),
                      height: context.height * 20,
                      width: context.width * 25,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('@meroo366'),
                          SizedBox(
                            height: 20,
                          ),
                          Text('13.254'),
                          Text('Steps'),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CachedNetworkImage(
                      imageUrl:
                          'https://png.pngtree.com/png-vector/20190114/ourmid/pngtree-vector-avatar-icon-png-image_313572.jpg',
                      imageBuilder: (context, imageProvider) => Container(
                        width: context.height * 14,
                        height: context.height * 14,
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.9),
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: Offset(0, 3),
                            )
                          ],
                          image: DecorationImage(
                              image: imageProvider, fit: BoxFit.cover),
                        ),
                      ),
                      placeholder: (context, url) => Container(
                        width: 50,
                        height: 50,
                        child: CircularProgressIndicator(),
                      ),
                    ),
                    Container(
                      color: Color(0xffFFD700),
                      height: context.height * 25,
                      width: context.width * 25,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('@meroo376'),
                          SizedBox(
                            height: 20,
                          ),
                          Text('15.254'),
                          Text('Steps'),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CachedNetworkImage(
                      imageUrl:
                          'https://png.pngtree.com/png-vector/20190114/ourmid/pngtree-vector-avatar-icon-png-image_313572.jpg',
                      imageBuilder: (context, imageProvider) => Container(
                        width: context.height * 14,
                        height: context.height * 14,
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.9),
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: Offset(0, 3),
                            )
                          ],
                          image: DecorationImage(
                              image: imageProvider, fit: BoxFit.cover),
                        ),
                      ),
                      placeholder: (context, url) => Container(
                        width: 50,
                        height: 50,
                        child: CircularProgressIndicator(),
                      ),
                    ),
                    Container(
                      color: Color(0xffCD7F32),
                      height: context.height * 15,
                      width: context.width * 25,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('@meroo326'),
                          SizedBox(
                            height: 20,
                          ),
                          Text('11.254'),
                          Text('Steps'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: context.lowPadding,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '#',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Username',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Steps',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: 15,
            itemBuilder: (context, index) {
              return Container(
                padding: context.lowPadding,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '${index + 3}',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'meroo${index + 3}',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${(14853 / (index + 2)).toStringAsFixed(0)}',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
