import React, { useState, useEffect } from "react";
import { ActivityIndicator, Button, FlatList, StyleSheet, Text, TextInput } from "react-native";
import Item from "./item";
import { View } from "react-native";
import axios from 'axios';
import { create } from 'axios-extensions';


export default function Titulo(item) {
  const [nextPage, setNextPage] = useState(1);
  const [content, setContent] = useState([]);
  const [loading, setLoading] = useState(false);
  const [searchText, setSearchText] = useState('');
  const [showPopup, setShowPopup] = useState(true);



  const getTitulos = () => {
        axios.get('http://10.0.0.206:4000/palavras')
            .then(res => {
                const titu = res.data;
                setContent(titu);
            })
    }

    useEffect(() => {
        getTitulos()
    }, [])



  const loadContent = () => {
    const contentLimited = content;
    const page = nextPage;
    const limitedData = contentLimited.filter((item) => item.id <= page);

    setContent([...content, ...limitedData]);
    setNextPage(page + 1);
    setLoading(false);
  };

  const filteredContent = searchText
    ? content.filter(
        (item) =>
          item.titulo &&
          item.titulo.toLowerCase().includes(searchText.toLowerCase())
      )
    : content;

console.log(content,"zeca")

    return (
        <>
            <View style={{
                zIndex: showPopup ? 9999 : 0,
                display: 'flex',
                justifyContent: 'center',
                alignItems: 'center',
                position: 'absolute',
                top: 0,
                bottom: 0,
                left: 0,
                right: 0,
                pointerEvents: showPopup ? 'auto' : 'none'
            }}>
                {showPopup && (
                    <View style={{
                        display: "flex",
                        justifyContent: "center",
                        alignItems: "center",
                        backgroundColor: 'rgba(255, 255, 255, 1)',
                        padding: 20,
                        borderRadius: 20

                    }}>
                        <Text style={{ fontSize: 20, color: "#428a41" }}>Atenção! {'\n'}</Text>
                        <Text>
                            Este aplicativo não foi desenvolvido com o intuito de ofender pessoas e sim para educar as pessoas. {"\n\n"}

                            Estas palavras ofensivas contidas no aplicativo são palavras que precisamos evitar no nosso cotidiano.
                            Caso seja necessário aplicá-las em frases, ou direcioná-las para alguém, você pode consultar uma maneira
                            formal de proferir algo semelhante ao significado desta palavra ofensiva, porém sem ser ofensivo. {"\n\n"}

                            Esta é uma forma de trazer o erudismo pro seu dia-a-dia. {"\n\n"}

                            Muito Importante: Nenhuma palavra ou conteúdo pejorativo de cunho sexual, misógino, racista, homosexual, gordofóbico
                            ou qualquer outro tipo de ofensas que atinja grupos vulneráveis ou minorias devem conter neste guia.
                            Caso você perceba alguma ou se sinta atingido, voce pode reportar a palavra para que possa ser removida. {"\n\n"}

                            Se você acha que esse aplicativo é desnecessário e não deveria existir, por favor nos informe usando o botão de feedback informando o motivo
                            para que possamos analisar e considerar a descontinuação desta ferramenta.

                        </Text>
                        <Text style={{ alignSelf: 'center', marginTop: 20 }}>
                            <Button color={"#428a41"} title="Concordo" onPress={() => setShowPopup(false)} />
                        </Text>
                    </View>
                )}
            </View>
            
             <TextInput
                style={styles.searchInput}
                placeholder="Pesquisar..."
                onChangeText={setSearchText}
                value={searchText}
            />
            <FlatList
                data={filteredContent}
                renderItem={({ item, index }) => <Item index={index} {...item} />}
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