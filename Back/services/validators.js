const Joi = require("joi");
const { joiPasswordExtendCore } = require("joi-password");
const joiPassword = Joi.extend(joiPasswordExtendCore);

const userSchema = Joi.object({
  username: Joi.string().max(25).required(),
  // firstname: Joi.string().max(50).required(),
  // lastname: Joi.string().max(50).required(),
  email: Joi.string().email().max(200).required(),
  password: joiPassword
    .string()
    .minOfSpecialCharacters(1)
    .minOfLowercase(2)
    .minOfUppercase(1)
    .minOfNumeric(2)
    .noWhiteSpaces()
    .onlyLatinCharacters()
    .max(500)
    .required(),
  // profile_pic: Joi.string().max(500),
});



const validateUser = (req, res, next) => {
  const { username, email, password } = req.body;

  const { error } = userSchema.validate(
    { username, email, password },
    { abortEarly: false }
  );

  if (error) {
    res.status(422).json({ validationErrors: error.details });
  } else {
    next();
  }
};

module.exports = { validateUser };
