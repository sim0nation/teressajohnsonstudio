<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <div class="col1 rightBorder">
      <div class="bottomBorder">
        <xsl:apply-templates select="photos/item[@keyFrame='yes' and @gallery='Events']"/>
      </div>
      <div class="secondary clearFix">
        <div class="descriptor rightBorder">
          <blockquote>
          <p>For myself I hold no preference among flowers, so long as they are wild, free, spontaneous.</p>
          <footer>– Edward Abbey</footer>
          </blockquote>
        </div>
        <div class="square">
    <xsl:apply-templates select="photos/item[@keyFrame='yes' and @gallery='Collaborations']"/></div>
      </div>
    </div>
    <div class="col2">
      
      <xsl:apply-templates select="photos/item[@keyFrame='yes' and @gallery='Everyday']"/>
    </div>
    <div class="col3 leftBorder">
      <div class="pageTitle">
                    <div class="titleContainer bottomBorder clearFix">
                        <div class="hexagon"><span>Photos</span></div>
                    </div>
                </div>
    </div>
  </xsl:template>

  <xsl:template match="photos/item">
    <div class="contentContainer">
    <div class="imgContainer">
      <a href="{@gallery}.aspx">
      <img src="/common/img/{img/@fileName}"/>
        <span>
          Photo: <xsl:value-of select="photographer/@name"/><br />
          <xsl:value-of select="location/@name"/>
        </span>
      <div class="nameAttribute">
        <xsl:value-of select="@gallery"/>
      </div>
    </a>
    </div>
  </div>
  </xsl:template>
</xsl:stylesheet>
