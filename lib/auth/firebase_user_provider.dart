import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class Team9FirebaseUser {
  Team9FirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

Team9FirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<Team9FirebaseUser> team9FirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<Team9FirebaseUser>(
      (user) {
        currentUser = Team9FirebaseUser(user);
        return currentUser!;
      },
    );
