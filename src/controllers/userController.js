const { validationResult} = require('express-validator');
const bcrypt = require('bcrypt')


/*const User = require('../model/user');*/

const db = require('../database/models');

//TRAE TODOS LOS USUARIOS

db.User.findAll()
.then(function(usuarios){
    users = usuarios;
})

const userController = {

    register: (req, res)=> {
        res.render('./users/register');
    },

    processRegister: (req, res)=>{
        /*
        const resultadosValidos = validationResult(req);
        if(resultadosValidos.errors.length > 0){
            return res.render('./users/register', {
                errors: resultadosValidos.mapped(),
                oldData: req.body
            });
        }
        let userInDB = User.findByField('email',req.body.email);
        if(userInDB){
            return res.render('../views/users/register.ejs',{
                errors:{
                    email :{
                        msg: 'Este email ya esta registrado'
                    }
            },
            oldData:req.body,
        })
        }
        let body = req.body
        delete body.confirm
        let userToCreate = {
            
            ...body,
            password: bcrypt.hashSync(req.body.password,10),
            avatar:req.file.filename,
            rol : "cliente"
        }
        let userCreated =  User.create(userToCreate)*/

        db.User.create({
            full_name: req.body.fullName,
            email: req.body.email,
            password: bcrypt.hashSync(req.body.password, 10),
            avatar: req.file.filename,
            rol_id: 2
        })
        .then(function(user){
            req.session.fullNameId = user.id;
            req.session.fullName = user.fullName;
            req.session.email = user.email;
            req.session.avatar = user.avatar;
            req.session.rol = 2;
            req.session.save();

            

        })
        res.redirect('/login')
    
    },
    login: (req, res)=> {
        // console.log(req.cookies);
        res.render('./users/login');
        // console.log(req.session);
    },
    processLogin: (req, res) =>{
        // let userToLogin = User.findByField('email', req.body.email);


		// if (userToLogin) {
		// 	//para saber su en mi base de datos tengo la misma contrase;a que la que el usuario ingreso correra todo bien 
		// 	let isOkPassword = bcrypt.compareSync(req.body.password, userToLogin.password)
		// 	if (isOkPassword) {
		// 		req.session.userLogged = userToLogin;

        //         if(req.body.remember_user){
        //             res.cookie('userEmail', req.body.email, {maxAge:(1000 * 60) * 60})
        //         }
        //         return res.redirect('/profile')
		// 	}
		// }

		// return res.render('./users/login' , {
		// 	errors: {
		// 		email: {
		// 			msg: 'Las credenciales son inválidas!!!'
		// 		}
		// 	}	
		// })
       
        db.User.findAll({
            where: { 
                email:req.body.email,
            }
        })   
            .then( user =>{
                let userToLogin = user.find(oneUser => oneUser.email === req.body.email)

                if (userToLogin) 

                
                {
                    if (userToLogin) {
                            let isOkPassword = bcrypt.compareSync(req.body.password, userToLogin.password)
                            if (isOkPassword) {
                                req.session.userLogged = userToLogin;
        
                                if(req.body.remember_user){
                                     res.cookie('userEmail', req.body.email, {maxAge:(1000 * 60) * 60})
                                }
                                return res.redirect('/profile')
                            }
                        }
                        
                }

            })
        },
    profile: (req, res)=> {
        res.render('./users/profile',
        {user: req.session.userLogged});
    },

    logout:(req, res)=>{
        res.clearCookie('userEmail');
        req.session.destroy();
        // console.log(req.session);
        return res.redirect('/');
    }
};

module.exports = userController;