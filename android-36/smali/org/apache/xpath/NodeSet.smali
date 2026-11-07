.class public Lorg/apache/xpath/NodeSet;
.super Ljava/lang/Object;
.source "NodeSet.java"

# interfaces
.implements Lorg/w3c/dom/NodeList;
.implements Lorg/w3c/dom/traversal/NodeIterator;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/xpath/axes/ContextNodeList;


# instance fields
.field private greylist m_blocksize:I

.field protected transient greylist m_cacheNodes:Z

.field protected greylist m_firstFree:I

.field private transient greylist m_last:I

.field greylist m_map:[Lorg/w3c/dom/Node;

.field private greylist m_mapSize:I

.field protected transient greylist m_mutable:Z

.field protected transient greylist m_next:I


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 718
    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    const/4 v1, 0x1

    .line 770
    iput-boolean v1, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    .line 774
    iput-boolean v1, p0, Lorg/apache/xpath/NodeSet;->m_cacheNodes:Z

    .line 810
    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_last:I

    .line 832
    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    const/16 v1, 0x20

    .line 68
    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    .line 69
    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    return-void
.end method

.method public constructor greylist <init>(I)V
    .registers 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 718
    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    const/4 v1, 0x1

    .line 770
    iput-boolean v1, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    .line 774
    iput-boolean v1, p0, Lorg/apache/xpath/NodeSet;->m_cacheNodes:Z

    .line 810
    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_last:I

    .line 832
    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    .line 79
    iput p1, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    .line 80
    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xpath/NodeSet;)V
    .registers 3

    const/16 v0, 0x20

    .line 106
    invoke-direct {p0, v0}, Lorg/apache/xpath/NodeSet;-><init>(I)V

    .line 108
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->addNodes(Lorg/w3c/dom/traversal/NodeIterator;)V

    return-void
.end method

