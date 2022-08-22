import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../home/home_page.dart';

GestureDetector ButtonLogin(BuildContext context) {
    return GestureDetector(
            child: Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  "Entrar",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacement(
                PageTransition(
                    child: const HomePage(),
                    type: PageTransitionType.fade,
                    duration: const Duration(milliseconds: 400)),
              );
            },
          );
  }