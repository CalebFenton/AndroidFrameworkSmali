.class public Lorg/apache/xml/utils/StylesheetPIHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "StylesheetPIHandler.java"


# instance fields
.field greylist m_baseID:Ljava/lang/String;

.field greylist m_charset:Ljava/lang/String;

.field greylist m_media:Ljava/lang/String;

.field greylist m_stylesheets:Ljava/util/Vector;

.field greylist m_title:Ljava/lang/String;

.field greylist m_uriResolver:Ljavax/xml/transform/URIResolver;


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 101
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 56
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_stylesheets:Ljava/util/Vector;

    .line 103
    iput-object p1, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_baseID:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_media:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_title:Ljava/lang/String;

    .line 106
    iput-object p4, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_charset:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public greylist getAssociatedStylesheet()Ljavax/xml/transform/Source;
    .registers 2

    .line 118
    iget-object v0, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_stylesheets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 122
    iget-object p0, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_stylesheets:Ljava/util/Vector;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/xml/transform/Source;

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getBaseId()Ljava/lang/String;
    .registers 1

    .line 337
    iget-object p0, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_baseID:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getURIResolver()Ljavax/xml/transform/URIResolver;
    .registers 1

    .line 86
    iget-object p0, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    return-object p0
.end method

.method public whitelist test-api processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 144
    const-string v1, "xml-stylesheet"

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_251

    .line 152
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, " \t=\n"

    const/4 v3, 0x1

    move-object/from16 v4, p2

    invoke-direct {v1, v4, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 156
    const-string v5, ""

    move v11, v2

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v5

    move-object v5, v9

    .line 157
    :cond_21
    :goto_21
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-eqz v12, :cond_209

    if-nez v11, :cond_2e

    .line 160
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    goto :goto_2f

    :cond_2e
    move v11, v2

    .line 163
    :goto_2f
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    const-string v13, "\t"

    const-string v14, " "

    const-string v15, "="

    if-eqz v12, :cond_4e

    .line 164
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_21

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_21

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4e

    goto :goto_21

    .line 168
    :cond_4e
    const-string v12, "type"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_86

    .line 170
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 171
    :goto_5a
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_77

    .line 172
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_72

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_72

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_77

    .line 173
    :cond_72
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    goto :goto_5a

    .line 174
    :cond_77
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v3

    invoke-virtual {v4, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v10

    move-object v10, v4

    move-object/from16 v4, v16

    goto :goto_21

    .line 177
    :cond_86
    const-string v12, "href"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_125

    .line 179
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 180
    :goto_92
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_af

    .line 181
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_aa

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_aa

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_af

    .line 182
    :cond_aa
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    goto :goto_92

    .line 184
    :cond_af
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_f2

    .line 186
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v16, v9

    move-object v9, v5

    move-object/from16 v5, v16

    .line 195
    :goto_be
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ec

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_ec

    .line 197
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 198
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_ec

    .line 200
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    move v11, v3

    goto :goto_be

    :cond_ec
    move-object/from16 v16, v9

    move-object v9, v5

    move-object/from16 v5, v16

    goto :goto_f3

    :cond_f2
    move-object v9, v5

    .line 209
    :goto_f3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v3

    invoke-virtual {v5, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 213
    :try_start_fc
    iget-object v10, v0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    if-eqz v10, :cond_107

    .line 215
    iget-object v12, v0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_baseID:Ljava/lang/String;

    invoke-interface {v10, v5, v12}, Ljavax/xml/transform/URIResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;

    move-result-object v10

    goto :goto_117

    .line 219
    :cond_107
    iget-object v10, v0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_baseID:Ljava/lang/String;

    invoke-static {v5, v10}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 220
    new-instance v10, Ljavax/xml/transform/sax/SAXSource;

    new-instance v12, Lorg/xml/sax/InputSource;

    invoke-direct {v12, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v12}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V
    :try_end_117
    .catch Ljavax/xml/transform/TransformerException; {:try_start_fc .. :try_end_117} :catch_11e

    :goto_117
    move-object/from16 v16, v10

    move-object v10, v9

    move-object/from16 v9, v16

    goto/16 :goto_21

    :catch_11e
    move-exception v0

    .line 225
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 228
    :cond_125
    const-string v12, "title"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15e

    .line 230
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 231
    :goto_131
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_14e

    .line 232
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_149

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_149

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14e

    .line 233
    :cond_149
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    goto :goto_131

    .line 234
    :cond_14e
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v3

    invoke-virtual {v8, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v10

    move-object v10, v8

    move-object/from16 v8, v16

    goto/16 :goto_21

    .line 236
    :cond_15e
    const-string v12, "media"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_197

    .line 238
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 239
    :goto_16a
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_187

    .line 240
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_182

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_182

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_187

    .line 241
    :cond_182
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    goto :goto_16a

    .line 242
    :cond_187
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v3

    invoke-virtual {v6, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v10

    move-object v10, v6

    move-object/from16 v6, v16

    goto/16 :goto_21

    .line 244
    :cond_197
    const-string v12, "charset"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d0

    .line 246
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 247
    :goto_1a3
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_1c0

    .line 248
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1bb

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1bb

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c0

    .line 249
    :cond_1bb
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    goto :goto_1a3

    .line 250
    :cond_1c0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v3

    invoke-virtual {v7, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v10

    move-object v10, v7

    move-object/from16 v7, v16

    goto/16 :goto_21

    .line 252
    :cond_1d0
    const-string v12, "alternate"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21

    .line 254
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 255
    :goto_1dc
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-eqz v12, :cond_1f9

    .line 256
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1f4

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1f4

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1f9

    .line 257
    :cond_1f4
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    goto :goto_1dc

    .line 258
    :cond_1f9
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v3

    invoke-virtual {v10, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const-string v13, "yes"

    .line 259
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_21

    :cond_209
    if-eqz v4, :cond_251

    .line 264
    const-string v1, "text/xsl"

    .line 265
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_223

    const-string v1, "text/xml"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_223

    const-string v1, "application/xml+xslt"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_251

    :cond_223
    if-eqz v5, :cond_251

    .line 268
    iget-object v1, v0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_media:Ljava/lang/String;

    if-eqz v1, :cond_232

    if-eqz v6, :cond_251

    .line 272
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_232

    goto :goto_251

    .line 279
    :cond_232
    iget-object v1, v0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_charset:Ljava/lang/String;

    if-eqz v1, :cond_23f

    if-eqz v7, :cond_251

    .line 283
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23f

    goto :goto_251

    .line 290
    :cond_23f
    iget-object v1, v0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_title:Ljava/lang/String;

    if-eqz v1, :cond_24c

    if-eqz v8, :cond_251

    .line 294
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24c

    goto :goto_251

    .line 301
    :cond_24c
    iget-object v0, v0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_stylesheets:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_251
    :goto_251
    return-void
.end method

.method public greylist setBaseId(Ljava/lang/String;)V
    .registers 2

    .line 333
    iput-object p1, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_baseID:Ljava/lang/String;

    return-void
.end method

.method public greylist setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    return-void
.end method

.method public whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 324
    new-instance p0, Lorg/apache/xml/utils/StopParseException;

    invoke-direct {p0}, Lorg/apache/xml/utils/StopParseException;-><init>()V

    throw p0
.end method
