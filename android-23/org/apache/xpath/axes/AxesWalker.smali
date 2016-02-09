.class public Lorg/apache/xpath/axes/AxesWalker;
.super Lorg/apache/xpath/axes/PredicatedNodeTest;
.source "AxesWalker.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/xpath/axes/PathComponent;
.implements Lorg/apache/xpath/ExpressionOwner;


# static fields
.field static final serialVersionUID:J = -0x292976585216b31fL


# instance fields
.field protected m_axis:I

.field private transient m_currentNode:I

.field private m_dtm:Lorg/apache/xml/dtm/DTM;

.field transient m_isFresh:Z

.field protected m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

.field m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

.field transient m_root:I

.field protected m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;


# direct methods
.method public constructor <init>(Lorg/apache/xpath/axes/LocPathIterator;I)V
    .locals 1
    .param p1, "locPathIterator"    # Lorg/apache/xpath/axes/LocPathIterator;
    .param p2, "axis"    # I

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 52
    invoke-direct {p0, p1}, Lorg/apache/xpath/axes/PredicatedNodeTest;-><init>(Lorg/apache/xpath/axes/LocPathIterator;)V

    #@4
    .line 567
    iput v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_root:I

    #@6
    .line 572
    iput v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    #@8
    .line 586
    iput v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_axis:I

    #@a
    .line 53
    iput p2, p0, Lorg/apache/xpath/axes/AxesWalker;->m_axis:I

    #@c
    .line 50
    return-void
.end method

.method static findClone(Lorg/apache/xpath/axes/AxesWalker;Ljava/util/Vector;)Lorg/apache/xpath/axes/AxesWalker;
    .locals 4
    .param p0, "key"    # Lorg/apache/xpath/axes/AxesWalker;
    .param p1, "cloneList"    # Ljava/util/Vector;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 159
    if-eqz p1, :cond_1

    #@3
    .line 162
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    #@6
    move-result v1

    #@7
    .line 163
    .local v1, "n":I
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@a
    .line 165
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    if-ne p0, v2, :cond_0

    #@10
    .line 166
    add-int/lit8 v2, v0, 0x1

    #@12
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Lorg/apache/xpath/axes/AxesWalker;

    #@18
    return-object v2

    #@19
    .line 163
    :cond_0
    add-int/lit8 v0, v0, 0x2

    #@1b
    goto :goto_0

    #@1c
    .line 169
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    return-object v3
.end method

.method private returnNextNode(I)I
    .locals 0
    .param p1, "n"    # I

    #@0
    .prologue
    .line 312
    return p1
.end method


