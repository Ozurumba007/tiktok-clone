import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import 'controllers/auth_controller.dart';
import 'views/screens/add_video_screen.dart';

const pages = [
  Text('Home Screen'),
  Text('Search Screen'),
  AddVideoScreen(),
  Text('Messages Screen'),
  Text('Profile Screen'),
];

// colors

const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;

// Firebase

var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

// Controller

var authController = AuthController.instance;
