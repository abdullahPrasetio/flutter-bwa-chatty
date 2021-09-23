part of 'pages.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: Icon(
          Icons.add,
          size: 28,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        bottom: false,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/profile_pic.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Sabrina Carpenter",
                  style: TextStyle(color: whiteColor, fontSize: 20),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "Travel Freelancer",
                  style: TextStyle(color: lightBlueColor, fontSize: 16),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Friends',
                        style: titleTextStyle,
                      ),
                      ChatTile(
                        name: "Waluyo",
                        text: "Halo Bro",
                        imageUrl: "assets/images/friend1.png",
                        time: "Now",
                        unread: true,
                      ),
                      ChatTile(
                        name: "Hanania",
                        text: "Assalamualaikum",
                        imageUrl: "assets/images/friend2.png",
                        time: "2:30",
                        unread: false,
                      ),
                      ChatTile(
                        name: "Nur Azizah",
                        text:
                            "Mudah mudahan lancar ya segala project nya terimakasih atas segala bantuannya",
                        imageUrl: "assets/images/friend2.png",
                        time: "2:40",
                        unread: true,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Groups',
                        style: titleTextStyle,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group1.png',
                        name: "Jakarta Fair",
                        text: "Info lowongan pekerjaan di PT",
                        time: "23.02",
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group2.png',
                        name: "Pamungkas Project",
                        text: "Bagaimana untuk project ini",
                        time: "4.50",
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group3.png',
                        name: "Skripsi Bu Intan",
                        text: "Untuk revisi tolong segera di ",
                        time: "20.02",
                        unread: true,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
