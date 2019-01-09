#!/bin/bash

echo 'ℹ️  Setting up ℹ️'
rm -rf dist
yarn
yarn webpack
echo '✅  Setting up complete ✅'

echo 'ℹ️  Zipping files ℹ️'
cd dist
zip -r access-ssm.zip access-ssm
cd ..
echo '✅  Files zipped ✅'
 
echo 'ℹ️  Creating Serverless package ℹ️'
sls package
mv dist/access-ssm.zip .serverless/access-ssm.zip
echo '✅  Serverless package created ✅'

echo 'ℹ️  Cleaning up ℹ️'
rm -rf dist
echo '✅  Cleaned up ✅'

echo 'ℹ️  Deploying ℹ️'
sls deploy --package .serverless
echo '✅  Successfully deployed ✅'
