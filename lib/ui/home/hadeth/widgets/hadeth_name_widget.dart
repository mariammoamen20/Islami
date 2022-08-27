import 'package:flutter/material.dart';
import 'package:islami/ui/home/hadeth/pages/hadeth_details.dart';

class HadethNameWidget extends StatelessWidget {
  int index ;
  String title;
  HadethNameWidget(this.index,this.title);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetails.routeName,
            arguments: HadethDetailsArgs(index,title));
      },
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
