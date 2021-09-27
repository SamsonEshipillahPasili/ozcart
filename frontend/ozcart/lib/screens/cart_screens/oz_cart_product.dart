import 'package:flutter/material.dart';

class OzCartProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset('assets/cup_3.png'),
        title: Text('DKANR JUG'),
        subtitle: Text('KSH. 15,995'),
        trailing: IconButton(
          icon: Icon(
            Icons.delete_outlined,
            color: Theme.of(context).accentColor,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
