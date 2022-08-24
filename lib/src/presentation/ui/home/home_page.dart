import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../riverpod/action_provider.dart';
import 'widgets/menu_list.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stocksActions = ref.watch(actionsNotifierProvider);
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.grey.shade800,
            pinned: true,
            snap: false,
            floating: false,
            stretch: true,
            expandedHeight: 400,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "images/FundoHomePage.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Conta",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                            color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "R\$ 0,00",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                                color: Colors.white),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.grey.shade500,
                          ),
                        ],
                      ),
                      const Text(
                        "Rendimento: R\$ 0,00",
                        style:
                            TextStyle(color: Color.fromARGB(255, 55, 209, 132)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 150,
                  width: double.maxFinite,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: ((context, index) {
                      return const MenuList();
                    }),
                  ),
                ),
                const Divider(
                  color: Colors.black,
                ),
                Visibility(
                  replacement: const SizedBox(),
                  visible: stocksActions.isNotEmpty,
                  child: SizedBox(
                    height: 900,
                    child: ListView.builder(
                      itemCount: stocksActions.length,
                      itemBuilder: (context, index) {
                        return Text(
                          stocksActions[index].id.toString(),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
