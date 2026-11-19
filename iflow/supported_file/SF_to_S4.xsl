<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes"/>
  <xsl:param name="CreatedOn"/>
  <xsl:param name="Timestamp"/>
  <xsl:template match="/">
    <EmpdetailsSet>
      <xsl:for-each select="//User/User">
        <Empdetails>
          <Mandt>500</Mandt>
          <Participantid>
            <xsl:value-of select="concat('Harsh Mistry ', $Timestamp, '-', position())"/>
          </Participantid>
          <Country>
            <xsl:value-of select="translate(country,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>
          </Country>
          <Sfempname>
            <xsl:value-of select="concat(firstName,' ',lastName)"/>
          </Sfempname>
          <City>
            <xsl:value-of select="city"/>
          </City>
          <Createdon>
            <xsl:value-of select="$CreatedOn"/>
          </Createdon>
        </Empdetails>
      </xsl:for-each>
    </EmpdetailsSet>
  </xsl:template>
</xsl:stylesheet>