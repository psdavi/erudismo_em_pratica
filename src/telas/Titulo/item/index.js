import { useNavigation } from "@react-navigation/native";
import React from "react";
import { TouchableOpacity, Text, View } from "react-native";
import estilos from "./estilos";


export default function Item({ conteudo, titulo, aplicacao  }) {
    const navigation = useNavigation();

    return <>
        <TouchableOpacity onPress={() => { navigation.navigate("Conteudo", { titulo: titulo, conteudo: conteudo, aplicacao: aplicacao }) }} style={estilos.informacao}>
            <Text style={estilos.nome}>{titulo}</Text>
        </TouchableOpacity>
        <View style={estilos.divisor} />
    </>
}