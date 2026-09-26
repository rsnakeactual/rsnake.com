<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:s="http://www.sitemaps.org/schemas/sitemap/0.9">
<xsl:output method="html" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
<html lang="en">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width,initial-scale=1"/>
<meta name="robots" content="noindex"/>
<title>XML Sitemap — rsnake.com</title>
<style>
  body{margin:0;background:#08080E;color:#F4F4F8;font:14px/1.5 -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,sans-serif}
  .wrap{max-width:1100px;margin:0 auto;padding:40px 20px}
  h1{font-size:22px;letter-spacing:-.02em;margin:0 0 6px}
  p.sub{color:#9492BA;margin:0 0 28px;font-size:13px}
  table{width:100%;border-collapse:collapse;font-size:13px}
  th{text-align:left;color:#6A688C;font-weight:600;font-size:11px;letter-spacing:.14em;text-transform:uppercase;padding:0 12px 10px 0;border-bottom:1px solid rgba(255,255,255,.12)}
  td{padding:9px 12px 9px 0;border-bottom:1px solid rgba(255,255,255,.07);vertical-align:top}
  td.when{color:#6A688C;white-space:nowrap;font-family:ui-monospace,SFMono-Regular,Menlo,monospace;font-size:12px}
  a{color:#5BE9C3;text-decoration:none}
  a:hover{text-decoration:underline}
</style>
</head>
<body>
<div class="wrap">
  <h1>XML Sitemap</h1>
  <p class="sub"><xsl:value-of select="count(s:urlset/s:url)"/> URLs. This page is for humans; crawlers read the XML directly.</p>
  <table>
    <tr><th>URL</th><th>Last modified</th></tr>
    <xsl:for-each select="s:urlset/s:url">
      <tr>
        <td><a href="{s:loc}"><xsl:value-of select="s:loc"/></a></td>
        <td class="when"><xsl:value-of select="substring(s:lastmod,1,10)"/></td>
      </tr>
    </xsl:for-each>
  </table>
</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
