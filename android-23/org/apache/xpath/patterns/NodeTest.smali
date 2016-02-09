.class public Lorg/apache/xpath/patterns/NodeTest;
.super Lorg/apache/xpath/Expression;
.source "NodeTest.java"


# static fields
.field public static final SCORE_NODETEST:Lorg/apache/xpath/objects/XNumber;

.field public static final SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

.field public static final SCORE_NSWILD:Lorg/apache/xpath/objects/XNumber;

.field public static final SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

.field public static final SCORE_QNAME:Lorg/apache/xpath/objects/XNumber;

.field public static final SHOW_BYFUNCTION:I = 0x10000

.field public static final SUPPORTS_PRE_STRIPPING:Ljava/lang/String; = "http://xml.apache.org/xpath/features/whitespace-pre-stripping"

.field public static final WILD:Ljava/lang/String; = "*"

.field static final serialVersionUID:J = -0x4f9cee24b2b98886L


# instance fields
.field private m_isTotallyWild:Z

.field protected m_name:Ljava/lang/String;

.field m_namespace:Ljava/lang/String;

.field m_score:Lorg/apache/xpath/objects/XNumber;

.field protected m_whatToShow:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 159
    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    #@2
    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    #@4
    invoke-direct {v0, v2, v3}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    #@7
    .line 158
    sput-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NODETEST:Lorg/apache/xpath/objects/XNumber;

    #@9
    .line 166
    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    #@b
    const-wide/high16 v2, -0x4030000000000000L    # -0.25

    #@d
    invoke-direct {v0, v2, v3}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    #@10
    .line 165
    sput-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NSWILD:Lorg/apache/xpath/objects/XNumber;

    #@12
    .line 174
    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    #@14
    const-wide/16 v2, 0x0

    #@16
    invoke-direct {v0, v2, v3}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    #@19
    .line 173
    sput-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_QNAME:Lorg/apache/xpath/objects/XNumber;

    #@1b
    .line 182
    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    #@1d
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    #@1f
    invoke-direct {v0, v2, v3}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    #@22
    .line 181
    sput-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    #@24
    .line 189
    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    #@26
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@28
    invoke-direct {v0, v2, v3}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    #@2b
    .line 188
    sput-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@2d
    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 257
    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "whatToShow"    # I

    #@0
    .prologue
    .line 210
    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    #@3
    .line 212
    invoke-virtual {p0, p1}, Lorg/apache/xpath/patterns/NodeTest;->initNodeTest(I)V

    #@6
    .line 210
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "whatToShow"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 199
    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    #@3
    .line 201
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xpath/patterns/NodeTest;->initNodeTest(ILjava/lang/String;Ljava/lang/String;)V

    #@6
    .line 199
    return-void
.end method

