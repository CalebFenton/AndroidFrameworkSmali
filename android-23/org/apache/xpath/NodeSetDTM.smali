.class public Lorg/apache/xpath/NodeSetDTM;
.super Lorg/apache/xml/utils/NodeVector;
.source "NodeSetDTM.java"

# interfaces
.implements Lorg/apache/xml/dtm/DTMIterator;
.implements Ljava/lang/Cloneable;


# static fields
.field static final serialVersionUID:J = 0x6aabdcf4e04f714eL


# instance fields
.field protected transient m_cacheNodes:Z

.field private transient m_last:I

.field m_manager:Lorg/apache/xml/dtm/DTMManager;

.field protected transient m_mutable:Z

.field protected transient m_next:I

.field protected m_root:I


# direct methods
.method public constructor <init>(IILorg/apache/xml/dtm/DTMManager;)V
    .locals 2
    .param p1, "blocksize"    # I
    .param p2, "dummy"    # I
    .param p3, "dtmManager"    # Lorg/apache/xml/dtm/DTMManager;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 83
    invoke-direct {p0, p1}, Lorg/apache/xml/utils/NodeVector;-><init>(I)V

    #@5
    .line 1103
    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    #@7
    .line 1159
    iput-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    #@9
    .line 1163
    iput-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    #@b
    .line 1166
    const/4 v0, -0x1

    #@c
    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    #@e
    .line 1212
    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    #@10
    .line 84
    iput-object p3, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    #@12
    .line 81
    return-void
.end method

