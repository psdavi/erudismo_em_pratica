import { StyleSheet } from 'react-native';
import { color } from '../../estilos';

export default StyleSheet.create({
  informacao: {
  },
  nome: {
    color: color.black,
    fontSize: 14,
    fontFamily: "ArvoRegular"
  },
  dados: {
    marginTop: 10,
    paddingLeft: 30,
    paddingRight: 30,
    color: color.black,
    fontSize: 16,
    fontFamily: "ArvoBold",
    textAlign: "justify",

  },
  aplicacaoTitle: {
    color: color.black,
    fontSize: 16,
    fontFamily: "sans-serif-condensed",
    textAlign: "center",
    padding: 10,
  },

  aplicacaoContent: {
    color: color.black,
    fontSize: 12,
    fontFamily: "ArvoBold",
    textAlign: "center",
    padding: 10,
  },

  aplicacaoResume: {
    color: color.black,
    fontSize: 11,
    fontFamily: "ArvoRegular"
  },


  titulo: {
    color: color.black,
    fontSize: 16,
    fontFamily: "ArvoBold",
    textAlign: "center",
    marginTop: 20
  },
  footerText: {
    color: 'white',
    marginBottom: 80

  },
});
