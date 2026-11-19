<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes"/>
  <xsl:template match="/">
    <Employees>
      <xsl:for-each select="//User/User">
        <Employee>
          <Mandt>500</Mandt>
          <Participantid>Harsh Mistry</Participantid>
          <Country>
            <xsl:value-of select="translate(country,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>
          </Country>
          <Sfempname>
            <xsl:value-of select="concat(firstName,' ',lastName)"/>
          </Sfempname>
          <City>
            <xsl:value-of select="city"/>
          </City>
        </Employee>
      </xsl:for-each>
    </Employees>
  </xsl:template>
</xsl:stylesheet>