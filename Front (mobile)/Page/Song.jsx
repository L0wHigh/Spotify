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

const SongTable = () => {
  const [song, setSong] = useState([]);

  useEffect(() => {
    async function getSong() {
      try {
        const response = await fetch("http://192.168.1.145:8888/song", {
          method: "GET",
          headers: {
            "Content-Type": "application/json",
          },
        });

        if (response.ok) {
          const data = await response.json();
          setSong(data);
          console.log("Genres récupérés :", data);
        } else {
          console.error("Erreur lors de la récupération des genres.");
        }
      } catch (err) {
        console.error("Erreur :", err);
      }
    }

    getSong();
  }, []);
  return (
    <SafeAreaView style={styles.container}>
      <View style={styles.inputBox}></View>
      <Text style={styles.text}>Mes Likes</Text>
      <View style={styles.content}>
        <View style={styles.songItem}>
          <Image style={styles.cover} source={require("../assets/song.png")} />
          <View style={styles.textBox}>
            <Text style={styles.title}>🅱🅸🅽🅺🆂 ❷.⓿</Text>
            <Text style={styles.artistName}>artistName</Text>
          </View>
        </View>
        <Pressable style={{ marginTop: 20 }}>
          <Entypo name="dots-three-horizontal" size={20} color="grey" />
        </Pressable>
      </View>
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
    fontSize: 15,
    fontWeight: "bold",
    marginLeft: 10,
    marginTop: 25,
  },
  inputBox: {
    marginTop: 90,
  },
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

export default SongTable;
