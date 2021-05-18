import 'package:activityTracer/core/decoration/circular_border.dart';
import 'package:flutter/material.dart';
import '../../../core/core_shelf.dart';
import '../viewModel/trickViewModel.dart';

class TipsScreen extends StatefulWidget {
  @override
  _TipsScreenState createState() => _TipsScreenState();
}

class _TipsScreenState extends State<TipsScreen> {
  int pageIndex = 0;
  TrickViewModel vm = TrickViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Tips&Tricks'),
        shape: CircularBorder().appBarRounded(context),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                future: vm.getTricks(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final dataList = snapshot.data as List;
                    return ListView.builder(
                      itemCount: dataList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: context.mediumPadding,
                              child: Text(dataList[index].title),
                            ),
                            Padding(
                              padding: context.mediumPadding,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(36),
                                child: SizedBox(
                                    height: 200,
                                    width: double.infinity,
                                    child: Image.asset(
                                      dataList[index].imagePath,
                                      fit: BoxFit.fitWidth,
                                    )),
                              ),
                            ),
                            Padding(
                              padding: context.mediumPadding,
                              child: Text(dataList[index].bodyText),
                            ),
                            Divider(
                              indent: 100,
                              endIndent: 100,
                            )
                          ],
                        );
                      },
                    );
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

/*
Center(
          child: GridView.count(
        crossAxisCount: 1,
        children: List.generate(pictures.length, (index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(36),
            child: Padding(
              padding: context.mediumPadding,
              child: SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Image.asset(
                    pictures[index],
                    fit: BoxFit.fitWidth,
                  )),
            ),
          );
        }),
      )),
*/
