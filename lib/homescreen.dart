import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // var myList = [
  //   'usama',
  //   'just now',
  // ];
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
                  child:Icon(Icons.camera_alt),
                ),
                Tab(
                    child:Text('chats'),
                ),
                Tab(
                    child:Text('Status'),
                ),
                Tab(
                    child:Text('Calls'),
                ),
              ],
            ),
              actions: [
              const Icon(Icons.search),
          const SizedBox(width: 10,),
          PopupMenuButton(
            icon: const Icon(Icons.more_vert_outlined),
              itemBuilder: (context)=>[
                const PopupMenuItem(
                  value: 1,
                    child: Text('New Group'),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text('New broadcast'),
                ),
                const PopupMenuItem(
                  value: 4,
                  child: Text('Linked devices'),
                ),
                const PopupMenuItem(
                  value: 3,
                  child: Text('Settings'),
                ),
              ]
          ),
          const SizedBox(width: 10,)
          ],
          ),
          body: TabBarView(
            children: [
              const Text('camera'),
              ListView.builder(
                itemCount: 6,
                  itemBuilder: (context, index){
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://th.bing.com/th/id/R.9ff83ea51a4759276e4aeabd1e4044a3?rik=rDgYfpViWSO4mg&riu=http%3a%2f%2fmedia-cache-ec0.pinimg.com%2f736x%2f65%2f0e%2fc3%2f650ec316d413aefc105235161cf74c44.jpg&ehk=9DwCSlh9C%2bZM3YmjUiO02miQ%2bTIYEU7vjbMbAruAgco%3d&risl=&pid=ImgRaw&r=0'),
                      ),
                      title: Text('Syeda Mahaa'),
                      subtitle: Text('Awais bat Sunain...'),
                      trailing: Text('2:25 AM'),
                    );
                  }
              ),
              ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index){
                    return  ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.green,
                              width: 3,
                            )
                          ),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage('https://th.bing.com/th/id/R.9ff83ea51a4759276e4aeabd1e4044a3?rik=rDgYfpViWSO4mg&riu=http%3a%2f%2fmedia-cache-ec0.pinimg.com%2f736x%2f65%2f0e%2fc3%2f650ec316d413aefc105235161cf74c44.jpg&ehk=9DwCSlh9C%2bZM3YmjUiO02miQ%2bTIYEU7vjbMbAruAgco%3d&risl=&pid=ImgRaw&r=0'),
                          ),
                        ),
                        title: const Text('Syeda Mahaa'),
                        subtitle: const Text('Today, 12:16 AM'),
                    );
                  }
              ),
              ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index){
                    return  ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage('https://th.bing.com/th/id/R.9ff83ea51a4759276e4aeabd1e4044a3?rik=rDgYfpViWSO4mg&riu=http%3a%2f%2fmedia-cache-ec0.pinimg.com%2f736x%2f65%2f0e%2fc3%2f650ec316d413aefc105235161cf74c44.jpg&ehk=9DwCSlh9C%2bZM3YmjUiO02miQ%2bTIYEU7vjbMbAruAgco%3d&risl=&pid=ImgRaw&r=0'),
                      ),
                      title: const Text('Syeda Mahaa'),
                      subtitle: const Text('Just now'),
                      trailing: Icon(index /2==0? Icons.call: Icons.video_call)
                    );
                  }
              ),
            ],
          ),

        )
    );
  }
}
