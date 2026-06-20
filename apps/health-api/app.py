from flask import Flask, jsonify
import datetime

app = Flask(__name__)


@app.route("/")
def health():
    return jsonify({
        "status": "healthy",
        "service": "health-api",
        "timestamp": datetime.datetime.now().isoformat(),
    })


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
