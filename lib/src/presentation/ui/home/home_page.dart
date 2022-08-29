import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../riverpod/action_provider.dart';
import 'widgets/menu_list.dart';

final showMoneyProvider = StateProvider((ref) => true,);

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stocksActions = ref.watch(actionsNotifierProvider);
    final showMoney = ref.watch(showMoneyProvider.state).state;
    
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
              background: Stack(
                children: [
                  SizedBox(
                    width: 1000,
                    height: 500,
                    child: Image.asset(
                      "images/FundoHomePage.png",
                      fit: BoxFit.fill,
                      color: Colors.white.withOpacity(0.4),
                      colorBlendMode: BlendMode.modulate,
                    ),
                  ),
                  Padding(
                    padding:  const EdgeInsets.only(left: 15, top: 200),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Patrimônio",
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          children: const [
                            Text(
                              "R\$ 0,00",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.white),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Rendimento",
                          style: TextStyle(color: Colors.white),
                        ),
                        const Text(
                          "+R\$ 0,00",
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.grey.shade800,
                            child: Icon(
                              showMoney == false
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.white,
                            ),
                          ),
                          onTap: () {
                         
                              ref.read(showMoneyProvider.state).state = !showMoney ;                         
                          },
                        ),
                      ],
                    ),
                  ),
                ],
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

                const Padding(
                  padding: EdgeInsets.only(left: 15, top: 30),
                  child: Text(
                    "Novidades",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                        color: Colors.white),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SizedBox(
                    height: 200,
                    child: ListView.builder(
                      itemCount: 13,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Image.network(
                                "https://legislacaoemercados.capitalaberto.com.br/wp-content/uploads/2020/09/CVM-quer-aumentar-transpar%C3%AAncia-do-aluguel-de-a%C3%A7%C3%B5es-01.png",
                                scale: 2,
                              ),
                            ));
                      },
                    ),
                  ),
                )

                // Visibility(
                //   replacement: const SizedBox(),
                //   visible: stocksActions.isNotEmpty,
                //   child: SizedBox(
                //     height: 900,
                //     child: ListView.builder(
                //       itemCount: stocksActions.length,
                //       itemBuilder: (context, index) {
                //         return Text(
                //           stocksActions[index].id.toString(),
                //         );
                //       },
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
