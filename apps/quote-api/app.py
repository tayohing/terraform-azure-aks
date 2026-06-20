from flask import Flask, jsonify
import random

app = Flask(__name__)

quotes = [
    "Infrastructure as code: because clicking buttons doesn't scale.",
    "There is no cloud, it's just someone else's computer.",
    "Automate yourself out of a job, then get a better one.",
    "If it hurts, do it more frequently and bring the pain forward.",
    "Monitoring is not optional, it's oxygen.",
    "The best incident response is prevention.",
]


@app.route("/")
def get_quote():
    return jsonify({"quote": random.choice(quotes)})


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
