import 'package:crdb_simbanking/widgets/neumorphic.dart';
import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  final int itemslength;
  final List? itemslistIcon;
  final List? itemslistName;
  const ServiceCard({
    Key? key,
    required this.itemslength,
    this.itemslistIcon,
    this.itemslistName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemslength,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 0,
            crossAxisSpacing: 0,
            mainAxisExtent: 120,
            crossAxisCount: 4),
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemBuilder: ((context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 75,
                width: 75,
                child: NeumorphicWidget(
                  content: itemslistIcon![index],
                ),
              ),
              const SizedBox(height: 8),
              Text(itemslistName![index],
                  textAlign: TextAlign.center, softWrap: true)
            ],
          );
        }));
  }
}
