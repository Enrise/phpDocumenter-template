<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output indent="yes" method="html" />
    <xsl:include href="sections/api.xsl"/>

    <xsl:template name="sidebar-sections">
        <xsl:if test="$section.dashboard.show != 'false'">
        <h3 id="sidebar-dashboard">
            <a href="{$root}content.html" target="content">Dashboard</a>
        </h3>
        </xsl:if>

        <xsl:if test="$section.api.show != 'false'">
            <xsl:if test="count(/project/file/*/docblock/tag[@name='api']|/project/file/class/*/docblock/tag[@name='api']|/project/file/interface/*/docblock/tag[@name='api']) > 0">
            <h3 id="sidebar-api">API Urls</h3>
            <div class="sidebar-section">
                <xsl:call-template name="sidebar-section-api"/>
            </div>
            </xsl:if>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>
