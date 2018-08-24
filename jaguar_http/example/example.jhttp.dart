// GENERATED CODE - DO NOT MODIFY BY HAND

part of jaguar_http.example;

// **************************************************************************
// JaguarHttpGenerator
// **************************************************************************

abstract class _$UserApiClient implements ApiClient {
  Future<User> getUserById(String id) async {
    var req = base.get.path("/users/:id").pathParams("id", id);
    return req.one(convert: serializers.oneFrom);
  }

  Future<User> createUser(User user) async {
    var req = base.post.path("/users").json(serializers.to(user));
    return req.one(convert: serializers.oneFrom);
  }

  Future<User> updateUser(String id, User user) async {
    var req = base.put
        .path("/users/:id")
        .pathParams("id", id)
        .json(serializers.to(user));
    return req.one(convert: serializers.oneFrom);
  }

  Future<void> deleteUser(String id) async {
    var req = base.delete.path("/users/:id").pathParams("id", id);
    await req.go();
  }

  Future<List<User>> all({String name, String email}) async {
    var req = base.get.path("/users");
    return req.list(convert: serializers.oneFrom);
  }
}