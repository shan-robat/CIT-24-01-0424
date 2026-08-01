from flask import Flask
import redis
import os

app = Flask(__name__)
r = redis.Redis(host=os.getenv('REDIS_HOST', 'localhost'), port=6379)

@app.route('/')
def hello():
    try:
        visits = r.incr('counter')
    except Exception as e:
        visits = "Error connecting to Redis"
    return f"<h1>Docker Web Application</h1><p>Visitor Count: {visits}</p>"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
