part of 'widgets.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;

  ChatTile({this.imageUrl, this.name, this.text, this.time, this.unread});

  @override
  Widget build(BuildContext context) {
    double textWidth =
        MediaQuery.of(context).size.width - 165; //30 * 2 + 55 + 12 + 25;
    return GestureDetector(
      onTap: () {
        Get.to(ChatDetailPage());
      },
      child: Padding(
        padding: EdgeInsets.only(top: 16),
        child: Row(
          children: [
            Image.asset(
              imageUrl,
              height: 55,
              width: 55,
            ),
            SizedBox(
              width: 12,
            ),
            SizedBox(
              width: textWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: titleTextStyle,
                  ),
                  Text(
                    text,
                    style: unread
                        ? subTitleTextStyle.copyWith(color: blackColor)
                        : subTitleTextStyle,
                    maxLines: 1,
                  )
                ],
              ),
            ),
            Spacer(),
            Text(
              time,
              style: subTitleTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
