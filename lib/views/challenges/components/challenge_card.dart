import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../core/core_shelf.dart';

class ChallengeCard extends StatefulWidget {
  const ChallengeCard({
    Key? key,
    required this.difference,
    required this.imageUrl,
    required this.challengeName,
    required this.target,
  }) : super(key: key);

  final int difference;
  final String imageUrl;
  final String challengeName;
  final int target;

  @override
  _ChallengeCardState createState() => _ChallengeCardState();
}

class _ChallengeCardState extends State<ChallengeCard> {
  bool isJoined = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CachedNetworkImage(
          imageUrl: widget.imageUrl,
          imageBuilder: (context, imageProvider) {
            return Container(
              margin: EdgeInsets.symmetric(
                horizontal: context.width * 4,
                vertical: context.width * 4,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(32)),
              ),
              height: context.height * 30,
              width: double.infinity,
            );
          },
        ),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: context.width * 4,
            horizontal: context.width * 4,
          ),
          padding: context.mediumPadding,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.black87,
              ],
            ),
            borderRadius: BorderRadius.all(Radius.circular(32)),
          ),
          height: context.height * 30,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                widget.challengeName,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Goal: ${widget.target}',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Text(
                    '${widget.difference} days left',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: TextButton(
            onPressed: () {},
            child: isJoined
                ? Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(
                        Radius.circular(32),
                      ),
                    ),
                    margin: EdgeInsets.fromLTRB(
                        context.height * 0,
                        context.width * 5,
                        context.height * 5,
                        context.width * 0),
                    width: context.width * 20,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isJoined = !isJoined;
                        });
                      },
                      child: Text(
                        'Leave',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  )
                : Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(
                        Radius.circular(32),
                      ),
                    ),
                    margin: EdgeInsets.fromLTRB(
                        context.height * 0,
                        context.width * 5,
                        context.height * 5,
                        context.width * 0),
                    width: context.width * 20,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isJoined = !isJoined;
                        });
                      },
                      child: Text(
                        'Join',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
          ),
        ),
      ],
    );
  }
}
