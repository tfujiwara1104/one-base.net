const { merge } = require('webpack-merge');
const commonConfig = require('./webpack.common.js');
const path = require('path');

module.exports = merge(commonConfig, {
  mode: 'development',
  devtool: 'source-map',
  devServer: {
    open: true,
    port: 9000,
    static: {
      directory: path.join(__dirname, 'dist'),
    },
  },
});
