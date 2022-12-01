import 'package:ecomapp/screens/product_overview/cubit/productevent.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitialState());
  void changefavorite() {
    if (state == ProductUnfavState()) {
      emit(ProductFavState());
    } else {
      emit(ProductFavState());
    }
  }
}
