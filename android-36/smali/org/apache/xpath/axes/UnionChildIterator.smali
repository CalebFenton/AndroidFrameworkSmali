.class public Lorg/apache/xpath/axes/UnionChildIterator;
.super Lorg/apache/xpath/axes/ChildTestIterator;
.source "UnionChildIterator.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x30938eec96f3f3e7L


# instance fields
.field private greylist m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/ChildTestIterator;-><init>(Lorg/apache/xml/dtm/DTMAxisTraverser;)V

    .line 42
    iput-object v0, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    return-void
.end method


# virtual methods
.method public greylist acceptNode(I)S
    .registers 7

    .line 115
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    .line 118
    :try_start_4
    invoke-virtual {v0, p1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    const/4 v1, 0x0

    .line 119
    :goto_8
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    array-length v3, v2

    if-ge v1, v3, :cond_33

    .line 121
    aget-object v2, v2, v1

    .line 122
    invoke-virtual {v2, v0, p1}, Lorg/apache/xpath/patterns/NodeTest;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v3

    .line 123
    sget-object v4, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    if-eq v3, v4, :cond_30

    .line 126
    invoke-virtual {v2}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getPredicateCount()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_2c

    .line 128
    invoke-virtual {v2, p1, v0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->executePredicates(ILorg/apache/xpath/XPathContext;)Z

    move-result v2
    :try_end_22
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_22} :catch_2a
    .catchall {:try_start_4 .. :try_end_22} :catchall_28

    if-eqz v2, :cond_30

    .line 145
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    return v4

    :catchall_28
    move-exception p0

    goto :goto_42

    :catch_2a
    move-exception p0

    goto :goto_38

    :cond_2c
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    return v4

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_33
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    const/4 p0, 0x3

    return p0

    .line 141
    :goto_38
    :try_start_38
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_28

    .line 145
    :goto_42
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 146
    throw p0
.end method

.method public greylist addNodeTest(Lorg/apache/xpath/axes/PredicatedNodeTest;)V
    .registers 6

    .line 65
    iget-object v0, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    .line 67
    new-array v0, v0, [Lorg/apache/xpath/axes/PredicatedNodeTest;

    iput-object v0, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    .line 68
    aput-object p1, v0, v1

    goto :goto_1b

    .line 73
    :cond_d
    array-length v2, v0

    add-int/lit8 v3, v2, 0x1

    .line 75
    new-array v3, v3, [Lorg/apache/xpath/axes/PredicatedNodeTest;

    iput-object v3, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    .line 77
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iget-object v0, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    aput-object p1, v0, v2

    .line 81
    :goto_1b
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    return-void
.end method

.method public greylist fixupVariables(Ljava/util/Vector;I)V
    .registers 6

    .line 96
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/PredicatedNodeTest;->fixupVariables(Ljava/util/Vector;I)V

    .line 97
    iget-object v0, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    .line 98
    :goto_8
    iget-object v1, p0, Lorg/apache/xpath/axes/UnionChildIterator;->m_nodeTests:[Lorg/apache/xpath/axes/PredicatedNodeTest;

    array-length v2, v1

    if-ge v0, v2, :cond_15

    .line 99
    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/axes/PredicatedNodeTest;->fixupVariables(Ljava/util/Vector;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_15
    return-void
.end method
