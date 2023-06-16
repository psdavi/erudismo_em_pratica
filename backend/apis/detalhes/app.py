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
  return make_response(jsonify({'message': 'test microsserviço detalhes'}), 200)

# get a user by id
@app.route('/palavras/<int:id>', methods=['GET'])
def get_palavra(id):
  try:
    palavras = Palavra.query.filter_by(id=id).first()
    if palavras:
      return make_response(jsonify({'palavra': palavras.json()}), 200)
    return make_response(jsonify({'message': 'palavra not found'}), 404)
  except e:
    return make_response(jsonify({'message': 'error getting palavra'}), 500)

