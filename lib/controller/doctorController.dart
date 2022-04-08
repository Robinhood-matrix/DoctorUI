import 'package:flutter/cupertino.dart';
import 'package:santosh/model/doctor_model.dart';

class DoctorContoller extends ChangeNotifier {
  List<Doctor> doctorList = [
    Doctor(
        id: 1,
        name: "Dr.Brooklyn Simmons",
        designation: "Gastreoenterologists",
        dateTime: "20 Nov 2022",
        startTime: "8 AM",
        endTime: "2 PM",
        image: "assets/profile.png"),
    Doctor(
        id: 2,
        name: "Dr.Martinas Williams",
        designation: "Therapist",
        dateTime: "21 NOV 2022",
        startTime: "9 AM",
        endTime: "3 PM",
        image: "assets/doctorprofile.png"),
    Doctor(
        id: 3,
        name: "Dr.Jonsons Mans",
        designation: "Therapist",
        dateTime: "22 NOV 2022",
        startTime: "10 AM",
        endTime: "4 PM",
        image: "assets/doctorprofile.png")
  ];
}
