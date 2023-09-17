// import 'package:flutter_practice/state/response/response_state.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:state_notifier/state_notifier.dart';

// class SampleStateNotifier extends StateNotifier<ResponseState> {
//   SampleStateNotifier(this.ref, this.repository)
//       : super(const ResponseState.initial()) {}
//   final Ref ref;
//   final SampleRepository repository;

//   Future<void> getData() async {
//     state = const ResponseState.loading();
//     final apiResult = await repository.fetch();

//     if (apiResult is Success<SampleResponseModel>) {
//       final data = SampleFactory.fromData();
//       state = ResponseState.data(value: data);
//     } else {
//       state = const ResponseState.error();
//     }
//   }
// }

// final sampleProvider =
//     StateNotifierProvider.autoDispose<SampleStateNotifier, ResponseState>(
//         (ref) => SampleStateNotifier(ref, SampleRepository()));
