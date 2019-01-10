# A node lambda with layer example

This is an example repo of a lambda with a layer generated using the two template repos:

- [Lambda template w/ optional support for layers](https://github.com/robcronin/serverless-lambda-with-optional-layer-template)
- [Layer template](https://github.com/robcronin/serverless-layer-template)

The layer is code to fetch an array of SSM secrets and the lambda uses this to return a test secret

This repo is only intended to be used a reference to a complete version of using the two templates

- To see how to configure your own versions see the two templates above

## Deployment

Assuming you have your AWS credentials set up (if not see [here](https://serverless.com/framework/docs/providers/aws/guide/credentials/))

- `git clone git@github.com:robcronin/lambda-with-layer-example.git`
- Deploy layer:
  - `cd access-ssm`
  - `yarn`
  - `yarn deploy`
  - `cd ..`
- Deploy lambda:
  - `cd lambda-with-ssm-layer`
  - `yarn`
  - `yarn deploy`
