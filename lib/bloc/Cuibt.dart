import 'package:bloc/bloc.dart';
import 'package:workshop/Network/DioHelper/DioHelper.dart';
import 'package:workshop/Network/DioHelper/end%20points.dart';
import 'package:workshop/bloc/State.dart';

import '../view model/model.dart';

class CategoryCuibt extends Cubit<CounterStat> {
  CategoryCuibt(super.initialState);

  Future<void> getCategories() async {
    Data dataModel;
    emit(CategoryLoadingStat());
    await DioHelper.getData(endPoint: categories, token: token).then((value) {
      print(value.data);
      emit(CategorySucessStat());
      dataModel = Data.fromJson(value.data);
    }).catchError((error) {
      print('error in get categories ${error.response.data}');
      emit(CategoryErrorStat());
    });
  }

  Future<void> getProductOfCategories({required int category_id}) async {
    emit(ProductOfCategoryLoadingStat());
    await DioHelper.getData(endPoint: categories_of_product, query: {
      'category_id': category_id
    }, token: token).then((value) {
      print(value.data);
      emit(ProductOfCategorySucessStat());
    }).catchError((error) {
      print('error in get product of categories ${error.response.data}');
      emit(ProductOfCategoryErrorStat());
    });
  }

  Future<void> getNewProduct(
      {required String name, required String description}) async {
    emit(GetNewProductLoadingStat());
    await DioHelper.postData(endPoint: categories, data: {
      'name': name,
      'description': description
    }, token: token
    ).then((value) {
      print(value.data);
      emit(GetNewProductSucessStat());
    }).catchError((error) {
      print('error in get new product ${error.response.data}');
      emit(GetNewProductErrorStat());
    });
  }

  Future<void> UpdateProductOfCategories({required String categoryName}) async {
    emit(UpdateProductLoadingStat());
    DioHelper.postData(endPoint: updateCategoty, data: {
      'name': categoryName,
    }, token: token).then((value) {
      print(value.data);
      emit(UpdateProductSucessStat());
    }).catchError((error) {
      print('error in update product${error.response.data}');
      emit(UpdateProductErrorStat());
    });
  }

  Future<void> ShowProductOfCategories() async {
    emit(ShowProductLoadingStat());
   await DioHelper.getData(endPoint: showCategory,token: token).then((value) {
     print(value.data);
     emit(ShowProductLoadingStat());
   }).catchError((error){
     print('error in show product of categories ${error.response.data}');
     emit(ShowProductErrorStat());
   });
  }
  Future<void> getCategorie_product() async {
    emit(GetProductLoadingStat());
    await DioHelper.getData(endPoint: categoty_product).then((value){
      print(value.data);
      emit(GetProductSucessStat());
    }).catchError((error){
      print(error.response.data);
      emit(GetProductErrorStat());
    });
  }
  Future<void> searchForProduct({required String name}) async {
   emit(SearchProductLoadingStat());
    DioHelper.getData(endPoint:search,query: {
      'name':name
    },token: token).then((value) {
      print (value.data);
      emit(SearchProductSucessStat());
    }).catchError((error){
      print(error.response.data);
      emit(SearchProductErrorStat());
    });
  }
  }