const path = require('path');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const { CleanWebpackPlugin } = require('clean-webpack-plugin');

module.exports = {
  devtool: 'source-map',
  entry: {
    main: './src/js/main.js',
    sub: './src/js/sub.js',
  },
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: 'js/[name]-[contenthash].js',
    publicPath: '/',
    chunkFilename: 'js/[name]-[contenthash].js',
  },
  optimization: {
    splitChunks: {
      chunks: 'initial',
      cacheGroups: {
        vendor: {
          test: /node_modules/,
          name: 'vendor',
        },
        vendorsModules: {
          chunks: 'initial',
          test: /src[\\/]js[\\/]modules/,
          name: 'vendor-modules',
          minSize: 0,
          minChunks: 2,
        },
      },
    },
  },
  module: {
    rules: [
      {
        test: /\.(ts|tsx)/,
        exclude: /node_modules/,
        use: [
          {
            loader: 'ts-loader',
          },
        ],
      },
      {
        test: /\.(js|jsx)/,
        exclude: /node_modules/,
        use: [
          {
            loader: 'babel-loader',
            options: {
              presets: [
                ['@babel/preset-env', { targets: '>0.25%,not dead' }],
                '@babel/preset-react',
              ],
            },
          },
        ],
      },
      {
        test: /\.(css|sass|scss)/,
        use: [
          {
            loader: MiniCssExtractPlugin.loader,
          },
          {
            loader: 'css-loader',
            options: {
              sourceMap: true, //開発時true,本番false
            },
          },
          {
            loader: 'postcss-loader',
          },
          {
            loader: 'sass-loader',
          },
        ],
      },
      {
        test: /\.(png|gif|svg|jpe?g)/,
        type: 'asset/resource',
        generator: {
          filename: 'img/[name]-[contenthash][ext]',
        },
        use: [
          {
            loader: 'image-webpack-loader',
            // options:{
            //   mozjpeg:{
            //     progressive:true,
            //     quality:70
            //   },
            // },
            // optipng:{
            //   quality:[0.65,0.90],
            //   speed:4
            // },
          },
        ],
      },
      {
        test: /\.pug/,
        use: [
          {
            loader: 'html-loader',
          },
          {
            loader: 'pug-html-loader',
            options: {
              pretty: true,
            },
          },
        ],
      },
    ],
  },
  devServer: {
    static: path.relative(__dirname, 'src'),
  },
  plugins: [
    new CleanWebpackPlugin(),
    new MiniCssExtractPlugin({
      filename: './css/[name]-[contenthash].css',
    }),
    new HtmlWebpackPlugin({
      template: './src/tmp/index.pug',
      filename: 'index.html',
      chunks: ['main'],
    }),
    new HtmlWebpackPlugin({
      template: './src/tmp/sub.pug',
      filename: 'sub.html',
      chunks: ['sub'],
    }),
    new HtmlWebpackPlugin({
      template: './src/tmp/second.pug',
      filename: 'second.html',
      chunks: ['main'],
    }),
    new HtmlWebpackPlugin({
      template: './src/tmp/members/taro.pug',
      filename: 'members/taro.html',
      chunks: ['main'],
    }),
  ],
};
