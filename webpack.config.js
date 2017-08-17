"use strict";

const webpack = require("webpack");

let devtool = false;

let env = process.env.NODE_ENV || process.env.RAILS_ENV || 'development';

// Define plugin
let plugins = [
  new webpack.DefinePlugin({
    NODE_ENV: env,
  }),
];

if (env === 'production') {
  // in production
  plugins.concat([
    new webpack.optimize.DedupePlugin(),
    new webpack.optimize.AggressiveMergingPlugin(),
    new webpack.optimize.UglifyJsPlugin({
      compress: {
        warnings: false
      },
      sourceMap: false
    })
  ]);
} else {
  // in development
  devtool = '#eval-source-map';
};

module.exports = {
  entrypoints: ['app/frontends/application.js'],

  webpack: {
    target: 'web',
    cache: true,
    devtool: devtool,
    plugins: plugins,
    module: {
      loaders: [
        { test: /\.json$/, loader: 'json-loader' },
        {
          test: /\.js$/,
          exclude: /node_modules/,
          loader: 'babel-loader'
        }
      ]
    }
  }
};

