import { getSSM } from '/opt/access-ssm';

export const hello = async () => {
  const secrets = await getSSM(['test_secret']);
  return {
    statusCode: 200,
    body: JSON.stringify({
      message: 'Go Serverless v1.0! Your function executed successfully!',
      secret: secrets[0],
    }),
  };
};
