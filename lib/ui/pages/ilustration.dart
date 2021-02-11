part of 'pages.dart';

class IlustrationPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String picturePath;
  final String button1;
  final String button2;
  final Function buttonTap1;
  final Function buttonTap2;

  IlustrationPage({
    @required this.title,
    @required this.subtitle,
    @required this.picturePath,
    this.button1,
    this.button2,
    this.buttonTap1,
    this.buttonTap2,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 170,
            width: 180,
            margin: EdgeInsets.only(bottom: 50),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(picturePath), fit: BoxFit.fill),
            ),
          ),
          Text(
            title,
            style: blackFontStyle3.copyWith(fontSize: 12),
          ),
          Text(
            subtitle,
            style: greyFontStyle.copyWith(fontWeight: FontWeight.w300),
          ),
          Container(
            height: 45,
            width: 200,
            margin: EdgeInsets.only(top: 30, bottom: 12),
            child: RaisedButton(
              onPressed: buttonTap1,
              color: mainColor,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                button1,
                style: blackFontStyle3.copyWith(fontWeight: FontWeight.w500),
              ),
            ),
          ),
          (buttonTap2 == null)
              ? SizedBox()
              : SizedBox(
            width: 200,
            height: 45,
            child: RaisedButton(
              onPressed: buttonTap2,
              color: '8D92A3'.toColor(),
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: Text(
                button2 ?? 'title',
                style:
                blackFontStyle3.copyWith(fontWeight: FontWeight.w500, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