.method public constructor greylist <init>(Lorg/w3c/dom/Node;)V
    .registers 3

    const/16 v0, 0x20

    .line 133
    invoke-direct {p0, v0}, Lorg/apache/xpath/NodeSet;-><init>(I)V

    .line 135
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->addNode(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public constructor greylist <init>(Lorg/w3c/dom/NodeList;)V
    .registers 3

    const/16 v0, 0x20

    .line 92
    invoke-direct {p0, v0}, Lorg/apache/xpath/NodeSet;-><init>(I)V

    .line 94
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->addNodes(Lorg/w3c/dom/NodeList;)V

    return-void
.end method

.method public constructor greylist <init>(Lorg/w3c/dom/traversal/NodeIterator;)V
    .registers 3

    const/16 v0, 0x20

    .line 120
    invoke-direct {p0, v0}, Lorg/apache/xpath/NodeSet;-><init>(I)V

    .line 122
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->addNodes(Lorg/w3c/dom/traversal/NodeIterator;)V

    return-void
.end method

.method private greylist addNodesInDocOrder(IIILorg/w3c/dom/NodeList;Lorg/apache/xpath/XPathContext;)Z
    .registers 10

    .line 575
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-eqz v0, :cond_40

    .line 580
    invoke-interface {p4, p3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_8
    const/4 v1, -0x1

    if-lt p2, p1, :cond_39

    .line 584
    invoke-virtual {p0, p2}, Lorg/apache/xpath/NodeSet;->elementAt(I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-ne v2, v0, :cond_13

    const/4 p2, -0x2

    goto :goto_39

    .line 593
    :cond_13
    invoke-static {v0, v2}, Lorg/apache/xml/utils/DOM2Helper;->isNodeAfter(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v2

    if-nez v2, :cond_36

    add-int/lit8 p1, p2, 0x1

    .line 595
    invoke-virtual {p0, v0, p1}, Lorg/apache/xpath/NodeSet;->insertElementAt(Lorg/w3c/dom/Node;I)V

    add-int/2addr p3, v1

    if-lez p3, :cond_39

    const/4 p1, 0x0

    .line 601
    invoke-direct/range {p0 .. p5}, Lorg/apache/xpath/NodeSet;->addNodesInDocOrder(IIILorg/w3c/dom/NodeList;Lorg/apache/xpath/XPathContext;)Z

    move-result p1

    if-nez p1, :cond_39

    .line 606
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSet;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    move v3, p2

    move p2, p1

    move p1, v3

    invoke-direct/range {p0 .. p5}, Lorg/apache/xpath/NodeSet;->addNodesInDocOrder(IIILorg/w3c/dom/NodeList;Lorg/apache/xpath/XPathContext;)Z

    move p2, p1

    goto :goto_39

    :cond_36
    add-int/lit8 p2, p2, -0x1

    goto :goto_8

    :cond_39
    :goto_39
    const/4 p1, 0x0

    if-ne p2, v1, :cond_3f

    .line 616
    invoke-virtual {p0, v0, p1}, Lorg/apache/xpath/NodeSet;->insertElementAt(Lorg/w3c/dom/Node;I)V

    :cond_3f
    return p1

    .line 576
    :cond_40
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESET_NOT_MUTABLE"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public greylist addElement(Lorg/w3c/dom/Node;)V
    .registers 6

    .line 877
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-eqz v0, :cond_33

    .line 880
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    if-lt v1, v2, :cond_28

    .line 882
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v1, :cond_19

    .line 884
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    new-array v1, v0, [Lorg/w3c/dom/Node;

    iput-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    .line 885
    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    goto :goto_28

    .line 889
    :cond_19
    iget v3, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    .line 891
    new-array v2, v2, [Lorg/w3c/dom/Node;

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    .line 893
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 895
    iput-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    .line 899
    :cond_28
    :goto_28
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 901
    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    return-void

    .line 878
    :cond_33
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESET_NOT_MUTABLE"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist addNode(Lorg/w3c/dom/Node;)V
    .registers 3

    .line 382
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-eqz v0, :cond_8

    .line 385
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->addElement(Lorg/w3c/dom/Node;)V

    return-void

    .line 383
    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESET_NOT_MUTABLE"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist addNodeInDocOrder(Lorg/w3c/dom/Node;Lorg/apache/xpath/XPathContext;)I
    .registers 4

    .line 709
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    .line 712
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/xpath/NodeSet;->addNodeInDocOrder(Lorg/w3c/dom/Node;ZLorg/apache/xpath/XPathContext;)I

    move-result p0

    return p0

    .line 710
    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESET_NOT_MUTABLE"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist addNodeInDocOrder(Lorg/w3c/dom/Node;ZLorg/apache/xpath/XPathContext;)I
    .registers 5

    .line 635
    iget-boolean p3, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-eqz p3, :cond_44

    if-eqz p2, :cond_2b

    .line 646
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSet;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_c
    const/4 p3, -0x2

    if-ltz p2, :cond_21

    .line 650
    invoke-virtual {p0, p2}, Lorg/apache/xpath/NodeSet;->elementAt(I)Lorg/w3c/dom/Node;

    move-result-object v0

    if-ne v0, p1, :cond_17

    move p2, p3

    goto :goto_21

    .line 659
    :cond_17
    invoke-static {p1, v0}, Lorg/apache/xml/utils/DOM2Helper;->isNodeAfter(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_21

    :cond_1e
    add-int/lit8 p2, p2, -0x1

    goto :goto_c

    :cond_21
    :goto_21
    if-eq p2, p3, :cond_29

    add-int/lit8 p2, p2, 0x1

    .line 669
    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/NodeSet;->insertElementAt(Lorg/w3c/dom/Node;I)V

    return p2

    :cond_29
    const/4 p0, -0x1

    return p0

    .line 674
    :cond_2b
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSet;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_30
    if-ge p3, p2, :cond_40

    .line 680
    invoke-virtual {p0, p3}, Lorg/apache/xpath/NodeSet;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    return p2

    :cond_3d
    add-int/lit8 p3, p3, 0x1

    goto :goto_30

    .line 689
    :cond_40
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->addElement(Lorg/w3c/dom/Node;)V

    return p2

    .line 636
    :cond_44
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESET_NOT_MUTABLE"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist addNodes(Lorg/apache/xpath/NodeSet;)V
    .registers 3

    .line 474
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-eqz v0, :cond_8

    .line 477
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->addNodes(Lorg/w3c/dom/traversal/NodeIterator;)V

    return-void

    .line 475
    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESET_NOT_MUTABLE"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist addNodes(Lorg/w3c/dom/NodeList;)V
    .registers 5

    .line 434
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-eqz v0, :cond_1a

    if-eqz p1, :cond_19

    .line 439
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_19

    .line 443
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 447
    invoke-virtual {p0, v2}, Lorg/apache/xpath/NodeSet;->addElement(Lorg/w3c/dom/Node;)V

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_19
    return-void

    .line 435
    :cond_1a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESET_NOT_MUTABLE"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist addNodes(Lorg/w3c/dom/traversal/NodeIterator;)V
    .registers 3

    .line 491
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-eqz v0, :cond_11

    if-eqz p1, :cond_10

    .line 498
    :goto_6
    invoke-interface {p1}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 500
    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSet;->addElement(Lorg/w3c/dom/Node;)V

    goto :goto_6

    :cond_10
    return-void

    .line 492
    :cond_11
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESET_NOT_MUTABLE"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist addNodesInDocOrder(Lorg/w3c/dom/NodeList;Lorg/apache/xpath/XPathContext;)V
    .registers 6

    .line 519
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-eqz v0, :cond_18

    .line 522
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_17

    .line 526
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 530
    invoke-virtual {p0, v2, p2}, Lorg/apache/xpath/NodeSet;->addNodeInDocOrder(Lorg/w3c/dom/Node;Lorg/apache/xpath/XPathContext;)I

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    return-void

    .line 520
    :cond_18
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESET_NOT_MUTABLE"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist addNodesInDocOrder(Lorg/w3c/dom/traversal/NodeIterator;Lorg/apache/xpath/XPathContext;)V
    .registers 4

    .line 547
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-eqz v0, :cond_f

    .line 552
    :goto_4
    invoke-interface {p1}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 554
    invoke-virtual {p0, v0, p2}, Lorg/apache/xpath/NodeSet;->addNodeInDocOrder(Lorg/w3c/dom/Node;Lorg/apache/xpath/XPathContext;)I

    goto :goto_4

    :cond_e
    return-void

    .line 548
    :cond_f
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESET_NOT_MUTABLE"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist appendNodes(Lorg/apache/xpath/NodeSet;)V
    .registers 8

    .line 1141
    invoke-virtual {p1}, Lorg/apache/xpath/NodeSet;->size()I

    move-result v0

    .line 1143
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    const/4 v2, 0x0

    if-nez v1, :cond_13

    .line 1145
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    .line 1146
    new-array v1, v1, [Lorg/w3c/dom/Node;

    iput-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    goto :goto_29

    .line 1148
    :cond_13
    iget v3, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int v4, v3, v0

    iget v5, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    if-lt v4, v5, :cond_29

    .line 1150
    iget v4, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    add-int/2addr v4, v0

    add-int/2addr v5, v4

    iput v5, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    .line 1152
    new-array v4, v5, [Lorg/w3c/dom/Node;

    add-int/2addr v3, v0

    .line 1154
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1156
    iput-object v4, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    .line 1159
    :cond_29
    :goto_29
    iget-object p1, p1, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v3, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1161
    iget p1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 848
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/NodeSet;

    .line 850
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-eqz v1, :cond_1a

    iget-object v2, v0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-ne v1, v2, :cond_1a

    .line 852
    array-length v1, v1

    new-array v1, v1, [Lorg/w3c/dom/Node;

    iput-object v1, v0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    .line 854
    iget-object p0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1a
    return-object v0
.end method

.method public greylist cloneWithReset()Lorg/w3c/dom/traversal/NodeIterator;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSet;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xpath/NodeSet;

    .line 162
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSet;->reset()V

    return-object p0
.end method

.method public greylist contains(Lorg/w3c/dom/Node;)Z
    .registers 5

    const/4 v0, -0x1

    .line 1297
    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSet;->runTo(I)V

    .line 1299
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    move v0, v1

    .line 1302
    :goto_b
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    if-ge v0, v2, :cond_20

    .line 1304
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1d

    .line 1306
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_20
    return v1
.end method

.method public greylist detach()V
    .registers 1

    .line 0
    return-void
.end method

.method public greylist elementAt(I)Lorg/w3c/dom/Node;
    .registers 2

    .line 1282
    iget-object p0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 1285
    :cond_6
    aget-object p0, p0, p1

    return-object p0
.end method

.method public greylist getCurrentNode()Lorg/w3c/dom/Node;
    .registers 4

    .line 759
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_cacheNodes:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 763
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    .line 764
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    if-ge v0, v2, :cond_f

    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSet;->elementAt(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 765
    :cond_f
    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    return-object v1

    .line 760
    :cond_12
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ER_NODESET_CANNOT_INDEX"

    .line 761
    invoke-static {v0, v1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist getCurrentPos()I
    .registers 1

    .line 730
    iget p0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    return p0
.end method

.method public greylist getExpandEntityReferences()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist getFilter()Lorg/w3c/dom/traversal/NodeFilter;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getLast()I
    .registers 1

    .line 814
    iget p0, p0, Lorg/apache/xpath/NodeSet;->m_last:I

    return p0
.end method

.method public whitelist test-api getLength()I
    .registers 2

    const/4 v0, -0x1

    .line 366
    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSet;->runTo(I)V

    .line 368
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSet;->size()I

    move-result p0

    return p0
.end method

.method public greylist getRoot()Lorg/w3c/dom/Node;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getShouldCacheNodes()Z
    .registers 1

    .line 784
    iget-boolean p0, p0, Lorg/apache/xpath/NodeSet;->m_cacheNodes:Z

    return p0
.end method

.method public greylist getWhatToShow()I
    .registers 1

    .line 0
    const/16 p0, -0x11

    return p0
.end method

.method public greylist indexOf(Lorg/w3c/dom/Node;)I
    .registers 5

    const/4 v0, -0x1

    .line 1354
    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSet;->runTo(I)V

    .line 1356
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v1, :cond_9

    return v0

    :cond_9
    const/4 v1, 0x0

    .line 1359
    :goto_a
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    if-ge v1, v2, :cond_1e

    .line 1361
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1b

    .line 1363
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    return v1

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1e
    return v0
.end method

.method public greylist indexOf(Lorg/w3c/dom/Node;I)I
    .registers 5

    const/4 v0, -0x1

    .line 1326
    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSet;->runTo(I)V

    .line 1328
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v1, :cond_9

    return v0

    .line 1331
    :cond_9
    :goto_9
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    if-ge p2, v1, :cond_1d

    .line 1333
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    aget-object v1, v1, p2

    if-eqz v1, :cond_1a

    .line 1335
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return p2

    :cond_1a
    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    :cond_1d
    return v0
.end method

.method public greylist insertElementAt(Lorg/w3c/dom/Node;I)V
    .registers 7

    .line 1104
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-eqz v0, :cond_41

    .line 1107
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v0, :cond_11

    .line 1109
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    new-array v1, v0, [Lorg/w3c/dom/Node;

    iput-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    .line 1110
    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    goto :goto_28

    .line 1112
    :cond_11
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    if-lt v2, v3, :cond_28

    .line 1114
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    .line 1116
    new-array v2, v3, [Lorg/w3c/dom/Node;

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    .line 1118
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1120
    iput-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    .line 1123
    :cond_28
    :goto_28
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v1, v0, -0x1

    if-gt p2, v1, :cond_36

    .line 1125
    iget-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    add-int/lit8 v2, p2, 0x1

    sub-int/2addr v0, p2

    invoke-static {v1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1128
    :cond_36
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    aput-object p1, v0, p2

    .line 1130
    iget p1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    return-void

    .line 1105
    :cond_41
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESET_NOT_MUTABLE"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist insertNode(Lorg/w3c/dom/Node;I)V
    .registers 4

    .line 400
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-eqz v0, :cond_8

    .line 403
    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/NodeSet;->insertElementAt(Lorg/w3c/dom/Node;I)V

    return-void

    .line 401
    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESET_NOT_MUTABLE"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist isFresh()Z
    .registers 1

    .line 307
    iget p0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api item(I)Lorg/w3c/dom/Node;
    .registers 2

    .line 350
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->runTo(I)V

    .line 352
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->elementAt(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public greylist nextNode()Lorg/w3c/dom/Node;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 244
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    invoke-virtual {p0}, Lorg/apache/xpath/NodeSet;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 246
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSet;->elementAt(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 248
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    return-object v0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public final greylist peepOrNull()Lorg/w3c/dom/Node;
    .registers 2

    .line 993
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-eqz v0, :cond_d

    iget p0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    if-lez p0, :cond_d

    add-int/lit8 p0, p0, -0x1

    .line 994
    aget-object p0, v0, p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public final greylist peepTail()Lorg/w3c/dom/Node;
    .registers 2

    .line 1078
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget p0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0
.end method

.method public final greylist peepTailSub1()Lorg/w3c/dom/Node;
    .registers 2

    .line 1090
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget p0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 p0, p0, -0x2

    aget-object p0, v0, p0

    return-object p0
.end method

.method public final greylist pop()Lorg/w3c/dom/Node;
    .registers 4

    .line 948
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    .line 950
    iget-object p0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    aget-object v1, p0, v0

    const/4 v2, 0x0

    .line 952
    aput-object v2, p0, v0

    return-object v1
.end method

.method public final greylist popAndTop()Lorg/w3c/dom/Node;
    .registers 4

    .line 966
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    .line 968
    iget-object p0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    const/4 v2, 0x0

    aput-object v2, p0, v1

    if-nez v1, :cond_e

    return-object v2

    :cond_e
    add-int/lit8 v0, v0, -0x2

    .line 970
    aget-object p0, p0, v0

    return-object p0
.end method

.method public final greylist popPair()V
    .registers 4

    .line 1040
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v1, v0, -0x2

    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    .line 1041
    iget-object p0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    const/4 v2, 0x0

    aput-object v2, p0, v1

    add-int/lit8 v0, v0, -0x1

    .line 1042
    aput-object v2, p0, v0

    return-void
.end method

.method public final greylist popQuick()V
    .registers 3

    .line 979
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    .line 981
    iget-object p0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    const/4 v1, 0x0

    aput-object v1, p0, v0

    return-void
.end method

.method public greylist previousNode()Lorg/w3c/dom/Node;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 270
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_cacheNodes:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 274
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    add-int/lit8 v2, v0, -0x1

    if-lez v2, :cond_14

    add-int/lit8 v0, v0, -0x1

    .line 276
    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    .line 278
    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSet;->elementAt(I)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_14
    return-object v1

    .line 271
    :cond_15
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ER_NODESET_CANNOT_ITERATE"

    .line 272
    invoke-static {v0, v1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final greylist push(Lorg/w3c/dom/Node;)V
    .registers 7

    .line 912
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v1, v0, 0x1

    .line 914
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    if-lt v1, v2, :cond_22

    .line 916
    iget-object v3, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v3, :cond_15

    .line 918
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    new-array v3, v2, [Lorg/w3c/dom/Node;

    iput-object v3, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    .line 919
    iput v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    goto :goto_22

    .line 923
    :cond_15
    iget v4, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    add-int/2addr v2, v4

    iput v2, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    .line 925
    new-array v2, v2, [Lorg/w3c/dom/Node;

    const/4 v4, 0x0

    .line 927
    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 929
    iput-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    .line 933
    :cond_22
    :goto_22
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    aput-object p1, v2, v0

    .line 937
    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    return-void
.end method

.method public final greylist pushPair(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .registers 7

    .line 1008
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v0, :cond_d

    .line 1010
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    new-array v1, v0, [Lorg/w3c/dom/Node;

    iput-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    .line 1011
    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    goto :goto_22

    .line 1015
    :cond_d
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v2, v1, 0x2

    iget v3, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    if-lt v2, v3, :cond_22

    .line 1017
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    .line 1019
    new-array v2, v3, [Lorg/w3c/dom/Node;

    const/4 v3, 0x0

    .line 1021
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1023
    iput-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    .line 1027
    :cond_22
    :goto_22
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    aput-object p1, v0, v1

    add-int/lit8 p1, v1, 0x1

    .line 1028
    aput-object p2, v0, p1

    add-int/lit8 v1, v1, 0x2

    .line 1029
    iput v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    return-void
.end method

.method public greylist removeAllElements()V
    .registers 5

    .line 1173
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    move v1, v0

    .line 1176
    :goto_7
    iget v2, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    if-ge v1, v2, :cond_13

    .line 1178
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1181
    :cond_13
    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    return-void
.end method

.method public greylist removeElement(Lorg/w3c/dom/Node;)Z
    .registers 7

    .line 1197
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    .line 1200
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    const/4 v2, 0x0

    if-nez v0, :cond_b

    return v2

    :cond_b
    move v0, v2

    .line 1203
    :goto_c
    iget v3, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    if-ge v0, v3, :cond_39

    .line 1205
    iget-object v3, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    aget-object v3, v3, v0

    if-eqz v3, :cond_36

    .line 1207
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1209
    iget p1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_2c

    .line 1210
    iget-object v2, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    add-int/lit8 v4, v0, 0x1

    sub-int/2addr p1, v0

    sub-int/2addr p1, v3

    invoke-static {v2, v4, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1212
    :cond_2c
    iget p1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    sub-int/2addr p1, v3

    iput p1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    .line 1213
    iget-object p0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    aput-object v1, p0, p1

    return v3

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_39
    return v2

    .line 1198
    :cond_3a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESET_NOT_MUTABLE"

    invoke-static {p1, v1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist removeElementAt(I)V
    .registers 5

    .line 1233
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v0, :cond_5

    return-void

    .line 1236
    :cond_5
    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    if-ge p1, v1, :cond_29

    if-ltz p1, :cond_23

    add-int/lit8 v2, v1, -0x1

    if-ge p1, v2, :cond_17

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 1242
    invoke-static {v0, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1244
    :cond_17
    iget p1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    .line 1245
    iget-object p0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    const/4 v0, 0x0

    aput-object v0, p0, p1

    return-void

    .line 1239
    :cond_23
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0

    .line 1237
    :cond_29
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist removeNode(Lorg/w3c/dom/Node;)V
    .registers 3

    .line 416
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-eqz v0, :cond_8

    .line 419
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSet;->removeElement(Lorg/w3c/dom/Node;)Z

    return-void

    .line 417
    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESET_NOT_MUTABLE"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist reset()V
    .registers 2

    const/4 v0, 0x0

    .line 172
    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    return-void
.end method

.method public greylist runTo(I)V
    .registers 4

    .line 325
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_cacheNodes:Z

    if-eqz v0, :cond_16

    if-ltz p1, :cond_f

    .line 329
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    iget v1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    if-ge v0, v1, :cond_f

    .line 330
    iput p1, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    return-void

    .line 332
    :cond_f
    iget p1, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    return-void

    .line 326
    :cond_16
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESET_CANNOT_INDEX"

    const/4 v0, 0x0

    .line 327
    invoke-static {p1, v0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist setCurrentPos(I)V
    .registers 3

    .line 742
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_cacheNodes:Z

    if-eqz v0, :cond_7

    .line 746
    iput p1, p0, Lorg/apache/xpath/NodeSet;->m_next:I

    return-void

    .line 743
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESET_CANNOT_INDEX"

    const/4 v0, 0x0

    .line 744
    invoke-static {p1, v0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist setElementAt(Lorg/w3c/dom/Node;I)V
    .registers 5

    .line 1260
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    if-eqz v0, :cond_15

    .line 1263
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    if-nez v0, :cond_10

    .line 1265
    iget v0, p0, Lorg/apache/xpath/NodeSet;->m_blocksize:I

    new-array v1, v0, [Lorg/w3c/dom/Node;

    iput-object v1, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    .line 1266
    iput v0, p0, Lorg/apache/xpath/NodeSet;->m_mapSize:I

    .line 1269
    :cond_10
    iget-object p0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    aput-object p1, p0, p2

    return-void

    .line 1261
    :cond_15
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_NODESET_NOT_MUTABLE"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist setLast(I)V
    .registers 2

    .line 819
    iput p1, p0, Lorg/apache/xpath/NodeSet;->m_last:I

    return-void
.end method

.method public greylist setShouldCacheNodes(Z)V
    .registers 3

    .line 801
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSet;->isFresh()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 805
    iput-boolean p1, p0, Lorg/apache/xpath/NodeSet;->m_cacheNodes:Z

    const/4 p1, 0x1

    .line 806
    iput-boolean p1, p0, Lorg/apache/xpath/NodeSet;->m_mutable:Z

    return-void

    .line 802
    :cond_c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_CANNOT_CALL_SETSHOULDCACHENODE"

    const/4 v0, 0x0

    .line 803
    invoke-static {p1, v0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final greylist setTail(Lorg/w3c/dom/Node;)V
    .registers 3

    .line 1054
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget p0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 p0, p0, -0x1

    aput-object p1, v0, p0

    return-void
.end method

.method public final greylist setTailSub1(Lorg/w3c/dom/Node;)V
    .registers 3

    .line 1066
    iget-object v0, p0, Lorg/apache/xpath/NodeSet;->m_map:[Lorg/w3c/dom/Node;

    iget p0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    add-int/lit8 p0, p0, -0x2

    aput-object p1, v0, p0

    return-void
.end method

.method public greylist size()I
    .registers 1

    .line 867
    iget p0, p0, Lorg/apache/xpath/NodeSet;->m_firstFree:I

    return p0
.end method
