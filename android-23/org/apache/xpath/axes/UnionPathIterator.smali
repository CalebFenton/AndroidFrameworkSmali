.class public Lorg/apache/xpath/axes/UnionPathIterator;
.super Lorg/apache/xpath/axes/LocPathIterator;
.source "UnionPathIterator.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/xml/dtm/DTMIterator;
.implements Ljava/io/Serializable;
.implements Lorg/apache/xpath/axes/PathComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = -0x36445c0390868a5dL


# instance fields
.field protected m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

.field protected m_iterators:[Lorg/apache/xml/dtm/DTMIterator;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 52
    invoke-direct {p0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>()V

    #@4
    .line 56
    iput-object v0, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    #@6
    .line 57
    iput-object v0, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    #@8
    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/apache/xpath/compiler/Compiler;I)V
    .locals 1
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p2, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    invoke-direct {p0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>()V

    #@3
    .line 162
    invoke-static {p2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    #@6
    move-result p2

    #@7
    .line 164
    const/4 v0, 0x0

    #@8
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xpath/axes/UnionPathIterator;->loadLocationPaths(Lorg/apache/xpath/compiler/Compiler;II)V

    #@b
    .line 157
    return-void
.end method

.method public static createUnionIterator(Lorg/apache/xpath/compiler/Compiler;I)Lorg/apache/xpath/axes/LocPathIterator;
    .locals 9
    .param p0, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p1, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 186
    new-instance v6, Lorg/apache/xpath/axes/UnionPathIterator;

    #@2
    invoke-direct {v6, p0, p1}, Lorg/apache/xpath/axes/UnionPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;I)V

    #@5
    .line 187
    .local v6, "upi":Lorg/apache/xpath/axes/UnionPathIterator;
    iget-object v7, v6, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    #@7
    array-length v4, v7

    #@8
    .line 188
    .local v4, "nPaths":I
    const/4 v1, 0x1

    #@9
    .line 189
    .local v1, "isAllChildIterators":Z
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    #@c
    .line 191
    iget-object v7, v6, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    #@e
    aget-object v2, v7, v0

    #@10
    .line 193
    .local v2, "lpi":Lorg/apache/xpath/axes/LocPathIterator;
    invoke-virtual {v2}, Lorg/apache/xpath/axes/LocPathIterator;->getAxis()I

    #@13
    move-result v7

    #@14
    const/4 v8, 0x3

    #@15
    if-eq v7, v8, :cond_1

    #@17
    .line 195
    const/4 v1, 0x0

    #@18
    .line 208
    .end local v2    # "lpi":Lorg/apache/xpath/axes/LocPathIterator;
    :cond_0
    :goto_1
    if-eqz v1, :cond_4

    #@1a
    .line 210
    new-instance v5, Lorg/apache/xpath/axes/UnionChildIterator;

    #@1c
    invoke-direct {v5}, Lorg/apache/xpath/axes/UnionChildIterator;-><init>()V

    #@1f
    .line 212
    .local v5, "uci":Lorg/apache/xpath/axes/UnionChildIterator;
    const/4 v0, 0x0

    #@20
    :goto_2
    if-ge v0, v4, :cond_3

    #@22
    .line 214
    iget-object v7, v6, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    #@24
    aget-object v3, v7, v0

    #@26
    .line 218
    .local v3, "lpi":Lorg/apache/xpath/axes/PredicatedNodeTest;
    invoke-virtual {v5, v3}, Lorg/apache/xpath/axes/UnionChildIterator;->addNodeTest(Lorg/apache/xpath/axes/PredicatedNodeTest;)V

    #@29
    .line 212
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_2

    #@2c
    .line 201
    .end local v3    # "lpi":Lorg/apache/xpath/axes/PredicatedNodeTest;
    .end local v5    # "uci":Lorg/apache/xpath/axes/UnionChildIterator;
    .restart local v2    # "lpi":Lorg/apache/xpath/axes/LocPathIterator;
    :cond_1
    invoke-static {v2}, Lorg/apache/xpath/axes/HasPositionalPredChecker;->check(Lorg/apache/xpath/axes/LocPathIterator;)Z

    #@2f
    move-result v7

    #@30
    if-eqz v7, :cond_2

    #@32
    .line 203
    const/4 v1, 0x0

    #@33
    .line 204
    goto :goto_1

    #@34
    .line 189
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@36
    goto :goto_0

    #@37
    .line 220
    .end local v2    # "lpi":Lorg/apache/xpath/axes/LocPathIterator;
    .restart local v5    # "uci":Lorg/apache/xpath/axes/UnionChildIterator;
    :cond_3
    return-object v5

    #@38
    .line 224
    .end local v5    # "uci":Lorg/apache/xpath/axes/UnionChildIterator;
    :cond_4
    return-object v6
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 262
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 263
    new-instance v1, Lorg/apache/xpath/axes/IteratorPool;

    #@5
    invoke-direct {v1, p0}, Lorg/apache/xpath/axes/IteratorPool;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    #@8
    iput-object v1, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 258
    return-void

    #@b
    .line 266
    :catch_0
    move-exception v0

    #@c
    .line 267
    .local v0, "cnfe":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljavax/xml/transform/TransformerException;

    #@e
    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@11
    throw v1
.end method


# virtual methods
.method public addIterator(Lorg/apache/xml/dtm/DTMIterator;)V
    .locals 4
    .param p1, "expr"    # Lorg/apache/xml/dtm/DTMIterator;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 103
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    #@3
    if-nez v2, :cond_1

    #@5
    .line 105
    const/4 v2, 0x1

    #@6
    new-array v2, v2, [Lorg/apache/xml/dtm/DTMIterator;

    #@8
    iput-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    #@a
    .line 106
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    #@c
    aput-object p1, v2, v3

    #@e
    .line 119
    :goto_0
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    #@11
    .line 120
    instance-of v2, p1, Lorg/apache/xpath/Expression;

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 121
    check-cast p1, Lorg/apache/xpath/Expression;

    #@17
    .end local p1    # "expr":Lorg/apache/xml/dtm/DTMIterator;
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@1a
    .line 98
    :cond_0
    return-void

    #@1b
    .line 110
    .restart local p1    # "expr":Lorg/apache/xml/dtm/DTMIterator;
    :cond_1
    iget-object v0, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    #@1d
    .line 111
    .local v0, "exprs":[Lorg/apache/xml/dtm/DTMIterator;
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    #@1f
    array-length v1, v2

    #@20
    .line 113
    .local v1, "len":I
    add-int/lit8 v2, v1, 0x1

    #@22
    new-array v2, v2, [Lorg/apache/xml/dtm/DTMIterator;

    #@24
    iput-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    #@26
    .line 115
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    #@28
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2b
    .line 117
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    #@2d
    aput-object p1, v2, v1

    #@2f
    goto :goto_0
.end method

.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .locals 4
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    #@0
    .prologue
    .line 539
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitUnionPath(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/axes/UnionPathIterator;)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 541
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 543
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    #@c
    array-length v1, v2

    #@d
    .line 544
    .local v1, "n":I
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@10
    .line 546
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    #@12
    aget-object v2, v2, v0

    #@14
    new-instance v3, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;

    #@16
    invoke-direct {v3, p0, v0}, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;-><init>(Lorg/apache/xpath/axes/UnionPathIterator;I)V

    #@19
    invoke-virtual {v2, v3, p2}, Lorg/apache/xpath/axes/LocPathIterator;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@1c
    .line 544
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 537
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    return-void
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
    .line 282
    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lorg/apache/xpath/axes/UnionPathIterator;

    #@6
    .line 283
    .local v0, "clone":Lorg/apache/xpath/axes/UnionPathIterator;
    iget-object v3, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 285
    iget-object v3, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    #@c
    array-length v2, v3

    #@d
    .line 287
    .local v2, "n":I
    new-array v3, v2, [Lorg/apache/xml/dtm/DTMIterator;

    #@f
    iput-object v3, v0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    #@11
    .line 289
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@14
    .line 291
    iget-object v4, v0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    #@16
    iget-object v3, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    #@18
    aget-object v3, v3, v1

    #@1a
    invoke-interface {v3}, Lorg/apache/xml/dtm/DTMIterator;->clone()Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    check-cast v3, Lorg/apache/xml/dtm/DTMIterator;

    #@20
    aput-object v3, v4, v1

    #@22
    .line 289
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 295
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_0
    return-object v0
.end method

.method protected createDTMIterator(Lorg/apache/xpath/compiler/Compiler;I)Lorg/apache/xpath/axes/LocPathIterator;
    .locals 3
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p2, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 314
    invoke-virtual {p1}, Lorg/apache/xpath/compiler/Compiler;->getLocationPathDepth()I

    #@4
    move-result v2

    #@5
    if-gtz v2, :cond_0

    #@7
    const/4 v1, 0x1

    #@8
    .line 313
    :cond_0
    invoke-static {p1, p2, v1}, Lorg/apache/xpath/axes/WalkerFactory;->newDTMIterator(Lorg/apache/xpath/compiler/Compiler;IZ)Lorg/apache/xml/dtm/DTMIterator;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lorg/apache/xpath/axes/LocPathIterator;

    #@e
    .line 315
    .local v0, "lpi":Lorg/apache/xpath/axes/LocPathIterator;
    return-object v0
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 6
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 557
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/LocPathIterator;->deepEquals(Lorg/apache/xpath/Expression;)Z

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_0

    #@7
    .line 558
    return v5

    #@8
    :cond_0
    move-object v2, p1

    #@9
    .line 560
    check-cast v2, Lorg/apache/xpath/axes/UnionPathIterator;

    #@b
    .line 562
    .local v2, "upi":Lorg/apache/xpath/axes/UnionPathIterator;
    iget-object v3, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    #@d
    if-eqz v3, :cond_4

    #@f
    .line 564
    iget-object v3, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    #@11
    array-length v1, v3

    #@12
    .line 566
    .local v1, "n":I
    iget-object v3, v2, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    #@14
    if-eqz v3, :cond_1

    #@16
    iget-object v3, v2, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    #@18
    array-length v3, v3

    #@19
    if-eq v3, v1, :cond_2

    #@1b
    .line 567
    :cond_1
    return v5

    #@1c
    .line 569
    :cond_2
    const/4 v0, 0x0

    #@1d
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_5

    #@1f
    .line 571
    iget-object v3, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    #@21
    aget-object v3, v3, v0

    #@23
    iget-object v4, v2, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    #@25
    aget-object v4, v4, v0

    #@27
    invoke-virtual {v3, v4}, Lorg/apache/xpath/axes/LocPathIterator;->deepEquals(Lorg/apache/xpath/Expression;)Z

    #@2a
    move-result v3

    #@2b
    if-nez v3, :cond_3

    #@2d
    .line 572
    return v5

    #@2e
    .line 569
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_0

    #@31
    .line 575
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_4
    iget-object v3, v2, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    #@33
    if-eqz v3, :cond_5

    #@35
    .line 577
    return v5

    #@36
    .line 580
    :cond_5
    const/4 v3, 0x1

    #@37
    return v3
.end method

.method public detach()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 133
    iget-boolean v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_allowDetach:Z

    #@3
    if-eqz v2, :cond_1

    #@5
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    #@7
    if-eqz v2, :cond_1

    #@9
    .line 134
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    #@b
    array-length v1, v2

    #@c
    .line 135
    .local v1, "n":I
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@f
    .line 137
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    #@11
    aget-object v2, v2, v0

    #@13
    invoke-interface {v2}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    #@16
    .line 135
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 139
    :cond_0
    iput-object v3, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    #@1b
    .line 131
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    return-void
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 2
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    #@0
    .prologue
    .line 455
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 457
    iget-object v1, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    #@8
    aget-object v1, v1, v0

    #@a
    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/axes/LocPathIterator;->fixupVariables(Ljava/util/Vector;I)V

    #@d
    .line 455
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 453
    :cond_0
    return-void
.end method

.method public getAnalysisBits()I
    .locals 5

    #@0
    .prologue
    .line 233
    const/4 v1, 0x0

    #@1
    .line 235
    .local v1, "bits":I
    iget-object v4, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    #@3
    if-eqz v4, :cond_0

    #@5
    .line 237
    iget-object v4, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    #@7
    array-length v3, v4

    #@8
    .line 239
    .local v3, "n":I
    const/4 v2, 0x0

    #@9
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    #@b
    .line 241
    iget-object v4, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    #@d
    aget-object v4, v4, v2

    #@f
    invoke-virtual {v4}, Lorg/apache/xpath/axes/LocPathIterator;->getAnalysisBits()I

    #@12
    move-result v0

    #@13
    .line 242
    .local v0, "bit":I
    or-int/2addr v1, v0

    #@14
    .line 239
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 246
    .end local v0    # "bit":I
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_0
    return v1
.end method

.method public getAxis()I
    .locals 1

    #@0
    .prologue
    .line 488
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method protected loadLocationPaths(Lorg/apache/xpath/compiler/Compiler;II)V
    .locals 4
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p2, "opPos"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 334
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    #@3
    move-result v1

    #@4
    .line 336
    .local v1, "steptype":I
    const/16 v2, 0x1c

    #@6
    if-ne v1, v2, :cond_0

    #@8
    .line 338
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    #@b
    move-result v2

    #@c
    add-int/lit8 v3, p3, 0x1

    #@e
    invoke-virtual {p0, p1, v2, v3}, Lorg/apache/xpath/axes/UnionPathIterator;->loadLocationPaths(Lorg/apache/xpath/compiler/Compiler;II)V

    #@11
    .line 340
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    #@13
    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/axes/UnionPathIterator;->createDTMIterator(Lorg/apache/xpath/compiler/Compiler;I)Lorg/apache/xpath/axes/LocPathIterator;

    #@16
    move-result-object v3

    #@17
    aput-object v3, v2, p3

    #@19
    .line 341
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    #@1b
    aget-object v2, v2, p3

    #@1d
    invoke-virtual {v2, p0}, Lorg/apache/xpath/axes/LocPathIterator;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@20
    .line 330
    :goto_0
    return-void

    #@21
    .line 348
    :cond_0
    packed-switch v1, :pswitch_data_0

    #@24
    .line 370
    new-array v2, p3, [Lorg/apache/xpath/axes/LocPathIterator;

    #@26
    iput-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    #@28
    goto :goto_0

    #@29
    .line 354
    :pswitch_0
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    #@2c
    move-result v2

    #@2d
    add-int/lit8 v3, p3, 0x1

    #@2f
    invoke-virtual {p0, p1, v2, v3}, Lorg/apache/xpath/axes/UnionPathIterator;->loadLocationPaths(Lorg/apache/xpath/compiler/Compiler;II)V

    #@32
    .line 357
    new-instance v0, Lorg/apache/xpath/axes/WalkingIterator;

    #@34
    invoke-virtual {p1}, Lorg/apache/xpath/compiler/Compiler;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    #@37
    move-result-object v2

    #@38
    invoke-direct {v0, v2}, Lorg/apache/xpath/axes/WalkingIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    #@3b
    .line 358
    .local v0, "iter":Lorg/apache/xpath/axes/WalkingIterator;
    invoke-virtual {v0, p0}, Lorg/apache/xpath/axes/WalkingIterator;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@3e
    .line 360
    invoke-virtual {p1}, Lorg/apache/xpath/compiler/Compiler;->getLocationPathDepth()I

    #@41
    move-result v2

    #@42
    if-gtz v2, :cond_1

    #@44
    .line 361
    const/4 v2, 0x1

    #@45
    invoke-virtual {v0, v2}, Lorg/apache/xpath/axes/WalkingIterator;->setIsTopLevel(Z)V

    #@48
    .line 363
    :cond_1
    new-instance v2, Lorg/apache/xpath/axes/FilterExprWalker;

    #@4a
    invoke-direct {v2, v0}, Lorg/apache/xpath/axes/FilterExprWalker;-><init>(Lorg/apache/xpath/axes/WalkingIterator;)V

    #@4d
    iput-object v2, v0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@4f
    .line 365
    iget-object v2, v0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@51
    invoke-virtual {v2, p1, p2, v1}, Lorg/apache/xpath/axes/AxesWalker;->init(Lorg/apache/xpath/compiler/Compiler;II)V

    #@54
    .line 367
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    #@56
    aput-object v0, v2, p3

    #@58
    goto :goto_0

    #@59
    .line 348
    nop

    #@5a
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public nextNode()I
    .locals 8

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    .line 384
    iget-boolean v6, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_foundLast:Z

    #@3
    if-eqz v6, :cond_0

    #@5
    .line 385
    return v7

    #@6
    .line 389
    :cond_0
    const/4 v1, -0x1

    #@7
    .line 391
    .local v1, "earliestNode":I
    iget-object v6, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    #@9
    if-eqz v6, :cond_6

    #@b
    .line 393
    iget-object v6, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    #@d
    array-length v4, v6

    #@e
    .line 394
    .local v4, "n":I
    const/4 v3, -0x1

    #@f
    .line 396
    .local v3, "iteratorUsed":I
    const/4 v2, 0x0

    #@10
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_5

    #@12
    .line 398
    iget-object v6, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    #@14
    aget-object v6, v6, v2

    #@16
    invoke-interface {v6}, Lorg/apache/xml/dtm/DTMIterator;->getCurrentNode()I

    #@19
    move-result v5

    #@1a
    .line 400
    .local v5, "node":I
    if-ne v7, v5, :cond_2

    #@1c
    .line 396
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 402
    :cond_2
    if-ne v7, v1, :cond_3

    #@21
    .line 404
    move v3, v2

    #@22
    .line 405
    move v1, v5

    #@23
    goto :goto_1

    #@24
    .line 409
    :cond_3
    if-ne v5, v1, :cond_4

    #@26
    .line 413
    iget-object v6, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    #@28
    aget-object v6, v6, v2

    #@2a
    invoke-interface {v6}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    #@2d
    goto :goto_1

    #@2e
    .line 417
    :cond_4
    invoke-virtual {p0, v5}, Lorg/apache/xpath/axes/UnionPathIterator;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@31
    move-result-object v0

    #@32
    .line 419
    .local v0, "dtm":Lorg/apache/xml/dtm/DTM;
    invoke-interface {v0, v5, v1}, Lorg/apache/xml/dtm/DTM;->isNodeAfter(II)Z

    #@35
    move-result v6

    #@36
    if-eqz v6, :cond_1

    #@38
    .line 421
    move v3, v2

    #@39
    .line 422
    move v1, v5

    #@3a
    goto :goto_1

    #@3b
    .line 428
    .end local v0    # "dtm":Lorg/apache/xml/dtm/DTM;
    .end local v5    # "node":I
    :cond_5
    if-eq v7, v1, :cond_7

    #@3d
    .line 430
    iget-object v6, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    #@3f
    aget-object v6, v6, v3

    #@41
    invoke-interface {v6}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    #@44
    .line 432
    invoke-virtual {p0}, Lorg/apache/xpath/axes/UnionPathIterator;->incrementCurrentPos()V

    #@47
    .line 438
    .end local v2    # "i":I
    .end local v3    # "iteratorUsed":I
    .end local v4    # "n":I
    :cond_6
    :goto_2
    iput v1, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_lastFetched:I

    #@49
    .line 440
    return v1

    #@4a
    .line 435
    .restart local v2    # "i":I
    .restart local v3    # "iteratorUsed":I
    .restart local v4    # "n":I
    :cond_7
    const/4 v6, 0x1

    #@4b
    iput-boolean v6, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_foundLast:Z

    #@4d
    goto :goto_2
.end method

.method public setRoot(ILjava/lang/Object;)V
    .locals 7
    .param p1, "context"    # I
    .param p2, "environment"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/LocPathIterator;->setRoot(ILjava/lang/Object;)V

    #@3
    .line 73
    :try_start_0
    iget-object v5, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    #@5
    if-eqz v5, :cond_1

    #@7
    .line 75
    iget-object v5, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    #@9
    array-length v3, v5

    #@a
    .line 76
    .local v3, "n":I
    new-array v4, v3, [Lorg/apache/xml/dtm/DTMIterator;

    #@c
    .line 78
    .local v4, "newIters":[Lorg/apache/xml/dtm/DTMIterator;
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    #@f
    .line 80
    iget-object v5, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    #@11
    aget-object v5, v5, v1

    #@13
    iget-object v6, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    #@15
    invoke-virtual {v5, v6, p1}, Lorg/apache/xpath/axes/LocPathIterator;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    #@18
    move-result-object v2

    #@19
    .line 81
    .local v2, "iter":Lorg/apache/xml/dtm/DTMIterator;
    aput-object v2, v4, v1

    #@1b
    .line 82
    invoke-interface {v2}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    #@1e
    .line 78
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 84
    .end local v2    # "iter":Lorg/apache/xml/dtm/DTMIterator;
    :cond_0
    iput-object v4, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 67
    .end local v1    # "i":I
    .end local v3    # "n":I
    .end local v4    # "newIters":[Lorg/apache/xml/dtm/DTMIterator;
    :cond_1
    return-void

    #@24
    .line 88
    :catch_0
    move-exception v0

    #@25
    .line 89
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@27
    invoke-direct {v5, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@2a
    throw v5
.end method
