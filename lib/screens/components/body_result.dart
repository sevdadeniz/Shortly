import 'package:flutter/material.dart';
import 'package:shortly/Models/ShortlyModel.dart';

import '../../Services/service.dart';

class ResultLink extends StatefulWidget {
  final String link;
  const ResultLink({Key key, @required this.link}) : super(key: key);
  @override
  State<ResultLink> createState() => _ResultLinkState();
}

class _ResultLinkState extends State<ResultLink> {
  final ShortLinkService _linkService = ShortLinkService();
  String shortly;
  Future _future;

  Future<dynamic> getLink() async {
    shortly = await _linkService.getShortLink(widget.link);
  }

  @override
  void initState() {
    _future = getLink();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      margin: const EdgeInsets.all(25.0),
      color: Colors.amber[600],
      //height: 200,
      child: Scaffold(
        body: FutureBuilder<dynamic>(
          future: _future,
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: const CircularProgressIndicator(),
              );
            } else if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError)
                return Text(snapshot.error.toString());
              else
                return Center(
                  child: Container(
                    child: Text(shortly),
                  ),
                );
            } else {
              return Center(
                child: const CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    ));
  }
}
