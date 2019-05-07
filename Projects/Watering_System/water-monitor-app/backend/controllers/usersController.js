const validators = require('../helpers/validators');
const response = require('../helpers/response');
const mailer = require('../helpers/mailer');
const errors = require('../globals/errors');
const helpers = require('../globals/helpers');
const userQuery = require('../database/userQ');
const secure = require('../helpers/secure');


const USER_ORIGIN = helpers.USER.ORIGIN;

let that = this;

/**
 * Signs in a standard user via email and password
 * @param req
 * @param res
 * @returns {Promise<void>}
 */
exports.signInStandard = async function (req, res) {
    if (validators.fieldsValid('signIn', req.body, res)) {
        await that.signIn(req.body, USER_ORIGIN.STANDARD, res);
    }

};

/**
 * Signs up a standard user via email and password
 * @param req
 * @param res
 * @returns {Promise<void>}
 */
exports.signUpStandard = async function (req, res) {
    if (validators.fieldsValid('signUp', req.body, res)) {
        let clientReq = req.body;
        let user = await userQuery.findUserByEmail(clientReq.email);
        clientReq.firstName = clientReq.email.split('@')[0];
        clientReq.lastName = '';
        if (user && user.length > 0) {
            response.sendError(401, errors.EMAIL_EXISTS, res);
        } else {
            await that.signUp(clientReq, USER_ORIGIN.STANDARD, res);
        }
    }
};


/**
 * Updates a standard user details
 * @param req
 * @param res
 * @returns {Promise<void>}
 */
exports.updateBasic = async function (req, res) {
    let clientReq = req.body;
    let user = await userQuery.findUserByEmail(clientReq.email);
    if (!user || user.length === 0) {
        response.sendError(401, errors.EMAIL_NOT_EXISTS, res);
    } else {
        try {
            let userUpdated = await userQuery.updateUser(user[0].id, clientReq);
            if (userUpdated.affectedRows) {
                user = await userQuery.findUserByEmail(clientReq.email);
                response.sendResponse(user[0], res);
            }
        } catch (err) {
            response.sendError(501, errors.USER_NOT_UPDATED, res, err);
        }
    }
};
/**
 * Updates user photo
 * @param req
 * @param res
 * @returns {Promise<void>}
 */
exports.updateProfilePhoto = async function (req, res) {
    let clientReq = req.body;
    let user = await userQuery.findUserByEmail(clientReq.email);
    if (!user || user.length === 0) {
        response.sendError(401, errors.EMAIL_NOT_EXISTS, res);

    } else {
        try {
            let userUpdated = await userQuery.updateUserPhoto(user[0].id, clientReq);
            if (userUpdated.affectedRows) {
                user = await userQuery.findUserByEmail(clientReq.email);
                response.sendResponse(user[0], res);
            }
        } catch (err) {
            response.sendError(501, errors.USER_NOT_UPDATED, res, err);
        }
    }
};

/**
 * Updates a standard user details
 * @param req
 * @param res
 * @returns {Promise<void>}
 */
exports.changeEmail = async function (req, res) {
    let clientReq = req.body;
    let user = await userQuery.findUserByEmail(clientReq.oldEmail);
    if (!user || user.length === 0) {
        response.sendError(401, errors.EMAIL_NOT_EXISTS, res);
    } else {
        try {
            let emailExist = await userQuery.findUserByEmail(clientReq.email);
            if (emailExist && emailExist.length > 0 && emailExist[0].id !== user[0].id) {
                response.sendError(401, errors.EMAIL_EXISTS, res);
            } else {
                try {
                    clientReq.oldEmail = clientReq.email;
                    let updatedUser = await userQuery.updateEmail(user[0].id, clientReq);
                    if (updatedUser.affectedRows) {
                        let newUser = await userQuery.findUserByEmail(clientReq.email);
                        if (!newUser || newUser.length === 0) {
                            response.sendError(401, errors.USER_NOT_UPDATED, res);
                        } else {
                            response.sendResponse(newUser[0], res);
                        }
                    }
                } catch (err) {
                    response.sendError(501, errors.USER_NOT_UPDATED, res);
                }
            }
        } catch (err) {
            response.sendError(501, errors.USER_NOT_UPDATED, res);
        }


    }
};

/**
 * Sets new password to user (forgot password)
 * @param req
 * @param res
 * @returns {Promise<void>}
 */
exports.setNewPassword = async function (req, res) {
    let clientReq = req.body;
    let user = await userQuery.findUserByEmail(clientReq.email);
    if (!user || user.length === 0) {
        response.sendError(401, errors.EMAIL_NOT_EXISTS, res);
    } else {
        try {
            let updatedUser = await userQuery.updatePassword(user[0].id, clientReq);
            if (updatedUser.affectedRows) {
                let newUser = await userQuery.findUserByEmail(clientReq.email);
                if (!newUser || newUser.length === 0) {
                    response.sendError(401, errors.USER_NOT_UPDATED, res);
                } else {
                    response.sendResponse(newUser[0], res);
                }
            }
        } catch (err) {
            response.sendError(501, errors.USER_NOT_UPDATED, res);
        }
    }
};

/**
 * Verifies if the login token is valid using a Google API Client Library
 * More here: https://developers.google.com/identity/sign-in/web/backend-auth
 * @param req
 * @param res
 */
exports.googleTokenVerify = async function (req, res) {
    let token = req.body.token;
    let verifiedUser = await secure.verifyGoogleToken(token, res);
    await that.signIn(verifiedUser, USER_ORIGIN.GOOGLE, res);
};