.method public static debugWhatToShow(I)V
    .locals 6
    .param p0, "whatToShow"    # I

    #@0
    .prologue
    .line 416
    new-instance v2, Ljava/util/Vector;

    #@2
    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    #@5
    .line 418
    .local v2, "v":Ljava/util/Vector;
    and-int/lit8 v3, p0, 0x2

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 419
    const-string/jumbo v3, "SHOW_ATTRIBUTE"

    #@c
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@f
    .line 421
    :cond_0
    and-int/lit16 v3, p0, 0x1000

    #@11
    if-eqz v3, :cond_1

    #@13
    .line 422
    const-string/jumbo v3, "SHOW_NAMESPACE"

    #@16
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@19
    .line 424
    :cond_1
    and-int/lit8 v3, p0, 0x8

    #@1b
    if-eqz v3, :cond_2

    #@1d
    .line 425
    const-string/jumbo v3, "SHOW_CDATA_SECTION"

    #@20
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@23
    .line 427
    :cond_2
    and-int/lit16 v3, p0, 0x80

    #@25
    if-eqz v3, :cond_3

    #@27
    .line 428
    const-string/jumbo v3, "SHOW_COMMENT"

    #@2a
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@2d
    .line 430
    :cond_3
    and-int/lit16 v3, p0, 0x100

    #@2f
    if-eqz v3, :cond_4

    #@31
    .line 431
    const-string/jumbo v3, "SHOW_DOCUMENT"

    #@34
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@37
    .line 433
    :cond_4
    and-int/lit16 v3, p0, 0x400

    #@39
    if-eqz v3, :cond_5

    #@3b
    .line 434
    const-string/jumbo v3, "SHOW_DOCUMENT_FRAGMENT"

    #@3e
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@41
    .line 436
    :cond_5
    and-int/lit16 v3, p0, 0x200

    #@43
    if-eqz v3, :cond_6

    #@45
    .line 437
    const-string/jumbo v3, "SHOW_DOCUMENT_TYPE"

    #@48
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@4b
    .line 439
    :cond_6
    and-int/lit8 v3, p0, 0x1

    #@4d
    if-eqz v3, :cond_7

    #@4f
    .line 440
    const-string/jumbo v3, "SHOW_ELEMENT"

    #@52
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@55
    .line 442
    :cond_7
    and-int/lit8 v3, p0, 0x20

    #@57
    if-eqz v3, :cond_8

    #@59
    .line 443
    const-string/jumbo v3, "SHOW_ENTITY"

    #@5c
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@5f
    .line 445
    :cond_8
    and-int/lit8 v3, p0, 0x10

    #@61
    if-eqz v3, :cond_9

    #@63
    .line 446
    const-string/jumbo v3, "SHOW_ENTITY_REFERENCE"

    #@66
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@69
    .line 448
    :cond_9
    and-int/lit16 v3, p0, 0x800

    #@6b
    if-eqz v3, :cond_a

    #@6d
    .line 449
    const-string/jumbo v3, "SHOW_NOTATION"

    #@70
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@73
    .line 451
    :cond_a
    and-int/lit8 v3, p0, 0x40

    #@75
    if-eqz v3, :cond_b

    #@77
    .line 452
    const-string/jumbo v3, "SHOW_PROCESSING_INSTRUCTION"

    #@7a
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@7d
    .line 454
    :cond_b
    and-int/lit8 v3, p0, 0x4

    #@7f
    if-eqz v3, :cond_c

    #@81
    .line 455
    const-string/jumbo v3, "SHOW_TEXT"

    #@84
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@87
    .line 457
    :cond_c
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@8a
    move-result v1

    #@8b
    .line 459
    .local v1, "n":I
    const/4 v0, 0x0

    #@8c
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_e

    #@8e
    .line 461
    if-lez v0, :cond_d

    #@90
    .line 462
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@92
    const-string/jumbo v4, " | "

    #@95
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@98
    .line 464
    :cond_d
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@9a
    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@9d
    move-result-object v4

    #@9e
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    #@a1
    .line 459
    add-int/lit8 v0, v0, 0x1

    #@a3
    goto :goto_0

    #@a4
    .line 467
    :cond_e
    if-nez v1, :cond_f

    #@a6
    .line 468
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@a8
    new-instance v4, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    const-string/jumbo v5, "empty whatToShow: "

    #@b0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v4

    #@b4
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v4

    #@b8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v4

    #@bc
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@bf
    .line 470
    :cond_f
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@c1
    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    #@c4
    .line 413
    return-void
.end method

