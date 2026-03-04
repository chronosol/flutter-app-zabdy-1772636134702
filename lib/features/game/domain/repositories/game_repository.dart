import '../entities/candy_board.dart';

abstract class GameRepository {
  Future<CandyBoard> fetchBoard();
  Future<void> swapCandies(int x1, int y1, int x2, int y2);
}