/**
 * Checks if  user exists, if so, it generates response with userdata and token for client
 * If the user doesnt exists AND if the user origin is not standard,
 * it calls function for registering new user
 * @param user
 * @param origin
 * @param res
 * @returns {Promise<void>}
 */
exports.signIn = async function (user, origin, res) {
    if (user.email) {
        let dbUser = await userQuery.findUserByEmail(user.email, origin);
        if (dbUser && dbUser.length > 0) {
            if (origin === USER_ORIGIN.STANDARD) {
                try {
                    let passwordMatch = await secure.passwordIsValid(dbUser[0].password, user.password);
                    if (passwordMatch) {

                        response.sendResponse(dbUser[0], res);
                    } else {
                        response.sendError(401, errors.PASSWORD_NOT_MATCH, res);
                    }
                } catch (err) {
                    response.sendError(401, errors.PASSWORD_NOT_MATCH, res);
                }

            } else {
                response.sendResponse(dbUser[0], res);

            }

        } else if (origin === USER_ORIGIN.GOOGLE || origin === USER_ORIGIN.FACEBOOK) {
            await that.signUp(user, origin, res)
        } else {
            response.sendError(401, errors.EMAIL_NOT_EXISTS, res);
        }
    }
};

/**
 * Registers new user to database
 * @param user
 * @param origin
 * @param res
 * @returns {Promise<void>}
 */
exports.signUp = async function (user, origin, res) {
    try {
        let hashedPassword = await secure.hashPassword(user.password);
        let userCreated = await userQuery.createUser(user, hashedPassword, origin);
        if (userCreated.insertId) {
            let userData = await userQuery.getUserDataForClient(userCreated.insertId);
            if (userData && userData.length > 0) {
                mailer.sendVerification(userData[0].email, secure.generateSessionToken(userData[0].id));
                response.sendResponse(userData[0], res);
            } else {
                response.sendError(501, errors.USER_NOT_CREATED, res);
            }

        } else {
            response.sendError(501, errors.USER_NOT_CREATED, res);
        }
    } catch (err) {
        response.sendError(501, errors.USER_NOT_CREATED, res);
    }
};

/**
 * Verifies if the facebook token is valid.
 * @param req
 * @param res
 * @returns {Promise<void>}
 */
exports.facebookTokenVerify = async function (req, res) {
    let userToken = req.body.token;
    let userData = req.body.userData;
    let id = userData.id; //id from frontend
    let verifiedUser = await secure.verifyFacebookToken(userToken, userData, id, res);
    await that.signIn(verifiedUser, USER_ORIGIN.FACEBOOK, res);
};


/**
 * Verifiy the user verification code
 * @param req
 * @param res
 * @returns {Promise<user>}
 */
exports.verifyEmail = async function (req, res) {
    let hashVerifyCode = req.params.code;
    let decoded = await secure.verifyIdToken(hashVerifyCode);
    try {

        if (decoded) {
            await secure.verifyUserAccount(decoded.id, res);
        } else {
            response.sendError(401, errors.INVALID_TOKEN, res);
        }
    } catch (err) {
        console.log(err)
        response.sendError(501, errors.TOKEN_NOT_VERIFIED, res)
    }
}


/**
 * Send a verification reminder to the user
 * @param req
 * @param res
 * @returns {Promise<void>}
 */
exports.verificationReminder = async function (req, res) {
    let clientReq = req.body;
    try {
        let userData = await userQuery.findUserByEmail(clientReq.email);
        if (userData && userData.length > 0) {
            mailer.sendVerification(userData[0].email, secure.generateSessionToken(userData[0].id));
            response.sendResponse(userData[0], res);
        } else {
            response.sendError(401, errors.EMAIL_NOT_EXISTS, res)
        }
    } catch (err) {
        response.sendError(501, errors.EMAIL_NOT_EXISTS, res);
    }
};


/**
 * Send a reset email to the user
 * @param req
 * @param res
 * @returns {Promise<void>}
 */
exports.resetPassword = async function (req, res) {
    let email = req.body.email;
    if (email !== '') {
        let user = await userQuery.findUserByEmail(email);
        if (!user || user.length === 0) {
            response.sendError(401, errors.USER_NOT_FOUND, res);

        } else if (user[0].origin === USER_ORIGIN.FACEBOOK) {
            response.sendError(401, errors.USER_ORIGIN.FACEBOOK, res)

        } else if (user[0].origin === USER_ORIGIN.GOOGLE) {
            response.sendError(401, errors.USER_ORIGIN.GOOGLE, res)
        } else {
            try {
                //Send email to the user
                mailer.sendResetPassword(user[0].email, secure.generateSessionToken(user[0].id));
                response.sendResponse(user[0], res);
            } catch (err) {
                response.sendError(501, errors.USER_NOT_UPDATED, res);
            }
        }
    } else {
        response.sendError(501, errors.USER_NOT_UPDATED, res);
    }
}

/**
 * Check whether the reset email code is valid
 * @param req
 * @param res
 * @returns {Promise<void>}
 */
exports.checkResetCode = async function (req, res) {
    let hashResetCode = req.params.code;
    let decoded = await secure.verifyIdToken(hashResetCode);
    try {
        if (decoded) {
            try {
                let user = await userQuery.findUserById(decoded.id)
                if (user && user.length > 0) {
                    response.sendResponse(user[0], res);
                } else {
                    response.sendError(401, errors.EMAIL_NOT_EXISTS, res);
                }
            } catch (err) {
                response.sendError(501, errors.EMAIL_NOT_EXISTS, res);
            }

        } else {
            response.sendError(401, errors.INVALID_TOKEN, res);
        }
    } catch {
        response.sendError(501, errors.TOKEN_NOT_VERIFIED, res)
    }
};


