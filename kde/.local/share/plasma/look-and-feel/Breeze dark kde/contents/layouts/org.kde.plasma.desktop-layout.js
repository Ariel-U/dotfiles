var plasma = getApiVersion(1);

var layout = {
    "desktops": [
        {
            "applets": [
            ],
            "config": {
                "/": {
                    "ItemGeometries-1920x1080": "",
                    "ItemGeometriesHorizontal": "",
                    "formfactor": "0",
                    "immutability": "1",
                    "lastScreen": "1",
                    "wallpaperplugin": "org.kde.image"
                },
                "/Wallpaper/org.kde.image/General": {
                    "Image": "/home/ariel/Imágenes/Wallpapers/Logos/kde.jpg"
                }
            },
            "wallpaperPlugin": "org.kde.image"
        },
        {
            "applets": [
            ],
            "config": {
                "/": {
                    "ItemGeometries-1920x1080": "",
                    "ItemGeometriesHorizontal": "",
                    "formfactor": "0",
                    "immutability": "1",
                    "lastScreen": "0",
                    "wallpaperplugin": "org.kde.image"
                },
                "/ConfigDialog": {
                    "DialogHeight": "630",
                    "DialogWidth": "810"
                },
                "/Wallpaper/org.kde.image/General": {
                    "Image": "/home/ariel/Imágenes/Wallpapers/Logos/kde.jpg"
                }
            },
            "wallpaperPlugin": "org.kde.image"
        }
    ],
    "panels": [
        {
            "alignment": "center",
            "applets": [
                {
                    "config": {
                        "/": {
                            "popupHeight": "573",
                            "popupWidth": "738"
                        },
                        "/ConfigDialog": {
                            "DialogHeight": "540",
                            "DialogWidth": "720"
                        },
                        "/General": {
                            "favoritesPortedToKAstats": "true"
                        }
                    },
                    "plugin": "org.kde.plasma.kickoff"
                },
                {
                    "config": {
                    },
                    "plugin": "org.kde.plasma.marginsseparator"
                },
                {
                    "config": {
                        "/ConfigDialog": {
                            "DialogHeight": "540",
                            "DialogWidth": "720"
                        },
                        "/General": {
                            "displayedText": "Number",
                            "showOnlyCurrentScreen": "true",
                            "showWindowOutlines": "false",
                            "wrapPage": "false"
                        }
                    },
                    "plugin": "org.kde.plasma.pager"
                },
                {
                    "config": {
                    },
                    "plugin": "org.kde.plasma.marginsseparator"
                },
                {
                    "config": {
                        "/ConfigDialog": {
                            "DialogHeight": "540",
                            "DialogWidth": "720"
                        },
                        "/General": {
                            "hideLauncherOnStart": "false",
                            "launchers": "applications:brave-origin.desktop,applications:app.zen_browser.zen.desktop",
                            "middleClickAction": "Close",
                            "taskMaxWidth": "Wide"
                        }
                    },
                    "plugin": "org.kde.plasma.taskmanager"
                },
                {
                    "config": {
                    },
                    "plugin": "org.kde.plasma.marginsseparator"
                },
                {
                    "config": {
                        "/": {
                            "popupHeight": "353",
                            "popupWidth": "708"
                        },
                        "/Appearance": {
                            "showTemperatureInCompactMode": "true"
                        },
                        "/ConfigDialog": {
                            "DialogHeight": "540",
                            "DialogWidth": "720"
                        },
                        "/WeatherStation": {
                            "placeDisplayName": "Córdoba, Argentina, AR",
                            "placeInfo": "Córdoba, Argentina, AR|3860259",
                            "provider": "bbcukmet",
                            "source": "bbcukmet|weather|Córdoba, Argentina, AR|3860259"
                        }
                    },
                    "plugin": "org.kde.plasma.weather"
                },
                {
                    "config": {
                    },
                    "plugin": "org.kde.plasma.systemtray"
                },
                {
                    "config": {
                    },
                    "plugin": "org.kde.plasma.marginsseparator"
                },
                {
                    "config": {
                        "/": {
                            "popupHeight": "550",
                            "popupWidth": "810"
                        },
                        "/Appearance": {
                            "autoFontAndSize": "false",
                            "customDateFormat": "ddd d -",
                            "dateDisplayFormat": "BesideTime",
                            "dateFormat": "custom",
                            "enabledCalendarPlugins": "holidaysevents",
                            "fontFamily": "Bitstream Vera Sans",
                            "fontStyleName": "Roman",
                            "fontWeight": "400",
                            "segmentOrder": "day,time",
                            "showDay": "true",
                            "use24hFormat": "2"
                        },
                        "/ConfigDialog": {
                            "DialogHeight": "540",
                            "DialogWidth": "720"
                        }
                    },
                    "plugin": "org.kde.plasma.digitalclock"
                }
            ],
            "config": {
                "/": {
                    "formfactor": "2",
                    "immutability": "1",
                    "lastScreen": "0",
                    "wallpaperplugin": "org.kde.image"
                }
            },
            "height": 1.875,
            "hiding": "normal",
            "lengthMode": "fill",
            "location": "bottom",
            "maximumLength": 120,
            "minimumLength": 120,
            "offset": 0,
            "opacity": "opaque"
        },
        {
            "applets": [
                {
                    "config": {
                        "/ConfigDialog": {
                            "DialogHeight": "540",
                            "DialogWidth": "720"
                        },
                        "/General": {
                            "displayedText": "Number",
                            "showOnlyCurrentScreen": "true",
                            "showWindowOutlines": "false"
                        }
                    },
                    "plugin": "org.kde.plasma.pager"
                },
                {
                    "config": {
                    },
                    "plugin": "org.kde.latte.separator"
                },
                {
                    "config": {
                        "/": {
                            "popupHeight": "375",
                            "popupWidth": "525"
                        }
                    },
                    "plugin": "org.kde.plasma.brightness"
                },
                {
                    "config": {
                        "/": {
                            "popupHeight": "375",
                            "popupWidth": "525"
                        },
                        "/General": {
                            "migrated": "true"
                        }
                    },
                    "plugin": "org.kde.plasma.volume"
                },
                {
                    "config": {
                    },
                    "plugin": "org.kde.latte.separator"
                },
                {
                    "config": {
                        "/": {
                            "popupHeight": "451",
                            "popupWidth": "810"
                        },
                        "/Appearance": {
                            "autoFontAndSize": "false",
                            "customDateFormat": "ddd d -",
                            "dateDisplayFormat": "BesideTime",
                            "dateFormat": "custom",
                            "enabledCalendarPlugins": "holidaysevents",
                            "fontFamily": "Bitstream Vera Sans",
                            "fontStyleName": "Roman",
                            "fontWeight": "400",
                            "use24hFormat": "2"
                        },
                        "/ConfigDialog": {
                            "DialogHeight": "540",
                            "DialogWidth": "720"
                        }
                    },
                    "plugin": "org.kde.plasma.digitalclock"
                }
            ],
            "config": {
                "/": {
                    "formfactor": "2",
                    "immutability": "1",
                    "lastScreen": "1",
                    "wallpaperplugin": "org.kde.image"
                }
            },
            "height": 4,
            "location": "bottom"
        }
    ],
    "serializationFormatVersion": "1"
}
;

plasma.loadSerializedLayout(layout);
