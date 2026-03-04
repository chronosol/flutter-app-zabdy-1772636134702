import '../repositories/game_repository.dart';

class FetchCandyBoard {
  final GameRepository repository;

  FetchCandyBoard(this.repository);

  Future<void> call() async {
    await repository.fetchBoard();
  }
}
