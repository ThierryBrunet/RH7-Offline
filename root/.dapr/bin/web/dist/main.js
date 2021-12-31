(self["webpackChunkdapr_dashboard"] = self["webpackChunkdapr_dashboard"] || []).push([["main"],{

/***/ 98255:
/*!*******************************************************!*\
  !*** ./$_lazy_route_resources/ lazy namespace object ***!
  \*******************************************************/
/***/ (function(module) {

function webpackEmptyAsyncContext(req) {
	// Here Promise.resolve().then() is used instead of new Promise() to prevent
	// uncaught exception popping up in devtools
	return Promise.resolve().then(function() {
		var e = new Error("Cannot find module '" + req + "'");
		e.code = 'MODULE_NOT_FOUND';
		throw e;
	});
}
webpackEmptyAsyncContext.keys = function() { return []; };
webpackEmptyAsyncContext.resolve = webpackEmptyAsyncContext;
webpackEmptyAsyncContext.id = 98255;
module.exports = webpackEmptyAsyncContext;

/***/ }),

/***/ 90158:
/*!***************************************!*\
  !*** ./src/app/app-routing.module.ts ***!
  \***************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "AppRoutingModule": function() { return /* binding */ AppRoutingModule; }
/* harmony export */ });
/* harmony import */ var _angular_router__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/router */ 79661);
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ 91477);



var routes = [
    {
        path: '',
        loadChildren: function () { return __webpack_require__.e(/*! import() */ "src_app_pages_pages_module_ts").then(__webpack_require__.bind(__webpack_require__, /*! ./pages/pages.module */ 18950))
            .then(function (m) { return m.PagesModule; }); },
    },
    { path: '', redirectTo: '', pathMatch: 'full' },
    { path: '**', redirectTo: '' },
];
var config = {
    useHash: false,
    relativeLinkResolution: 'legacy'
};
var AppRoutingModule = /** @class */ (function () {
    function AppRoutingModule() {
    }
    AppRoutingModule.ɵfac = function AppRoutingModule_Factory(t) { return new (t || AppRoutingModule)(); };
    AppRoutingModule.ɵmod = /*@__PURE__*/ _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵdefineNgModule"]({ type: AppRoutingModule });
    AppRoutingModule.ɵinj = /*@__PURE__*/ _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵdefineInjector"]({ imports: [[_angular_router__WEBPACK_IMPORTED_MODULE_1__.RouterModule.forRoot(routes, config)], _angular_router__WEBPACK_IMPORTED_MODULE_1__.RouterModule] });
    return AppRoutingModule;
}());

(function () { (typeof ngJitMode === "undefined" || ngJitMode) && _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵsetNgModuleScope"](AppRoutingModule, { imports: [_angular_router__WEBPACK_IMPORTED_MODULE_1__.RouterModule], exports: [_angular_router__WEBPACK_IMPORTED_MODULE_1__.RouterModule] }); })();


/***/ }),

/***/ 55041:
/*!**********************************!*\
  !*** ./src/app/app.component.ts ***!
  \**********************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "AppComponent": function() { return /* binding */ AppComponent; }
/* harmony export */ });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ 91477);
/* harmony import */ var _angular_router__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/router */ 79661);


var AppComponent = /** @class */ (function () {
    function AppComponent() {
    }
    AppComponent.ɵfac = function AppComponent_Factory(t) { return new (t || AppComponent)(); };
    AppComponent.ɵcmp = /*@__PURE__*/ _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵdefineComponent"]({ type: AppComponent, selectors: [["app-root"]], decls: 1, vars: 0, template: function AppComponent_Template(rf, ctx) { if (rf & 1) {
            _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](0, "router-outlet");
        } }, directives: [_angular_router__WEBPACK_IMPORTED_MODULE_1__.RouterOutlet], encapsulation: 2 });
    return AppComponent;
}());



/***/ }),

/***/ 36747:
/*!*******************************!*\
  !*** ./src/app/app.module.ts ***!
  \*******************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "AppModule": function() { return /* binding */ AppModule; }
/* harmony export */ });
/* harmony import */ var _angular_common_http__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! @angular/common/http */ 34301);
/* harmony import */ var _angular_platform_browser__WEBPACK_IMPORTED_MODULE_7__ = __webpack_require__(/*! @angular/platform-browser */ 4919);
/* harmony import */ var _angular_platform_browser_animations__WEBPACK_IMPORTED_MODULE_8__ = __webpack_require__(/*! @angular/platform-browser/animations */ 92352);
/* harmony import */ var ng_monaco_editor__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! ng-monaco-editor */ 13146);
/* harmony import */ var _app_routing_module__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./app-routing.module */ 90158);
/* harmony import */ var _app_component__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./app.component */ 55041);
/* harmony import */ var _services_interceptor_service__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./services/interceptor.service */ 30155);
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @angular/core */ 91477);
/* harmony import */ var _angular_cdk_overlay__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! @angular/cdk/overlay */ 2897);










