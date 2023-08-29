

import 'package:flutter/material.dart';
import 'package:flutter_flavor_with_riverpod/config_flavors.dart';
import 'package:flutter_flavor_with_riverpod/main_common.dart';

void main(){
  mainCommon(
      FlavorConfig()
        ..appTitle="School 2"
        ..apiEndpoint={
          Endpoints.items: "flutterjunction.api/items",
          Endpoints.details: "flutterjunction.api/item"
        }
        ..imageLocation="assets/images/two.png"
        ..theme=ThemeData.dark(),
  );
}