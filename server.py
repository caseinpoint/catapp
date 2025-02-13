"""Flask server for cats app."""

from flask import Flask, render_template
from model import Cat, connect_to_db
import os

app = Flask(__name__)

connect_to_db(app)


@app.route("/")
def homepage():
    """Simple greeting."""

    return render_template("home.html", secret=os.environ["BEST_SPECIES"])


@app.route("/cats")
def cats():
    """Show list of cats."""

    cats = Cat.query.all()
    return render_template("cats.html", cats=cats)


@app.route("/err")
def raise_err():
    """Route that throws error; just for testing."""

    raise Exception("Oh no! A contrived error!")


if __name__ == "__main__":
    app.run(debug=True)