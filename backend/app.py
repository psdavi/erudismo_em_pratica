from flask import Flask, request, jsonify, make_response
from flask_sqlalchemy import SQLAlchemy
from os import environ

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = environ.get('DB_URL')
db = SQLAlchemy(app)

class Palavra(db.Model):
    __tablename__ = 'palavras'

    id = db.Column(db.Integer, primary_key=True)
    titulo = db.Column(db.String(80), unique=True, nullable=False)
    conteudo = db.Column(db.String(120), unique=True, nullable=False)

    def json(self):
        return {'id': self.id,'titulo': self.titulo, 'conteudo': self.conteudo}

db.create_all()

#create a test route
@app.route('/test', methods=['GET'])
def test():
  return make_response(jsonify({'message': 'test route'}), 200)


# get all users
@app.route('/palavras', methods=['GET'])
def get_palavras():
  try:
    palavras = Palavra.query.all()
    return make_response(jsonify([palavra.json() for palavra in palavras]), 200)
  except e:
    return make_response(jsonify({'message': 'error getting palavras'}), 500)

# get a user by id
@app.route('/palavras/<int:id>', methods=['GET'])
def get_palavra(id):
  try:
    palavra = Palavra.query.filter_by(id=id).first()
    if palavra:
      return make_response(jsonify({'palavra': palavra.json()}), 200)
    return make_response(jsonify({'message': 'palavra not found'}), 404)
  except e:
    return make_response(jsonify({'message': 'error getting palavra'}), 500)

