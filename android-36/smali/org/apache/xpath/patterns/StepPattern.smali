.class public Lorg/apache/xpath/patterns/StepPattern;
.super Lorg/apache/xpath/patterns/NodeTest;
.source "StepPattern.java"

# interfaces
.implements Lorg/apache/xpath/axes/SubContextList;
.implements Lorg/apache/xpath/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/patterns/StepPattern$PredOwner;
    }
.end annotation


# static fields
.field private static final greylist DEBUG_MATCHES:Z = false

.field static final whitelist serialVersionUID:J = 0x7de50adb02c28e44L


# instance fields
.field protected greylist m_axis:I

.field greylist m_predicates:[Lorg/apache/xpath/Expression;

.field greylist m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

.field greylist m_targetString:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>(III)V
    .registers 4

    .line 76
    invoke-direct {p0, p1}, Lorg/apache/xpath/patterns/NodeTest;-><init>(I)V

    .line 78
    iput p2, p0, Lorg/apache/xpath/patterns/StepPattern;->m_axis:I

    return-void
.end method

.method public constructor greylist <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .registers 6

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xpath/patterns/NodeTest;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    iput p4, p0, Lorg/apache/xpath/patterns/StepPattern;->m_axis:I

    return-void
.end method

.method private final greylist checkProximityPosition(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;II)Z
    .registers 13

    const/16 v0, 0xc

    .line 435
    :try_start_2
    invoke-interface {p3, v0}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object p3

    .line 437
    invoke-virtual {p3, p4}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    move-result v0
    :try_end_a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_a} :catch_83

    :goto_a
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v0, :cond_7f

    .line 442
    :try_start_f
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 444
    sget-object v1, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    invoke-super {p0, p1, v0}, Lorg/apache/xpath/patterns/NodeTest;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v4
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_6d

    if-eq v1, v4, :cond_73

    .line 450
    :try_start_1a
    invoke-virtual {p1, p0}, Lorg/apache/xpath/XPathContext;->pushSubContextList(Lorg/apache/xpath/axes/SubContextList;)V

    move v1, v2

    :goto_1e
    if-ge v1, p2, :cond_5f

    .line 454
    invoke-virtual {p1, v1}, Lorg/apache/xpath/XPathContext;->pushPredicatePos(I)V
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_40

    .line 457
    :try_start_23
    iget-object v4, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v4, v4, v1

    invoke-virtual {v4, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v4
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_42

    .line 461
    :try_start_2b
    invoke-virtual {v4}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v6, v5, :cond_4f

    .line 465
    invoke-virtual {v4}, Lorg/apache/xpath/objects/XObject;->boolWithSideEffects()Z

    move-result v5
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_4d

    if-nez v5, :cond_44

    .line 474
    :try_start_38
    invoke-virtual {v4}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_42

    .line 479
    :try_start_3b
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_40

    move v1, v2

    goto :goto_60

    :catchall_40
    move-exception p0

    goto :goto_6f

    :catchall_42
    move-exception p0

    goto :goto_5b

    .line 474
    :cond_44
    :try_start_44
    invoke-virtual {v4}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_42

    .line 479
    :try_start_47
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_40

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :catchall_4d
    move-exception p0

    goto :goto_57

    .line 463
    :cond_4f
    :try_start_4f
    new-instance p0, Ljava/lang/Error;

    const-string p2, "Why: Should never have been called"

    invoke-direct {p0, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_4d

    .line 474
    :goto_57
    :try_start_57
    invoke-virtual {v4}, Lorg/apache/xpath/objects/XObject;->detach()V

    .line 475
    throw p0
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_42

    .line 479
    :goto_5b
    :try_start_5b
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V

    .line 480
    throw p0
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_40

    :cond_5f
    move v1, v3

    .line 485
    :goto_60
    :try_start_60
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popSubContextList()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_6d

    if-eqz v1, :cond_67

    add-int/lit8 p5, p5, -0x1

    :cond_67
    if-ge p5, v3, :cond_73

    .line 497
    :try_start_69
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V
    :try_end_6c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_69 .. :try_end_6c} :catch_83

    return v2

    :catchall_6d
    move-exception p0

    goto :goto_7b

    .line 485
    :goto_6f
    :try_start_6f
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    .line 486
    throw p0
    :try_end_73
    .catchall {:try_start_6f .. :try_end_73} :catchall_6d

    .line 497
    :cond_73
    :try_start_73
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 438
    invoke-virtual {p3, p4, v0}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    move-result v0

    goto :goto_a

    .line 497
    :goto_7b
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 498
    throw p0
    :try_end_7f
    .catch Ljavax/xml/transform/TransformerException; {:try_start_73 .. :try_end_7f} :catch_83

    :cond_7f
    if-ne p5, v3, :cond_82

    return v3

    :cond_82
    return v2

    :catch_83
    move-exception p0

    .line 505
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final greylist getProximityPosition(Lorg/apache/xpath/XPathContext;IZ)I
    .registers 15

    .line 528
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    .line 529
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    .line 530
    invoke-interface {v1, v0}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result v2

    const/4 v3, 0x3

    .line 534
    :try_start_d
    invoke-interface {v1, v3}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object v1

    .line 536
    invoke-virtual {v1, v2}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    move-result v3
    :try_end_15
    .catch Ljavax/xml/transform/TransformerException; {:try_start_d .. :try_end_15} :catch_92

    const/4 v4, 0x0

    move v5, v4

    :goto_17
    const/4 v6, -0x1

    if-eq v6, v3, :cond_91

    .line 541
    :try_start_1a
    invoke-virtual {p1, v3}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 543
    sget-object v6, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    invoke-super {p0, p1, v3}, Lorg/apache/xpath/patterns/NodeTest;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v7
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_7f

    if-eq v6, v7, :cond_85

    .line 549
    :try_start_25
    invoke-virtual {p1, p0}, Lorg/apache/xpath/XPathContext;->pushSubContextList(Lorg/apache/xpath/axes/SubContextList;)V

    move v6, v4

    :goto_29
    if-ge v6, p2, :cond_6f

    .line 553
    invoke-virtual {p1, v6}, Lorg/apache/xpath/XPathContext;->pushPredicatePos(I)V
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_4e

    .line 556
    :try_start_2e
    iget-object v7, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v7, v7, v6

    invoke-virtual {v7, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v7
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_50

    .line 560
    :try_start_36
    invoke-virtual {v7}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v9, v8, :cond_54

    add-int/lit8 v8, v5, 0x1

    .line 562
    invoke-virtual {v7}, Lorg/apache/xpath/objects/XObject;->numWithSideEffects()D

    move-result-wide v9
    :try_end_43
    .catchall {:try_start_36 .. :try_end_43} :catchall_52

    double-to-int v9, v9

    if-eq v8, v9, :cond_5e

    .line 578
    :try_start_46
    invoke-virtual {v7}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_50

    .line 583
    :goto_49
    :try_start_49
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4e

    move v6, v4

    goto :goto_70

    :catchall_4e
    move-exception p0

    goto :goto_81

    :catchall_50
    move-exception p0

    goto :goto_6b

    :catchall_52
    move-exception p0

    goto :goto_67

    .line 569
    :cond_54
    :try_start_54
    invoke-virtual {v7}, Lorg/apache/xpath/objects/XObject;->boolWithSideEffects()Z

    move-result v8
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_52

    if-nez v8, :cond_5e

    .line 578
    :try_start_5a
    invoke-virtual {v7}, Lorg/apache/xpath/objects/XObject;->detach()V

    goto :goto_49

    :cond_5e
    invoke-virtual {v7}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_61
    .catchall {:try_start_5a .. :try_end_61} :catchall_50

    .line 583
    :try_start_61
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_4e

    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    .line 578
    :goto_67
    :try_start_67
    invoke-virtual {v7}, Lorg/apache/xpath/objects/XObject;->detach()V

    .line 579
    throw p0
    :try_end_6b
    .catchall {:try_start_67 .. :try_end_6b} :catchall_50

    .line 583
    :goto_6b
    :try_start_6b
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V

    .line 584
    throw p0
    :try_end_6f
    .catchall {:try_start_6b .. :try_end_6f} :catchall_4e

    :cond_6f
    const/4 v6, 0x1

    .line 589
    :goto_70
    :try_start_70
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popSubContextList()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_7f

    if-eqz v6, :cond_77

    add-int/lit8 v5, v5, 0x1

    :cond_77
    if-nez p3, :cond_85

    if-ne v3, v0, :cond_85

    .line 603
    :try_start_7b
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V
    :try_end_7e
    .catch Ljavax/xml/transform/TransformerException; {:try_start_7b .. :try_end_7e} :catch_92

    return v5

    :catchall_7f
    move-exception p0

    goto :goto_8d

    .line 589
    :goto_81
    :try_start_81
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    .line 590
    throw p0
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_7f

    .line 603
    :cond_85
    :try_start_85
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 537
    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    move-result v3

    goto :goto_17

    .line 603
    :goto_8d
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 604
    throw p0
    :try_end_91
    .catch Ljavax/xml/transform/TransformerException; {:try_start_85 .. :try_end_91} :catch_92

    :cond_91
    return v5

    :catch_92
    move-exception p0

    .line 611
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public greylist calcScore()V
    .registers 2

    .line 304
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->getPredicateCount()I

    move-result v0

    if-gtz v0, :cond_f

    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v0, :cond_b

    goto :goto_f

    .line 309
    :cond_b
    invoke-super {p0}, Lorg/apache/xpath/patterns/NodeTest;->calcScore()V

    goto :goto_13

    .line 306
    :cond_f
    :goto_f
    sget-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    iput-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    .line 311
    :goto_13
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    if-nez v0, :cond_1a

    .line 312
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->calcTargetString()V

    :cond_1a
    return-void
.end method

.method public greylist calcTargetString()V
    .registers 4

    .line 96
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/NodeTest;->getWhatToShow()I

    move-result v0

    const/4 v1, -0x1

    .line 98
    const-string v2, "*"

    if-eq v0, v1, :cond_3f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_35

    const/4 v1, 0x4

    if-eq v0, v1, :cond_30

    const/16 v1, 0x8

    if-eq v0, v1, :cond_30

    const/16 v1, 0xc

    if-eq v0, v1, :cond_30

    const/16 v1, 0x80

    if-eq v0, v1, :cond_2b

    const/16 v1, 0x100

    if-eq v0, v1, :cond_26

    const/16 v1, 0x500

    if-eq v0, v1, :cond_26

    .line 122
    iput-object v2, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    return-void

    .line 113
    :cond_26
    const-string v0, "/"

    iput-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    return-void

    .line 101
    :cond_2b
    const-string v0, "#comment"

    iput-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    return-void

    .line 106
    :cond_30
    const-string v0, "#text"

    iput-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    return-void

    .line 116
    :cond_35
    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    if-ne v2, v0, :cond_3c

    .line 117
    iput-object v2, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    return-void

    .line 119
    :cond_3c
    iput-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    return-void

    .line 109
    :cond_3f
    iput-object v2, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    return-void
.end method

.method protected greylist callSubtreeVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .registers 6

    .line 981
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_21

    .line 983
    array-length v0, v0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_21

    .line 986
    new-instance v2, Lorg/apache/xpath/patterns/StepPattern$PredOwner;

    invoke-direct {v2, p0, v1}, Lorg/apache/xpath/patterns/StepPattern$PredOwner;-><init>(Lorg/apache/xpath/patterns/StepPattern;I)V

    .line 987
    iget-object v3, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v3, v3, v1

    invoke-virtual {p1, v2, v3}, Lorg/apache/xpath/XPathVisitor;->visitPredicate(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/Expression;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 989
    iget-object v3, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v3, v3, v1

    invoke-interface {v3, v2, p1}, Lorg/apache/xpath/XPathVisitable;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 993
    :cond_21
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v0, :cond_28

    .line 995
    invoke-virtual {v0, p0, p1}, Lorg/apache/xpath/patterns/StepPattern;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    :cond_28
    return-void
.end method

.method public greylist callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .registers 3

    .line 969
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitMatchPattern(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/patterns/StepPattern;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 971
    invoke-virtual {p0, p2}, Lorg/apache/xpath/patterns/StepPattern;->callSubtreeVisitors(Lorg/apache/xpath/XPathVisitor;)V

    :cond_9
    return-void
.end method

.method public greylist canTraverseOutsideSubtree()Z
    .registers 5

    .line 241
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->getPredicateCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_17

    .line 245
    invoke-virtual {p0, v2}, Lorg/apache/xpath/patterns/StepPattern;->getPredicate(I)Lorg/apache/xpath/Expression;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xpath/Expression;->canTraverseOutsideSubtree()Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_17
    return v1
.end method

.method public greylist deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 7

    .line 1022
    invoke-super {p0, p1}, Lorg/apache/xpath/patterns/NodeTest;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1025
    :cond_8
    check-cast p1, Lorg/apache/xpath/patterns/StepPattern;

    .line 1027
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_2d

    .line 1029
    array-length v0, v0

    .line 1030
    iget-object v2, p1, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz v2, :cond_2c

    array-length v2, v2

    if-eq v2, v0, :cond_17

    goto :goto_2c

    :cond_17
    move v2, v1

    :goto_18
    if-ge v2, v0, :cond_32

    .line 1034
    iget-object v3, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v3, v3, v2

    iget-object v4, p1, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v3

    if-nez v3, :cond_29

    return v1

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2c
    :goto_2c
    return v1

    .line 1038
    :cond_2d
    iget-object v0, p1, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_32

    return v1

    .line 1041
    :cond_32
    iget-object p0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    if-eqz p0, :cond_3f

    .line 1043
    iget-object p1, p1, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/patterns/StepPattern;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result p0

    if-nez p0, :cond_44

    return v1

    .line 1046
    :cond_3f
    iget-object p0, p1, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    if-eqz p0, :cond_44

    return v1

    :cond_44
    const/4 p0, 0x1

    return p0
.end method

.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 363
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    return-object p0
.end method

.method public greylist execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 334
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 338
    invoke-interface {v0, p2}, Lorg/apache/xml/dtm/DTM;->getExpandedTypeID(I)I

    move-result v1

    .line 340
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    return-object p0

    .line 343
    :cond_f
    sget-object p0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    return-object p0
.end method

.method public greylist execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 386
    iget v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_12

    .line 388
    iget-object p0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    if-eqz p0, :cond_f

    .line 390
    invoke-virtual {p0, p1}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    return-object p0

    .line 393
    :cond_f
    sget-object p0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    return-object p0

    .line 398
    :cond_12
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xpath/patterns/NodeTest;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;

    move-result-object p4

    .line 400
    sget-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    if-ne p4, v0, :cond_1b

    goto :goto_27

    .line 403
    :cond_1b
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->getPredicateCount()I

    move-result v1

    if-eqz v1, :cond_28

    .line 405
    invoke-virtual {p0, p1, p3, p2}, Lorg/apache/xpath/patterns/StepPattern;->executePredicates(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/dtm/DTM;I)Z

    move-result v1

    if-nez v1, :cond_28

    :goto_27
    return-object v0

    .line 409
    :cond_28
    iget-object p0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    if-eqz p0, :cond_31

    .line 410
    invoke-virtual {p0, p1, p3, p2}, Lorg/apache/xpath/patterns/StepPattern;->executeRelativePathPattern(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    return-object p0

    :cond_31
    return-object p4
.end method

.method protected final greylist executePredicates(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/dtm/DTM;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 715
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->getPredicateCount()I

    move-result v0

    .line 719
    :try_start_4
    invoke-virtual {p1, p0}, Lorg/apache/xpath/XPathContext;->pushSubContextList(Lorg/apache/xpath/axes/SubContextList;)V

    const/4 v1, 0x0

    move v2, v1

    move v4, v2

    :goto_a
    const/4 v8, 0x1

    if-ge v4, v0, :cond_84

    .line 723
    invoke-virtual {p1, v4}, Lorg/apache/xpath/XPathContext;->pushPredicatePos(I)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_81

    .line 727
    :try_start_10
    iget-object v3, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v9
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_7a

    .line 731
    :try_start_18
    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v3

    const/4 v5, 0x2

    if-ne v5, v3, :cond_5b

    .line 733
    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v5
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_58

    double-to-int v7, v5

    if-eqz v2, :cond_3b

    if-ne v7, v8, :cond_29

    move v1, v8

    .line 763
    :cond_29
    :try_start_29
    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_37

    .line 768
    :try_start_2c
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_32

    move-object v3, p1

    goto/16 :goto_86

    :catchall_32
    move-exception v0

    move-object p0, v0

    move-object v3, p1

    goto/16 :goto_8a

    :catchall_37
    move-exception v0

    move-object p0, v0

    move-object v3, p1

    goto :goto_7d

    :cond_3b
    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    .line 745
    :try_start_3f
    invoke-direct/range {v2 .. v7}, Lorg/apache/xpath/patterns/StepPattern;->checkProximityPosition(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;II)Z

    move-result p0
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_55

    move-object p1, v2

    if-nez p0, :cond_53

    .line 763
    :try_start_46
    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_50

    .line 768
    :goto_49
    :try_start_49
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_86

    :catchall_4d
    move-exception v0

    :goto_4e
    move-object p0, v0

    goto :goto_8a

    :catchall_50
    move-exception v0

    :goto_51
    move-object p0, v0

    goto :goto_7d

    :cond_53
    move v2, v8

    goto :goto_69

    :catchall_55
    move-exception v0

    :goto_56
    move-object p0, v0

    goto :goto_76

    :catchall_58
    move-exception v0

    move-object v3, p1

    goto :goto_56

    :cond_5b
    move-object v3, p1

    move-object v5, p2

    move v6, p3

    move-object p1, p0

    .line 754
    :try_start_5f
    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->boolWithSideEffects()Z

    move-result p0
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_55

    if-nez p0, :cond_69

    .line 763
    :try_start_65
    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->detach()V

    goto :goto_49

    :cond_69
    :goto_69
    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_6c
    .catchall {:try_start_65 .. :try_end_6c} :catchall_50

    .line 768
    :try_start_6c
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_4d

    add-int/lit8 v4, v4, 0x1

    move-object p0, p1

    move-object p1, v3

    move-object p2, v5

    move p3, v6

    goto :goto_a

    .line 763
    :goto_76
    :try_start_76
    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->detach()V

    .line 764
    throw p0
    :try_end_7a
    .catchall {:try_start_76 .. :try_end_7a} :catchall_50

    :catchall_7a
    move-exception v0

    move-object v3, p1

    goto :goto_51

    .line 768
    :goto_7d
    :try_start_7d
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V

    .line 769
    throw p0
    :try_end_81
    .catchall {:try_start_7d .. :try_end_81} :catchall_4d

    :catchall_81
    move-exception v0

    move-object v3, p1

    goto :goto_4e

    :cond_84
    move-object v3, p1

    move v1, v8

    .line 774
    :goto_86
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    return v1

    :goto_8a
    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    .line 775
    throw p0
.end method

.method protected final greylist executeRelativePathPattern(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 669
    sget-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    .line 673
    iget v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_axis:I

    invoke-interface {p2, v1}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object p2

    .line 675
    invoke-virtual {p2, p3}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    move-result v1

    :goto_c
    const/4 v2, -0x1

    if-eq v2, v1, :cond_2b

    .line 680
    :try_start_f
    invoke-virtual {p1, v1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 682
    invoke-virtual {p0, p1}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .line 684
    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_26

    if-eq v0, v2, :cond_1e

    .line 689
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    return-object v0

    :cond_1e
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 676
    invoke-virtual {p2, p3, v1}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    move-result v1

    goto :goto_c

    :catchall_26
    move-exception p0

    .line 689
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 690
    throw p0

    :cond_2b
    return-object v0
.end method

.method public greylist fixupVariables(Ljava/util/Vector;I)V
    .registers 6

    .line 161
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/patterns/NodeTest;->fixupVariables(Ljava/util/Vector;I)V

    .line 163
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    .line 165
    :goto_8
    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    array-length v2, v1

    if-ge v0, v2, :cond_15

    .line 167
    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 171
    :cond_15
    iget-object p0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    if-eqz p0, :cond_1c

    .line 173
    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/patterns/StepPattern;->fixupVariables(Ljava/util/Vector;I)V

    :cond_1c
    return-void
.end method

.method public greylist getAxis()I
    .registers 1

    .line 933
    iget p0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_axis:I

    return p0
.end method

.method public greylist getExpression()Lorg/apache/xpath/Expression;
    .registers 1

    .line 1005
    iget-object p0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    return-object p0
.end method

.method public greylist getLastPos(Lorg/apache/xpath/XPathContext;)I
    .registers 4

    .line 645
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getPredicatePos()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/xpath/patterns/StepPattern;->getProximityPosition(Lorg/apache/xpath/XPathContext;IZ)I

    move-result p0

    return p0
.end method

.method public greylist getMatchScore(Lorg/apache/xpath/XPathContext;I)D
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 896
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 897
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentExpressionNode(I)V

    .line 901
    :try_start_6
    invoke-virtual {p0, p1}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    .line 903
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_15

    .line 907
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 908
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    return-wide v0

    :catchall_15
    move-exception p0

    .line 907
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 908
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    .line 909
    throw p0
.end method

.method public greylist getPredicate(I)Lorg/apache/xpath/Expression;
    .registers 2

    .line 262
    iget-object p0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final greylist getPredicateCount()I
    .registers 1

    .line 273
    iget-object p0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    array-length p0, p0

    return p0
.end method

.method public greylist getPredicates()[Lorg/apache/xpath/Expression;
    .registers 1

    .line 220
    iget-object p0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    return-object p0
.end method

.method public greylist getProximityPosition(Lorg/apache/xpath/XPathContext;)I
    .registers 4

    .line 629
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getPredicatePos()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/xpath/patterns/StepPattern;->getProximityPosition(Lorg/apache/xpath/XPathContext;IZ)I

    move-result p0

    return p0
.end method

.method public greylist getRelativePathPattern()Lorg/apache/xpath/patterns/StepPattern;
    .registers 1

    .line 202
    iget-object p0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    return-object p0
.end method

.method public greylist getTargetString()Ljava/lang/String;
    .registers 1

    .line 137
    iget-object p0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    return-object p0
.end method

.method public greylist setAxis(I)V
    .registers 2

    .line 922
    iput p1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_axis:I

    return-void
.end method

.method public greylist setExpression(Lorg/apache/xpath/Expression;)V
    .registers 2

    .line 1013
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 1014
    check-cast p1, Lorg/apache/xpath/patterns/StepPattern;

    iput-object p1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    return-void
.end method

.method public greylist setPredicates([Lorg/apache/xpath/Expression;)V
    .registers 4

    .line 286
    iput-object p1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz p1, :cond_10

    const/4 v0, 0x0

    .line 289
    :goto_5
    array-length v1, p1

    if-ge v0, v1, :cond_10

    .line 291
    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 295
    :cond_10
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->calcScore()V

    return-void
.end method

.method public greylist setRelativePathPattern(Lorg/apache/xpath/patterns/StepPattern;)V
    .registers 2

    .line 187
    iput-object p1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    .line 188
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 190
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->calcScore()V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 790
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, p0

    :goto_6
    if-eqz v1, :cond_da

    if-eq v1, p0, :cond_f

    .line 795
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 797
    :cond_f
    iget v2, v1, Lorg/apache/xpath/patterns/StepPattern;->m_axis:I

    invoke-static {v2}, Lorg/apache/xml/dtm/Axis;->getNames(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 798
    const-string v2, "::"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 800
    iget v2, v1, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    const/16 v3, 0x5000

    if-ne v3, v2, :cond_2a

    .line 802
    const-string v2, "doc()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_b8

    :cond_2a
    const/high16 v3, 0x10000

    if-ne v3, v2, :cond_35

    .line 806
    const-string v2, "function()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_b8

    :cond_35
    const/4 v3, -0x1

    if-ne v3, v2, :cond_3f

    .line 810
    const-string v2, "node()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_b8

    :cond_3f
    const/4 v3, 0x4

    if-ne v3, v2, :cond_49

    .line 814
    const-string v2, "text()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_b8

    :cond_49
    const/16 v3, 0x40

    if-ne v3, v2, :cond_5f

    .line 818
    const-string v2, "processing-instruction("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 820
    iget-object v2, v1, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    if-eqz v2, :cond_59

    .line 822
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 825
    :cond_59
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b8

    :cond_5f
    const/16 v3, 0x80

    if-ne v3, v2, :cond_69

    .line 829
    const-string v2, "comment()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b8

    .line 831
    :cond_69
    iget-object v3, v1, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    const-string v4, "@"

    const/4 v5, 0x2

    if-eqz v3, :cond_8e

    if-ne v5, v2, :cond_75

    .line 835
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 838
    :cond_75
    iget-object v2, v1, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    if-eqz v2, :cond_88

    .line 840
    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 841
    iget-object v2, v1, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 842
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 845
    :cond_88
    iget-object v2, v1, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b8

    :cond_8e
    if-ne v5, v2, :cond_94

    .line 849
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b8

    :cond_94
    const/16 v3, 0x500

    if-ne v3, v2, :cond_9e

    .line 854
    const-string v2, "doc-root()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b8

    .line 858
    :cond_9e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 861
    :goto_b8
    iget-object v2, v1, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz v2, :cond_d6

    const/4 v2, 0x0

    .line 863
    :goto_bd
    iget-object v3, v1, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    array-length v3, v3

    if-ge v2, v3, :cond_d6

    .line 865
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 866
    iget-object v3, v1, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 867
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_bd

    .line 792
    :cond_d6
    iget-object v1, v1, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    goto/16 :goto_6

    .line 872
    :cond_da
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
