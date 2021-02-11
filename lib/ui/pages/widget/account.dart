part of 'widget.dart';

class Account extends StatelessWidget {
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
              SizedBox(height: 24, child: Text("Edit Profile")),
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
              SizedBox(height: 24, child: Text("Home Address")),
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
              SizedBox(height: 24, child: Text("Security")),
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
              SizedBox(height: 24, child: Text("Payment")),
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
