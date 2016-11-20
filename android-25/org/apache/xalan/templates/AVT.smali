.class public Lorg/apache/xalan/templates/AVT;
.super Ljava/lang/Object;
.source "AVT.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/xalan/templates/XSLTVisitable;


# static fields
.field private static final INIT_BUFFER_CHUNK_BITS:I = 0x8

.field private static final USE_OBJECT_POOL:Z = false

.field static final serialVersionUID:J = 0x47b707542b5c3003L


# instance fields
.field private m_name:Ljava/lang/String;

.field private m_parts:Ljava/util/Vector;

.field private m_rawName:Ljava/lang/String;

.field private m_simpleString:Ljava/lang/String;

.field private m_uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .locals 16
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "stringedValue"    # Ljava/lang/String;
    .param p6, "owner"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 162
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    const/4 v13, 0x0

    #@4
    move-object/from16 v0, p0

    #@6
    iput-object v13, v0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    #@8
    .line 67
    const/4 v13, 0x0

    #@9
    move-object/from16 v0, p0

    #@b
    iput-object v13, v0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    #@d
    .line 168
    move-object/from16 v0, p2

    #@f
    move-object/from16 v1, p0

    #@11
    iput-object v0, v1, Lorg/apache/xalan/templates/AVT;->m_uri:Ljava/lang/String;

    #@13
    .line 169
    move-object/from16 v0, p3

    #@15
    move-object/from16 v1, p0

    #@17
    iput-object v0, v1, Lorg/apache/xalan/templates/AVT;->m_name:Ljava/lang/String;

    #@19
    .line 170
    move-object/from16 v0, p4

    #@1b
    move-object/from16 v1, p0

    #@1d
    iput-object v0, v1, Lorg/apache/xalan/templates/AVT;->m_rawName:Ljava/lang/String;

    #@1f
    .line 172
    new-instance v11, Ljava/util/StringTokenizer;

    #@21
    const-string/jumbo v13, "{}\"\'"

    #@24
    .line 173
    const/4 v14, 0x1

    #@25
    .line 172
    move-object/from16 v0, p5

    #@27
    invoke-direct {v11, v0, v13, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@2a
    .line 174
    .local v11, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->countTokens()I

    #@2d
    move-result v7

    #@2e
    .line 176
    .local v7, "nTokens":I
    const/4 v13, 0x2

    #@2f
    if-ge v7, v13, :cond_1

    #@31
    .line 178
    move-object/from16 v0, p5

    #@33
    move-object/from16 v1, p0

    #@35
    iput-object v0, v1, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    #@37
    .line 432
    :goto_0
    move-object/from16 v0, p0

    #@39
    iget-object v13, v0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    #@3b
    if-nez v13, :cond_0

    #@3d
    move-object/from16 v0, p0

    #@3f
    iget-object v13, v0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    #@41
    if-nez v13, :cond_0

    #@43
    .line 436
    const-string/jumbo v13, ""

    #@46
    move-object/from16 v0, p0

    #@48
    iput-object v13, v0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    #@4a
    .line 165
    :cond_0
    return-void

    #@4b
    .line 182
    :cond_1
    const/4 v2, 0x0

    #@4c
    .line 183
    .local v2, "buffer":Lorg/apache/xml/utils/FastStringBuffer;
    const/4 v5, 0x0

    #@4d
    .line 188
    .local v5, "exprBuffer":Lorg/apache/xml/utils/FastStringBuffer;
    new-instance v2, Lorg/apache/xml/utils/FastStringBuffer;

    #@4f
    .end local v2    # "buffer":Lorg/apache/xml/utils/FastStringBuffer;
    const/4 v13, 0x6

    #@50
    invoke-direct {v2, v13}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(I)V

    #@53
    .line 189
    .local v2, "buffer":Lorg/apache/xml/utils/FastStringBuffer;
    new-instance v5, Lorg/apache/xml/utils/FastStringBuffer;

    #@55
    .end local v5    # "exprBuffer":Lorg/apache/xml/utils/FastStringBuffer;
    const/4 v13, 0x6

    #@56
    invoke-direct {v5, v13}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(I)V

    #@59
    .line 193
    .local v5, "exprBuffer":Lorg/apache/xml/utils/FastStringBuffer;
    :try_start_0
    new-instance v13, Ljava/util/Vector;

    #@5b
    add-int/lit8 v14, v7, 0x1

    #@5d
    invoke-direct {v13, v14}, Ljava/util/Vector;-><init>(I)V

    #@60
    move-object/from16 v0, p0

    #@62
    iput-object v13, v0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    #@64
    .line 195
    const/4 v10, 0x0

    #@65
    .line 196
    .local v10, "t":Ljava/lang/String;
    const/4 v6, 0x0

    #@66
    .line 197
    .local v6, "lookahead":Ljava/lang/String;
    const/4 v3, 0x0

    #@67
    .line 199
    .end local v6    # "lookahead":Ljava/lang/String;
    .end local v10    # "t":Ljava/lang/String;
    :cond_2
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@6a
    move-result v13

    #@6b
    if-eqz v13, :cond_4

    #@6d
    .line 201
    if-eqz v6, :cond_6

    #@6f
    .line 203
    move-object v10, v6

    #@70
    .line 204
    .local v10, "t":Ljava/lang/String;
    const/4 v6, 0x0

    #@71
    .line 209
    :goto_1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@74
    move-result v13

    #@75
    const/4 v14, 0x1

    #@76
    if-ne v13, v14, :cond_d

    #@78
    .line 211
    const/4 v13, 0x0

    #@79
    invoke-virtual {v10, v13}, Ljava/lang/String;->charAt(I)C

    #@7c
    move-result v13

    #@7d
    sparse-switch v13, :sswitch_data_0

    #@80
    .line 387
    invoke-virtual {v2, v10}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@83
    .line 398
    :cond_3
    :goto_2
    if-eqz v3, :cond_2

    #@85
    .line 402
    :try_start_1
    const-string/jumbo v13, "WG_ATTR_TEMPLATE"

    #@88
    .line 403
    const/4 v14, 0x1

    #@89
    new-array v14, v14, [Ljava/lang/Object;

    #@8b
    const/4 v15, 0x0

    #@8c
    aput-object v3, v14, v15

    #@8e
    .line 402
    move-object/from16 v0, p1

    #@90
    invoke-virtual {v0, v13, v14}, Lorg/apache/xalan/processor/StylesheetHandler;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@93
    .line 414
    .end local v10    # "t":Ljava/lang/String;
    :cond_4
    :try_start_2
    invoke-virtual {v2}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    #@96
    move-result v13

    #@97
    if-lez v13, :cond_5

    #@99
    .line 416
    move-object/from16 v0, p0

    #@9b
    iget-object v13, v0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    #@9d
    new-instance v14, Lorg/apache/xalan/templates/AVTPartSimple;

    #@9f
    invoke-virtual {v2}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    #@a2
    move-result-object v15

    #@a3
    invoke-direct {v14, v15}, Lorg/apache/xalan/templates/AVTPartSimple;-><init>(Ljava/lang/String;)V

    #@a6
    invoke-virtual {v13, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@a9
    .line 417
    const/4 v13, 0x0

    #@aa
    invoke-virtual {v2, v13}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    #@ad
    .line 426
    :cond_5
    const/4 v2, 0x0

    #@ae
    .line 427
    .local v2, "buffer":Lorg/apache/xml/utils/FastStringBuffer;
    const/4 v5, 0x0

    #@af
    .local v5, "exprBuffer":Lorg/apache/xml/utils/FastStringBuffer;
    goto :goto_0

    #@b0
    .line 207
    .local v2, "buffer":Lorg/apache/xml/utils/FastStringBuffer;
    .local v5, "exprBuffer":Lorg/apache/xml/utils/FastStringBuffer;
    :cond_6
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@b3
    move-result-object v10

    #@b4
    .restart local v10    # "t":Ljava/lang/String;
    goto :goto_1

    #@b5
    .line 218
    :sswitch_0
    invoke-virtual {v2, v10}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@b8
    goto :goto_2

    #@b9
    .line 421
    .end local v10    # "t":Ljava/lang/String;
    :catchall_0
    move-exception v13

    #@ba
    .line 426
    const/4 v2, 0x0

    #@bb
    .line 427
    .local v2, "buffer":Lorg/apache/xml/utils/FastStringBuffer;
    const/4 v5, 0x0

    #@bc
    .line 421
    .local v5, "exprBuffer":Lorg/apache/xml/utils/FastStringBuffer;
    throw v13

    #@bd
    .line 228
    .local v2, "buffer":Lorg/apache/xml/utils/FastStringBuffer;
    .local v5, "exprBuffer":Lorg/apache/xml/utils/FastStringBuffer;
    .restart local v10    # "t":Ljava/lang/String;
    :sswitch_1
    :try_start_3
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@c0
    move-result-object v6

    #@c1
    .line 230
    .local v6, "lookahead":Ljava/lang/String;
    const-string/jumbo v13, "{"

    #@c4
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c7
    move-result v13

    #@c8
    if-eqz v13, :cond_7

    #@ca
    .line 234
    invoke-virtual {v2, v6}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@cd
    .line 236
    const/4 v6, 0x0

    #@ce
    .line 238
    .local v6, "lookahead":Ljava/lang/String;
    goto :goto_2

    #@cf
    .line 251
    .local v6, "lookahead":Ljava/lang/String;
    :cond_7
    invoke-virtual {v2}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    #@d2
    move-result v13

    #@d3
    if-lez v13, :cond_8

    #@d5
    .line 253
    move-object/from16 v0, p0

    #@d7
    iget-object v13, v0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    #@d9
    new-instance v14, Lorg/apache/xalan/templates/AVTPartSimple;

    #@db
    invoke-virtual {v2}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    #@de
    move-result-object v15

    #@df
    invoke-direct {v14, v15}, Lorg/apache/xalan/templates/AVTPartSimple;-><init>(Ljava/lang/String;)V

    #@e2
    invoke-virtual {v13, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@e5
    .line 254
    const/4 v13, 0x0

    #@e6
    invoke-virtual {v2, v13}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    #@e9
    .line 257
    :cond_8
    const/4 v13, 0x0

    #@ea
    invoke-virtual {v5, v13}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    #@ed
    .line 259
    .end local v6    # "lookahead":Ljava/lang/String;
    :goto_3
    if-eqz v6, :cond_b

    #@ef
    .line 261
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@f2
    move-result v13

    #@f3
    const/4 v14, 0x1

    #@f4
    if-ne v13, v14, :cond_a

    #@f6
    .line 263
    const/4 v13, 0x0

    #@f7
    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    #@fa
    move-result v13

    #@fb
    sparse-switch v13, :sswitch_data_1

    #@fe
    .line 321
    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@101
    .line 323
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@104
    move-result-object v6

    #@105
    .restart local v6    # "lookahead":Ljava/lang/String;
    goto :goto_3

    #@106
    .line 270
    .end local v6    # "lookahead":Ljava/lang/String;
    :sswitch_2
    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@109
    .line 272
    move-object v8, v6

    #@10a
    .line 275
    .local v8, "quote":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@10d
    move-result-object v6

    #@10e
    .line 277
    .restart local v6    # "lookahead":Ljava/lang/String;
    :goto_4
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@111
    move-result v13

    #@112
    if-nez v13, :cond_9

    #@114
    .line 279
    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@117
    .line 281
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@11a
    move-result-object v6

    #@11b
    goto :goto_4

    #@11c
    .line 284
    :cond_9
    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@11f
    .line 286
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@122
    move-result-object v6

    #@123
    goto :goto_3

    #@124
    .line 295
    .end local v6    # "lookahead":Ljava/lang/String;
    .end local v8    # "quote":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v13, "ER_NO_CURLYBRACE"

    #@127
    const/4 v14, 0x0

    #@128
    .line 294
    invoke-static {v13, v14}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@12b
    move-result-object v3

    #@12c
    .line 297
    .local v3, "error":Ljava/lang/String;
    const/4 v6, 0x0

    #@12d
    .line 299
    .local v6, "lookahead":Ljava/lang/String;
    goto :goto_3

    #@12e
    .line 306
    .end local v3    # "error":Ljava/lang/String;
    .end local v6    # "lookahead":Ljava/lang/String;
    :sswitch_4
    const/4 v13, 0x0

    #@12f
    invoke-virtual {v2, v13}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    #@132
    .line 309
    invoke-virtual {v5}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    #@135
    move-result-object v13

    #@136
    move-object/from16 v0, p1

    #@138
    move-object/from16 v1, p6

    #@13a
    invoke-virtual {v0, v13, v1}, Lorg/apache/xalan/processor/StylesheetHandler;->createXPath(Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;

    #@13d
    move-result-object v12

    #@13e
    .line 311
    .local v12, "xpath":Lorg/apache/xpath/XPath;
    move-object/from16 v0, p0

    #@140
    iget-object v13, v0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    #@142
    new-instance v14, Lorg/apache/xalan/templates/AVTPartXPath;

    #@144
    invoke-direct {v14, v12}, Lorg/apache/xalan/templates/AVTPartXPath;-><init>(Lorg/apache/xpath/XPath;)V

    #@147
    invoke-virtual {v13, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@14a
    .line 313
    const/4 v6, 0x0

    #@14b
    .line 315
    .restart local v6    # "lookahead":Ljava/lang/String;
    goto :goto_3

    #@14c
    .line 331
    .end local v6    # "lookahead":Ljava/lang/String;
    .end local v12    # "xpath":Lorg/apache/xpath/XPath;
    :cond_a
    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@14f
    .line 333
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@152
    move-result-object v6

    #@153
    .local v6, "lookahead":Ljava/lang/String;
    goto :goto_3

    #@154
    .line 337
    .end local v6    # "lookahead":Ljava/lang/String;
    :cond_b
    if-eqz v3, :cond_3

    #@156
    goto/16 :goto_2

    #@158
    .line 346
    :catch_0
    move-exception v4

    #@159
    .line 347
    .local v4, "ex":Ljava/util/NoSuchElementException;
    :try_start_4
    const-string/jumbo v13, "ER_ILLEGAL_ATTRIBUTE_VALUE"

    #@15c
    const/4 v14, 0x2

    #@15d
    new-array v14, v14, [Ljava/lang/Object;

    #@15f
    const/4 v15, 0x0

    #@160
    aput-object p3, v14, v15

    #@162
    const/4 v15, 0x1

    #@163
    aput-object p5, v14, v15

    #@165
    invoke-static {v13, v14}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@168
    move-result-object v3

    #@169
    .restart local v3    # "error":Ljava/lang/String;
    goto/16 :goto_2

    #@16b
    .line 353
    .end local v3    # "error":Ljava/lang/String;
    .end local v4    # "ex":Ljava/util/NoSuchElementException;
    :sswitch_5
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@16e
    move-result-object v6

    #@16f
    .line 355
    .restart local v6    # "lookahead":Ljava/lang/String;
    const-string/jumbo v13, "}"

    #@172
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@175
    move-result v13

    #@176
    if-eqz v13, :cond_c

    #@178
    .line 359
    invoke-virtual {v2, v6}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@17b
    .line 361
    const/4 v6, 0x0

    #@17c
    .local v6, "lookahead":Ljava/lang/String;
    goto/16 :goto_2

    #@17e
    .line 369
    .local v6, "lookahead":Ljava/lang/String;
    :cond_c
    :try_start_5
    const-string/jumbo v13, "WG_FOUND_CURLYBRACE"

    #@181
    const/4 v14, 0x0

    #@182
    move-object/from16 v0, p1

    #@184
    invoke-virtual {v0, v13, v14}, Lorg/apache/xalan/processor/StylesheetHandler;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@187
    .line 376
    :try_start_6
    const-string/jumbo v13, "}"

    #@18a
    invoke-virtual {v2, v13}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@18d
    goto/16 :goto_2

    #@18f
    .line 372
    :catch_1
    move-exception v9

    #@190
    .line 373
    .local v9, "se":Lorg/xml/sax/SAXException;
    new-instance v13, Ljavax/xml/transform/TransformerException;

    #@192
    invoke-direct {v13, v9}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@195
    throw v13

    #@196
    .line 395
    .end local v6    # "lookahead":Ljava/lang/String;
    .end local v9    # "se":Lorg/xml/sax/SAXException;
    :cond_d
    invoke-virtual {v2, v10}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@199
    goto/16 :goto_2

    #@19b
    .line 406
    :catch_2
    move-exception v9

    #@19c
    .line 407
    .restart local v9    # "se":Lorg/xml/sax/SAXException;
    new-instance v13, Ljavax/xml/transform/TransformerException;

    #@19e
    invoke-direct {v13, v9}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@1a1
    throw v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@1a2
    .line 211
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x27 -> :sswitch_0
        0x7b -> :sswitch_1
        0x7d -> :sswitch_5
    .end sparse-switch

    #@1b4
    .line 263
    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_2
        0x27 -> :sswitch_2
        0x7b -> :sswitch_3
        0x7d -> :sswitch_4
    .end sparse-switch
.end method

.method private final getBuffer()Lorg/apache/xml/utils/FastStringBuffer;
    .locals 2

    #@0
    .prologue
    .line 611
    new-instance v0, Lorg/apache/xml/utils/FastStringBuffer;

    #@2
    const/16 v1, 0x8

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(I)V

    #@7
    return-object v0
.end method


# virtual methods
.method public callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V
    .locals 4
    .param p1, "visitor"    # Lorg/apache/xalan/templates/XSLTVisitor;

    #@0
    .prologue
    .line 586
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/XSLTVisitor;->visitAVT(Lorg/apache/xalan/templates/AVT;)Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 588
    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    #@c
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    #@f
    move-result v1

    #@10
    .line 590
    .local v1, "n":I
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@13
    .line 592
    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    #@15
    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Lorg/apache/xalan/templates/AVTPart;

    #@1b
    .line 594
    .local v2, "part":Lorg/apache/xalan/templates/AVTPart;
    invoke-virtual {v2, p1}, Lorg/apache/xalan/templates/AVTPart;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    #@1e
    .line 590
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 584
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "part":Lorg/apache/xalan/templates/AVTPart;
    :cond_0
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .locals 4

    #@0
    .prologue
    .line 540
    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    #@2
    if-eqz v3, :cond_1

    #@4
    .line 542
    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    #@6
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    #@9
    move-result v1

    #@a
    .line 544
    .local v1, "n":I
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@d
    .line 546
    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    #@f
    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Lorg/apache/xalan/templates/AVTPart;

    #@15
    .line 548
    .local v2, "part":Lorg/apache/xalan/templates/AVTPart;
    invoke-virtual {v2}, Lorg/apache/xalan/templates/AVTPart;->canTraverseOutsideSubtree()Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_0

    #@1b
    .line 549
    const/4 v3, 0x1

    #@1c
    return v3

    #@1d
    .line 544
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 553
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "part":Lorg/apache/xalan/templates/AVTPart;
    :cond_1
    const/4 v3, 0x0

    #@21
    return v3
.end method

.method public evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;
    .locals 7
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "context"    # I
    .param p3, "nsNode"    # Lorg/apache/xml/utils/PrefixResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 490
    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    #@3
    if-eqz v5, :cond_0

    #@5
    .line 491
    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    #@7
    return-object v5

    #@8
    .line 492
    :cond_0
    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    #@a
    if-eqz v5, :cond_2

    #@c
    .line 493
    invoke-direct {p0}, Lorg/apache/xalan/templates/AVT;->getBuffer()Lorg/apache/xml/utils/FastStringBuffer;

    #@f
    move-result-object v0

    #@10
    .line 494
    .local v0, "buf":Lorg/apache/xml/utils/FastStringBuffer;
    const/4 v3, 0x0

    #@11
    .line 495
    .local v3, "out":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    #@13
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    #@16
    move-result v2

    #@17
    .line 497
    .local v2, "n":I
    const/4 v1, 0x0

    #@18
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@1a
    .line 498
    :try_start_0
    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    #@1c
    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@1f
    move-result-object v4

    #@20
    check-cast v4, Lorg/apache/xalan/templates/AVTPart;

    #@22
    .line 499
    .local v4, "part":Lorg/apache/xalan/templates/AVTPart;
    invoke-virtual {v4, p1, v0, p2, p3}, Lorg/apache/xalan/templates/AVTPart;->evaluate(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/FastStringBuffer;ILorg/apache/xml/utils/PrefixResolver;)V

    #@25
    .line 497
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_0

    #@28
    .line 501
    .end local v4    # "part":Lorg/apache/xalan/templates/AVTPart;
    :cond_1
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    move-result-object v3

    #@2c
    .line 506
    .local v3, "out":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    #@2f
    .line 509
    return-object v3

    #@30
    .line 502
    .local v3, "out":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@31
    .line 506
    invoke-virtual {v0, v6}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    #@34
    .line 502
    throw v5

    #@35
    .line 511
    .end local v0    # "buf":Lorg/apache/xml/utils/FastStringBuffer;
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "out":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, ""

    #@38
    return-object v5
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 4
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    #@0
    .prologue
    .line 568
    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 570
    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    #@6
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    #@9
    move-result v1

    #@a
    .line 572
    .local v1, "n":I
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@d
    .line 574
    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    #@f
    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Lorg/apache/xalan/templates/AVTPart;

    #@15
    .line 576
    .local v2, "part":Lorg/apache/xalan/templates/AVTPart;
    invoke-virtual {v2, p1, p2}, Lorg/apache/xalan/templates/AVTPart;->fixupVariables(Ljava/util/Vector;I)V

    #@18
    .line 572
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 566
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "part":Lorg/apache/xalan/templates/AVTPart;
    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/xalan/templates/AVT;->m_name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRawName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/xalan/templates/AVT;->m_rawName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSimpleString()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 448
    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    #@3
    if-eqz v5, :cond_0

    #@5
    .line 449
    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    #@7
    return-object v5

    #@8
    .line 451
    :cond_0
    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    #@a
    if-eqz v5, :cond_2

    #@c
    .line 452
    invoke-direct {p0}, Lorg/apache/xalan/templates/AVT;->getBuffer()Lorg/apache/xml/utils/FastStringBuffer;

    #@f
    move-result-object v0

    #@10
    .line 453
    .local v0, "buf":Lorg/apache/xml/utils/FastStringBuffer;
    const/4 v3, 0x0

    #@11
    .line 455
    .local v3, "out":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    #@13
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    #@16
    move-result v2

    #@17
    .line 457
    .local v2, "n":I
    const/4 v1, 0x0

    #@18
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@1a
    .line 458
    :try_start_0
    iget-object v5, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    #@1c
    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@1f
    move-result-object v4

    #@20
    check-cast v4, Lorg/apache/xalan/templates/AVTPart;

    #@22
    .line 459
    .local v4, "part":Lorg/apache/xalan/templates/AVTPart;
    invoke-virtual {v4}, Lorg/apache/xalan/templates/AVTPart;->getSimpleString()Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    invoke-virtual {v0, v5}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    #@29
    .line 457
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 461
    .end local v4    # "part":Lorg/apache/xalan/templates/AVTPart;
    :cond_1
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    move-result-object v3

    #@30
    .line 466
    .local v3, "out":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    #@33
    .line 469
    return-object v3

    #@34
    .line 462
    .local v3, "out":Ljava/lang/String;
    :catchall_0
    move-exception v5

    #@35
    .line 466
    invoke-virtual {v0, v6}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    #@38
    .line 462
    throw v5

    #@39
    .line 471
    .end local v0    # "buf":Lorg/apache/xml/utils/FastStringBuffer;
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "out":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, ""

    #@3c
    return-object v5
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/xalan/templates/AVT;->m_uri:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isContextInsensitive()Z
    .locals 1

    #@0
    .prologue
    .line 528
    iget-object v0, p0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public isSimple()Z
    .locals 1

    #@0
    .prologue
    .line 604
    iget-object v0, p0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 120
    iput-object p1, p0, Lorg/apache/xalan/templates/AVT;->m_name:Ljava/lang/String;

    #@2
    .line 118
    return-void
.end method

.method public setRawName(Ljava/lang/String;)V
    .locals 0
    .param p1, "rawName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 94
    iput-object p1, p0, Lorg/apache/xalan/templates/AVT;->m_rawName:Ljava/lang/String;

    #@2
    .line 92
    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 146
    iput-object p1, p0, Lorg/apache/xalan/templates/AVT;->m_uri:Ljava/lang/String;

    #@2
    .line 144
    return-void
.end method
