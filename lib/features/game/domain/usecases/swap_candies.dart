import '../repositories/game_repository.dart';

class SwapCandies {
  final GameRepository repository;

  SwapCandies(this.repository);

  Future<void> call(int x1, int y1, int x2, int y2) async {
    await repository.swapCandies(x1, y1, x2, y2);
  }
}
