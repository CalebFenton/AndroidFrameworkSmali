.class public Lorg/apache/xalan/templates/AVT;
.super Ljava/lang/Object;
.source "AVT.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/xalan/templates/XSLTVisitable;


# static fields
.field private static final greylist INIT_BUFFER_CHUNK_BITS:I = 0x8

.field private static final greylist USE_OBJECT_POOL:Z = false

.field static final whitelist serialVersionUID:J = 0x47b707542b5c3003L


# instance fields
.field private greylist m_name:Ljava/lang/String;

.field private greylist m_parts:Ljava/util/Vector;

.field private greylist m_rawName:Ljava/lang/String;

.field private greylist m_simpleString:Ljava/lang/String;

.field private greylist m_uri:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    .line 166
    const-string v4, "}"

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    .line 61
    iput-object v5, v0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    .line 67
    iput-object v5, v0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    move-object/from16 v6, p2

    .line 168
    iput-object v6, v0, Lorg/apache/xalan/templates/AVT;->m_uri:Ljava/lang/String;

    .line 169
    iput-object v2, v0, Lorg/apache/xalan/templates/AVT;->m_name:Ljava/lang/String;

    move-object/from16 v6, p4

    .line 170
    iput-object v6, v0, Lorg/apache/xalan/templates/AVT;->m_rawName:Ljava/lang/String;

    .line 172
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, "{}\"\'"

    const/4 v8, 0x1

    invoke-direct {v6, v3, v7, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 174
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v7

    const/4 v9, 0x2

    if-ge v7, v9, :cond_2f

    .line 178
    iput-object v3, v0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    goto/16 :goto_19a

    .line 188
    :cond_2f
    new-instance v9, Lorg/apache/xml/utils/FastStringBuffer;

    const/4 v10, 0x6

    invoke-direct {v9, v10}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(I)V

    .line 189
    new-instance v11, Lorg/apache/xml/utils/FastStringBuffer;

    invoke-direct {v11, v10}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(I)V

    .line 193
    new-instance v10, Ljava/util/Vector;

    add-int/2addr v7, v8

    invoke-direct {v10, v7}, Ljava/util/Vector;-><init>(I)V

    iput-object v10, v0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    move-object v7, v5

    move-object v10, v7

    .line 199
    :goto_44
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_183

    if-eqz v7, :cond_4f

    move-object v12, v5

    goto :goto_58

    .line 207
    :cond_4f
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v16, v12

    move-object v12, v7

    move-object/from16 v7, v16

    .line 209
    :goto_58
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    if-ne v14, v8, :cond_163

    .line 211
    invoke-virtual {v7, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x22

    if-eq v14, v15, :cond_15c

    const/16 v15, 0x27

    if-eq v14, v15, :cond_15c

    const/16 v15, 0x7d

    const/16 v8, 0x7b

    if-eq v14, v8, :cond_a1

    if-eq v14, v15, :cond_7a

    .line 387
    invoke-virtual {v9, v7}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    move-object/from16 v8, p6

    move-object v14, v5

    goto/16 :goto_14f

    .line 353
    :cond_7a
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 355
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8d

    .line 359
    invoke-virtual {v9, v7}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    :goto_87
    move-object/from16 v8, p6

    move-object v7, v5

    move-object v14, v7

    goto/16 :goto_16a

    .line 369
    :cond_8d
    :try_start_8d
    const-string v8, "WG_FOUND_CURLYBRACE"

    invoke-virtual {v1, v8, v5}, Lorg/apache/xalan/processor/StylesheetHandler;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_92
    .catch Lorg/xml/sax/SAXException; {:try_start_8d .. :try_end_92} :catch_9a
    .catchall {:try_start_8d .. :try_end_92} :catchall_176

    .line 376
    invoke-virtual {v9, v4}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    move-object/from16 v8, p6

    move-object v14, v5

    goto/16 :goto_16a

    :catch_9a
    move-exception v0

    .line 373
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 228
    :cond_a1
    :try_start_a1
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    .line 230
    const-string v7, "{"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b6

    .line 234
    invoke-virtual {v9, v12}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_87

    :catch_b1
    move-object/from16 v8, p6

    move-object v14, v5

    goto/16 :goto_151

    .line 251
    :cond_b6
    invoke-virtual {v9}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_d3

    .line 253
    iget-object v7, v0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    new-instance v14, Lorg/apache/xalan/templates/AVTPartSimple;
    :try_end_c0
    .catch Ljava/util/NoSuchElementException; {:try_start_a1 .. :try_end_c0} :catch_b1
    .catchall {:try_start_a1 .. :try_end_c0} :catchall_176

    :try_start_c0
    invoke-virtual {v9}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v14, v5}, Lorg/apache/xalan/templates/AVTPartSimple;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 254
    invoke-virtual {v9, v13}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    goto :goto_d3

    :catch_ce
    move-object/from16 v8, p6

    :catch_d0
    const/4 v14, 0x0

    goto/16 :goto_151

    .line 257
    :cond_d3
    :goto_d3
    invoke-virtual {v11, v13}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    :goto_d6
    if-eqz v12, :cond_14c

    .line 261
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v14, 0x1

    if-ne v5, v14, :cond_141

    .line 263
    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x22

    if-eq v5, v7, :cond_11f

    const/16 v7, 0x27

    if-eq v5, v7, :cond_11f

    if-eq v5, v8, :cond_112

    if-eq v5, v15, :cond_f7

    .line 321
    invoke-virtual {v11, v12}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    goto :goto_d6

    .line 306
    :cond_f7
    invoke-virtual {v9, v13}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    .line 309
    invoke-virtual {v11}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_fe
    .catch Ljava/util/NoSuchElementException; {:try_start_c0 .. :try_end_fe} :catch_ce
    .catchall {:try_start_c0 .. :try_end_fe} :catchall_176

    move-object/from16 v8, p6

    :try_start_100
    invoke-virtual {v1, v5, v8}, Lorg/apache/xalan/processor/StylesheetHandler;->createXPath(Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;

    move-result-object v5

    .line 311
    iget-object v7, v0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    new-instance v14, Lorg/apache/xalan/templates/AVTPartXPath;

    invoke-direct {v14, v5}, Lorg/apache/xalan/templates/AVTPartXPath;-><init>(Lorg/apache/xpath/XPath;)V

    invoke-virtual {v7, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v8, 0x7b

    const/4 v12, 0x0

    goto :goto_d6

    :cond_112
    move-object/from16 v8, p6

    .line 294
    const-string v5, "ER_NO_CURLYBRACE"
    :try_end_116
    .catch Ljava/util/NoSuchElementException; {:try_start_100 .. :try_end_116} :catch_d0
    .catchall {:try_start_100 .. :try_end_116} :catchall_176

    const/4 v14, 0x0

    :try_start_117
    invoke-static {v5, v14}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v12, v14

    :goto_11c
    const/16 v8, 0x7b

    goto :goto_d6

    :cond_11f
    move-object/from16 v8, p6

    const/4 v14, 0x0

    .line 270
    invoke-virtual {v11, v12}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5
    :try_end_129
    .catch Ljava/util/NoSuchElementException; {:try_start_117 .. :try_end_129} :catch_151
    .catchall {:try_start_117 .. :try_end_129} :catchall_176

    .line 277
    :goto_129
    :try_start_129
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_139

    .line 279
    invoke-virtual {v11, v5}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    goto :goto_129

    :catch_137
    move-object v12, v5

    goto :goto_151

    .line 284
    :cond_139
    invoke-virtual {v11, v5}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12
    :try_end_140
    .catch Ljava/util/NoSuchElementException; {:try_start_129 .. :try_end_140} :catch_137
    .catchall {:try_start_129 .. :try_end_140} :catchall_176

    goto :goto_11c

    :cond_141
    move-object/from16 v8, p6

    const/4 v14, 0x0

    .line 331
    :try_start_144
    invoke-virtual {v11, v12}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12
    :try_end_14b
    .catch Ljava/util/NoSuchElementException; {:try_start_144 .. :try_end_14b} :catch_151
    .catchall {:try_start_144 .. :try_end_14b} :catchall_176

    goto :goto_11c

    :cond_14c
    move-object/from16 v8, p6

    const/4 v14, 0x0

    :goto_14f
    move-object v7, v12

    goto :goto_16a

    .line 347
    :catch_151
    :goto_151
    const-string v5, "ER_ILLEGAL_ATTRIBUTE_VALUE"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v7}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_14f

    :cond_15c
    move-object/from16 v8, p6

    move-object v14, v5

    .line 218
    invoke-virtual {v9, v7}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_14f

    :cond_163
    move-object/from16 v8, p6

    move-object v14, v5

    .line 395
    invoke-virtual {v9, v7}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_14f

    :goto_16a
    if-eqz v10, :cond_17f

    .line 402
    :try_start_16c
    const-string v2, "WG_ATTR_TEMPLATE"

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/xalan/processor/StylesheetHandler;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_175
    .catch Lorg/xml/sax/SAXException; {:try_start_16c .. :try_end_175} :catch_178
    .catchall {:try_start_16c .. :try_end_175} :catchall_176

    goto :goto_183

    :catchall_176
    move-exception v0

    .line 429
    throw v0

    :catch_178
    move-exception v0

    .line 407
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_17f
    move-object v5, v14

    const/4 v8, 0x1

    goto/16 :goto_44

    .line 414
    :cond_183
    :goto_183
    invoke-virtual {v9}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_19a

    .line 416
    iget-object v1, v0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    new-instance v2, Lorg/apache/xalan/templates/AVTPartSimple;

    invoke-virtual {v9}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/xalan/templates/AVTPartSimple;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 417
    invoke-virtual {v9, v13}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    .line 432
    :cond_19a
    :goto_19a
    iget-object v1, v0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    if-nez v1, :cond_1a6

    iget-object v1, v0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    if-nez v1, :cond_1a6

    .line 436
    const-string v1, ""

    iput-object v1, v0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    :cond_1a6
    return-void
.end method

.method private final greylist getBuffer()Lorg/apache/xml/utils/FastStringBuffer;
    .registers 2

    .line 611
    new-instance p0, Lorg/apache/xml/utils/FastStringBuffer;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(I)V

    return-object p0
.end method


# virtual methods
.method public greylist callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V
    .registers 5

    .line 586
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/XSLTVisitor;->visitAVT(Lorg/apache/xalan/templates/AVT;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    if-eqz v0, :cond_1f

    .line 588
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_1f

    .line 592
    iget-object v2, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/templates/AVTPart;

    .line 594
    invoke-interface {v2, p1}, Lorg/apache/xalan/templates/XSLTVisitable;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public greylist canTraverseOutsideSubtree()Z
    .registers 5

    .line 540
    iget-object v0, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 542
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_1f

    .line 546
    iget-object v3, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xalan/templates/AVTPart;

    .line 548
    invoke-virtual {v3}, Lorg/apache/xalan/templates/AVTPart;->canTraverseOutsideSubtree()Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1f
    return v1
.end method

.method public greylist evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 492
    :cond_5
    iget-object v0, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    if-eqz v0, :cond_33

    .line 493
    invoke-direct {p0}, Lorg/apache/xalan/templates/AVT;->getBuffer()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    .line 495
    iget-object v1, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_15
    if-ge v3, v1, :cond_27

    .line 498
    :try_start_17
    iget-object v4, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xalan/templates/AVTPart;

    .line 499
    invoke-virtual {v4, p1, v0, p2, p3}, Lorg/apache/xalan/templates/AVTPart;->evaluate(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/FastStringBuffer;ILorg/apache/xml/utils/PrefixResolver;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :catchall_25
    move-exception p0

    goto :goto_2f

    .line 501
    :cond_27
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2b
    .catchall {:try_start_17 .. :try_end_2b} :catchall_25

    .line 506
    invoke-virtual {v0, v2}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    return-object p0

    :goto_2f
    invoke-virtual {v0, v2}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    .line 508
    throw p0

    .line 511
    :cond_33
    const-string p0, ""

    return-object p0
.end method

.method public greylist fixupVariables(Ljava/util/Vector;I)V
    .registers 6

    .line 568
    iget-object v0, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    if-eqz v0, :cond_19

    .line 570
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_19

    .line 574
    iget-object v2, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/templates/AVTPart;

    .line 576
    invoke-virtual {v2, p1, p2}, Lorg/apache/xalan/templates/AVTPart;->fixupVariables(Ljava/util/Vector;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    return-void
.end method

.method public greylist getName()Ljava/lang/String;
    .registers 1

    .line 110
    iget-object p0, p0, Lorg/apache/xalan/templates/AVT;->m_name:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getRawName()Ljava/lang/String;
    .registers 1

    .line 84
    iget-object p0, p0, Lorg/apache/xalan/templates/AVT;->m_rawName:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getSimpleString()Ljava/lang/String;
    .registers 6

    .line 448
    iget-object v0, p0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 451
    :cond_5
    iget-object v0, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    if-eqz v0, :cond_37

    .line 452
    invoke-direct {p0}, Lorg/apache/xalan/templates/AVT;->getBuffer()Lorg/apache/xml/utils/FastStringBuffer;

    move-result-object v0

    .line 455
    iget-object v1, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_15
    if-ge v3, v1, :cond_2b

    .line 458
    :try_start_17
    iget-object v4, p0, Lorg/apache/xalan/templates/AVT;->m_parts:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xalan/templates/AVTPart;

    .line 459
    invoke-virtual {v4}, Lorg/apache/xalan/templates/AVTPart;->getSimpleString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :catchall_29
    move-exception p0

    goto :goto_33

    .line 461
    :cond_2b
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_29

    .line 466
    invoke-virtual {v0, v2}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    return-object p0

    :goto_33
    invoke-virtual {v0, v2}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    .line 468
    throw p0

    .line 471
    :cond_37
    const-string p0, ""

    return-object p0
.end method

.method public greylist getURI()Ljava/lang/String;
    .registers 1

    .line 136
    iget-object p0, p0, Lorg/apache/xalan/templates/AVT;->m_uri:Ljava/lang/String;

    return-object p0
.end method

.method public greylist isContextInsensitive()Z
    .registers 1

    .line 528
    iget-object p0, p0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public greylist isSimple()Z
    .registers 1

    .line 604
    iget-object p0, p0, Lorg/apache/xalan/templates/AVT;->m_simpleString:Ljava/lang/String;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public greylist setName(Ljava/lang/String;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lorg/apache/xalan/templates/AVT;->m_name:Ljava/lang/String;

    return-void
.end method

.method public greylist setRawName(Ljava/lang/String;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lorg/apache/xalan/templates/AVT;->m_rawName:Ljava/lang/String;

    return-void
.end method

.method public greylist setURI(Ljava/lang/String;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lorg/apache/xalan/templates/AVT;->m_uri:Ljava/lang/String;

    return-void
.end method
