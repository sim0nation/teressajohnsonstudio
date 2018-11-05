<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">

            <xsl:apply-templates select="/photos/item[@homepage='yes']"/>
    </xsl:template>

  <xsl:template match="/photos/item">
    <div class="carouselContent {img/@orientation}">
    <img src="/common/img/{img/@fileName}"/>
    <span>
      Photo: <xsl:value-of select="photographer/@name"/><br />
      <xsl:value-of select="location/@name"/>
    </span>
    </div>
       
</xsl:template>
</xsl:stylesheet>
