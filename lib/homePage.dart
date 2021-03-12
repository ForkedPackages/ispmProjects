import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> doctors = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Doctors'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              child: IconButton(
                iconSize: 35,
                onPressed: () {
                  marketBottomSheet(
                      context: context,
                      view: (Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
                              colors: [Colors.green, Color(0xff228B22)],
                              tileMode: TileMode.mirror // red to yellow
                              ),
                        ),
                        height: 400,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: Container(
                                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                height: 5,
                                width: 40,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Container(
                                height: 220,
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 4,
                                      child: Row(
                                        children: [
                                          Text(
                                            'Project Name : ',
                                            style: TextStyle(fontSize: 20, color: Colors.white),
                                          ),
                                          Expanded(child: Container()),
                                          Text(
                                            'Graduation Project',
                                            style: TextStyle(fontSize: 20, color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Row(
                                        children: [
                                          Text(
                                            'Name : ',
                                            style: TextStyle(fontSize: 20, color: Colors.white),
                                          ),
                                          Expanded(child: Container()),
                                          Text(
                                            'Zaid Barghouthi',
                                            style: TextStyle(fontSize: 20, color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Row(
                                        children: [
                                          Text(
                                            'ID : ',
                                            style: TextStyle(fontSize: 20, color: Colors.white),
                                          ),
                                          Expanded(child: Container()),
                                          Text(
                                            '0161065',
                                            style: TextStyle(fontSize: 20, color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Row(
                                        children: [
                                          Text(
                                            'Major : ',
                                            style: TextStyle(fontSize: 20, color: Colors.white),
                                          ),
                                          Expanded(child: Container()),
                                          Text(
                                            'CIS',
                                            style: TextStyle(fontSize: 20, color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: FlatButton(
                                onPressed: () {},
                                padding: EdgeInsets.all(16),
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    const Text(
                                      'Edit Info',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 20,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      size: 25,
                                      color: Colors.green,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )));
                },
                icon: Icon(Icons.person),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Doctors extends StatelessWidget {
  @override
  final String name;
  final String projectsNumber;
  final bool isAvilable;

  const Doctors({this.name, this.projectsNumber, this.isAvilable});

  Widget build(BuildContext context) {
    return Container();
  }
}

Future<Widget> marketBottomSheet({
  @required BuildContext context,
  @required Widget view,
}) {
  return showCupertinoModalBottomSheet(
    useRootNavigator: true,
    expand: false,
    context: context,
    backgroundColor: Colors.green,
    duration: Duration(milliseconds: 200),
    animationCurve: Curves.ease,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    previousRouteAnimationCurve: Curves.easeInBack,
    transitionBackgroundColor: Colors.black.withOpacity(0.80),
    elevation: 20.0,
    closeProgressThreshold: 10.0,
    topRadius: Radius.circular(25),
    builder: (context) {
      return Material(
        child: view,
      );
    },
  );
}
