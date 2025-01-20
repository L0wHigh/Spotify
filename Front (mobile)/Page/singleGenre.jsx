import React, { useEffect, useState } from "react";
import {
  SafeAreaView,
  StyleSheet,
  View,
  Text,
  Image,
  Pressable,
} from "react-native";
import { Entypo } from "@expo/vector-icons";

const SingleGenre = ({ route }) => {
  const [song, setSong] = useState([]);
  const [genre, setGenre] = useState();
  const { genreId } = route.params;

  useEffect(() => {
    async function getGenres() {
      try {
        const response = await fetch(
          `http://192.168.1.145:8888/songsByGenre/${genreId}`,
          {
            method: "GET",
            headers: {
              "Content-Type": "application/json",
            },
          }
        );

        if (response.ok) {
          const data = await response.json();
          setSong(data);
          //   console.log("Musiques récupérés :", data);
        } else {
          console.error("Erreur lors de la récupération des genres.");
        }
      } catch (err) {
        console.error("Erreur :", err);
      }
    }

    getGenres();
  }, []);

  useEffect(() => {
    async function getGenres() {
      try {
        const response = await fetch(
          `http://192.168.1.145:8888/genres/${genreId}`,
          {
            method: "GET",
            headers: {
              "Content-Type": "application/json",
            },
          }
        );

        if (response.ok) {
          const data = await response.json();
          setGenre(data);
          //   console.log("Genres récupérés :", data);
        } else {
          console.error("Erreur lors de la récupération des genres.");
        }
      } catch (err) {
        console.error("Erreur :", err);
      }
    }

    getGenres();
  }, []);

  console.log(song);
  return (
    <SafeAreaView style={styles.container}>
      <View
        style={[styles.inputBox, { backgroundColor: genre?.categoryColor }]}
      >
        <Text style={styles.text}>{genre?.categoryName}</Text>
      </View>
      {song.map((music) => (
        <View style={styles.content} key={music.id}>
          <View style={styles.songItem}>
            <Image
              style={styles.cover}
              source={require("../assets/song.png")}
            />
            <View style={styles.textBox}>
              <Text style={styles.title}>{music.title}</Text>
              <Text style={styles.artistName}>{music.artist}</Text>
            </View>
          </View>
          <Pressable style={{ marginTop: 20 }}>
            <Entypo name="dots-three-horizontal" size={20} color="grey" />
          </Pressable>
        </View>
      ))}
    </SafeAreaView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  input: {
    height: 40,
    margin: 12,
    borderWidth: 1,
    borderRadius: 7,
    borderColor: "white",
    backgroundColor: "white",
    padding: 10,
    paddingLeft: 50,
    fontSize: 13,
    fontWeight: "bold",
  },
  text: {
    color: "white",
    fontSize: 25,
    fontWeight: "bold",
    marginLeft: 10,
    marginTop: 50,
  },
  inputBox: { height: 100 },
  searchIcon: { position: "absolute", top: 70, left: 30 },
  content: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
    marginLeft: 10,
    marginRight: 10,
    marginBottom: 530,
  },
  cover: {
    width: 60,
    height: 60,
    borderRadius: 10,
    marginRight: 10,
    marginTop: 25,
  },
  songItem: {
    flexDirection: "row",
    alignItems: "center",
  },
  title: {
    color: "white",
    fontSize: 15,
    fontWeight: "bold",
    marginRight: 5,
  },
  artistName: {
    color: "white",
    fontSize: 15,
    fontWeight: "bold",
  },
  textBox: {
    marginTop: 20,
    marginLeft: 10,
  },
});

export default SingleGenre;