.method public constructor <init>(ILorg/apache/xml/dtm/DTMManager;)V
    .locals 2
    .param p1, "node"    # I
    .param p2, "dtmManager"    # Lorg/apache/xml/dtm/DTMManager;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 186
    invoke-direct {p0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    #@5
    .line 1103
    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    #@7
    .line 1159
    iput-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    #@9
    .line 1163
    iput-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    #@b
    .line 1166
    const/4 v0, -0x1

    #@c
    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    #@e
    .line 1212
    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    #@10
    .line 187
    iput-object p2, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    #@12
    .line 189
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->addNode(I)V

    #@15
    .line 183
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMIterator;)V
    .locals 2
    .param p1, "ni"    # Lorg/apache/xml/dtm/DTMIterator;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 127
    invoke-direct {p0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    #@5
    .line 1103
    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    #@7
    .line 1159
    iput-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    #@9
    .line 1163
    iput-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    #@b
    .line 1166
    const/4 v0, -0x1

    #@c
    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    #@e
    .line 1212
    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    #@10
    .line 129
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    #@16
    .line 130
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->getRoot()I

    #@19
    move-result v0

    #@1a
    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    #@1c
    .line 131
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->addNodes(Lorg/apache/xml/dtm/DTMIterator;)V

    #@1f
    .line 124
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;)V
    .locals 2
    .param p1, "dtmManager"    # Lorg/apache/xml/dtm/DTMManager;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 71
    invoke-direct {p0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    #@5
    .line 1103
    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    #@7
    .line 1159
    iput-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    #@9
    .line 1163
    iput-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    #@b
    .line 1166
    const/4 v0, -0x1

    #@c
    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    #@e
    .line 1212
    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    #@10
    .line 72
    iput-object p1, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    #@12
    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/apache/xpath/NodeSetDTM;)V
    .locals 2
    .param p1, "nodelist"    # Lorg/apache/xpath/NodeSetDTM;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 111
    invoke-direct {p0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    #@5
    .line 1103
    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    #@7
    .line 1159
    iput-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    #@9
    .line 1163
    iput-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    #@b
    .line 1166
    const/4 v0, -0x1

    #@c
    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    #@e
    .line 1212
    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    #@10
    .line 112
    invoke-virtual {p1}, Lorg/apache/xpath/NodeSetDTM;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    #@16
    .line 113
    invoke-virtual {p1}, Lorg/apache/xpath/NodeSetDTM;->getRoot()I

    #@19
    move-result v0

    #@1a
    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    #@1c
    .line 115
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->addNodes(Lorg/apache/xml/dtm/DTMIterator;)V

    #@1f
    .line 108
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/NodeList;Lorg/apache/xpath/XPathContext;)V
    .locals 6
    .param p1, "nodeList"    # Lorg/w3c/dom/NodeList;
    .param p2, "xctxt"    # Lorg/apache/xpath/XPathContext;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 163
    invoke-direct {p0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    #@5
    .line 1103
    iput v5, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    #@7
    .line 1159
    iput-boolean v4, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    #@9
    .line 1163
    iput-boolean v4, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    #@b
    .line 1166
    const/4 v4, -0x1

    #@c
    iput v4, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    #@e
    .line 1212
    iput v5, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    #@10
    .line 165
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    #@13
    move-result-object v4

    #@14
    iput-object v4, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    #@16
    .line 167
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    #@19
    move-result v2

    #@1a
    .line 168
    .local v2, "n":I
    const/4 v1, 0x0

    #@1b
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@1d
    .line 170
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    #@20
    move-result-object v3

    #@21
    .line 171
    .local v3, "node":Lorg/w3c/dom/Node;
    invoke-virtual {p2, v3}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    #@24
    move-result v0

    #@25
    .line 173
    .local v0, "handle":I
    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->addNode(I)V

    #@28
    .line 168
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 160
    .end local v0    # "handle":I
    .end local v3    # "node":Lorg/w3c/dom/Node;
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/traversal/NodeIterator;Lorg/apache/xpath/XPathContext;)V
    .locals 4
    .param p1, "iterator"    # Lorg/w3c/dom/traversal/NodeIterator;
    .param p2, "xctxt"    # Lorg/apache/xpath/XPathContext;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 143
    invoke-direct {p0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    #@5
    .line 1103
    iput v3, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    #@7
    .line 1159
    iput-boolean v2, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    #@9
    .line 1163
    iput-boolean v2, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    #@b
    .line 1166
    const/4 v2, -0x1

    #@c
    iput v2, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    #@e
    .line 1212
    iput v3, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    #@10
    .line 146
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    #@13
    move-result-object v2

    #@14
    iput-object v2, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    #@16
    .line 148
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    #@19
    move-result-object v1

    #@1a
    .local v1, "node":Lorg/w3c/dom/Node;
    if-eqz v1, :cond_0

    #@1c
    .line 150
    invoke-virtual {p2, v1}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    #@1f
    move-result v0

    #@20
    .line 151
    .local v0, "handle":I
    invoke-virtual {p0, v0, p2}, Lorg/apache/xpath/NodeSetDTM;->addNodeInDocOrder(ILorg/apache/xpath/XPathContext;)I

    #@23
    goto :goto_0

    #@24
    .line 140
    .end local v0    # "handle":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addElement(I)V
    .locals 3
    .param p1, "value"    # I

    #@0
    .prologue
    .line 896
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 897
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "ER_NODESETDTM_NOT_MUTABLE"

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
    .line 899
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xml/utils/NodeVector;->addElement(I)V

    #@15
    .line 893
    return-void
.end method

.method public addNode(I)V
    .locals 3
    .param p1, "n"    # I

    #@0
    .prologue
    .line 538
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 539
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "ER_NODESETDTM_NOT_MUTABLE"

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
    .line 541
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->addElement(I)V

    #@15
    .line 535
    return-void
.end method

.method public addNodeInDocOrder(ILorg/apache/xpath/XPathContext;)I
    .locals 3
    .param p1, "node"    # I
    .param p2, "support"    # Lorg/apache/xpath/XPathContext;

    #@0
    .prologue
    .line 870
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 871
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "ER_NODESETDTM_NOT_MUTABLE"

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
    .line 873
    :cond_0
    const/4 v0, 0x1

    #@13
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/xpath/NodeSetDTM;->addNodeInDocOrder(IZLorg/apache/xpath/XPathContext;)I

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public addNodeInDocOrder(IZLorg/apache/xpath/XPathContext;)I
    .locals 9
    .param p1, "node"    # I
    .param p2, "test"    # Z
    .param p3, "support"    # Lorg/apache/xpath/XPathContext;

    #@0
    .prologue
    .line 795
    iget-boolean v6, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    #@2
    if-nez v6, :cond_0

    #@4
    .line 796
    new-instance v6, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v7, "ER_NODESETDTM_NOT_MUTABLE"

    #@9
    const/4 v8, 0x0

    #@a
    invoke-static {v7, v8}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d
    move-result-object v7

    #@e
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    throw v6

    #@12
    .line 798
    :cond_0
    const/4 v4, -0x1

    #@13
    .line 800
    .local v4, "insertIndex":I
    if-eqz p2, :cond_4

    #@15
    .line 806
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSetDTM;->size()I

    #@18
    move-result v5

    #@19
    .line 808
    .local v5, "size":I
    add-int/lit8 v3, v5, -0x1

    #@1b
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    #@1d
    .line 810
    invoke-virtual {p0, v3}, Lorg/apache/xpath/NodeSetDTM;->elementAt(I)I

    #@20
    move-result v0

    #@21
    .line 812
    .local v0, "child":I
    if-ne v0, p1, :cond_3

    #@23
    .line 814
    const/4 v3, -0x2

    #@24
    .line 826
    .end local v0    # "child":I
    :cond_1
    const/4 v6, -0x2

    #@25
    if-eq v3, v6, :cond_2

    #@27
    .line 828
    add-int/lit8 v4, v3, 0x1

    #@29
    .line 830
    invoke-virtual {p0, p1, v4}, Lorg/apache/xpath/NodeSetDTM;->insertElementAt(II)V

    #@2c
    .line 854
    .end local v5    # "size":I
    :cond_2
    :goto_1
    return v4

    #@2d
    .line 819
    .restart local v0    # "child":I
    .restart local v5    # "size":I
    :cond_3
    invoke-virtual {p3, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@30
    move-result-object v1

    #@31
    .line 820
    .local v1, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-interface {v1, p1, v0}, Lorg/apache/xml/dtm/DTM;->isNodeAfter(II)Z

    #@34
    move-result v6

    #@35
    if-eqz v6, :cond_1

    #@37
    .line 808
    add-int/lit8 v3, v3, -0x1

    #@39
    goto :goto_0

    #@3a
    .line 835
    .end local v0    # "child":I
    .end local v1    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v3    # "i":I
    .end local v5    # "size":I
    :cond_4
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSetDTM;->size()I

    #@3d
    move-result v4

    #@3e
    .line 837
    const/4 v2, 0x0

    #@3f
    .line 839
    .local v2, "foundit":Z
    const/4 v3, 0x0

    #@40
    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v4, :cond_5

    #@42
    .line 841
    if-ne v3, p1, :cond_6

    #@44
    .line 843
    const/4 v2, 0x1

    #@45
    .line 849
    :cond_5
    if-nez v2, :cond_2

    #@47
    .line 850
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->addElement(I)V

    #@4a
    goto :goto_1

    #@4b
    .line 839
    :cond_6
    add-int/lit8 v3, v3, 0x1

    #@4d
    goto :goto_2
.end method

.method public addNodes(Lorg/apache/xml/dtm/DTMIterator;)V
    .locals 4
    .param p1, "iterator"    # Lorg/apache/xml/dtm/DTMIterator;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 649
    iget-boolean v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 650
    new-instance v1, Ljava/lang/RuntimeException;

    #@7
    const-string/jumbo v2, "ER_NODESETDTM_NOT_MUTABLE"

    #@a
    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 652
    :cond_0
    if-eqz p1, :cond_1

    #@14
    .line 656
    :goto_0
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    #@17
    move-result v0

    #@18
    .local v0, "obj":I
    const/4 v1, -0x1

    #@19
    if-eq v1, v0, :cond_1

    #@1b
    .line 658
    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->addElement(I)V

    #@1e
    goto :goto_0

    #@1f
    .line 646
    .end local v0    # "obj":I
    :cond_1
    return-void
.end method

.method public addNodesInDocOrder(Lorg/apache/xml/dtm/DTMIterator;Lorg/apache/xpath/XPathContext;)V
    .locals 4
    .param p1, "iterator"    # Lorg/apache/xml/dtm/DTMIterator;
    .param p2, "support"    # Lorg/apache/xpath/XPathContext;

    #@0
    .prologue
    .line 706
    iget-boolean v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 707
    new-instance v1, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v2, "ER_NODESETDTM_NOT_MUTABLE"

    #@9
    const/4 v3, 0x0

    #@a
    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 711
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    #@15
    move-result v0

    #@16
    .local v0, "node":I
    const/4 v1, -0x1

    #@17
    if-eq v1, v0, :cond_1

    #@19
    .line 713
    invoke-virtual {p0, v0, p2}, Lorg/apache/xpath/NodeSetDTM;->addNodeInDocOrder(ILorg/apache/xpath/XPathContext;)I

    #@1c
    goto :goto_0

    #@1d
    .line 703
    :cond_1
    return-void
.end method

.method public allowDetachToRelease(Z)V
    .locals 0
    .param p1, "allowRelease"    # Z

    #@0
    .prologue
    .line 447
    return-void
.end method

.method public appendNodes(Lorg/apache/xml/utils/NodeVector;)V
    .locals 3
    .param p1, "nodes"    # Lorg/apache/xml/utils/NodeVector;

    #@0
    .prologue
    .line 932
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 933
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "ER_NODESETDTM_NOT_MUTABLE"

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
    .line 935
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xml/utils/NodeVector;->appendNodes(Lorg/apache/xml/utils/NodeVector;)V

    #@15
    .line 929
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 255
    invoke-super {p0}, Lorg/apache/xml/utils/NodeVector;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lorg/apache/xpath/NodeSetDTM;

    #@6
    .line 257
    .local v0, "clone":Lorg/apache/xpath/NodeSetDTM;
    return-object v0
.end method

.method public cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 273
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSetDTM;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lorg/apache/xpath/NodeSetDTM;

    #@6
    .line 275
    .local v0, "clone":Lorg/apache/xpath/NodeSetDTM;
    invoke-virtual {v0}, Lorg/apache/xpath/NodeSetDTM;->reset()V

    #@9
    .line 277
    return-object v0
.end method

.method public contains(I)Z
    .locals 1
    .param p1, "s"    # I

    #@0
    .prologue
    .line 1059
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->runTo(I)V

    #@4
    .line 1061
    invoke-super {p0, p1}, Lorg/apache/xml/utils/NodeVector;->contains(I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public detach()V
    .locals 0

    #@0
    .prologue
    .line 439
    return-void
.end method

.method public elementAt(I)I
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 1044
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->runTo(I)V

    #@3
    .line 1046
    invoke-super {p0, p1}, Lorg/apache/xml/utils/NodeVector;->elementAt(I)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getAxis()I
    .locals 1

    #@0
    .prologue
    .line 1243
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public getCurrentNode()I
    .locals 5

    #@0
    .prologue
    .line 1144
    iget-boolean v3, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    #@2
    if-nez v3, :cond_0

    #@4
    .line 1145
    new-instance v3, Ljava/lang/RuntimeException;

    #@6
    .line 1146
    const-string/jumbo v4, "This NodeSetDTM can not do indexing or counting functions!"

    #@9
    .line 1145
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v3

    #@d
    .line 1148
    :cond_0
    iget v2, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    #@f
    .line 1152
    .local v2, "saved":I
    iget v3, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    #@11
    if-lez v3, :cond_1

    #@13
    iget v3, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    #@15
    add-int/lit8 v0, v3, -0x1

    #@17
    .line 1153
    .local v0, "current":I
    :goto_0
    iget v3, p0, Lorg/apache/xpath/NodeSetDTM;->m_firstFree:I

    #@19
    if-ge v0, v3, :cond_2

    #@1b
    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->elementAt(I)I

    #@1e
    move-result v1

    #@1f
    .line 1154
    .local v1, "n":I
    :goto_1
    iput v2, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    #@21
    .line 1155
    return v1

    #@22
    .line 1152
    .end local v0    # "current":I
    .end local v1    # "n":I
    :cond_1
    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    #@24
    .restart local v0    # "current":I
    goto :goto_0

    #@25
    .line 1153
    :cond_2
    const/4 v1, -0x1

    #@26
    .restart local v1    # "n":I
    goto :goto_1
.end method

.method public getCurrentPos()I
    .locals 1

    #@0
    .prologue
    .line 1115
    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    #@2
    return v0
.end method

.method public getDTM(I)Lorg/apache/xml/dtm/DTM;
    .locals 1
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 356
    iget-object v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDTMManager()Lorg/apache/xml/dtm/DTMManager;
    .locals 1

    #@0
    .prologue
    .line 372
    iget-object v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_manager:Lorg/apache/xml/dtm/DTMManager;

    #@2
    return-object v0
.end method

.method public getExpandEntityReferences()Z
    .locals 1

    #@0
    .prologue
    .line 341
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getFilter()Lorg/apache/xml/dtm/DTMFilter;
    .locals 1

    #@0
    .prologue
    .line 320
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getLast()I
    .locals 1

    #@0
    .prologue
    .line 1216
    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    #@2
    return v0
.end method

.method public getLength()I
    .locals 1

    #@0
    .prologue
    .line 522
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->runTo(I)V

    #@4
    .line 524
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSetDTM;->size()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getRoot()I
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, -0x1

    #@2
    .line 217
    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    #@4
    if-ne v1, v0, :cond_1

    #@6
    .line 219
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSetDTM;->size()I

    #@9
    move-result v0

    #@a
    if-lez v0, :cond_0

    #@c
    .line 220
    invoke-virtual {p0, v2}, Lorg/apache/xpath/NodeSetDTM;->item(I)I

    #@f
    move-result v0

    #@10
    return v0

    #@11
    .line 222
    :cond_0
    return v1

    #@12
    .line 225
    :cond_1
    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_root:I

    #@14
    return v0
.end method

.method public getShouldCacheNodes()Z
    .locals 1

    #@0
    .prologue
    .line 1176
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    #@2
    return v0
.end method

.method public getWhatToShow()I
    .locals 1

    #@0
    .prologue
    .line 302
    const/16 v0, -0x11

    #@2
    return v0
.end method

.method public indexOf(I)I
    .locals 1
    .param p1, "elem"    # I

    #@0
    .prologue
    .line 1096
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->runTo(I)V

    #@4
    .line 1098
    invoke-super {p0, p1}, Lorg/apache/xml/utils/NodeVector;->indexOf(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public indexOf(II)I
    .locals 1
    .param p1, "elem"    # I
    .param p2, "index"    # I

    #@0
    .prologue
    .line 1078
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->runTo(I)V

    #@4
    .line 1080
    invoke-super {p0, p1, p2}, Lorg/apache/xml/utils/NodeVector;->indexOf(II)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public insertElementAt(II)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "at"    # I

    #@0
    .prologue
    .line 916
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 917
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "ER_NODESETDTM_NOT_MUTABLE"

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
    .line 919
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/xml/utils/NodeVector;->insertElementAt(II)V

    #@15
    .line 913
    return-void
.end method

.method public insertNode(II)V
    .locals 3
    .param p1, "n"    # I
    .param p2, "pos"    # I

    #@0
    .prologue
    .line 556
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 557
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "ER_NODESETDTM_NOT_MUTABLE"

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
    .line 559
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/NodeSetDTM;->insertElementAt(II)V

    #@15
    .line 553
    return-void
.end method

.method public isDocOrdered()Z
    .locals 1

    #@0
    .prologue
    .line 1232
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isFresh()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 463
    iget v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public isMutable()Z
    .locals 1

    #@0
    .prologue
    .line 1209
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    #@2
    return v0
.end method

.method public item(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 506
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->runTo(I)V

    #@3
    .line 508
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->elementAt(I)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public nextNode()I
    .locals 3

    #@0
    .prologue
    .line 388
    iget v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    #@2
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSetDTM;->size()I

    #@5
    move-result v2

    #@6
    if-ge v1, v2, :cond_0

    #@8
    .line 390
    iget v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    #@a
    invoke-virtual {p0, v1}, Lorg/apache/xpath/NodeSetDTM;->elementAt(I)I

    #@d
    move-result v0

    #@e
    .line 392
    .local v0, "next":I
    iget v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    #@10
    add-int/lit8 v1, v1, 0x1

    #@12
    iput v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    #@14
    .line 394
    return v0

    #@15
    .line 397
    .end local v0    # "next":I
    :cond_0
    const/4 v1, -0x1

    #@16
    return v1
.end method

.method public previousNode()I
    .locals 3

    #@0
    .prologue
    .line 414
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 415
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    .line 416
    const-string/jumbo v1, "ER_NODESETDTM_CANNOT_ITERATE"

    #@9
    const/4 v2, 0x0

    #@a
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 415
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 418
    :cond_0
    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    #@14
    add-int/lit8 v0, v0, -0x1

    #@16
    if-lez v0, :cond_1

    #@18
    .line 420
    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    #@1a
    add-int/lit8 v0, v0, -0x1

    #@1c
    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    #@1e
    .line 422
    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    #@20
    invoke-virtual {p0, v0}, Lorg/apache/xpath/NodeSetDTM;->elementAt(I)I

    #@23
    move-result v0

    #@24
    return v0

    #@25
    .line 425
    :cond_1
    const/4 v0, -0x1

    #@26
    return v0
.end method

.method public removeAllElements()V
    .locals 3

    #@0
    .prologue
    .line 949
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 950
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "ER_NODESETDTM_NOT_MUTABLE"

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
    .line 952
    :cond_0
    invoke-super {p0}, Lorg/apache/xml/utils/NodeVector;->removeAllElements()V

    #@15
    .line 946
    return-void
.end method

.method public removeElement(I)Z
    .locals 3
    .param p1, "s"    # I

    #@0
    .prologue
    .line 971
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 972
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "ER_NODESETDTM_NOT_MUTABLE"

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
    .line 974
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xml/utils/NodeVector;->removeElement(I)Z

    #@15
    move-result v0

    #@16
    return v0
.end method

.method public removeElementAt(I)V
    .locals 3
    .param p1, "i"    # I

    #@0
    .prologue
    .line 990
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 991
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "ER_NODESETDTM_NOT_MUTABLE"

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
    .line 993
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/xml/utils/NodeVector;->removeElementAt(I)V

    #@15
    .line 987
    return-void
.end method

.method public removeNode(I)V
    .locals 3
    .param p1, "n"    # I

    #@0
    .prologue
    .line 572
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 573
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "ER_NODESETDTM_NOT_MUTABLE"

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
    .line 575
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xpath/NodeSetDTM;->removeElement(I)Z

    #@15
    .line 569
    return-void
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 285
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    #@3
    .line 283
    return-void
.end method

.method public runTo(I)V
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 481
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 482
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    .line 483
    const-string/jumbo v1, "ER_NODESETDTM_CANNOT_INDEX"

    #@9
    const/4 v2, 0x0

    #@a
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 482
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 485
    :cond_0
    if-ltz p1, :cond_1

    #@14
    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    #@16
    iget v1, p0, Lorg/apache/xpath/NodeSetDTM;->m_firstFree:I

    #@18
    if-ge v0, v1, :cond_1

    #@1a
    .line 486
    iput p1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    #@1c
    .line 478
    :goto_0
    return-void

    #@1d
    .line 488
    :cond_1
    iget v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_firstFree:I

    #@1f
    add-int/lit8 v0, v0, -0x1

    #@21
    iput v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    #@23
    goto :goto_0
.end method

.method public setCurrentPos(I)V
    .locals 3
    .param p1, "i"    # I

    #@0
    .prologue
    .line 1127
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1128
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    .line 1129
    const-string/jumbo v1, "ER_NODESETDTM_CANNOT_INDEX"

    #@9
    const/4 v2, 0x0

    #@a
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 1128
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 1131
    :cond_0
    iput p1, p0, Lorg/apache/xpath/NodeSetDTM;->m_next:I

    #@14
    .line 1124
    return-void
.end method

.method public setElementAt(II)V
    .locals 3
    .param p1, "node"    # I
    .param p2, "index"    # I

    #@0
    .prologue
    .line 1011
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1012
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "ER_NODESETDTM_NOT_MUTABLE"

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
    .line 1014
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/xml/utils/NodeVector;->setElementAt(II)V

    #@15
    .line 1008
    return-void
.end method

.method public setEnvironment(Ljava/lang/Object;)V
    .locals 0
    .param p1, "environment"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 205
    return-void
.end method

.method public setItem(II)V
    .locals 3
    .param p1, "node"    # I
    .param p2, "index"    # I

    #@0
    .prologue
    .line 1028
    iget-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1029
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "ER_NODESETDTM_NOT_MUTABLE"

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
    .line 1031
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/xml/utils/NodeVector;->setElementAt(II)V

    #@15
    .line 1025
    return-void
.end method

.method public setLast(I)V
    .locals 0
    .param p1, "last"    # I

    #@0
    .prologue
    .line 1221
    iput p1, p0, Lorg/apache/xpath/NodeSetDTM;->m_last:I

    #@2
    .line 1219
    return-void
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 0
    .param p1, "context"    # I
    .param p2, "environment"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 235
    return-void
.end method

.method public setShouldCacheNodes(Z)V
    .locals 3
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 1193
    invoke-virtual {p0}, Lorg/apache/xpath/NodeSetDTM;->isFresh()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1194
    new-instance v0, Ljava/lang/RuntimeException;

    #@8
    .line 1195
    const-string/jumbo v1, "ER_CANNOT_CALL_SETSHOULDCACHENODE"

    #@b
    const/4 v2, 0x0

    #@c
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    .line 1194
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 1197
    :cond_0
    iput-boolean p1, p0, Lorg/apache/xpath/NodeSetDTM;->m_cacheNodes:Z

    #@16
    .line 1198
    const/4 v0, 0x1

    #@17
    iput-boolean v0, p0, Lorg/apache/xpath/NodeSetDTM;->m_mutable:Z

    #@19
    .line 1190
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 883
    invoke-super {p0}, Lorg/apache/xml/utils/NodeVector;->size()I

    #@3
    move-result v0

    #@4
    return v0
.end method
