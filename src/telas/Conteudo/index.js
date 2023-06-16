import React from "react";
import { ScrollView, Text, TouchableOpacity, View, Button, StyleSheet } from "react-native";
import estilos from "./estilos";
import { useNavigation } from "@react-navigation/native";
import Icon from 'react-native-vector-icons/MaterialIcons';



export default function Conteudo({ route }) {

    const styles = StyleSheet.create({
        container: {
            position: 'absolute',
            bottom: 20,
            right: 20,
            width: 60,
            height: 60,
            borderRadius: 30,
            backgroundColor: '#008000',
            justifyContent: 'center',
            alignItems: 'center',
        },
    });


    const navigation = useNavigation();

    const { titulo, conteudo, aplicacao } = route.params

    return <View style={estilos.informacao}>


        <ScrollView style={{ flex: 0 }}>
            <Text style={estilos.titulo}><Text>{titulo}{"\n"}</Text></Text>


            <Text style={estilos.dados}><Text style={estilos.nome}>{conteudo}</Text></Text>



    {/*         <Text style={estilos.aplicacaoTitle}> Aplicação 1:{"\n"}{"\n"}  <Text>
                <Text style={estilos.aplicacaoContent}>{aplicacao1}{"\n"}{"\n"}</Text>
            </Text>
            </Text>

            <Text style={estilos.aplicacaoTitle}> Aplicação 2:{"\n"}{"\n"}  <Text>
                <Text style={estilos.aplicacaoContent}>{aplicacao.app2.frase}{"\n"}{"\n"}</Text>
                <Text style={estilos.aplicacaoResume}>{aplicacao.app2.resumo}</Text>
            </Text>
            </Text>

            <Text style={estilos.aplicacaoTitle}> Aplicação 3:{"\n"}{"\n"}  <Text>
                <Text style={estilos.aplicacaoContent}>{aplicacao.app3.frase}{"\n"}{"\n"}</Text>
                <Text style={estilos.aplicacaoResume}>{aplicacao.app3.resumo}</Text>
            </Text>
            </Text>

            <Text style={estilos.aplicacaoTitle}> Aplicação 4:{"\n"}{"\n"}  <Text>
                <Text style={estilos.aplicacaoContent}>{aplicacao.app4.frase}{"\n"}{"\n"}</Text>
                <Text style={estilos.aplicacaoResume}>{aplicacao.app4.resumo}</Text>
            </Text>
            </Text>

            <Text style={estilos.aplicacaoTitle}> Aplicação 5:{"\n"}{"\n"}  <Text>
                <Text style={estilos.aplicacaoContent}>{aplicacao.app5.frase}{"\n"}{"\n"}</Text>
                <Text style={estilos.aplicacaoResume}>{aplicacao.app5.resumo}</Text>
            </Text>
            </Text>
 */}
            <TouchableOpacity onPress={() => {  }}>
            <Text style={estilos.footerText}>Reportar esta palavra<Icon name="report" size={24} color="red" />{"\n"}  <Text>
            </Text>
            </Text>
        </TouchableOpacity>

        </ScrollView>


        <TouchableOpacity style={styles.container} onPress={() => { navigation.goBack() }}>
            <Icon name="arrow-left" size={30} color="#fff" />
        </TouchableOpacity>
    </View>


}