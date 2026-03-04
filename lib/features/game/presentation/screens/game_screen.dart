import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controllers/candy_board_controller.dart';
import '../../../data/models/candy.dart';

class GameScreen extends ConsumerWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final candyBoardAsync = ref.watch(candyBoardControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Candy Crush Clone'),
      ),
      body: candyBoardAsync.when(
        data: (candyBoard) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 9,
            ),
            itemBuilder: (context, index) {
              final candy = candyBoard.board[index ~/ 9][index % 9];
              return CandyTile(candy: candy);
            },
            itemCount: 9 * 9,
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(
          child: Text('An error occurred: $error'),
        ),
      ),
    );
  }
}

class CandyTile extends StatelessWidget {
  final Candy candy;

  const CandyTile({Key? key, required this.candy}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: _getCandyColor(candy.type),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  Color _getCandyColor(int type) {
    switch (type) {
      case 0:
        return Colors.red;
      case 1:
        return Colors.green;
      case 2:
        return Colors.blue;
      default:
        return Colors.purple;
    }
  }
}
