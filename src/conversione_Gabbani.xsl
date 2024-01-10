<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml" version="2.0" >
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html>
      <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@type='main']"/></title>
        <link rel="stylesheet" type="text/css" href="style_Gabbani.css" />
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="script_Gabbani.js"></script>
      </head>
      <body>
        <main>
		  <div id="Sidenav" class="sidenav">
			  <a href="javascript:void(0)" class="closebtn" onclick="closeMenu()">&#215;</a>
			  <div class="dropdown">
          <button onclick="dropNav()" class="dropbtn">Apri Navigazione</button>
          <div id="dropNav" class="dropdown-content">
			      <a href="#Titolo">Titolo</a>
			      <a href="#Descrizioni">Descrizioni</a>
			      <a href="#P85">Pagina 85</a>
			      <a href="#P86">Pagina 86</a>
			      <a href="#P87">Pagina 87</a>
			      <a href="#liste">Liste</a>
			      <a href="#about">About</a>
          </div>
        </div>
        <div class="dropdown">
          <button onclick="dropSel()" class="dropbtn">Apri Selezione</button>
          <div id="dropSel" class="dropdown-content">
			      <button id="cancellature" class="buttons">Cancellature</button>
            <button id="aggiunte" class="buttons"> Aggiunte</button>
            <button id="normalizzazioni" class="buttons"> Normalizzazioni </button>
            <button id="abbreviazioni" class="buttons"> Abbreviazioni </button>
            <button id="correzioni" class="buttons"> Correzioni </button>
            <button id="nomi" class="buttons"> Persone </button>
            <button id="luoghi" class="buttons"> Luoghi </button>
            <button id="termini" class="buttons"> Termini </button>
            <button id="incertezze" class="buttons"> Incertezze </button>
          </div>
        </div>
      </div>
		  <div id="Titolo">
        <h1><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@type='main']"/></h1>
        <h2><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@type='sub']"/></h2>
        <button onclick="openMenu()" class="Menubtn">Apri Menu</button>
      </div>
      <div id="Descrizioni">
        <div id="Diario">
          <h2>Informazioni sull'origine del diario</h2>
          <div class="Descrizione">
            <div>
              <h3>Titolo:</h3>
              <p><xsl:value-of select=".//tei:msContents/tei:msItem/tei:title"/></p>
            </div>
            <div>
              <h3>Autore:</h3>
              <p><xsl:value-of select=".//tei:msContents/tei:msItem/tei:author"/></p>
            </div>
            <div>
              <h3>Luogo:</h3>
              <p><xsl:value-of select=".//tei:msIdentifier/tei:country"/>:
              <xsl:value-of select=".//tei:msIdentifier/tei:settlement"/></p>
            </div>
            <div>
              <h3>Archivio:</h3>
              <p><xsl:value-of select=".//tei:msIdentifier/tei:repository"/> </p>
            </div>
            <div>
              <h3>Collezione:</h3>
              <p><xsl:value-of select=".//tei:msIdentifier/tei:collection"/> </p>
            </div>
            <div>
              <h3>Storia:</h3>
              <p><xsl:value-of select=".//tei:msDesc/tei:history"/> </p>                
            </div>
          </div>
        </div>
        <div id="edizioneFisica">
          <h2>Descrizione Fisica del diario</h2>
          <div class="Descrizione"> 
            <div>
              <h3> Supporto:</h3>
              <p><xsl:value-of select="//tei:support"/> </p>
            </div>
            <div>
              <h3> Grandezza:</h3>
              <p><xsl:value-of select="//tei:measure"/> </p>
            </div>
            <div>
              <h3> Condizioni:</h3>
              <p><xsl:value-of select="//tei:condition"/> </p>
            </div>
            <div>
              <h3> Scrittura:</h3>
              <p><xsl:value-of select="//tei:typeDesc"/> </p>
            </div>
          </div>
        </div>
      </div>
      <h2 class="titoloPag"> Pagina 85  </h2>
      <button onclick="openMenu()" class="Menubtn">Apri Menu</button>
      <div class="codifica">
        <div id="P85">
          <xsl:element name="img">
            <xsl:attribute name="src">
              <xsl:value-of select="//tei:surface[@xml:id='P85']/tei:graphic/@url" />
            </xsl:attribute>
            <xsl:attribute name="id">P85</xsl:attribute>
          </xsl:element>
        </div>
        <div class="trascrizione">
          <xsl:apply-templates select="//tei:body/tei:div[@n='85']" />
        </div>  
      </div>
      <h2 class="titoloPag"> Pagina 86  </h2>
       <button onclick="openMenu()" class="Menubtn">Apri Menu</button>
      <div class="codifica">
        <div id="P86">
          <xsl:element name="img">
            <xsl:attribute name="src">
              <xsl:value-of select="//tei:surface[@xml:id='P86']/tei:graphic/@url" />
            </xsl:attribute>
            <xsl:attribute name="id">P86</xsl:attribute>
          </xsl:element>
        </div>
        <div class="trascrizione">
          <xsl:apply-templates select="//tei:body/tei:div[@n='86']" />
        </div>  
      </div>
      <h2 class="titoloPag"> Pagina 87  </h2>
      <button onclick="openMenu()" class="Menubtn">Apri Menu</button>
      <div class="codifica">
        <div id="P87">
          <xsl:element name="img">
            <xsl:attribute name="src">
              <xsl:value-of select="//tei:surface[@xml:id='P87']/tei:graphic/@url" />
            </xsl:attribute>
            <xsl:attribute name="id">P87</xsl:attribute>
          </xsl:element>
        </div>
        <div class="trascrizione">
          <xsl:apply-templates select="//tei:body/tei:div[@n='87']" />
        </div>  
      </div>
		  <button onclick="openMenu()" class="Menubtn">Apri Menu</button>
      <div id="liste" class="liste">
        <section id="persone" class="infoback">
          <h2><xsl:value-of select="//tei:text/tei:back/tei:listPerson/tei:head"/></h2>
          <ul>
            <xsl:apply-templates select="//tei:text/tei:back/tei:listPerson//tei:person" />
          </ul>
        </section>
        <section id="Stati" class="infoback">
          <h2><xsl:value-of select="//tei:text/tei:back/tei:listPlace/tei:head"/></h2>
          <div class="elenco_liste">
            <ul><xsl:for-each select="//tei:back//tei:place">
              <xsl:element name="li">
                <xsl:attribute name="id"><xsl:value-of select="@xml:id"/></xsl:attribute>
                <xsl:apply-templates />
              </xsl:element>
              </xsl:for-each>
            </ul>
          </div>
        </section>
        <section id="termini" class="infoback">
          <h2><xsl:value-of select="//tei:text/tei:back/tei:list/tei:head"/></h2>
          <ul><xsl:for-each select="//tei:back//tei:label">
            <xsl:element name="li">
              <xsl:attribute name="id"><xsl:value-of select="@xml:id"/></xsl:attribute>
              <xsl:apply-templates />
              <xsl:element name="p"><xsl:value-of select="./following-sibling::*[1]" /></xsl:element>
            </xsl:element>
          </xsl:for-each>
          </ul>
        </section>
        <section id="bibl" class="infoback">
          <h2><xsl:value-of select="//tei:text/tei:back/tei:listBibl/tei:head"/></h2>
          <ul>
            <xsl:apply-templates select="//tei:text/tei:back/tei:listBibl//tei:bibl" />
          </ul>
        </section>
      </div>
		  <button onclick="openMenu()" class="Menubtn">Apri Menu</button>
        <footer id="about">
        <p><xsl:value-of select="//tei:editionStmt/tei:edition"/>
        <xsl:value-of select="//tei:editionStmt/tei:date"/> <br />
        Progetto coordinato da:<xsl:value-of select="//tei:editionStmt/tei:respStmt[1]/tei:name"/> <br />
        Codifica e trascrizione di:<xsl:value-of select="//tei:editionStmt/tei:respStmt[2]/tei:name"/> <br />
        <xsl:value-of select="//tei:publicationStmt/tei:publisher"/> - 
        <xsl:value-of select="//tei:publicationStmt/tei:pubPlace"/> <br /></p>
        </footer>
        </main>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="tei:div//tei:lb">
    <p> <xsl:apply-templates /></p>
    <xsl:value-of select="@n"/>
  </xsl:template>
  <xsl:template match = "tei:del">
      <span class = "del" hidden = 'hidden'>
        <xsl:apply-templates/>
      </span>
    </xsl:template>
    <xsl:template match = "tei:add">
      <span class = "add">
        <xsl:apply-templates/>
      </span>
    </xsl:template>
    <xsl:template match = "tei:choice/tei:orig">
      <span class = "orig" hidden="hidden">
        <xsl:apply-templates/>
      </span>
    </xsl:template>
   <xsl:template match="tei:choice/tei:reg">
      <span class = "reg">
        <xsl:apply-templates/>
      </span>
    </xsl:template>
    <xsl:template match = "tei:choice/tei:expan">
      <span class = "expan" hidden="hidden">
        <xsl:apply-templates/>
      </span>
    </xsl:template>
    <xsl:template match="tei:choice/tei:abbr">
      <span class = "abbr">
        <xsl:apply-templates/>
      </span>
    </xsl:template>
    <xsl:template match = "tei:choice/tei:sic">
      <span class = "sic" hidden="hidden">
        <xsl:apply-templates/>
      </span>
    </xsl:template>
   <xsl:template match="tei:choice/tei:corr">
      <span class = "corr">
        <xsl:apply-templates/>
      </span>
    </xsl:template>
    <xsl:template match="tei:persName">
      <span class = "persName">
        <xsl:apply-templates/>
      </span>
    </xsl:template>
    <xsl:template match="tei:placeName">
      <span class = "placeName">
        <xsl:apply-templates/>
      </span>
    </xsl:template>
    <xsl:template match="tei:term">
      <span class = "term">
        <xsl:apply-templates/>
      </span>
    </xsl:template>
    <xsl:template match="tei:unclear">
      <span class = "unclear">
        <xsl:apply-templates/>
      </span>
    </xsl:template>
    <xsl:template match = "//tei:text/tei:back/tei:listPerson//tei:person">
      <div>
        <li>
          <h3><xsl:value-of select="tei:persName" /></h3>
          <xsl:value-of select="tei:note"/>
        </li>
      </div>
    </xsl:template>
    <xsl:template match="//tei:text/tei:back/tei:listPlace//tei:placeName">
      <h3>
        <xsl:apply-templates />
      </h3>
    </xsl:template>
    <xsl:template match="//tei:text/tei:back/tei:list//tei:term">
      <h3>
        <xsl:apply-templates/>
      </h3>
    </xsl:template>
    <xsl:template match = "//tei:text/tei:back/tei:listBibl//tei:bibl" >
      <div>
        <li>
        <xsl:value-of select="tei:title"/>,
        <xsl:value-of select="tei:author"/>
        <span> a cura di </span><xsl:value-of select="tei:editor"/>
        <xsl:value-of select="tei:pubPlace"/>,
        <xsl:value-of select="tei:date"/>,
        <xsl:value-of select="tei:publisher"/>.
        </li>
      </div>
    </xsl:template>
</xsl:stylesheet>
