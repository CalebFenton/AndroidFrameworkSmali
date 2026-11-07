.class public Lorg/apache/xpath/compiler/XPathParser;
.super Ljava/lang/Object;
.source "XPathParser.java"


# static fields
.field public static final greylist CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "CONTINUE_AFTER_FATAL_ERROR"

.field protected static final greylist FILTER_MATCH_FAILED:I = 0x0

.field protected static final greylist FILTER_MATCH_PREDICATES:I = 0x2

.field protected static final greylist FILTER_MATCH_PRIMARY:I = 0x1


# instance fields
.field private greylist m_errorListener:Ljavax/xml/transform/ErrorListener;

.field private greylist m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

.field greylist m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

.field private greylist m_ops:Lorg/apache/xpath/compiler/OpMap;

.field greylist m_queueMark:I

.field greylist m_sourceLocator:Ljavax/xml/transform/SourceLocator;

.field transient greylist m_token:Ljava/lang/String;

.field transient greylist m_tokenChar:C


# direct methods
.method public constructor greylist <init>(Ljavax/xml/transform/ErrorListener;Ljavax/xml/transform/SourceLocator;)V
    .registers 4

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-char v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    .line 66
    iput v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    .line 80
    iput-object p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    .line 81
    iput-object p2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    return-void
.end method

