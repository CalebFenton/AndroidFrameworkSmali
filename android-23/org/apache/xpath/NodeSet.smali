.class public Lorg/apache/xpath/NodeSet;
.super Ljava/lang/Object;
.source "NodeSet.java"

# interfaces
.implements Lorg/w3c/dom/NodeList;
.implements Lorg/w3c/dom/traversal/NodeIterator;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/xpath/axes/ContextNodeList;


# instance fields
.field private m_blocksize:I

.field protected transient m_cacheNodes:Z

.field protected m_firstFree:I

.field private transient m_last:I

.field m_map:[Lorg/w3c/dom/Node;

.field private m_mapSize:I

.field protected transient m_mutable:Z

.field protected transient m_next:I


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 718
    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    #@7
    .line 770
    iput-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    #@9
    .line 774
    iput-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_cacheNodes:Z

    #@b
    .line 810
    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_last:I

    #@d
    .line 832
    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@f
    .line 68
    const/16 v0, 0x20

    #@11
    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    #@13
    .line 69
    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    #@15
    .line 66
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "blocksize"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 718
    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    #@7
    .line 770
    iput-boolean v1, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    #@9
    .line 774
    iput-boolean v1, p0, Lorg/apache/xpath/NodeSet;->m_cacheNodes:Z

    #@b
    .line 810
    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_last:I

    #@d
    .line 832
    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@f
    .line 79
    iput p1, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    #@11
    .line 80
    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    #@13
    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/apache/xpath/NodeSet;)V
    .locals 1
    .param p1, "nodelist"    # Lorg/apache/xpath/NodeSet;

    #@0
    .prologue
    .line 106
    const/16 v0, 0x20

    #@2
    invoke-direct {p0, v0}, Lorg/apache/xpath/NodeSet;-><init>(I)V

    #@5
    .line 108
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->addNodes(Lorg/w3c/dom/traversal/NodeIterator;)V

    #@8
    .line 103
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 133
    const/16 v0, 0x20

    #@2
    invoke-direct {p0, v0}, Lorg/apache/xpath/NodeSet;-><init>(I)V

    #@5
    .line 135
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->addNode(Lorg/w3c/dom/Node;)V

    #@8
    .line 130
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/NodeList;)V
    .locals 1
    .param p1, "nodelist"    # Lorg/w3c/dom/NodeList;

    #@0
    .prologue
    .line 92
    const/16 v0, 0x20

    #@2
    invoke-direct {p0, v0}, Lorg/apache/xpath/NodeSet;-><init>(I)V

    #@5
    .line 94
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->addNodes(Lorg/w3c/dom/NodeList;)V

    #@8
    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/traversal/NodeIterator;)V
    .locals 1
    .param p1, "ni"    # Lorg/w3c/dom/traversal/NodeIterator;

    #@0
    .prologue
    .line 120
    const/16 v0, 0x20

    #@2
    invoke-direct {p0, v0}, Lorg/apache/xpath/NodeSet;-><init>(I)V

    #@5
    .line 122
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->addNodes(Lorg/w3c/dom/traversal/NodeIterator;)V

    #@8
    .line 117
    return-void
.end method

