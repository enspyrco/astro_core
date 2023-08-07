import 'package:error_handling_for_perception/error_handling_for_perception.dart';
import 'package:types_for_perception/beliefs.dart';
import 'package:types_for_perception/error_handling_types.dart';

class IdentityEquivalenceAppState
    implements CoreBeliefs, AppStateErrorHandling {
  IdentityEquivalenceAppState({required this.error});

  static IdentityEquivalenceAppState get initial =>
      IdentityEquivalenceAppState(error: DefaultErrorHandlingState.initial);

  @override
  final DefaultErrorHandlingState error;

  @override
  IdentityEquivalenceAppState copyWith({DefaultErrorHandlingState? error}) {
    return IdentityEquivalenceAppState(error: error ?? this.error);
  }

  @override
  toJson() => {'error': error.toJson()};
}
