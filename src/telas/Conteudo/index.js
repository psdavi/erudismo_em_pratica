import React from "react";
import { ScrollView, Text, TouchableOpacity, View, Button } from "react-native";
import estilos from "./estilos";
import { useNavigation } from "@react-navigation/native";


export default function Conteudo({ route }) {

    const navigation = useNavigation();

    const { titulo, conteudo, aplicacao } = route.params

    return <View style={estilos.informacao}>
                <Button
                title="Vooltar"
                onPress={() => { navigation.goBack() }}
                />
                <ScrollView style={{flex:0}}>
            <Text style={estilos.titulo}><Text>{titulo}{"\n"}</Text></Text>





<Text style={estilos.dados}><Text style={estilos.nome}>{conteudo}</Text></Text>

    <Text>
    </Text>

    <Text style={estilos.titulo}><Text>Aplicações{"\n"}</Text></Text>


    <Text style={estilos.aplicacao}> Aplicação 1:{"\n"}  <Text>
    <Text style={estilos.aplicacao}>{aplicacao.app1.frase}{"\n"}</Text>
    <Text style={estilos.aplicacao}>{aplicacao.app1.resumo}</Text>
    </Text> 
    </Text>

    <Text style={estilos.aplicacao}> Aplicação 2:{"\n"}  <Text>
    <Text style={estilos.aplicacao}>{aplicacao.app2.frase}{"\n"}</Text>
    <Text style={estilos.aplicacao}>{aplicacao.app2.resumo}</Text>
    </Text> 
    </Text>

    <Text style={estilos.aplicacao}> Aplicação 3:{"\n"}  <Text>
    <Text style={estilos.aplicacao}>{aplicacao.app3.frase}{"\n"}</Text>
    <Text style={estilos.aplicacao}>{aplicacao.app3.resumo}</Text>
    </Text> 
    </Text>

    <Text style={estilos.aplicacao}> Aplicação 4:{"\n"}  <Text>
    <Text style={estilos.aplicacao}>{aplicacao.app4.frase}{"\n"}</Text>
    <Text style={estilos.aplicacao}>{aplicacao.app4.resumo}</Text>
    </Text> 
    </Text>

    <Text style={estilos.aplicacao}> Aplicação 5:{"\n"}  <Text>
    <Text style={estilos.aplicacao}>{aplicacao.app5.frase}{"\n"}</Text>
    <Text style={estilos.aplicacao}>{aplicacao.app5.resumo}</Text>
    </Text> 
    </Text>

    <Text style={estilos.footerText}>Rodape{"\n"}  <Text>
    </Text> 
    </Text>





</ScrollView>
    </View>
}