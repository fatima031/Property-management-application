import 'package:flutter/material.dart';
import 'package:propertymanagmentapp/widgets/progress.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _subtitleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  final List _progress = [];

  addProgress() {
    final String title = _titleController.text;
    final String subtitle = _subtitleController.text;
    final String description = _descriptionController.text;

    if (title.isNotEmpty && subtitle.isNotEmpty && description.isNotEmpty) {
      setState(() {
        _progress.add(ProgressModel(
            title: title, subtitle: subtitle, description: description));
        _titleController.clear();
        _subtitleController.clear();
        _descriptionController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.calculate_rounded,
              color: Colors.black,
            )),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_active_rounded,
                color: Colors.black,
              ))
        ],
        title: const Text(
          'Friday, 26',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
          child: Container(
              alignment: Alignment.topLeft,
              child: const Text(
                "Let’s make a ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
          child: Container(
              alignment: Alignment.topLeft,
              child: const Text(
                'habits together  🙌 ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              )),
        ),
        GestureDetector(
          onTap: () {
            setState(() {});
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                alignment: Alignment.topLeft,
                height: 180,
                width: 700,
                decoration: BoxDecoration(
                    color: Colors.blue.shade900,
                    borderRadius: BorderRadius.circular(40)),
                child: Stack(
                  children: [
                    const Positioned(
                        top: 40,
                        left: 20,
                        child: Text("Application Design",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white))),
                    const Positioned(
                        top: 70,
                        left: 30,
                        child: Text("Application Design Kit",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 10,
                                color: Colors.grey))),
                    Positioned(
                        left: 20,
                        top: 90,
                        child: CircleAvatar(
                            child:
                                Image.asset("assets/images/Image 1 (1).png"))),
                    Positioned(
                        left: 60,
                        top: 90,
                        child: CircleAvatar(
                            child:
                                Image.asset("assets/images/Image 1 (1).png"))),
                    Positioned(
                        left: 100,
                        top: 90,
                        child: CircleAvatar(
                            child:
                                Image.asset("assets/images/Image 1 (1).png"))),
                    const Positioned(
                        left: 160,
                        top: 90,
                        child: Column(
                          children: [
                            Text(
                              "Progress",
                              style: TextStyle(color: Colors.white),
                            ),
                            //  LinearProgressIndicator(minHeight: 40,)
                          ],
                        )),
                    const Positioned(
                        left: 250,
                        top: 90,
                        child: Column(
                          children: [
                            Text(
                              "50/80",
                              style: TextStyle(color: Colors.white),
                            ),
                            //  LinearProgressIndicator(minHeight: 40,)
                          ],
                        )),
                  ],
                )),
          ),
        ),
        Expanded(
            child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Text(
                      "In Progress",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      width: 190,
                    ),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.arrow_forward))
                  ],
                ),
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: _progress.length,
              itemBuilder: (context, index) {
                final progress = _progress[index];
                return ListTile(
                  title: Text(progress.title),
                  subtitle: Text(progress.subtitle),
                  leading: const Icon(Icons.blur_circular_outlined),
                );
              },
            ))
          ],
        )),
      ]),
    );
  }
}

myTile(leading, title) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 8.0),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.blue, width: 2),
      borderRadius: BorderRadius.circular(8),
    ),
    child: ListTile(
      leading: leading,
      title: title,
      onTap: () {
        
      },
    ),
  );
}
