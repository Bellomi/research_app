import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  //sign out
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: signUserOut, icon: const Padding(
            padding: EdgeInsets.all(20.0),
            child: Icon(Icons.logout),
          ))
        ],
      ),
      body: Center(
        child: Text("Perfil de  ${user.email!}",
        style: const TextStyle(
          fontSize: 20,
        ),
        ),
      ),
    );
  }
}
