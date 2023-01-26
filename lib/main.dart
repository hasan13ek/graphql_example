import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_example/api/api.dart';
import 'package:graphql_example/bloc/jobs_bloc.dart';
import 'package:graphql_example/ui/all_countries.dart';

void main() {
  runApp(
    
    MultiBlocProvider(providers: [
      BlocProvider(create: (context)=>JobsBloc(jobsApiClient: JobsApiClient.create())..add(JobsFetchStarted()))
    ], child: MyApp())

  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: JobsPage(),
    );
  }
}


