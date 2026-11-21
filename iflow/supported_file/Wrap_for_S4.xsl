<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes"/>
  <xsl:param name="CreatedOn"/>
  <xsl:template match="/Empdetails">
    <EmpdetailsSet>
      <Empdetails>
        <xsl:copy-of select="*"/>
        <Createdon>
          <xsl:value-of select="$CreatedOn"/>
        </Createdon>
      </Empdetails>
    </EmpdetailsSet>
  </xsl:template>
</xsl:stylesheet>