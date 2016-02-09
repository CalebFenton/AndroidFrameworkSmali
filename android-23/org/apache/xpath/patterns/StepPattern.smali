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
.field private static final DEBUG_MATCHES:Z = false

.field static final serialVersionUID:J = 0x7de50adb02c28e44L


# instance fields
.field protected m_axis:I

.field m_predicates:[Lorg/apache/xpath/Expression;

.field m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

.field m_targetString:Ljava/lang/String;


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "whatToShow"    # I
    .param p2, "axis"    # I
    .param p3, "axisForPredicate"    # I

    #@0
    .prologue
    .line 76
    invoke-direct {p0, p1}, Lorg/apache/xpath/patterns/NodeTest;-><init>(I)V

    #@3
    .line 78
    iput p2, p0, Lorg/apache/xpath/patterns/StepPattern;->m_axis:I

    #@5
    .line 73
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "whatToShow"    # I
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "axis"    # I
    .param p5, "axisForPredicate"    # I

    #@0
    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xpath/patterns/NodeTest;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@3
    .line 62
    iput p4, p0, Lorg/apache/xpath/patterns/StepPattern;->m_axis:I

    #@5
    .line 57
    return-void
.end method

.method private final checkProximityPosition(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;II)Z
    .locals 10
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "predPos"    # I
    .param p3, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .param p4, "context"    # I
    .param p5, "pos"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 435
    const/16 v8, 0xc

    #@4
    :try_start_0
    invoke-interface {p3, v8}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@7
    move-result-object v5

    #@8
    .line 437
    .local v5, "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-virtual {v5, p4}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v0

    #@c
    .local v0, "child":I
    :goto_0
    const/4 v8, -0x1

    #@d
    if-eq v8, v0, :cond_5

    #@f
    .line 442
    :try_start_1
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    #@12
    .line 444
    sget-object v8, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@14
    invoke-super {p0, p1, v0}, Lorg/apache/xpath/patterns/NodeTest;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    #@17
    move-result-object v9

    #@18
    if-eq v8, v9, :cond_4

    #@1a
    .line 446
    const/4 v2, 0x1

    #@1b
    .line 450
    .local v2, "pass":Z
    :try_start_2
    invoke-virtual {p1, p0}, Lorg/apache/xpath/XPathContext;->pushSubContextList(Lorg/apache/xpath/axes/SubContextList;)V

    #@1e
    .line 452
    const/4 v1, 0x0

    #@1f
    .local v1, "i":I
    :goto_1
    if-ge v1, p2, :cond_1

    #@21
    .line 454
    invoke-virtual {p1, v1}, Lorg/apache/xpath/XPathContext;->pushPredicatePos(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@24
    .line 457
    :try_start_3
    iget-object v8, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    #@26
    aget-object v8, v8, v1

    #@28
    invoke-virtual {v8, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@2b
    move-result-object v3

    #@2c
    .line 461
    .local v3, "pred":Lorg/apache/xpath/objects/XObject;
    :try_start_4
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@2f
    move-result v8

    #@30
    const/4 v9, 0x2

    #@31
    if-ne v9, v8, :cond_0

    #@33
    .line 463
    new-instance v6, Ljava/lang/Error;

    #@35
    const-string/jumbo v7, "Why: Should never have been called"

    #@38
    invoke-direct {v6, v7}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@3b
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@3c
    .line 473
    :catchall_0
    move-exception v6

    #@3d
    .line 474
    :try_start_5
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->detach()V

    #@40
    .line 473
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@41
    .line 478
    .end local v3    # "pred":Lorg/apache/xpath/objects/XObject;
    :catchall_1
    move-exception v6

    #@42
    .line 479
    :try_start_6
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V

    #@45
    .line 478
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@46
    .line 484
    .end local v1    # "i":I
    :catchall_2
    move-exception v6

    #@47
    .line 485
    :try_start_7
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    #@4a
    .line 484
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    #@4b
    .line 496
    .end local v2    # "pass":Z
    :catchall_3
    move-exception v6

    #@4c
    .line 497
    :try_start_8
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@4f
    .line 496
    throw v6
    :try_end_8
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_8} :catch_0

    #@50
    .line 502
    .end local v0    # "child":I
    .end local v5    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :catch_0
    move-exception v4

    #@51
    .line 505
    .local v4, "se":Ljavax/xml/transform/TransformerException;
    new-instance v6, Ljava/lang/RuntimeException;

    #@53
    invoke-virtual {v4}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    #@56
    move-result-object v7

    #@57
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v6

    #@5b
    .line 465
    .end local v4    # "se":Ljavax/xml/transform/TransformerException;
    .restart local v0    # "child":I
    .restart local v1    # "i":I
    .restart local v2    # "pass":Z
    .restart local v3    # "pred":Lorg/apache/xpath/objects/XObject;
    .restart local v5    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :cond_0
    :try_start_9
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->boolWithSideEffects()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@5e
    move-result v8

    #@5f
    if-nez v8, :cond_3

    #@61
    .line 467
    const/4 v2, 0x0

    #@62
    .line 474
    :try_start_a
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    #@65
    .line 479
    :try_start_b
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    #@68
    .line 485
    .end local v3    # "pred":Lorg/apache/xpath/objects/XObject;
    :cond_1
    :try_start_c
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popSubContextList()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    #@6b
    .line 488
    if-eqz v2, :cond_2

    #@6d
    .line 489
    add-int/lit8 p5, p5, -0x1

    #@6f
    .line 491
    :cond_2
    if-ge p5, v6, :cond_4

    #@71
    .line 497
    :try_start_d
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V
    :try_end_d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_d .. :try_end_d} :catch_0

    #@74
    .line 492
    return v7

    #@75
    .line 474
    .restart local v3    # "pred":Lorg/apache/xpath/objects/XObject;
    :cond_3
    :try_start_e
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    #@78
    .line 479
    :try_start_f
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    #@7b
    .line 452
    add-int/lit8 v1, v1, 0x1

    #@7d
    goto :goto_1

    #@7e
    .line 497
    .end local v1    # "i":I
    .end local v2    # "pass":Z
    .end local v3    # "pred":Lorg/apache/xpath/objects/XObject;
    :cond_4
    :try_start_10
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@81
    .line 438
    invoke-virtual {v5, p4, v0}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I
    :try_end_10
    .catch Ljavax/xml/transform/TransformerException; {:try_start_10 .. :try_end_10} :catch_0

    #@84
    move-result v0

    #@85
    goto :goto_0

    #@86
    .line 508
    :cond_5
    if-ne p5, v6, :cond_6

    #@88
    :goto_2
    return v6

    #@89
    :cond_6
    move v6, v7

    #@8a
    goto :goto_2
.end method

.method private final getProximityPosition(Lorg/apache/xpath/XPathContext;IZ)I
    .locals 16
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "predPos"    # I
    .param p3, "findLast"    # Z

    #@0
    .prologue
    .line 527
    const/4 v8, 0x0

    #@1
    .line 528
    .local v8, "pos":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@4
    move-result v3

    #@5
    .line 529
    .local v3, "context":I
    move-object/from16 v0, p1

    #@7
    invoke-virtual {v0, v3}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@a
    move-result-object v4

    #@b
    .line 530
    .local v4, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-interface {v4, v3}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    #@e
    move-result v6

    #@f
    .line 534
    .local v6, "parent":I
    const/4 v12, 0x3

    #@10
    :try_start_0
    invoke-interface {v4, v12}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@13
    move-result-object v11

    #@14
    .line 536
    .local v11, "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-virtual {v11, v6}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result v2

    #@18
    .local v2, "child":I
    :goto_0
    const/4 v12, -0x1

    #@19
    if-eq v12, v2, :cond_5

    #@1b
    .line 541
    :try_start_1
    move-object/from16 v0, p1

    #@1d
    invoke-virtual {v0, v2}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    #@20
    .line 543
    sget-object v12, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@22
    move-object/from16 v0, p0

    #@24
    move-object/from16 v1, p1

    #@26
    invoke-super {v0, v1, v2}, Lorg/apache/xpath/patterns/NodeTest;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@29
    move-result-object v13

    #@2a
    if-eq v12, v13, :cond_4

    #@2c
    .line 545
    const/4 v7, 0x1

    #@2d
    .line 549
    .local v7, "pass":Z
    :try_start_2
    move-object/from16 v0, p1

    #@2f
    move-object/from16 v1, p0

    #@31
    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->pushSubContextList(Lorg/apache/xpath/axes/SubContextList;)V

    #@34
    .line 551
    const/4 v5, 0x0

    #@35
    .local v5, "i":I
    :goto_1
    move/from16 v0, p2

    #@37
    if-ge v5, v0, :cond_0

    #@39
    .line 553
    move-object/from16 v0, p1

    #@3b
    invoke-virtual {v0, v5}, Lorg/apache/xpath/XPathContext;->pushPredicatePos(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3e
    .line 556
    :try_start_3
    move-object/from16 v0, p0

    #@40
    iget-object v12, v0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    #@42
    aget-object v12, v12, v5

    #@44
    move-object/from16 v0, p1

    #@46
    invoke-virtual {v12, v0}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    #@49
    move-result-object v9

    #@4a
    .line 560
    .local v9, "pred":Lorg/apache/xpath/objects/XObject;
    :try_start_4
    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@4d
    move-result v12

    #@4e
    const/4 v13, 0x2

    #@4f
    if-ne v13, v12, :cond_2

    #@51
    .line 562
    add-int/lit8 v12, v8, 0x1

    #@53
    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->numWithSideEffects()D
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@56
    move-result-wide v14

    #@57
    double-to-int v13, v14

    #@58
    if-eq v12, v13, :cond_3

    #@5a
    .line 564
    const/4 v7, 0x0

    #@5b
    .line 578
    :try_start_5
    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    #@5e
    .line 583
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@61
    .line 589
    .end local v9    # "pred":Lorg/apache/xpath/objects/XObject;
    :cond_0
    :goto_2
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popSubContextList()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@64
    .line 592
    if-eqz v7, :cond_1

    #@66
    .line 593
    add-int/lit8 v8, v8, 0x1

    #@68
    .line 595
    :cond_1
    if-nez p3, :cond_4

    #@6a
    if-ne v2, v3, :cond_4

    #@6c
    .line 603
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V
    :try_end_8
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_8} :catch_0

    #@6f
    .line 597
    return v8

    #@70
    .line 569
    .restart local v9    # "pred":Lorg/apache/xpath/objects/XObject;
    :cond_2
    :try_start_9
    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->boolWithSideEffects()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@73
    move-result v12

    #@74
    if-nez v12, :cond_3

    #@76
    .line 571
    const/4 v7, 0x0

    #@77
    .line 578
    :try_start_a
    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    #@7a
    .line 583
    :try_start_b
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    #@7d
    goto :goto_2

    #@7e
    .line 588
    .end local v5    # "i":I
    .end local v9    # "pred":Lorg/apache/xpath/objects/XObject;
    :catchall_0
    move-exception v12

    #@7f
    .line 589
    :try_start_c
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    #@82
    .line 588
    throw v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    #@83
    .line 602
    .end local v7    # "pass":Z
    :catchall_1
    move-exception v12

    #@84
    .line 603
    :try_start_d
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@87
    .line 602
    throw v12
    :try_end_d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_d .. :try_end_d} :catch_0

    #@88
    .line 608
    .end local v2    # "child":I
    .end local v11    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :catch_0
    move-exception v10

    #@89
    .line 611
    .local v10, "se":Ljavax/xml/transform/TransformerException;
    new-instance v12, Ljava/lang/RuntimeException;

    #@8b
    invoke-virtual {v10}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    #@8e
    move-result-object v13

    #@8f
    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@92
    throw v12

    #@93
    .line 578
    .end local v10    # "se":Ljavax/xml/transform/TransformerException;
    .restart local v2    # "child":I
    .restart local v5    # "i":I
    .restart local v7    # "pass":Z
    .restart local v9    # "pred":Lorg/apache/xpath/objects/XObject;
    .restart local v11    # "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    :cond_3
    :try_start_e
    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    #@96
    .line 583
    :try_start_f
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    #@99
    .line 551
    add-int/lit8 v5, v5, 0x1

    #@9b
    goto :goto_1

    #@9c
    .line 577
    :catchall_2
    move-exception v12

    #@9d
    .line 578
    :try_start_10
    invoke-virtual {v9}, Lorg/apache/xpath/objects/XObject;->detach()V

    #@a0
    .line 577
    throw v12
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    #@a1
    .line 582
    .end local v9    # "pred":Lorg/apache/xpath/objects/XObject;
    :catchall_3
    move-exception v12

    #@a2
    .line 583
    :try_start_11
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V

    #@a5
    .line 582
    throw v12
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    #@a6
    .line 603
    .end local v5    # "i":I
    .end local v7    # "pass":Z
    :cond_4
    :try_start_12
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@a9
    .line 537
    invoke-virtual {v11, v6, v2}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I
    :try_end_12
    .catch Ljavax/xml/transform/TransformerException; {:try_start_12 .. :try_end_12} :catch_0

    #@ac
    move-result v2

    #@ad
    goto/16 :goto_0

    #@af
    .line 614
    :cond_5
    return v8
