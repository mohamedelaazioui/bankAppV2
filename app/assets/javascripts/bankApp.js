/**
 * Created by Mohamed on 17-05-15.
 */
var bankApp = angular.module('bankApp', []);

bankApp.controller('branchesCtrl', function($scope, $http) {
    $http.get("/branches.json").success(function(response) {
        $scope.branches = response;
        $scope.orderProp = 'zipCode';
    });
});
