import boto3

ec2 = boto3.resource('ec2')

instance = ec2.create_instances(
    ImageId='ami-04d29b6f966df1537',
    InstanceType='t2.micro',
    KeyName='mylaptopkey',
    MinCount=1,
    MaxCount=1
    )
print(instance[0].id)