import unittest
import requests

URL_DETALHES ='http://localhost:4002/palavras'
URL_FEEDS = 'http://localhost:4001/palavras'

class APITest(unittest.TestCase):
    def test_sucesso_status_ok_e_lista_feeds_nao_vazia(self):
        response = requests.get(URL_FEEDS)

        self.assertEqual(response.status_code, 200, "A resposta não é 200")
        self.assertTrue(response.json(), "O atributo 'content' está vazio")

    def test_sucesso_status_ok_detalhe(self):
        response = requests.get(URL_DETALHES + '/1')
        self.assertEqual(response.status_code, 200, "A resposta não é 200")

    def test_sucesso_status_not_found(self):
            response = requests.get(URL_DETALHES + '/99')
            self.assertEqual(response.status_code, 404, "A resposta não é 404")

if __name__ == '__main__':
    unittest.main()