part of 'pages.dart';

class SuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IlustrationPage(
        title: "You've made Order",
        subtitle:
            "Just Stay with at home while we are \n preparating youer best food",
        picturePath: 'assets/bike.png',
        button1: "Order Other Food",
        buttonTap1: () {},
//        button2: "View My Order",
//        buttonTap2: () {},
      ),
    );
  }
}
