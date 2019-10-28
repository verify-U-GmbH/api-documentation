module.exports = {
  files: {
    javascripts: {
      joinTo: 'js/app.js'
    },
    stylesheets: {
      joinTo: {
        'css/app.css': /\.css$/
      }
    }
  },

  conventions: {
    // This option sets where we should place non-css and non-js assets in.
    // By default, we set this to "/assets/static". Files in this directory
    // will be copied to `paths.public`, which is "priv/static" by default.
    assets: /^(static)\/*/
  },

  paths: {
    watched: ['static', 'lib'],
    // Where to compile files to
    public: 'priv/static'
  },

  npm: {
    enabled: true,
    whitelist: ['jquery', 'bootstrap'],
    globals: {
      $: 'jquery'
    }
  },

  plugins: {
    babel: {
      ignore: [/vendor/]
    }
  },

  npm: {
    enabled: true
  }
};