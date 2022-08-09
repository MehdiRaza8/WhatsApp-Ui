import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
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
            title: const Text('WhatsApp'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text('Chats'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Call'),
                )
              ],
            ),
            actions: [
              const Icon(Icons.search),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                icon: const Icon(Icons.more_horiz_outlined),
                itemBuilder: ((context) => [
                      const PopupMenuItem(value: '1', child: Text('New Group')),
                      const PopupMenuItem(value: '2', child: Text('Setting')),
                      const PopupMenuItem(value: '3', child: Text('logout')),
                    ]),
              )
            ],
          ),
          body: TabBarView(children: [
            const Text('Camera'),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/3911368/pexels-photo-3911368.jpeg?cs=srgb&dl=pexels-ultra-3911368.jpg&fm=jpg'),
                    ),
                    title: Text('Mehdi Raza'),
                    subtitle: Text('How are you'),
                    trailing: Icon(Icons.done_all),
                  );
                }),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 3, color: Colors.green),
                      ),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/3911368/pexels-photo-3911368.jpeg?cs=srgb&dl=pexels-ultra-3911368.jpg&fm=jpg'),
                      ),
                    ),
                    title: const Text('Mehdi Raza'),
                    subtitle: const Text('2 min ago'),
                  );
                }),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/3911368/pexels-photo-3911368.jpeg?cs=srgb&dl=pexels-ultra-3911368.jpg&fm=jpg'),
                    ),
                    title: Text('Mehdi Raza'),
                    subtitle: Text(
                      'you missed call',
                      style: TextStyle(color: Colors.red),
                    ),
                    trailing: Icon(Icons.phone),
                  );
                }),
          ]),
        ));
  }
}
