const helper = require("../../services/passwordHelper");
const { jwtGenerator } = require("../../services/loginHelper");
const { getUserByEmail, getUserById } = require('../model/userManager'); 

const login = async (req, res) => {
    try {
      const { email, password } = req.body;

      console.log(password);
  
      const userResult = await getUserByEmail(email);
  
      if (userResult.status !== 200) {
        return res.sendStatus(userResult.status);
      }
  
      const user = userResult.data;
  
      const passwordMatch = await helper.verifyPassword(user.password, password);
  
      if (!passwordMatch) {
        return res.status(401).json("Email or password is wrong");
      }
  
      const token = jwtGenerator(user.id);
      console.warn(token);
  
      const getUserResult = await getUserById(user.id);
  
      if (getUserResult.status !== 200) {
        return res.sendStatus(getUserResult.status);
      }
  
      const userData = getUserResult.data;
      delete userData.password;
      console.log(userData);
  
      return res
      .cookie("token", token, {
        httpOnly: true,
      })
      .cookie("user", userData, {
        httpOnly: false,
      })
      .status(200)
      .json({ message: "Login successful" });
    } catch (err) {
      console.error(err);
      return res.sendStatus(500);
    }
  };

// Fonction de déconnexion (commentée car elle n'est pas utilisée dans ce code)
// async function logoutController(req, res) {
//   return res.clearCookie("token").status(200).json("Successfully logged out");
// }

module.exports = { login };