var AppModule = /** @class */ (function () {
    function AppModule(overlayContainer) {
        overlayContainer.getContainerElement().classList.add('dashboard-light-theme');
    }
    AppModule.ɵfac = function AppModule_Factory(t) { return new (t || AppModule)(_angular_core__WEBPACK_IMPORTED_MODULE_3__["ɵɵinject"](_angular_cdk_overlay__WEBPACK_IMPORTED_MODULE_4__.OverlayContainer)); };
    AppModule.ɵmod = /*@__PURE__*/ _angular_core__WEBPACK_IMPORTED_MODULE_3__["ɵɵdefineNgModule"]({ type: AppModule, bootstrap: [_app_component__WEBPACK_IMPORTED_MODULE_1__.AppComponent] });
    AppModule.ɵinj = /*@__PURE__*/ _angular_core__WEBPACK_IMPORTED_MODULE_3__["ɵɵdefineInjector"]({ providers: [
            ng_monaco_editor__WEBPACK_IMPORTED_MODULE_5__.MonacoProviderService,
            {
                provide: _angular_common_http__WEBPACK_IMPORTED_MODULE_6__.HTTP_INTERCEPTORS,
                useClass: _services_interceptor_service__WEBPACK_IMPORTED_MODULE_2__.HttpInterceptorService,
                multi: true
            }
        ], imports: [[
                _angular_platform_browser__WEBPACK_IMPORTED_MODULE_7__.BrowserModule,
                _angular_platform_browser_animations__WEBPACK_IMPORTED_MODULE_8__.BrowserAnimationsModule,
                _angular_common_http__WEBPACK_IMPORTED_MODULE_6__.HttpClientModule,
                _app_routing_module__WEBPACK_IMPORTED_MODULE_0__.AppRoutingModule,
                ng_monaco_editor__WEBPACK_IMPORTED_MODULE_5__.MonacoEditorModule.forRoot({
                    baseUrl: 'lib',
                    defaultOptions: {},
                }),
            ]] });
    return AppModule;
}());

(function () { (typeof ngJitMode === "undefined" || ngJitMode) && _angular_core__WEBPACK_IMPORTED_MODULE_3__["ɵɵsetNgModuleScope"](AppModule, { declarations: [_app_component__WEBPACK_IMPORTED_MODULE_1__.AppComponent], imports: [_angular_platform_browser__WEBPACK_IMPORTED_MODULE_7__.BrowserModule,
        _angular_platform_browser_animations__WEBPACK_IMPORTED_MODULE_8__.BrowserAnimationsModule,
        _angular_common_http__WEBPACK_IMPORTED_MODULE_6__.HttpClientModule,
        _app_routing_module__WEBPACK_IMPORTED_MODULE_0__.AppRoutingModule, ng_monaco_editor__WEBPACK_IMPORTED_MODULE_5__.MonacoEditorModule] }); })();


/***/ }),

/***/ 30155:
/*!*************************************************!*\
  !*** ./src/app/services/interceptor.service.ts ***!
  \*************************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "HttpInterceptorService": function() { return /* binding */ HttpInterceptorService; }
/* harmony export */ });
/* harmony import */ var _angular_common__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/common */ 40093);
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ 91477);


var HttpInterceptorService = /** @class */ (function () {
    function HttpInterceptorService(document) {
        this.document = document;
    }
    HttpInterceptorService.prototype.intercept = function (req, next) {
        var baseHref = this.getBaseHref();
        // If the base href value is not the default "/" and the requested resource is not an absolute URL,
        // we have to adjust the requested resource URL, in order to account for the base href itself
        if (baseHref !== '/' && !req.url.match(/http(?:s){0,1}:\/\//)) {
            var url = req.url;
            if (req.url.startsWith('/')) {
                // If the requested URL starts with a slash, we will remove it
                url = req.url.slice(1);
            }
            req = req.clone({
                url: "" + baseHref + url
            });
        }
        return next.handle(req);
    };
    /**
     * An helper method to get base href. If, for whatever reason, we cannot find a
     * "base" tag with an "href" attribute, this method will return "/".
     * Result of this function is a string that will always end with a slash.
     * @returns the base href
     */
    HttpInterceptorService.prototype.getBaseHref = function () {
        var baseHrefTag = this.document.querySelector('base[href]');
        if (baseHrefTag) {
            var href = baseHrefTag.getAttribute('href') || '/';
            if (!href.endsWith('/')) {
                href += '/';
            }
            return href;
        }
        return '/';
    };
    HttpInterceptorService.ɵfac = function HttpInterceptorService_Factory(t) { return new (t || HttpInterceptorService)(_angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵinject"](_angular_common__WEBPACK_IMPORTED_MODULE_1__.DOCUMENT)); };
    HttpInterceptorService.ɵprov = /*@__PURE__*/ _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵdefineInjectable"]({ token: HttpInterceptorService, factory: HttpInterceptorService.ɵfac, providedIn: 'root' });
    return HttpInterceptorService;
}());



/***/ }),

/***/ 92340:
/*!*****************************************!*\
  !*** ./src/environments/environment.ts ***!
  \*****************************************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "environment": function() { return /* binding */ environment; }
/* harmony export */ });
var environment = {
    production: false,
};


/***/ }),

/***/ 14431:
/*!*********************!*\
  !*** ./src/main.ts ***!
  \*********************/
/***/ (function(__unused_webpack_module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _angular_platform_browser__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @angular/platform-browser */ 4919);
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @angular/core */ 91477);
/* harmony import */ var _app_app_module__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./app/app.module */ 36747);
/* harmony import */ var _environments_environment__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./environments/environment */ 92340);




if (_environments_environment__WEBPACK_IMPORTED_MODULE_1__.environment.production) {
    (0,_angular_core__WEBPACK_IMPORTED_MODULE_2__.enableProdMode)();
}
_angular_platform_browser__WEBPACK_IMPORTED_MODULE_3__.platformBrowser().bootstrapModule(_app_app_module__WEBPACK_IMPORTED_MODULE_0__.AppModule)
    .catch(function (err) { return console.error(err); });


/***/ })

},
/******/ function(__webpack_require__) { // webpackRuntimeModules
/******/ var __webpack_exec__ = function(moduleId) { return __webpack_require__(__webpack_require__.s = moduleId); }
/******/ __webpack_require__.O(0, ["vendor"], function() { return __webpack_exec__(14431); });
/******/ var __webpack_exports__ = __webpack_require__.O();
/******/ }
]);
//# sourceMappingURL=main.js.map