import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text("Chats"),
              ),
              Tab(
                child: Text("Status"),
              ),
              Tab(
                child: Text("Call"),
              ),
            ],
          ),
          actions: [
            const Icon(Icons.search),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                itemBuilder: (context) => [
                      const PopupMenuItem(
                        value: '1',
                        child: Text("New Group"),
                      ),
                      const PopupMenuItem(
                        value: '2',
                        child: Text("Settings"),
                      ),
                      const PopupMenuItem(
                        value: '3',
                        child: Text("Logout"),
                      ),
                    ]),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
        body: TabBarView(
          children: [
            const Text("Camera"),
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const ListTile(
                    title: Text("Sam"),
                    subtitle: Text("Hey There"),
                    trailing: Text("0:36 PM"),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    ),
                  );
                }),
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("New Updates"),
                          ListTile(
                            title: Text("Sam"),
                            subtitle: Text("42 min ago"),
                            //trailing: Text("42 min ago"),
                            leading: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.green, width: 3)),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return ListTile(
                      title: const Text("Sam"),
                      subtitle: const Text("42 min ago"),
                      //trailing: Text("42 min ago"),
                      leading: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.green, width: 3)),
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                        ),
                      ),
                    );
                  }
                }),
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: const Text("John"),
                    subtitle: Text(index / 2 == 0
                        ? "You missed audio call"
                        : "You missed video call"),
                    trailing:
                        Icon(index / 2 == 0 ? Icons.phone : Icons.video_call),
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
