import 'package:flutter/material.dart';
import 'package:graphql_example/bloc/jobs_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_example/ui/detail_screen.dart';
class JobsPage extends StatelessWidget {
  const JobsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Countries')),
      body: Center(
        child: BlocBuilder<JobsBloc, JobsState>(
          builder: (context, state) {
            if (state is JobsLoadInProgress) {
              return const CircularProgressIndicator();
            }
            if (state is JobsLoadSuccess) {
              return ListView.builder(
                itemCount: state.jobs.length,
                itemBuilder: (context, index) {
                  final job = state.jobs[index];
                  return ListTile(
                    key: Key(job.native),
                    leading: const Icon(Icons.location_city),
                    title: Text(job.name),
                    trailing: Text(job.emoji),
                    subtitle: Text(job.capital),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>DetailScreen(countryModel: job)));
                    },
                  );
                },
              );
            }
            return const Text('Oops something went wrong!');
          },
        ),
      ),
    );
  }
}