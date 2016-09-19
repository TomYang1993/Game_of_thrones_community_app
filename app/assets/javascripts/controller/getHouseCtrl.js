
(function() {
   'use strict';

     angular.module("app").controller('getHouseCtrl', function($scope, $location,$http){

     $scope.houses = [{id:1,name:"Baratheon"},
                      {id:2,name:"Bolton"},
                      {id:3,name:"Lannister"},
                      {id:4,name:"Martell"},
                      {id:5,name:"Greyjoy"},
                      {id:6,name:"Stark"},
                      {id:7,name:"Targaryen"},
                      {id:8,name:"Tyrell"}
                    ]


     $scope.confirmBt = function(){
       $http.patch('/test',{house_name: $scope.selectedHouse.name}).success(function(){

         console.log($scope.selectedHouse.name)
       })
     }


     $scope.skipBt = function(){
       $location.url() + "/skip" ;
     }



   });
})();
