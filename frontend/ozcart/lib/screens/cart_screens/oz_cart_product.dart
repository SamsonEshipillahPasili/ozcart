import 'package:flutter/material.dart';

class OzCartProduct extends StatelessWidget {
  final bool deletable;

  const OzCartProduct({Key? key, this.deletable = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset('assets/cup_3.png'),
        title: Text('DKANR JUG'),
        subtitle: Text('KSH. 15,995'),
        trailing: deletable
            ? IconButton(
                icon: Icon(
                  Icons.delete_outlined,
                  color: Theme.of(context).accentColor,
                ),
                onPressed: () {},
              )
            : null,
      ),
    );
  }
}
