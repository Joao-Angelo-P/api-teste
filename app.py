from flask import Flask

app = Flask(__name__)


@app.route("/")
def index():
    return "<pre>{'teste':'mensagem de teste'}</pre>"


app.run()
