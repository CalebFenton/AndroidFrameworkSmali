.class public Lorg/apache/xml/utils/StylesheetPIHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "StylesheetPIHandler.java"


# instance fields
.field m_baseID:Ljava/lang/String;

.field m_charset:Ljava/lang/String;

.field m_media:Ljava/lang/String;

.field m_stylesheets:Ljava/util/Vector;

.field m_title:Ljava/lang/String;

.field m_uriResolver:Ljavax/xml/transform/URIResolver;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "baseID"    # Ljava/lang/String;
    .param p2, "media"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "charset"    # Ljava/lang/String;

    #@0
    .prologue
    .line 99
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    #@3
    .line 56
    new-instance v0, Ljava/util/Vector;

    #@5
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@8
    iput-object v0, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_stylesheets:Ljava/util/Vector;

    #@a
    .line 103
    iput-object p1, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_baseID:Ljava/lang/String;

    #@c
    .line 104
    iput-object p2, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_media:Ljava/lang/String;

    #@e
    .line 105
    iput-object p3, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_title:Ljava/lang/String;

    #@10
    .line 106
    iput-object p4, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_charset:Ljava/lang/String;

    #@12
    .line 100
    return-void
.end method


# virtual methods
.method public getAssociatedStylesheet()Ljavax/xml/transform/Source;
    .locals 4

    #@0
    .prologue
    .line 118
    iget-object v2, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_stylesheets:Ljava/util/Vector;

    #@2
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@5
    move-result v1

    #@6
    .line 120
    .local v1, "sz":I
    if-lez v1, :cond_0

    #@8
    .line 122
    iget-object v2, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_stylesheets:Ljava/util/Vector;

    #@a
    add-int/lit8 v3, v1, -0x1

    #@c
    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljavax/xml/transform/Source;

    #@12
    .line 123
    .local v0, "source":Ljavax/xml/transform/Source;
    return-object v0

    #@13
    .line 126
    .end local v0    # "source":Ljavax/xml/transform/Source;
    :cond_0
    const/4 v2, 0x0

    #@14
    return-object v2
.end method

