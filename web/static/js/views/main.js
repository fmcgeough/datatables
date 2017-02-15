
// web/static/js/views/main.js
// Found this approach at https://blog.diacode.com/page-specific-javascript-in-phoenix-framework-pt-1
// seems to be a good idea for loading page-specific javascript with Phoenix
export default class MainView {
  mount() {
    // This will be executed when the document loads...
    console.log('MainView mounted');
  }

  unmount() {
    // This will be executed when the document unloads...
    console.log('MainView unmounted');
  }
}

global.bootstrap = require("bootstrap")