.method private addNodesInDocOrder(IIILorg/w3c/dom/NodeList;Lorg/apache/xpath/XPathContext;)Z
    .locals 11
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "testIndex"    # I
    .param p4, "nodelist"    # Lorg/w3c/dom/NodeList;
    .param p5, "support"    # Lorg/apache/xpath/XPathContext;

    #@0
    .prologue
    .line 575
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 576
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "ER_NODESET_NOT_MUTABLE"

    #@9
    const/4 v3, 0x0

    #@a
    invoke-static {v1, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 578
    :cond_0
    const/4 v9, 0x0

    #@13
    .line 580
    .local v9, "foundit":Z
    invoke-interface {p4, p3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@16
    move-result-object v10

    #@17
    .line 582
    .local v10, "node":Lorg/w3c/dom/Node;
    move v2, p2

    #@18
    .local v2, "i":I
    :goto_0
    if-lt v2, p1, :cond_1

    #@1a
    .line 584
    invoke-virtual {p0, v2}, Lorg/apache/xpath/NodeSet;->elementAt(I)Lorg/w3c/dom/Node;

    #@1d
    move-result-object v7

    #@1e
    .line 586
    .local v7, "child":Lorg/w3c/dom/Node;
    if-ne v7, v10, :cond_3

    #@20
    .line 588
    const/4 v2, -0x2

    #@21
    .line 614
    .end local v7    # "child":Lorg/w3c/dom/Node;
    :cond_1
    :goto_1
    const/4 v0, -0x1

    #@22
    if-ne v2, v0, :cond_2

    #@24
    .line 616
    const/4 v0, 0x0

    #@25
    invoke-virtual {p0, v10, v0}, Lorg/apache/xpath/NodeSet;->insertElementAt(Lorg/w3c/dom/Node;I)V

    #@28
    .line 619
    :cond_2
    return v9

    #@29
    .line 593
    .restart local v7    # "child":Lorg/w3c/dom/Node;
    :cond_3
    invoke-static {v10, v7}, Lorg/apache/xml/utils/DOM2Helper;->isNodeAfter(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    #@2c
    move-result v0

    #@2d
    if-nez v0, :cond_4

    #@2f
    .line 595
    add-int/lit8 v0, v2, 0x1

    #@31
    invoke-virtual {p0, v10, v0}, Lorg/apache/xpath/NodeSet;->insertElementAt(Lorg/w3c/dom/Node;I)V

    #@34
    .line 597
    add-int/lit8 p3, p3, -0x1

    #@36
    .line 599
    if-lez p3, :cond_1

    #@38
    .line 601
    const/4 v1, 0x0

    #@39
    move-object v0, p0

    #@3a
    move v3, p3

    #@3b
    move-object v4, p4

    #@3c
    move-object/from16 v5, p5

    #@3e
    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/NodeSet;->addNodesInDocOrder(IIILorg/w3c/dom/NodeList;Lorg/apache/xpath/XPathContext;)Z

    #@41
    move-result v8

    #@42
    .line 604
    .local v8, "foundPrev":Z
    if-nez v8, :cond_1

    #@44
    .line 606
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSet;->size()I

    #@47
    move-result v0

    #@48
    add-int/lit8 v3, v0, -0x1

    #@4a
    move-object v1, p0

    #@4b
    move v4, p3

    #@4c
    move-object v5, p4

    #@4d
    move-object/from16 v6, p5

    #@4f
    invoke-direct/range {v1 .. v6}, Lorg/apache/xpath/NodeSet;->addNodesInDocOrder(IIILorg/w3c/dom/NodeList;Lorg/apache/xpath/XPathContext;)Z

    #@52
    goto :goto_1

    #@53
    .line 582
    .end local v8    # "foundPrev":Z
    :cond_4
    add-int/lit8 v2, v2, -0x1

    #@55
    goto :goto_0
.end method


# virtual methods
.method public addElement(Lorg/w3c/dom/Node;)V
    .locals 5
    .param p1, "value"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 877
    iget-boolean v1, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    #@4
    if-nez v1, :cond_0

    #@6
    .line 878
    new-instance v1, Ljava/lang/RuntimeException;

    #@8
    const-string/jumbo v2, "ER_NODESET_NOT_MUTABLE"

    #@b
    invoke-static {v2, v4}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 880
    :cond_0
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@15
    add-int/lit8 v1, v1, 0x1

    #@17
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    #@19
    if-lt v1, v2, :cond_1

    #@1b
    .line 882
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@1d
    if-nez v1, :cond_2

    #@1f
    .line 884
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    #@21
    new-array v1, v1, [Lorg/w3c/dom/Node;

    #@23
    iput-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@25
    .line 885
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    #@27
    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    #@29
    .line 899
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@2b
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@2d
    aput-object p1, v1, v2

    #@2f
    .line 901
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@31
    add-int/lit8 v1, v1, 0x1

    #@33
    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@35
    .line 875
    return-void

    #@36
    .line 889
    :cond_2
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    #@38
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    #@3a
    add-int/2addr v1, v2

    #@3b
    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    #@3d
    .line 891
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    #@3f
    new-array v0, v1, [Lorg/w3c/dom/Node;

    #@41
    .line 893
    .local v0, "newMap":[Lorg/w3c/dom/Node;
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@43
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@45
    add-int/lit8 v2, v2, 0x1

    #@47
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@4a
    .line 895
    iput-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@4c
    goto :goto_0
.end method

.method public addNode(Lorg/w3c/dom/Node;)V
    .locals 3
    .param p1, "n"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 382
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 383
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "ER_NODESET_NOT_MUTABLE"

    #@9
    const/4 v2, 0x0

    #@a
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 385
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->addElement(Lorg/w3c/dom/Node;)V

    #@15
    .line 379
    return-void
.end method

.method public addNodeInDocOrder(Lorg/w3c/dom/Node;Lorg/apache/xpath/XPathContext;)I
    .locals 3
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "support"    # Lorg/apache/xpath/XPathContext;

    #@0
    .prologue
    .line 709
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 710
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "ER_NODESET_NOT_MUTABLE"

    #@9
    const/4 v2, 0x0

    #@a
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 712
    :cond_0
    const/4 v0, 0x1

    #@13
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/xpath/NodeSet;->addNodeInDocOrder(Lorg/w3c/dom/Node;ZLorg/apache/xpath/XPathContext;)I

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public addNodeInDocOrder(Lorg/w3c/dom/Node;ZLorg/apache/xpath/XPathContext;)I
    .locals 8
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "test"    # Z
    .param p3, "support"    # Lorg/apache/xpath/XPathContext;

    #@0
    .prologue
    .line 635
    iget-boolean v5, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    #@2
    if-nez v5, :cond_0

    #@4
    .line 636
    new-instance v5, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v6, "ER_NODESET_NOT_MUTABLE"

    #@9
    const/4 v7, 0x0

    #@a
    invoke-static {v6, v7}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d
    move-result-object v6

    #@e
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    throw v5

    #@12
    .line 638
    :cond_0
    const/4 v3, -0x1

    #@13
    .line 640
    .local v3, "insertIndex":I
    if-eqz p2, :cond_4

    #@15
    .line 646
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSet;->size()I

    #@18
    move-result v4

    #@19
    .line 648
    .local v4, "size":I
    add-int/lit8 v2, v4, -0x1

    #@1b
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    #@1d
    .line 650
    invoke-virtual {p0, v2}, Lorg/apache/xpath/NodeSet;->elementAt(I)Lorg/w3c/dom/Node;

    #@20
    move-result-object v0

    #@21
    .line 652
    .local v0, "child":Lorg/w3c/dom/Node;
    if-ne v0, p1, :cond_3

    #@23
    .line 654
    const/4 v2, -0x2

    #@24
    .line 665
    .end local v0    # "child":Lorg/w3c/dom/Node;
    :cond_1
    const/4 v5, -0x2

    #@25
    if-eq v2, v5, :cond_2

    #@27
    .line 667
    add-int/lit8 v3, v2, 0x1

    #@29
    .line 669
    invoke-virtual {p0, p1, v3}, Lorg/apache/xpath/NodeSet;->insertElementAt(Lorg/w3c/dom/Node;I)V

    #@2c
    .line 693
    .end local v4    # "size":I
    :cond_2
    :goto_1
    return v3

    #@2d
    .line 659
    .restart local v0    # "child":Lorg/w3c/dom/Node;
    .restart local v4    # "size":I
    :cond_3
    invoke-static {p1, v0}, Lorg/apache/xml/utils/DOM2Helper;->isNodeAfter(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    #@30
    move-result v5

    #@31
    if-eqz v5, :cond_1

    #@33
    .line 648
    add-int/lit8 v2, v2, -0x1

    #@35
    goto :goto_0

    #@36
    .line 674
    .end local v0    # "child":Lorg/w3c/dom/Node;
    .end local v2    # "i":I
    .end local v4    # "size":I
    :cond_4
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSet;->size()I

    #@39
    move-result v3

    #@3a
    .line 676
    const/4 v1, 0x0

    #@3b
    .line 678
    .local v1, "foundit":Z
    const/4 v2, 0x0

    #@3c
    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v3, :cond_5

    #@3e
    .line 680
    invoke-virtual {p0, v2}, Lorg/apache/xpath/NodeSet;->item(I)Lorg/w3c/dom/Node;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v5

    #@46
    if-eqz v5, :cond_6

    #@48
    .line 682
    const/4 v1, 0x1

    #@49
    .line 688
    :cond_5
    if-nez v1, :cond_2

    #@4b
    .line 689
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->addElement(Lorg/w3c/dom/Node;)V

    #@4e
    goto :goto_1

    #@4f
    .line 678
    :cond_6
    add-int/lit8 v2, v2, 0x1

    #@51
    goto :goto_2
.end method

.method public addNodes(Lorg/apache/xpath/NodeSet;)V
    .locals 3
    .param p1, "ns"    # Lorg/apache/xpath/NodeSet;

    #@0
    .prologue
    .line 474
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 475
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "ER_NODESET_NOT_MUTABLE"

    #@9
    const/4 v2, 0x0

    #@a
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 477
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->addNodes(Lorg/w3c/dom/traversal/NodeIterator;)V

    #@15
    .line 471
    return-void
.end method

.method public addNodes(Lorg/w3c/dom/NodeList;)V
    .locals 6
    .param p1, "nodelist"    # Lorg/w3c/dom/NodeList;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 434
    iget-boolean v3, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    #@3
    if-nez v3, :cond_0

    #@5
    .line 435
    new-instance v3, Ljava/lang/RuntimeException;

    #@7
    const-string/jumbo v4, "ER_NODESET_NOT_MUTABLE"

    #@a
    invoke-static {v4, v5}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d
    move-result-object v4

    #@e
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    throw v3

    #@12
    .line 437
    :cond_0
    if-eqz p1, :cond_2

    #@14
    .line 439
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    #@17
    move-result v1

    #@18
    .line 441
    .local v1, "nChildren":I
    const/4 v0, 0x0

    #@19
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@1b
    .line 443
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@1e
    move-result-object v2

    #@1f
    .line 445
    .local v2, "obj":Lorg/w3c/dom/Node;
    if-eqz v2, :cond_1

    #@21
    .line 447
    invoke-virtual {p0, v2}, Lorg/apache/xpath/NodeSet;->addElement(Lorg/w3c/dom/Node;)V

    #@24
    .line 441
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 431
    .end local v0    # "i":I
    .end local v1    # "nChildren":I
    .end local v2    # "obj":Lorg/w3c/dom/Node;
    :cond_2
    return-void
.end method

.method public addNodes(Lorg/w3c/dom/traversal/NodeIterator;)V
    .locals 4
    .param p1, "iterator"    # Lorg/w3c/dom/traversal/NodeIterator;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 491
    iget-boolean v1, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 492
    new-instance v1, Ljava/lang/RuntimeException;

    #@7
    const-string/jumbo v2, "ER_NODESET_NOT_MUTABLE"

    #@a
    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 494
    :cond_0
    if-eqz p1, :cond_1

    #@14
    .line 498
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    #@17
    move-result-object v0

    #@18
    .local v0, "obj":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_1

    #@1a
    .line 500
    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSet;->addElement(Lorg/w3c/dom/Node;)V

    #@1d
    goto :goto_0

    #@1e
    .line 488
    .end local v0    # "obj":Lorg/w3c/dom/Node;
    :cond_1
    return-void
.end method

.method public addNodesInDocOrder(Lorg/w3c/dom/NodeList;Lorg/apache/xpath/XPathContext;)V
    .locals 6
    .param p1, "nodelist"    # Lorg/w3c/dom/NodeList;
    .param p2, "support"    # Lorg/apache/xpath/XPathContext;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 519
    iget-boolean v3, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    #@3
    if-nez v3, :cond_0

    #@5
    .line 520
    new-instance v3, Ljava/lang/RuntimeException;

    #@7
    const-string/jumbo v4, "ER_NODESET_NOT_MUTABLE"

    #@a
    invoke-static {v4, v5}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d
    move-result-object v4

    #@e
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    throw v3

    #@12
    .line 522
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    #@15
    move-result v1

    #@16
    .line 524
    .local v1, "nChildren":I
    const/4 v0, 0x0

    #@17
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@19
    .line 526
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@1c
    move-result-object v2

    #@1d
    .line 528
    .local v2, "node":Lorg/w3c/dom/Node;
    if-eqz v2, :cond_1

    #@1f
    .line 530
    invoke-virtual {p0, v2, p2}, Lorg/apache/xpath/NodeSet;->addNodeInDocOrder(Lorg/w3c/dom/Node;Lorg/apache/xpath/XPathContext;)I

    #@22
    .line 524
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 516
    .end local v2    # "node":Lorg/w3c/dom/Node;
    :cond_2
    return-void
.end method

.method public addNodesInDocOrder(Lorg/w3c/dom/traversal/NodeIterator;Lorg/apache/xpath/XPathContext;)V
    .locals 4
    .param p1, "iterator"    # Lorg/w3c/dom/traversal/NodeIterator;
    .param p2, "support"    # Lorg/apache/xpath/XPathContext;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 547
    iget-boolean v1, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 548
    new-instance v1, Ljava/lang/RuntimeException;

    #@7
    const-string/jumbo v2, "ER_NODESET_NOT_MUTABLE"

    #@a
    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 552
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    #@15
    move-result-object v0

    #@16
    .local v0, "node":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_1

    #@18
    .line 554
    invoke-virtual {p0, v0, p2}, Lorg/apache/xpath/NodeSet;->addNodeInDocOrder(Lorg/w3c/dom/Node;Lorg/apache/xpath/XPathContext;)I

    #@1b
    goto :goto_0

    #@1c
    .line 544
    :cond_1
    return-void
.end method

.method public appendNodes(Lorg/apache/xpath/NodeSet;)V
    .locals 6
    .param p1, "nodes"    # Lorg/apache/xpath/NodeSet;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1141
    invoke-virtual {p1}, Lorg/apache/xpath/NodeSet;->size()I

    #@4
    move-result v0

    #@5
    .line 1143
    .local v0, "nNodes":I
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 1145
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    #@b
    add-int/2addr v2, v0

    #@c
    iput v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    #@e
    .line 1146
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    #@10
    new-array v2, v2, [Lorg/w3c/dom/Node;

    #@12
    iput-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@14
    .line 1159
    :cond_0
    :goto_0
    iget-object v2, p1, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@16
    iget-object v3, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@18
    iget v4, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@1a
    invoke-static {v2, v5, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1d
    .line 1161
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@1f
    add-int/2addr v2, v0

    #@20
    iput v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@22
    .line 1138
    return-void

    #@23
    .line 1148
    :cond_1
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@25
    add-int/2addr v2, v0

    #@26
    iget v3, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    #@28
    if-lt v2, v3, :cond_0

    #@2a
    .line 1150
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    #@2c
    iget v3, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    #@2e
    add-int/2addr v3, v0

    #@2f
    add-int/2addr v2, v3

    #@30
    iput v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    #@32
    .line 1152
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    #@34
    new-array v1, v2, [Lorg/w3c/dom/Node;

    #@36
    .line 1154
    .local v1, "newMap":[Lorg/w3c/dom/Node;
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@38
    iget v3, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@3a
    add-int/2addr v3, v0

    #@3b
    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3e
    .line 1156
    iput-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@40
    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 848
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Lorg/apache/xpath/NodeSet;

    #@7
    .line 850
    .local v0, "clone":Lorg/apache/xpath/NodeSet;
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@9
    if-eqz v1, :cond_0

    #@b
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@d
    iget-object v2, v0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@f
    if-ne v1, v2, :cond_0

    #@11
    .line 852
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@13
    array-length v1, v1

    #@14
    new-array v1, v1, [Lorg/w3c/dom/Node;

    #@16
    iput-object v1, v0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@18
    .line 854
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@1a
    iget-object v2, v0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@1c
    iget-object v3, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@1e
    array-length v3, v3

    #@1f
    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@22
    .line 857
    :cond_0
    return-object v0
.end method

.method public cloneWithReset()Lorg/w3c/dom/traversal/NodeIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSet;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lorg/apache/xpath/NodeSet;

    #@6
    .line 162
    .local v0, "clone":Lorg/apache/xpath/NodeSet;
    invoke-virtual {v0}, Lorg/apache/xpath/NodeSet;->reset()V

    #@9
    .line 164
    return-object v0
.end method

.method public contains(Lorg/w3c/dom/Node;)Z
    .locals 4
    .param p1, "s"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1297
    const/4 v2, -0x1

    #@2
    invoke-virtual {p0, v2}, Lorg/apache/xpath/NodeSet;->runTo(I)V

    #@5
    .line 1299
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@7
    if-nez v2, :cond_0

    #@9
    .line 1300
    return v3

    #@a
    .line 1302
    :cond_0
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@d
    if-ge v0, v2, :cond_2

    #@f
    .line 1304
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@11
    aget-object v1, v2, v0

    #@13
    .line 1306
    .local v1, "node":Lorg/w3c/dom/Node;
    if-eqz v1, :cond_1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 1307
    const/4 v2, 0x1

    #@1c
    return v2

    #@1d
    .line 1302
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 1310
    .end local v1    # "node":Lorg/w3c/dom/Node;
    :cond_2
    return v3
.end method

.method public detach()V
    .locals 0

    #@0
    .prologue
    .line 295
    return-void
.end method

.method public elementAt(I)Lorg/w3c/dom/Node;
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1282
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1283
    return-object v1

    #@6
    .line 1285
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@8
    aget-object v0, v0, p1

    #@a
    return-object v0
.end method

.method public getCurrentNode()Lorg/w3c/dom/Node;
    .locals 5

    #@0
    .prologue
    .line 759
    iget-boolean v2, p0, Lorg/apache/xpath/NodeSet;->m_cacheNodes:Z

    #@2
    if-nez v2, :cond_0

    #@4
    .line 760
    new-instance v2, Ljava/lang/RuntimeException;

    #@6
    .line 761
    const-string/jumbo v3, "ER_NODESET_CANNOT_INDEX"

    #@9
    const/4 v4, 0x0

    #@a
    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    .line 760
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    throw v2

    #@12
    .line 763
    :cond_0
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    #@14
    .line 764
    .local v1, "saved":I
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    #@16
    iget v3, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@18
    if-ge v2, v3, :cond_1

    #@1a
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    #@1c
    invoke-virtual {p0, v2}, Lorg/apache/xpath/NodeSet;->elementAt(I)Lorg/w3c/dom/Node;

    #@1f
    move-result-object v0

    #@20
    .line 765
    :goto_0
    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    #@22
    .line 766
    return-object v0

    #@23
    .line 764
    :cond_1
    const/4 v0, 0x0

    #@24
    .local v0, "n":Lorg/w3c/dom/Node;
    goto :goto_0
.end method

.method public getCurrentPos()I
    .locals 1

    #@0
    .prologue
    .line 730
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    #@2
    return v0
.end method

.method public getExpandEntityReferences()Z
    .locals 1

    #@0
    .prologue
    .line 228
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getFilter()Lorg/w3c/dom/traversal/NodeFilter;
    .locals 1

    #@0
    .prologue
    .line 207
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getLast()I
    .locals 1

    #@0
    .prologue
    .line 814
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_last:I

    #@2
    return v0
.end method

.method public getLength()I
    .locals 1

    #@0
    .prologue
    .line 366
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSet;->runTo(I)V

    #@4
    .line 368
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSet;->size()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getRoot()Lorg/w3c/dom/Node;
    .locals 1

    #@0
    .prologue
    .line 144
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getShouldCacheNodes()Z
    .locals 1

    #@0
    .prologue
    .line 784
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_cacheNodes:Z

    #@2
    return v0
.end method

.method public getWhatToShow()I
    .locals 1

    #@0
    .prologue
    .line 189
    const/16 v0, -0x11

    #@2
    return v0
.end method

.method public indexOf(Lorg/w3c/dom/Node;)I
    .locals 4
    .param p1, "elem"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 1354
    invoke-virtual {p0, v3}, Lorg/apache/xpath/NodeSet;->runTo(I)V

    #@4
    .line 1356
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@6
    if-nez v2, :cond_0

    #@8
    .line 1357
    return v3

    #@9
    .line 1359
    :cond_0
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@c
    if-ge v0, v2, :cond_2

    #@e
    .line 1361
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@10
    aget-object v1, v2, v0

    #@12
    .line 1363
    .local v1, "node":Lorg/w3c/dom/Node;
    if-eqz v1, :cond_1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_1

    #@1a
    .line 1364
    return v0

    #@1b
    .line 1359
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1367
    .end local v1    # "node":Lorg/w3c/dom/Node;
    :cond_2
    return v3
.end method

.method public indexOf(Lorg/w3c/dom/Node;I)I
    .locals 4
    .param p1, "elem"    # Lorg/w3c/dom/Node;
    .param p2, "index"    # I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 1326
    invoke-virtual {p0, v3}, Lorg/apache/xpath/NodeSet;->runTo(I)V

    #@4
    .line 1328
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@6
    if-nez v2, :cond_0

    #@8
    .line 1329
    return v3

    #@9
    .line 1331
    :cond_0
    move v0, p2

    #@a
    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@c
    if-ge v0, v2, :cond_2

    #@e
    .line 1333
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@10
    aget-object v1, v2, v0

    #@12
    .line 1335
    .local v1, "node":Lorg/w3c/dom/Node;
    if-eqz v1, :cond_1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_1

    #@1a
    .line 1336
    return v0

    #@1b
    .line 1331
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1339
    .end local v1    # "node":Lorg/w3c/dom/Node;
    :cond_2
    return v3
.end method

.method public insertElementAt(Lorg/w3c/dom/Node;I)V
    .locals 5
    .param p1, "value"    # Lorg/w3c/dom/Node;
    .param p2, "at"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 1104
    iget-boolean v1, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1105
    new-instance v1, Ljava/lang/RuntimeException;

    #@8
    const-string/jumbo v2, "ER_NODESET_NOT_MUTABLE"

    #@b
    invoke-static {v2, v4}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 1107
    :cond_0
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@15
    if-nez v1, :cond_3

    #@17
    .line 1109
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    #@19
    new-array v1, v1, [Lorg/w3c/dom/Node;

    #@1b
    iput-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@1d
    .line 1110
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    #@1f
    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    #@21
    .line 1123
    :cond_1
    :goto_0
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@23
    add-int/lit8 v1, v1, -0x1

    #@25
    if-gt p2, v1, :cond_2

    #@27
    .line 1125
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@29
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@2b
    add-int/lit8 v3, p2, 0x1

    #@2d
    iget v4, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@2f
    sub-int/2addr v4, p2

    #@30
    invoke-static {v1, p2, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@33
    .line 1128
    :cond_2
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@35
    aput-object p1, v1, p2

    #@37
    .line 1130
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@39
    add-int/lit8 v1, v1, 0x1

    #@3b
    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@3d
    .line 1102
    return-void

    #@3e
    .line 1112
    :cond_3
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@40
    add-int/lit8 v1, v1, 0x1

    #@42
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    #@44
    if-lt v1, v2, :cond_1

    #@46
    .line 1114
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    #@48
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    #@4a
    add-int/2addr v1, v2

    #@4b
    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    #@4d
    .line 1116
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    #@4f
    new-array v0, v1, [Lorg/w3c/dom/Node;

    #@51
    .line 1118
    .local v0, "newMap":[Lorg/w3c/dom/Node;
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@53
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@55
    add-int/lit8 v2, v2, 0x1

    #@57
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@5a
    .line 1120
    iput-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@5c
    goto :goto_0
.end method

.method public insertNode(Lorg/w3c/dom/Node;I)V
    .locals 3
    .param p1, "n"    # Lorg/w3c/dom/Node;
    .param p2, "pos"    # I

    #@0
    .prologue
    .line 400
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 401
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "ER_NODESET_NOT_MUTABLE"

    #@9
    const/4 v2, 0x0

    #@a
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 403
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/NodeSet;->insertElementAt(Lorg/w3c/dom/Node;I)V

    #@15
    .line 397
    return-void
.end method

.method public isFresh()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 307
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 350
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->runTo(I)V

    #@3
    .line 352
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->elementAt(I)Lorg/w3c/dom/Node;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public nextNode()Lorg/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 244
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    #@2
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSet;->size()I

    #@5
    move-result v2

    #@6
    if-ge v1, v2, :cond_0

    #@8
    .line 246
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    #@a
    invoke-virtual {p0, v1}, Lorg/apache/xpath/NodeSet;->elementAt(I)Lorg/w3c/dom/Node;

    #@d
    move-result-object v0

    #@e
    .line 248
    .local v0, "next":Lorg/w3c/dom/Node;
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    #@10
    add-int/lit8 v1, v1, 0x1

    #@12
    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    #@14
    .line 250
    return-object v0

    #@15
    .line 253
    .end local v0    # "next":Lorg/w3c/dom/Node;
    :cond_0
    const/4 v1, 0x0

    #@16
    return-object v1
.end method

.method public final peepOrNull()Lorg/w3c/dom/Node;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 993
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@7
    if-lez v1, :cond_0

    #@9
    .line 994
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@b
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@d
    add-int/lit8 v1, v1, -0x1

    #@f
    aget-object v0, v0, v1

    #@11
    .line 993
    :cond_0
    return-object v0
.end method

.method public final peepTail()Lorg/w3c/dom/Node;
    .locals 2

    #@0
    .prologue
    .line 1078
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@2
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    aget-object v0, v0, v1

    #@8
    return-object v0
.end method

.method public final peepTailSub1()Lorg/w3c/dom/Node;
    .locals 2

    #@0
    .prologue
    .line 1090
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@2
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@4
    add-int/lit8 v1, v1, -0x2

    #@6
    aget-object v0, v0, v1

    #@8
    return-object v0
.end method

.method public final pop()Lorg/w3c/dom/Node;
    .locals 4

    #@0
    .prologue
    .line 948
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@2
    add-int/lit8 v1, v1, -0x1

    #@4
    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@6
    .line 950
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@8
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@a
    aget-object v0, v1, v2

    #@c
    .line 952
    .local v0, "n":Lorg/w3c/dom/Node;
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@e
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@10
    const/4 v3, 0x0

    #@11
    aput-object v3, v1, v2

    #@13
    .line 954
    return-object v0
.end method

.method public final popAndTop()Lorg/w3c/dom/Node;
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 966
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@3
    add-int/lit8 v1, v1, -0x1

    #@5
    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@7
    .line 968
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@9
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@b
    aput-object v0, v1, v2

    #@d
    .line 970
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@f
    if-nez v1, :cond_0

    #@11
    :goto_0
    return-object v0

    #@12
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@14
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@16
    add-int/lit8 v1, v1, -0x1

    #@18
    aget-object v0, v0, v1

    #@1a
    goto :goto_0
.end method

.method public final popPair()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1040
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@3
    add-int/lit8 v0, v0, -0x2

    #@5
    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@7
    .line 1041
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@9
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@b
    aput-object v2, v0, v1

    #@d
    .line 1042
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@f
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@11
    add-int/lit8 v1, v1, 0x1

    #@13
    aput-object v2, v0, v1

    #@15
    .line 1037
    return-void
.end method

.method public final popQuick()V
    .locals 3

    #@0
    .prologue
    .line 979
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@6
    .line 981
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@8
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@a
    const/4 v2, 0x0

    #@b
    aput-object v2, v0, v1

    #@d
    .line 976
    return-void
.end method

.method public previousNode()Lorg/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 270
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_cacheNodes:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 271
    new-instance v0, Ljava/lang/RuntimeException;

    #@7
    .line 272
    const-string/jumbo v1, "ER_NODESET_CANNOT_ITERATE"

    #@a
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 271
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 274
    :cond_0
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    #@14
    add-int/lit8 v0, v0, -0x1

    #@16
    if-lez v0, :cond_1

    #@18
    .line 276
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    #@1a
    add-int/lit8 v0, v0, -0x1

    #@1c
    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    #@1e
    .line 278
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    #@20
    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSet;->elementAt(I)Lorg/w3c/dom/Node;

    #@23
    move-result-object v0

    #@24
    return-object v0

    #@25
    .line 281
    :cond_1
    return-object v2
.end method

.method public final push(Lorg/w3c/dom/Node;)V
    .locals 5
    .param p1, "value"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 912
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@3
    .line 914
    .local v0, "ff":I
    add-int/lit8 v2, v0, 0x1

    #@5
    iget v3, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    #@7
    if-lt v2, v3, :cond_0

    #@9
    .line 916
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@b
    if-nez v2, :cond_1

    #@d
    .line 918
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    #@f
    new-array v2, v2, [Lorg/w3c/dom/Node;

    #@11
    iput-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@13
    .line 919
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    #@15
    iput v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    #@17
    .line 933
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@19
    aput-object p1, v2, v0

    #@1b
    .line 935
    add-int/lit8 v0, v0, 0x1

    #@1d
    .line 937
    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@1f
    .line 909
    return-void

    #@20
    .line 923
    :cond_1
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    #@22
    iget v3, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    #@24
    add-int/2addr v2, v3

    #@25
    iput v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    #@27
    .line 925
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    #@29
    new-array v1, v2, [Lorg/w3c/dom/Node;

    #@2b
    .line 927
    .local v1, "newMap":[Lorg/w3c/dom/Node;
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@2d
    add-int/lit8 v3, v0, 0x1

    #@2f
    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@32
    .line 929
    iput-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@34
    goto :goto_0
.end method

.method public final pushPair(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .locals 4
    .param p1, "v1"    # Lorg/w3c/dom/Node;
    .param p2, "v2"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1008
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@3
    if-nez v1, :cond_1

    #@5
    .line 1010
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    #@7
    new-array v1, v1, [Lorg/w3c/dom/Node;

    #@9
    iput-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@b
    .line 1011
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    #@d
    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    #@f
    .line 1027
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@11
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@13
    aput-object p1, v1, v2

    #@15
    .line 1028
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@17
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@19
    add-int/lit8 v2, v2, 0x1

    #@1b
    aput-object p2, v1, v2

    #@1d
    .line 1029
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@1f
    add-int/lit8 v1, v1, 0x2

    #@21
    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@23
    .line 1005
    return-void

    #@24
    .line 1015
    :cond_1
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@26
    add-int/lit8 v1, v1, 0x2

    #@28
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    #@2a
    if-lt v1, v2, :cond_0

    #@2c
    .line 1017
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    #@2e
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    #@30
    add-int/2addr v1, v2

    #@31
    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    #@33
    .line 1019
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    #@35
    new-array v0, v1, [Lorg/w3c/dom/Node;

    #@37
    .line 1021
    .local v0, "newMap":[Lorg/w3c/dom/Node;
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@39
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@3b
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3e
    .line 1023
    iput-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@40
    goto :goto_0
.end method

.method public removeAllElements()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1173
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1174
    return-void

    #@6
    .line 1176
    :cond_0
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@9
    if-ge v0, v1, :cond_1

    #@b
    .line 1178
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@d
    aput-object v2, v1, v0

    #@f
    .line 1176
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1181
    :cond_1
    const/4 v1, 0x0

    #@13
    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@15
    .line 1170
    return-void
.end method

.method public removeElement(Lorg/w3c/dom/Node;)Z
    .locals 7
    .param p1, "s"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 1197
    iget-boolean v2, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    #@4
    if-nez v2, :cond_0

    #@6
    .line 1198
    new-instance v2, Ljava/lang/RuntimeException;

    #@8
    const-string/jumbo v3, "ER_NODESET_NOT_MUTABLE"

    #@b
    invoke-static {v3, v6}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@12
    throw v2

    #@13
    .line 1200
    :cond_0
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@15
    if-nez v2, :cond_1

    #@17
    .line 1201
    return v3

    #@18
    .line 1203
    :cond_1
    const/4 v0, 0x0

    #@19
    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@1b
    if-ge v0, v2, :cond_4

    #@1d
    .line 1205
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@1f
    aget-object v1, v2, v0

    #@21
    .line 1207
    .local v1, "node":Lorg/w3c/dom/Node;
    if-eqz v1, :cond_3

    #@23
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_3

    #@29
    .line 1209
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@2b
    add-int/lit8 v2, v2, -0x1

    #@2d
    if-ge v0, v2, :cond_2

    #@2f
    .line 1210
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@31
    add-int/lit8 v3, v0, 0x1

    #@33
    iget-object v4, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@35
    iget v5, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@37
    sub-int/2addr v5, v0

    #@38
    add-int/lit8 v5, v5, -0x1

    #@3a
    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3d
    .line 1212
    :cond_2
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@3f
    add-int/lit8 v2, v2, -0x1

    #@41
    iput v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@43
    .line 1213
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@45
    iget v3, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@47
    aput-object v6, v2, v3

    #@49
    .line 1215
    const/4 v2, 0x1

    #@4a
    return v2

    #@4b
    .line 1203
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 1219
    .end local v1    # "node":Lorg/w3c/dom/Node;
    :cond_4
    return v3
.end method

.method public removeElementAt(I)V
    .locals 5
    .param p1, "i"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1233
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1234
    return-void

    #@6
    .line 1236
    :cond_0
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@8
    if-lt p1, v0, :cond_1

    #@a
    .line 1237
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string/jumbo v2, " >= "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    .line 1238
    :cond_1
    if-gez p1, :cond_2

    #@2c
    .line 1239
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@2e
    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    #@31
    throw v0

    #@32
    .line 1241
    :cond_2
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@34
    add-int/lit8 v0, v0, -0x1

    #@36
    if-ge p1, v0, :cond_3

    #@38
    .line 1242
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@3a
    add-int/lit8 v1, p1, 0x1

    #@3c
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@3e
    iget v3, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@40
    sub-int/2addr v3, p1

    #@41
    add-int/lit8 v3, v3, -0x1

    #@43
    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@46
    .line 1244
    :cond_3
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@48
    add-int/lit8 v0, v0, -0x1

    #@4a
    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@4c
    .line 1245
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@4e
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@50
    aput-object v4, v0, v1

    #@52
    .line 1230
    return-void
.end method

.method public removeNode(Lorg/w3c/dom/Node;)V
    .locals 3
    .param p1, "n"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 416
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 417
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "ER_NODESET_NOT_MUTABLE"

    #@9
    const/4 v2, 0x0

    #@a
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 419
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->removeElement(Lorg/w3c/dom/Node;)Z

    #@15
    .line 413
    return-void
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 172
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    #@3
    .line 170
    return-void
.end method

.method public runTo(I)V
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 325
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_cacheNodes:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 326
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    .line 327
    const-string/jumbo v1, "ER_NODESET_CANNOT_INDEX"

    #@9
    const/4 v2, 0x0

    #@a
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 326
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 329
    :cond_0
    if-ltz p1, :cond_1

    #@14
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    #@16
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@18
    if-ge v0, v1, :cond_1

    #@1a
    .line 330
    iput p1, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    #@1c
    .line 322
    :goto_0
    return-void

    #@1d
    .line 332
    :cond_1
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@1f
    add-int/lit8 v0, v0, -0x1

    #@21
    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    #@23
    goto :goto_0
.end method

.method public setCurrentPos(I)V
    .locals 3
    .param p1, "i"    # I

    #@0
    .prologue
    .line 742
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_cacheNodes:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 743
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    .line 744
    const-string/jumbo v1, "ER_NODESET_CANNOT_INDEX"

    #@9
    const/4 v2, 0x0

    #@a
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 743
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 746
    :cond_0
    iput p1, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    #@14
    .line 739
    return-void
.end method

.method public setElementAt(Lorg/w3c/dom/Node;I)V
    .locals 3
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "index"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1260
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1261
    new-instance v0, Ljava/lang/RuntimeException;

    #@7
    const-string/jumbo v1, "ER_NODESET_NOT_MUTABLE"

    #@a
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 1263
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@14
    if-nez v0, :cond_1

    #@16
    .line 1265
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    #@18
    new-array v0, v0, [Lorg/w3c/dom/Node;

    #@1a
    iput-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@1c
    .line 1266
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    #@1e
    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    #@20
    .line 1269
    :cond_1
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@22
    aput-object p1, v0, p2

    #@24
    .line 1258
    return-void
.end method

.method public setLast(I)V
    .locals 0
    .param p1, "last"    # I

    #@0
    .prologue
    .line 819
    iput p1, p0, Lorg/apache/xpath/NodeSet;->m_last:I

    #@2
    .line 817
    return-void
.end method

.method public setShouldCacheNodes(Z)V
    .locals 3
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 801
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSet;->isFresh()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 802
    new-instance v0, Ljava/lang/RuntimeException;

    #@8
    .line 803
    const-string/jumbo v1, "ER_CANNOT_CALL_SETSHOULDCACHENODE"

    #@b
    const/4 v2, 0x0

    #@c
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 802
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 805
    :cond_0
    iput-boolean p1, p0, Lorg/apache/xpath/NodeSet;->m_cacheNodes:Z

    #@16
    .line 806
    const/4 v0, 0x1

    #@17
    iput-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    #@19
    .line 798
    return-void
.end method

.method public final setTail(Lorg/w3c/dom/Node;)V
    .locals 2
    .param p1, "n"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 1054
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@2
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    aput-object p1, v0, v1

    #@8
    .line 1052
    return-void
.end method

.method public final setTailSub1(Lorg/w3c/dom/Node;)V
    .locals 2
    .param p1, "n"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 1066
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    #@2
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@4
    add-int/lit8 v1, v1, -0x2

    #@6
    aput-object p1, v0, v1

    #@8
    .line 1064
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 867
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    #@2
    return v0
.end method
