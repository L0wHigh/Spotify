import React from "react";
import {
  SafeAreaView,
  StyleSheet,
  TextInput,
  View,
  Text,
  Image,
  Pressable,
} from "react-native";
import { Feather } from "@expo/vector-icons";
import SearchGrid from "../components/SearchGrid";

const LibraryItem = () => {
  return (
    <SafeAreaView style={styles.container}>
      <View style={styles.inputBox}></View>
      <Text style={styles.text}>Mes Likes</Text>
      <View style={styles.content}>
        <Image style={styles.cover} source={require("../assets/song.png")} />
        <Text style={styles.text}>🅱🅸🅽🅺🆂 ❷.⓿</Text>
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
    marginTop: 15,
  },
  inputBox: {
    marginTop: 80,
  },
  searchIcon: { position: "absolute", top: 70, left: 30 },
  content: {
    flex: 1,
    flexDirection: "row",
    alignItems: "center",
    marginLeft: 10,
    marginBottom: 530,
  },
  cover: {
    width: 60,
    height: 60,
    borderRadius: 10,
    marginRight: 10,
  },
  textArtist: { color: "white", fontSize: 15, marginTop: 50 },
});

export default LibraryItem;
