part of 'widget.dart';

class AccountFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      width: double.infinity,
      margin: EdgeInsets.only(
        left: 20,
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              SizedBox(height: 24, child: Text("Rate App")),
              SizedBox(
                height: 24,
                width: 24,
                child: Image.asset(
                  'assets/right_arrow.png',
                  fit: BoxFit.contain,
                ),
              )
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              SizedBox(height: 24, child: Text("Help Center")),
              SizedBox(
                height: 24,
                width: 24,
                child: Image.asset(
                  'assets/right_arrow.png',
                  fit: BoxFit.contain,
                ),
              )
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              SizedBox(height: 24, child: Text("Privacy & Policy")),
              SizedBox(
                height: 24,
                width: 24,
                child: Image.asset(
                  'assets/right_arrow.png',
                  fit: BoxFit.contain,
                ),
              )
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              SizedBox(height: 24, child: Text("Term & Condition")),
              SizedBox(
                height: 24,
                width: 24,
                child: Image.asset(
                  'assets/right_arrow.png',
                  fit: BoxFit.contain,
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
