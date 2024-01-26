import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:karmait/core/providers/firebase_providers.dart';

// Provider for auth repository
final authRepositoryProvider = Provider(
  (ref) => AuthRepository(
    firestore: ref.read(firestoreProvider),
    auth: ref.read(authProvider),
    googleSignIn: ref.read(googleSignInProvider),
  ),
);

class AuthRepository {
  // Creating Private Variables
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth; // store all of this in console
  final GoogleSignIn _googleSignIn; // provides methods to view emails of google account

  AuthRepository({
    required FirebaseFirestore firestore,
    required FirebaseAuth auth,
    required GoogleSignIn googleSignIn,
  })  : _auth = auth,
        _firestore = firestore,
        _googleSignIn = googleSignIn;

  //print all the three variables

  void signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final googleAuth = await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      UserCredential userCredential = await _auth.signInWithCredential(credential);

      debugPrint("userCredential $userCredential");
      debugPrint("userCredential ${userCredential.user}");
      debugPrint("email ${userCredential.user!.email}");

      if (userCredential.user != null) {
        debugPrint("email ${userCredential.user!.email}");
      } else {
        debugPrint("User is null");
      }
    } catch (e) {
      // Throwing errors to the controller
      debugPrint("catch error2 $e");
    }
  }
}
