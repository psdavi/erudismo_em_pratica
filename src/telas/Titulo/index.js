import React, { useState } from "react";
import { ActivityIndicator, FlatList, StyleSheet, TextInput } from "react-native";
import Item from "./item";
import { Conteudo } from "../../../dicionario";


export default function Titulo(item) {
    const [nextPage, setNextPage] = useState(1);
    const [content, setContent] = useState([Conteudo]);
    const [loading, setLoading] = useState(false);
    const [searchText, setSearchText] = useState('');

    const loadContent = () => {
        const contentLimited = Conteudo;
        const page = nextPage;
        const content = contentLimited.filter((item) => item.id <= page)

        setContent(content)
        setNextPage(page + 1)
        setLoading(false)
    }


    const filteredContent = searchText
        ? content.filter(
            (item) =>
                item.titulo &&
                item.titulo.toLowerCase().includes(searchText.toLowerCase())
        )
        : content;

    return (
        <>
            <TextInput
                style={styles.searchInput}
                placeholder="Pesquisar..."
                onChangeText={setSearchText}
                value={searchText}
            />
            <FlatList
                data={filteredContent}
                renderItem={({ item }) => <Item {...item} />}
                keyExtractor={({ id }) => String(id)}
                onEndReached={loadContent}
                onEndReachedThreshold={0.1}
            // ListFooterComponent={<Load Load={loading} />}
            />
        </>
    )
}

const styles = StyleSheet.create({
    searchInput: {
        height: 40,
        borderWidth: 1,
        color: '#428a41',
        borderColor: '#428a41',
        borderRadius: 4,
        padding: 8,
        margin: 8,
    },
});



// function Load({ Load }) {
//     return (
//         <View style={estilos.espaco}>
//             <ActivityIndicator size={25} color="#000000" />
//         </View>
//     )
// } 