import 'package:flutter/material.dart';
import 'package:hw_8/pages/home.dart';

class FPage extends StatefulWidget {
  const FPage({super.key});

  @override
  State<FPage> createState() => _FPageState();
}

class _FPageState extends State<FPage> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget body;
    if (currentIndex == 0) {
      body = body = const FirstPage();
      print("FirstPage");
    } else {
      body = const SecondPage();
      print("FirstPage");
    }
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFFb35647),
          child: Icon(Icons.add, size: 35, color: Colors.white),
          onPressed: () {}),
      backgroundColor: const Color(0xFFececec),
      appBar: AppBar(
        backgroundColor: Color(0xFFb35647),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            SizedBox(
              width: 60,
            ),
            Text("Today",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      body: SafeArea(
          child: Container(
        decoration: const BoxDecoration(
            // color: Color.fromARGB(255, 16, 52, 199),
            ),
        margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
        child: body,
      )),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (newIndex) {
            currentIndex = newIndex;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.storefront),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.storefront),
              label: 'home',
            ),
          ]),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Jan 8 Today . Wednesday",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            height: 1,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: const [
              Icon(Icons.circle_outlined, size: 35, color: Colors.orange),
              SizedBox(
                width: 20,
              ),
              Text("Shop for groceries",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.normal)),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            height: 1,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: const [
              Icon(Icons.circle_outlined, size: 35, color: Colors.blue),
              SizedBox(
                width: 20,
              ),
              Text("Pack bag",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.normal)),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            height: 1,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: const [
              Icon(Icons.circle_outlined, size: 35, color: Colors.grey),
              SizedBox(
                width: 20,
              ),
              Text("Create project tag !! project",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.normal)),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            height: 1,
          ),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              padding: const EdgeInsets.all(10),
              child: const ListTile(
                leading:
                    Icon(Icons.star_outlined, size: 35, color: Colors.orange),
                title: Text("Todoist Pro",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.normal)),
                subtitle: Text("Until Jul 8 2022",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.normal)),
                trailing: Icon(Icons.arrow_forward_ios_outlined,
                    size: 20, color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              padding: const EdgeInsets.all(10),
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.account_circle_outlined,
                        size: 35, color: Colors.red),
                    title: Text("Account",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.normal)),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,
                        size: 20, color: Colors.grey),
                  ),
                  Divider(
                    indent: 65,
                    height: 2,
                  ),
                  ListTile(
                    leading: Icon(Icons.settings, size: 35, color: Colors.red),
                    title: Text("General",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.normal)),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,
                        size: 20, color: Colors.grey),
                  ),
                  Divider(
                    indent: 65,
                    height: 2,
                  ),
                  ListTile(
                    leading: Icon(Icons.palette_outlined,
                        size: 35, color: Colors.red),
                    title: Text("Theme",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.normal)),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,
                        size: 20, color: Colors.grey),
                  ),
                  Divider(
                    indent: 65,
                    height: 2,
                  ),
                  ListTile(
                    leading:
                        Icon(Icons.star_outlined, size: 35, color: Colors.red),
                    title: Text("App Icon",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.normal)),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,
                        size: 20, color: Colors.grey),
                  ),
                  Divider(
                    indent: 65,
                    height: 2,
                  ),
                  ListTile(
                    leading:
                        Icon(Icons.star_outlined, size: 35, color: Colors.red),
                    title: Text("Productivity",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.normal)),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,
                        size: 20, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              padding: const EdgeInsets.all(10),
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.alarm, size: 35, color: Colors.red),
                    title: Text("Reminders",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.normal)),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,
                        size: 20, color: Colors.grey),
                  ),
                  Divider(
                    indent: 65,
                    height: 2,
                  ),
                  ListTile(
                    leading:
                        Icon(Icons.notifications, size: 35, color: Colors.red),
                    title: Text("Notifications",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.normal)),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,
                        size: 20, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      child: Image.network(
                        'https://upload.wikimedia.org/wikipedia/commons/7/7a/Siri_Logo_in_2022.png?20220513194230',
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text("Siri",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.normal)),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,
                        size: 20, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              padding: const EdgeInsets.all(10),
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.question_mark_rounded,
                        size: 35, color: Colors.red),
                    title: Text("Help & Feedback",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.normal)),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,
                        size: 20, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
