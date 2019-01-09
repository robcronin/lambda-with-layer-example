#!/bin/bash

echo 'ℹ️  Setting up ℹ️'
rm -rf dist
yarn
yarn webpack
echo '✅  Setting up complete ✅'


echo 'ℹ️  Copying files to /opt ℹ️'
sudo cp -r dist/access-ssm /opt
echo '✅  Copied fules to /opt ✅'


echo 'ℹ️  Cleaning up ℹ️'
rm -rf dist
echo '✅  Cleaned up ✅'
