/**
 * Created by Mohamed on 17-05-15.
 */
var bankAppServices = angular.module('bankAppServices', ['ngResource']);

bankAppServices.factory('Clients', ['$resource', function($resource){
    return $resource('clients/:clientId.json', {}, {
        query: {method:'GET', params:{clientId:'clients'}, isArray:true}
    });
}]);