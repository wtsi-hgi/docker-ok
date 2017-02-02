FROM ruby:2.4.0

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
         python-openstackclient \
    && rm -rf /var/lib/apt/lists/*

# Install test kitchen
RUN gem install test-kitchen kitchen-openstack

# Set workdir and entrypoint
WORKDIR /tmp
ENTRYPOINT []
