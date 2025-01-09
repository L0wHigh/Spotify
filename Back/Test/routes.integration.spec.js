// const request = require("supertest");
const app = require("../src/app");
// // const connection = require("../db");

// describe("Test routes users", () => {
//   //   beforeEach(async () => {
//   //     try {
//   //       const results = await connection.promise().query("SELECT * FROM wine");
//   //       global.testMessages = results[0];
//   //     } catch (error) {
//   //       throw error;
//   //     }
//   //   });

//   it("GET /users", async () => {
//     try {
//       const response = await request(app)
//         .get("/users")
//         .expect(200)
//         .expect("Content-Type", /json/);
//       expect(response.body).toEqual(global.testMessages);
//     } catch (error) {
//       throw error;
//     }
//   });
// }, 10000);

// users.test.js
const request = require("supertest");

// describe("POST /users", () => {
//   test("Création d'un nouvel utilisateur", async () => {
//     const userData = {
//       username: "testuser",
//       email: "test@example.com",
//       password: "##Password123",
//     };

//     const response = await request(app).post("/users-test").send(userData);
//     console.log(response.body);
//     expect(response.status).toBe(201);

//     expect(response.body).toHaveProperty("username", userData.username);
//     expect(response.body).toHaveProperty("email", userData.email);
//   });
// });

describe("POST /artists", () => {
  test("Création d'un nouvel artiste associé à un utilisateur existant", async () => {
    const userData = {
      username: "testuser",
      email: "test@example.com",
      password: "##Password123",
    };

    const userResponse = await request(app).post("/users-test").send(userData);
    const user = userResponse.body;


    const artistData = {
      name: "Test Artist",
      genre: "Test Genre",
      users_id: parseInt(user.id), 
    };

    const response = await request(app).post("/artists").send(artistData);
    expect(response.status).toBe(201);

    expect(response.body).toHaveProperty("name", artistData.name);
   
  });
});
