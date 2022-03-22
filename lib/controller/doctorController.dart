import 'package:flutter/cupertino.dart';
import 'package:santosh/model/doctor_model.dart';

class DoctorContoller extends ChangeNotifier {
  List<Doctor> doctorList = [
    Doctor(
        id: 1,
        name: "Dr.Adamson",
        designation: "Therapist",
        rating: 4.9,
        startTime: "8 AM",
        endTime: "2 PM",
        image: "assets/doctorprofile.png"),
    Doctor(
        id: 2,
        name: "Dr.Martinas",
        designation: "Therapist",
        rating: 4.7,
        startTime: "9 AM",
        endTime: "3 PM",
        image: "assets/doctorprofile.png"),
    Doctor(
        id: 3,
        name: "Dr.Jonsons",
        designation: "Therapist",
        rating: 4.8,
        startTime: "10 AM",
        endTime: "4 PM",
        image: "assets/doctorprofile.png")
  ];
}