.end method


# virtual methods
.method public calcScore()V
    .locals 1

    #@0
    .prologue
    .line 304
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->getPredicateCount()I

    #@3
    move-result v0

    #@4
    if-gtz v0, :cond_0

    #@6
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    #@8
    if-eqz v0, :cond_2

    #@a
    .line 306
    :cond_0
    sget-object v0, Lorg/apache/xpath/patterns/StepPattern;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    #@c
    iput-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_score:Lorg/apache/xpath/objects/XNumber;

    #@e
    .line 311
    :goto_0
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    #@10
    if-nez v0, :cond_1

    #@12
    .line 312
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->calcTargetString()V

    #@15
    .line 301
    :cond_1
    return-void

    #@16
    .line 309
    :cond_2
    invoke-super {p0}, Lorg/apache/xpath/patterns/NodeTest;->calcScore()V

    #@19
    goto :goto_0
.end method

.method public calcTargetString()V
    .locals 3

    #@0
    .prologue
    .line 96
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->getWhatToShow()I

    #@3
    move-result v0

    #@4
    .line 98
    .local v0, "whatToShow":I
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 122
    const-string/jumbo v1, "*"

    #@a
    iput-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    #@c
    .line 93
    :goto_0
    return-void

    #@d
    .line 101
    :sswitch_0
    const-string/jumbo v1, "#comment"

    #@10
    iput-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    #@12
    goto :goto_0

    #@13
    .line 106
    :sswitch_1
    const-string/jumbo v1, "#text"

    #@16
    iput-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    #@18
    goto :goto_0

    #@19
    .line 109
    :sswitch_2
    const-string/jumbo v1, "*"

    #@1c
    iput-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    #@1e
    goto :goto_0

    #@1f
    .line 113
    :sswitch_3
    const-string/jumbo v1, "/"

    #@22
    iput-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    #@24
    goto :goto_0

    #@25
    .line 116
    :sswitch_4
    const-string/jumbo v1, "*"

    #@28
    iget-object v2, p0, Lorg/apache/xpath/patterns/StepPattern;->m_name:Ljava/lang/String;

    #@2a
    if-ne v1, v2, :cond_0

    #@2c
    .line 117
    const-string/jumbo v1, "*"

    #@2f
    iput-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    #@31
    goto :goto_0

    #@32
    .line 119
    :cond_0
    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_name:Ljava/lang/String;

    #@34
    iput-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    #@36
    goto :goto_0

    #@37
    .line 98
    nop

    #@38
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_2
        0x1 -> :sswitch_4
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
        0xc -> :sswitch_1
        0x80 -> :sswitch_0
        0x100 -> :sswitch_3
        0x500 -> :sswitch_3
    .end sparse-switch
