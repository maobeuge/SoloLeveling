import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ScreenModel extends Equatable {
  final int index;
  final String label;
  final Widget screenContent;

  const ScreenModel(
      {required this.index, required this.label, required this.screenContent});

  @override
  List<Object?> get props => [index, label, screenContent];
}
