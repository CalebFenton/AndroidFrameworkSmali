.class public Lorg/apache/xpath/compiler/XPathParser;
.super Ljava/lang/Object;
.source "XPathParser.java"


# static fields
.field public static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "CONTINUE_AFTER_FATAL_ERROR"

.field protected static final FILTER_MATCH_FAILED:I = 0x0

.field protected static final FILTER_MATCH_PREDICATES:I = 0x2

.field protected static final FILTER_MATCH_PRIMARY:I = 0x1


# instance fields
.field private m_errorListener:Ljavax/xml/transform/ErrorListener;

.field private m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

.field m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

.field private m_ops:Lorg/apache/xpath/compiler/OpMap;

.field m_queueMark:I

.field m_sourceLocator:Ljavax/xml/transform/SourceLocator;

.field transient m_token:Ljava/lang/String;

.field transient m_tokenChar:C


# direct methods
.method public constructor <init>(Ljavax/xml/transform/ErrorListener;Ljavax/xml/transform/SourceLocator;)V
    .locals 1
    .param p1, "errorListener"    # Ljavax/xml/transform/ErrorListener;
    .param p2, "sourceLocator"    # Ljavax/xml/transform/SourceLocator;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 61
    iput-char v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    #@6
    .line 66
    iput v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    #@8
    .line 80
    iput-object p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    #@a
    .line 81
    iput-object p2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    #@c
    .line 78
    return-void
.end method

