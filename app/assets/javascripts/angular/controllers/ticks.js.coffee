window.TicksCtrl = ['$scope', '$http',($scope,$http) ->
	$http.get('ticks').success((data) -> $scope.ticks = data)
	$scope.orderProp = 'user.name'
]