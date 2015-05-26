'use strict';

var UserDefaultsManager = require('NativeModules').RNUserDefaultsManager;

var UserDefaults = {
  setObjectForKey(value, key) {
    return new Promise((resolve, reject) => {
      UserDefaultsManager.setObject(value, key, (error, ret) => {
        if (error) {
          reject(error);
        } else {
         resolve(ret);
        }
      });
    });
  },
  stringForKey(key) {
    return new Promise((resolve, reject) => {
      UserDefaultsManager.stringForKey(key, (error, ret) => {
        if (error) {
          reject(error);
        } else {
          resolve(ret);
        }
      });
    });
  }
};

module.exports = UserDefaults;
