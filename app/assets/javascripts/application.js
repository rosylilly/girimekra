/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};

/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {

/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId])
/******/ 			return installedModules[moduleId].exports;

/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			exports: {},
/******/ 			id: moduleId,
/******/ 			loaded: false
/******/ 		};

/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);

/******/ 		// Flag the module as loaded
/******/ 		module.loaded = true;

/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}


/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;

/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;

/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";

/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(0);
/******/ })
/************************************************************************/
/******/ ([
/* 0 */
/***/ (function(module, exports, __webpack_require__) {

	module.exports = __webpack_require__(1);


/***/ }),
/* 1 */
/***/ (function(module, exports) {

	eval("'use strict';\n\n// any codes here...\nwindow.addEventListener('DOMContentLoaded', function () {\n  var queueCount = document.getElementById('queue-count');\n  if (!queueCount) {\n    return;\n  };\n\n  var eventStream = new EventSource('/stream/queue');\n  eventStream.addEventListener('message', function (event) {\n    var data = JSON.parse(event.data);\n    queueCount.innerText = data.queue;\n  });\n});\n//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly8vLi9hcHAvZnJvbnRlbmRzL2FwcGxpY2F0aW9uLmpzPzYzZTYiXSwibmFtZXMiOlsid2luZG93IiwiYWRkRXZlbnRMaXN0ZW5lciIsInF1ZXVlQ291bnQiLCJkb2N1bWVudCIsImdldEVsZW1lbnRCeUlkIiwiZXZlbnRTdHJlYW0iLCJFdmVudFNvdXJjZSIsImV2ZW50IiwiZGF0YSIsIkpTT04iLCJwYXJzZSIsImlubmVyVGV4dCIsInF1ZXVlIl0sIm1hcHBpbmdzIjoiOztBQUFBO0FBQ0FBLE9BQU9DLGdCQUFQLENBQXdCLGtCQUF4QixFQUE0QyxZQUFNO0FBQ2hELE1BQU1DLGFBQWFDLFNBQVNDLGNBQVQsQ0FBd0IsYUFBeEIsQ0FBbkI7QUFDQSxNQUFHLENBQUNGLFVBQUosRUFBZ0I7QUFBRTtBQUFROztBQUUxQixNQUFNRyxjQUFjLElBQUlDLFdBQUosQ0FBZ0IsZUFBaEIsQ0FBcEI7QUFDQUQsY0FBWUosZ0JBQVosQ0FBNkIsU0FBN0IsRUFBd0MsVUFBQ00sS0FBRCxFQUFXO0FBQ2pELFFBQU1DLE9BQU9DLEtBQUtDLEtBQUwsQ0FBV0gsTUFBTUMsSUFBakIsQ0FBYjtBQUNBTixlQUFXUyxTQUFYLEdBQXVCSCxLQUFLSSxLQUE1QjtBQUNELEdBSEQ7QUFJRCxDQVREIiwiZmlsZSI6IjEuanMiLCJzb3VyY2VzQ29udGVudCI6WyIvLyBhbnkgY29kZXMgaGVyZS4uLlxud2luZG93LmFkZEV2ZW50TGlzdGVuZXIoJ0RPTUNvbnRlbnRMb2FkZWQnLCAoKSA9PiB7XG4gIGNvbnN0IHF1ZXVlQ291bnQgPSBkb2N1bWVudC5nZXRFbGVtZW50QnlJZCgncXVldWUtY291bnQnKTtcbiAgaWYoIXF1ZXVlQ291bnQpIHsgcmV0dXJuIH07XG5cbiAgY29uc3QgZXZlbnRTdHJlYW0gPSBuZXcgRXZlbnRTb3VyY2UoJy9zdHJlYW0vcXVldWUnKTtcbiAgZXZlbnRTdHJlYW0uYWRkRXZlbnRMaXN0ZW5lcignbWVzc2FnZScsIChldmVudCkgPT4ge1xuICAgIGNvbnN0IGRhdGEgPSBKU09OLnBhcnNlKGV2ZW50LmRhdGEpO1xuICAgIHF1ZXVlQ291bnQuaW5uZXJUZXh0ID0gZGF0YS5xdWV1ZTtcbiAgfSk7XG59KTtcblxuXG5cbi8vIFdFQlBBQ0sgRk9PVEVSIC8vXG4vLyAuL2FwcC9mcm9udGVuZHMvYXBwbGljYXRpb24uanMiXSwic291cmNlUm9vdCI6IiJ9");

/***/ })
/******/ ]);