import React from "react";

import { View, Text, Image, StyleSheet } from 'react-native';
import estilos from "./estilos";


export default function TitleBar() {

    return <View style={estilos.conteudo}>
        <View style={estilos.total}>
            <Text style={estilos.descricao}>Erudismo em Prática    </Text>
        </View>

        <View style={estilos.total}>


        <Image
    style={styles.tinyLogo}
    source={require('../../../assets/img/head_splash.png')}
  />



        </View>

    </View>

}

const styles = StyleSheet.create({
    container: {
      paddingTop: 50,
    },
    tinyLogo: {
      width: 80,
      height: 50,
    },
    logo: {
      width: 66,
      height: 58,
    },
  });