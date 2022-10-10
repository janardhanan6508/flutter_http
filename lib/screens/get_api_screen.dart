import 'package:flutter/material.dart';
import 'package:flutter_http/HTTPHelper.dart';
import 'package:flutter_http/sample_api.dart';

class LoginScreen extends StatelessWidget {
  final HTTPHelper httpService = HTTPHelper();
  static const String id = 'login_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: Hero(
          tag: 'logo',
          child: Container(
            height: 10.0,
            width: 10.0,
            child: FlutterLogo(),
          ),
        ),
        title: Text("Get Api",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.greenAccent[200],
      ),
      body: FutureBuilder(
        future: httpService.getCourses(),
        builder:
            (BuildContext context, AsyncSnapshot<List<SampleApi>> snapshot) {
          if (snapshot.hasData) {
            List<SampleApi>? fakeApi = snapshot.data;
            return ListView(
              children: fakeApi!
                  .map(
                    (SampleApi post) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 5.0,
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        color: Colors.greenAccent[100],
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30),
                          child: ListTile(
                            title: Center(
                              child: Text(
                                "${post.id}",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 60.0,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                            subtitle: Center(
                              child: Text(
                                post.title,
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