.method public static getNodeTypeTest(I)I
    .locals 2
    .param p0, "whatToShow"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 362
    and-int/lit8 v0, p0, 0x1

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 363
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 365
    :cond_0
    and-int/lit8 v0, p0, 0x2

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 366
    const/4 v0, 0x2

    #@c
    return v0

    #@d
    .line 368
    :cond_1
    and-int/lit8 v0, p0, 0x4

    #@f
    if-eqz v0, :cond_2

    #@11
    .line 369
    const/4 v0, 0x3

    #@12
    return v0

    #@13
    .line 371
    :cond_2
    and-int/lit16 v0, p0, 0x100

    #@15
    if-eqz v0, :cond_3

    #@17
    .line 372
    const/16 v0, 0x9

    #@19
    return v0

    #@1a
    .line 374
    :cond_3
    and-int/lit16 v0, p0, 0x400

    #@1c
    if-eqz v0, :cond_4

    #@1e
    .line 375
    const/16 v0, 0xb

    #@20
    return v0

    #@21
    .line 377
    :cond_4
    and-int/lit16 v0, p0, 0x1000

    #@23
    if-eqz v0, :cond_5

    #@25
    .line 378
    const/16 v0, 0xd

    #@27
    return v0

    #@28
    .line 380
    :cond_5
    and-int/lit16 v0, p0, 0x80

    #@2a
    if-eqz v0, :cond_6

    #@2c
    .line 381
    const/16 v0, 0x8

    #@2e
    return v0

    #@2f
    .line 383
    :cond_6
    and-int/lit8 v0, p0, 0x40

    #@31
    if-eqz v0, :cond_7

    #@33
    .line 384
    const/4 v0, 0x7

    #@34
    return v0

    #@35
    .line 386
    :cond_7
    and-int/lit16 v0, p0, 0x200

    #@37
    if-eqz v0, :cond_8

    #@39
    .line 387
    const/16 v0, 0xa

    #@3b
    return v0

    #@3c
    .line 389
    :cond_8
    and-int/lit8 v0, p0, 0x20

    #@3e
    if-eqz v0, :cond_9

    #@40
    .line 390
    const/4 v0, 0x6

    #@41
    return v0

    #@42
    .line 392
    :cond_9
    and-int/lit8 v0, p0, 0x10

    #@44
    if-eqz v0, :cond_a

    #@46
    .line 393
    const/4 v0, 0x5

    #@47
    return v0

    #@48
    .line 395
    :cond_a
    and-int/lit16 v0, p0, 0x800

    #@4a
    if-eqz v0, :cond_b

    #@4c
    .line 396
    const/16 v0, 0xc

    #@4e
    return v0

    #@4f
    .line 398
    :cond_b
    and-int/lit8 v0, p0, 0x8

    #@51
    if-eqz v0, :cond_c

    #@53
    .line 399
    const/4 v0, 0x4

    #@54
    return v0

    #@55
    .line 402
    :cond_c
    return v1
.end method

.method private static final subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "p"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 488
    if-eq p0, p1, :cond_0

    #@3
    if-eqz p0, :cond_1

    #@5
    const-string/jumbo v1, "*"

    #@8
    if-eq p1, v1, :cond_0

    #@a
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    :cond_0
    :goto_0
    return v0

    #@f
    :cond_1
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method private static final subPartMatchNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "p"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 504
    if-eq p0, p1, :cond_0

    #@4
    .line 505
    if-eqz p0, :cond_2

    #@6
    .line 506
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@9
    move-result v2

    #@a
    if-lez v2, :cond_1

    #@c
    .line 507
    const-string/jumbo v1, "*"

    #@f
    if-eq p1, v1, :cond_0

    #@11
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    .line 504
    :cond_0
    :goto_0
    return v0

    #@16
    .line 507
    :cond_1
    if-eqz p1, :cond_0

    #@18
    move v0, v1

    #@19
    goto :goto_0

    #@1a
    :cond_2
    move v0, v1

    #@1b
    .line 505
    goto :goto_0
.end method


# virtual methods
.method protected calcScore()V
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 324
    iget-object v1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    #@3
    if-nez v1, :cond_1

    #@5
    iget-object v1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    #@7
    if-nez v1, :cond_1

    #@9
    .line 325
    sget-object v1, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NODETEST:Lorg/apache/xpath/objects/XNumber;

    #@b
    iput-object v1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    #@d
    .line 334
    :goto_0
    iget-object v1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    #@f
    if-nez v1, :cond_0

    #@11
    iget-object v1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    #@13
    const-string/jumbo v2, "*"

    #@16
    if-ne v1, v2, :cond_0

    #@18
    const/4 v0, 0x1

    #@19
    :cond_0
    iput-boolean v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_isTotallyWild:Z

    #@1b
    .line 321
    return-void

    #@1c
    .line 326
    :cond_1
    iget-object v1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    #@1e
    const-string/jumbo v2, "*"

    #@21
    if-eq v1, v2, :cond_2

    #@23
    iget-object v1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    #@25
    if-nez v1, :cond_3

    #@27
    .line 327
    :cond_2
    iget-object v1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    #@29
    const-string/jumbo v2, "*"

    #@2c
    if-ne v1, v2, :cond_3

    #@2e
    .line 328
    sget-object v1, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NODETEST:Lorg/apache/xpath/objects/XNumber;

    #@30
    iput-object v1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    #@32
    goto :goto_0

    #@33
    .line 329
    :cond_3
    iget-object v1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    #@35
    const-string/jumbo v2, "*"

    #@38
    if-eq v1, v2, :cond_4

    #@3a
    iget-object v1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    #@3c
    const-string/jumbo v2, "*"

    #@3f
    if-ne v1, v2, :cond_4

    #@41
    .line 330
    sget-object v1, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NSWILD:Lorg/apache/xpath/objects/XNumber;

    #@43
    iput-object v1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    #@45
    goto :goto_0

    #@46
    .line 332
    :cond_4
    sget-object v1, Lorg/apache/xpath/patterns/NodeTest;->SCORE_QNAME:Lorg/apache/xpath/objects/XNumber;

    #@48
    iput-object v1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    #@4a
    goto :goto_0
