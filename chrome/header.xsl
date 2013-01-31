<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output indent="yes" method="html"/>

    <xsl:template name="page-header">
        <h1>
            <img src="images/logo.gif" id="sidebar-logo" alt="Logo"/>
            <xsl:if test="$title">
                <xsl:value-of select="$title" disable-output-escaping="yes"/>
            </xsl:if>
        </h1>
    </xsl:template>

</xsl:stylesheet>
