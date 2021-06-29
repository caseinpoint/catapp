"""Seed process for cats app database."""

from model import connect_to_db, db, Cat


def seed_cats():
    """Seed cats."""

    azrael = Cat(name="Azrael")
    tom = Cat(name="Tom")
    db.session.add(azrael)
    db.session.add(tom)
    db.session.commit()


if __name__ == "__main__":
    from flask import Flask  # make fake app

    app = Flask(__name__)
    connect_to_db(app)  # connect DB to it

    seed_cats()  # seed starter data
