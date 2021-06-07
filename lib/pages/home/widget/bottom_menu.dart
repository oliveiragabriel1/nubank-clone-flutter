import 'package:flutter/material.dart';

import 'item_menu_bottom.dart';

class BottomMenu extends StatelessWidget {
  final bool showMenu;
  const BottomMenu({Key? key, required this.showMenu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 200),
      bottom: !showMenu ? 10 + MediaQuery.of(context).padding.bottom : -20,
      left: 0,
      right: 0,
      height: MediaQuery.of(context).size.height * 0.15,
      child: IgnorePointer(
        ignoring: showMenu,
        child: AnimatedOpacity(
          opacity: !showMenu ? 1 : 0,
          duration: Duration(milliseconds: 100),
          child: Container(
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                ItemMenuBottom(
                  icon: Icons.person_add_alt,
                  text: "Indicar amigos",
                ),
                ItemMenuBottom(
                  icon: Icons.phone_iphone_outlined,
                  text: "Recarga de celular",
                ),
                ItemMenuBottom(
                  icon: Icons.chat_bubble_outline_rounded,
                  text: "Cobrar",
                ),
                ItemMenuBottom(
                  icon: Icons.monetization_on_outlined,
                  text: "Empréstimos",
                ),
                ItemMenuBottom(
                  icon: Icons.move_to_inbox,
                  text: "Depositar",
                ),
                ItemMenuBottom(
                  icon: Icons.mobile_screen_share,
                  text: "Transferir",
                ),
                ItemMenuBottom(
                  icon: Icons.format_align_center,
                  text: "Ajustar limite",
                ),
                ItemMenuBottom(
                  icon: Icons.qr_code,
                  text: "Pagar",
                ),
                ItemMenuBottom(
                  icon: Icons.lock_open_rounded,
                  text: "Bloquear cartão",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
