import 'package:flutter/material.dart';
import 'package:pago_mobile/model/menu.dart';
import 'package:pago_mobile/utils/utils.dart';

const icons = {
  "love": Icon(Icons.favorite_rounded, color: Colors.red),
  "career": Icon(Icons.work_rounded, color: Colors.blue),
  "family": Icon(Icons.family_restroom_rounded, color: Colors.teal),
  "health": Icon(Icons.sports, color: Colors.green),
  "children": Icon(Icons.child_care, color: Colors.cyan),
  "other": Icon(Icons.more_horiz_rounded, color: Colors.black),
};

class HomeMenu extends StatelessWidget {
  final List<Menu> menu;
  final Function onPressed;

  const HomeMenu({Key key, this.menu, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: PagoDimen.x2),
        Text(
          "praying_for".localized,
          style: PagoTextStyle.h6,
        ),
        GridView.builder(
          padding: EdgeInsets.zero,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.5,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => TextButton(
            onPressed: () => onPressed(menu[index]),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                menu[index].iconUrl == null
                    ? icons[menu[index].id]
                    : Image.network(
                        menu[index].iconUrl,
                        fit: BoxFit.contain,
                      ),
                Text(
                  menu[index].name,
                  style: TextStyle(
                    color: PagoColor.text,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          itemCount: menu.length,
        ),
      ],
    );
  }
}
