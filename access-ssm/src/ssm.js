import Aws from 'aws-sdk';

const ssm = new Aws.SSM({
  region: 'eu-west-1',
});

const getSSM = namesArray =>
  new Promise((resolve, reject) => {
    ssm.getParameters(
      {
        Names: namesArray,
        WithDecryption: true,
      },
      (err, data) =>
        err ? reject(err) : resolve(data.Parameters.map(parameter => parameter.Value)),
    );
  });

export default getSSM;
