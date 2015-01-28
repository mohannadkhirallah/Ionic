angular.module("IonicApp", ['ngCordova', 'ionic', 'uiGmapgoogle-maps'])

.config(function ($stateProvider, $urlRouterProvider) {
    $stateProvider
       .state('home', {
           abstract: true,
           url: "/home",
           templateUrl: "app/home/home.html"
       })

        .state('home.leagues', {
            url: "/leagues",
            views: {
                "tab-leagues": {
                    templateUrl: "app/home/leagues.html"
                }
            }
        })

        .state('home.myteams', {
            url: "/myteams",
            views: {
                "tab-myteams": {
                    templateUrl: "app/home/myteams.html"
                }
            }
        })

    .state('app',
        {
            abtract: true,
            url: "/app",
            templateUrl: "app/layout/menu-layout.html"
        })


    .state('app.team-detail', {
        url: "/teams/:id",
        views: {
            'mainContent': {
                templateUrl: "app/teams/team-detail.html"
            }
        }
    })
    .state('app.teams', {
        url: "/teams",
        views: {
            'mainContent': {
                templateUrl: "app/teams/teams.html"
            }
        }
    })

    .state('app.game', {
        url: "/game/:id",
        views: {
            'mainContent': {
                templateUrl: "app/game/game.html"
            }
        }
    })
    .state('app.standings', {
        url: "/standings",
        views: {
            'mainContent': {
                templateUrl: "app/standings/standings.html"
            }
        }
    })

    .state('app.locations', {
        url: "/locations",
        views: {
            'mainContent': {
                templateUrl: "app/locations/locations.html"
            }
        }
    })
        .state('app.location-map', {
            url: "/location-map/:id",
            views: {
                'mainContent': {
                    templateUrl: "app/locations/location-map.html"
                }
            }
        })

    .state('app.rules', {
        url: "/rules",
        views: {
            'mainContent': {
                templateUrl: "app/rules/rules.html"
            }
        }
    })

        .state('app.dialogs', {
            url: "/dialogs",
            views: {
                'mainContent': {
                    templateUrl: "app/dialogs/dialogs.html"
                }
            }
        })

    .state('app.vibration', {
        url: "/vibration",
        views: {
            'mainContent': {
                templateUrl: "app/vibration/vibration.html",
            }
        }
    })

    .state('app.network', {
        url: "/network",
        views: {
            'mainContent': {
                templateUrl: "app/network/network.html"
            }
        }
    })

    .state('app.device', {
        url: "/device",
        views: {
            'mainContent': {
                templateUrl: "app/device/device.html",
            }
        }
    });


    $urlRouterProvider.otherwise('/app/dialogs');
});
