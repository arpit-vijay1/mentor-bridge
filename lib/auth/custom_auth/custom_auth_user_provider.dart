import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class MentorBridgeAuthUser {
  MentorBridgeAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<MentorBridgeAuthUser> mentorBridgeAuthUserSubject =
    BehaviorSubject.seeded(MentorBridgeAuthUser(loggedIn: false));
Stream<MentorBridgeAuthUser> mentorBridgeAuthUserStream() =>
    mentorBridgeAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
