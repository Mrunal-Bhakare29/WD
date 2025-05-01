<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>My CD Collection</title>
      </head>
      <body>
        <h2>My CD Collection</h2>
        <ul>
          <xsl:apply-templates select="catalog/cd"/>
        </ul>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="cd">
    <li>
      <strong>Title:</strong>
      <span style="color:#ff0000">
        <xsl:value-of select="title"/>
      </span>
      <br/>
      <strong>Artist:</strong>
      <span style="color:#00ff00">
        <xsl:value-of select="artist"/>
      </span>
    </li>
  </xsl:template>

</xsl:stylesheet>
