module.exports = {
    runBackground: function (successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, 'Standby', 'runBackground', []);
    },
    stopBackground: function (successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, 'Standby', 'stopBackground', []);
    }
};