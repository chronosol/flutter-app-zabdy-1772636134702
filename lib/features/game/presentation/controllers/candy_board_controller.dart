import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/candy_board.dart';
import '../../domain/usecases/fetch_candy_board.dart';

class CandyBoardController extends AsyncNotifier<CandyBoard> {
  final FetchCandyBoard _fetchCandyBoard;

  CandyBoardController(this._fetchCandyBoard);

  @override
  Future<CandyBoard> build() async {
    return await _fetchCandyBoard();
  }
}

final candyBoardControllerProvider =
    AsyncNotifierProvider<CandyBoardController, CandyBoard>((ref) {
  final fetchCandyBoard = ref.watch(fetchCandyBoardProvider);
  return CandyBoardController(fetchCandyBoard);
});
