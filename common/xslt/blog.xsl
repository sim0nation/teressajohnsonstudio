<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>
  <xsl:template match="/">
    <div class="pageContent">
      <div>
        <h2 id="BlogSpot">
          <a href="//blog.teressajohnsonstudio.com" title="Teressa Johnson Studio Blog" target="_blank">A Blog Called Blog</a>
        </h2>
        <p>

          <xsl:value-of select="rss/channel/item/title" disable-output-escaping="yes" />
          <br />
          <xsl:value-of select="rss/channel/item/description" disable-output-escaping="yes" />
        </p>
      </div>
    </div>
  </xsl:template>
</xsl:stylesheet>