.method public getBaseId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 337
    iget-object v0, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_baseID:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getURIResolver()Ljavax/xml/transform/URIResolver;
    .locals 1

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    #@2
    return-object v0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 144
    const-string/jumbo v13, "xml-stylesheet"

    #@3
    move-object/from16 v0, p1

    #@5
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v13

    #@9
    if-eqz v13, :cond_1e

    #@b
    .line 146
    const/4 v3, 0x0

    #@c
    .line 147
    .local v3, "href":Ljava/lang/String;
    const/4 v12, 0x0

    #@d
    .line 148
    .local v12, "type":Ljava/lang/String;
    const/4 v9, 0x0

    #@e
    .line 149
    .local v9, "title":Ljava/lang/String;
    const/4 v5, 0x0

    #@f
    .line 150
    .local v5, "media":Ljava/lang/String;
    const/4 v2, 0x0

    #@10
    .line 151
    .local v2, "charset":Ljava/lang/String;
    const/4 v1, 0x0

    #@11
    .line 152
    .local v1, "alternate":Z
    new-instance v11, Ljava/util/StringTokenizer;

    #@13
    const-string/jumbo v13, " \t=\n"

    #@16
    const/4 v14, 0x1

    #@17
    move-object/from16 v0, p2

    #@19
    invoke-direct {v11, v0, v13, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@1c
    .line 153
    .local v11, "tokenizer":Ljava/util/StringTokenizer;
    const/4 v4, 0x0

    #@1d
    .line 154
    .local v4, "lookedAhead":Z
    const/4 v7, 0x0

    #@1e
    .line 156
    .local v7, "source":Ljavax/xml/transform/Source;
    const-string/jumbo v10, ""

    #@21
    .line 157
    .end local v1    # "alternate":Z
    .end local v2    # "charset":Ljava/lang/String;
    .end local v3    # "href":Ljava/lang/String;
    .end local v5    # "media":Ljava/lang/String;
    .end local v7    # "source":Ljavax/xml/transform/Source;
    .end local v9    # "title":Ljava/lang/String;
    .end local v12    # "type":Ljava/lang/String;
    .local v10, "token":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@24
    move-result v13

    #@25
    if-eqz v13, :cond_16

    #@27
    .line 159
    if-nez v4, :cond_3

    #@29
    .line 160
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@2c
    move-result-object v10

    #@2d
    .line 163
    :goto_1
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@30
    move-result v13

    #@31
    if-eqz v13, :cond_1

    #@33
    .line 164
    const-string/jumbo v13, " "

    #@36
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v13

    #@3a
    if-nez v13, :cond_0

    #@3c
    const-string/jumbo v13, "\t"

    #@3f
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v13

    #@43
    if-nez v13, :cond_0

    #@45
    const-string/jumbo v13, "="

    #@48
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v13

    #@4c
    .line 163
    if-nez v13, :cond_0

    #@4e
    .line 167
    :cond_1
    move-object v6, v10

    #@4f
    .line 168
    .local v6, "name":Ljava/lang/String;
    const-string/jumbo v13, "type"

    #@52
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v13

    #@56
    if-eqz v13, :cond_5

    #@58
    .line 170
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@5b
    move-result-object v10

    #@5c
    .line 171
    :goto_2
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@5f
    move-result v13

    #@60
    if-eqz v13, :cond_4

    #@62
    .line 172
    const-string/jumbo v13, " "

    #@65
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@68
    move-result v13

    #@69
    if-nez v13, :cond_2

    #@6b
    const-string/jumbo v13, "\t"

    #@6e
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@71
    move-result v13

    #@72
    if-nez v13, :cond_2

    #@74
    const-string/jumbo v13, "="

    #@77
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7a
    move-result v13

    #@7b
    .line 171
    if-eqz v13, :cond_4

    #@7d
    .line 173
    :cond_2
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@80
    move-result-object v10

    #@81
    goto :goto_2

    #@82
    .line 162
    .end local v6    # "name":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    #@83
    goto :goto_1

    #@84
    .line 174
    .restart local v6    # "name":Ljava/lang/String;
    :cond_4
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@87
    move-result v13

    #@88
    add-int/lit8 v13, v13, -0x1

    #@8a
    const/4 v14, 0x1

    #@8b
    invoke-virtual {v10, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@8e
    move-result-object v12

    #@8f
    .local v12, "type":Ljava/lang/String;
    goto :goto_0

    #@90
    .line 177
    .end local v12    # "type":Ljava/lang/String;
    :cond_5
    const-string/jumbo v13, "href"

    #@93
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@96
    move-result v13

    #@97
    if-eqz v13, :cond_a

    #@99
    .line 179
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@9c
    move-result-object v10

    #@9d
    .line 180
    :goto_3
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@a0
    move-result v13

    #@a1
    if-eqz v13, :cond_7

    #@a3
    .line 181
    const-string/jumbo v13, " "

    #@a6
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a9
    move-result v13

    #@aa
    if-nez v13, :cond_6

    #@ac
    const-string/jumbo v13, "\t"

    #@af
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b2
    move-result v13

    #@b3
    if-nez v13, :cond_6

    #@b5
    const-string/jumbo v13, "="

    #@b8
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bb
    move-result v13

    #@bc
    .line 180
    if-eqz v13, :cond_7

    #@be
    .line 182
    :cond_6
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@c1
    move-result-object v10

    #@c2
    goto :goto_3

    #@c3
    .line 183
    :cond_7
    move-object v3, v10

    #@c4
    .line 184
    .local v3, "href":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@c7
    move-result v13

    #@c8
    if-eqz v13, :cond_8

    #@ca
    .line 186
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@cd
    move-result-object v10

    #@ce
    .line 195
    :goto_4
    const-string/jumbo v13, "="

    #@d1
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d4
    move-result v13

    #@d5
    if-eqz v13, :cond_8

    #@d7
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@da
    move-result v13

    #@db
    if-eqz v13, :cond_8

    #@dd
    .line 197
    new-instance v13, Ljava/lang/StringBuilder;

    #@df
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@e2
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v13

    #@e6
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v13

    #@ea
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@ed
    move-result-object v14

    #@ee
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v13

    #@f2
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f5
    move-result-object v3

    #@f6
    .line 198
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@f9
    move-result v13

    #@fa
    if-eqz v13, :cond_8

    #@fc
    .line 200
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@ff
    move-result-object v10

    #@100
    .line 201
    const/4 v4, 0x1

    #@101
    goto :goto_4

    #@102
    .line 209
    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@105
    move-result v13

    #@106
    add-int/lit8 v13, v13, -0x1

    #@108
    const/4 v14, 0x1

    #@109
    invoke-virtual {v3, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@10c
    move-result-object v3

    #@10d
    .line 213
    :try_start_0
    iget-object v13, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    #@10f
    if-eqz v13, :cond_9

    #@111
    .line 215
    iget-object v13, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    #@113
    iget-object v14, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_baseID:Ljava/lang/String;

    #@115
    invoke-interface {v13, v3, v14}, Ljavax/xml/transform/URIResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;

    #@118
    move-result-object v7

    #@119
    .local v7, "source":Ljavax/xml/transform/Source;
    goto/16 :goto_0

    #@11b
    .line 219
    .end local v7    # "source":Ljavax/xml/transform/Source;
    :cond_9
    iget-object v13, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_baseID:Ljava/lang/String;

    #@11d
    invoke-static {v3, v13}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@120
    move-result-object v3

    #@121
    .line 220
    new-instance v7, Ljavax/xml/transform/sax/SAXSource;

    #@123
    new-instance v13, Lorg/xml/sax/InputSource;

    #@125
    invoke-direct {v13, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    #@128
    invoke-direct {v7, v13}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@12b
    .restart local v7    # "source":Ljavax/xml/transform/Source;
    goto/16 :goto_0

    #@12d
    .line 224
    .end local v7    # "source":Ljavax/xml/transform/Source;
    :catch_0
    move-exception v8

    #@12e
    .line 225
    .local v8, "te":Ljavax/xml/transform/TransformerException;
    new-instance v13, Lorg/xml/sax/SAXException;

    #@130
    invoke-direct {v13, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@133
    throw v13

    #@134
    .line 228
    .end local v3    # "href":Ljava/lang/String;
    .end local v8    # "te":Ljavax/xml/transform/TransformerException;
    :cond_a
    const-string/jumbo v13, "title"

    #@137
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13a
    move-result v13

    #@13b
    if-eqz v13, :cond_d

    #@13d
    .line 230
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@140
    move-result-object v10

    #@141
    .line 231
    :goto_5
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@144
    move-result v13

    #@145
    if-eqz v13, :cond_c

    #@147
    .line 232
    const-string/jumbo v13, " "

    #@14a
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14d
    move-result v13

    #@14e
    if-nez v13, :cond_b

    #@150
    const-string/jumbo v13, "\t"

    #@153
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@156
    move-result v13

    #@157
    if-nez v13, :cond_b

    #@159
    const-string/jumbo v13, "="

    #@15c
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15f
    move-result v13

    #@160
    .line 231
    if-eqz v13, :cond_c

    #@162
    .line 233
    :cond_b
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@165
    move-result-object v10

    #@166
    goto :goto_5

    #@167
    .line 234
    :cond_c
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@16a
    move-result v13

    #@16b
    add-int/lit8 v13, v13, -0x1

    #@16d
    const/4 v14, 0x1

    #@16e
    invoke-virtual {v10, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@171
    move-result-object v9

    #@172
    .local v9, "title":Ljava/lang/String;
    goto/16 :goto_0

    #@174
    .line 236
    .end local v9    # "title":Ljava/lang/String;
    :cond_d
    const-string/jumbo v13, "media"

    #@177
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17a
    move-result v13

    #@17b
    if-eqz v13, :cond_10

    #@17d
    .line 238
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@180
    move-result-object v10

    #@181
    .line 239
    :goto_6
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@184
    move-result v13

    #@185
    if-eqz v13, :cond_f

    #@187
    .line 240
    const-string/jumbo v13, " "

    #@18a
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18d
    move-result v13

    #@18e
    if-nez v13, :cond_e

    #@190
    const-string/jumbo v13, "\t"

    #@193
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@196
    move-result v13

    #@197
    if-nez v13, :cond_e

    #@199
    const-string/jumbo v13, "="

    #@19c
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19f
    move-result v13

    #@1a0
    .line 239
    if-eqz v13, :cond_f

    #@1a2
    .line 241
    :cond_e
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@1a5
    move-result-object v10

    #@1a6
    goto :goto_6

    #@1a7
    .line 242
    :cond_f
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@1aa
    move-result v13

    #@1ab
    add-int/lit8 v13, v13, -0x1

    #@1ad
    const/4 v14, 0x1

    #@1ae
    invoke-virtual {v10, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1b1
    move-result-object v5

    #@1b2
    .local v5, "media":Ljava/lang/String;
    goto/16 :goto_0

    #@1b4
    .line 244
    .end local v5    # "media":Ljava/lang/String;
    :cond_10
    const-string/jumbo v13, "charset"

    #@1b7
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1ba
    move-result v13

    #@1bb
    if-eqz v13, :cond_13

    #@1bd
    .line 246
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@1c0
    move-result-object v10

    #@1c1
    .line 247
    :goto_7
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@1c4
    move-result v13

    #@1c5
    if-eqz v13, :cond_12

    #@1c7
    .line 248
    const-string/jumbo v13, " "

    #@1ca
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1cd
    move-result v13

    #@1ce
    if-nez v13, :cond_11

    #@1d0
    const-string/jumbo v13, "\t"

    #@1d3
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d6
    move-result v13

    #@1d7
    if-nez v13, :cond_11

    #@1d9
    const-string/jumbo v13, "="

    #@1dc
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1df
    move-result v13

    #@1e0
    .line 247
    if-eqz v13, :cond_12

    #@1e2
    .line 249
    :cond_11
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@1e5
    move-result-object v10

    #@1e6
    goto :goto_7

    #@1e7
    .line 250
    :cond_12
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@1ea
    move-result v13

    #@1eb
    add-int/lit8 v13, v13, -0x1

    #@1ed
    const/4 v14, 0x1

    #@1ee
    invoke-virtual {v10, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1f1
    move-result-object v2

    #@1f2
    .local v2, "charset":Ljava/lang/String;
    goto/16 :goto_0

    #@1f4
    .line 252
    .end local v2    # "charset":Ljava/lang/String;
    :cond_13
    const-string/jumbo v13, "alternate"

    #@1f7
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1fa
    move-result v13

    #@1fb
    if-eqz v13, :cond_0

    #@1fd
    .line 254
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@200
    move-result-object v10

    #@201
    .line 255
    :goto_8
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@204
    move-result v13

    #@205
    if-eqz v13, :cond_15

    #@207
    .line 256
    const-string/jumbo v13, " "

    #@20a
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20d
    move-result v13

    #@20e
    if-nez v13, :cond_14

    #@210
    const-string/jumbo v13, "\t"

    #@213
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@216
    move-result v13

    #@217
    if-nez v13, :cond_14

    #@219
    const-string/jumbo v13, "="

    #@21c
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21f
    move-result v13

    #@220
    .line 255
    if-eqz v13, :cond_15

    #@222
    .line 257
    :cond_14
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@225
    move-result-object v10

    #@226
    goto :goto_8

    #@227
    .line 258
    :cond_15
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@22a
    move-result v13

    #@22b
    add-int/lit8 v13, v13, -0x1

    #@22d
    const/4 v14, 0x1

    #@22e
    invoke-virtual {v10, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@231
    move-result-object v13

    #@232
    .line 259
    const-string/jumbo v14, "yes"

    #@235
    .line 258
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@238
    move-result v1

    #@239
    .local v1, "alternate":Z
    goto/16 :goto_0

    #@23b
    .line 264
    .end local v1    # "alternate":Z
    .end local v6    # "name":Ljava/lang/String;
    :cond_16
    if-eqz v12, :cond_1e

    #@23d
    .line 265
    const-string/jumbo v13, "text/xsl"

    #@240
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@243
    move-result v13

    #@244
    if-nez v13, :cond_17

    #@246
    const-string/jumbo v13, "text/xml"

    #@249
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24c
    move-result v13

    #@24d
    if-nez v13, :cond_17

    #@24f
    const-string/jumbo v13, "application/xml+xslt"

    #@252
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@255
    move-result v13

    #@256
    .line 264
    if-eqz v13, :cond_1e

    #@258
    .line 266
    :cond_17
    if-eqz v3, :cond_1e

    #@25a
    .line 268
    iget-object v13, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_media:Ljava/lang/String;

    #@25c
    if-eqz v13, :cond_19

    #@25e
    .line 270
    if-eqz v5, :cond_18

    #@260
    .line 272
    iget-object v13, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_media:Ljava/lang/String;

    #@262
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@265
    move-result v13

    #@266
    if-nez v13, :cond_19

    #@268
    .line 273
    return-void

    #@269
    .line 276
    :cond_18
    return-void

    #@26a
    .line 279
    :cond_19
    iget-object v13, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_charset:Ljava/lang/String;

    #@26c
    if-eqz v13, :cond_1b

    #@26e
    .line 281
    if-eqz v2, :cond_1a

    #@270
    .line 283
    iget-object v13, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_charset:Ljava/lang/String;

    #@272
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@275
    move-result v13

    #@276
    if-nez v13, :cond_1b

    #@278
    .line 284
    return-void

    #@279
    .line 287
    :cond_1a
    return-void

    #@27a
    .line 290
    :cond_1b
    iget-object v13, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_title:Ljava/lang/String;

    #@27c
    if-eqz v13, :cond_1d

    #@27e
    .line 292
    if-eqz v9, :cond_1c

    #@280
    .line 294
    iget-object v13, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_title:Ljava/lang/String;

    #@282
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@285
    move-result v13

    #@286
    if-nez v13, :cond_1d

    #@288
    .line 295
    return-void

    #@289
    .line 298
    :cond_1c
    return-void

    #@28a
    .line 301
    :cond_1d
    iget-object v13, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_stylesheets:Ljava/util/Vector;

    #@28c
    invoke-virtual {v13, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@28f
    .line 141
    .end local v4    # "lookedAhead":Z
    .end local v10    # "token":Ljava/lang/String;
    .end local v11    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_1e
    return-void
.end method

.method public setBaseId(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 333
    iput-object p1, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_baseID:Ljava/lang/String;

    #@2
    .line 332
    return-void
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .locals 0
    .param p1, "resolver"    # Ljavax/xml/transform/URIResolver;

    #@0
    .prologue
    .line 75
    iput-object p1, p0, Lorg/apache/xml/utils/StylesheetPIHandler;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    #@2
    .line 73
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 324
    new-instance v0, Lorg/apache/xml/utils/StopParseException;

    #@2
    invoke-direct {v0}, Lorg/apache/xml/utils/StopParseException;-><init>()V

    #@5
    throw v0
.end method
