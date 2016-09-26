(function() {
  'use strict';

  angular.module("app").controller("updownvoteCtrl", function($scope, $http, $timeout) {

    $scope.setup = function(id) {
      $http.get('/api/v1/questions/' + id.toString() + '.json').then(function(response) {
        $scope.question = response.data;
      });
    }

    $scope.createAnswer = function(answer, question) {
    var commentParams = {
      answer_content: answer,
      question_id: question.id
    }
    $http.post('/api/v1/answers.json', commentParams).success(function(response) {
      $scope.question = response;
      $scope.createdMessage = response.created
      $scope.error = null;
      $scope.answer = null;
      $timeout(function() {
        $scope.createdMessage = null;
      }, 1500)
    }).error(function(response) {
      $scope.error = response.error;
      $scope.success = null;
    })
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

  });
})();
