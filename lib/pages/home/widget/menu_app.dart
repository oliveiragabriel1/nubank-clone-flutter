import 'package:flutter/material.dart';

import 'item_menu.dart';

class MenuApp extends StatelessWidget {
  final double top;
  final bool showMenu;
  const MenuApp({Key? key, required this.top, required this.showMenu})
      : super(key: key);

  final String qrcode =
      "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/QR_code_for_mobile_English_Wikipedia.svg/1200px-QR_code_for_mobile_English_Wikipedia.svg.png";
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: AnimatedOpacity(
        opacity: showMenu ? 1 : 0,
        duration: Duration(milliseconds: 100),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.65,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                Image.network(
                  qrcode,
                  height: 100,
                  color: Colors.white,
                ),
                Text.rich(
                  TextSpan(
                    text: "Banco ",
                    children: [
                      TextSpan(
                          text: "260 - Nu Pagamentos S.A",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(height: 5),
                Text.rich(
                  TextSpan(
                    text: "Agência ",
                    children: [
                      TextSpan(
                          text: "0001",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(height: 5),
                Text.rich(
                  TextSpan(
                    text: "Conta ",
                    children: [
                      TextSpan(
                          text: "000000-0",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(height: 15),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: <Widget>[
                        ItemMenu(
                            icon: Icons.info_outline,
                            text: "Me ajuda",
                            first: true),
                        ItemMenu(
                          icon: Icons.person_outline,
                          text: "Perfil",
                        ),
                        ItemMenu(
                          icon: Icons.settings_outlined,
                          text: "Configurar contar",
                        ),
                        ItemMenu(
                          icon: Icons.credit_card_outlined,
                          text: "Configurar cartão",
                        ),
                        ItemMenu(
                          icon: Icons.store_mall_directory_outlined,
                          text: "Pedir conta PJ",
                        ),
                        ItemMenu(
                          icon: Icons.phone_android_outlined,
                          text: "Configurações do app",
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          height: 40,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 0.7,
                              color: Colors.white54,
                            ),
                          ),
                          child: TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                overlayColor: MaterialStateProperty.all(
                                    Colors.purple[900]),
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.white),
                              ),
                              child: Text(
                                "SAIR DO APP",
                                style: TextStyle(fontSize: 12),
                              )),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
