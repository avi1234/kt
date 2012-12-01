angular.module("kt", []).config ["$routeProvider", ($routeProvider) ->
  $routeProvider.when("/",
    templateUrl: "main"
    controller: TicksCtrl
  ).when("/specific/:tickId",
    templateUrl: "tick"
    controller: SpecificTickCtrl
  ).otherwise redirectTo: "/"
]