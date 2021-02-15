part of 'pages.dart';

class MainPage extends StatefulWidget {

    final InitialPage;
    MainPage({this.InitialPage=0});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedPage = 0;
  PageController pageController = PageController(initialPage: 0);

   @override
   @override
   void initState() { 
     super.initState();
     selectedPage = widget.InitialPage;
     pageController = PageController(initialPage:widget.InitialPage);
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(
            child: Container(
              color: 'FAFAFC'.toColor(),
            ),
          ),
          SafeArea(
              child: PageView(
                  controller: pageController,
                  onPageChanged: (index) {
                    setState(() {
                      selectedPage = index;
                    });
                  },
                  children: [
                Center(child: FoodPage()),
                    Center(child: OrderHistory()),
//                Center(
//                    child: IlustrationPage(
//                  title: "tes",
//                  subtitle: "subtitle",
//                  picturePath: "assets/love_burger.png",
//                  button1: "Find Fouds 123",
//                  buttonTap1: () {},
//                  button2: "",
//                  buttonTap2: () {},
//                )),
                //Center(child: SuccessPage()),
                    Center(child: Profile()),
              ])),
          Align(
            alignment: Alignment.bottomCenter,
            child: NavigationBar(
              selectedIndex: selectedPage,
              onTap: (index) {
                setState(() {
                  selectedPage = index;
                });
                pageController.jumpToPage(selectedPage);
              },
            ),
          )
        ],
      ),
    );
  }
}
