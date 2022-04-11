import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:readmore/readmore.dart';
import 'package:santosh/model/doctor_model.dart';
import 'package:time_range/time_range.dart';

class DocInfo extends StatefulWidget {
  final Doctor info;
  const DocInfo({Key? key, required this.info}) : super(key: key);

  @override
  State<DocInfo> createState() => _DocInfoState();
}

class _DocInfoState extends State<DocInfo> {
  DateTime _selectedDate = DateTime.now();

  final _defaultTimeRange = TimeRangeResult(
    TimeOfDay(hour: 14, minute: 50),
    TimeOfDay(hour: 15, minute: 20),
  );
  TimeRangeResult? _timeRange;
  void _resetSelectedDate() {
    _selectedDate = DateTime.now().add(Duration(days: 5));
    _timeRange = _defaultTimeRange;
  }

  void initState() {
    super.initState();
    _resetSelectedDate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: AlwaysScrollableScrollPhysics(),
          child: Container(
            // margin: EdgeInsets.only(top: 15),

            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 30, left: 18, right: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15),
                              border:
                                  Border.all(width: 2, color: Colors.black12)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.black,
                                size: 20,
                              ),
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
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Container(child: Image.asset('assets/profile.png')),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 50),
                              child: Text(
                                "${widget.info.name}",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "${widget.info.designation}",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey[600]),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    padding: EdgeInsets.only(left: 30),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Container(
                                  padding: EdgeInsets.only(right: 260),
                                  child: Text(
                                    "BIOGRAPHY",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 350,
                                child: ReadMoreText(
                                  "Dr.Lawrence A. Schiffman is a Board Certified general, surgical and cosmetic dermatologist practicing in Miami,Florida. He has done many surgeries.So he is a great doctor.",
                                  trimLines: 3,
                                  colorClickableText: Colors.green,
                                  trimMode: TrimMode.Line,
                                  trimCollapsedText: "Read More",
                                  trimExpandedText: "Read Less",
                                  style: TextStyle(fontSize: 16, height: 2),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                  padding: EdgeInsets.only(right: 260),
                                  child: Text(
                                    "SPECIALITIES",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 75),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[300],
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                              width: 1, color: Colors.black12)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            'Dermatologist',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      height: 45,
                                      width: MediaQuery.of(context).size.width *
                                          0.3,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[300],
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                              width: 1, color: Colors.black12)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            'Venereology',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                  padding: EdgeInsets.only(right: 220),
                                  child: Text(
                                    "Schedules",
                                    style: TextStyle(fontSize: 18),
                                  )),
                              SizedBox(
                                height: 150,
                                width: 300,
                                child: CalendarTimeline(
                                  initialDate: _selectedDate,
                                  firstDate: DateTime.now(),
                                  lastDate:
                                      DateTime.now().add(Duration(days: 365)),
                                  onDateSelected: (date) {
                                    setState(() {
                                      _selectedDate = date!;
                                    });
                                  },
                                  leftMargin: 20,
                                  monthColor: Colors.blueGrey,
                                  dayColor: Colors.teal[200],
                                  activeDayColor: Colors.white,
                                  activeBackgroundDayColor:
                                      Colors.redAccent[100],
                                  dotsColor: Color(0xFF333A47),
                                  selectableDayPredicate: (date) =>
                                      date.day != 23,
                                  locale: 'en_ISO',
                                ),
                              ),
                              Container(
                                height: 20,
                                width: 300,
                                child: Divider(
                                  color: Colors.black,
                                ),
                              ),
                              Container(
                                height: 300,
                                width: 300,
                                padding: EdgeInsets.only(right: 10),
                                child: TimeRange(
                                    fromTitle: Text(
                                      'From',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.grey),
                                    ),
                                    toTitle: Text(
                                      'To',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.grey),
                                    ),
                                    titlePadding: 5,
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black87),
                                    activeTextStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                    borderColor: Colors.transparent,
                                    backgroundColor: Colors.transparent,
                                    activeBackgroundColor:
                                        Colors.redAccent[100],
                                    firstTime: TimeOfDay(hour: 10, minute: 30),
                                    lastTime: TimeOfDay(hour: 16, minute: 00),
                                    timeStep: 30,
                                    timeBlock: 30,
                                    initialRange: _timeRange,
                                    onRangeCompleted: (range) {
                                      setState(() {
                                        _timeRange = range;
                                      });
                                    }),
                              ),
                            ],
                          ),
                        ])) //SizedBox(height: 5, ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                String formattedDate =
                    DateFormat.yMMMd('en_US').format(_selectedDate);
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  content: Container(
                    height: 150,
                    child: Column(
                      children: [
                        Text(
                          "Booked For",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.w600),
                        ),
                        Divider(
                          color: Colors.grey,
                          height: 12.0,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "$formattedDate",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Time: ${_timeRange!.start.format(context)} - ${_timeRange!.end.format(context)}",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                );
              });
        },
        backgroundColor: Colors.green,
        label: const Text("Book Appointment"),
        icon: const Icon(FontAwesomeIcons.bookBookmark),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
