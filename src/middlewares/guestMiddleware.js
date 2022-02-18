function guestMiddleware(req, res, next){
    if(req.session.userLogged && req.session.userLogged.rol == "cliente"){
        return res.redirect('/profile');
    }
    next();
};

module.exports = guestMiddleware;