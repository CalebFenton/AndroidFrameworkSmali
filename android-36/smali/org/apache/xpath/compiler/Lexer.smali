.class Lorg/apache/xpath/compiler/Lexer;
.super Ljava/lang/Object;
.source "Lexer.java"


# static fields
.field static final greylist TARGETEXTRA:I = 0x2710


# instance fields
.field private greylist m_compiler:Lorg/apache/xpath/compiler/Compiler;

.field greylist m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

.field private greylist m_patternMap:[I

.field private greylist m_patternMapSize:I

.field greylist m_processor:Lorg/apache/xpath/compiler/XPathParser;


# direct methods
.method constructor greylist <init>(Lorg/apache/xpath/compiler/Compiler;Lorg/apache/xml/utils/PrefixResolver;Lorg/apache/xpath/compiler/XPathParser;)V
    .registers 5

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 64
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    .line 84
    iput-object p1, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    .line 85
    iput-object p2, p0, Lorg/apache/xpath/compiler/Lexer;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    .line 86
    iput-object p3, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    return-void
.end method

.method private final greylist addToTokenQueue(Ljava/lang/String;)V
    .registers 2

    .line 561
    iget-object p0, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/ObjectVector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private greylist getTokenQueuePosFromMap(I)I
    .registers 2

    .line 434
    iget-object p0, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    aget p0, p0, p1

    const/16 p1, 0x2710

    if-lt p0, p1, :cond_9

    sub-int/2addr p0, p1

    :cond_9
    return p0
.end method

.method private greylist mapNSTokens(Ljava/lang/String;III)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    if-ltz p2, :cond_9

    if-ltz p3, :cond_9

    .line 586
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_b

    .line 590
    :cond_9
    const-string p2, ""

    :goto_b
    iget-object v0, p0, Lorg/apache/xpath/compiler/Lexer;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    if-eqz v0, :cond_3a

    const-string v0, "*"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "xmlns"

    .line 591
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 595
    :try_start_1f
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2c

    .line 596
    iget-object v0, p0, Lorg/apache/xpath/compiler/Lexer;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    invoke-interface {v0, p2}, Lorg/apache/xml/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    .line 617
    :cond_2c
    iget-object v0, p0, Lorg/apache/xpath/compiler/Lexer;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    .line 618
    invoke-interface {v0, p2}, Lorg/apache/xml/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_32
    .catch Ljava/lang/ClassCastException; {:try_start_1f .. :try_end_32} :catch_33

    goto :goto_3b

    .line 625
    :catch_33
    iget-object v0, p0, Lorg/apache/xpath/compiler/Lexer;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    invoke-interface {v0, p2}, Lorg/apache/xml/utils/PrefixResolver;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    :cond_3a
    move-object v0, p2

    :goto_3b
    if-eqz v0, :cond_5b

    .line 633
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5b

    .line 635
    invoke-direct {p0, v0}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    .line 636
    const-string p2, ":"

    invoke-direct {p0, p2}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    .line 638
    invoke-virtual {p1, p3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 640
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_66

    .line 641
    invoke-direct {p0, p1}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    goto :goto_66

    .line 647
    :cond_5b
    iget-object p0, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    const-string p1, "ER_PREFIX_MUST_RESOLVE"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/compiler/XPathParser;->errorForDOM3(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_66
    :goto_66
    const/4 p0, -0x1

    return p0
.end method

.method private greylist mapPatternElemPos(IZZ)Z
    .registers 7

    if-nez p1, :cond_38

    .line 402
    iget p1, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    iget-object v0, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    array-length v1, v0

    const/4 v2, 0x0

    if-lt p1, v1, :cond_14

    .line 405
    array-length v1, v0

    add-int/lit8 p1, p1, 0x64

    .line 406
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    .line 407
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_14
    if-nez p2, :cond_22

    .line 411
    iget-object p1, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    iget p2, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    add-int/lit8 p2, p2, -0x1

    aget v0, p1, p2

    add-int/lit16 v0, v0, -0x2710

    aput v0, p1, p2

    .line 413
    :cond_22
    iget-object p1, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMap:[I

    iget p2, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    iget-object v0, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    .line 414
    invoke-virtual {v0}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueueSize()I

    move-result v0

    sub-int/2addr v0, p3

    add-int/lit16 v0, v0, 0x2710

    aput v0, p1, p2

    .line 416
    iget p1, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    return v2

    :cond_38
    return p2
.end method

.method private greylist recordTokenString(Ljava/util/Vector;)V
    .registers 7

    .line 503
    iget v0, p0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/apache/xpath/compiler/Lexer;->getTokenQueuePosFromMap(I)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .line 505
    invoke-direct {p0, v2}, Lorg/apache/xpath/compiler/Lexer;->resetTokenMark(I)V

    .line 507
    iget-object v3, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    const/16 v4, 0x28

    invoke-virtual {v3, v4, v1}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 509
    iget-object v0, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    iget-object v0, v0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/Lexer;->getKeywordToken(Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0x23

    if-eq p0, v0, :cond_48

    const/16 v0, 0x24

    .line 511
    const-string v1, "*"

    if-eq p0, v0, :cond_44

    packed-switch p0, :pswitch_data_78

    .line 532
    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 520
    :pswitch_30
    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 529
    :pswitch_34
    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 517
    :pswitch_38
    const-string p0, "#text"

    invoke-virtual {p1, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 514
    :pswitch_3e
    const-string p0, "#comment"

    invoke-virtual {p1, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 526
    :cond_44
    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 523
    :cond_48
    const-string p0, "/"

    invoke-virtual {p1, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 537
    :cond_4e
    iget-object v3, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v3

    if-eqz v3, :cond_5e

    add-int/lit8 v0, v0, 0x2

    .line 541
    invoke-direct {p0, v0}, Lorg/apache/xpath/compiler/Lexer;->resetTokenMark(I)V

    move v0, v2

    .line 544
    :cond_5e
    iget-object v2, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3, v1}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v1

    if-eqz v1, :cond_6a

    add-int/lit8 v0, v0, 0x2

    .line 549
    :cond_6a
    iget-object p0, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    :pswitch_data_78
    .packed-switch 0x406
        :pswitch_3e
        :pswitch_38
        :pswitch_34
        :pswitch_30
    .end packed-switch
.end method

.method private final greylist resetTokenMark(I)V
    .registers 7

    .line 447
    iget-object v0, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    invoke-virtual {v0}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueueSize()I

    move-result v0

    .line 449
    iget-object v1, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    const/4 v2, 0x0

    if-lez p1, :cond_10

    if-gt p1, v0, :cond_11

    add-int/lit8 p1, p1, -0x1

    goto :goto_11

    :cond_10
    move p1, v2

    .line 450
    :cond_11
    :goto_11
    iput p1, v1, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    if-ge p1, v0, :cond_36

    .line 454
    iget-object p1, p0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    .line 455
    invoke-virtual {p1}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueue()Lorg/apache/xml/utils/ObjectVector;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    iget v3, v0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    invoke-virtual {p1, v3}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v1, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    .line 456
    iget-object p0, p0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    iget-object p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    return-void

    :cond_36
    const/4 p0, 0x0

    .line 460
    iput-object p0, v1, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    .line 461
    iput-char v2, v1, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    return-void
.end method


# virtual methods
.method final greylist getKeywordToken(Ljava/lang/String;)I
    .registers 2

    const/4 p0, 0x0

    .line 479
    :try_start_1
    invoke-static {p1}, Lorg/apache/xpath/compiler/Keywords;->getKeyWord(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_d

    .line 481
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_d} :catch_d
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_d} :catch_d

    :catch_d
    :cond_d
    return p0
.end method

.method greylist tokenize(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/compiler/Lexer;->tokenize(Ljava/lang/String;Ljava/util/Vector;)V

    return-void
.end method

.method greylist tokenize(Ljava/lang/String;Ljava/util/Vector;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 113
    iget-object v3, v0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    iput-object v1, v3, Lorg/apache/xpath/compiler/OpMap;->m_currentPattern:Ljava/lang/String;

    const/4 v3, 0x0

    .line 114
    iput v3, v0, Lorg/apache/xpath/compiler/Lexer;->m_patternMapSize:I

    .line 120
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x1f4

    if-ge v4, v5, :cond_19

    .line 121
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    :cond_19
    mul-int/lit8 v5, v5, 0x5

    .line 122
    iget-object v4, v0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    new-instance v6, Lorg/apache/xpath/compiler/OpMapVector;

    const/16 v7, 0x9c4

    const/4 v8, 0x1

    invoke-direct {v6, v5, v7, v8}, Lorg/apache/xpath/compiler/OpMapVector;-><init>(III)V

    iput-object v6, v4, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    .line 126
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, -0x1

    move v6, v3

    move v9, v6

    move v11, v9

    move v13, v11

    move v7, v5

    move v12, v7

    move v10, v8

    :goto_33
    if-ge v6, v4, :cond_19c

    .line 140
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v16, v8

    const/16 v8, 0x9

    if-eq v15, v8, :cond_17e

    const/16 v8, 0xa

    if-eq v15, v8, :cond_17e

    const/16 v8, 0xd

    if-eq v15, v8, :cond_17e

    const/16 v8, 0x24

    const/16 v3, 0x7c

    const/16 v14, 0x2f

    if-eq v15, v8, :cond_129

    if-eq v15, v14, :cond_129

    const/16 v8, 0x3a

    if-eq v15, v8, :cond_f7

    const/16 v8, 0x40

    if-eq v15, v8, :cond_e9

    if-eq v15, v3, :cond_129

    packed-switch v15, :pswitch_data_1d6

    packed-switch v15, :pswitch_data_1e0

    packed-switch v15, :pswitch_data_1f2

    packed-switch v15, :pswitch_data_1fc

    goto/16 :goto_118

    :pswitch_69
    if-eq v7, v5, :cond_80

    .line 183
    invoke-direct {v0, v9, v10, v11}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    move-result v10

    if-eq v5, v12, :cond_78

    .line 188
    invoke-direct {v0, v1, v7, v12, v6}, Lorg/apache/xpath/compiler/Lexer;->mapNSTokens(Ljava/lang/String;III)I

    move-result v12

    :goto_75
    const/4 v11, 0x0

    const/4 v13, 0x0

    goto :goto_80

    .line 192
    :cond_78
    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    goto :goto_75

    :cond_80
    :goto_80
    add-int/lit8 v3, v6, 0x1

    :goto_82
    const/16 v7, 0x27

    if-ge v3, v4, :cond_8f

    .line 198
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eq v15, v7, :cond_8f

    add-int/lit8 v3, v3, 0x1

    goto :goto_82

    :cond_8f
    if-ne v15, v7, :cond_a0

    if-ge v3, v4, :cond_a0

    add-int/lit8 v7, v3, 0x1

    .line 202
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    :goto_9c
    move v6, v3

    move v7, v5

    goto/16 :goto_195

    .line 208
    :cond_a0
    iget-object v7, v0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    const-string v8, "ER_EXPECTED_SINGLE_QUOTE"

    const/4 v14, 0x0

    invoke-virtual {v7, v8, v14}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_a8
    move v7, v6

    move v6, v3

    goto/16 :goto_195

    :pswitch_ac
    if-eq v7, v5, :cond_c3

    .line 149
    invoke-direct {v0, v9, v10, v11}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    move-result v10

    if-eq v5, v12, :cond_bb

    .line 154
    invoke-direct {v0, v1, v7, v12, v6}, Lorg/apache/xpath/compiler/Lexer;->mapNSTokens(Ljava/lang/String;III)I

    move-result v12

    :goto_b8
    const/4 v11, 0x0

    const/4 v13, 0x0

    goto :goto_c3

    .line 158
    :cond_bb
    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    goto :goto_b8

    :cond_c3
    :goto_c3
    add-int/lit8 v3, v6, 0x1

    :goto_c5
    const/16 v7, 0x22

    if-ge v3, v4, :cond_d2

    .line 164
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eq v15, v7, :cond_d2

    add-int/lit8 v3, v3, 0x1

    goto :goto_c5

    :cond_d2
    if-ne v15, v7, :cond_e0

    if-ge v3, v4, :cond_e0

    add-int/lit8 v7, v3, 0x1

    .line 168
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    goto :goto_9c

    .line 174
    :cond_e0
    iget-object v7, v0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    const-string v8, "ER_EXPECTED_DOUBLE_QUOTE"

    const/4 v14, 0x0

    invoke-virtual {v7, v8, v14}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a8

    :cond_e9
    move/from16 v11, v16

    :pswitch_eb
    const/16 v8, 0x2d

    if-ne v8, v15, :cond_129

    if-nez v13, :cond_f5

    if-eq v7, v5, :cond_f5

    goto/16 :goto_195

    :cond_f5
    const/4 v13, 0x0

    goto :goto_129

    :cond_f7
    if-lez v6, :cond_118

    add-int/lit8 v3, v6, -0x1

    if-ne v12, v3, :cond_117

    if-eq v7, v5, :cond_108

    if-ge v7, v3, :cond_108

    .line 325
    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    :cond_108
    add-int/lit8 v7, v6, 0x1

    .line 333
    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    move v7, v5

    move v12, v7

    :goto_113
    const/4 v11, 0x0

    const/4 v13, 0x0

    goto/16 :goto_195

    :cond_117
    move v12, v6

    :cond_118
    :goto_118
    if-ne v5, v7, :cond_121

    .line 348
    invoke-static {v15}, Ljava/lang/Character;->isDigit(C)Z

    move-result v13

    move v7, v6

    goto/16 :goto_195

    :cond_121
    if-eqz v13, :cond_195

    .line 352
    invoke-static {v15}, Ljava/lang/Character;->isDigit(C)Z

    move-result v13

    goto/16 :goto_195

    :cond_129
    :goto_129
    :pswitch_129
    if-eq v7, v5, :cond_141

    .line 269
    invoke-direct {v0, v9, v10, v11}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    move-result v10

    if-eq v5, v12, :cond_136

    .line 274
    invoke-direct {v0, v1, v7, v12, v6}, Lorg/apache/xpath/compiler/Lexer;->mapNSTokens(Ljava/lang/String;III)I

    move-result v12

    goto :goto_13d

    .line 278
    :cond_136
    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    :goto_13d
    move v7, v5

    const/4 v11, 0x0

    const/4 v13, 0x0

    goto :goto_153

    :cond_141
    if-ne v14, v15, :cond_14a

    if-eqz v10, :cond_14a

    .line 285
    invoke-direct {v0, v9, v10, v11}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    move-result v10

    goto :goto_153

    :cond_14a
    const/16 v8, 0x2a

    if-ne v8, v15, :cond_153

    .line 289
    invoke-direct {v0, v9, v10, v11}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    move-result v10

    const/4 v11, 0x0

    :cond_153
    :goto_153
    if-nez v9, :cond_15e

    if-ne v3, v15, :cond_15e

    if-eqz v2, :cond_15c

    .line 299
    invoke-direct {v0, v2}, Lorg/apache/xpath/compiler/Lexer;->recordTokenString(Ljava/util/Vector;)V

    :cond_15c
    move/from16 v10, v16

    :cond_15e
    const/16 v3, 0x29

    if-eq v3, v15, :cond_172

    const/16 v3, 0x5d

    if-ne v3, v15, :cond_167

    goto :goto_172

    :cond_167
    const/16 v3, 0x28

    if-eq v3, v15, :cond_16f

    const/16 v3, 0x5b

    if-ne v3, v15, :cond_174

    :cond_16f
    add-int/lit8 v9, v9, 0x1

    goto :goto_174

    :cond_172
    :goto_172
    add-int/lit8 v9, v9, -0x1

    :cond_174
    :goto_174
    add-int/lit8 v3, v6, 0x1

    .line 315
    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    goto :goto_195

    :cond_17e
    :pswitch_17e
    if-eq v7, v5, :cond_195

    .line 219
    invoke-direct {v0, v9, v10, v11}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    move-result v10

    if-eq v5, v12, :cond_18b

    .line 224
    invoke-direct {v0, v1, v7, v12, v6}, Lorg/apache/xpath/compiler/Lexer;->mapNSTokens(Ljava/lang/String;III)I

    move-result v12

    goto :goto_192

    .line 228
    :cond_18b
    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    :goto_192
    move v7, v5

    goto/16 :goto_113

    :cond_195
    :goto_195
    add-int/lit8 v6, v6, 0x1

    move/from16 v8, v16

    const/4 v3, 0x0

    goto/16 :goto_33

    :cond_19c
    if-eq v7, v5, :cond_1b9

    .line 360
    invoke-direct {v0, v9, v10, v11}, Lorg/apache/xpath/compiler/Lexer;->mapPatternElemPos(IZZ)Z

    if-ne v5, v12, :cond_1b6

    .line 362
    iget-object v3, v0, Lorg/apache/xpath/compiler/Lexer;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    if-eqz v3, :cond_1ae

    .line 363
    invoke-interface {v3}, Lorg/apache/xml/utils/PrefixResolver;->handlesNullPrefixes()Z

    move-result v3

    if-eqz v3, :cond_1ae

    goto :goto_1b6

    .line 369
    :cond_1ae
    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/compiler/Lexer;->addToTokenQueue(Ljava/lang/String;)V

    goto :goto_1b9

    .line 365
    :cond_1b6
    :goto_1b6
    invoke-direct {v0, v1, v7, v12, v4}, Lorg/apache/xpath/compiler/Lexer;->mapNSTokens(Ljava/lang/String;III)I

    .line 373
    :cond_1b9
    :goto_1b9
    iget-object v1, v0, Lorg/apache/xpath/compiler/Lexer;->m_compiler:Lorg/apache/xpath/compiler/Compiler;

    invoke-virtual {v1}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueueSize()I

    move-result v1

    if-nez v1, :cond_1ca

    .line 375
    iget-object v1, v0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    const-string v2, "ER_EMPTY_EXPRESSION"

    const/4 v14, 0x0

    invoke-virtual {v1, v2, v14}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1cf

    :cond_1ca
    if-eqz v2, :cond_1cf

    .line 379
    invoke-direct {v0, v2}, Lorg/apache/xpath/compiler/Lexer;->recordTokenString(Ljava/util/Vector;)V

    .line 382
    :cond_1cf
    :goto_1cf
    iget-object v0, v0, Lorg/apache/xpath/compiler/Lexer;->m_processor:Lorg/apache/xpath/compiler/XPathParser;

    const/4 v1, 0x0

    iput v1, v0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    return-void

    nop

    :pswitch_data_1d6
    .packed-switch 0x20
        :pswitch_17e
        :pswitch_129
        :pswitch_ac
    .end packed-switch

    :pswitch_data_1e0
    .packed-switch 0x27
        :pswitch_69
        :pswitch_129
        :pswitch_129
        :pswitch_129
        :pswitch_129
        :pswitch_129
        :pswitch_eb
    .end packed-switch

    :pswitch_data_1f2
    .packed-switch 0x3c
        :pswitch_129
        :pswitch_129
        :pswitch_129
    .end packed-switch

    :pswitch_data_1fc
    .packed-switch 0x5b
        :pswitch_129
        :pswitch_129
        :pswitch_129
        :pswitch_129
    .end packed-switch
.end method
