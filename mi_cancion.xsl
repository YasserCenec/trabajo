<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    <html>
        <head>
            <title>Take On Me</title>
            <link href="mi_cancion.css" rel="stylesheet"/>
        </head>
        <body>
            <h1><xsl:value-of select="letra/titulo"/></h1>
            <h2>Por <xsl:value-of select="letra/autor"/></h2>
            <div>
                <xsl:for-each select="letra/estrofa">
                    <ul>
                        <xsl:for-each select="verso">
                            <li>
                                <xsl:value-of select="."/>
                            </li>
                                </xsl:for-each>
                    </ul>
                    </xsl:for-each>
            </div>
        </body>
    </html>
        </xsl:template>
            <xsl:template match="letra">
                <div class="letra">
        <xsl:apply-templates/>
                </div>
            </xsl:template>
        <xsl:template match="estrofa">
            <div class="estrofa">
        <xsl:apply-templates/>
            </div>
        </xsl:template>
        <xsl:template match="verso">
            <p class="verso">
        <xsl:value-of select="."/>
            </p>
        </xsl:template>
</xsl:stylesheet>