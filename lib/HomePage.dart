import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:santosh/components/bottomnvabar.dart';
import 'package:santosh/controller/doctorController.dart';
import 'package:santosh/docInfo.dart';
import 'package:santosh/specialist.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          margin: EdgeInsets.only(top: 8),
          child: ListView(
            physics: ClampingScrollPhysics(),
            children: [
              Container(
                  margin: EdgeInsets.only(top: 3, left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 59,
                        width: 59,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          CupertinoIcons.circle_grid_3x3_fill,
                          size: 35,
                        ),
                      ),
                      Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("LOCATION",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                        letterSpacing: 1.5)),
                              ),
                              Row(children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Jakarta,Indonesia",
                                      style: TextStyle(
                                        fontSize: 15,
                                      )),
                                ),
                                Icon(
                                  Icons.arrow_drop_down_sharp,
                                  color: Colors.green,
                                )
                              ]),
                            ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: Container(
                          height: 59,
                          width: 59,
                          decoration: BoxDecoration(
                              color: Colors.green[300],
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(
                                'assets/profile.png',
                              ))),
                        ),
                      )
                    ],
                  )),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 10),
                    Text(
                      'Good morning, Equinox',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      'How are you today?',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 26),
                    ),
                    SizedBox(height: 20),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                          color: Colors.grey[150],
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 1, color: Colors.black12)),
                      height: 50,
                      child: TextField(
                        keyboardType: TextInputType.text,
                        style: TextStyle(color: Colors.black87),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 14, left: 20),
                            suffixIcon: Icon(Icons.search, color: Colors.grey),
                            hintText: "Search Doctor or Symptoms",
                            hintStyle: TextStyle(
                                color: Colors.black38,
                                fontFamily: 'Rubik',
                                fontSize: 15,
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              height: 45,
                              width: MediaQuery.of(context).size.width * 0.3,
                              decoration: BoxDecoration(
                                  color: Colors.grey[180],
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      width: 1, color: Colors.black12)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.emoji_emotions),
                                  Text('Feel Cold'),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 45,
                              width: MediaQuery.of(context).size.width * 0.5,
                              decoration: BoxDecoration(
                                  color: Colors.grey[180],
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      width: 1, color: Colors.black12)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.emoji_emotions),
                                  Text('High Temperature'),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 45,
                              width: MediaQuery.of(context).size.width * 0.3,
                              decoration: BoxDecoration(
                                  color: Colors.grey[180],
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      width: 1, color: Colors.black12)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.emoji_emotions),
                                  Text('Vomiting'),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    Stack(clipBehavior: Clip.none, children: [
                      Container(
                          height: 160,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(135, 206, 235, 100),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Stack(children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Take Care of Mental Health \n During Pandemic",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              primary: Colors.white),
                                          onPressed: () {},
                                          child: Text(
                                            'Join Event',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18,
                                              color: Colors.black87,
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              left: 150,
                              child: Container(
                                height: 250,
                                width: 250,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage(
                                      'assets/main.png',
                                    ))),
                              ),
                            ),
                          ])),
                    ]),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 16),
                    child: Text(
                      "Next Consultation",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 16),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Specialist()));
                      },
                      child: Text(
                        "View All",
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w200,
                            color: Colors.green),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              SingleChildScrollView(child: BuildDoctorContainer()),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: TabBarMaterialWidget(
        index: index,
        onChangedTab: onChangedTab,
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(18))),
        child: Icon(
          Icons.add,
          size: 30,
        ),
        onPressed: () {},
        tooltip: "Post an ad",
        backgroundColor: Colors.green,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void onChangedTab(int index) {
    setState(() {
      this.index = index;
    });
  }
}

class BuildDoctorContainer extends StatelessWidget {
  const BuildDoctorContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Consumer<DoctorContoller>(builder: (context, doctor, child) {
        return Row(
          children: [
            Container(
                width: 380,
                height: 200,
                color: Colors.white,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 20, right: 16),
                    itemCount: doctor.doctorList.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DocInfo(
                                        info: doctor.doctorList[index])));
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 25),
                            height: 190,
                            width: MediaQuery.of(context).size.width * 0.85,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    width: 1, color: Colors.black12)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                        margin:
                                            EdgeInsets.only(left: 20, top: 10),
                                        height: 80,
                                        width: 75,
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                135, 206, 235, 100),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                                width: 1,
                                                color: Colors.black12)),
                                        child: Image.asset(
                                            doctor.doctorList[index].image)),
                                    Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 20, top: 10),
                                          child: Text(
                                            doctor.doctorList[index].name,
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 10),
                                          child: Text(
                                            doctor
                                                .doctorList[index].designation,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.grey[600]),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 15, right: 200),
                                  child: Text(
                                    "DATE & TIME",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey[600]),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        height: 30,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.35,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            border: Border.all(
                                                width: 1,
                                                color: Colors.black12)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Icon(
                                              Icons.calendar_month,
                                              size: 20,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 8.0),
                                              child: Text(doctor
                                                  .doctorList[index].dateTime),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 40,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.35,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            border: Border.all(
                                                width: 1,
                                                color: Colors.black12)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Icon(
                                                Icons.access_time_filled_sharp),
                                            Text(doctor.doctorList[index]
                                                    .startTime +
                                                "-" +
                                                doctor
                                                    .doctorList[index].endTime)
                                          ],
                                        ),
                                      ),
                                    ]),
                              ],
                            ),
                          ));
                    }))
          ],
        );
      }),
    );
  }
}