.end method

.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .locals 2
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    #@0
    .prologue
    .line 689
    const-string/jumbo v0, "callVisitors should not be called for this object!!!"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-virtual {p0, v1, v0}, Lorg/apache/xpath/patterns/NodeTest;->assertion(ZLjava/lang/String;)V

    #@7
    .line 687
    return-void
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 4
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 220
    invoke-virtual {p0, p1}, Lorg/apache/xpath/patterns/NodeTest;->isSameClass(Lorg/apache/xpath/Expression;)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 221
    return v3

    #@8
    :cond_0
    move-object v0, p1

    #@9
    .line 223
    check-cast v0, Lorg/apache/xpath/patterns/NodeTest;

    #@b
    .line 225
    .local v0, "nt":Lorg/apache/xpath/patterns/NodeTest;
    iget-object v1, v0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    #@d
    if-eqz v1, :cond_2

    #@f
    .line 227
    iget-object v1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    #@11
    if-nez v1, :cond_1

    #@13
    .line 228
    return v3

    #@14
    .line 229
    :cond_1
    iget-object v1, v0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    #@16
    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    if-nez v1, :cond_3

    #@1e
    .line 230
    return v3

    #@1f
    .line 232
    :cond_2
    iget-object v1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    #@21
    if-eqz v1, :cond_3

    #@23
    .line 233
    return v3

    #@24
    .line 235
    :cond_3
    iget-object v1, v0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    #@26
    if-eqz v1, :cond_5

    #@28
    .line 237
    iget-object v1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    #@2a
    if-nez v1, :cond_4

    #@2c
    .line 238
    return v3

    #@2d
    .line 239
    :cond_4
    iget-object v1, v0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    #@2f
    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v1

    #@35
    if-nez v1, :cond_6

    #@37
    .line 240
    return v3

    #@38
    .line 242
    :cond_5
    iget-object v1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    #@3a
    if-eqz v1, :cond_6

    #@3c
    .line 243
    return v3

    #@3d
    .line 245
    :cond_6
    iget v1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    #@3f
    iget v2, v0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    #@41
    if-eq v1, v2, :cond_7

    #@43
    .line 246
    return v3

    #@44
    .line 248
    :cond_7
    iget-boolean v1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_isTotallyWild:Z

    #@46
    iget-boolean v2, v0, Lorg/apache/xpath/patterns/NodeTest;->m_isTotallyWild:Z

    #@48
    if-eq v1, v2, :cond_8

    #@4a
    .line 249
    return v3

    #@4b
    .line 251
    :cond_8
    const/4 v1, 0x1

    #@4c
    return v1
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .locals 1
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 673
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/patterns/NodeTest;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;
    .locals 7
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "context"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 529
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@3
    move-result-object v0

    #@4
    .line 530
    .local v0, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-interface {v0, p2}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    #@7
    move-result v2

    #@8
    .line 532
    .local v2, "nodeType":S
    iget v4, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    #@a
    const/4 v5, -0x1

    #@b
    if-ne v4, v5, :cond_0

    #@d
    .line 533
    iget-object v4, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    #@f
    return-object v4

    #@10
    .line 535
    :cond_0
    iget v4, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    #@12
    add-int/lit8 v5, v2, -0x1

    #@14
    const/4 v6, 0x1

    #@15
    shl-int v5, v6, v5

    #@17
    and-int v1, v4, v5

    #@19
    .line 537
    .local v1, "nodeBit":I
    sparse-switch v1, :sswitch_data_0

    #@1c
    .line 580
    sget-object v4, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@1e
    return-object v4

    #@1f
    .line 541
    :sswitch_0
    sget-object v4, Lorg/apache/xpath/patterns/NodeTest;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    #@21
    return-object v4

    #@22
    .line 543
    :sswitch_1
    iget-object v4, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    #@24
    return-object v4

    #@25
    .line 550
    :sswitch_2
    iget-object v4, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    #@27
    return-object v4

    #@28
    .line 552
    :sswitch_3
    invoke-interface {v0, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    iget-object v5, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    #@2e
    invoke-static {v4, v5}, Lorg/apache/xpath/patterns/NodeTest;->subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z

    #@31
    move-result v4

    #@32
    if-eqz v4, :cond_1

    #@34
    .line 553
    iget-object v4, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    #@36
    .line 552
    :goto_0
    return-object v4

    #@37
    .line 553
    :cond_1
    sget-object v4, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@39
    goto :goto_0

    #@3a
    .line 569
    :sswitch_4
    invoke-interface {v0, p2}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    .line 571
    .local v3, "ns":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    #@40
    invoke-static {v3, v4}, Lorg/apache/xpath/patterns/NodeTest;->subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z

    #@43
    move-result v4

    #@44
    if-eqz v4, :cond_2

    #@46
    iget-object v4, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    #@48
    :goto_1
    return-object v4

    #@49
    :cond_2
    sget-object v4, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@4b
    goto :goto_1

    #@4c
    .line 576
    .end local v3    # "ns":Ljava/lang/String;
    :sswitch_5
    iget-boolean v4, p0, Lorg/apache/xpath/patterns/NodeTest;->m_isTotallyWild:Z

    #@4e
    if-nez v4, :cond_3

    #@50
    invoke-interface {v0, p2}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    #@53
    move-result-object v4

    #@54
    iget-object v5, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    #@56
    invoke-static {v4, v5}, Lorg/apache/xpath/patterns/NodeTest;->subPartMatchNS(Ljava/lang/String;Ljava/lang/String;)Z

    #@59
    move-result v4

    #@5a
    if-eqz v4, :cond_4

    #@5c
    invoke-interface {v0, p2}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    #@5f
    move-result-object v4

    #@60
    iget-object v5, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    #@62
    invoke-static {v4, v5}, Lorg/apache/xpath/patterns/NodeTest;->subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z

    #@65
    move-result v4

    #@66
    if-eqz v4, :cond_4

    #@68
    .line 577
    :cond_3
    iget-object v4, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    #@6a
    .line 576
    :goto_2
    return-object v4

    #@6b
    .line 577
    :cond_4
    sget-object v4, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@6d
    goto :goto_2

    #@6e
    .line 537
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x4 -> :sswitch_2
        0x8 -> :sswitch_2
        0x40 -> :sswitch_3
        0x80 -> :sswitch_1
        0x100 -> :sswitch_0
        0x400 -> :sswitch_0
        0x1000 -> :sswitch_4
    .end sparse-switch
.end method

.method public execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;
    .locals 5
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "context"    # I
    .param p3, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .param p4, "expType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 604
    iget v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    #@2
    const/4 v3, -0x1

    #@3
    if-ne v2, v3, :cond_0

    #@5
    .line 605
    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    #@7
    return-object v2

    #@8
    .line 607
    :cond_0
    iget v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    #@a
    .line 608
    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    #@d
    move-result v3

    #@e
    add-int/lit8 v3, v3, -0x1

    #@10
    .line 607
    const/4 v4, 0x1

    #@11
    shl-int v3, v4, v3

    #@13
    and-int v0, v2, v3

    #@15
    .line 610
    .local v0, "nodeBit":I
    sparse-switch v0, :sswitch_data_0

    #@18
    .line 653
    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@1a
    return-object v2

    #@1b
    .line 614
    :sswitch_0
    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    #@1d
    return-object v2

    #@1e
    .line 616
    :sswitch_1
    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    #@20
    return-object v2

    #@21
    .line 623
    :sswitch_2
    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    #@23
    return-object v2

    #@24
    .line 625
    :sswitch_3
    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    iget-object v3, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    #@2a
    invoke-static {v2, v3}, Lorg/apache/xpath/patterns/NodeTest;->subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_1

    #@30
    .line 626
    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    #@32
    .line 625
    :goto_0
    return-object v2

    #@33
    .line 626
    :cond_1
    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@35
    goto :goto_0

    #@36
    .line 642
    :sswitch_4
    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    .line 644
    .local v1, "ns":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    #@3c
    invoke-static {v1, v2}, Lorg/apache/xpath/patterns/NodeTest;->subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z

    #@3f
    move-result v2

    #@40
    if-eqz v2, :cond_2

    #@42
    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    #@44
    :goto_1
    return-object v2

    #@45
    :cond_2
    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@47
    goto :goto_1

    #@48
    .line 649
    .end local v1    # "ns":Ljava/lang/String;
    :sswitch_5
    iget-boolean v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_isTotallyWild:Z

    #@4a
    if-nez v2, :cond_3

    #@4c
    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    iget-object v3, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    #@52
    invoke-static {v2, v3}, Lorg/apache/xpath/patterns/NodeTest;->subPartMatchNS(Ljava/lang/String;Ljava/lang/String;)Z

    #@55
    move-result v2

    #@56
    if-eqz v2, :cond_4

    #@58
    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    iget-object v3, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    #@5e
    invoke-static {v2, v3}, Lorg/apache/xpath/patterns/NodeTest;->subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z

    #@61
    move-result v2

    #@62
    if-eqz v2, :cond_4

    #@64
    .line 650
    :cond_3
    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    #@66
    .line 649
    :goto_2
    return-object v2

    #@67
    .line 650
    :cond_4
    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@69
    goto :goto_2

    #@6a
    .line 610
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x4 -> :sswitch_2
        0x8 -> :sswitch_2
        0x40 -> :sswitch_3
        0x80 -> :sswitch_1
        0x100 -> :sswitch_0
        0x400 -> :sswitch_0
        0x1000 -> :sswitch_4
    .end sparse-switch
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 0
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    #@0
    .prologue
    .line 679
    return-void
.end method

.method public getDefaultScore()D
    .locals 2

    #@0
    .prologue
    .line 345
    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    #@2
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNumber;->num()D

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    const-string/jumbo v0, ""

    #@7
    :goto_0
    return-object v0

    #@8
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    #@a
    goto :goto_0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getStaticScore()Lorg/apache/xpath/objects/XNumber;
    .locals 1

    #@0
    .prologue
    .line 306
    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    #@2
    return-object v0
.end method

.method public getWhatToShow()I
    .locals 1

    #@0
    .prologue
    .line 76
    iget v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    #@2
    return v0
.end method

.method public initNodeTest(I)V
    .locals 0
    .param p1, "whatToShow"    # I

    #@0
    .prologue
    .line 269
    iput p1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    #@2
    .line 271
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/NodeTest;->calcScore()V

    #@5
    .line 266
    return-void
.end method

.method public initNodeTest(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "whatToShow"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 287
    iput p1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    #@2
    .line 288
    iput-object p2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    #@4
    .line 289
    iput-object p3, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    #@6
    .line 291
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/NodeTest;->calcScore()V

    #@9
    .line 284
    return-void
.end method

.method public setLocalName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 140
    iput-object p1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    #@2
    .line 138
    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 0
    .param p1, "ns"    # Ljava/lang/String;

    #@0
    .prologue
    .line 114
    iput-object p1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    #@2
    .line 112
    return-void
.end method

.method public setStaticScore(Lorg/apache/xpath/objects/XNumber;)V
    .locals 0
    .param p1, "score"    # Lorg/apache/xpath/objects/XNumber;

    #@0
    .prologue
    .line 315
    iput-object p1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    #@2
    .line 313
    return-void
.end method

.method public setWhatToShow(I)V
    .locals 0
    .param p1, "what"    # I

    #@0
    .prologue
    .line 88
    iput p1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    #@2
    .line 86
    return-void
.end method
