
(function() {
   'use strict';

     angular.module("app").controller('getHouseCtrl', function($scope, $timeout){


    $scope.quiz = angular.element(document.querySelector('.result_details'));
    $scope.$watch(function () { return $scope.quiz.text(); }, function (newValue, oldValue, scope) {
      console.log(newValue);
    }, true);

    window.scope = $scope;

    



   });
})();
