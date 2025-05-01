<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:output method="html" indent="yes"/>
  
  <xsl:template match="/">
    <html>
      <head>
        <title>Student Results</title>
        <style>
          table { border-collapse: collapse; width: 50%; }
          th, td { border: 1px solid #000; padding: 8px; text-align: left; }
          .pass { background-color: #c8e6c9; }
          .fail { background-color: #ffcdd2; }
        </style>
      </head>
      <body>
        <h2>Student Results</h2>
        <table>
          <tr>
            <th>Name</th>
            <th>Roll No</th>
            <th>Marks</th>
            <th>Status</th>
          </tr>
          <xsl:for-each select="students/student">
            <xsl:variable name="marks" select="marks"/>
            <tr>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="rollno"/></td>
              <td><xsl:value-of select="marks"/></td>
              <td>
                <xsl:choose>
                  <xsl:when test="$marks &gt;= 50">
                    <span class="pass">Pass</span>
                  </xsl:when>
                  <xsl:otherwise>
                    <span class="fail">Fail</span>
                  </xsl:otherwise>
                </xsl:choose>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
