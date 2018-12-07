<%-- 
    Document   : CorreoContras
    Created on : 29/11/2018, 09:52:54 PM
    Author     : Rick
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
            <title>
               Pagina de contacto
            </title>
        </meta>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
        </link>
    </head>
    <body>
        <div id="app" style="padding-top: 8rem;">
            <div class="container">
                <h1 style="text-align: center">CONTACTANOS</h1>
                <br><br>
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3 form-group">
                        <label>
                            *Nombre:
                        </label>
                        <input class="form-control" type="text" v-model="name" required>
                        </input>
                    </div>
                    <div class="col-sm-6 col-sm-offset-3 form-group">
                        <label>
                            *Asunto:
                        </label>
                        <input class="form-control" type="text" v-model="subject" required>
                        </input>
                    </div>
                    <div class="col-sm-6 col-sm-offset-3 form-group">
                        <label>
                            *Correo:
                        </label>
                        <input class="form-control" type="email" v-model="to_mail" required>
                        </input>
                    </div>
                    <div class="col-sm-6 col-sm-offset-3 form-group">
                        <label>
                            *Mensaje: 
                        </label>
                        <textarea class="form-control" v-model="message">
                        </textarea>
                    </div>
                    <div class="col-sm-6 col-sm-offset-3 text-center">
                        <button @click="enviar" class="btn btn-success">
                            Enviar
                        </button>
                    </div>
                </div>
            </div>
        </div>  
        <script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.16/vue.min.js">
        </script>
        <script src="https://cdn.emailjs.com/dist/email.min.js" type="text/javascript">
        </script>
        <script>
            (function(){
                emailjs.init("user_9uafhwkJK3GEm5Swrs4jg");
             })();
            const vue = new Vue({
                el: '#app',
                data(){
                    return {
                        to_mail:'',
                        name: '',
                        subject: '',
                        message: '',
                    }
                },
                methods: {
                    enviar(){
                        let data = {
                            to_mail:this.to_mail,
                            name: this.name,
                            subject: this.subject,
                            message: this.message,
                        };
                        
                        emailjs.send("gmail","plantilla_contacto", data)
                        .then(function(response) {
                            if(response.text === 'OK'){
                                alert('El correo se ha enviado de forma exitosa');
                            }
                           console.log("SUCCESS. status=%d, text=%s", response.status, response.text);
                        }, function(err) {
                            alert('Ocurrió un problema al enviar el correo');
                           console.log("FAILED. error=", err);
                        });
                    }
                }
            });
        </script>
    </body>
</html>
