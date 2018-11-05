<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>
  <xsl:param name="galleryType"/>
  <xsl:template match="/">

    <div class="galleryContainer ">
      <div class="pointer pointerLeft"></div>
      <xsl:if test ="photos/item[@gallery=$galleryType and @galleryItem='yes' and @page='1']">
      <div class="galleryContent clearFix">
      <xsl:for-each select="photos/item[@gallery=$galleryType and @galleryItem='yes' and @page='1']">
        <xsl:sort select="@sort" data-type="number" order="ascending"/>
          <xsl:apply-templates select="img"/>
      </xsl:for-each>
      </div>
        </xsl:if>
      <xsl:if test ="photos/item[@gallery=$galleryType and @galleryItem='yes' and @page='2']">
        
        <div class="galleryContent clearFix hide">
          <xsl:for-each select="photos/item[@gallery=$galleryType and @galleryItem='yes' and @page='2']">
            <xsl:sort select="@sort" data-type="number" order="ascending"/>
            <xsl:apply-templates select="img"/>
          </xsl:for-each>
        </div>
      </xsl:if>
      <xsl:if test ="photos/item[@gallery=$galleryType and @galleryItem='yes' and @page='3']">
        
        <div class="galleryContent clearFix hide">
          <xsl:for-each select="photos/item[@gallery=$galleryType and @galleryItem='yes' and @page='3']">
            <xsl:sort select="@sort" data-type="number" order="ascending"/>
            <xsl:apply-templates select="img"/>
          </xsl:for-each>
        </div>
      </xsl:if>
    <xsl:if test ="photos/item[@gallery=$galleryType and @galleryItem='yes' and @page='4']">
      
        <div class="galleryContent clearFix hide">
          <xsl:for-each select="photos/item[@gallery=$galleryType and @galleryItem='yes' and @page='4']">
            <xsl:sort select="@sort" data-type="number" order="ascending"/>
            <xsl:apply-templates select="img"/>
          </xsl:for-each>
        </div>
      </xsl:if>
        <xsl:if test ="photos/item[@gallery=$galleryType and @galleryItem='yes' and @page='5']">

        <div class="galleryContent clearFix hide">
          <xsl:for-each select="photos/item[@gallery=$galleryType and @galleryItem='yes' and @page='5']">
            <xsl:sort select="@sort" data-type="number" order="ascending"/>
            <xsl:apply-templates select="img"/>
          </xsl:for-each>
        </div>
      </xsl:if>
      <xsl:if test ="photos/item[@gallery=$galleryType and @galleryItem='yes' and @page='6']">

        <div class="galleryContent clearFix hide">
          <xsl:for-each select="photos/item[@gallery=$galleryType and @galleryItem='yes' and @page='6']">
            <xsl:sort select="@sort" data-type="number" order="ascending"/>
            <xsl:apply-templates select="img"/>
          </xsl:for-each>
        </div>
      </xsl:if>
       <xsl:if test ="photos/item[@gallery=$galleryType and @galleryItem='yes' and @page='7']">

        <div class="galleryContent clearFix hide">
          <xsl:for-each select="photos/item[@gallery=$galleryType and @galleryItem='yes' and @page='7']">
            <xsl:sort select="@sort" data-type="number" order="ascending"/>
            <xsl:apply-templates select="img"/>
          </xsl:for-each>
        </div>
      </xsl:if>
            
 <xsl:if test ="photos/item[@gallery=$galleryType and @galleryItem='yes' and @page='8']">

        <div class="galleryContent clearFix hide">
          <xsl:for-each select="photos/item[@gallery=$galleryType and @galleryItem='yes' and @page='8']">
            <xsl:sort select="@sort" data-type="number" order="ascending"/>
            <xsl:apply-templates select="img"/>
          </xsl:for-each>
        </div>
      </xsl:if>
      <xsl:if test ="photos/item[@gallery=$galleryType and @galleryItem='yes' and @page='9']">

        <div class="galleryContent clearFix hide">
          <xsl:for-each select="photos/item[@gallery=$galleryType and @galleryItem='yes' and @page='9']">
            <xsl:sort select="@sort" data-type="number" order="ascending"/>
            <xsl:apply-templates select="img"/>
          </xsl:for-each>
        </div>
      </xsl:if>
      <xsl:if test ="photos/item[@gallery=$galleryType and @galleryItem='yes' and @page='10']">

        <div class="galleryContent clearFix hide">
          <xsl:for-each select="photos/item[@gallery=$galleryType and @galleryItem='yes' and @page='10']">
            <xsl:sort select="@sort" data-type="number" order="ascending"/>
            <xsl:apply-templates select="img"/>
          </xsl:for-each>
        </div>
      </xsl:if>
    <div class="pointer pointerRight"></div>
    </div>

  </xsl:template>
  <xsl:template match ="img">

    <div class="{@orientation}">
      <img src="/common/img/{@fileName}"/>
      <span>
        Photo: <xsl:value-of select="../photographer/@name"/><br />
        <xsl:value-of select="../location/@name"/>
      </span>
    </div>
  </xsl:template>
</xsl:stylesheet>
