/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function enviarC() {

    var nombre = document.getElementById("inputUsername").value;
    var email = document.getElementById("inputEmail").value;
    var asunto = document.getElementById("inputSubject").value;
    var mensaje = document.getElementById("message").value;

    (function () {
        emailjs.init("user_9uafhwkJK3GEm5Swrs4jg");
    })();
    const vue = new Vue({
        el: '#app',
        data() {
            return {
                to_mail: '',
                name: '',
                subject: '',
                message: '',
            }
        },
        methods: {
            enviar() {
                let data = {
                    to_mail: email,
                    name: nombre,
                    subject: asunto,
                    message: mensaje,
                };

                emailjs.send("gmail", "plantilla_contacto", data)
                        .then(function (response) {
                            if (response.text === 'OK') {
                                alert('El correo se ha enviado de forma exitosa');
                            }
                            console.log("SUCCESS. status=%d, text=%s", response.status, response.text);
                        }, function (err) {
                            alert('Ocurrió un problema al enviar el correo');
                            console.log("FAILED. error=", err);
                        });
            }
        }
    });

    alert('UNA ALERTA');

}
<!--Librerias email  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.5.16/vue.min.js"></script>
<script src="https://cdn.emailjs.com/dist/email.min.js" type="text/javascript">
        