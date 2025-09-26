import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:fola_app/core/network/failure.dart';

// we are creating an abstract class called ApiResponse
abstract class ApiResponse {}

// we are creating a class that extends our abstract one and also uses EquatableMixin
class Success extends ApiResponse with EquatableMixin {
  // we are creating a map called data
  final Map<String, dynamic> data;

  // we are establishing the parameters
  Success(this.data);

  // syntax used with Equatable Mixin
  @override
  // we r creating a getter for data that takes a list of nullable objects
  List<Object?> get props => [data];
}

// a generic class that extends equatable and
class GeneralResponse<T> extends Equatable {
  // creating parameters
  final bool success;
  final String message;
  // the T means it can be null
  final T? data;

  // initializing final form field parameters
  const GeneralResponse({this.success = false, this.message = '', this.data});

  // a factory constructor that builds general response from a json file
  factory GeneralResponse.fromJson(
    // json can hold either an apifailure or a success
    Either<ApiFailure, Success> json, {
    // an optional function to convert a json into a type T data
    T Function(Map<String, dynamic> json)? parseJson,
    // an optional function to customize how the message is extracted from the json file
    String Function(Map<String, dynamic> json)? parseMessage,
  }) {
    // returns either an error message from General Response or it returns the data succesfully
    return json.fold((failure) => GeneralResponse(message: failure.message), (
      success,
    ) {
      // it takes the status to either return an empty string or the success data as a string
      final status =
          success.data['status'] == null
              ? ""
              : success.data['status'] as String;

      // builda a new GeneralResponse
      return GeneralResponse(
        // success is true if the status = success
        success: status == 'success',
        // message= success
        message: status,
        // if parseJson is given it is used to convert a raw json fill.
        data:
            parseJson != null ? parseJson(success.data) : success.data['data'],
      );
    });
  }

  @override
  // defines the fields that are checked for equality
  List<Object?> get props => [success, message];
}

// Assignment 
// add comments throughout general_response.dart and failure.dart and find out what it all means.