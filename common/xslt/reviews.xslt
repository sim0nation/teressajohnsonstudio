<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
  
  
  
  
    <xsl:template match="/">
      <div class="col1">
<div class="topBorder rightBorder ">
    <div class="secondaryPageContent">
      <xsl:apply-templates select="reviews/item/img"/>
    </div>
    <div class="topBorder">
                <div class="titleContainer clearFix">
      <div class="descriptor style2">
        <xsl:apply-templates select="reviews/item/client"/>
      </div>
      <div class="pageTitle leftBorder style2">
        
        <div class="hexagon style2">
          <div class=" pointer pointerLeft"></div>
          <span>Reviews</span>
          <div class="pointer pointerRight"></div>
        </div>
      
      </div>
</div>
    </div>
  </div>
        </div>
      <div class="col2">
        <div class="topBorder ">
          <div class="pageContent">
            <h2>What they are saying </h2>
            <xsl:apply-templates select="reviews/item/description"/>
          </div>
        </div>
      </div>
    </xsl:template>
  <xsl:template match="reviews/item/img">
    <div class="hide">
    <img  src="/common/img/{@fileName}"/>

    </div>
  </xsl:template>
  <xsl:template match="reviews/item/description">
    <div class="hide">
      <xsl:value-of select="." disable-output-escaping="yes" />
    </div>
  </xsl:template>
  <xsl:template match="reviews/item/client">
    
    <h2 class="hide">
      <xsl:value-of select="@name"/>
    </h2>
  </xsl:template>
</xsl:stylesheet>