# virtual methods
.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .locals 1
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    #@0
    .prologue
    .line 522
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitStep(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/patterns/NodeTest;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 524
    invoke-virtual {p0, p2}, Lorg/apache/xpath/axes/AxesWalker;->callPredicateVisitors(Lorg/apache/xpath/XPathVisitor;)V

    #@9
    .line 525
    iget-object v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 527
    iget-object v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@f
    invoke-virtual {v0, p0, p2}, Lorg/apache/xpath/axes/AxesWalker;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@12
    .line 520
    :cond_0
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
    .line 91
    invoke-super {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lorg/apache/xpath/axes/AxesWalker;

    #@6
    .line 97
    .local v0, "clone":Lorg/apache/xpath/axes/AxesWalker;
    return-object v0
.end method

.method cloneDeep(Lorg/apache/xpath/axes/WalkingIterator;Ljava/util/Vector;)Lorg/apache/xpath/axes/AxesWalker;
    .locals 2
    .param p1, "cloneOwner"    # Lorg/apache/xpath/axes/WalkingIterator;
    .param p2, "cloneList"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 116
    invoke-static {p0, p2}, Lorg/apache/xpath/axes/AxesWalker;->findClone(Lorg/apache/xpath/axes/AxesWalker;Ljava/util/Vector;)Lorg/apache/xpath/axes/AxesWalker;

    #@3
    move-result-object v0

    #@4
    .line 117
    .local v0, "clone":Lorg/apache/xpath/axes/AxesWalker;
    if-eqz v0, :cond_0

    #@6
    .line 118
    return-object v0

    #@7
    .line 119
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->clone()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    .end local v0    # "clone":Lorg/apache/xpath/axes/AxesWalker;
    check-cast v0, Lorg/apache/xpath/axes/AxesWalker;

    #@d
    .line 120
    .restart local v0    # "clone":Lorg/apache/xpath/axes/AxesWalker;
    invoke-virtual {v0, p1}, Lorg/apache/xpath/axes/AxesWalker;->setLocPathIterator(Lorg/apache/xpath/axes/LocPathIterator;)V

    #@10
    .line 121
    if-eqz p2, :cond_1

    #@12
    .line 123
    invoke-virtual {p2, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@15
    .line 124
    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@18
    .line 127
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    #@1b
    move-result-object v1

    #@1c
    iget-object v1, v1, Lorg/apache/xpath/axes/WalkingIterator;->m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@1e
    if-ne v1, p0, :cond_2

    #@20
    .line 128
    iput-object v0, p1, Lorg/apache/xpath/axes/WalkingIterator;->m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@22
    .line 130
    :cond_2
    iget-object v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@24
    if-eqz v1, :cond_3

    #@26
    .line 131
    iget-object v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@28
    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/axes/AxesWalker;->cloneDeep(Lorg/apache/xpath/axes/WalkingIterator;Ljava/util/Vector;)Lorg/apache/xpath/axes/AxesWalker;

    #@2b
    move-result-object v1

    #@2c
    iput-object v1, v0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@2e
    .line 135
    :cond_3
    if-eqz p2, :cond_5

    #@30
    .line 137
    iget-object v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@32
    if-eqz v1, :cond_4

    #@34
    .line 138
    iget-object v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@36
    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/axes/AxesWalker;->cloneDeep(Lorg/apache/xpath/axes/WalkingIterator;Ljava/util/Vector;)Lorg/apache/xpath/axes/AxesWalker;

    #@39
    move-result-object v1

    #@3a
    iput-object v1, v0, Lorg/apache/xpath/axes/AxesWalker;->m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@3c
    .line 145
    :cond_4
    :goto_0
    return-object v0

    #@3d
    .line 142
    :cond_5
    iget-object v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@3f
    if-eqz v1, :cond_4

    #@41
    .line 143
    iget-object v1, v0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@43
    iput-object v0, v1, Lorg/apache/xpath/axes/AxesWalker;->m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@45
    goto :goto_0
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 4
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 554
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/PredicatedNodeTest;->deepEquals(Lorg/apache/xpath/Expression;)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 555
    return v3

    #@8
    :cond_0
    move-object v0, p1

    #@9
    .line 557
    check-cast v0, Lorg/apache/xpath/axes/AxesWalker;

    #@b
    .line 558
    .local v0, "walker":Lorg/apache/xpath/axes/AxesWalker;
    iget v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_axis:I

    #@d
    iget v2, v0, Lorg/apache/xpath/axes/AxesWalker;->m_axis:I

    #@f
    if-eq v1, v2, :cond_1

    #@11
    .line 559
    return v3

    #@12
    .line 561
    :cond_1
    const/4 v1, 0x1

    #@13
    return v1
.end method

.method public detach()V
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v1, -0x1

    #@2
    .line 179
    iput v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    #@4
    .line 180
    iput-object v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@6
    .line 181
    iput-object v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@8
    .line 182
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_isFresh:Z

    #@b
    .line 183
    iput v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_root:I

    #@d
    .line 177
    return-void
.end method

.method public getAnalysisBits()I
    .locals 2

    #@0
    .prologue
    .line 205
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->getAxis()I

    #@3
    move-result v0

    #@4
    .line 206
    .local v0, "axis":I
    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->getAnalysisBitFromAxes(I)I

    #@7
    move-result v1

    #@8
    .line 207
    .local v1, "bit":I
    return v1
.end method

.method public getAxis()I
    .locals 1

    #@0
    .prologue
    .line 508
    iget v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_axis:I

    #@2
    return v0
.end method

.method public final getCurrentNode()I
    .locals 1

    #@0
    .prologue
    .line 252
    iget v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    #@2
    return v0
.end method

.method public getDTM(I)Lorg/apache/xml/dtm/DTM;
    .locals 1
    .param p1, "node"    # I

    #@0
    .prologue
    .line 485
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lorg/apache/xpath/axes/WalkingIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getExpression()Lorg/apache/xpath/Expression;
    .locals 1

    #@0
    .prologue
    .line 537
    iget-object v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@2
    return-object v0
.end method

.method public getLastPos(Lorg/apache/xpath/XPathContext;)I
    .locals 9
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, -0x1

    #@2
    .line 415
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->getProximityPosition()I

    #@5
    move-result v3

    #@6
    .line 421
    .local v3, "pos":I
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->clone()Ljava/lang/Object;

    #@9
    move-result-object v5

    #@a
    check-cast v5, Lorg/apache/xpath/axes/AxesWalker;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 428
    .local v5, "walker":Lorg/apache/xpath/axes/AxesWalker;
    iget v6, p0, Lorg/apache/xpath/axes/AxesWalker;->m_predicateIndex:I

    #@e
    invoke-virtual {v5, v6}, Lorg/apache/xpath/axes/AxesWalker;->setPredicateCount(I)V

    #@11
    .line 429
    invoke-virtual {v5, v8}, Lorg/apache/xpath/axes/AxesWalker;->setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    #@14
    .line 430
    invoke-virtual {v5, v8}, Lorg/apache/xpath/axes/AxesWalker;->setPrevWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    #@17
    .line 432
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    #@1a
    move-result-object v1

    #@1b
    .line 433
    .local v1, "lpi":Lorg/apache/xpath/axes/WalkingIterator;
    invoke-virtual {v1}, Lorg/apache/xpath/axes/WalkingIterator;->getLastUsedWalker()Lorg/apache/xpath/axes/AxesWalker;

    #@1e
    move-result-object v4

    #@1f
    .line 437
    .local v4, "savedWalker":Lorg/apache/xpath/axes/AxesWalker;
    :try_start_1
    invoke-virtual {v1, v5}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    #@22
    .line 441
    :goto_0
    invoke-virtual {v5}, Lorg/apache/xpath/axes/AxesWalker;->nextNode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    move-result v2

    #@26
    .local v2, "next":I
    if-eq v7, v2, :cond_0

    #@28
    .line 443
    add-int/lit8 v3, v3, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 424
    .end local v1    # "lpi":Lorg/apache/xpath/axes/WalkingIterator;
    .end local v2    # "next":I
    .end local v4    # "savedWalker":Lorg/apache/xpath/axes/AxesWalker;
    .end local v5    # "walker":Lorg/apache/xpath/axes/AxesWalker;
    :catch_0
    move-exception v0

    #@2c
    .line 425
    .local v0, "cnse":Ljava/lang/CloneNotSupportedException;
    return v7

    #@2d
    .line 450
    .end local v0    # "cnse":Ljava/lang/CloneNotSupportedException;
    .restart local v1    # "lpi":Lorg/apache/xpath/axes/WalkingIterator;
    .restart local v2    # "next":I
    .restart local v4    # "savedWalker":Lorg/apache/xpath/axes/AxesWalker;
    .restart local v5    # "walker":Lorg/apache/xpath/axes/AxesWalker;
    :cond_0
    invoke-virtual {v1, v4}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    #@30
    .line 454
    return v3

    #@31
    .line 449
    .end local v2    # "next":I
    :catchall_0
    move-exception v6

    #@32
    .line 450
    invoke-virtual {v1, v4}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    #@35
    .line 449
    throw v6
.end method

.method protected getNextNode()I
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 322
    iget-boolean v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_foundLast:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 323
    return v3

    #@6
    .line 325
    :cond_0
    iget-boolean v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_isFresh:Z

    #@8
    if-eqz v0, :cond_3

    #@a
    .line 327
    iget-object v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@c
    iget v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_root:I

    #@e
    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    #@11
    move-result v0

    #@12
    iput v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    #@14
    .line 328
    const/4 v0, 0x0

    #@15
    iput-boolean v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_isFresh:Z

    #@17
    .line 338
    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    #@19
    if-ne v3, v0, :cond_2

    #@1b
    .line 339
    const/4 v0, 0x1

    #@1c
    iput-boolean v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_foundLast:Z

    #@1e
    .line 341
    :cond_2
    iget v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    #@20
    return v0

    #@21
    .line 333
    :cond_3
    iget v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    #@23
    if-eq v3, v0, :cond_1

    #@25
    .line 335
    iget-object v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@27
    iget v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_root:I

    #@29
    iget v2, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    #@2b
    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    #@2e
    move-result v0

    #@2f
    iput v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    #@31
    goto :goto_0
.end method

.method public getNextWalker()Lorg/apache/xpath/axes/AxesWalker;
    .locals 1

    #@0
    .prologue
    .line 274
    iget-object v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@2
    return-object v0
.end method

.method public getPrevWalker()Lorg/apache/xpath/axes/AxesWalker;
    .locals 1

    #@0
    .prologue
    .line 298
    iget-object v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@2
    return-object v0
.end method

.method public getRoot()I
    .locals 1

    #@0
    .prologue
    .line 196
    iget v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_root:I

    #@2
    return v0
.end method

.method public init(Lorg/apache/xpath/compiler/Compiler;II)V
    .locals 0
    .param p1, "compiler"    # Lorg/apache/xpath/compiler/Compiler;
    .param p2, "opPos"    # I
    .param p3, "stepType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 75
    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/axes/AxesWalker;->initPredicateInfo(Lorg/apache/xpath/compiler/Compiler;I)V

    #@3
    .line 72
    return-void
.end method

.method public isDocOrdered()Z
    .locals 1

    #@0
    .prologue
    .line 497
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public nextNode()I
    .locals 5

    #@0
    .prologue
    .line 355
    const/4 v0, -0x1

    #@1
    .line 356
    .local v0, "nextNode":I
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    #@4
    move-result-object v3

    #@5
    invoke-virtual {v3}, Lorg/apache/xpath/axes/WalkingIterator;->getLastUsedWalker()Lorg/apache/xpath/axes/AxesWalker;

    #@8
    move-result-object v2

    #@9
    .line 360
    .local v2, "walker":Lorg/apache/xpath/axes/AxesWalker;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    #@b
    .line 399
    :goto_1
    return v0

    #@c
    .line 363
    :cond_1
    invoke-virtual {v2}, Lorg/apache/xpath/axes/AxesWalker;->getNextNode()I

    #@f
    move-result v0

    #@10
    .line 365
    const/4 v3, -0x1

    #@11
    if-ne v3, v0, :cond_2

    #@13
    .line 368
    iget-object v2, v2, Lorg/apache/xpath/axes/AxesWalker;->m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@15
    goto :goto_0

    #@16
    .line 372
    :cond_2
    invoke-virtual {v2, v0}, Lorg/apache/xpath/axes/AxesWalker;->acceptNode(I)S

    #@19
    move-result v3

    #@1a
    const/4 v4, 0x1

    #@1b
    if-ne v3, v4, :cond_0

    #@1d
    .line 377
    iget-object v3, v2, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@1f
    if-nez v3, :cond_3

    #@21
    .line 379
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, v2}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    #@28
    goto :goto_1

    #@29
    .line 386
    :cond_3
    move-object v1, v2

    #@2a
    .line 388
    .local v1, "prev":Lorg/apache/xpath/axes/AxesWalker;
    iget-object v2, v2, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@2c
    .line 390
    invoke-virtual {v2, v0}, Lorg/apache/xpath/axes/AxesWalker;->setRoot(I)V

    #@2f
    .line 392
    iput-object v1, v2, Lorg/apache/xpath/axes/AxesWalker;->m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@31
    goto :goto_0
.end method

.method public setDefaultDTM(Lorg/apache/xml/dtm/DTM;)V
    .locals 0
    .param p1, "dtm"    # Lorg/apache/xml/dtm/DTM;

    #@0
    .prologue
    .line 474
    iput-object p1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@2
    .line 472
    return-void
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .locals 0
    .param p1, "exp"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    .line 545
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@3
    .line 546
    check-cast p1, Lorg/apache/xpath/axes/AxesWalker;

    #@5
    .end local p1    # "exp":Lorg/apache/xpath/Expression;
    iput-object p1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@7
    .line 543
    return-void
.end method

.method public setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V
    .locals 0
    .param p1, "walker"    # Lorg/apache/xpath/axes/AxesWalker;

    #@0
    .prologue
    .line 263
    iput-object p1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@2
    .line 261
    return-void
.end method

.method public setPrevWalker(Lorg/apache/xpath/axes/AxesWalker;)V
    .locals 0
    .param p1, "walker"    # Lorg/apache/xpath/axes/AxesWalker;

    #@0
    .prologue
    .line 286
    iput-object p1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

    #@2
    .line 284
    return-void
.end method

.method public setRoot(I)V
    .locals 4
    .param p1, "root"    # I

    #@0
    .prologue
    .line 219
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Lorg/apache/xpath/axes/WalkingIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@7
    move-result-object v0

    #@8
    .line 220
    .local v0, "xctxt":Lorg/apache/xpath/XPathContext;
    invoke-virtual {v0, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@b
    move-result-object v1

    #@c
    iput-object v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@e
    .line 221
    iget-object v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    #@10
    iget v2, p0, Lorg/apache/xpath/axes/AxesWalker;->m_axis:I

    #@12
    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@15
    move-result-object v1

    #@16
    iput-object v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    #@18
    .line 222
    const/4 v1, 0x1

    #@19
    iput-boolean v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_isFresh:Z

    #@1b
    .line 223
    const/4 v1, 0x0

    #@1c
    iput-boolean v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_foundLast:Z

    #@1e
    .line 224
    iput p1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_root:I

    #@20
    .line 225
    iput p1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    #@22
    .line 227
    const/4 v1, -0x1

    #@23
    if-ne v1, p1, :cond_0

    #@25
    .line 229
    new-instance v1, Ljava/lang/RuntimeException;

    #@27
    .line 230
    const-string/jumbo v2, "ER_SETTING_WALKER_ROOT_TO_NULL"

    #@2a
    const/4 v3, 0x0

    #@2b
    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    .line 229
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@32
    throw v1

    #@33
    .line 233
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->resetProximityPositions()V

    #@36
    .line 216
    return-void
.end method

.method public final wi()Lorg/apache/xpath/axes/WalkingIterator;
    .locals 1

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    #@2
    check-cast v0, Lorg/apache/xpath/axes/WalkingIterator;

    #@4
    return-object v0
.end method
