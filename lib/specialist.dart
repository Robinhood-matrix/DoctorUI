import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:santosh/controller/doctorController.dart';
import 'package:santosh/docInfo.dart';

void main() {
  runApp(Specialist());
}

class Specialist extends StatefulWidget {
  const Specialist({Key? key}) : super(key: key);

  @override
  _SpecialistState createState() => _SpecialistState();
}

class _SpecialistState extends State<Specialist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Container(
            // margin: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color.fromRGBO(135, 206, 235, 100),
            ),
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 30, left: 18, right: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 2.0),
                            child: IconButton(
                              icon: Icon(Icons.arrow_back_ios,
                                  color: Color(0xff00bfff)),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 140),
                          child: Container(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_vert_sharp,
                                    color: Colors.white),
                              )),
                        ),
                      ],
                    )),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 170),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Choose your own",
                          style: TextStyle(fontSize: 23, color: Colors.white)),
                      Text("Consulation",
                          style: TextStyle(fontSize: 23, color: Colors.white)),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.white,
                  ),
                ),
                //SizedBox(height: 5, ),

                BuildDoctorContainer(),
              ],
            ),
          ),
        ),
      ),
    );
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
                width: 392,
                height: 500,
                color: Colors.white,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.only(left: 16, right: 16),
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
                            margin: EdgeInsets.only(bottom: 20),
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
                                                fontWeight: FontWeight.w500,
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
                                            Icon(Icons.calendar_month),
                                            Text(doctor
                                                .doctorList[index].dateTime)
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 40,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.3,
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
