FROM rabbitmq:3.5.6

RUN curl -o /usr/lib/rabbitmq/lib/rabbitmq_server-3.5.6/plugins/autocluster-0.4.1.ez -SL https://github.com/aweber/rabbitmq-autocluster/releases/download/0.4.1/autocluster-0.4.1.ez

ENV AUTOCLUSTER_TYPE etcd

RUN rabbitmq-plugins enable autocluster

