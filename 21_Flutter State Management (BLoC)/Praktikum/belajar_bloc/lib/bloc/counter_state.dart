import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  //equatable : packages yg akan memeriksa perubahan suatu class pd bagian propsnya
  final int value;

  const CounterState(this.value);
  @override
  // TODO: implement props
  List<Object?> get props => [value];
}
