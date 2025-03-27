import 'package:blog_app/core/theme/theme.dart';
import 'package:blog_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:blog_app/features/auth/presentation/pages/login_page.dart';
import 'package:blog_app/init_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  // final supabase = await Supabase.initialize(
  //   url: AppSecrets.supabaseURL,
  //   anonKey: AppSecrets.supabaseAnonKey,
  // );
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => serviceLocator<AuthBloc>(),
          // (_) => AuthBloc(
          //   /*
          //   User sign up is one functionality of the app.
          //   It is called from the presentation layer.
          //   The implementation is in the domain layer (domain -> usecases -> user_sign_up.dart).
          //    */
          //   userSignUp: UserSignUp(
          //     AuthRepositoryImpl(AuthRemoteDataSourceImpl(supabase.client)),
          //   ),
          // ),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blog App',
      theme: AppTheme.darkThemeMode,
      home: const LoginPage(),
    );
  }
}
