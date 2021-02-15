part of 'pages.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double listItemwidth =
        MediaQuery.of(context).size.width - 2 * defaultMargin;

    return ListView(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          height: 100,
          width: double.infinity,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Food Market",
                    style: blackFontStyle1,
                  ),
                  Text(
                    "Lets go same foods",
                    style: greyFontStyle.copyWith(fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      image: NetworkImage(
                        "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50.jpg",
                      ),
                      fit: BoxFit.cover),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 258,
          width: double.infinity,
          child: BlocBuilder<FoodCubit, FoodState>(
            builder: (_, state) => (state is FoodLoaded)
                ? ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: state.food
                            .map((e) => Padding(
                                  padding: EdgeInsets.only(
                                      left: (e == mockFoods.first)
                                          ? defaultMargin
                                          : 0,
                                      right: defaultMargin),
                                  child: GestureDetector(
                                    onTap: () {
                                      Get.to(
                                        FoodDetailPage(
                                          transaction: Transaction(
                                              food: e,
                                              user: (context
                                                      .bloc<UserCubit>()
                                                      .state as UserLoaded)
                                                  .user),
                                          onBackButtomPressed: () {
                                            Get.back();
                                          },
                                        ),
                                      );
                                    },
                                    child: FoodCard(
                                      food: e,
                                    ),
                                  ),
                                ))
                            .toList(),
                      )
                    ],
                  )
                : Center(child: loadingIndicator),
          ),
//            child: FoodCard(
//              food: mockfood,
//            ),
        ),
        Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              CustomTabar(
                titles: ['New Taste', 'Populer', 'Recommended'],
                selectedIndex: selectedIndex,
                onTap: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
              SizedBox(
                height: 16,
              ),
              BlocBuilder<FoodCubit,FoodState >(builder: (_, state) {
                if (state is FoodLoaded) {
                  List<Food> foods = state.food.where((element) =>
                      element.types.contains((selectedIndex == 0)
                          ? FoodType.new_food
                          : (selectedIndex == 1)
                          ? FoodType.popular
                          : FoodType.recommended)).toList();

                  return Column(
                    children: foods
                        .map((e) => Padding(
                              padding: EdgeInsets.fromLTRB(
                                  defaultMargin, 0, defaultMargin, 16),
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(
                                    FoodDetailPage(
                                      transaction: Transaction(
                                          food: e,
                                          user: (context.bloc<UserCubit>().state
                                                  as UserLoaded)
                                              .user),
                                      onBackButtomPressed: () {
                                        Get.back();
                                      },
                                    ),
                                  );
                                },
                                child: FoodListItem(
                                  food: e,
                                  itemWidth: listItemwidth,
                                ),
                              ),
                            ))
                        .toList(),
                  );
                }else{
                  return Center(child: loadingIndicator);
                }
              }),
            ],
          ),
        ),
        SizedBox(
          height: 80,
        ),
      ],
    );
  }
}