.end method

.method protected callSubtreeVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .locals 4
    .param p1, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    #@0
    .prologue
    .line 981
    iget-object v3, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    #@2
    if-eqz v3, :cond_1

    #@4
    .line 983
    iget-object v3, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    #@6
    array-length v1, v3

    #@7
    .line 984
    .local v1, "n":I
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@a
    .line 986
    new-instance v2, Lorg/apache/xpath/patterns/StepPattern$PredOwner;

    #@c
    invoke-direct {v2, p0, v0}, Lorg/apache/xpath/patterns/StepPattern$PredOwner;-><init>(Lorg/apache/xpath/patterns/StepPattern;I)V

    #@f
    .line 987
    .local v2, "predOwner":Lorg/apache/xpath/ExpressionOwner;
    iget-object v3, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    #@11
    aget-object v3, v3, v0

    #@13
    invoke-virtual {p1, v2, v3}, Lorg/apache/xpath/XPathVisitor;->visitPredicate(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/Expression;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 989
    iget-object v3, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    #@1b
    aget-object v3, v3, v0

    #@1d
    invoke-virtual {v3, v2, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@20
    .line 984
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 993
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "predOwner":Lorg/apache/xpath/ExpressionOwner;
    :cond_1
    iget-object v3, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    #@25
    if-eqz v3, :cond_2

    #@27
    .line 995
    iget-object v3, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    #@29
    invoke-virtual {v3, p0, p1}, Lorg/apache/xpath/patterns/StepPattern;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@2c
    .line 979
    :cond_2
    return-void
.end method

.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .locals 1
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    #@0
    .prologue
    .line 969
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitMatchPattern(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/patterns/StepPattern;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 971
    invoke-virtual {p0, p2}, Lorg/apache/xpath/patterns/StepPattern;->callSubtreeVisitors(Lorg/apache/xpath/XPathVisitor;)V

    #@9
    .line 967
    :cond_0
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .locals 3

    #@0
    .prologue
    .line 241
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->getPredicateCount()I

    #@3
    move-result v1

    #@4
    .line 243
    .local v1, "n":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@7
    .line 245
    invoke-virtual {p0, v0}, Lorg/apache/xpath/patterns/StepPattern;->getPredicate(I)Lorg/apache/xpath/Expression;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v2}, Lorg/apache/xpath/Expression;->canTraverseOutsideSubtree()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 246
    const/4 v2, 0x1

    #@12
    return v2

    #@13
    .line 243
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 249
    :cond_1
    const/4 v2, 0x0

    #@17
    return v2
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 6
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1022
    invoke-super {p0, p1}, Lorg/apache/xpath/patterns/NodeTest;->deepEquals(Lorg/apache/xpath/Expression;)Z

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_0

    #@7
    .line 1023
    return v5

    #@8
    :cond_0
    move-object v2, p1

    #@9
    .line 1025
    check-cast v2, Lorg/apache/xpath/patterns/StepPattern;

    #@b
    .line 1027
    .local v2, "sp":Lorg/apache/xpath/patterns/StepPattern;
    iget-object v3, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    #@d
    if-eqz v3, :cond_4

    #@f
    .line 1029
    iget-object v3, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    #@11
    array-length v1, v3

    #@12
    .line 1030
    .local v1, "n":I
    iget-object v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    #@14
    if-eqz v3, :cond_1

    #@16
    iget-object v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    #@18
    array-length v3, v3

    #@19
    if-eq v3, v1, :cond_2

    #@1b
    .line 1031
    :cond_1
    return v5

    #@1c
    .line 1032
    :cond_2
    const/4 v0, 0x0

    #@1d
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_5

    #@1f
    .line 1034
    iget-object v3, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    #@21
    aget-object v3, v3, v0

    #@23
    iget-object v4, v2, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    #@25
    aget-object v4, v4, v0

    #@27
    invoke-virtual {v3, v4}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    #@2a
    move-result v3

    #@2b
    if-nez v3, :cond_3

    #@2d
    .line 1035
    return v5

    #@2e
    .line 1032
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_0

    #@31
    .line 1038
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_4
    iget-object v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    #@33
    if-eqz v3, :cond_5

    #@35
    .line 1039
    return v5

    #@36
    .line 1041
    :cond_5
    iget-object v3, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    #@38
    if-eqz v3, :cond_6

    #@3a
    .line 1043
    iget-object v3, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    #@3c
    iget-object v4, v2, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    #@3e
    invoke-virtual {v3, v4}, Lorg/apache/xpath/patterns/StepPattern;->deepEquals(Lorg/apache/xpath/Expression;)Z

    #@41
    move-result v3

    #@42
    if-nez v3, :cond_7

    #@44
    .line 1044
    return v5

    #@45
    .line 1046
    :cond_6
    iget-object v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    #@47
    if-eqz v3, :cond_7

    #@49
    .line 1047
    return v5

    #@4a
    .line 1049
    :cond_7
    const/4 v3, 0x1

    #@4b
    return v3
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
    .line 363
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;
    .locals 3
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "currentNode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 334
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@3
    move-result-object v0

    #@4
    .line 336
    .local v0, "dtm":Lorg/apache/xml/dtm/DTM;
    if-eqz v0, :cond_0

    #@6
    .line 338
    invoke-interface {v0, p2}, Lorg/apache/xml/dtm/DTM;->getExpandedTypeID(I)I

    #@9
    move-result v1

    #@a
    .line 340
    .local v1, "expType":I
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;

    #@d
    move-result-object v2

    #@e
    return-object v2

    #@f
    .line 343
    .end local v1    # "expType":I
    :cond_0
    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@11
    return-object v2
.end method

.method public execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;
    .locals 3
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "currentNode"    # I
    .param p3, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .param p4, "expType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 386
    iget v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_whatToShow:I

    #@2
    const/high16 v2, 0x10000

    #@4
    if-ne v1, v2, :cond_1

    #@6
    .line 388
    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 390
    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    #@c
    invoke-virtual {v1, p1}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 393
    :cond_0
    sget-object v1, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@13
    return-object v1

    #@14
    .line 398
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xpath/patterns/NodeTest;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;

    #@17
    move-result-object v0

    #@18
    .line 400
    .local v0, "score":Lorg/apache/xpath/objects/XObject;
    sget-object v1, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@1a
    if-ne v0, v1, :cond_2

    #@1c
    .line 401
    sget-object v1, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@1e
    return-object v1

    #@1f
    .line 403
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->getPredicateCount()I

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_3

    #@25
    .line 405
    invoke-virtual {p0, p1, p3, p2}, Lorg/apache/xpath/patterns/StepPattern;->executePredicates(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/dtm/DTM;I)Z

    #@28
    move-result v1

    #@29
    if-nez v1, :cond_3

    #@2b
    .line 406
    sget-object v1, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@2d
    return-object v1

    #@2e
    .line 409
    :cond_3
    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    #@30
    if-eqz v1, :cond_4

    #@32
    .line 410
    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    #@34
    invoke-virtual {v1, p1, p3, p2}, Lorg/apache/xpath/patterns/StepPattern;->executeRelativePathPattern(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;

    #@37
    move-result-object v1

    #@38
    return-object v1

    #@39
    .line 413
    :cond_4
    return-object v0
.end method

.method protected final executePredicates(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/dtm/DTM;I)Z
    .locals 10
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .param p3, "currentNode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 713
    const/4 v9, 0x1

    #@1
    .line 714
    .local v9, "result":Z
    const/4 v7, 0x0

    #@2
    .line 715
    .local v7, "positionAlreadySeen":Z
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->getPredicateCount()I

    #@5
    move-result v6

    #@6
    .line 719
    .local v6, "n":I
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/apache/xpath/XPathContext;->pushSubContextList(Lorg/apache/xpath/axes/SubContextList;)V

    #@9
    .line 721
    const/4 v2, 0x0

    #@a
    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_0

    #@c
    .line 723
    invoke-virtual {p1, v2}, Lorg/apache/xpath/XPathContext;->pushPredicatePos(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 727
    :try_start_1
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    #@11
    aget-object v0, v0, v2

    #@13
    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@16
    move-result-object v8

    #@17
    .line 731
    .local v8, "pred":Lorg/apache/xpath/objects/XObject;
    :try_start_2
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@1a
    move-result v0

    #@1b
    const/4 v1, 0x2

    #@1c
    if-ne v1, v0, :cond_3

    #@1e
    .line 733
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->num()D
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@21
    move-result-wide v0

    #@22
    double-to-int v5, v0

    #@23
    .line 735
    .local v5, "pos":I
    if-eqz v7, :cond_2

    #@25
    .line 737
    const/4 v0, 0x1

    #@26
    if-ne v5, v0, :cond_1

    #@28
    const/4 v9, 0x1

    #@29
    .line 763
    :goto_1
    :try_start_3
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@2c
    .line 768
    :try_start_4
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@2f
    .line 774
    .end local v5    # "pos":I
    .end local v8    # "pred":Lorg/apache/xpath/objects/XObject;
    :cond_0
    :goto_2
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    #@32
    .line 777
    return v9

    #@33
    .line 737
    .restart local v5    # "pos":I
    .restart local v8    # "pred":Lorg/apache/xpath/objects/XObject;
    :cond_1
    const/4 v9, 0x0

    #@34
    goto :goto_1

    #@35
    .line 743
    :cond_2
    const/4 v7, 0x1

    #@36
    move-object v0, p0

    #@37
    move-object v1, p1

    #@38
    move-object v3, p2

    #@39
    move v4, p3

    #@3a
    .line 745
    :try_start_5
    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/patterns/StepPattern;->checkProximityPosition(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;II)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@3d
    move-result v0

    #@3e
    if-nez v0, :cond_4

    #@40
    .line 747
    const/4 v9, 0x0

    #@41
    .line 763
    :try_start_6
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@44
    .line 768
    :try_start_7
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@47
    goto :goto_2

    #@48
    .line 773
    .end local v2    # "i":I
    .end local v5    # "pos":I
    .end local v8    # "pred":Lorg/apache/xpath/objects/XObject;
    :catchall_0
    move-exception v0

    #@49
    .line 774
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    #@4c
    .line 773
    throw v0

    #@4d
    .line 754
    .restart local v2    # "i":I
    .restart local v8    # "pred":Lorg/apache/xpath/objects/XObject;
    :cond_3
    :try_start_8
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->boolWithSideEffects()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    #@50
    move-result v0

    #@51
    if-nez v0, :cond_4

    #@53
    .line 756
    const/4 v9, 0x0

    #@54
    .line 763
    :try_start_9
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@57
    .line 768
    :try_start_a
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    #@5a
    goto :goto_2

    #@5b
    .line 763
    :cond_4
    :try_start_b
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    #@5e
    .line 768
    :try_start_c
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    #@61
    .line 721
    add-int/lit8 v2, v2, 0x1

    #@63
    goto :goto_0

    #@64
    .line 762
    :catchall_1
    move-exception v0

    #@65
    .line 763
    :try_start_d
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->detach()V

    #@68
    .line 762
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    #@69
    .line 767
    .end local v8    # "pred":Lorg/apache/xpath/objects/XObject;
    :catchall_2
    move-exception v0

    #@6a
    .line 768
    :try_start_e
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V

    #@6d
    .line 767
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
.end method

.method protected final executeRelativePathPattern(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;
    .locals 5
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .param p3, "currentNode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 669
    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@2
    .line 670
    .local v2, "score":Lorg/apache/xpath/objects/XObject;
    move v0, p3

    #@3
    .line 673
    .local v0, "context":I
    iget v4, p0, Lorg/apache/xpath/patterns/StepPattern;->m_axis:I

    #@5
    invoke-interface {p2, v4}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@8
    move-result-object v3

    #@9
    .line 675
    .local v3, "traverser":Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    #@c
    move-result v1

    #@d
    .local v1, "relative":I
    :goto_0
    const/4 v4, -0x1

    #@e
    if-eq v4, v1, :cond_0

    #@10
    .line 680
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    #@13
    .line 682
    invoke-virtual {p0, p1}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@16
    move-result-object v2

    #@17
    .line 684
    sget-object v4, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    if-eq v2, v4, :cond_1

    #@1b
    .line 689
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@1e
    .line 693
    :cond_0
    return-object v2

    #@1f
    .line 689
    :cond_1
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@22
    .line 676
    invoke-virtual {v3, v0, v1}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    #@25
    move-result v1

    #@26
    goto :goto_0

    #@27
    .line 688
    :catchall_0
    move-exception v4

    #@28
    .line 689
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@2b
    .line 688
    throw v4
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 2
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    #@0
    .prologue
    .line 161
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/patterns/NodeTest;->fixupVariables(Ljava/util/Vector;I)V

    #@3
    .line 163
    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 165
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    #@a
    array-length v1, v1

    #@b
    if-ge v0, v1, :cond_0

    #@d
    .line 167
    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    #@f
    aget-object v1, v1, v0

    #@11
    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    #@14
    .line 165
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 171
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 173
    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    #@1d
    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/patterns/StepPattern;->fixupVariables(Ljava/util/Vector;I)V

    #@20
    .line 158
    :cond_1
    return-void
.end method

.method public getAxis()I
    .locals 1

    #@0
    .prologue
    .line 933
    iget v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_axis:I

    #@2
    return v0
.end method

.method public getExpression()Lorg/apache/xpath/Expression;
    .locals 1

    #@0
    .prologue
    .line 1005
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    #@2
    return-object v0
.end method

.method public getLastPos(Lorg/apache/xpath/XPathContext;)I
    .locals 2
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;

    #@0
    .prologue
    .line 645
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getPredicatePos()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/xpath/patterns/StepPattern;->getProximityPosition(Lorg/apache/xpath/XPathContext;IZ)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getMatchScore(Lorg/apache/xpath/XPathContext;I)D
    .locals 4
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "context"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 896
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    #@3
    .line 897
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentExpressionNode(I)V

    #@6
    .line 901
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@9
    move-result-object v0

    #@a
    .line 903
    .local v0, "score":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->num()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-wide v2

    #@e
    .line 907
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@11
    .line 908
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    #@14
    .line 903
    return-wide v2

    #@15
    .line 906
    .end local v0    # "score":Lorg/apache/xpath/objects/XObject;
    :catchall_0
    move-exception v1

    #@16
    .line 907
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@19
    .line 908
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    #@1c
    .line 906
    throw v1
.end method

.method public getPredicate(I)Lorg/apache/xpath/Expression;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 262
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public final getPredicateCount()I
    .locals 1

    #@0
    .prologue
    .line 273
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    #@8
    array-length v0, v0

    #@9
    goto :goto_0
.end method

.method public getPredicates()[Lorg/apache/xpath/Expression;
    .locals 1

    #@0
    .prologue
    .line 220
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    #@2
    return-object v0
.end method

.method public getProximityPosition(Lorg/apache/xpath/XPathContext;)I
    .locals 2
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;

    #@0
    .prologue
    .line 629
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getPredicatePos()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/xpath/patterns/StepPattern;->getProximityPosition(Lorg/apache/xpath/XPathContext;IZ)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getRelativePathPattern()Lorg/apache/xpath/patterns/StepPattern;
    .locals 1

    #@0
    .prologue
    .line 202
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    #@2
    return-object v0
.end method

.method public getTargetString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setAxis(I)V
    .locals 0
    .param p1, "axis"    # I

    #@0
    .prologue
    .line 922
    iput p1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_axis:I

    #@2
    .line 920
    return-void
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .locals 0
    .param p1, "exp"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    .line 1013
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@3
    .line 1014
    check-cast p1, Lorg/apache/xpath/patterns/StepPattern;

    #@5
    .end local p1    # "exp":Lorg/apache/xpath/Expression;
    iput-object p1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    #@7
    .line 1011
    return-void
.end method

.method public setPredicates([Lorg/apache/xpath/Expression;)V
    .locals 2
    .param p1, "predicates"    # [Lorg/apache/xpath/Expression;

    #@0
    .prologue
    .line 286
    iput-object p1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    #@2
    .line 287
    if-eqz p1, :cond_0

    #@4
    .line 289
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@6
    if-ge v0, v1, :cond_0

    #@8
    .line 291
    aget-object v1, p1, v0

    #@a
    invoke-virtual {v1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@d
    .line 289
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 295
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->calcScore()V

    #@13
    .line 283
    return-void
.end method

.method public setRelativePathPattern(Lorg/apache/xpath/patterns/StepPattern;)V
    .locals 0
    .param p1, "expr"    # Lorg/apache/xpath/patterns/StepPattern;

    #@0
    .prologue
    .line 187
    iput-object p1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    #@2
    .line 188
    invoke-virtual {p1, p0}, Lorg/apache/xpath/patterns/StepPattern;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@5
    .line 190
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->calcScore()V

    #@8
    .line 184
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    .line 790
    new-instance v0, Ljava/lang/StringBuffer;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@6
    .line 792
    .local v0, "buf":Ljava/lang/StringBuffer;
    move-object v2, p0

    #@7
    .local v2, "pat":Lorg/apache/xpath/patterns/StepPattern;
    :goto_0
    if-eqz v2, :cond_e

    #@9
    .line 794
    if-eq v2, p0, :cond_0

    #@b
    .line 795
    const-string/jumbo v3, "/"

    #@e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@11
    .line 797
    :cond_0
    iget v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_axis:I

    #@13
    invoke-static {v3}, Lorg/apache/xml/dtm/Axis;->getNames(I)Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1a
    .line 798
    const-string/jumbo v3, "::"

    #@1d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@20
    .line 800
    iget v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_whatToShow:I

    #@22
    const/16 v4, 0x5000

    #@24
    if-ne v4, v3, :cond_1

    #@26
    .line 802
    const-string/jumbo v3, "doc()"

    #@29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2c
    .line 861
    :goto_1
    iget-object v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    #@2e
    if-eqz v3, :cond_d

    #@30
    .line 863
    const/4 v1, 0x0

    #@31
    .local v1, "i":I
    :goto_2
    iget-object v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    #@33
    array-length v3, v3

    #@34
    if-ge v1, v3, :cond_d

    #@36
    .line 865
    const-string/jumbo v3, "["

    #@39
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3c
    .line 866
    iget-object v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    #@3e
    aget-object v3, v3, v1

    #@40
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@43
    .line 867
    const-string/jumbo v3, "]"

    #@46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@49
    .line 863
    add-int/lit8 v1, v1, 0x1

    #@4b
    goto :goto_2

    #@4c
    .line 804
    .end local v1    # "i":I
    :cond_1
    iget v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_whatToShow:I

    #@4e
    const/high16 v4, 0x10000

    #@50
    if-ne v4, v3, :cond_2

    #@52
    .line 806
    const-string/jumbo v3, "function()"

    #@55
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@58
    goto :goto_1

    #@59
    .line 808
    :cond_2
    iget v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_whatToShow:I

    #@5b
    const/4 v4, -0x1

    #@5c
    if-ne v4, v3, :cond_3

    #@5e
    .line 810
    const-string/jumbo v3, "node()"

    #@61
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@64
    goto :goto_1

    #@65
    .line 812
    :cond_3
    iget v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_whatToShow:I

    #@67
    const/4 v4, 0x4

    #@68
    if-ne v4, v3, :cond_4

    #@6a
    .line 814
    const-string/jumbo v3, "text()"

    #@6d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@70
    goto :goto_1

    #@71
    .line 816
    :cond_4
    iget v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_whatToShow:I

    #@73
    const/16 v4, 0x40

    #@75
    if-ne v4, v3, :cond_6

    #@77
    .line 818
    const-string/jumbo v3, "processing-instruction("

    #@7a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@7d
    .line 820
    iget-object v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_name:Ljava/lang/String;

    #@7f
    if-eqz v3, :cond_5

    #@81
    .line 822
    iget-object v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_name:Ljava/lang/String;

    #@83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@86
    .line 825
    :cond_5
    const-string/jumbo v3, ")"

    #@89
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@8c
    goto :goto_1

    #@8d
    .line 827
    :cond_6
    iget v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_whatToShow:I

    #@8f
    const/16 v4, 0x80

    #@91
    if-ne v4, v3, :cond_7

    #@93
    .line 829
    const-string/jumbo v3, "comment()"

    #@96
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@99
    goto :goto_1

    #@9a
    .line 831
    :cond_7
    iget-object v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_name:Ljava/lang/String;

    #@9c
    if-eqz v3, :cond_a

    #@9e
    .line 833
    iget v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_whatToShow:I

    #@a0
    if-ne v5, v3, :cond_8

    #@a2
    .line 835
    const-string/jumbo v3, "@"

    #@a5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a8
    .line 838
    :cond_8
    iget-object v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_namespace:Ljava/lang/String;

    #@aa
    if-eqz v3, :cond_9

    #@ac
    .line 840
    const-string/jumbo v3, "{"

    #@af
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b2
    .line 841
    iget-object v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_namespace:Ljava/lang/String;

    #@b4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b7
    .line 842
    const-string/jumbo v3, "}"

    #@ba
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@bd
    .line 845
    :cond_9
    iget-object v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_name:Ljava/lang/String;

    #@bf
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c2
    goto/16 :goto_1

    #@c4
    .line 847
    :cond_a
    iget v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_whatToShow:I

    #@c6
    if-ne v5, v3, :cond_b

    #@c8
    .line 849
    const-string/jumbo v3, "@"

    #@cb
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ce
    goto/16 :goto_1

    #@d0
    .line 852
    :cond_b
    iget v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_whatToShow:I

    #@d2
    .line 851
    const/16 v4, 0x500

    #@d4
    if-ne v4, v3, :cond_c

    #@d6
    .line 854
    const-string/jumbo v3, "doc-root()"

    #@d9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@dc
    goto/16 :goto_1

    #@de
    .line 858
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    #@e0
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e3
    const-string/jumbo v4, "?"

    #@e6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v3

    #@ea
    iget v4, v2, Lorg/apache/xpath/patterns/StepPattern;->m_whatToShow:I

    #@ec
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@ef
    move-result-object v4

    #@f0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v3

    #@f4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f7
    move-result-object v3

    #@f8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@fb
    goto/16 :goto_1

    #@fd
    .line 792
    :cond_d
    iget-object v2, v2, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    #@ff
    goto/16 :goto_0

    #@101
    .line 872
    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@104
    move-result-object v3

    #@105
    return-object v3
.end method
