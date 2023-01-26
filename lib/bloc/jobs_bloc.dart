import 'package:bloc/bloc.dart';
import 'package:graphql_example/api/job_api_client.dart';
import 'package:graphql_example/api/models/models.dart';
import 'package:meta/meta.dart';

part 'jobs_event.dart';
part 'jobs_state.dart';

class JobsBloc extends Bloc<JobsEvent, JobsState> {
  JobsBloc({required JobsApiClient jobsApiClient})
      : _jobsApiClient = jobsApiClient,
        super(JobsLoadInProgress()) {
    on<JobsFetchStarted>(_onJobsFetchStarted);
  }

  final JobsApiClient _jobsApiClient;

  Future<void> _onJobsFetchStarted(
      JobsFetchStarted event,
      Emitter<JobsState> emit,
      ) async {
    emit(JobsLoadInProgress());
    try {
      final jobs = await _jobsApiClient.getJobs();
      emit(JobsLoadSuccess(jobs));
    } catch (error) {
      print("ERRROR:$error");
      emit(JobsLoadFailure());
    }
  }
}