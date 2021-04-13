import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:ultra_app/deatels_screen.dart';

class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  List<Widget> doctors = [
    Doctors(
      isAvilable: true,
      name: 'Mohammad',
      projectsNumber: 1,
      major: 'Bit',
      descrption: 'Hey There i\'m prof Mohammad,hope i could provide with all the knowledge you need you finish your project',
    ),
    Doctors(
      isAvilable: true,
      name: 'Ibrahim',
      projectsNumber: 3,
      major: 'Cis',
      descrption: 'Hey There i\'m prof Mohammad,hope i could provide with all the knowledge you need you finish your project',
    ),
    Doctors(
      isAvilable: true,
      name: 'Hamad',
      projectsNumber: 4,
      major: 'Cs',
      descrption: 'Hey There i\'m prof Mohammad,hope i could provide with all the knowledge you need you finish your project',
    ),
    Doctors(
      isAvilable: true,
      name: 'Raed',
      projectsNumber: 1,
      major: 'Data Science',
      descrption: 'Hey There i\'m prof Mohammad,hope i could provide with all the knowledge you need you finish your project',
    ),
    Doctors(
      isAvilable: true,
      name: 'Jameel',
      projectsNumber: 1,
      major: 'Ai',
      descrption: 'Hey There i\'m prof Mohammad,hope i could provide with all the knowledge you need you finish your project',
    ),
    Doctors(
      isAvilable: true,
      name: 'Sanad',
      projectsNumber: 5,
      major: 'Cs',
      descrption: 'Hey There i\'m prof Mohammad,hope i could provide with all the knowledge you need you finish your project',
    ),
    Doctors(
      isAvilable: true,
      name: 'Ahmad',
      projectsNumber: 1,
      major: 'BIT',
      descrption: 'Hey There i\'m prof Mohammad,hope i could provide with all the knowledge you need you finish your project',
    ),
    Doctors(
      isAvilable: true,
      name: 'Wael',
      projectsNumber: 2,
      major: 'CIS',
      descrption: 'Hey There i\'m prof Mohammad,hope i could provide with all the knowledge you need you finish your project',
    ),
    Doctors(
      isAvilable: true,
      name: 'Sanad',
      projectsNumber: 5,
      major: 'Cs',
      descrption: 'Hey There i\'m prof Mohammad,hope i could provide with all the knowledge you need you finish your project',
    ),
    Doctors(
      isAvilable: true,
      name: 'Ahmad',
      projectsNumber: 5,
      major: 'BIT',
      descrption: 'Hey There i\'m prof Mohammad,hope i could provide with all the knowledge you need you finish your project',
    ),
    Doctors(
      isAvilable: true,
      name: 'Wael',
      projectsNumber: 3,
      major: 'CIS',
      descrption: 'Hey There i\'m prof Mohammad,hope i could provide with all the knowledge you need you finish your project',
    ),
    Doctors(
      isAvilable: true,
      name: 'Sanad',
      projectsNumber: 1,
      major: 'Cs',
      descrption: 'Hey There i\'m prof Mohammad,hope i could provide with all the knowledge you need you finish your project',
    ),
    Doctors(
      isAvilable: true,
      name: 'Ahmad',
      projectsNumber: 4,
      major: 'BIT',
      descrption: 'Hey There i\'m prof Mohammad,hope i could provide with all the knowledge you need you finish your project',
    ),
    Doctors(
      isAvilable: true,
      name: 'Wael',
      projectsNumber: 3,
      major: 'CIS',
      descrption: 'Hey There i\'m prof Mohammad,hope i could provide with all the knowledge you need you finish your project',
    ),
  ];
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
                  marketBottomSheet(context: context);
                },
                icon: Icon(Icons.person),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Wrap(
                direction: Axis.horizontal,
                children: [
                  // ignore: sdk_version_ui_as_code
                  for (int i = 0; i < doctors.length; i++) doctors[i]
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Doctors extends StatelessWidget {
  final String name;
  final int projectsNumber;
  final bool isAvilable;
  final int studentswithTheDoctor;
  final String descrption;
  final String major;
  const Doctors({this.name, this.projectsNumber, this.isAvilable, this.studentswithTheDoctor, this.descrption, this.major});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(color: Colors.lightGreen, borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                highlightColor: Colors.green,
                onTap: () => projectsNumber < 5 ? Navigator.pushNamed(context, '/deatels', arguments: {'desc': descrption}) : null,
                child: Column(
                  children: [
                    Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.white,
                    ),
                    Container(),
                    FittedBox(
                      child: Text(
                        name,
                        style: TextStyle(fontSize: 15, color: Colors.white),
                        overflow: TextOverflow.clip,
                      ),
                    ),
                    Expanded(child: Container()),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8),
                      child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            major,
                            style: TextStyle(fontSize: 30, color: Colors.white),
                            overflow: TextOverflow.clip,
                          )),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: CircleAvatar(
            child: Text(
              '$projectsNumber',
            ),
            backgroundColor: Colors.green[700],
          ),
        )
      ],
    );
  }
}

Future<Widget> marketBottomSheet({
  @required BuildContext context,
  Widget view,
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
          child: Container(
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
      ));
    },
  );
}