.method private assertion(ZLjava/lang/String;)V
    .locals 4
    .param p1, "b"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 581
    if-nez p1, :cond_0

    #@2
    .line 584
    const-string/jumbo v1, "ER_INCORRECT_PROGRAMMER_ASSERTION"

    #@5
    .line 585
    const/4 v2, 0x1

    #@6
    new-array v2, v2, [Ljava/lang/Object;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object p2, v2, v3

    #@b
    .line 583
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 587
    .local v0, "fMsg":Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    #@11
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@14
    throw v1

    #@15
    .line 578
    .end local v0    # "fMsg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private final consumeExpected(C)V
    .locals 4
    .param p1, "expected"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 522
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 524
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@9
    .line 519
    return-void

    #@a
    .line 528
    :cond_0
    const-string/jumbo v0, "ER_EXPECTED_BUT_FOUND"

    #@d
    .line 529
    const/4 v1, 0x2

    #@e
    new-array v1, v1, [Ljava/lang/Object;

    #@10
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    const/4 v3, 0x0

    #@15
    aput-object v2, v1, v3

    #@17
    .line 530
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@19
    const/4 v3, 0x1

    #@1a
    aput-object v2, v1, v3

    #@1c
    .line 528
    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@1f
    .line 535
    new-instance v0, Lorg/apache/xpath/XPathProcessorException;

    #@21
    const-string/jumbo v1, "CONTINUE_AFTER_FATAL_ERROR"

    #@24
    invoke-direct {v0, v1}, Lorg/apache/xpath/XPathProcessorException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0
.end method

.method private final consumeExpected(Ljava/lang/String;)V
    .locals 4
    .param p1, "expected"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 494
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 496
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@9
    .line 491
    return-void

    #@a
    .line 500
    :cond_0
    const-string/jumbo v0, "ER_EXPECTED_BUT_FOUND"

    #@d
    const/4 v1, 0x2

    #@e
    new-array v1, v1, [Ljava/lang/Object;

    #@10
    const/4 v2, 0x0

    #@11
    aput-object p1, v1, v2

    #@13
    .line 501
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@15
    const/4 v3, 0x1

    #@16
    aput-object v2, v1, v3

    #@18
    .line 500
    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@1b
    .line 506
    new-instance v0, Lorg/apache/xpath/XPathProcessorException;

    #@1d
    const-string/jumbo v1, "CONTINUE_AFTER_FATAL_ERROR"

    #@20
    invoke-direct {v0, v1}, Lorg/apache/xpath/XPathProcessorException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0
.end method

.method private final getTokenRelative(I)Ljava/lang/String;
    .locals 3
    .param p1, "i"    # I

    #@0
    .prologue
    .line 447
    iget v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    #@2
    add-int v0, v2, p1

    #@4
    .line 449
    .local v0, "relative":I
    if-lez v0, :cond_0

    #@6
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@8
    invoke-virtual {v2}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueueSize()I

    #@b
    move-result v2

    #@c
    if-ge v0, v2, :cond_0

    #@e
    .line 451
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@10
    iget-object v2, v2, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    #@12
    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Ljava/lang/String;

    #@18
    .line 458
    :goto_0
    return-object v1

    #@19
    .line 455
    :cond_0
    const/4 v1, 0x0

    #@1a
    .local v1, "tok":Ljava/lang/String;
    goto :goto_0
.end method

.method private final lookahead(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "n"    # I

    #@0
    .prologue
    .line 402
    iget v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    #@2
    add-int/2addr v2, p2

    #@3
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@5
    invoke-virtual {v3}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueueSize()I

    #@8
    move-result v3

    #@9
    if-gt v2, v3, :cond_2

    #@b
    .line 404
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@d
    iget-object v2, v2, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    #@f
    iget v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    #@11
    add-int/lit8 v4, p2, -0x1

    #@13
    add-int/2addr v3, v4

    #@14
    invoke-virtual {v2, v3}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Ljava/lang/String;

    #@1a
    .line 406
    .local v1, "lookahead":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@1c
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v0

    #@20
    .line 413
    .end local v1    # "lookahead":Ljava/lang/String;
    :goto_0
    return v0

    #@21
    .line 406
    .restart local v1    # "lookahead":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    #@23
    const/4 v0, 0x1

    #@24
    .local v0, "isToken":Z
    goto :goto_0

    #@25
    .end local v0    # "isToken":Z
    :cond_1
    const/4 v0, 0x0

    #@26
    .restart local v0    # "isToken":Z
    goto :goto_0

    #@27
    .line 410
    .end local v0    # "isToken":Z
    .end local v1    # "lookahead":Ljava/lang/String;
    :cond_2
    if-nez p1, :cond_3

    #@29
    const/4 v0, 0x1

    #@2a
    .restart local v0    # "isToken":Z
    goto :goto_0

    #@2b
    .end local v0    # "isToken":Z
    :cond_3
    const/4 v0, 0x0

    #@2c
    .restart local v0    # "isToken":Z
    goto :goto_0
.end method

.method private final lookbehind(CI)Z
    .locals 7
    .param p1, "c"    # C
    .param p2, "n"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 329
    iget v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    #@3
    add-int/lit8 v5, p2, 0x1

    #@5
    sub-int v2, v4, v5

    #@7
    .line 331
    .local v2, "lookBehindPos":I
    if-ltz v2, :cond_4

    #@9
    .line 333
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@b
    iget-object v4, v4, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    #@d
    invoke-virtual {v4, v2}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Ljava/lang/String;

    #@13
    .line 335
    .local v3, "lookbehind":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@16
    move-result v4

    #@17
    const/4 v5, 0x1

    #@18
    if-ne v4, v5, :cond_3

    #@1a
    .line 337
    if-nez v3, :cond_1

    #@1c
    const/16 v0, 0x7c

    #@1e
    .line 339
    :goto_0
    const/16 v4, 0x7c

    #@20
    if-ne v0, v4, :cond_2

    #@22
    :cond_0
    const/4 v1, 0x0

    #@23
    .line 351
    .end local v3    # "lookbehind":Ljava/lang/String;
    .local v1, "isToken":Z
    :goto_1
    return v1

    #@24
    .line 337
    .end local v1    # "isToken":Z
    .restart local v3    # "lookbehind":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    #@27
    move-result v0

    #@28
    .local v0, "c0":C
    goto :goto_0

    #@29
    .line 339
    .end local v0    # "c0":C
    :cond_2
    if-ne v0, p1, :cond_0

    #@2b
    const/4 v1, 0x1

    #@2c
    .restart local v1    # "isToken":Z
    goto :goto_1

    #@2d
    .line 343
    .end local v1    # "isToken":Z
    :cond_3
    const/4 v1, 0x0

    #@2e
    .restart local v1    # "isToken":Z
    goto :goto_1

    #@2f
    .line 348
    .end local v1    # "isToken":Z
    .end local v3    # "lookbehind":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    #@30
    .restart local v1    # "isToken":Z
    goto :goto_1
.end method

.method private final lookbehindHasToken(I)Z
    .locals 7
    .param p1, "n"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 371
    iget v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    #@3
    sub-int/2addr v3, p1

    #@4
    if-lez v3, :cond_2

    #@6
    .line 373
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@8
    iget-object v3, v3, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    #@a
    iget v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    #@c
    add-int/lit8 v5, p1, -0x1

    #@e
    sub-int/2addr v4, v5

    #@f
    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Ljava/lang/String;

    #@15
    .line 374
    .local v2, "lookbehind":Ljava/lang/String;
    if-nez v2, :cond_0

    #@17
    const/16 v0, 0x7c

    #@19
    .line 376
    :goto_0
    const/16 v3, 0x7c

    #@1b
    if-ne v0, v3, :cond_1

    #@1d
    const/4 v1, 0x0

    #@1e
    .line 383
    .end local v2    # "lookbehind":Ljava/lang/String;
    .local v1, "hasToken":Z
    :goto_1
    return v1

    #@1f
    .line 374
    .end local v1    # "hasToken":Z
    .restart local v2    # "lookbehind":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    #@22
    move-result v0

    #@23
    .local v0, "c0":C
    goto :goto_0

    #@24
    .line 376
    .end local v0    # "c0":C
    :cond_1
    const/4 v1, 0x1

    #@25
    .restart local v1    # "hasToken":Z
    goto :goto_1

    #@26
    .line 380
    .end local v1    # "hasToken":Z
    .end local v2    # "lookbehind":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    #@27
    .restart local v1    # "hasToken":Z
    goto :goto_1
.end method

.method private final nextToken()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 423
    iget v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    #@3
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@5
    invoke-virtual {v1}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueueSize()I

    #@8
    move-result v1

    #@9
    if-ge v0, v1, :cond_0

    #@b
    .line 425
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@d
    iget-object v0, v0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    #@f
    iget v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    #@11
    add-int/lit8 v2, v1, 0x1

    #@13
    iput v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    #@15
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/lang/String;

    #@1b
    iput-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@1d
    .line 426
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@1f
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    #@22
    move-result v0

    #@23
    iput-char v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    #@25
    .line 420
    :goto_0
    return-void

    #@26
    .line 430
    :cond_0
    const/4 v0, 0x0

    #@27
    iput-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@29
    .line 431
    iput-char v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    #@2b
    goto :goto_0
.end method

.method private final prevToken()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 468
    iget v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    #@3
    if-lez v0, :cond_0

    #@5
    .line 470
    iget v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    #@7
    add-int/lit8 v0, v0, -0x1

    #@9
    iput v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    #@b
    .line 472
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@d
    iget-object v0, v0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    #@f
    iget v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    #@11
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/lang/String;

    #@17
    iput-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@19
    .line 473
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    #@1e
    move-result v0

    #@1f
    iput-char v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    #@21
    .line 465
    :goto_0
    return-void

    #@22
    .line 477
    :cond_0
    const/4 v0, 0x0

    #@23
    iput-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@25
    .line 478
    iput-char v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    #@27
    goto :goto_0
.end method


# virtual methods
.method protected AbbreviatedNodeTestStep(Z)Z
    .locals 10
    .param p1, "isLeadingSlashPermitted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v9, 0x2f

    #@2
    const/4 v6, 0x2

    #@3
    const/4 v8, 0x1

    #@4
    .line 2295
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@6
    invoke-virtual {v4, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@9
    move-result v2

    #@a
    .line 2299
    .local v2, "opPos":I
    const/4 v1, -0x1

    #@b
    .line 2301
    .local v1, "matchTypePos":I
    const/16 v4, 0x40

    #@d
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_0

    #@13
    .line 2303
    const/16 v0, 0x33

    #@15
    .line 2305
    .local v0, "axesType":I
    invoke-virtual {p0, v6, v0}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    #@18
    .line 2306
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@1b
    .line 2355
    :goto_0
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@1d
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@1f
    invoke-virtual {v5, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@22
    move-result v5

    #@23
    add-int/lit8 v5, v5, 0x1

    #@25
    invoke-virtual {v4, v8, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@28
    .line 2357
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->NodeTest(I)V

    #@2b
    .line 2360
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@2d
    add-int/lit8 v5, v2, 0x1

    #@2f
    add-int/lit8 v5, v5, 0x1

    #@31
    .line 2361
    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@33
    invoke-virtual {v6, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@36
    move-result v6

    #@37
    sub-int/2addr v6, v2

    #@38
    .line 2360
    invoke-virtual {v4, v5, v6}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@3b
    .line 2363
    :goto_1
    const/16 v4, 0x5b

    #@3d
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@40
    move-result v4

    #@41
    if-eqz v4, :cond_6

    #@43
    .line 2365
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Predicate()V

    #@46
    goto :goto_1

    #@47
    .line 2308
    .end local v0    # "axesType":I
    :cond_0
    const-string/jumbo v4, "::"

    #@4a
    invoke-direct {p0, v4, v8}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(Ljava/lang/String;I)Z

    #@4d
    move-result v4

    #@4e
    if-eqz v4, :cond_3

    #@50
    .line 2310
    const-string/jumbo v4, "attribute"

    #@53
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    #@56
    move-result v4

    #@57
    if-eqz v4, :cond_1

    #@59
    .line 2312
    const/16 v0, 0x33

    #@5b
    .line 2314
    .restart local v0    # "axesType":I
    invoke-virtual {p0, v6, v0}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    #@5e
    .line 2331
    :goto_2
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@61
    .line 2332
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@64
    goto :goto_0

    #@65
    .line 2316
    .end local v0    # "axesType":I
    :cond_1
    const-string/jumbo v4, "child"

    #@68
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    #@6b
    move-result v4

    #@6c
    if-eqz v4, :cond_2

    #@6e
    .line 2318
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@70
    invoke-virtual {v4, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@73
    move-result v1

    #@74
    .line 2319
    const/16 v0, 0x35

    #@76
    .line 2321
    .restart local v0    # "axesType":I
    invoke-virtual {p0, v6, v0}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    #@79
    goto :goto_2

    #@7a
    .line 2325
    .end local v0    # "axesType":I
    :cond_2
    const/4 v0, -0x1

    #@7b
    .line 2327
    .restart local v0    # "axesType":I
    const-string/jumbo v4, "ER_AXES_NOT_ALLOWED"

    #@7e
    .line 2328
    new-array v5, v8, [Ljava/lang/Object;

    #@80
    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@82
    const/4 v7, 0x0

    #@83
    aput-object v6, v5, v7

    #@85
    .line 2327
    invoke-virtual {p0, v4, v5}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@88
    goto :goto_2

    #@89
    .line 2334
    .end local v0    # "axesType":I
    :cond_3
    invoke-virtual {p0, v9}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@8c
    move-result v4

    #@8d
    if-eqz v4, :cond_5

    #@8f
    .line 2336
    if-nez p1, :cond_4

    #@91
    .line 2339
    const-string/jumbo v4, "ER_EXPECTED_STEP_PATTERN"

    #@94
    const/4 v5, 0x0

    #@95
    invoke-virtual {p0, v4, v5}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@98
    .line 2341
    :cond_4
    const/16 v0, 0x34

    #@9a
    .line 2343
    .restart local v0    # "axesType":I
    invoke-virtual {p0, v6, v0}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    #@9d
    .line 2344
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@a0
    goto/16 :goto_0

    #@a2
    .line 2348
    .end local v0    # "axesType":I
    :cond_5
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@a4
    invoke-virtual {v4, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@a7
    move-result v1

    #@a8
    .line 2349
    const/16 v0, 0x35

    #@aa
    .line 2351
    .restart local v0    # "axesType":I
    invoke-virtual {p0, v6, v0}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    #@ad
    goto/16 :goto_0

    #@af
    .line 2382
    :cond_6
    const/4 v4, -0x1

    #@b0
    if-le v1, v4, :cond_7

    #@b2
    invoke-virtual {p0, v9}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@b5
    move-result v4

    #@b6
    if-eqz v4, :cond_7

    #@b8
    invoke-virtual {p0, v9, v8}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    #@bb
    move-result v4

    #@bc
    if-eqz v4, :cond_7

    #@be
    .line 2384
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@c0
    const/16 v5, 0x34

    #@c2
    invoke-virtual {v4, v1, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@c5
    .line 2386
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@c8
    .line 2388
    const/4 v3, 0x1

    #@c9
    .line 2396
    .local v3, "trailingSlashConsumed":Z
    :goto_3
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@cb
    add-int/lit8 v5, v2, 0x1

    #@cd
    .line 2397
    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@cf
    invoke-virtual {v6, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@d2
    move-result v6

    #@d3
    sub-int/2addr v6, v2

    #@d4
    .line 2396
    invoke-virtual {v4, v5, v6}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@d7
    .line 2399
    return v3

    #@d8
    .line 2392
    .end local v3    # "trailingSlashConsumed":Z
    :cond_7
    const/4 v3, 0x0

    #@d9
    .restart local v3    # "trailingSlashConsumed":Z
    goto :goto_3
.end method

.method protected AdditiveExpr(I)I
    .locals 6
    .param p1, "addPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, -0x1

    #@2
    const/4 v3, 0x1

    #@3
    .line 1000
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@5
    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@8
    move-result v1

    #@9
    .line 1002
    .local v1, "opPos":I
    if-ne v4, p1, :cond_0

    #@b
    .line 1003
    move p1, v1

    #@c
    .line 1005
    :cond_0
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->MultiplicativeExpr(I)I

    #@f
    .line 1007
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 1009
    const/16 v2, 0x2b

    #@15
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_2

    #@1b
    .line 1011
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@1e
    .line 1012
    const/16 v2, 0xa

    #@20
    invoke-virtual {p0, p1, v5, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    #@23
    .line 1014
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@25
    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@28
    move-result v2

    #@29
    sub-int v0, v2, p1

    #@2b
    .line 1016
    .local v0, "opPlusLeftHandLen":I
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->AdditiveExpr(I)I

    #@2e
    move-result p1

    #@2f
    .line 1017
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@31
    add-int/lit8 v3, p1, 0x1

    #@33
    .line 1018
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@35
    add-int v5, p1, v0

    #@37
    add-int/lit8 v5, v5, 0x1

    #@39
    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@3c
    move-result v4

    #@3d
    add-int/2addr v4, v0

    #@3e
    .line 1017
    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@41
    .line 1019
    add-int/lit8 p1, p1, 0x2

    #@43
    .line 1035
    .end local v0    # "opPlusLeftHandLen":I
    :cond_1
    :goto_0
    return p1

    #@44
    .line 1021
    :cond_2
    const/16 v2, 0x2d

    #@46
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@49
    move-result v2

    #@4a
    if-eqz v2, :cond_1

    #@4c
    .line 1023
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@4f
    .line 1024
    const/16 v2, 0xb

    #@51
    invoke-virtual {p0, p1, v5, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    #@54
    .line 1026
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@56
    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@59
    move-result v2

    #@5a
    sub-int v0, v2, p1

    #@5c
    .line 1028
    .restart local v0    # "opPlusLeftHandLen":I
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->AdditiveExpr(I)I

    #@5f
    move-result p1

    #@60
    .line 1029
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@62
    add-int/lit8 v3, p1, 0x1

    #@64
    .line 1030
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@66
    add-int v5, p1, v0

    #@68
    add-int/lit8 v5, v5, 0x1

    #@6a
    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@6d
    move-result v4

    #@6e
    add-int/2addr v4, v0

    #@6f
    .line 1029
    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@72
    .line 1031
    add-int/lit8 p1, p1, 0x2

    #@74
    goto :goto_0
.end method

.method protected AndExpr()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 832
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@3
    invoke-virtual {v1, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@6
    move-result v0

    #@7
    .line 834
    .local v0, "opPos":I
    const/4 v1, -0x1

    #@8
    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/XPathParser;->EqualityExpr(I)I

    #@b
    .line 836
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@d
    if-eqz v1, :cond_0

    #@f
    const-string/jumbo v1, "and"

    #@12
    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 838
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@1b
    .line 839
    const/4 v1, 0x2

    #@1c
    const/4 v2, 0x3

    #@1d
    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    #@20
    .line 840
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->AndExpr()V

    #@23
    .line 842
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@25
    add-int/lit8 v2, v0, 0x1

    #@27
    .line 843
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@29
    invoke-virtual {v3, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@2c
    move-result v3

    #@2d
    sub-int/2addr v3, v0

    #@2e
    .line 842
    invoke-virtual {v1, v2, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@31
    .line 829
    :cond_0
    return-void
.end method

.method protected Argument()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1466
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@3
    invoke-virtual {v1, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@6
    move-result v0

    #@7
    .line 1468
    .local v0, "opPos":I
    const/4 v1, 0x2

    #@8
    const/16 v2, 0x1a

    #@a
    invoke-virtual {p0, v1, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    #@d
    .line 1469
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Expr()V

    #@10
    .line 1471
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@12
    add-int/lit8 v2, v0, 0x1

    #@14
    .line 1472
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@16
    invoke-virtual {v3, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@19
    move-result v3

    #@1a
    sub-int/2addr v3, v0

    #@1b
    .line 1471
    invoke-virtual {v1, v2, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@1e
    .line 1463
    return-void
.end method

.method protected AxisName()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 1805
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@2
    invoke-static {v2}, Lorg/apache/xpath/compiler/Keywords;->getAxisName(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    .line 1807
    .local v1, "val":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@8
    .line 1809
    const-string/jumbo v2, "ER_ILLEGAL_AXIS_NAME"

    #@b
    .line 1810
    const/4 v3, 0x1

    #@c
    new-array v3, v3, [Ljava/lang/Object;

    #@e
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@10
    const/4 v5, 0x0

    #@11
    aput-object v4, v3, v5

    #@13
    .line 1809
    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@16
    .line 1813
    :cond_0
    check-cast v1, Ljava/lang/Integer;

    #@18
    .end local v1    # "val":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@1b
    move-result v0

    #@1c
    .line 1815
    .local v0, "axesType":I
    const/4 v2, 0x2

    #@1d
    invoke-virtual {p0, v2, v0}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    #@20
    .line 1817
    return v0
.end method

.method protected Basis()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    .line 1758
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@4
    invoke-virtual {v2, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@7
    move-result v1

    #@8
    .line 1762
    .local v1, "opPos":I
    const-string/jumbo v2, "::"

    #@b
    invoke-direct {p0, v2, v5}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(Ljava/lang/String;I)Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 1764
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->AxisName()I

    #@14
    move-result v0

    #@15
    .line 1766
    .local v0, "axesType":I
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@18
    .line 1767
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@1b
    .line 1784
    :goto_0
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@1d
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@1f
    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@22
    move-result v3

    #@23
    add-int/lit8 v3, v3, 0x1

    #@25
    invoke-virtual {v2, v5, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@28
    .line 1786
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->NodeTest(I)V

    #@2b
    .line 1789
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@2d
    add-int/lit8 v3, v1, 0x1

    #@2f
    add-int/lit8 v3, v3, 0x1

    #@31
    .line 1790
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@33
    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@36
    move-result v4

    #@37
    sub-int/2addr v4, v1

    #@38
    .line 1789
    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@3b
    .line 1755
    return-void

    #@3c
    .line 1769
    .end local v0    # "axesType":I
    :cond_0
    const/16 v2, 0x40

    #@3e
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@41
    move-result v2

    #@42
    if-eqz v2, :cond_1

    #@44
    .line 1771
    const/16 v0, 0x27

    #@46
    .line 1773
    .restart local v0    # "axesType":I
    invoke-virtual {p0, v3, v0}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    #@49
    .line 1774
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@4c
    goto :goto_0

    #@4d
    .line 1778
    .end local v0    # "axesType":I
    :cond_1
    const/16 v0, 0x28

    #@4f
    .line 1780
    .restart local v0    # "axesType":I
    invoke-virtual {p0, v3, v0}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    #@52
    goto :goto_0
.end method

.method protected BooleanExpr()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    .line 1179
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@4
    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@7
    move-result v1

    #@8
    .line 1181
    .local v1, "opPos":I
    const/16 v2, 0x12

    #@a
    invoke-virtual {p0, v4, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    #@d
    .line 1182
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Expr()V

    #@10
    .line 1184
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@12
    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@15
    move-result v2

    #@16
    sub-int v0, v2, v1

    #@18
    .line 1186
    .local v0, "opLen":I
    if-ne v0, v4, :cond_0

    #@1a
    .line 1188
    const-string/jumbo v2, "ER_BOOLEAN_ARG_NO_LONGER_OPTIONAL"

    #@1d
    const/4 v3, 0x0

    #@1e
    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@21
    .line 1191
    :cond_0
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@23
    add-int/lit8 v3, v1, 0x1

    #@25
    invoke-virtual {v2, v3, v0}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@28
    .line 1176
    return-void
.end method

.method protected EqualityExpr(I)I
    .locals 7
    .param p1, "addPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v6, 0x3d

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, -0x1

    #@4
    const/4 v3, 0x1

    #@5
    .line 865
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@7
    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@a
    move-result v1

    #@b
    .line 867
    .local v1, "opPos":I
    if-ne v4, p1, :cond_0

    #@d
    .line 868
    move p1, v1

    #@e
    .line 870
    :cond_0
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->RelationalExpr(I)I

    #@11
    .line 872
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 874
    const/16 v2, 0x21

    #@17
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_2

    #@1d
    invoke-virtual {p0, v6, v3}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_2

    #@23
    .line 876
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@26
    .line 877
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@29
    .line 878
    const/4 v2, 0x4

    #@2a
    invoke-virtual {p0, p1, v5, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    #@2d
    .line 880
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@2f
    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@32
    move-result v2

    #@33
    sub-int v0, v2, p1

    #@35
    .line 882
    .local v0, "opPlusLeftHandLen":I
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->EqualityExpr(I)I

    #@38
    move-result p1

    #@39
    .line 883
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@3b
    add-int/lit8 v3, p1, 0x1

    #@3d
    .line 884
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@3f
    add-int v5, p1, v0

    #@41
    add-int/lit8 v5, v5, 0x1

    #@43
    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@46
    move-result v4

    #@47
    add-int/2addr v4, v0

    #@48
    .line 883
    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@4b
    .line 885
    add-int/lit8 p1, p1, 0x2

    #@4d
    .line 901
    .end local v0    # "opPlusLeftHandLen":I
    :cond_1
    :goto_0
    return p1

    #@4e
    .line 887
    :cond_2
    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@51
    move-result v2

    #@52
    if-eqz v2, :cond_1

    #@54
    .line 889
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@57
    .line 890
    const/4 v2, 0x5

    #@58
    invoke-virtual {p0, p1, v5, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    #@5b
    .line 892
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@5d
    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@60
    move-result v2

    #@61
    sub-int v0, v2, p1

    #@63
    .line 894
    .restart local v0    # "opPlusLeftHandLen":I
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->EqualityExpr(I)I

    #@66
    move-result p1

    #@67
    .line 895
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@69
    add-int/lit8 v3, p1, 0x1

    #@6b
    .line 896
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@6d
    add-int v5, p1, v0

    #@6f
    add-int/lit8 v5, v5, 0x1

    #@71
    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@74
    move-result v4

    #@75
    add-int/2addr v4, v0

    #@76
    .line 895
    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@79
    .line 897
    add-int/lit8 p1, p1, 0x2

    #@7b
    goto :goto_0
.end method

.method protected Expr()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 790
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->OrExpr()V

    #@3
    .line 788
    return-void
.end method

.method protected FilterExpr()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x5b

    #@2
    .line 1341
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@4
    const/4 v3, 0x1

    #@5
    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@8
    move-result v1

    #@9
    .line 1345
    .local v1, "opPos":I
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->PrimaryExpr()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_2

    #@f
    .line 1347
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 1351
    const/4 v2, 0x2

    #@16
    const/16 v3, 0x1c

    #@18
    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    #@1b
    .line 1353
    :goto_0
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 1355
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Predicate()V

    #@24
    goto :goto_0

    #@25
    .line 1358
    :cond_0
    const/4 v0, 0x2

    #@26
    .line 1370
    .local v0, "filterMatch":I
    :goto_1
    return v0

    #@27
    .line 1362
    .end local v0    # "filterMatch":I
    :cond_1
    const/4 v0, 0x1

    #@28
    .restart local v0    # "filterMatch":I
    goto :goto_1

    #@29
    .line 1367
    .end local v0    # "filterMatch":I
    :cond_2
    const/4 v0, 0x0

    #@2a
    .restart local v0    # "filterMatch":I
    goto :goto_1
.end method

.method protected FunctionCall()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, -0x1

    #@2
    const/4 v7, 0x0

    #@3
    const/16 v6, 0x29

    #@5
    const/4 v5, 0x1

    #@6
    .line 1486
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@8
    invoke-virtual {v2, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@b
    move-result v1

    #@c
    .line 1488
    .local v1, "opPos":I
    const/16 v2, 0x3a

    #@e
    invoke-virtual {p0, v2, v5}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_2

    #@14
    .line 1490
    const/4 v2, 0x4

    #@15
    const/16 v3, 0x18

    #@17
    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    #@1a
    .line 1492
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@1c
    add-int/lit8 v3, v1, 0x1

    #@1e
    add-int/lit8 v3, v3, 0x1

    #@20
    iget v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    #@22
    add-int/lit8 v4, v4, -0x1

    #@24
    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@27
    .line 1494
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@2a
    .line 1495
    const/16 v2, 0x3a

    #@2c
    invoke-direct {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    #@2f
    .line 1497
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@31
    add-int/lit8 v3, v1, 0x1

    #@33
    add-int/lit8 v3, v3, 0x2

    #@35
    iget v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    #@37
    add-int/lit8 v4, v4, -0x1

    #@39
    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@3c
    .line 1499
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@3f
    .line 1528
    :goto_0
    const/16 v2, 0x28

    #@41
    invoke-direct {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    #@44
    .line 1530
    :cond_0
    :goto_1
    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@47
    move-result v2

    #@48
    if-nez v2, :cond_4

    #@4a
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@4c
    if-eqz v2, :cond_4

    #@4e
    .line 1532
    const/16 v2, 0x2c

    #@50
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@53
    move-result v2

    #@54
    if-eqz v2, :cond_1

    #@56
    .line 1534
    const-string/jumbo v2, "ER_FOUND_COMMA_BUT_NO_PRECEDING_ARG"

    #@59
    invoke-virtual {p0, v2, v7}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@5c
    .line 1537
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Argument()V

    #@5f
    .line 1539
    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@62
    move-result v2

    #@63
    if-nez v2, :cond_0

    #@65
    .line 1541
    const/16 v2, 0x2c

    #@67
    invoke-direct {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    #@6a
    .line 1543
    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@6d
    move-result v2

    #@6e
    if-eqz v2, :cond_0

    #@70
    .line 1545
    const-string/jumbo v2, "ER_FOUND_COMMA_BUT_NO_FOLLOWING_ARG"

    #@73
    invoke-virtual {p0, v2, v7}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@76
    goto :goto_1

    #@77
    .line 1503
    :cond_2
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@79
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->getFunctionToken(Ljava/lang/String;)I

    #@7c
    move-result v0

    #@7d
    .line 1505
    .local v0, "funcTok":I
    if-ne v8, v0, :cond_3

    #@7f
    .line 1507
    const-string/jumbo v2, "ER_COULDNOT_FIND_FUNCTION"

    #@82
    .line 1508
    new-array v3, v5, [Ljava/lang/Object;

    #@84
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@86
    aput-object v4, v3, v9

    #@88
    .line 1507
    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@8b
    .line 1511
    :cond_3
    packed-switch v0, :pswitch_data_0

    #@8e
    .line 1520
    const/4 v2, 0x3

    #@8f
    const/16 v3, 0x19

    #@91
    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    #@94
    .line 1522
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@96
    add-int/lit8 v3, v1, 0x1

    #@98
    add-int/lit8 v3, v3, 0x1

    #@9a
    invoke-virtual {v2, v3, v0}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@9d
    .line 1525
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@a0
    goto :goto_0

    #@a1
    .line 1518
    :pswitch_0
    return v9

    #@a2
    .line 1551
    .end local v0    # "funcTok":I
    :cond_4
    invoke-direct {p0, v6}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    #@a5
    .line 1554
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@a7
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@a9
    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@ac
    move-result v3

    #@ad
    invoke-virtual {v2, v3, v8}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@b0
    .line 1555
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@b2
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@b4
    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@b7
    move-result v3

    #@b8
    add-int/lit8 v3, v3, 0x1

    #@ba
    invoke-virtual {v2, v5, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@bd
    .line 1556
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@bf
    add-int/lit8 v3, v1, 0x1

    #@c1
    .line 1557
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@c3
    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@c6
    move-result v4

    #@c7
    sub-int/2addr v4, v1

    #@c8
    .line 1556
    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@cb
    .line 1559
    return v5

    #@cc
    .line 1511
    :pswitch_data_0
    .packed-switch 0x406
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected IdKeyPattern()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 2233
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->FunctionCall()Z

    #@3
    .line 2231
    return-void
.end method

.method protected Literal()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v8, 0x27

    #@2
    const/16 v6, 0x22

    #@4
    const/4 v7, 0x1

    #@5
    .line 2020
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@7
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@a
    move-result v5

    #@b
    add-int/lit8 v2, v5, -0x1

    #@d
    .line 2021
    .local v2, "last":I
    iget-char v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    #@f
    .line 2022
    .local v0, "c0":C
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@11
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v1

    #@15
    .line 2024
    .local v1, "cX":C
    if-ne v0, v6, :cond_1

    #@17
    if-ne v1, v6, :cond_1

    #@19
    .line 2029
    :cond_0
    iget v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    #@1b
    add-int/lit8 v4, v5, -0x1

    #@1d
    .line 2031
    .local v4, "tokenQueuePos":I
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@1f
    iget-object v5, v5, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    #@21
    const/4 v6, 0x0

    #@22
    invoke-virtual {v5, v6, v4}, Lorg/apache/xml/utils/ObjectVector;->setElementAt(Ljava/lang/Object;I)V

    #@25
    .line 2033
    new-instance v3, Lorg/apache/xpath/objects/XString;

    #@27
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@29
    invoke-virtual {v5, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    invoke-direct {v3, v5}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    #@30
    .line 2035
    .local v3, "obj":Ljava/lang/Object;
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@32
    iget-object v5, v5, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    #@34
    invoke-virtual {v5, v3, v4}, Lorg/apache/xml/utils/ObjectVector;->setElementAt(Ljava/lang/Object;I)V

    #@37
    .line 2038
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@39
    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@3b
    invoke-virtual {v6, v7}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@3e
    move-result v6

    #@3f
    invoke-virtual {v5, v6, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@42
    .line 2039
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@44
    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@46
    invoke-virtual {v6, v7}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@49
    move-result v6

    #@4a
    add-int/lit8 v6, v6, 0x1

    #@4c
    invoke-virtual {v5, v7, v6}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@4f
    .line 2041
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@52
    .line 2017
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "tokenQueuePos":I
    :goto_0
    return-void

    #@53
    .line 2024
    :cond_1
    if-ne v0, v8, :cond_2

    #@55
    if-eq v1, v8, :cond_0

    #@57
    .line 2045
    :cond_2
    const-string/jumbo v5, "ER_PATTERN_LITERAL_NEEDS_BE_QUOTED"

    #@5a
    .line 2046
    new-array v6, v7, [Ljava/lang/Object;

    #@5c
    iget-object v7, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@5e
    const/4 v8, 0x0

    #@5f
    aput-object v7, v6, v8

    #@61
    .line 2045
    invoke-virtual {p0, v5, v6}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@64
    goto :goto_0
.end method

.method protected LocationPath()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x4

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v6, 0x1

    #@3
    .line 1575
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@5
    invoke-virtual {v2, v6}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@8
    move-result v0

    #@9
    .line 1578
    .local v0, "opPos":I
    const/4 v2, 0x2

    #@a
    const/16 v3, 0x1c

    #@c
    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    #@f
    .line 1580
    const/16 v2, 0x2f

    #@11
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@14
    move-result v1

    #@15
    .line 1582
    .local v1, "seenSlash":Z
    if-eqz v1, :cond_2

    #@17
    .line 1584
    const/16 v2, 0x32

    #@19
    invoke-virtual {p0, v5, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    #@1c
    .line 1587
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@1e
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@20
    invoke-virtual {v3, v6}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@23
    move-result v3

    #@24
    add-int/lit8 v3, v3, -0x2

    #@26
    invoke-virtual {v2, v3, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@29
    .line 1588
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@2b
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@2d
    invoke-virtual {v3, v6}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@30
    move-result v3

    #@31
    add-int/lit8 v3, v3, -0x1

    #@33
    const/16 v4, 0x23

    #@35
    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@38
    .line 1590
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@3b
    .line 1595
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@3d
    if-eqz v2, :cond_1

    #@3f
    .line 1597
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->RelativeLocationPath()Z

    #@42
    move-result v2

    #@43
    if-nez v2, :cond_1

    #@45
    if-eqz v1, :cond_3

    #@47
    .line 1607
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@49
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@4b
    invoke-virtual {v3, v6}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@4e
    move-result v3

    #@4f
    const/4 v4, -0x1

    #@50
    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@53
    .line 1608
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@55
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@57
    invoke-virtual {v3, v6}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@5a
    move-result v3

    #@5b
    add-int/lit8 v3, v3, 0x1

    #@5d
    invoke-virtual {v2, v6, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@60
    .line 1609
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@62
    add-int/lit8 v3, v0, 0x1

    #@64
    .line 1610
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@66
    invoke-virtual {v4, v6}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@69
    move-result v4

    #@6a
    sub-int/2addr v4, v0

    #@6b
    .line 1609
    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@6e
    .line 1572
    return-void

    #@6f
    .line 1591
    :cond_2
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@71
    if-nez v2, :cond_0

    #@73
    .line 1592
    const-string/jumbo v2, "ER_EXPECTED_LOC_PATH_AT_END_EXPR"

    #@76
    invoke-virtual {p0, v2, v4}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@79
    goto :goto_0

    #@7a
    .line 1601
    :cond_3
    const-string/jumbo v2, "ER_EXPECTED_LOC_PATH"

    #@7d
    .line 1602
    new-array v3, v6, [Ljava/lang/Object;

    #@7f
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@81
    const/4 v5, 0x0

    #@82
    aput-object v4, v3, v5

    #@84
    .line 1601
    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@87
    goto :goto_1
.end method

.method protected LocationPathPattern()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v10, 0x34

    #@2
    const/4 v9, 0x2

    #@3
    const/16 v6, 0x2f

    #@5
    const/4 v7, 0x4

    #@6
    const/4 v8, 0x1

    #@7
    .line 2131
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@9
    invoke-virtual {v5, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@c
    move-result v3

    #@d
    .line 2133
    .local v3, "opPos":I
    const/4 v0, 0x0

    #@e
    .line 2134
    .local v0, "RELATIVE_PATH_NOT_PERMITTED":I
    const/4 v1, 0x1

    #@f
    .line 2135
    .local v1, "RELATIVE_PATH_PERMITTED":I
    const/4 v2, 0x2

    #@10
    .line 2137
    .local v2, "RELATIVE_PATH_REQUIRED":I
    const/4 v4, 0x0

    #@11
    .line 2139
    .local v4, "relativePathStatus":I
    const/16 v5, 0x1f

    #@13
    invoke-virtual {p0, v9, v5}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    #@16
    .line 2141
    const/16 v5, 0x28

    #@18
    invoke-virtual {p0, v5, v8}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    #@1b
    move-result v5

    #@1c
    if-eqz v5, :cond_4

    #@1e
    .line 2142
    const-string/jumbo v5, "id"

    #@21
    invoke-virtual {p0, v5}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    #@24
    move-result v5

    #@25
    if-nez v5, :cond_0

    #@27
    .line 2143
    const-string/jumbo v5, "key"

    #@2a
    invoke-virtual {p0, v5}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    #@2d
    move-result v5

    #@2e
    .line 2141
    if-eqz v5, :cond_4

    #@30
    .line 2145
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->IdKeyPattern()V

    #@33
    .line 2147
    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@36
    move-result v5

    #@37
    if-eqz v5, :cond_1

    #@39
    .line 2149
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@3c
    .line 2151
    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@3f
    move-result v5

    #@40
    if-eqz v5, :cond_3

    #@42
    .line 2153
    invoke-virtual {p0, v7, v10}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    #@45
    .line 2155
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@48
    .line 2163
    :goto_0
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@4a
    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@4c
    invoke-virtual {v6, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@4f
    move-result v6

    #@50
    add-int/lit8 v6, v6, -0x2

    #@52
    invoke-virtual {v5, v6, v7}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@55
    .line 2164
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@57
    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@59
    invoke-virtual {v6, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@5c
    move-result v6

    #@5d
    add-int/lit8 v6, v6, -0x1

    #@5f
    const/16 v7, 0x40a

    #@61
    invoke-virtual {v5, v6, v7}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@64
    .line 2166
    const/4 v4, 0x2

    #@65
    .line 2202
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    #@67
    .line 2204
    const/16 v5, 0x7c

    #@69
    invoke-virtual {p0, v5}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@6c
    move-result v5

    #@6d
    if-nez v5, :cond_7

    #@6f
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@71
    if-eqz v5, :cond_7

    #@73
    .line 2206
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->RelativePathPattern()V

    #@76
    .line 2216
    :cond_2
    :goto_2
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@78
    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@7a
    invoke-virtual {v6, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@7d
    move-result v6

    #@7e
    const/4 v7, -0x1

    #@7f
    invoke-virtual {v5, v6, v7}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@82
    .line 2217
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@84
    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@86
    invoke-virtual {v6, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@89
    move-result v6

    #@8a
    add-int/lit8 v6, v6, 0x1

    #@8c
    invoke-virtual {v5, v8, v6}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@8f
    .line 2218
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@91
    add-int/lit8 v6, v3, 0x1

    #@93
    .line 2219
    iget-object v7, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@95
    invoke-virtual {v7, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@98
    move-result v7

    #@99
    sub-int/2addr v7, v3

    #@9a
    .line 2218
    invoke-virtual {v5, v6, v7}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@9d
    .line 2128
    return-void

    #@9e
    .line 2159
    :cond_3
    const/16 v5, 0x35

    #@a0
    invoke-virtual {p0, v7, v5}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    #@a3
    goto :goto_0

    #@a4
    .line 2169
    :cond_4
    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@a7
    move-result v5

    #@a8
    if-eqz v5, :cond_6

    #@aa
    .line 2171
    invoke-virtual {p0, v6, v8}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    #@ad
    move-result v5

    #@ae
    if-eqz v5, :cond_5

    #@b0
    .line 2173
    invoke-virtual {p0, v7, v10}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    #@b3
    .line 2179
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@b6
    .line 2181
    const/4 v4, 0x2

    #@b7
    .line 2192
    :goto_3
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@b9
    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@bb
    invoke-virtual {v6, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@be
    move-result v6

    #@bf
    add-int/lit8 v6, v6, -0x2

    #@c1
    invoke-virtual {v5, v6, v7}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@c4
    .line 2193
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@c6
    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@c8
    invoke-virtual {v6, v8}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@cb
    move-result v6

    #@cc
    add-int/lit8 v6, v6, -0x1

    #@ce
    const/16 v7, 0x23

    #@d0
    invoke-virtual {v5, v6, v7}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@d3
    .line 2195
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@d6
    goto :goto_1

    #@d7
    .line 2185
    :cond_5
    const/16 v5, 0x32

    #@d9
    invoke-virtual {p0, v7, v5}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    #@dc
    .line 2187
    const/4 v4, 0x1

    #@dd
    goto :goto_3

    #@de
    .line 2199
    :cond_6
    const/4 v4, 0x2

    #@df
    goto :goto_1

    #@e0
    .line 2208
    :cond_7
    if-ne v4, v9, :cond_2

    #@e2
    .line 2211
    const-string/jumbo v5, "ER_EXPECTED_REL_PATH_PATTERN"

    #@e5
    const/4 v6, 0x0

    #@e6
    invoke-virtual {p0, v5, v6}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@e9
    goto :goto_2
.end method

.method protected MultiplicativeExpr(I)I
    .locals 6
    .param p1, "addPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    .line 1058
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@4
    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@7
    move-result v1

    #@8
    .line 1060
    .local v1, "opPos":I
    const/4 v2, -0x1

    #@9
    if-ne v2, p1, :cond_0

    #@b
    .line 1061
    move p1, v1

    #@c
    .line 1063
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->UnaryExpr()V

    #@f
    .line 1065
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 1067
    const/16 v2, 0x2a

    #@15
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_2

    #@1b
    .line 1069
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@1e
    .line 1070
    const/16 v2, 0xc

    #@20
    invoke-virtual {p0, p1, v4, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    #@23
    .line 1072
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@25
    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@28
    move-result v2

    #@29
    sub-int v0, v2, p1

    #@2b
    .line 1074
    .local v0, "opPlusLeftHandLen":I
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->MultiplicativeExpr(I)I

    #@2e
    move-result p1

    #@2f
    .line 1075
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@31
    add-int/lit8 v3, p1, 0x1

    #@33
    .line 1076
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@35
    add-int v5, p1, v0

    #@37
    add-int/lit8 v5, v5, 0x1

    #@39
    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@3c
    move-result v4

    #@3d
    add-int/2addr v4, v0

    #@3e
    .line 1075
    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@41
    .line 1077
    add-int/lit8 p1, p1, 0x2

    #@43
    .line 1117
    .end local v0    # "opPlusLeftHandLen":I
    :cond_1
    :goto_0
    return p1

    #@44
    .line 1079
    :cond_2
    const-string/jumbo v2, "div"

    #@47
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    #@4a
    move-result v2

    #@4b
    if-eqz v2, :cond_3

    #@4d
    .line 1081
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@50
    .line 1082
    const/16 v2, 0xd

    #@52
    invoke-virtual {p0, p1, v4, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    #@55
    .line 1084
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@57
    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@5a
    move-result v2

    #@5b
    sub-int v0, v2, p1

    #@5d
    .line 1086
    .restart local v0    # "opPlusLeftHandLen":I
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->MultiplicativeExpr(I)I

    #@60
    move-result p1

    #@61
    .line 1087
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@63
    add-int/lit8 v3, p1, 0x1

    #@65
    .line 1088
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@67
    add-int v5, p1, v0

    #@69
    add-int/lit8 v5, v5, 0x1

    #@6b
    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@6e
    move-result v4

    #@6f
    add-int/2addr v4, v0

    #@70
    .line 1087
    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@73
    .line 1089
    add-int/lit8 p1, p1, 0x2

    #@75
    goto :goto_0

    #@76
    .line 1091
    .end local v0    # "opPlusLeftHandLen":I
    :cond_3
    const-string/jumbo v2, "mod"

    #@79
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    #@7c
    move-result v2

    #@7d
    if-eqz v2, :cond_4

    #@7f
    .line 1093
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@82
    .line 1094
    const/16 v2, 0xe

    #@84
    invoke-virtual {p0, p1, v4, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    #@87
    .line 1096
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@89
    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@8c
    move-result v2

    #@8d
    sub-int v0, v2, p1

    #@8f
    .line 1098
    .restart local v0    # "opPlusLeftHandLen":I
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->MultiplicativeExpr(I)I

    #@92
    move-result p1

    #@93
    .line 1099
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@95
    add-int/lit8 v3, p1, 0x1

    #@97
    .line 1100
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@99
    add-int v5, p1, v0

    #@9b
    add-int/lit8 v5, v5, 0x1

    #@9d
    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@a0
    move-result v4

    #@a1
    add-int/2addr v4, v0

    #@a2
    .line 1099
    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@a5
    .line 1101
    add-int/lit8 p1, p1, 0x2

    #@a7
    goto :goto_0

    #@a8
    .line 1103
    .end local v0    # "opPlusLeftHandLen":I
    :cond_4
    const-string/jumbo v2, "quo"

    #@ab
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    #@ae
    move-result v2

    #@af
    if-eqz v2, :cond_1

    #@b1
    .line 1105
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@b4
    .line 1106
    const/16 v2, 0xf

    #@b6
    invoke-virtual {p0, p1, v4, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    #@b9
    .line 1108
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@bb
    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@be
    move-result v2

    #@bf
    sub-int v0, v2, p1

    #@c1
    .line 1110
    .restart local v0    # "opPlusLeftHandLen":I
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->MultiplicativeExpr(I)I

    #@c4
    move-result p1

    #@c5
    .line 1111
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@c7
    add-int/lit8 v3, p1, 0x1

    #@c9
    .line 1112
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@cb
    add-int v5, p1, v0

    #@cd
    add-int/lit8 v5, v5, 0x1

    #@cf
    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@d2
    move-result v4

    #@d3
    add-int/2addr v4, v0

    #@d4
    .line 1111
    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@d7
    .line 1113
    add-int/lit8 p1, p1, 0x2

    #@d9
    goto/16 :goto_0
.end method

.method protected NCName()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 2001
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@3
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@5
    invoke-virtual {v1, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@8
    move-result v1

    #@9
    iget v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    #@b
    add-int/lit8 v2, v2, -0x1

    #@d
    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@10
    .line 2002
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@12
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@14
    invoke-virtual {v1, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@17
    move-result v1

    #@18
    add-int/lit8 v1, v1, 0x1

    #@1a
    invoke-virtual {v0, v3, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@1d
    .line 2004
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@20
    .line 1998
    return-void
.end method

.method protected NodeTest(I)V
    .locals 9
    .param p1, "axesType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v8, 0x29

    #@2
    const/16 v4, 0x28

    #@4
    const/4 v7, -0x3

    #@5
    const/4 v6, 0x0

    #@6
    const/4 v5, 0x1

    #@7
    .line 1833
    invoke-virtual {p0, v4, v5}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_2

    #@d
    .line 1835
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@f
    invoke-static {v2}, Lorg/apache/xpath/compiler/Keywords;->getNodeType(Ljava/lang/String;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    .line 1837
    .local v0, "nodeTestOp":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@15
    .line 1839
    const-string/jumbo v2, "ER_UNKNOWN_NODETYPE"

    #@18
    .line 1840
    new-array v3, v5, [Ljava/lang/Object;

    #@1a
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@1c
    const/4 v5, 0x0

    #@1d
    aput-object v4, v3, v5

    #@1f
    .line 1839
    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@22
    .line 1830
    .end local v0    # "nodeTestOp":Ljava/lang/Object;
    :goto_0
    return-void

    #@23
    .line 1844
    .restart local v0    # "nodeTestOp":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@26
    .line 1846
    check-cast v0, Ljava/lang/Integer;

    #@28
    .end local v0    # "nodeTestOp":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@2b
    move-result v1

    #@2c
    .line 1848
    .local v1, "nt":I
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@2e
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@30
    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@33
    move-result v3

    #@34
    invoke-virtual {v2, v3, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@37
    .line 1849
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@39
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@3b
    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@3e
    move-result v3

    #@3f
    add-int/lit8 v3, v3, 0x1

    #@41
    invoke-virtual {v2, v5, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@44
    .line 1851
    invoke-direct {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    #@47
    .line 1853
    const/16 v2, 0x408

    #@49
    if-ne v2, v1, :cond_1

    #@4b
    .line 1855
    invoke-virtual {p0, v8}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@4e
    move-result v2

    #@4f
    if-nez v2, :cond_1

    #@51
    .line 1857
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Literal()V

    #@54
    .line 1861
    :cond_1
    invoke-direct {p0, v8}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    #@57
    goto :goto_0

    #@58
    .line 1868
    .end local v1    # "nt":I
    :cond_2
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@5a
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@5c
    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@5f
    move-result v3

    #@60
    const/16 v4, 0x22

    #@62
    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@65
    .line 1869
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@67
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@69
    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@6c
    move-result v3

    #@6d
    add-int/lit8 v3, v3, 0x1

    #@6f
    invoke-virtual {v2, v5, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@72
    .line 1871
    const/16 v2, 0x3a

    #@74
    invoke-virtual {p0, v2, v5}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    #@77
    move-result v2

    #@78
    if-eqz v2, :cond_6

    #@7a
    .line 1873
    const/16 v2, 0x2a

    #@7c
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@7f
    move-result v2

    #@80
    if-eqz v2, :cond_5

    #@82
    .line 1875
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@84
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@86
    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@89
    move-result v3

    #@8a
    invoke-virtual {v2, v3, v7}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@8d
    .line 1890
    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@90
    .line 1891
    const/16 v2, 0x3a

    #@92
    invoke-direct {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    #@95
    .line 1898
    :goto_2
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@97
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@99
    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@9c
    move-result v3

    #@9d
    add-int/lit8 v3, v3, 0x1

    #@9f
    invoke-virtual {v2, v5, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@a2
    .line 1900
    const/16 v2, 0x2a

    #@a4
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@a7
    move-result v2

    #@a8
    if-eqz v2, :cond_7

    #@aa
    .line 1902
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@ac
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@ae
    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@b1
    move-result v3

    #@b2
    invoke-virtual {v2, v3, v7}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@b5
    .line 1917
    :cond_4
    :goto_3
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@b7
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@b9
    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@bc
    move-result v3

    #@bd
    add-int/lit8 v3, v3, 0x1

    #@bf
    invoke-virtual {v2, v5, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@c2
    .line 1919
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@c5
    goto/16 :goto_0

    #@c7
    .line 1879
    :cond_5
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@c9
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@cb
    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@ce
    move-result v3

    #@cf
    iget v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    #@d1
    add-int/lit8 v4, v4, -0x1

    #@d3
    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@d6
    .line 1883
    iget-char v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    #@d8
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    #@db
    move-result v2

    #@dc
    if-nez v2, :cond_3

    #@de
    const/16 v2, 0x5f

    #@e0
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@e3
    move-result v2

    #@e4
    if-nez v2, :cond_3

    #@e6
    .line 1886
    const-string/jumbo v2, "ER_EXPECTED_NODE_TEST"

    #@e9
    invoke-virtual {p0, v2, v6}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@ec
    goto :goto_1

    #@ed
    .line 1895
    :cond_6
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@ef
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@f1
    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@f4
    move-result v3

    #@f5
    const/4 v4, -0x2

    #@f6
    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@f9
    goto :goto_2

    #@fa
    .line 1906
    :cond_7
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@fc
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@fe
    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@101
    move-result v3

    #@102
    iget v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    #@104
    add-int/lit8 v4, v4, -0x1

    #@106
    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@109
    .line 1910
    iget-char v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    #@10b
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    #@10e
    move-result v2

    #@10f
    if-nez v2, :cond_4

    #@111
    const/16 v2, 0x5f

    #@113
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@116
    move-result v2

    #@117
    if-nez v2, :cond_4

    #@119
    .line 1913
    const-string/jumbo v2, "ER_EXPECTED_NODE_TEST"

    #@11c
    invoke-virtual {p0, v2, v6}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@11f
    goto :goto_3
.end method

.method protected Number()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    const/4 v7, 0x1

    #@2
    .line 2060
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 2070
    :try_start_0
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@8
    const/16 v4, 0x65

    #@a
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    #@d
    move-result v1

    #@e
    if-gt v1, v5, :cond_0

    #@10
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@12
    const/16 v4, 0x45

    #@14
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    #@17
    move-result v1

    #@18
    if-le v1, v5, :cond_2

    #@1a
    .line 2071
    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    #@1c
    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    #@1f
    throw v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 2075
    :catch_0
    move-exception v0

    #@21
    .line 2076
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const-wide/16 v2, 0x0

    #@23
    .line 2078
    .local v2, "num":D
    const-string/jumbo v1, "ER_COULDNOT_BE_FORMATTED_TO_NUMBER"

    #@26
    .line 2079
    new-array v4, v7, [Ljava/lang/Object;

    #@28
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@2a
    const/4 v6, 0x0

    #@2b
    aput-object v5, v4, v6

    #@2d
    .line 2078
    invoke-virtual {p0, v1, v4}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@30
    .line 2082
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :goto_0
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@32
    iget-object v1, v1, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    #@34
    new-instance v4, Lorg/apache/xpath/objects/XNumber;

    #@36
    invoke-direct {v4, v2, v3}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    #@39
    iget v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    #@3b
    add-int/lit8 v5, v5, -0x1

    #@3d
    invoke-virtual {v1, v4, v5}, Lorg/apache/xml/utils/ObjectVector;->setElementAt(Ljava/lang/Object;I)V

    #@40
    .line 2083
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@42
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@44
    invoke-virtual {v4, v7}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@47
    move-result v4

    #@48
    iget v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    #@4a
    add-int/lit8 v5, v5, -0x1

    #@4c
    invoke-virtual {v1, v4, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@4f
    .line 2084
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@51
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@53
    invoke-virtual {v4, v7}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@56
    move-result v4

    #@57
    add-int/lit8 v4, v4, 0x1

    #@59
    invoke-virtual {v1, v7, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@5c
    .line 2086
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@5f
    .line 2057
    .end local v2    # "num":D
    :cond_1
    return-void

    #@60
    .line 2072
    :cond_2
    :try_start_1
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@62
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    #@69
    move-result-wide v2

    #@6a
    .restart local v2    # "num":D
    goto :goto_0
.end method

.method protected NumberExpr()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1205
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@3
    invoke-virtual {v1, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@6
    move-result v0

    #@7
    .line 1207
    .local v0, "opPos":I
    const/4 v1, 0x2

    #@8
    const/16 v2, 0x13

    #@a
    invoke-virtual {p0, v1, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    #@d
    .line 1208
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Expr()V

    #@10
    .line 1210
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@12
    add-int/lit8 v2, v0, 0x1

    #@14
    .line 1211
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@16
    invoke-virtual {v3, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@19
    move-result v3

    #@1a
    sub-int/2addr v3, v0

    #@1b
    .line 1210
    invoke-virtual {v1, v2, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@1e
    .line 1202
    return-void
.end method

.method protected OrExpr()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    const/4 v4, 0x1

    #@2
    .line 805
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@4
    invoke-virtual {v1, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@7
    move-result v0

    #@8
    .line 807
    .local v0, "opPos":I
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->AndExpr()V

    #@b
    .line 809
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@d
    if-eqz v1, :cond_0

    #@f
    const-string/jumbo v1, "or"

    #@12
    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 811
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@1b
    .line 812
    invoke-virtual {p0, v0, v2, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    #@1e
    .line 813
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->OrExpr()V

    #@21
    .line 815
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@23
    add-int/lit8 v2, v0, 0x1

    #@25
    .line 816
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@27
    invoke-virtual {v3, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@2a
    move-result v3

    #@2b
    sub-int/2addr v3, v0

    #@2c
    .line 815
    invoke-virtual {v1, v2, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@2f
    .line 802
    :cond_0
    return-void
.end method

.method protected PathExpr()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    .line 1276
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@4
    invoke-virtual {v3, v6}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@7
    move-result v2

    #@8
    .line 1278
    .local v2, "opPos":I
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->FilterExpr()I

    #@b
    move-result v0

    #@c
    .line 1280
    .local v0, "filterExprMatch":I
    if-eqz v0, :cond_4

    #@e
    .line 1284
    if-ne v0, v4, :cond_3

    #@10
    const/4 v1, 0x1

    #@11
    .line 1286
    .local v1, "locationPathStarted":Z
    :goto_0
    const/16 v3, 0x2f

    #@13
    invoke-virtual {p0, v3}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_1

    #@19
    .line 1288
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@1c
    .line 1290
    if-nez v1, :cond_0

    #@1e
    .line 1293
    const/16 v3, 0x1c

    #@20
    invoke-virtual {p0, v2, v4, v3}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    #@23
    .line 1295
    const/4 v1, 0x1

    #@24
    .line 1298
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->RelativeLocationPath()Z

    #@27
    move-result v3

    #@28
    if-nez v3, :cond_1

    #@2a
    .line 1301
    const-string/jumbo v3, "ER_EXPECTED_REL_LOC_PATH"

    #@2d
    const/4 v4, 0x0

    #@2e
    invoke-virtual {p0, v3, v4}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@31
    .line 1307
    :cond_1
    if-eqz v1, :cond_2

    #@33
    .line 1309
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@35
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@37
    invoke-virtual {v4, v6}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@3a
    move-result v4

    #@3b
    const/4 v5, -0x1

    #@3c
    invoke-virtual {v3, v4, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@3f
    .line 1310
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@41
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@43
    invoke-virtual {v4, v6}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@46
    move-result v4

    #@47
    add-int/lit8 v4, v4, 0x1

    #@49
    invoke-virtual {v3, v6, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@4c
    .line 1311
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@4e
    add-int/lit8 v4, v2, 0x1

    #@50
    .line 1312
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@52
    invoke-virtual {v5, v6}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@55
    move-result v5

    #@56
    sub-int/2addr v5, v2

    #@57
    .line 1311
    invoke-virtual {v3, v4, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@5a
    .line 1273
    .end local v1    # "locationPathStarted":Z
    :cond_2
    :goto_1
    return-void

    #@5b
    .line 1284
    :cond_3
    const/4 v1, 0x0

    #@5c
    .restart local v1    # "locationPathStarted":Z
    goto :goto_0

    #@5d
    .line 1317
    .end local v1    # "locationPathStarted":Z
    :cond_4
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->LocationPath()V

    #@60
    goto :goto_1
.end method

.method protected Pattern()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 2105
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->LocationPathPattern()V

    #@3
    .line 2107
    const/16 v0, 0x7c

    #@5
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 2109
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@e
    goto :goto_0

    #@f
    .line 2100
    :cond_0
    return-void
.end method

.method protected Predicate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 1933
    const/16 v0, 0x5b

    #@2
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1935
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@b
    .line 1936
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->PredicateExpr()V

    #@e
    .line 1937
    const/16 v0, 0x5d

    #@10
    invoke-direct {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    #@13
    .line 1930
    :cond_0
    return-void
.end method

.method protected PredicateExpr()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1951
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@3
    invoke-virtual {v1, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@6
    move-result v0

    #@7
    .line 1953
    .local v0, "opPos":I
    const/4 v1, 0x2

    #@8
    const/16 v2, 0x1d

    #@a
    invoke-virtual {p0, v1, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    #@d
    .line 1954
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Expr()V

    #@10
    .line 1957
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@12
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@14
    invoke-virtual {v2, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@17
    move-result v2

    #@18
    const/4 v3, -0x1

    #@19
    invoke-virtual {v1, v2, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@1c
    .line 1958
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@1e
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@20
    invoke-virtual {v2, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@23
    move-result v2

    #@24
    add-int/lit8 v2, v2, 0x1

    #@26
    invoke-virtual {v1, v4, v2}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@29
    .line 1959
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@2b
    add-int/lit8 v2, v0, 0x1

    #@2d
    .line 1960
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@2f
    invoke-virtual {v3, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@32
    move-result v3

    #@33
    sub-int/2addr v3, v0

    #@34
    .line 1959
    invoke-virtual {v1, v2, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@37
    .line 1948
    return-void
.end method

.method protected PrimaryExpr()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v6, 0x28

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v5, 0x1

    #@4
    .line 1398
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@6
    invoke-virtual {v2, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@9
    move-result v1

    #@a
    .line 1400
    .local v1, "opPos":I
    iget-char v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    #@c
    const/16 v3, 0x27

    #@e
    if-eq v2, v3, :cond_0

    #@10
    iget-char v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    #@12
    const/16 v3, 0x22

    #@14
    if-ne v2, v3, :cond_1

    #@16
    .line 1402
    :cond_0
    const/16 v2, 0x15

    #@18
    invoke-virtual {p0, v4, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    #@1b
    .line 1403
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Literal()V

    #@1e
    .line 1405
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@20
    add-int/lit8 v3, v1, 0x1

    #@22
    .line 1406
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@24
    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@27
    move-result v4

    #@28
    sub-int/2addr v4, v1

    #@29
    .line 1405
    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@2c
    .line 1408
    const/4 v0, 0x1

    #@2d
    .line 1453
    :goto_0
    return v0

    #@2e
    .line 1410
    :cond_1
    iget-char v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    #@30
    const/16 v3, 0x24

    #@32
    if-ne v2, v3, :cond_2

    #@34
    .line 1412
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@37
    .line 1413
    const/16 v2, 0x16

    #@39
    invoke-virtual {p0, v4, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    #@3c
    .line 1414
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->QName()V

    #@3f
    .line 1416
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@41
    add-int/lit8 v3, v1, 0x1

    #@43
    .line 1417
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@45
    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@48
    move-result v4

    #@49
    sub-int/2addr v4, v1

    #@4a
    .line 1416
    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@4d
    .line 1419
    const/4 v0, 0x1

    #@4e
    .local v0, "matchFound":Z
    goto :goto_0

    #@4f
    .line 1421
    .end local v0    # "matchFound":Z
    :cond_2
    iget-char v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    #@51
    if-ne v2, v6, :cond_3

    #@53
    .line 1423
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@56
    .line 1424
    const/16 v2, 0x17

    #@58
    invoke-virtual {p0, v4, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    #@5b
    .line 1425
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Expr()V

    #@5e
    .line 1426
    const/16 v2, 0x29

    #@60
    invoke-direct {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    #@63
    .line 1428
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@65
    add-int/lit8 v3, v1, 0x1

    #@67
    .line 1429
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@69
    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@6c
    move-result v4

    #@6d
    sub-int/2addr v4, v1

    #@6e
    .line 1428
    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@71
    .line 1431
    const/4 v0, 0x1

    #@72
    .restart local v0    # "matchFound":Z
    goto :goto_0

    #@73
    .line 1433
    .end local v0    # "matchFound":Z
    :cond_3
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@75
    if-eqz v2, :cond_6

    #@77
    iget-char v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    #@79
    const/16 v3, 0x2e

    #@7b
    if-ne v3, v2, :cond_4

    #@7d
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@7f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@82
    move-result v2

    #@83
    if-le v2, v5, :cond_4

    #@85
    .line 1434
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@87
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    #@8a
    move-result v2

    #@8b
    .line 1433
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    #@8e
    move-result v2

    #@8f
    if-nez v2, :cond_5

    #@91
    .line 1434
    :cond_4
    iget-char v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    #@93
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    #@96
    move-result v2

    #@97
    .line 1433
    if-eqz v2, :cond_6

    #@99
    .line 1436
    :cond_5
    const/16 v2, 0x1b

    #@9b
    invoke-virtual {p0, v4, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    #@9e
    .line 1437
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Number()V

    #@a1
    .line 1439
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@a3
    add-int/lit8 v3, v1, 0x1

    #@a5
    .line 1440
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@a7
    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@aa
    move-result v4

    #@ab
    sub-int/2addr v4, v1

    #@ac
    .line 1439
    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@af
    .line 1442
    const/4 v0, 0x1

    #@b0
    .restart local v0    # "matchFound":Z
    goto/16 :goto_0

    #@b2
    .line 1444
    .end local v0    # "matchFound":Z
    :cond_6
    invoke-virtual {p0, v6, v5}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    #@b5
    move-result v2

    #@b6
    if-nez v2, :cond_7

    #@b8
    const/16 v2, 0x3a

    #@ba
    invoke-virtual {p0, v2, v5}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    #@bd
    move-result v2

    #@be
    if-eqz v2, :cond_8

    #@c0
    const/4 v2, 0x3

    #@c1
    invoke-virtual {p0, v6, v2}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    #@c4
    move-result v2

    #@c5
    if-eqz v2, :cond_8

    #@c7
    .line 1446
    :cond_7
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->FunctionCall()Z

    #@ca
    move-result v0

    #@cb
    .local v0, "matchFound":Z
    goto/16 :goto_0

    #@cd
    .line 1450
    .end local v0    # "matchFound":Z
    :cond_8
    const/4 v0, 0x0

    #@ce
    .local v0, "matchFound":Z
    goto/16 :goto_0
.end method

.method protected QName()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x3a

    #@2
    const/4 v3, 0x1

    #@3
    .line 1973
    invoke-virtual {p0, v4, v3}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1975
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@b
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@d
    invoke-virtual {v1, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@10
    move-result v1

    #@11
    iget v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    #@13
    add-int/lit8 v2, v2, -0x1

    #@15
    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@18
    .line 1976
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@1a
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@1c
    invoke-virtual {v1, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@1f
    move-result v1

    #@20
    add-int/lit8 v1, v1, 0x1

    #@22
    invoke-virtual {v0, v3, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@25
    .line 1978
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@28
    .line 1979
    invoke-direct {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    #@2b
    .line 1988
    :goto_0
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@2d
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@2f
    invoke-virtual {v1, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@32
    move-result v1

    #@33
    iget v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    #@35
    add-int/lit8 v2, v2, -0x1

    #@37
    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@3a
    .line 1989
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@3c
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@3e
    invoke-virtual {v1, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@41
    move-result v1

    #@42
    add-int/lit8 v1, v1, 0x1

    #@44
    invoke-virtual {v0, v3, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@47
    .line 1991
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@4a
    .line 1970
    return-void

    #@4b
    .line 1983
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@4d
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@4f
    invoke-virtual {v1, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@52
    move-result v1

    #@53
    const/4 v2, -0x2

    #@54
    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@57
    .line 1984
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@59
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@5b
    invoke-virtual {v1, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@5e
    move-result v1

    #@5f
    add-int/lit8 v1, v1, 0x1

    #@61
    invoke-virtual {v0, v3, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@64
    goto :goto_0
.end method

.method protected RelationalExpr(I)I
    .locals 7
    .param p1, "addPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v6, 0x3d

    #@2
    const/4 v5, -0x1

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x2

    #@5
    .line 925
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@7
    invoke-virtual {v2, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@a
    move-result v1

    #@b
    .line 927
    .local v1, "opPos":I
    if-ne v5, p1, :cond_0

    #@d
    .line 928
    move p1, v1

    #@e
    .line 930
    :cond_0
    invoke-virtual {p0, v5}, Lorg/apache/xpath/compiler/XPathParser;->AdditiveExpr(I)I

    #@11
    .line 932
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 934
    const/16 v2, 0x3c

    #@17
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_3

    #@1d
    .line 936
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@20
    .line 938
    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_2

    #@26
    .line 940
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@29
    .line 941
    const/4 v2, 0x6

    #@2a
    invoke-virtual {p0, p1, v3, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    #@2d
    .line 948
    :goto_0
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@2f
    invoke-virtual {v2, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@32
    move-result v2

    #@33
    sub-int v0, v2, p1

    #@35
    .line 950
    .local v0, "opPlusLeftHandLen":I
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->RelationalExpr(I)I

    #@38
    move-result p1

    #@39
    .line 951
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@3b
    add-int/lit8 v3, p1, 0x1

    #@3d
    .line 952
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@3f
    add-int v5, p1, v0

    #@41
    add-int/lit8 v5, v5, 0x1

    #@43
    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@46
    move-result v4

    #@47
    add-int/2addr v4, v0

    #@48
    .line 951
    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@4b
    .line 953
    add-int/lit8 p1, p1, 0x2

    #@4d
    .line 978
    .end local v0    # "opPlusLeftHandLen":I
    :cond_1
    :goto_1
    return p1

    #@4e
    .line 945
    :cond_2
    const/4 v2, 0x7

    #@4f
    invoke-virtual {p0, p1, v3, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    #@52
    goto :goto_0

    #@53
    .line 955
    :cond_3
    const/16 v2, 0x3e

    #@55
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@58
    move-result v2

    #@59
    if-eqz v2, :cond_1

    #@5b
    .line 957
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@5e
    .line 959
    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@61
    move-result v2

    #@62
    if-eqz v2, :cond_4

    #@64
    .line 961
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@67
    .line 962
    const/16 v2, 0x8

    #@69
    invoke-virtual {p0, p1, v3, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    #@6c
    .line 969
    :goto_2
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@6e
    invoke-virtual {v2, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@71
    move-result v2

    #@72
    sub-int v0, v2, p1

    #@74
    .line 971
    .restart local v0    # "opPlusLeftHandLen":I
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->RelationalExpr(I)I

    #@77
    move-result p1

    #@78
    .line 972
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@7a
    add-int/lit8 v3, p1, 0x1

    #@7c
    .line 973
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@7e
    add-int v5, p1, v0

    #@80
    add-int/lit8 v5, v5, 0x1

    #@82
    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@85
    move-result v4

    #@86
    add-int/2addr v4, v0

    #@87
    .line 972
    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@8a
    .line 974
    add-int/lit8 p1, p1, 0x2

    #@8c
    goto :goto_1

    #@8d
    .line 966
    .end local v0    # "opPlusLeftHandLen":I
    :cond_4
    const/16 v2, 0x9

    #@8f
    invoke-virtual {p0, p1, v3, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    #@92
    goto :goto_2
.end method

.method protected RelativeLocationPath()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 1626
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Step()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1628
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 1631
    :cond_0
    :goto_0
    const/16 v0, 0x2f

    #@a
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 1633
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@13
    .line 1635
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Step()Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_0

    #@19
    .line 1639
    const-string/jumbo v0, "ER_EXPECTED_LOC_STEP"

    #@1c
    const/4 v1, 0x0

    #@1d
    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@20
    goto :goto_0

    #@21
    .line 1643
    :cond_1
    const/4 v0, 0x1

    #@22
    return v0
.end method

.method protected RelativePathPattern()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2250
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->StepPattern(Z)Z

    #@4
    move-result v0

    #@5
    .line 2252
    .local v0, "trailingSlashConsumed":Z
    :goto_0
    const/16 v1, 0x2f

    #@7
    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 2254
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@10
    .line 2259
    if-eqz v0, :cond_0

    #@12
    move v1, v2

    #@13
    :goto_1
    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/XPathParser;->StepPattern(Z)Z

    #@16
    move-result v0

    #@17
    goto :goto_0

    #@18
    :cond_0
    const/4 v1, 0x1

    #@19
    goto :goto_1

    #@1a
    .line 2245
    :cond_1
    return-void
.end method

.method protected Step()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    const/16 v7, 0x409

    #@4
    const/4 v6, 0x4

    #@5
    const/4 v5, 0x1

    #@6
    .line 1657
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@8
    invoke-virtual {v2, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@b
    move-result v1

    #@c
    .line 1659
    .local v1, "opPos":I
    const/16 v2, 0x2f

    #@e
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@11
    move-result v0

    #@12
    .line 1664
    .local v0, "doubleSlash":Z
    if-eqz v0, :cond_0

    #@14
    .line 1666
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@17
    .line 1668
    const/4 v2, 0x2

    #@18
    const/16 v3, 0x2a

    #@1a
    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    #@1d
    .line 1676
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@1f
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@21
    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@24
    move-result v3

    #@25
    add-int/lit8 v3, v3, 0x1

    #@27
    invoke-virtual {v2, v5, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@2a
    .line 1677
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@2c
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@2e
    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@31
    move-result v3

    #@32
    invoke-virtual {v2, v3, v7}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@35
    .line 1678
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@37
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@39
    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@3c
    move-result v3

    #@3d
    add-int/lit8 v3, v3, 0x1

    #@3f
    invoke-virtual {v2, v5, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@42
    .line 1681
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@44
    add-int/lit8 v3, v1, 0x1

    #@46
    add-int/lit8 v3, v3, 0x1

    #@48
    .line 1682
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@4a
    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@4d
    move-result v4

    #@4e
    sub-int/2addr v4, v1

    #@4f
    .line 1681
    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@52
    .line 1685
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@54
    add-int/lit8 v3, v1, 0x1

    #@56
    .line 1686
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@58
    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@5b
    move-result v4

    #@5c
    sub-int/2addr v4, v1

    #@5d
    .line 1685
    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@60
    .line 1688
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@62
    invoke-virtual {v2, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@65
    move-result v1

    #@66
    .line 1691
    :cond_0
    const-string/jumbo v2, "."

    #@69
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    #@6c
    move-result v2

    #@6d
    if-eqz v2, :cond_2

    #@6f
    .line 1693
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@72
    .line 1695
    const/16 v2, 0x5b

    #@74
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@77
    move-result v2

    #@78
    if-eqz v2, :cond_1

    #@7a
    .line 1697
    const-string/jumbo v2, "ER_PREDICATE_ILLEGAL_SYNTAX"

    #@7d
    invoke-virtual {p0, v2, v8}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@80
    .line 1700
    :cond_1
    const/16 v2, 0x30

    #@82
    invoke-virtual {p0, v6, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    #@85
    .line 1703
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@87
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@89
    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@8c
    move-result v3

    #@8d
    add-int/lit8 v3, v3, -0x2

    #@8f
    invoke-virtual {v2, v3, v6}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@92
    .line 1704
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@94
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@96
    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@99
    move-result v3

    #@9a
    add-int/lit8 v3, v3, -0x1

    #@9c
    invoke-virtual {v2, v3, v7}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@9f
    .line 1745
    :goto_0
    return v5

    #@a0
    .line 1706
    :cond_2
    const-string/jumbo v2, ".."

    #@a3
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    #@a6
    move-result v2

    #@a7
    if-eqz v2, :cond_3

    #@a9
    .line 1708
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@ac
    .line 1709
    const/16 v2, 0x2d

    #@ae
    invoke-virtual {p0, v6, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    #@b1
    .line 1712
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@b3
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@b5
    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@b8
    move-result v3

    #@b9
    add-int/lit8 v3, v3, -0x2

    #@bb
    invoke-virtual {v2, v3, v6}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@be
    .line 1713
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@c0
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@c2
    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@c5
    move-result v3

    #@c6
    add-int/lit8 v3, v3, -0x1

    #@c8
    invoke-virtual {v2, v3, v7}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@cb
    goto :goto_0

    #@cc
    .line 1719
    :cond_3
    const/16 v2, 0x2a

    #@ce
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@d1
    move-result v2

    #@d2
    if-nez v2, :cond_4

    #@d4
    const/16 v2, 0x40

    #@d6
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@d9
    move-result v2

    #@da
    if-nez v2, :cond_4

    #@dc
    const/16 v2, 0x5f

    #@de
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@e1
    move-result v2

    #@e2
    if-nez v2, :cond_4

    #@e4
    .line 1720
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@e6
    if-eqz v2, :cond_6

    #@e8
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@ea
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    #@ed
    move-result v2

    #@ee
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    #@f1
    move-result v2

    #@f2
    .line 1719
    if-eqz v2, :cond_6

    #@f4
    .line 1722
    :cond_4
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Basis()V

    #@f7
    .line 1724
    :goto_1
    const/16 v2, 0x5b

    #@f9
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@fc
    move-result v2

    #@fd
    if-eqz v2, :cond_5

    #@ff
    .line 1726
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Predicate()V

    #@102
    goto :goto_1

    #@103
    .line 1730
    :cond_5
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@105
    add-int/lit8 v3, v1, 0x1

    #@107
    .line 1731
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@109
    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@10c
    move-result v4

    #@10d
    sub-int/2addr v4, v1

    #@10e
    .line 1730
    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@111
    goto :goto_0

    #@112
    .line 1736
    :cond_6
    if-eqz v0, :cond_7

    #@114
    .line 1739
    const-string/jumbo v2, "ER_EXPECTED_LOC_STEP"

    #@117
    invoke-virtual {p0, v2, v8}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@11a
    .line 1742
    :cond_7
    return v9
.end method

.method protected StepPattern(Z)Z
    .locals 1
    .param p1, "isLeadingSlashPermitted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 2277
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->AbbreviatedNodeTestStep(Z)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected StringExpr()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1159
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@3
    invoke-virtual {v1, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@6
    move-result v0

    #@7
    .line 1161
    .local v0, "opPos":I
    const/4 v1, 0x2

    #@8
    const/16 v2, 0x11

    #@a
    invoke-virtual {p0, v1, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    #@d
    .line 1162
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Expr()V

    #@10
    .line 1164
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@12
    add-int/lit8 v2, v0, 0x1

    #@14
    .line 1165
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@16
    invoke-virtual {v3, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@19
    move-result v3

    #@1a
    sub-int/2addr v3, v0

    #@1b
    .line 1164
    invoke-virtual {v1, v2, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@1e
    .line 1156
    return-void
.end method

.method protected UnaryExpr()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 1131
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@3
    invoke-virtual {v2, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@6
    move-result v1

    #@7
    .line 1132
    .local v1, "opPos":I
    const/4 v0, 0x0

    #@8
    .line 1134
    .local v0, "isNeg":Z
    iget-char v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    #@a
    const/16 v3, 0x2d

    #@c
    if-ne v2, v3, :cond_0

    #@e
    .line 1136
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@11
    .line 1137
    const/4 v2, 0x2

    #@12
    const/16 v3, 0x10

    #@14
    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    #@17
    .line 1139
    const/4 v0, 0x1

    #@18
    .line 1142
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->UnionExpr()V

    #@1b
    .line 1144
    if-eqz v0, :cond_1

    #@1d
    .line 1145
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@1f
    add-int/lit8 v3, v1, 0x1

    #@21
    .line 1146
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@23
    invoke-virtual {v4, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@26
    move-result v4

    #@27
    sub-int/2addr v4, v1

    #@28
    .line 1145
    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@2b
    .line 1128
    :cond_1
    return-void
.end method

.method protected UnionExpr()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 1230
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@3
    invoke-virtual {v3, v6}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@6
    move-result v2

    #@7
    .line 1231
    .local v2, "opPos":I
    const/4 v0, 0x1

    #@8
    .line 1232
    .local v0, "continueOrLoop":Z
    const/4 v1, 0x0

    #@9
    .line 1236
    .local v1, "foundUnion":Z
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->PathExpr()V

    #@c
    .line 1238
    const/16 v3, 0x7c

    #@e
    invoke-virtual {p0, v3}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_2

    #@14
    .line 1240
    if-nez v1, :cond_1

    #@16
    .line 1242
    const/4 v1, 0x1

    #@17
    .line 1244
    const/4 v3, 0x2

    #@18
    const/16 v4, 0x14

    #@1a
    invoke-virtual {p0, v2, v3, v4}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    #@1d
    .line 1247
    :cond_1
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@20
    .line 1256
    if-nez v0, :cond_0

    #@22
    .line 1258
    :cond_2
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@24
    add-int/lit8 v4, v2, 0x1

    #@26
    .line 1259
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@28
    invoke-virtual {v5, v6}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@2b
    move-result v5

    #@2c
    sub-int/2addr v5, v2

    #@2d
    .line 1258
    invoke-virtual {v3, v4, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@30
    .line 1227
    return-void
.end method

.method appendOp(II)V
    .locals 4
    .param p1, "length"    # I
    .param p2, "op"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 771
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@3
    invoke-virtual {v1, v3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@6
    move-result v0

    #@7
    .line 773
    .local v0, "totalLen":I
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@9
    invoke-virtual {v1, v0, p2}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@c
    .line 774
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@e
    add-int/lit8 v2, v0, 0x1

    #@10
    invoke-virtual {v1, v2, p1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@13
    .line 775
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@15
    add-int v2, v0, p1

    #@17
    invoke-virtual {v1, v3, v2}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@1a
    .line 768
    return-void
.end method

.method protected dumpRemainingTokenQueue()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    .line 677
    iget v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    #@2
    .line 680
    .local v1, "q":I
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@4
    invoke-virtual {v5}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueueSize()I

    #@7
    move-result v5

    #@8
    if-ge v1, v5, :cond_1

    #@a
    .line 682
    const-string/jumbo v0, "\n Remaining tokens: ("

    #@d
    .line 684
    .local v0, "msg":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@f
    invoke-virtual {v5}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueueSize()I

    #@12
    move-result v5

    #@13
    if-ge v1, v5, :cond_0

    #@15
    .line 686
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@17
    iget-object v5, v5, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    #@19
    add-int/lit8 v2, v1, 0x1

    #@1b
    .end local v1    # "q":I
    .local v2, "q":I
    invoke-virtual {v5, v1}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    #@1e
    move-result-object v4

    #@1f
    check-cast v4, Ljava/lang/String;

    #@21
    .line 688
    .local v4, "t":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v5

    #@2a
    const-string/jumbo v6, " \'"

    #@2d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v5

    #@35
    const-string/jumbo v6, "\'"

    #@38
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v5

    #@3c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    move v1, v2

    #@41
    .end local v2    # "q":I
    .restart local v1    # "q":I
    goto :goto_0

    #@42
    .line 691
    .end local v4    # "t":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v5

    #@4b
    const-string/jumbo v6, ")"

    #@4e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v5

    #@52
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v3

    #@56
    .line 698
    .end local v0    # "msg":Ljava/lang/String;
    .local v3, "returnMsg":Ljava/lang/String;
    :goto_1
    return-object v3

    #@57
    .line 695
    .end local v3    # "returnMsg":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, ""

    #@5a
    .restart local v3    # "returnMsg":Ljava/lang/String;
    goto :goto_1
.end method

.method error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 607
    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 608
    .local v1, "fmsg":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@7
    move-result-object v0

    #@8
    .line 610
    .local v0, "ehandler":Ljavax/xml/transform/ErrorListener;
    new-instance v2, Ljavax/xml/transform/TransformerException;

    #@a
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    #@c
    invoke-direct {v2, v1, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@f
    .line 611
    .local v2, "te":Ljavax/xml/transform/TransformerException;
    if-eqz v0, :cond_0

    #@11
    .line 614
    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    #@14
    .line 604
    return-void

    #@15
    .line 619
    :cond_0
    throw v2
.end method

.method errorForDOM3(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 652
    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 653
    .local v1, "fmsg":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@7
    move-result-object v0

    #@8
    .line 655
    .local v0, "ehandler":Ljavax/xml/transform/ErrorListener;
    new-instance v2, Lorg/apache/xpath/domapi/XPathStylesheetDOM3Exception;

    #@a
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    #@c
    invoke-direct {v2, v1, v3}, Lorg/apache/xpath/domapi/XPathStylesheetDOM3Exception;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@f
    .line 656
    .local v2, "te":Ljavax/xml/transform/TransformerException;
    if-eqz v0, :cond_0

    #@11
    .line 659
    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    #@14
    .line 649
    return-void

    #@15
    .line 664
    :cond_0
    throw v2
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .locals 1

    #@0
    .prologue
    .line 251
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    #@2
    return-object v0
.end method

.method final getFunctionToken(Ljava/lang/String;)I
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 721
    :try_start_0
    invoke-static {p1}, Lorg/apache/xpath/compiler/Keywords;->lookupNodeTest(Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    .line 722
    .local v1, "id":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@6
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    #@8
    invoke-virtual {v4, p1}, Lorg/apache/xpath/compiler/FunctionTable;->getFunctionID(Ljava/lang/String;)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    .line 723
    :cond_0
    check-cast v1, Ljava/lang/Integer;

    #@e
    .end local v1    # "id":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result v3

    #@12
    .line 734
    .local v3, "tok":I
    :goto_0
    return v3

    #@13
    .line 730
    .end local v3    # "tok":I
    :catch_0
    move-exception v0

    #@14
    .line 731
    .local v0, "cce":Ljava/lang/ClassCastException;
    const/4 v3, -0x1

    #@15
    .restart local v3    # "tok":I
    goto :goto_0

    #@16
    .line 726
    .end local v0    # "cce":Ljava/lang/ClassCastException;
    .end local v3    # "tok":I
    :catch_1
    move-exception v2

    #@17
    .line 727
    .local v2, "npe":Ljava/lang/NullPointerException;
    const/4 v3, -0x1

    #@18
    .restart local v3    # "tok":I
    goto :goto_0
.end method

.method public initMatchPattern(Lorg/apache/xpath/compiler/Compiler;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V
    .locals 6
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p2, "expression"    # Ljava/lang/String;
    .param p3, "namespaceContext"    # Lorg/apache/xml/utils/PrefixResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 182
    iput-object p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@4
    .line 183
    iput-object p3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    #@6
    .line 184
    invoke-virtual {p1}, Lorg/apache/xpath/compiler/Compiler;->getFunctionTable()Lorg/apache/xpath/compiler/FunctionTable;

    #@9
    move-result-object v2

    #@a
    iput-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    #@c
    .line 186
    new-instance v1, Lorg/apache/xpath/compiler/Lexer;

    #@e
    invoke-direct {v1, p1, p3, p0}, Lorg/apache/xpath/compiler/Lexer;-><init>(Lorg/apache/xpath/compiler/Compiler;Lorg/apache/xml/utils/PrefixResolver;Lorg/apache/xpath/compiler/XPathParser;)V

    #@11
    .line 188
    .local v1, "lexer":Lorg/apache/xpath/compiler/Lexer;
    invoke-virtual {v1, p2}, Lorg/apache/xpath/compiler/Lexer;->tokenize(Ljava/lang/String;)V

    #@14
    .line 190
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@16
    const/16 v3, 0x1e

    #@18
    invoke-virtual {v2, v4, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@1b
    .line 191
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@1d
    const/4 v3, 0x2

    #@1e
    invoke-virtual {v2, v5, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@21
    .line 193
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@24
    .line 194
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Pattern()V

    #@27
    .line 196
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@29
    if-eqz v2, :cond_2

    #@2b
    .line 198
    const-string/jumbo v0, ""

    #@2e
    .line 200
    .local v0, "extraTokens":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@30
    if-eqz v2, :cond_1

    #@32
    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    const-string/jumbo v3, "\'"

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    const-string/jumbo v3, "\'"

    #@4b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v0

    #@53
    .line 204
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@56
    .line 206
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@58
    if-eqz v2, :cond_0

    #@5a
    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v2

    #@63
    const-string/jumbo v3, ", "

    #@66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v2

    #@6a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v0

    #@6e
    goto :goto_0

    #@6f
    .line 210
    :cond_1
    const-string/jumbo v2, "ER_EXTRA_ILLEGAL_TOKENS"

    #@72
    .line 211
    new-array v3, v5, [Ljava/lang/Object;

    #@74
    aput-object v0, v3, v4

    #@76
    .line 210
    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@79
    .line 215
    .end local v0    # "extraTokens":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@7b
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@7d
    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@80
    move-result v3

    #@81
    const/4 v4, -0x1

    #@82
    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@85
    .line 216
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@87
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@89
    invoke-virtual {v3, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@8c
    move-result v3

    #@8d
    add-int/lit8 v3, v3, 0x1

    #@8f
    invoke-virtual {v2, v5, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@92
    .line 218
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@94
    invoke-virtual {v2}, Lorg/apache/xpath/compiler/OpMap;->shrink()V

    #@97
    .line 179
    return-void
.end method

.method public initXPath(Lorg/apache/xpath/compiler/Compiler;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V
    .locals 6
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p2, "expression"    # Ljava/lang/String;
    .param p3, "namespaceContext"    # Lorg/apache/xml/utils/PrefixResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 106
    iput-object p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@4
    .line 107
    iput-object p3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    #@6
    .line 108
    invoke-virtual {p1}, Lorg/apache/xpath/compiler/Compiler;->getFunctionTable()Lorg/apache/xpath/compiler/FunctionTable;

    #@9
    move-result-object v3

    #@a
    iput-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    #@c
    .line 110
    new-instance v2, Lorg/apache/xpath/compiler/Lexer;

    #@e
    invoke-direct {v2, p1, p3, p0}, Lorg/apache/xpath/compiler/Lexer;-><init>(Lorg/apache/xpath/compiler/Compiler;Lorg/apache/xml/utils/PrefixResolver;Lorg/apache/xpath/compiler/XPathParser;)V

    #@11
    .line 112
    .local v2, "lexer":Lorg/apache/xpath/compiler/Lexer;
    invoke-virtual {v2, p2}, Lorg/apache/xpath/compiler/Lexer;->tokenize(Ljava/lang/String;)V

    #@14
    .line 114
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@16
    invoke-virtual {v3, v4, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@19
    .line 115
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@1b
    const/4 v4, 0x2

    #@1c
    invoke-virtual {v3, v5, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@1f
    .line 128
    :try_start_0
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@22
    .line 129
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Expr()V

    #@25
    .line 131
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@27
    if-eqz v3, :cond_2

    #@29
    .line 133
    const-string/jumbo v1, ""

    #@2c
    .line 135
    .local v1, "extraTokens":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@2e
    if-eqz v3, :cond_1

    #@30
    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    const-string/jumbo v4, "\'"

    #@3c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    const-string/jumbo v4, "\'"

    #@49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    .line 139
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    #@54
    .line 141
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@56
    if-eqz v3, :cond_0

    #@58
    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v3

    #@61
    const-string/jumbo v4, ", "

    #@64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v3

    #@68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v1

    #@6c
    goto :goto_0

    #@6d
    .line 145
    :cond_1
    const-string/jumbo v3, "ER_EXTRA_ILLEGAL_TOKENS"

    #@70
    .line 146
    const/4 v4, 0x1

    #@71
    new-array v4, v4, [Ljava/lang/Object;

    #@73
    const/4 v5, 0x0

    #@74
    aput-object v1, v4, v5

    #@76
    .line 145
    invoke-virtual {p0, v3, v4}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/xpath/XPathProcessorException; {:try_start_0 .. :try_end_0} :catch_0

    #@79
    .line 163
    .end local v1    # "extraTokens":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lorg/apache/xpath/compiler/Compiler;->shrink()V

    #@7c
    .line 103
    return-void

    #@7d
    .line 151
    :catch_0
    move-exception v0

    #@7e
    .line 152
    .local v0, "e":Lorg/apache/xpath/XPathProcessorException;
    const-string/jumbo v3, "CONTINUE_AFTER_FATAL_ERROR"

    #@81
    invoke-virtual {v0}, Lorg/apache/xpath/XPathProcessorException;->getMessage()Ljava/lang/String;

    #@84
    move-result-object v4

    #@85
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@88
    move-result v3

    #@89
    if-eqz v3, :cond_3

    #@8b
    .line 157
    const-string/jumbo v3, "/.."

    #@8e
    invoke-virtual {p0, p1, v3, p3}, Lorg/apache/xpath/compiler/XPathParser;->initXPath(Lorg/apache/xpath/compiler/Compiler;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    #@91
    goto :goto_1

    #@92
    .line 160
    :cond_3
    throw v0
.end method

.method insertOp(III)V
    .locals 6
    .param p1, "pos"    # I
    .param p2, "length"    # I
    .param p3, "op"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 749
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@3
    invoke-virtual {v2, v5}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@6
    move-result v1

    #@7
    .line 751
    .local v1, "totalLen":I
    add-int/lit8 v0, v1, -0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    #@b
    .line 753
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@d
    add-int v3, v0, p2

    #@f
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@11
    invoke-virtual {v4, v0}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@14
    move-result v4

    #@15
    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@18
    .line 751
    add-int/lit8 v0, v0, -0x1

    #@1a
    goto :goto_0

    #@1b
    .line 756
    :cond_0
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@1d
    invoke-virtual {v2, p1, p3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@20
    .line 757
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@22
    add-int v3, v1, p2

    #@24
    invoke-virtual {v2, v5, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    #@27
    .line 746
    return-void
.end method

.method final lookahead(CI)Z
    .locals 6
    .param p1, "c"    # C
    .param p2, "n"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 293
    iget v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    #@3
    add-int v1, v3, p2

    #@5
    .line 296
    .local v1, "pos":I
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@7
    invoke-virtual {v3}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueueSize()I

    #@a
    move-result v3

    #@b
    if-gt v1, v3, :cond_1

    #@d
    if-lez v1, :cond_1

    #@f
    .line 297
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@11
    invoke-virtual {v3}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueueSize()I

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_1

    #@17
    .line 299
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    #@19
    iget-object v3, v3, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    #@1b
    add-int/lit8 v4, v1, -0x1

    #@1d
    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Ljava/lang/String;

    #@23
    .line 301
    .local v2, "tok":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@26
    move-result v3

    #@27
    const/4 v4, 0x1

    #@28
    if-ne v3, v4, :cond_0

    #@2a
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    #@2d
    move-result v3

    #@2e
    if-ne v3, p1, :cond_0

    #@30
    const/4 v0, 0x1

    #@31
    .line 308
    .end local v2    # "tok":Ljava/lang/String;
    .local v0, "b":Z
    :goto_0
    return v0

    #@32
    .line 301
    .end local v0    # "b":Z
    .restart local v2    # "tok":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    #@33
    .restart local v0    # "b":Z
    goto :goto_0

    #@34
    .line 305
    .end local v0    # "b":Z
    .end local v2    # "tok":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    #@35
    .restart local v0    # "b":Z
    goto :goto_0
.end method

.method public setErrorHandler(Ljavax/xml/transform/ErrorListener;)V
    .locals 0
    .param p1, "handler"    # Ljavax/xml/transform/ErrorListener;

    #@0
    .prologue
    .line 241
    iput-object p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    #@2
    .line 239
    return-void
.end method

.method final tokenIs(C)Z
    .locals 2
    .param p1, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 277
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-char v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    #@7
    if-ne v1, p1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method final tokenIs(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 264
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    #@6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    if-nez p1, :cond_1

    #@d
    const/4 v0, 0x1

    #@e
    goto :goto_0

    #@f
    :cond_1
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 554
    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 555
    .local v1, "fmsg":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@7
    move-result-object v0

    #@8
    .line 557
    .local v0, "ehandler":Ljavax/xml/transform/ErrorListener;
    if-eqz v0, :cond_0

    #@a
    .line 560
    new-instance v2, Ljavax/xml/transform/TransformerException;

    #@c
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    #@e
    invoke-direct {v2, v1, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@11
    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    #@14
    .line 551
    :goto_0
    return-void

    #@15
    .line 565
    :cond_0
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@17
    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1a
    goto :goto_0
.end method
