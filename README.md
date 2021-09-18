# Heroku "Hello, World!", with Flask

A "Hello, World!" [Heroku](https://www.heroku.com/) app, written in [Python](https://github.com/python), using [Flask](https://github.com/pallets/flask/). Automatically deployed by Heroku when changes pushed to `main` pass the tests (carried out by [GitHub Actions](https://docs.github.com/en/actions), see [here](https://devcenter.heroku.com/articles/github-integration#enabling-github-integration) for Heroku set up).

- [Web page of this app (public).](https://sradc-hello-heroku.herokuapp.com/)
- [Project page of this app on Heroku (private).](https://dashboard.heroku.com/apps/sradc-hello-heroku/)

# Installation

To be able to run the app locally, set up a Python environment, and install `requirements.txt`:
```bash
pip install -r requirements.txt
```

The app can be started with:
```
python wsgi.py
```
Open the url printed to the console in a web browser.

# Tests

The tests are written so that they can be run locally, as well as from GitHub actions.

To be able to run the tests locally, set up a Python environment, and install `requirements.txt` and `requirements-test.txt`:
```bash
pip install -r requirements.txt
pip install -r requirements-test.txt
```

To run the tests:
```bash
bash run_tests.sh
```

This will:
- Look for syntax errors using [flake8](https://github.com/pycqa/flake8).
- Check that all the `.py` files are formatted with [Black](https://github.com/psf/black).
- Run [pytest](https://github.com/pytest-dev/pytest/) tests (e.g. `tests/test_app.py`).
