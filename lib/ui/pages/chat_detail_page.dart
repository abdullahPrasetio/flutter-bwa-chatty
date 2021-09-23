part of 'pages.dart';

class ChatDetailPage extends StatefulWidget {
  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget headers() {
      return Container(
        height: 115,
        width: double.infinity,
        decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(35))),
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Row(
            children: [
              Image.asset(
                'assets/images/group2.png',
                width: 55,
                height: 55,
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pamungkas Project",
                    style: titleTextStyle,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "14.000 members",
                    style: subTitleTextStyle,
                  ),
                ],
              ),
              Spacer(),
              Image.asset(
                'assets/images/call_btn.png',
                width: 50,
                height: 50,
              )
            ],
          ),
        ),
      );
    }

    Widget receiverBubble() {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset('assets/images/friend1.png', width: 40, height: 40),
            SizedBox(
              width: 12,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 11, 20, 11),
              decoration: BoxDecoration(
                color: Color(0xffEBEFF3),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("How are ya guys?",
                      style: titleTextStyle.copyWith(color: blackChatColor)),
                  SizedBox(
                    height: 5,
                  ),
                  Text("2:30",
                      style: subTitleTextStyle.copyWith(color: blackChatColor))
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget senderBubble() {
      return Container(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 11, 20, 11),
            decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Thinking about how to deal with \n this client from hell...",
                ),
                Text("22.08"),
              ],
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Image.asset(
            "assets/images/friend4.png",
            height: 40,
            width: 40,
          )
        ],
      ));
    }

    Widget body() {
      return Expanded(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [receiverBubble(), senderBubble()],
          ),
        ),
      );
    }

    Widget chatInput() {
      return Container(
        width: MediaQuery.of(context).size.width - (2 * 30),
        height: 54,
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(75),
          color: whiteColor,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width - (2 * 30) - 90,
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                    hintStyle: subTitleTextStyle,
                    hintText: "Type Message",
                    border: InputBorder.none),
              ),
            ),
            Spacer(),
            Image.asset(
              'assets/images/btn_send.png',
              width: 35,
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffF8FAFC),
      floatingActionButton: chatInput(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Column(
          children: [headers(), body()],
        ),
      ),
    );
  }
}
