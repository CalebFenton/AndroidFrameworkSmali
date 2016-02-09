.class public Lorg/apache/xpath/axes/UnionChildIterator;
.super Lorg/apache/xpath/axes/ChildTestIterator;
.source "UnionChildIterator.java"


# static fields
.field static final serialVersionUID:J = 0x30938eec96f3f3e7L


# instance fields
.field private m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 49
    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/ChildTestIterator;-><init>(Lorg/apache/xml/dtm/DTMAxisTraverser;)V

    #@4
    .line 42
    iput-object v0, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    #@6
    .line 47
    return-void
.end method


# virtual methods
.method public acceptNode(I)S
    .locals 7
    .param p1, "n"    # I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 115
    invoke-virtual {p0}, Lorg/apache/xpath/axes/UnionChildIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@4
    move-result-object v4

    #@5
    .line 118
    .local v4, "xctxt":Lorg/apache/xpath/XPathContext;
    :try_start_0
    invoke-virtual {v4, p1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    #@8
    .line 119
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    #@b
    array-length v5, v5

    #@c
    if-ge v0, v5, :cond_2

    #@e
    .line 121
    iget-object v5, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    #@10
    aget-object v1, v5, v0

    #@12
    .line 122
    .local v1, "pnt":Lorg/apache/xpath/axes/PredicatedNodeTest;
    invoke-virtual {v1, v4, p1}, Lorg/apache/xpath/axes/PredicatedNodeTest;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    #@15
    move-result-object v2

    #@16
    .line 123
    .local v2, "score":Lorg/apache/xpath/objects/XObject;
    sget-object v5, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@18
    if-eq v2, v5, :cond_1

    #@1a
    .line 126
    invoke-virtual {v1}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getPredicateCount()I

    #@1d
    move-result v5

    #@1e
    if-lez v5, :cond_0

    #@20
    .line 128
    invoke-virtual {v1, p1, v4}, Lorg/apache/xpath/axes/PredicatedNodeTest;->executePredicates(ILorg/apache/xpath/XPathContext;)Z
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    move-result v5

    #@24
    if-eqz v5, :cond_1

    #@26
    .line 145
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@29
    .line 129
    return v6

    #@2a
    .line 145
    :cond_0
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@2d
    .line 132
    return v6

    #@2e
    .line 119
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_0

    #@31
    .line 145
    .end local v1    # "pnt":Lorg/apache/xpath/axes/PredicatedNodeTest;
    .end local v2    # "score":Lorg/apache/xpath/objects/XObject;
    :cond_2
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@34
    .line 147
    const/4 v5, 0x3

    #@35
    return v5

    #@36
    .line 138
    .end local v0    # "i":I
    :catch_0
    move-exception v3

    #@37
    .line 141
    .local v3, "se":Ljavax/xml/transform/TransformerException;
    :try_start_1
    new-instance v5, Ljava/lang/RuntimeException;

    #@39
    invoke-virtual {v3}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    #@3c
    move-result-object v6

    #@3d
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@40
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@41
    .line 144
    .end local v3    # "se":Ljavax/xml/transform/TransformerException;
    :catchall_0
    move-exception v5

    #@42
    .line 145
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@45
    .line 144
    throw v5
.end method

.method public addNodeTest(Lorg/apache/xpath/axes/PredicatedNodeTest;)V
    .locals 4
    .param p1, "test"    # Lorg/apache/xpath/axes/PredicatedNodeTest;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 65
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 67
    const/4 v2, 0x1

    #@6
    new-array v2, v2, [Lorg/apache/xpath/axes/PredicatedNodeTest;

    #@8
    iput-object v2, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    #@a
    .line 68
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    #@c
    aput-object p1, v2, v3

    #@e
    .line 81
    :goto_0
    invoke-virtual {p1, p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@11
    .line 60
    return-void

    #@12
    .line 72
    :cond_0
    iget-object v1, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    #@14
    .line 73
    .local v1, "tests":[Lorg/apache/xpath/axes/PredicatedNodeTest;
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    #@16
    array-length v0, v2

    #@17
    .line 75
    .local v0, "len":I
    add-int/lit8 v2, v0, 0x1

    #@19
    new-array v2, v2, [Lorg/apache/xpath/axes/PredicatedNodeTest;

    #@1b
    iput-object v2, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    #@1d
    .line 77
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    #@1f
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@22
    .line 79
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    #@24
    aput-object p1, v2, v0

    #@26
    goto :goto_0
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 2
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    #@0
    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/ChildTestIterator;->fixupVariables(Ljava/util/Vector;I)V

    #@3
    .line 97
    iget-object v1, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 98
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    #@a
    array-length v1, v1

    #@b
    if-ge v0, v1, :cond_0

    #@d
    .line 99
    iget-object v1, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    #@f
    aget-object v1, v1, v0

    #@11
    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/axes/PredicatedNodeTest;->fixupVariables(Ljava/util/Vector;I)V

    #@14
    .line 98
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 94
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
