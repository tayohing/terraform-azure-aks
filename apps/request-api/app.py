from flask import Flask, jsonify, request

app = Flask(__name__)


@app.route("/")
def info():
    return jsonify({
        "ip": request.remote_addr,
        "method": request.method,
        "headers": dict(request.headers),
        "url": request.url,
    })


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
