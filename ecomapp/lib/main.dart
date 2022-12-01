import 'package:ecomapp/generateRoute.dart';
import 'package:ecomapp/screens/product_overview/cubit/productcubit.dart';
import 'package:ecomapp/screens/product_overview/cubit/productevent.dart';
import 'package:ecomapp/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider<ProductCubit>(create: ((_) => ProductCubit()))],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "My Shop",
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple)
                .copyWith(secondary: Colors.amber)),
        initialRoute: Routes.ProductOverviewPage,
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
