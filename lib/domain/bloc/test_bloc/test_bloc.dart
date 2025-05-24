// import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:mvvm_architecture/data/response/api_response.dart';

// class TestBloc extends Bloc<TestEvent, TestState> {
//   TestRepository testRepository;
//   TestBloc({required this.testRepository})
//       : super(TestState(testModelList: ApiResponse.loading())) {
//     on<TestDataFetched>(_onTestFetched);
//   }

//   void _onTestFetched(TestDataFetched event, Emitter<TestState> emit) async {
//     await testRepository.fetchTestList().then((value) {
//       emit(state.copyWith(testModelList: ApiResponse.completed(value)));
//     }).onError(
//       (error, stackTrace) {
//         emit(state.copyWith(testModelList: ApiResponse.error(error.toString())));
//       },
//     );
//   }
// }
