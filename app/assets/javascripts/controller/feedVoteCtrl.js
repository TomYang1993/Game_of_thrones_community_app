(function() {
  'use strict';

  angular.module("app").controller("feedVoteCtrl", function($scope, $http, $timeout) {

    $scope.setup = function() {
      $http.get("/api/v1/feeds.json").then(function(response) {
        $scope.feeds = response.data;
        $scope.totalVisible = $scope.feeds.length;
        console.log($scope.feeds.length);
      });


    }


    $scope.favorite = function(feed) {
      feed.favorite = feed.favorite ? 0 : 1
      // prefers to pass numbers/strings in the params instead of booleans
      // 0 is falsey in JS - so set favorite to 0 if 1, 1 if 0
      // Then Rails can handle the params appropriately
      var feedParams = {
        feed_id: feed.id,
        favorite: feed.favorite
      }
      $http.post('/api/v1/feedvotes.json', feedParams).then(function(response) {
        feed.favoriteMessage = response.data.success;
      });
      $timeout(function() {
        feed.favoriteMessage = null;
      }, 1500)
    }

    // $scope.itemCategory = 'default'
    $scope.sortCategory = function(category){
      $scope.totalVisible = 0;
      $scope.feeds.forEach(function(feed, idx){
        feed.display = false;
        for(var j = 0; j < feed.category.length; j++) {
          feed.display = feed.category[j].name  === category || feed.display;
          }
      });
    };
    //
    // $scope.checkNumber = function(){
    //     for( var i = 0,j=0; i < $scope.feeds.length; i++) {
    //       if($scope.feeds[i].display == true){
    //         j++;
    //       }
    //     }
    //     if (j>=10){
    //       return true;
    //     }
    // };
    $scope.items = 10
    $scope.toggleShow = function(){
      console.log($scope.items);
       $scope.items = $scope.items === 10? 20 : 10
    };

  });
})();