.method private greylist assertion(ZLjava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_3

    return-void

    .line 583
    :cond_3
    const-string p0, "ER_INCORRECT_PROGRAMMER_ASSERTION"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 587
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final greylist consumeExpected(C)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 522
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 524
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    return-void

    .line 529
    :cond_a
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 528
    const-string v0, "ER_EXPECTED_BUT_FOUND"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 535
    new-instance p0, Lorg/apache/xpath/XPathProcessorException;

    const-string p1, "CONTINUE_AFTER_FATAL_ERROR"

    invoke-direct {p0, p1}, Lorg/apache/xpath/XPathProcessorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final greylist consumeExpected(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 494
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 496
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    return-void

    .line 500
    :cond_a
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ER_EXPECTED_BUT_FOUND"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    new-instance p0, Lorg/apache/xpath/XPathProcessorException;

    const-string p1, "CONTINUE_AFTER_FATAL_ERROR"

    invoke-direct {p0, p1}, Lorg/apache/xpath/XPathProcessorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final greylist getTokenRelative(I)Ljava/lang/String;
    .registers 3

    .line 447
    iget v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    add-int/2addr v0, p1

    if-lez v0, :cond_18

    .line 449
    iget-object p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {p1}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueueSize()I

    move-result p1

    if-ge v0, p1, :cond_18

    .line 451
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object p0, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method private final greylist lookahead(Ljava/lang/String;I)Z
    .registers 7

    .line 402
    iget v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    add-int/2addr v0, p2

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueueSize()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v1, :cond_26

    .line 404
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v0, v0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    iget p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    sub-int/2addr p2, v3

    add-int/2addr p0, p2

    invoke-virtual {v0, p0}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_22

    .line 406
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_22
    if-nez p1, :cond_25

    return v3

    :cond_25
    return v2

    :cond_26
    if-nez p1, :cond_29

    return v3

    :cond_29
    return v2
.end method

.method private final greylist lookbehind(CI)Z
    .registers 5

    .line 329
    iget v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    const/4 v1, 0x1

    add-int/2addr p2, v1

    sub-int/2addr v0, p2

    const/4 p2, 0x0

    if-ltz v0, :cond_24

    .line 333
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object p0, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 335
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_24

    .line 337
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x7c

    if-ne p0, v0, :cond_21

    return p2

    :cond_21
    if-ne p0, p1, :cond_24

    return v1

    :cond_24
    return p2
.end method

.method private final greylist lookbehindHasToken(I)Z
    .registers 5

    .line 371
    iget v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    sub-int v1, v0, p1

    const/4 v2, 0x0

    if-lez v1, :cond_22

    .line 373
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object p0, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/16 p1, 0x7c

    if-nez p0, :cond_1a

    move p0, p1

    goto :goto_1e

    .line 374
    :cond_1a
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    :goto_1e
    if-ne p0, p1, :cond_21

    return v2

    :cond_21
    return v1

    :cond_22
    return v2
.end method

.method private final greylist nextToken()V
    .registers 5

    .line 423
    iget v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueueSize()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_24

    .line 425
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v0, v0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    iget v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    .line 426
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    return-void

    :cond_24
    const/4 v0, 0x0

    .line 430
    iput-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    .line 431
    iput-char v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    return-void
.end method

.method private final greylist prevToken()V
    .registers 4

    .line 468
    iget v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    const/4 v1, 0x0

    if-lez v0, :cond_1c

    add-int/lit8 v0, v0, -0x1

    .line 470
    iput v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    .line 472
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v2, v2, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    return-void

    :cond_1c
    const/4 v0, 0x0

    .line 477
    iput-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    .line 478
    iput-char v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    return-void
.end method


# virtual methods
.method protected greylist AbbreviatedNodeTestStep(Z)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 2295
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    const/16 v2, 0x40

    .line 2301
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    const/16 v3, 0x34

    const/16 v4, 0x33

    const/16 v5, 0x2f

    const/4 v6, 0x2

    const/4 v7, -0x1

    if-eqz v2, :cond_1f

    .line 2305
    invoke-virtual {p0, v6, v4}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 2306
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    :goto_1d
    move p1, v7

    goto :goto_7d

    .line 2308
    :cond_1f
    const-string v2, "::"

    invoke-direct {p0, v2, v1}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(Ljava/lang/String;I)Z

    move-result v2

    const/16 v8, 0x35

    if-eqz v2, :cond_5d

    .line 2310
    const-string p1, "attribute"

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 2314
    invoke-virtual {p0, v6, v4}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    move p1, v7

    goto :goto_56

    .line 2316
    :cond_36
    const-string p1, "child"

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 2318
    iget-object p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {p1, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result p1

    .line 2321
    invoke-virtual {p0, v6, v8}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    move v4, v8

    goto :goto_56

    .line 2327
    :cond_49
    iget-object p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "ER_AXES_NOT_ALLOWED"

    invoke-virtual {p0, v2, p1}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move p1, v7

    move v4, p1

    .line 2331
    :goto_56
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 2332
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    goto :goto_7d

    .line 2334
    :cond_5d
    invoke-virtual {p0, v5}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_73

    if-nez p1, :cond_6b

    .line 2339
    const-string p1, "ER_EXPECTED_STEP_PATTERN"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2343
    :cond_6b
    invoke-virtual {p0, v6, v3}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 2344
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    move v4, v3

    goto :goto_1d

    .line 2348
    :cond_73
    iget-object p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {p1, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result p1

    .line 2351
    invoke-virtual {p0, v6, v8}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    move v4, v8

    .line 2355
    :goto_7d
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v2, v1, v6}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 2357
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->NodeTest(I)V

    .line 2360
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v6, v0, 0x2

    .line 2361
    invoke-virtual {v2, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v8

    sub-int/2addr v8, v0

    .line 2360
    invoke-virtual {v2, v6, v8}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    :goto_98
    const/16 v2, 0x5b

    .line 2363
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 2365
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Predicate()V

    goto :goto_98

    :cond_a4
    if-le p1, v7, :cond_bc

    .line 2382
    invoke-virtual {p0, v5}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_bc

    invoke-virtual {p0, v5, v1}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 2384
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, p1, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 2386
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    move p1, v1

    goto :goto_bd

    :cond_bc
    const/4 p1, 0x0

    .line 2396
    :goto_bd
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    .line 2397
    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    sub-int/2addr v1, v0

    .line 2396
    invoke-virtual {p0, v4, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    return p1
.end method

.method protected greylist AdditiveExpr(I)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1000
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v2, p1, :cond_b

    move p1, v0

    .line 1005
    :cond_b
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->MultiplicativeExpr(I)I

    .line 1007
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v0, :cond_6a

    const/16 v0, 0x2b

    .line 1009
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_3f

    .line 1011
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/16 v0, 0xa

    .line 1012
    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    .line 1014
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    sub-int/2addr v0, p1

    .line 1016
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->AdditiveExpr(I)I

    move-result p1

    .line 1017
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, p1, 0x1

    add-int v4, p1, v0

    add-int/2addr v4, v1

    .line 1018
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 1017
    invoke-virtual {p0, v3, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    :goto_3d
    add-int/2addr p1, v2

    return p1

    :cond_3f
    const/16 v0, 0x2d

    .line 1021
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1023
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/16 v0, 0xb

    .line 1024
    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    .line 1026
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    sub-int/2addr v0, p1

    .line 1028
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->AdditiveExpr(I)I

    move-result p1

    .line 1029
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, p1, 0x1

    add-int v4, p1, v0

    add-int/2addr v4, v1

    .line 1030
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 1029
    invoke-virtual {p0, v3, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    goto :goto_3d

    :cond_6a
    return p1
.end method

.method protected greylist AndExpr()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 832
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    const/4 v2, -0x1

    .line 834
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->EqualityExpr(I)I

    .line 836
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v2, :cond_2e

    const-string v2, "and"

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 838
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/4 v2, 0x2

    const/4 v3, 0x3

    .line 839
    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    .line 840
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->AndExpr()V

    .line 842
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    .line 843
    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    sub-int/2addr v1, v0

    .line 842
    invoke-virtual {p0, v2, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    :cond_2e
    return-void
.end method

.method protected greylist Argument()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1466
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    const/4 v2, 0x2

    const/16 v3, 0x1a

    .line 1468
    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1469
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Expr()V

    .line 1471
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    .line 1472
    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    sub-int/2addr v1, v0

    .line 1471
    invoke-virtual {p0, v2, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    return-void
.end method

.method protected greylist AxisName()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1805
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/xpath/compiler/Keywords;->getAxisName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    .line 1809
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ER_ILLEGAL_AXIS_NAME"

    invoke-virtual {p0, v2, v1}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1813
    :cond_13
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    .line 1815
    invoke-virtual {p0, v1, v0}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    return v0
.end method

.method protected greylist Basis()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1758
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    .line 1762
    const-string v2, "::"

    invoke-direct {p0, v2, v1}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1764
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->AxisName()I

    move-result v2

    .line 1766
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 1767
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    goto :goto_31

    :cond_1a
    const/16 v2, 0x40

    .line 1769
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_2c

    const/16 v2, 0x27

    .line 1773
    invoke-virtual {p0, v3, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1774
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    goto :goto_31

    :cond_2c
    const/16 v2, 0x28

    .line 1780
    invoke-virtual {p0, v3, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1784
    :goto_31
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v3, v1, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1786
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->NodeTest(I)V

    .line 1789
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, v0, 0x2

    .line 1790
    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    sub-int/2addr v1, v0

    .line 1789
    invoke-virtual {p0, v2, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    return-void
.end method

.method protected greylist BooleanExpr()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1179
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    const/16 v2, 0x12

    const/4 v3, 0x2

    .line 1181
    invoke-virtual {p0, v3, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1182
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Expr()V

    .line 1184
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    sub-int/2addr v2, v0

    if-ne v2, v3, :cond_1f

    .line 1188
    const-string v3, "ER_BOOLEAN_ARG_NO_LONGER_OPTIONAL"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1191
    :cond_1f
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    return-void
.end method

.method protected greylist EqualityExpr(I)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 865
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v2, p1, :cond_b

    move p1, v0

    .line 870
    :cond_b
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->RelationalExpr(I)I

    .line 872
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v0, :cond_71

    const/16 v0, 0x21

    .line 874
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    const/16 v2, 0x3d

    const/4 v3, 0x2

    if-eqz v0, :cond_49

    invoke-virtual {p0, v2, v1}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 876
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 877
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/4 v0, 0x4

    .line 878
    invoke-virtual {p0, p1, v3, v0}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    .line 880
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    sub-int/2addr v0, p1

    .line 882
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->EqualityExpr(I)I

    move-result p1

    .line 883
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, p1, 0x1

    add-int v4, p1, v0

    add-int/2addr v4, v1

    .line 884
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 883
    invoke-virtual {p0, v2, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    :goto_47
    add-int/2addr p1, v3

    return p1

    .line 887
    :cond_49
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 889
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/4 v0, 0x5

    .line 890
    invoke-virtual {p0, p1, v3, v0}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    .line 892
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    sub-int/2addr v0, p1

    .line 894
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->EqualityExpr(I)I

    move-result p1

    .line 895
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, p1, 0x1

    add-int v4, p1, v0

    add-int/2addr v4, v1

    .line 896
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 895
    invoke-virtual {p0, v2, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    goto :goto_47

    :cond_71
    return p1
.end method

.method protected greylist Expr()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 790
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->OrExpr()V

    return-void
.end method

.method protected greylist FilterExpr()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1341
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    .line 1345
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->PrimaryExpr()Z

    move-result v2

    if-eqz v2, :cond_27

    const/16 v2, 0x5b

    .line 1347
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v3

    if-eqz v3, :cond_26

    const/16 v1, 0x1c

    const/4 v3, 0x2

    .line 1351
    invoke-virtual {p0, v0, v3, v1}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    .line 1353
    :goto_1b
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1355
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Predicate()V

    goto :goto_1b

    :cond_25
    return v3

    :cond_26
    return v1

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method protected greylist FunctionCall()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1486
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    const/16 v2, 0x3a

    .line 1488
    invoke-virtual {p0, v2, v1}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_34

    const/4 v3, 0x4

    const/16 v5, 0x18

    .line 1490
    invoke-virtual {p0, v3, v5}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1492
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v5, v0, 0x2

    iget v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    sub-int/2addr v6, v1

    invoke-virtual {v3, v5, v6}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1494
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 1495
    invoke-direct {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    .line 1497
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, v0, 0x3

    iget v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    sub-int/2addr v5, v1

    invoke-virtual {v2, v3, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1499
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    goto :goto_5a

    .line 1503
    :cond_34
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->getFunctionToken(Ljava/lang/String;)I

    move-result v2

    if-ne v4, v2, :cond_47

    .line 1507
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "ER_COULDNOT_FIND_FUNCTION"

    invoke-virtual {p0, v5, v3}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_47
    packed-switch v2, :pswitch_data_b6

    const/16 v3, 0x19

    const/4 v5, 0x3

    .line 1520
    invoke-virtual {p0, v5, v3}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1522
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v3, v5, v2}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1525
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    :goto_5a
    const/16 v2, 0x28

    .line 1528
    invoke-direct {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    :cond_5f
    :goto_5f
    const/16 v2, 0x29

    .line 1530
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v3

    if-nez v3, :cond_91

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v3, :cond_91

    const/16 v3, 0x2c

    .line 1532
    invoke-virtual {p0, v3}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_79

    .line 1534
    const-string v5, "ER_FOUND_COMMA_BUT_NO_PRECEDING_ARG"

    invoke-virtual {p0, v5, v6}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1537
    :cond_79
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Argument()V

    .line 1539
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v5

    if-nez v5, :cond_5f

    .line 1541
    invoke-direct {p0, v3}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    .line 1543
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 1545
    const-string v2, "ER_FOUND_COMMA_BUT_NO_FOLLOWING_ARG"

    invoke-virtual {p0, v2, v6}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5f

    .line 1551
    :cond_91
    invoke-direct {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    .line 1554
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1555
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v1, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1556
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    .line 1557
    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    sub-int/2addr v3, v0

    .line 1556
    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    return v1

    :pswitch_b4
    const/4 p0, 0x0

    return p0

    :pswitch_data_b6
    .packed-switch 0x406
        :pswitch_b4
        :pswitch_b4
        :pswitch_b4
        :pswitch_b4
    .end packed-switch
.end method

.method protected greylist IdKeyPattern()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 2233
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->FunctionCall()Z

    return-void
.end method

.method protected greylist Literal()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 2020
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2021
    iget-char v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    .line 2022
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v2, v4, :cond_16

    if-eq v3, v4, :cond_1c

    :cond_16
    const/16 v4, 0x27

    if-ne v2, v4, :cond_50

    if-ne v3, v4, :cond_50

    .line 2029
    :cond_1c
    iget v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    sub-int/2addr v2, v1

    .line 2031
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v3, v3, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lorg/apache/xml/utils/ObjectVector;->setElementAt(Ljava/lang/Object;I)V

    .line 2033
    new-instance v3, Lorg/apache/xpath/objects/XString;

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    .line 2035
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v0, v0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    invoke-virtual {v0, v3, v2}, Lorg/apache/xml/utils/ObjectVector;->setElementAt(Ljava/lang/Object;I)V

    .line 2038
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    invoke-virtual {v0, v3, v2}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 2039
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 2041
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    return-void

    .line 2045
    :cond_50
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ER_PATTERN_LITERAL_NEEDS_BE_QUOTED"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected greylist LocationPath()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1575
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    const/16 v2, 0x1c

    const/4 v3, 0x2

    .line 1578
    invoke-virtual {p0, v3, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    const/16 v2, 0x2f

    .line 1580
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_35

    const/16 v4, 0x32

    const/4 v5, 0x4

    .line 1584
    invoke-virtual {p0, v5, v4}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1587
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v4, v6, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1588
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v3, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    sub-int/2addr v4, v1

    const/16 v5, 0x23

    invoke-virtual {v3, v4, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1590
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    goto :goto_3f

    .line 1591
    :cond_35
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-nez v3, :cond_3f

    .line 1592
    const-string v3, "ER_EXPECTED_LOC_PATH_AT_END_EXPR"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1595
    :cond_3f
    :goto_3f
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v3, :cond_56

    .line 1597
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->RelativeLocationPath()Z

    move-result v3

    if-nez v3, :cond_56

    if-nez v2, :cond_56

    .line 1601
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "ER_EXPECTED_LOC_PATH"

    invoke-virtual {p0, v3, v2}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1607
    :cond_56
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1608
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v1, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1609
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    .line 1610
    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    sub-int/2addr v1, v0

    .line 1609
    invoke-virtual {p0, v2, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    return-void
.end method

.method protected greylist LocationPathPattern()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 2131
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    const/16 v2, 0x1f

    const/4 v3, 0x2

    .line 2139
    invoke-virtual {p0, v3, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    const/16 v2, 0x28

    .line 2141
    invoke-virtual {p0, v2, v1}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v2

    const/16 v4, 0x34

    const/16 v5, 0x2f

    const/4 v6, 0x4

    if-eqz v2, :cond_62

    const-string v2, "id"

    .line 2142
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string v2, "key"

    .line 2143
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 2145
    :cond_2a
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->IdKeyPattern()V

    .line 2147
    invoke-virtual {p0, v5}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 2149
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 2151
    invoke-virtual {p0, v5}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 2153
    invoke-virtual {p0, v6, v4}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 2155
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    goto :goto_48

    :cond_43
    const/16 v2, 0x35

    .line 2159
    invoke-virtual {p0, v6, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 2163
    :goto_48
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v4, v6}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 2164
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v4

    sub-int/2addr v4, v1

    const/16 v5, 0x40a

    invoke-virtual {v2, v4, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    :cond_5e
    move v2, v3

    goto :goto_95

    :cond_60
    const/4 v2, 0x0

    goto :goto_95

    .line 2169
    :cond_62
    invoke-virtual {p0, v5}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 2171
    invoke-virtual {p0, v5, v1}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 2173
    invoke-virtual {p0, v6, v4}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 2179
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    move v2, v3

    goto :goto_7c

    :cond_76
    const/16 v2, 0x32

    .line 2185
    invoke-virtual {p0, v6, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    move v2, v1

    .line 2192
    :goto_7c
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v4, v5, v6}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 2193
    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v4, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v5

    sub-int/2addr v5, v1

    const/16 v6, 0x23

    invoke-virtual {v4, v5, v6}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 2195
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    :goto_95
    if-eqz v2, :cond_af

    const/16 v4, 0x7c

    .line 2204
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v4

    if-nez v4, :cond_a7

    iget-object v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v4, :cond_a7

    .line 2206
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->RelativePathPattern()V

    goto :goto_af

    :cond_a7
    if-ne v2, v3, :cond_af

    .line 2211
    const-string v2, "ER_EXPECTED_REL_PATH_PATTERN"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2216
    :cond_af
    :goto_af
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 2217
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v1, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 2218
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    .line 2219
    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    sub-int/2addr v1, v0

    .line 2218
    invoke-virtual {p0, v2, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    return-void
.end method

.method protected greylist MultiplicativeExpr(I)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1058
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v2, p1, :cond_b

    move p1, v0

    .line 1063
    :cond_b
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->UnaryExpr()V

    .line 1065
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v0, :cond_c1

    const/16 v0, 0x2a

    .line 1067
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_3f

    .line 1069
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/16 v0, 0xc

    .line 1070
    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    .line 1072
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    sub-int/2addr v0, p1

    .line 1074
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->MultiplicativeExpr(I)I

    move-result p1

    .line 1075
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, p1, 0x1

    add-int v4, p1, v0

    add-int/2addr v4, v1

    .line 1076
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 1075
    invoke-virtual {p0, v3, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    :goto_3d
    add-int/2addr p1, v2

    return p1

    .line 1079
    :cond_3f
    const-string v0, "div"

    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1081
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/16 v0, 0xd

    .line 1082
    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    .line 1084
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    sub-int/2addr v0, p1

    .line 1086
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->MultiplicativeExpr(I)I

    move-result p1

    .line 1087
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, p1, 0x1

    add-int v4, p1, v0

    add-int/2addr v4, v1

    .line 1088
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 1087
    invoke-virtual {p0, v3, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    goto :goto_3d

    .line 1091
    :cond_6a
    const-string v0, "mod"

    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 1093
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/16 v0, 0xe

    .line 1094
    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    .line 1096
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    sub-int/2addr v0, p1

    .line 1098
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->MultiplicativeExpr(I)I

    move-result p1

    .line 1099
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, p1, 0x1

    add-int v4, p1, v0

    add-int/2addr v4, v1

    .line 1100
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 1099
    invoke-virtual {p0, v3, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    goto :goto_3d

    .line 1103
    :cond_95
    const-string v0, "quo"

    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 1105
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/16 v0, 0xf

    .line 1106
    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    .line 1108
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    sub-int/2addr v0, p1

    .line 1110
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->MultiplicativeExpr(I)I

    move-result p1

    .line 1111
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v3, p1, 0x1

    add-int v4, p1, v0

    add-int/2addr v4, v1

    .line 1112
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 1111
    invoke-virtual {p0, v3, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    goto/16 :goto_3d

    :cond_c1
    return p1
.end method

.method protected greylist NCName()V
    .registers 5

    .line 2001
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    iget v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 2002
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 2004
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    return-void
.end method

.method protected greylist NodeTest(I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/16 p1, 0x28

    const/4 v0, 0x1

    .line 1833
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 1835
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/xpath/compiler/Keywords;->getNodeType(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 1839
    iget-object p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ER_UNKNOWN_NODETYPE"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1844
    :cond_1d
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 1846
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1848
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v0}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1849
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v0}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v0, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1851
    invoke-direct {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    const/16 p1, 0x408

    const/16 v0, 0x29

    if-ne p1, v1, :cond_4b

    .line 1855
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result p1

    if-nez p1, :cond_4b

    .line 1857
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Literal()V

    .line 1861
    :cond_4b
    invoke-direct {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    return-void

    .line 1868
    :cond_4f
    iget-object p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {p1, v0}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    const/16 v2, 0x22

    invoke-virtual {p1, v1, v2}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1869
    iget-object p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {p1, v0}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    const/16 p1, 0x3a

    .line 1871
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "ER_EXPECTED_NODE_TEST"

    const/16 v4, 0x5f

    const/4 v5, -0x3

    const/16 v6, 0x2a

    if-eqz v1, :cond_a8

    .line 1873
    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 1875
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1, v0}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v7

    invoke-virtual {v1, v7, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    goto :goto_a1

    .line 1879
    :cond_84
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1, v0}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v7

    iget v8, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    sub-int/2addr v8, v0

    invoke-virtual {v1, v7, v8}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1883
    iget-char v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_a1

    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v1

    if-nez v1, :cond_a1

    .line 1886
    invoke-virtual {p0, v3, v2}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1890
    :cond_a1
    :goto_a1
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 1891
    invoke-direct {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    goto :goto_b2

    .line 1895
    :cond_a8
    iget-object p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {p1, v0}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    const/4 v7, -0x2

    invoke-virtual {p1, v1, v7}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1898
    :goto_b2
    iget-object p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {p1, v0}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1900
    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result p1

    if-eqz p1, :cond_cc

    .line 1902
    iget-object p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {p1, v0}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    invoke-virtual {p1, v1, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    goto :goto_e9

    .line 1906
    :cond_cc
    iget-object p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {p1, v0}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    iget v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    sub-int/2addr v5, v0

    invoke-virtual {p1, v1, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1910
    iget-char p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result p1

    if-nez p1, :cond_e9

    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result p1

    if-nez p1, :cond_e9

    .line 1913
    invoke-virtual {p0, v3, v2}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1917
    :cond_e9
    :goto_e9
    iget-object p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {p1, v0}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1919
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    return-void
.end method

.method protected greylist Number()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 2060
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v0, :cond_5e

    const/16 v1, 0x65

    .line 2070
    :try_start_6
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_22

    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    const/16 v2, 0x45

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v1, :cond_22

    .line 2072
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_35

    .line 2071
    :cond_22
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_28} :catch_28

    .line 2078
    :catch_28
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ER_COULDNOT_BE_FORMATTED_TO_NUMBER"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    .line 2082
    :goto_35
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v2, v2, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    new-instance v3, Lorg/apache/xpath/objects/XNumber;

    invoke-direct {v3, v0, v1}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    iget v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {v2, v3, v0}, Lorg/apache/xml/utils/ObjectVector;->setElementAt(Ljava/lang/Object;I)V

    .line 2083
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    iget v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 2084
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 2086
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    :cond_5e
    return-void
.end method

.method protected greylist NumberExpr()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1205
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    const/4 v2, 0x2

    const/16 v3, 0x13

    .line 1207
    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1208
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Expr()V

    .line 1210
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    .line 1211
    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    sub-int/2addr v1, v0

    .line 1210
    invoke-virtual {p0, v2, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    return-void
.end method

.method protected greylist OrExpr()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 805
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    .line 807
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->AndExpr()V

    .line 809
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v2, :cond_2c

    const-string v2, "or"

    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 811
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/4 v2, 0x2

    .line 812
    invoke-virtual {p0, v0, v2, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    .line 813
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->OrExpr()V

    .line 815
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    .line 816
    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    sub-int/2addr v1, v0

    .line 815
    invoke-virtual {p0, v2, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    :cond_2c
    return-void
.end method

.method protected greylist PathExpr()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1276
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    .line 1278
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->FilterExpr()I

    move-result v2

    if-eqz v2, :cond_55

    const/4 v3, 0x2

    if-ne v2, v3, :cond_12

    move v2, v1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    const/16 v4, 0x2f

    .line 1286
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 1288
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    if-nez v2, :cond_26

    const/16 v2, 0x1c

    .line 1293
    invoke-virtual {p0, v0, v3, v2}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    move v2, v1

    .line 1298
    :cond_26
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->RelativeLocationPath()Z

    move-result v3

    if-nez v3, :cond_32

    .line 1301
    const-string v3, "ER_EXPECTED_REL_LOC_PATH"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_32
    if-eqz v2, :cond_54

    .line 1309
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1310
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v1, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1311
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    .line 1312
    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    sub-int/2addr v1, v0

    .line 1311
    invoke-virtual {p0, v2, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    :cond_54
    return-void

    .line 1317
    :cond_55
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->LocationPath()V

    return-void
.end method

.method protected greylist Pattern()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 2105
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->LocationPathPattern()V

    const/16 v0, 0x7c

    .line 2107
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2109
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    goto :goto_0

    :cond_f
    return-void
.end method

.method protected greylist Predicate()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/16 v0, 0x5b

    .line 1933
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1935
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 1936
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->PredicateExpr()V

    const/16 v0, 0x5d

    .line 1937
    invoke-direct {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    :cond_13
    return-void
.end method

.method protected greylist PredicateExpr()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1951
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    const/4 v2, 0x2

    const/16 v3, 0x1d

    .line 1953
    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1954
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Expr()V

    .line 1957
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1958
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v1, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1959
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    .line 1960
    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    sub-int/2addr v1, v0

    .line 1959
    invoke-virtual {p0, v2, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    return-void
.end method

.method protected greylist PrimaryExpr()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1398
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    .line 1400
    iget-char v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    const/16 v3, 0x27

    const/4 v4, 0x2

    if-eq v2, v3, :cond_a5

    const/16 v3, 0x22

    if-ne v2, v3, :cond_14

    goto/16 :goto_a5

    :cond_14
    const/16 v3, 0x24

    if-ne v2, v3, :cond_30

    .line 1412
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/16 v2, 0x16

    .line 1413
    invoke-virtual {p0, v4, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1414
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->QName()V

    .line 1416
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    .line 1417
    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    sub-int/2addr v3, v0

    .line 1416
    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    return v1

    :cond_30
    const/16 v3, 0x28

    if-ne v2, v3, :cond_51

    .line 1423
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/16 v2, 0x17

    .line 1424
    invoke-virtual {p0, v4, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1425
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Expr()V

    const/16 v2, 0x29

    .line 1426
    invoke-direct {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    .line 1428
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    .line 1429
    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    sub-int/2addr v3, v0

    .line 1428
    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    return v1

    .line 1433
    :cond_51
    iget-object v5, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v5, :cond_88

    const/16 v6, 0x2e

    if-ne v6, v2, :cond_6b

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_6b

    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    .line 1434
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1433
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_73

    :cond_6b
    iget-char v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    .line 1434
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_88

    :cond_73
    const/16 v2, 0x1b

    .line 1436
    invoke-virtual {p0, v4, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1437
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Number()V

    .line 1439
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    .line 1440
    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    sub-int/2addr v3, v0

    .line 1439
    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    return v1

    .line 1444
    :cond_88
    invoke-virtual {p0, v3, v1}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v0

    if-nez v0, :cond_a0

    const/16 v0, 0x3a

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v0

    if-eqz v0, :cond_9e

    const/4 v0, 0x3

    invoke-virtual {p0, v3, v0}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v0

    if-eqz v0, :cond_9e

    goto :goto_a0

    :cond_9e
    const/4 p0, 0x0

    return p0

    .line 1446
    :cond_a0
    :goto_a0
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->FunctionCall()Z

    move-result p0

    return p0

    :cond_a5
    :goto_a5
    const/16 v2, 0x15

    .line 1402
    invoke-virtual {p0, v4, v2}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1403
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Literal()V

    .line 1405
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    .line 1406
    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    sub-int/2addr v3, v0

    .line 1405
    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    return v1
.end method

.method protected greylist QName()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/16 v0, 0x3a

    const/4 v1, 0x1

    .line 1973
    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/compiler/XPathParser;->lookahead(CI)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1975
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    iget v4, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1976
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v1, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1978
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 1979
    invoke-direct {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->consumeExpected(C)V

    goto :goto_3a

    .line 1983
    :cond_26
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    const/4 v3, -0x2

    invoke-virtual {v0, v2, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1984
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1988
    :goto_3a
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    iget v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1989
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1991
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    return-void
.end method

.method protected greylist RelationalExpr(I)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 925
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v2, p1, :cond_b

    move p1, v0

    .line 930
    :cond_b
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->AdditiveExpr(I)I

    .line 932
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v0, :cond_88

    const/16 v0, 0x3c

    .line 934
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    const/16 v2, 0x3d

    const/4 v3, 0x2

    if-eqz v0, :cond_4e

    .line 936
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 938
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 940
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/4 v0, 0x6

    .line 941
    invoke-virtual {p0, p1, v3, v0}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    goto :goto_32

    :cond_2e
    const/4 v0, 0x7

    .line 945
    invoke-virtual {p0, p1, v3, v0}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    .line 948
    :goto_32
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    sub-int/2addr v0, p1

    .line 950
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->RelationalExpr(I)I

    move-result p1

    .line 951
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, p1, 0x1

    add-int v4, p1, v0

    add-int/2addr v4, v1

    .line 952
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 951
    invoke-virtual {p0, v2, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    :goto_4c
    add-int/2addr p1, v3

    return p1

    :cond_4e
    const/16 v0, 0x3e

    .line 955
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 957
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 959
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 961
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/16 v0, 0x8

    .line 962
    invoke-virtual {p0, p1, v3, v0}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    goto :goto_6d

    :cond_68
    const/16 v0, 0x9

    .line 966
    invoke-virtual {p0, p1, v3, v0}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    .line 969
    :goto_6d
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    sub-int/2addr v0, p1

    .line 971
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->RelationalExpr(I)I

    move-result p1

    .line 972
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, p1, 0x1

    add-int v4, p1, v0

    add-int/2addr v4, v1

    .line 973
    invoke-virtual {p0, v4}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 972
    invoke-virtual {p0, v2, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    goto :goto_4c

    :cond_88
    return p1
.end method

.method protected greylist RelativeLocationPath()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1626
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Step()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    :goto_8
    const/16 v0, 0x2f

    .line 1631
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1633
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 1635
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Step()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1639
    const-string v0, "ER_EXPECTED_LOC_STEP"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    :cond_20
    const/4 p0, 0x1

    return p0
.end method

.method protected greylist RelativePathPattern()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2250
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->StepPattern(Z)Z

    move-result v0

    :goto_5
    const/16 v1, 0x2f

    .line 2252
    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2254
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    xor-int/lit8 v0, v0, 0x1

    .line 2259
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/XPathParser;->StepPattern(Z)Z

    move-result v0

    goto :goto_5

    :cond_17
    return-void
.end method

.method protected greylist Step()Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1657
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    const/16 v2, 0x2f

    .line 1659
    invoke-virtual {p0, v2}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    const/16 v3, 0x2a

    const/16 v4, 0x409

    const/4 v5, 0x2

    if-eqz v2, :cond_55

    .line 1666
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 1668
    invoke-virtual {p0, v5, v3}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1676
    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v6, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v6, v1, v7}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1677
    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v6, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v7

    invoke-virtual {v6, v7, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1678
    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v6, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v6, v1, v7}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1681
    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v7, v0, 0x1

    add-int/lit8 v8, v0, 0x2

    .line 1682
    invoke-virtual {v6, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v9

    sub-int/2addr v9, v0

    .line 1681
    invoke-virtual {v6, v8, v9}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1685
    iget-object v6, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    .line 1686
    invoke-virtual {v6, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v8

    sub-int/2addr v8, v0

    .line 1685
    invoke-virtual {v6, v7, v8}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1688
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    .line 1691
    :cond_55
    const-string v6, "."

    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x5b

    const/4 v9, 0x4

    if-eqz v6, :cond_89

    .line 1693
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 1695
    invoke-virtual {p0, v8}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 1697
    const-string v0, "ER_PREDICATE_ILLEGAL_SYNTAX"

    invoke-virtual {p0, v0, v7}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6f
    const/16 v0, 0x30

    .line 1700
    invoke-virtual {p0, v9, v0}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1703
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v0, v2, v9}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1704
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    goto :goto_f5

    .line 1706
    :cond_89
    const-string v6, ".."

    invoke-virtual {p0, v6}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ae

    .line 1708
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/16 v0, 0x2d

    .line 1709
    invoke-virtual {p0, v9, v0}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1712
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v0, v2, v9}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 1713
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v4}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    goto :goto_f5

    .line 1719
    :cond_ae
    invoke-virtual {p0, v3}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v3

    if-nez v3, :cond_dc

    const/16 v3, 0x40

    invoke-virtual {p0, v3}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v3

    if-nez v3, :cond_dc

    const/16 v3, 0x5f

    invoke-virtual {p0, v3}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v3

    if-nez v3, :cond_dc

    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_d4

    .line 1720
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_d4

    goto :goto_dc

    :cond_d4
    if-eqz v2, :cond_db

    .line 1739
    const-string v0, "ER_EXPECTED_LOC_STEP"

    invoke-virtual {p0, v0, v7}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_db
    return v4

    .line 1722
    :cond_dc
    :goto_dc
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Basis()V

    .line 1724
    :goto_df
    invoke-virtual {p0, v8}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 1726
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Predicate()V

    goto :goto_df

    .line 1730
    :cond_e9
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    .line 1731
    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    sub-int/2addr v3, v0

    .line 1730
    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    :goto_f5
    return v1
.end method

.method protected greylist StepPattern(Z)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 2277
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/XPathParser;->AbbreviatedNodeTestStep(Z)Z

    move-result p0

    return p0
.end method

.method protected greylist StringExpr()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1159
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    const/4 v2, 0x2

    const/16 v3, 0x11

    .line 1161
    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    .line 1162
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Expr()V

    .line 1164
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    .line 1165
    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    sub-int/2addr v1, v0

    .line 1164
    invoke-virtual {p0, v2, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    return-void
.end method

.method protected greylist UnaryExpr()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1131
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    .line 1134
    iget-char v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_18

    .line 1136
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    const/4 v2, 0x2

    const/16 v3, 0x10

    .line 1137
    invoke-virtual {p0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->appendOp(II)V

    move v2, v1

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    .line 1142
    :goto_19
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->UnionExpr()V

    if-eqz v2, :cond_2a

    .line 1145
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    .line 1146
    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    sub-int/2addr v1, v0

    .line 1145
    invoke-virtual {p0, v2, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    :cond_2a
    return-void
.end method

.method protected greylist UnionExpr()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 1230
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    const/4 v2, 0x0

    .line 1236
    :goto_8
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->PathExpr()V

    const/16 v3, 0x7c

    .line 1238
    invoke-virtual {p0, v3}, Lorg/apache/xpath/compiler/XPathParser;->tokenIs(C)Z

    move-result v3

    if-eqz v3, :cond_20

    if-nez v2, :cond_1c

    const/4 v2, 0x2

    const/16 v3, 0x14

    .line 1244
    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/xpath/compiler/XPathParser;->insertOp(III)V

    move v2, v1

    .line 1247
    :cond_1c
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    goto :goto_8

    .line 1258
    :cond_20
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    .line 1259
    invoke-virtual {p0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v1

    sub-int/2addr v1, v0

    .line 1258
    invoke-virtual {p0, v2, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    return-void
.end method

.method greylist appendOp(II)V
    .registers 6

    .line 771
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    .line 773
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, v0, p2}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 774
    iget-object p2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v2, p1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 775
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/2addr v0, p1

    invoke-virtual {p0, v1, v0}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    return-void
.end method

.method protected greylist dumpRemainingTokenQueue()Ljava/lang/String;
    .registers 5

    .line 677
    iget v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    .line 680
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v1}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueueSize()I

    move-result v1

    if-ge v0, v1, :cond_4d

    .line 682
    const-string v1, "\n Remaining tokens: ("

    .line 684
    :goto_c
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueueSize()I

    move-result v2

    if-ge v0, v2, :cond_3b

    .line 686
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object v2, v2, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 688
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v0, v3

    goto :goto_c

    .line 691
    :cond_3b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 695
    :cond_4d
    const-string p0, ""

    return-object p0
.end method

.method greylist error(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 607
    invoke-static {p1, p2}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 608
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p2

    .line 610
    new-instance v0, Ljavax/xml/transform/TransformerException;

    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v0, p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    if-eqz p2, :cond_15

    .line 614
    invoke-interface {p2, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    return-void

    .line 619
    :cond_15
    throw v0
.end method

.method greylist errorForDOM3(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 652
    invoke-static {p1, p2}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 653
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p2

    .line 655
    new-instance v0, Lorg/apache/xpath/domapi/XPathStylesheetDOM3Exception;

    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v0, p1, p0}, Lorg/apache/xpath/domapi/XPathStylesheetDOM3Exception;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    if-eqz p2, :cond_15

    .line 659
    invoke-interface {p2, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    return-void

    .line 664
    :cond_15
    throw v0
.end method

.method public greylist getErrorListener()Ljavax/xml/transform/ErrorListener;
    .registers 1

    .line 251
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    return-object p0
.end method

.method final greylist getFunctionToken(Ljava/lang/String;)I
    .registers 3

    .line 721
    :try_start_0
    invoke-static {p1}, Lorg/apache/xpath/compiler/Keywords;->lookupNodeTest(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    .line 722
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/FunctionTable;->getFunctionID(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 723
    :cond_c
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_12} :catch_13

    return p0

    :catch_13
    const/4 p0, -0x1

    return p0
.end method

.method public greylist initMatchPattern(Lorg/apache/xpath/compiler/Compiler;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    .line 183
    iput-object p3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    .line 184
    invoke-virtual {p1}, Lorg/apache/xpath/compiler/Compiler;->getFunctionTable()Lorg/apache/xpath/compiler/FunctionTable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    .line 186
    new-instance v0, Lorg/apache/xpath/compiler/Lexer;

    invoke-direct {v0, p1, p3, p0}, Lorg/apache/xpath/compiler/Lexer;-><init>(Lorg/apache/xpath/compiler/Compiler;Lorg/apache/xml/utils/PrefixResolver;Lorg/apache/xpath/compiler/XPathParser;)V

    .line 188
    invoke-virtual {v0, p2}, Lorg/apache/xpath/compiler/Lexer;->tokenize(Ljava/lang/String;)V

    .line 190
    iget-object p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 p2, 0x0

    const/16 p3, 0x1e

    invoke-virtual {p1, p2, p3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 191
    iget-object p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 p2, 0x2

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 193
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 194
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Pattern()V

    .line 196
    iget-object p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz p1, :cond_6c

    .line 198
    const-string p1, ""

    .line 200
    :cond_2d
    :goto_2d
    iget-object p2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz p2, :cond_63

    .line 202
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 204
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 206
    iget-object p2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz p2, :cond_2d

    .line 207
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2d

    .line 210
    :cond_63
    const-string p2, "ER_EXTRA_ILLEGAL_TOKENS"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    :cond_6c
    iget-object p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {p1, p3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result p2

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 216
    iget-object p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {p1, p3}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p1, p3, p2}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 218
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {p0}, Lorg/apache/xpath/compiler/OpMap;->shrink()V

    return-void
.end method

.method public greylist initXPath(Lorg/apache/xpath/compiler/Compiler;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 106
    const-string v0, "\'"

    iput-object p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    .line 107
    iput-object p3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_namespaceContext:Lorg/apache/xml/utils/PrefixResolver;

    .line 108
    invoke-virtual {p1}, Lorg/apache/xpath/compiler/Compiler;->getFunctionTable()Lorg/apache/xpath/compiler/FunctionTable;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_functionTable:Lorg/apache/xpath/compiler/FunctionTable;

    .line 110
    new-instance v1, Lorg/apache/xpath/compiler/Lexer;

    invoke-direct {v1, p1, p3, p0}, Lorg/apache/xpath/compiler/Lexer;-><init>(Lorg/apache/xpath/compiler/Compiler;Lorg/apache/xml/utils/PrefixResolver;Lorg/apache/xpath/compiler/XPathParser;)V

    .line 112
    invoke-virtual {v1, p2}, Lorg/apache/xpath/compiler/Lexer;->tokenize(Ljava/lang/String;)V

    .line 114
    iget-object p2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 115
    iget-object p2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 v1, 0x2

    invoke-virtual {p2, v2, v1}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 128
    :try_start_21
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 129
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->Expr()V

    .line 131
    iget-object p2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz p2, :cond_7e

    .line 133
    const-string p2, ""

    .line 135
    :cond_2d
    :goto_2d
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v1, :cond_63

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 139
    invoke-direct {p0}, Lorg/apache/xpath/compiler/XPathParser;->nextToken()V

    .line 141
    iget-object v1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz v1, :cond_2d

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2d

    :catch_61
    move-exception p2

    goto :goto_6d

    .line 145
    :cond_63
    const-string v0, "ER_EXTRA_ILLEGAL_TOKENS"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lorg/apache/xpath/compiler/XPathParser;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6c
    .catch Lorg/apache/xpath/XPathProcessorException; {:try_start_21 .. :try_end_6c} :catch_61

    goto :goto_7e

    .line 152
    :goto_6d
    const-string v0, "CONTINUE_AFTER_FATAL_ERROR"

    invoke-virtual {p2}, Lorg/apache/xpath/XPathException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 157
    const-string p2, "/.."

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xpath/compiler/XPathParser;->initXPath(Lorg/apache/xpath/compiler/Compiler;Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    .line 163
    :cond_7e
    :goto_7e
    invoke-virtual {p1}, Lorg/apache/xpath/compiler/OpMap;->shrink()V

    return-void

    .line 160
    :cond_82
    throw p2
.end method

.method greylist insertOp(III)V
    .registers 10

    .line 749
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_9
    if-lt v2, p1, :cond_19

    .line 753
    iget-object v3, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int v4, v2, p2

    invoke-virtual {v3, v2}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 756
    :cond_19
    iget-object v2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {v2, p1, p3}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    .line 757
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    add-int/2addr v0, p2

    invoke-virtual {p0, v1, v0}, Lorg/apache/xpath/compiler/OpMap;->setOp(II)V

    return-void
.end method

.method final greylist lookahead(CI)Z
    .registers 5

    .line 293
    iget v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_queueMark:I

    add-int/2addr v0, p2

    .line 296
    iget-object p2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    invoke-virtual {p2}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueueSize()I

    move-result p2

    const/4 v1, 0x0

    if-gt v0, p2, :cond_2f

    if-lez v0, :cond_2f

    iget-object p2, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    .line 297
    invoke-virtual {p2}, Lorg/apache/xpath/compiler/OpMap;->getTokenQueueSize()I

    move-result p2

    if-eqz p2, :cond_2f

    .line 299
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_ops:Lorg/apache/xpath/compiler/OpMap;

    iget-object p0, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    const/4 p2, 0x1

    sub-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 301
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p2, :cond_2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, p1, :cond_2f

    return p2

    :cond_2f
    return v1
.end method

.method public greylist setErrorHandler(Ljavax/xml/transform/ErrorListener;)V
    .registers 2

    .line 241
    iput-object p1, p0, Lorg/apache/xpath/compiler/XPathParser;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    return-void
.end method

.method final greylist tokenIs(C)Z
    .registers 4

    .line 277
    iget-object v0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-char p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_tokenChar:C

    if-ne p0, p1, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    return v1
.end method

.method final greylist tokenIs(Ljava/lang/String;)Z
    .registers 2

    .line 264
    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_token:Ljava/lang/String;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_9
    if-nez p1, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method greylist warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 554
    invoke-static {p1, p2}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 555
    invoke-virtual {p0}, Lorg/apache/xpath/compiler/XPathParser;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p2

    if-eqz p2, :cond_15

    .line 560
    new-instance v0, Ljavax/xml/transform/TransformerException;

    iget-object p0, p0, Lorg/apache/xpath/compiler/XPathParser;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    invoke-direct {v0, p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {p2, v0}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    return-void

    .line 565
    :cond_15
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
