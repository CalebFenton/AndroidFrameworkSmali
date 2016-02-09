.class public Lorg/apache/xpath/objects/XNodeSet;
.super Lorg/apache/xpath/axes/NodeSequence;
.source "XNodeSet.java"


# static fields
.field static final S_EQ:Lorg/apache/xpath/objects/EqualComparator;

.field static final S_GT:Lorg/apache/xpath/objects/GreaterThanComparator;

.field static final S_GTE:Lorg/apache/xpath/objects/GreaterThanOrEqualComparator;

.field static final S_LT:Lorg/apache/xpath/objects/LessThanComparator;

.field static final S_LTE:Lorg/apache/xpath/objects/LessThanOrEqualComparator;

.field static final S_NEQ:Lorg/apache/xpath/objects/NotEqualComparator;

.field static final serialVersionUID:J = 0x1a9717d4870bd173L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 444
    new-instance v0, Lorg/apache/xpath/objects/LessThanComparator;

    #@2
    invoke-direct {v0}, Lorg/apache/xpath/objects/LessThanComparator;-><init>()V

    #@5
    sput-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_LT:Lorg/apache/xpath/objects/LessThanComparator;

    #@7
    .line 447
    new-instance v0, Lorg/apache/xpath/objects/LessThanOrEqualComparator;

    #@9
    invoke-direct {v0}, Lorg/apache/xpath/objects/LessThanOrEqualComparator;-><init>()V

    #@c
    sput-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_LTE:Lorg/apache/xpath/objects/LessThanOrEqualComparator;

    #@e
    .line 450
    new-instance v0, Lorg/apache/xpath/objects/GreaterThanComparator;

    #@10
    invoke-direct {v0}, Lorg/apache/xpath/objects/GreaterThanComparator;-><init>()V

    #@13
    sput-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_GT:Lorg/apache/xpath/objects/GreaterThanComparator;

    #@15
    .line 454
    new-instance v0, Lorg/apache/xpath/objects/GreaterThanOrEqualComparator;

    #@17
    invoke-direct {v0}, Lorg/apache/xpath/objects/GreaterThanOrEqualComparator;-><init>()V

    #@1a
    .line 453
    sput-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_GTE:Lorg/apache/xpath/objects/GreaterThanOrEqualComparator;

    #@1c
    .line 457
    new-instance v0, Lorg/apache/xpath/objects/EqualComparator;

    #@1e
    invoke-direct {v0}, Lorg/apache/xpath/objects/EqualComparator;-><init>()V

    #@21
    sput-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_EQ:Lorg/apache/xpath/objects/EqualComparator;

    #@23
    .line 460
    new-instance v0, Lorg/apache/xpath/objects/NotEqualComparator;

    #@25
    invoke-direct {v0}, Lorg/apache/xpath/objects/NotEqualComparator;-><init>()V

    #@28
    sput-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_NEQ:Lorg/apache/xpath/objects/NotEqualComparator;

    #@2a
    .line 38
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(ILorg/apache/xml/dtm/DTMManager;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "dtmMgr"    # Lorg/apache/xml/dtm/DTMManager;

    #@0
    .prologue
    .line 108
    new-instance v0, Lorg/apache/xpath/NodeSetDTM;

    #@2
    invoke-direct {v0, p2}, Lorg/apache/xpath/NodeSetDTM;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    #@5
    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;-><init>(Ljava/lang/Object;)V

    #@8
    .line 109
    iput-object p2, p0, Lorg/apache/xpath/objects/XNodeSet;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    #@a
    .line 111
    const/4 v0, -0x1

    #@b
    if-eq v0, p1, :cond_0

    #@d
    .line 113
    iget-object v0, p0, Lorg/apache/xpath/objects/XNodeSet;->m_obj:Ljava/lang/Object;

    #@f
    check-cast v0, Lorg/apache/xpath/NodeSetDTM;

    #@11
    invoke-virtual {v0, p1}, Lorg/apache/xpath/NodeSetDTM;->addNode(I)V

    #@14
    .line 114
    const/4 v0, 0x1

    #@15
    iput v0, p0, Lorg/apache/xpath/objects/XNodeSet;->m_last:I

    #@17
    .line 105
    :goto_0
    return-void

    #@18
    .line 117
    :cond_0
    const/4 v0, 0x0

    #@19
    iput v0, p0, Lorg/apache/xpath/objects/XNodeSet;->m_last:I

    #@1b
    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMIterator;)V
    .locals 2
    .param p1, "val"    # Lorg/apache/xml/dtm/DTMIterator;

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence;-><init>()V

    #@3
    .line 56
    instance-of v1, p1, Lorg/apache/xpath/objects/XNodeSet;

    #@5
    if-eqz v1, :cond_1

    #@7
    move-object v0, p1

    #@8
    .line 58
    check-cast v0, Lorg/apache/xpath/objects/XNodeSet;

    #@a
    .line 59
    .local v0, "nodeSet":Lorg/apache/xpath/objects/XNodeSet;
    iget-object v1, v0, Lorg/apache/xpath/objects/XNodeSet;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@c
    invoke-virtual {p0, v1}, Lorg/apache/xpath/objects/XNodeSet;->setIter(Lorg/apache/xml/dtm/DTMIterator;)V

    #@f
    .line 60
    iget-object v1, v0, Lorg/apache/xpath/objects/XNodeSet;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    #@11
    iput-object v1, p0, Lorg/apache/xpath/objects/XNodeSet;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    #@13
    .line 61
    iget v1, v0, Lorg/apache/xpath/objects/XNodeSet;->m_last:I

    #@15
    iput v1, p0, Lorg/apache/xpath/objects/XNodeSet;->m_last:I

    #@17
    .line 64
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->hasCache()Z

    #@1a
    move-result v1

    #@1b
    if-nez v1, :cond_0

    #@1d
    .line 65
    const/4 v1, 0x1

    #@1e
    invoke-virtual {v0, v1}, Lorg/apache/xpath/objects/XNodeSet;->setShouldCacheNodes(Z)V

    #@21
    .line 68
    :cond_0
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->getIteratorCache()Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {p0, v1}, Lorg/apache/xpath/objects/XNodeSet;->setObject(Ljava/lang/Object;)V

    #@28
    .line 53
    .end local v0    # "nodeSet":Lorg/apache/xpath/objects/XNodeSet;
    :goto_0
    return-void

    #@29
    .line 71
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XNodeSet;->setIter(Lorg/apache/xml/dtm/DTMIterator;)V

    #@2c
    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;)V
    .locals 1
    .param p1, "dtmMgr"    # Lorg/apache/xml/dtm/DTMManager;

    #@0
    .prologue
    .line 97
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/objects/XNodeSet;-><init>(ILorg/apache/xml/dtm/DTMManager;)V

    #@4
    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/apache/xpath/objects/XNodeSet;)V
    .locals 1
    .param p1, "val"    # Lorg/apache/xpath/objects/XNodeSet;

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence;-><init>()V

    #@3
    .line 82
    iget-object v0, p1, Lorg/apache/xpath/objects/XNodeSet;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    #@5
    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->setIter(Lorg/apache/xml/dtm/DTMIterator;)V

    #@8
    .line 83
    iget-object v0, p1, Lorg/apache/xpath/objects/XNodeSet;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    #@a
    iput-object v0, p0, Lorg/apache/xpath/objects/XNodeSet;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    #@c
    .line 84
    iget v0, p1, Lorg/apache/xpath/objects/XNodeSet;->m_last:I

    #@e
    iput v0, p0, Lorg/apache/xpath/objects/XNodeSet;->m_last:I

    #@10
    .line 85
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XNodeSet;->hasCache()Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_0

    #@16
    .line 86
    const/4 v0, 0x1

    #@17
    invoke-virtual {p1, v0}, Lorg/apache/xpath/objects/XNodeSet;->setShouldCacheNodes(Z)V

    #@1a
    .line 87
    :cond_0
    iget-object v0, p1, Lorg/apache/xpath/objects/XNodeSet;->m_obj:Ljava/lang/Object;

    #@1c
    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->setObject(Ljava/lang/Object;)V

    #@1f
    .line 79
    return-void
