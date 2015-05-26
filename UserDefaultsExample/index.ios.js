/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 */
'use strict';

var React = require('react-native');
var {
  AppRegistry,
  StyleSheet,
  Text,
  View,
} = React;

var UserDefaults = require('react-native-userdefaults');
UserDefaults.setObjectForKey('foo', 'bar')
.then(function(ret) {
  console.log('setObjectForKey callback');
  console.log(ret);
}).catch(function(error) {
  console.log('setObjectForKey error');
  console.log(error);
}).done();

var UserDefaultsExample = React.createClass({
  render: function() {
    UserDefaults.stringForKey('bar')
    .then(function(ret) {
      console.log('stringForKey callback');
      console.log(ret);
    }).catch(function(error) {
      console.log('stringForKey error');
      console.log(error);
    }).done();
    return (
      <View style={styles.container}>
        <Text style={styles.welcome}>
          Welcome to React Native!
        </Text>
        <Text style={styles.instructions}>
          To get started, edit index.ios.js
        </Text>
        <Text style={styles.instructions}>
          Press Cmd+R to reload,{'\n'}
          Cmd+D or shake for dev menu
        </Text>
      </View>
    );
  }
});

var styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});

AppRegistry.registerComponent('UserDefaultsExample', () => UserDefaultsExample);
