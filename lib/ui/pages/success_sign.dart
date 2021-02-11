part of 'pages.dart';

class SuccessSign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IlustrationPage(
        title: "Yeay Complate",
        subtitle:
        "Now You are able to order \n  some foods as a self rewerd",
        picturePath: 'assets/food_wishes.png',
        button1: "Find Food",
        buttonTap1: () {},

      ),
    );
  }
}
