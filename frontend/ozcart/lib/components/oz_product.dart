import 'package:flutter/material.dart';

class OzProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 15),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 170,
          width: 152,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.black.withOpacity(0.3)),
            color: Colors.white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 22),
              Align(
                child: Image.asset('assets/cup_1.png'),
                alignment: Alignment.center,
              ),
              SizedBox(height: 4),
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  'Sample Cup',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              SizedBox(height: 12),
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  'Ksh. 300',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .merge(TextStyle(fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
