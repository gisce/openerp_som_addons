## -*- coding: utf-8 -*-
<%namespace file="som_polissa_condicions_generals/report/components/capcalera.mako" import="capcalera"/>
<%namespace file="som_polissa_condicions_generals/report/components/contact_info.mako" import="contact_info"/>

<!DOCTYPE html>
<html lang="es">
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <head>
        <style>
            @font-face {
                font-family: "Roboto";
                src: url("${assets_path}/fonts/Roboto/Roboto-Regular.ttf") format('truetype');
                font-weight: normal;
            }
            @font-face {
                font-family: "Roboto";
                src: url("${assets_path}/fonts/Roboto/Roboto-Bold.ttf") format('truetype');
                font-weight: bold;
            }
            @font-face {
                font-family: "Roboto";
                src: url("${assets_path}/fonts/Roboto/Roboto-Thin.ttf") format('truetype');
                font-weight: 200;
            }
        </style>
        <link rel="stylesheet" href="${addons_path}/som_polissa_condicions_generals/report/condicions_particulars_puppeteer.css"/>
    </head>
    <body>
        %for informe in objects:
            <script>
            </script>
            <div class="a4">
                <div class="page-content">
                    <div class="content">
                        ${capcalera(informe['polissa'])}
                        ${contact_info(informe['titular'],informe['cups'])}
                    </div>
                </div>
            </div>
        %endfor
    </body>
</html>