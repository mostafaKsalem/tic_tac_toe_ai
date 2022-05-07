

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../controller/game_controller.dart';
import '../../game_ai/game_util.dart';
import '../../widgets/circle_widget.dart';
import '../../widgets/cross_widget.dart';

class CurrentPlayerWidget extends GetWidget<GameController> {
  const CurrentPlayerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.0,
          width: 20.0,
          child: Obx(
                () => _getPlayerSymbol(controller.currentPlayer.value),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Obx(
              () => Text(
            controller.currentPlayerMove ?? "",
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }

  Widget _getPlayerSymbol(int playerId) {
    switch (playerId) {
      case GameUtil.Player1:
        return const CrossWidget(
          strokeWidth: 6.0,
        );
      case GameUtil.Player2:
        return const CircleWidget(
          strokeWidth: 6.0,
        );
      default:
        throw ArgumentError("Unknow playerId");
    }
  }
}