import 'package:blog_post/core/domain/domain_exception.dart';

abstract class ResultModel<T>{
  T? data;
  DomainException? exception;

  ResultModel({this.data, this.exception});

  bool get hasData => data != null;
  bool get hasException => exception != null;
}