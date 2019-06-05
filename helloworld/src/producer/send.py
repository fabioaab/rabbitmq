import pika
from time import sleep 

connection = pika.BlockingConnection(pika.ConnectionParameters('rabbitmq'))

channel = connection.channel()
channel.queue_declare(queue='hello')
for i in range(0,10):
    channel.basic_publish(exchange='', routing_key='hello', body=f'Hello World! {i}')
    sleep(1)

print(" [x] Sent 'Hello World!'")
connection.close()