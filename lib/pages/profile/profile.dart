import 'dart:io';

import 'package:epitech_flutter/utils/user_preferences.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

import '../../components/appbar.dart';
import '../../models/user.dart';
import '../../widget/numbers_widget.dart';
import '../../widget/profile_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  static String routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    var user = UserPreferences.myUser;

    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async {},
          ),
          const SizedBox(height: 24),
          buildName(user),
          const SizedBox(height: 24),
          NumbersWidget(),
          const SizedBox(height: 48),
          buildAbout(user),
          const SizedBox(height: 24),
          buildEdit(user, context),
        ],
      ),
    );
  }

  Widget buildAbout(User user) => Container(
      padding: EdgeInsets.symmetric(horizontal: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'About',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)
          ),
          const SizedBox(height: 16),
          Text(
            user.about,
            style: const TextStyle(fontSize: 16, height: 1.4),
          )
        ],
      ),
  );

  Widget buildEdit(User user, BuildContext context) => RaisedButton(
    child: const Text("Edit preferences"),
    onPressed: () {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            TextEditingController nameController = TextEditingController();
            TextEditingController emailController = TextEditingController();
            TextEditingController aboutController = TextEditingController();
            return AlertDialog(
              scrollable: true,
              title: const Text('Edit preferences'),
              content: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        controller: nameController,
                        decoration: const InputDecoration(
                          labelText: 'Name',
                          icon: Icon(Icons.account_box),
                        ),
                      ),
                      TextFormField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          icon: Icon(Icons.email),
                        ),
                      ),
                      TextFormField(
                        controller: aboutController,
                        decoration: const InputDecoration(
                          labelText: 'About',
                          icon: Icon(Icons.message),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              actions: [
                buildButton(user, nameController, emailController, aboutController, context)
              ],
            );
          });
    },
  );

  RaisedButton buildButton(User user, TextEditingController nameController, TextEditingController emailController,TextEditingController aboutController, BuildContext context) => RaisedButton(
    child: const Text("Submit"),
    onPressed: () {
      writePreferences(nameController.text, emailController.text, aboutController.text);
      readPreferences().then((String result){
      var preferences = result.split(":");
      user.name = preferences[1];
      user.email = preferences[3];
      user.about = preferences[5];
      Navigator.pop(context);
      Navigator.pushNamed(context, "/profile");
    });
  });

  Widget buildName(User user) => Column(
    children: [
      Text(
        user.name,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
      ),
      const SizedBox(height: 4),
      Text(
        user.email,
        style: TextStyle(color: Colors.grey),
      )
    ],
  );

  

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/info.txt');
  }

  Future<File> writePreferences(String name, String email, String about) async {
    final file = await _localFile;

    // Write the file
    return file.writeAsString("name:" + name + ":" + "email:" + email + ":" + "about:" + about + ":");
  }

  Future<String> readPreferences() async {
    try {
      final file = await _localFile;

      // Read the file
      final contents = await file.readAsString();

      return (contents);
    } catch (e) {
      // If encountering an error, return 0
      return ("error");
    }
  }

}


