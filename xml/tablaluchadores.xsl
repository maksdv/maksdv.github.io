<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
<xsl:template match="/">
<html>
    <head>
        <link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet"/>

       <style> 
            body{font-family: 'Do Hyeon', sans-serif; text-align: center; color:red;}
            table{border:none;} 
            td{ padding: 15px;margin-left:5%; width: 105px;color:red;border:none;border-bottom:double;  } 
            th{padding: 15px; color: red;border:none;border-bottom:outset;} 
            img{width:70%;}
        </style>
    </head>
    <body>
        <table border="2">
        <tr bgcolor="black">
            <th>Luchador</th>
            <th>Posicion</th>
            <th>Nombre</th>
            <th>Victorias</th>
            <th>Derrotas</th>
            <th>Nacionalidad</th>           
        </tr>

        <xsl:for-each select="luchadores/luchador">
         <tr>
            <td>
                <xsl:element name="img">
                <xsl:attribute name="src">
                <xsl:value-of select="img/@ruta"/>
                </xsl:attribute>
                <xsl:attribute name="height"></xsl:attribute>
                </xsl:element>
            </td>
            <td><xsl:value-of select="posiscion"/></td>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="victorias"/></td>
            <td><xsl:value-of select="derrotas"/></td>
            <td><xsl:value-of select="nacionalidad"/></td>
        </tr>
        </xsl:for-each>

        </table>
        </body>
        </html>

    </xsl:template>
    </xsl:stylesheet>