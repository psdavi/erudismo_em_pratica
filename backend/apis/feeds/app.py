from flask import Flask, request, jsonify, make_response
from flask_sqlalchemy import SQLAlchemy
from os import environ

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = environ.get('DB_URL')
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
app.run(host='0.0.0.0', port=4000)
db = SQLAlchemy(app)

class Palavra(db.Model):
    __tablename__ = 'palavras'

    id = db.Column(db.Integer, primary_key=True)
    titulo = db.Column(db.String(80), unique=True, nullable=False)
    conteudo = db.Column(db.String(120), unique=True, nullable=False)
    aplicacao1 = db.Column(db.String(120), unique=True, nullable=False)


    def json(self):
        return {'id': self.id,'titulo': self.titulo, 'conteudo': self.conteudo, 'aplicacao1': self.aplicacao1}

db.create_all()

#create a test route
@app.route('/', methods=['GET'])
def test():
  return make_response(jsonify({'message': 'test microsserviço feeds'}), 200)


# get all users
@app.route('/palavras', methods=['GET'])
def get_palavras():
  try:
    palavras = Palavra.query.all()
    return make_response(jsonify([palavra.json() for palavra in palavras]), 200)
  except e:
    return make_response(jsonify({'message': 'error getting palavras'}), 500)