.end method


# virtual methods
.method public appendToFsb(Lorg/apache/xml/utils/FastStringBuffer;)V
    .locals 1
    .param p1, "fsb"    # Lorg/apache/xml/utils/FastStringBuffer;

    #@0
    .prologue
    .line 266
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->xstr()Lorg/apache/xml/utils/XMLString;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lorg/apache/xpath/objects/XString;

    #@6
    .line 267
    .local v0, "xstring":Lorg/apache/xpath/objects/XString;
    invoke-virtual {v0, p1}, Lorg/apache/xpath/objects/XString;->appendToFsb(Lorg/apache/xml/utils/FastStringBuffer;)V

    #@9
    .line 264
    return-void
.end method

.method public bool()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 189
    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->item(I)I

    #@4
    move-result v1

    #@5
    const/4 v2, -0x1

    #@6
    if-eq v1, v2, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    return v0
.end method

.method public boolWithSideEffects()Z
    .locals 2

    #@0
    .prologue
    .line 200
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->nextNode()I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z
    .locals 26
    .param p1, "obj2"    # Lorg/apache/xpath/objects/XObject;
    .param p2, "comparator"    # Lorg/apache/xpath/objects/Comparator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 476
    const/16 v18, 0x0

    #@2
    .line 477
    .local v18, "result":Z
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@5
    move-result v21

    #@6
    .line 479
    .local v21, "type":I
    const/16 v22, 0x4

    #@8
    move/from16 v0, v22

    #@a
    move/from16 v1, v21

    #@c
    if-ne v0, v1, :cond_6

    #@e
    .line 494
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;

    #@11
    move-result-object v7

    #@12
    .line 495
    .local v7, "list1":Lorg/apache/xml/dtm/DTMIterator;
    check-cast p1, Lorg/apache/xpath/objects/XNodeSet;

    #@14
    .end local p1    # "obj2":Lorg/apache/xpath/objects/XObject;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;

    #@17
    move-result-object v8

    #@18
    .line 497
    .local v8, "list2":Lorg/apache/xml/dtm/DTMIterator;
    const/4 v13, 0x0

    #@19
    .line 499
    :cond_0
    :goto_0
    invoke-interface {v7}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    #@1c
    move-result v11

    #@1d
    .local v11, "node1":I
    const/16 v22, -0x1

    #@1f
    move/from16 v0, v22

    #@21
    if-eq v0, v11, :cond_5

    #@23
    .line 501
    move-object/from16 v0, p0

    #@25
    invoke-virtual {v0, v11}, Lorg/apache/xpath/objects/XNodeSet;->getStringFromNode(I)Lorg/apache/xml/utils/XMLString;

    #@28
    move-result-object v19

    #@29
    .line 503
    .local v19, "s1":Lorg/apache/xml/utils/XMLString;
    if-nez v13, :cond_3

    #@2b
    .line 507
    :goto_1
    invoke-interface {v8}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    #@2e
    move-result v12

    #@2f
    .local v12, "node2":I
    const/16 v22, -0x1

    #@31
    move/from16 v0, v22

    #@33
    if-eq v0, v12, :cond_0

    #@35
    .line 509
    move-object/from16 v0, p0

    #@37
    invoke-virtual {v0, v12}, Lorg/apache/xpath/objects/XNodeSet;->getStringFromNode(I)Lorg/apache/xml/utils/XMLString;

    #@3a
    move-result-object v20

    #@3b
    .line 511
    .local v20, "s2":Lorg/apache/xml/utils/XMLString;
    move-object/from16 v0, p2

    #@3d
    move-object/from16 v1, v19

    #@3f
    move-object/from16 v2, v20

    #@41
    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/objects/Comparator;->compareStrings(Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/XMLString;)Z

    #@44
    move-result v22

    #@45
    if-eqz v22, :cond_1

    #@47
    .line 513
    const/16 v18, 0x1

    #@49
    .line 515
    goto :goto_0

    #@4a
    .line 518
    :cond_1
    if-nez v13, :cond_2

    #@4c
    .line 519
    new-instance v13, Ljava/util/Vector;

    #@4e
    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    #@51
    .line 521
    :cond_2
    move-object/from16 v0, v20

    #@53
    invoke-virtual {v13, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@56
    goto :goto_1

    #@57
    .line 526
    .end local v12    # "node2":I
    .end local v20    # "s2":Lorg/apache/xml/utils/XMLString;
    :cond_3
    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    #@5a
    move-result v9

    #@5b
    .line 528
    .local v9, "n":I
    const/4 v6, 0x0

    #@5c
    .local v6, "i":I
    :goto_2
    if-ge v6, v9, :cond_0

    #@5e
    .line 530
    invoke-virtual {v13, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@61
    move-result-object v22

    #@62
    check-cast v22, Lorg/apache/xml/utils/XMLString;

    #@64
    move-object/from16 v0, p2

    #@66
    move-object/from16 v1, v19

    #@68
    move-object/from16 v2, v22

    #@6a
    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/objects/Comparator;->compareStrings(Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/XMLString;)Z

    #@6d
    move-result v22

    #@6e
    if-eqz v22, :cond_4

    #@70
    .line 532
    const/16 v18, 0x1

    #@72
    .line 534
    goto :goto_0

    #@73
    .line 528
    :cond_4
    add-int/lit8 v6, v6, 0x1

    #@75
    goto :goto_2

    #@76
    .line 539
    .end local v6    # "i":I
    .end local v9    # "n":I
    .end local v19    # "s1":Lorg/apache/xml/utils/XMLString;
    :cond_5
    invoke-interface {v7}, Lorg/apache/xml/dtm/DTMIterator;->reset()V

    #@79
    .line 540
    invoke-interface {v8}, Lorg/apache/xml/dtm/DTMIterator;->reset()V

    #@7c
    .line 632
    .end local v7    # "list1":Lorg/apache/xml/dtm/DTMIterator;
    .end local v8    # "list2":Lorg/apache/xml/dtm/DTMIterator;
    .end local v11    # "node1":I
    .end local v18    # "result":Z
    :goto_3
    return v18

    #@7d
    .line 542
    .restart local v18    # "result":Z
    .restart local p1    # "obj2":Lorg/apache/xpath/objects/XObject;
    :cond_6
    const/16 v22, 0x1

    #@7f
    move/from16 v0, v22

    #@81
    move/from16 v1, v21

    #@83
    if-ne v0, v1, :cond_8

    #@85
    .line 551
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xpath/objects/XNodeSet;->bool()Z

    #@88
    move-result v22

    #@89
    if-eqz v22, :cond_7

    #@8b
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    #@8d
    .line 552
    .local v14, "num1":D
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/objects/XObject;->num()D

    #@90
    move-result-wide v16

    #@91
    .line 554
    .local v16, "num2":D
    move-object/from16 v0, p2

    #@93
    move-wide/from16 v1, v16

    #@95
    invoke-virtual {v0, v14, v15, v1, v2}, Lorg/apache/xpath/objects/Comparator;->compareNumbers(DD)Z

    #@98
    move-result v18

    #@99
    .local v18, "result":Z
    goto :goto_3

    #@9a
    .line 551
    .end local v14    # "num1":D
    .end local v16    # "num2":D
    .local v18, "result":Z
    :cond_7
    const-wide/16 v14, 0x0

    #@9c
    .restart local v14    # "num1":D
    goto :goto_4

    #@9d
    .line 556
    .end local v14    # "num1":D
    :cond_8
    const/16 v22, 0x2

    #@9f
    move/from16 v0, v22

    #@a1
    move/from16 v1, v21

    #@a3
    if-ne v0, v1, :cond_b

    #@a5
    .line 566
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;

    #@a8
    move-result-object v7

    #@a9
    .line 567
    .restart local v7    # "list1":Lorg/apache/xml/dtm/DTMIterator;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/objects/XObject;->num()D

    #@ac
    move-result-wide v16

    #@ad
    .line 570
    .restart local v16    # "num2":D
    :cond_9
    invoke-interface {v7}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    #@b0
    move-result v10

    #@b1
    .local v10, "node":I
    const/16 v22, -0x1

    #@b3
    move/from16 v0, v22

    #@b5
    if-eq v0, v10, :cond_a

    #@b7
    .line 572
    move-object/from16 v0, p0

    #@b9
    invoke-virtual {v0, v10}, Lorg/apache/xpath/objects/XNodeSet;->getNumberFromNode(I)D

    #@bc
    move-result-wide v14

    #@bd
    .line 574
    .restart local v14    # "num1":D
    move-object/from16 v0, p2

    #@bf
    move-wide/from16 v1, v16

    #@c1
    invoke-virtual {v0, v14, v15, v1, v2}, Lorg/apache/xpath/objects/Comparator;->compareNumbers(DD)Z

    #@c4
    move-result v22

    #@c5
    if-eqz v22, :cond_9

    #@c7
    .line 576
    const/16 v18, 0x1

    #@c9
    .line 581
    .end local v14    # "num1":D
    :cond_a
    invoke-interface {v7}, Lorg/apache/xml/dtm/DTMIterator;->reset()V

    #@cc
    goto :goto_3

    #@cd
    .line 583
    .end local v7    # "list1":Lorg/apache/xml/dtm/DTMIterator;
    .end local v10    # "node":I
    .end local v16    # "num2":D
    :cond_b
    const/16 v22, 0x5

    #@cf
    move/from16 v0, v22

    #@d1
    move/from16 v1, v21

    #@d3
    if-ne v0, v1, :cond_e

    #@d5
    .line 585
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    #@d8
    move-result-object v20

    #@d9
    .line 586
    .restart local v20    # "s2":Lorg/apache/xml/utils/XMLString;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;

    #@dc
    move-result-object v7

    #@dd
    .line 589
    .restart local v7    # "list1":Lorg/apache/xml/dtm/DTMIterator;
    :cond_c
    invoke-interface {v7}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    #@e0
    move-result v10

    #@e1
    .restart local v10    # "node":I
    const/16 v22, -0x1

    #@e3
    move/from16 v0, v22

    #@e5
    if-eq v0, v10, :cond_d

    #@e7
    .line 591
    move-object/from16 v0, p0

    #@e9
    invoke-virtual {v0, v10}, Lorg/apache/xpath/objects/XNodeSet;->getStringFromNode(I)Lorg/apache/xml/utils/XMLString;

    #@ec
    move-result-object v19

    #@ed
    .line 593
    .restart local v19    # "s1":Lorg/apache/xml/utils/XMLString;
    move-object/from16 v0, p2

    #@ef
    move-object/from16 v1, v19

    #@f1
    move-object/from16 v2, v20

    #@f3
    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/objects/Comparator;->compareStrings(Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/XMLString;)Z

    #@f6
    move-result v22

    #@f7
    if-eqz v22, :cond_c

    #@f9
    .line 595
    const/16 v18, 0x1

    #@fb
    .line 600
    .end local v19    # "s1":Lorg/apache/xml/utils/XMLString;
    :cond_d
    invoke-interface {v7}, Lorg/apache/xml/dtm/DTMIterator;->reset()V

    #@fe
    goto/16 :goto_3

    #@100
    .line 602
    .end local v7    # "list1":Lorg/apache/xml/dtm/DTMIterator;
    .end local v10    # "node":I
    .end local v20    # "s2":Lorg/apache/xml/utils/XMLString;
    :cond_e
    const/16 v22, 0x3

    #@102
    move/from16 v0, v22

    #@104
    move/from16 v1, v21

    #@106
    if-ne v0, v1, :cond_11

    #@108
    .line 611
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    #@10b
    move-result-object v20

    #@10c
    .line 612
    .restart local v20    # "s2":Lorg/apache/xml/utils/XMLString;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;

    #@10f
    move-result-object v7

    #@110
    .line 615
    .restart local v7    # "list1":Lorg/apache/xml/dtm/DTMIterator;
    :cond_f
    invoke-interface {v7}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    #@113
    move-result v10

    #@114
    .restart local v10    # "node":I
    const/16 v22, -0x1

    #@116
    move/from16 v0, v22

    #@118
    if-eq v0, v10, :cond_10

    #@11a
    .line 617
    move-object/from16 v0, p0

    #@11c
    invoke-virtual {v0, v10}, Lorg/apache/xpath/objects/XNodeSet;->getStringFromNode(I)Lorg/apache/xml/utils/XMLString;

    #@11f
    move-result-object v19

    #@120
    .line 618
    .restart local v19    # "s1":Lorg/apache/xml/utils/XMLString;
    move-object/from16 v0, p2

    #@122
    move-object/from16 v1, v19

    #@124
    move-object/from16 v2, v20

    #@126
    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/objects/Comparator;->compareStrings(Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/XMLString;)Z

    #@129
    move-result v22

    #@12a
    if-eqz v22, :cond_f

    #@12c
    .line 620
    const/16 v18, 0x1

    #@12e
    .line 625
    .end local v19    # "s1":Lorg/apache/xml/utils/XMLString;
    :cond_10
    invoke-interface {v7}, Lorg/apache/xml/dtm/DTMIterator;->reset()V

    #@131
    goto/16 :goto_3

    #@133
    .line 629
    .end local v7    # "list1":Lorg/apache/xml/dtm/DTMIterator;
    .end local v10    # "node":I
    .end local v20    # "s2":Lorg/apache/xml/utils/XMLString;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xpath/objects/XNodeSet;->num()D

    #@136
    move-result-wide v22

    #@137
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/objects/XObject;->num()D

    #@13a
    move-result-wide v24

    #@13b
    move-object/from16 v0, p2

    #@13d
    move-wide/from16 v1, v22

    #@13f
    move-wide/from16 v3, v24

    #@141
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xpath/objects/Comparator;->compareNumbers(DD)Z

    #@144
    move-result v18

    #@145
    .local v18, "result":Z
    goto/16 :goto_3
.end method

.method public dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V
    .locals 3
    .param p1, "ch"    # Lorg/xml/sax/ContentHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 239
    invoke-virtual {p0, v2}, Lorg/apache/xpath/objects/XNodeSet;->item(I)I

    #@4
    move-result v0

    #@5
    .line 241
    .local v0, "node":I
    const/4 v1, -0x1

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 243
    iget-object v1, p0, Lorg/apache/xpath/objects/XNodeSet;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    #@a
    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@d
    move-result-object v1

    #@e
    invoke-interface {v1, v0, p1, v2}, Lorg/apache/xml/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    #@11
    .line 237
    :cond_0
    return-void
.end method

.method public equals(Lorg/apache/xpath/objects/XObject;)Z
    .locals 2
    .param p1, "obj2"    # Lorg/apache/xpath/objects/XObject;

    #@0
    .prologue
    .line 705
    :try_start_0
    sget-object v1, Lorg/apache/xpath/objects/XNodeSet;->S_EQ:Lorg/apache/xpath/objects/EqualComparator;

    #@2
    invoke-virtual {p0, p1, v1}, Lorg/apache/xpath/objects/XNodeSet;->compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 708
    :catch_0
    move-exception v0

    #@8
    .line 709
    .local v0, "te":Ljavax/xml/transform/TransformerException;
    new-instance v1, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@a
    invoke-direct {v1, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@d
    throw v1
.end method

.method public getFresh()Lorg/apache/xpath/objects/XObject;
    .locals 3

    #@0
    .prologue
    .line 409
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->hasCache()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 410
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Lorg/apache/xpath/objects/XObject;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    return-object v1

    #@d
    .line 412
    :cond_0
    return-object p0

    #@e
    .line 415
    :catch_0
    move-exception v0

    #@f
    .line 416
    .local v0, "cnse":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@11
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@18
    throw v1
.end method

.method public getNumberFromNode(I)D
    .locals 4
    .param p1, "n"    # I

    #@0
    .prologue
    .line 150
    iget-object v1, p0, Lorg/apache/xpath/objects/XNodeSet;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    #@2
    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v1, p1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    #@9
    move-result-object v0

    #@a
    .line 151
    .local v0, "xstr":Lorg/apache/xml/utils/XMLString;
    invoke-interface {v0}, Lorg/apache/xml/utils/XMLString;->toDouble()D

    #@d
    move-result-wide v2

    #@e
    return-wide v2
.end method

.method public getStringFromNode(I)Lorg/apache/xml/utils/XMLString;
    .locals 1
    .param p1, "n"    # I

    #@0
    .prologue
    .line 215
    const/4 v0, -0x1

    #@1
    if-eq v0, p1, :cond_0

    #@3
    .line 217
    iget-object v0, p0, Lorg/apache/xpath/objects/XNodeSet;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    #@5
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    #@c
    move-result-object v0

    #@d
    return-object v0

    #@e
    .line 221
    :cond_0
    sget-object v0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    #@10
    return-object v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 127
    const/4 v0, 0x4

    #@1
    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 138
    const-string/jumbo v0, "#NODESET"

    #@3
    return-object v0
.end method

.method public greaterThan(Lorg/apache/xpath/objects/XObject;)Z
    .locals 1
    .param p1, "obj2"    # Lorg/apache/xpath/objects/XObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 674
    sget-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_GT:Lorg/apache/xpath/objects/GreaterThanComparator;

    #@2
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XNodeSet;->compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public greaterThanOrEqual(Lorg/apache/xpath/objects/XObject;)Z
    .locals 1
    .param p1, "obj2"    # Lorg/apache/xpath/objects/XObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 689
    sget-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_GTE:Lorg/apache/xpath/objects/GreaterThanOrEqualComparator;

    #@2
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XNodeSet;->compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public iter()Lorg/apache/xml/dtm/DTMIterator;
    .locals 3

    #@0
    .prologue
    .line 389
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->hasCache()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 390
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v1

    #@a
    return-object v1

    #@b
    .line 392
    :cond_0
    return-object p0

    #@c
    .line 395
    :catch_0
    move-exception v0

    #@d
    .line 396
    .local v0, "cnse":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@f
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1
.end method

.method public iterRaw()Lorg/apache/xml/dtm/DTMIterator;
    .locals 0

    #@0
    .prologue
    .line 373
    return-object p0
.end method

.method public lessThan(Lorg/apache/xpath/objects/XObject;)Z
    .locals 1
    .param p1, "obj2"    # Lorg/apache/xpath/objects/XObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 646
    sget-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_LT:Lorg/apache/xpath/objects/LessThanComparator;

    #@2
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XNodeSet;->compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public lessThanOrEqual(Lorg/apache/xpath/objects/XObject;)Z
    .locals 1
    .param p1, "obj2"    # Lorg/apache/xpath/objects/XObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 660
    sget-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_LTE:Lorg/apache/xpath/objects/LessThanOrEqualComparator;

    #@2
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XNodeSet;->compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public mutableNodeset()Lorg/apache/xpath/NodeSetDTM;
    .locals 2

    #@0
    .prologue
    .line 429
    iget-object v1, p0, Lorg/apache/xpath/objects/XNodeSet;->m_obj:Ljava/lang/Object;

    #@2
    instance-of v1, v1, Lorg/apache/xpath/NodeSetDTM;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 431
    iget-object v0, p0, Lorg/apache/xpath/objects/XNodeSet;->m_obj:Ljava/lang/Object;

    #@8
    check-cast v0, Lorg/apache/xpath/NodeSetDTM;

    #@a
    .line 440
    .local v0, "mnl":Lorg/apache/xpath/NodeSetDTM;
    :goto_0
    return-object v0

    #@b
    .line 435
    .end local v0    # "mnl":Lorg/apache/xpath/NodeSetDTM;
    :cond_0
    new-instance v0, Lorg/apache/xpath/NodeSetDTM;

    #@d
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->iter()Lorg/apache/xml/dtm/DTMIterator;

    #@10
    move-result-object v1

    #@11
    invoke-direct {v0, v1}, Lorg/apache/xpath/NodeSetDTM;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    #@14
    .line 436
    .restart local v0    # "mnl":Lorg/apache/xpath/NodeSetDTM;
    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->setObject(Ljava/lang/Object;)V

    #@17
    .line 437
    const/4 v1, 0x0

    #@18
    invoke-virtual {p0, v1}, Lorg/apache/xpath/objects/XNodeSet;->setCurrentPos(I)V

    #@1b
    goto :goto_0
.end method

.method public nodelist()Lorg/w3c/dom/NodeList;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 346
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMNodeList;

    #@2
    invoke-direct {v1, p0}, Lorg/apache/xml/dtm/ref/DTMNodeList;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    #@5
    .line 351
    .local v1, "nodelist":Lorg/apache/xml/dtm/ref/DTMNodeList;
    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMNodeList;->getDTMIterator()Lorg/apache/xml/dtm/DTMIterator;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lorg/apache/xpath/objects/XNodeSet;

    #@b
    .line 352
    .local v0, "clone":Lorg/apache/xpath/objects/XNodeSet;
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->getVector()Lorg/apache/xml/utils/NodeVector;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {p0, v2}, Lorg/apache/xpath/objects/XNodeSet;->SetVector(Lorg/apache/xml/utils/NodeVector;)V

    #@12
    .line 353
    return-object v1
.end method

.method public nodeset()Lorg/w3c/dom/traversal/NodeIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 334
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;

    #@2
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->iter()Lorg/apache/xml/dtm/DTMIterator;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/ref/DTMNodeIterator;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    #@9
    return-object v0
.end method

.method public notEquals(Lorg/apache/xpath/objects/XObject;)Z
    .locals 1
    .param p1, "obj2"    # Lorg/apache/xpath/objects/XObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 724
    sget-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_NEQ:Lorg/apache/xpath/objects/NotEqualComparator;

    #@2
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XNodeSet;->compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public num()D
    .locals 4

    #@0
    .prologue
    .line 163
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0, v1}, Lorg/apache/xpath/objects/XNodeSet;->item(I)I

    #@4
    move-result v0

    #@5
    .line 164
    .local v0, "node":I
    const/4 v1, -0x1

    #@6
    if-eq v0, v1, :cond_0

    #@8
    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->getNumberFromNode(I)D

    #@b
    move-result-wide v2

    #@c
    :goto_0
    return-wide v2

    #@d
    :cond_0
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    #@f
    goto :goto_0
.end method

.method public numWithSideEffects()D
    .locals 4

    #@0
    .prologue
    .line 176
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->nextNode()I

    #@3
    move-result v0

    #@4
    .line 178
    .local v0, "node":I
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->getNumberFromNode(I)D

    #@a
    move-result-wide v2

    #@b
    :goto_0
    return-wide v2

    #@c
    :cond_0
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    #@e
    goto :goto_0
.end method

.method public object()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 291
    iget-object v0, p0, Lorg/apache/xpath/objects/XNodeSet;->m_obj:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 292
    return-object p0

    #@5
    .line 294
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/objects/XNodeSet;->m_obj:Ljava/lang/Object;

    #@7
    return-object v0
.end method

.method public release(Lorg/apache/xml/dtm/DTMIterator;)V
    .locals 0
    .param p1, "iter"    # Lorg/apache/xml/dtm/DTMIterator;

    #@0
    .prologue
    .line 376
    return-void
.end method

.method public str()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 279
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0, v1}, Lorg/apache/xpath/objects/XNodeSet;->item(I)I

    #@4
    move-result v0

    #@5
    .line 280
    .local v0, "node":I
    const/4 v1, -0x1

    #@6
    if-eq v0, v1, :cond_0

    #@8
    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->getStringFromNode(I)Lorg/apache/xml/utils/XMLString;

    #@b
    move-result-object v1

    #@c
    invoke-interface {v1}, Lorg/apache/xml/utils/XMLString;->toString()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    :goto_0
    return-object v1

    #@11
    :cond_0
    const-string/jumbo v1, ""

    #@14
    goto :goto_0
.end method

.method public xstr()Lorg/apache/xml/utils/XMLString;
    .locals 2

    #@0
    .prologue
    .line 255
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0, v1}, Lorg/apache/xpath/objects/XNodeSet;->item(I)I

    #@4
    move-result v0

    #@5
    .line 256
    .local v0, "node":I
    const/4 v1, -0x1

    #@6
    if-eq v0, v1, :cond_0

    #@8
    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->getStringFromNode(I)Lorg/apache/xml/utils/XMLString;

    #@b
    move-result-object v1

    #@c
    :goto_0
    return-object v1

    #@d
    :cond_0
    sget-object v1, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    #@f
    goto :goto_0
.end method
