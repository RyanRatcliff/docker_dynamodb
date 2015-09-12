FROM ryanratcliff/java8
MAINTAINER Ryan Ratcliff <ryan.ratcliff@ryanratcliff.net>
ENV refreshed_at 2015-09-04

RUN mkdir /opt/dynamodb_local
RUN wget -q -O - http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_2015-07-16_1.0.tar.gz | tar -xzf - -C /opt/dynamodb_local

WORKDIR /opt/dynamodb_local

EXPOSE 8000

ENTRYPOINT ["/usr/bin/java", "-Djava.library.path=/opt/dynamodb_local/DynamoDBLocal_lib", "-jar", "DynamoDBLocal.jar", "-sharedDb"]
