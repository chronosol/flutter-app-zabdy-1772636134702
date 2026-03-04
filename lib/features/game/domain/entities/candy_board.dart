import 'package:flutter/material.dart';
import '../../data/models/candy_board.dart' as model;

class CandyBoard {
  final List<List<model.Candy>> board;

  const CandyBoard(this.board);

  CandyBoard copyWith({List<List<model.Candy>>? board}) {
    return CandyBoard(board ?? this.board);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CandyBoard &&
          runtimeType == other.runtimeType &&
          board == other.board;

  @override
  int get hashCode => board.hashCode;

  @override
  String toString() => 'CandyBoard(board: $board)';
}
