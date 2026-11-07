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
.field static final whitelist serialVersionUID:J = -0x36445c0390868a5dL


# instance fields
.field protected greylist m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

.field protected greylist m_iterators:[Lorg/apache/xml/dtm/DTMIterator;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    .line 57
    iput-object v0, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xpath/compiler/Compiler;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>()V

    .line 162
    invoke-static {p2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result p2

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xpath/axes/UnionPathIterator;->loadLocationPaths(Lorg/apache/xpath/compiler/Compiler;II)V

    return-void
.end method

.method public static greylist createUnionIterator(Lorg/apache/xpath/compiler/Compiler;I)Lorg/apache/xpath/axes/LocPathIterator;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 186
    new-instance v0, Lorg/apache/xpath/axes/UnionPathIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/xpath/axes/UnionPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;I)V

    .line 187
    iget-object p0, v0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    array-length p0, p0

    const/4 p1, 0x0

    move v1, p1

    :goto_a
    if-ge v1, p0, :cond_22

    .line 191
    iget-object v2, v0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    aget-object v2, v2, v1

    .line 193
    invoke-virtual {v2}, Lorg/apache/xpath/axes/LocPathIterator;->getAxis()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_18

    return-object v0

    .line 201
    :cond_18
    invoke-static {v2}, Lorg/apache/xpath/axes/HasPositionalPredChecker;->check(Lorg/apache/xpath/axes/LocPathIterator;)Z

    move-result v2

    if-eqz v2, :cond_1f

    return-object v0

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 210
    :cond_22
    new-instance v1, Lorg/apache/xpath/axes/UnionChildIterator;

    invoke-direct {v1}, Lorg/apache/xpath/axes/UnionChildIterator;-><init>()V

    :goto_27
    if-ge p1, p0, :cond_33

    .line 214
    iget-object v2, v0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    aget-object v2, v2, p1

    .line 218
    invoke-virtual {v1, v2}, Lorg/apache/xpath/axes/UnionChildIterator;->addNodeTest(Lorg/apache/xpath/axes/PredicatedNodeTest;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_27

    :cond_33
    return-object v1
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 262
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 263
    new-instance p1, Lorg/apache/xpath/axes/IteratorPool;

    invoke-direct {p1, p0}, Lorg/apache/xpath/axes/IteratorPool;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    iput-object p1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    .line 267
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public greylist addIterator(Lorg/apache/xml/dtm/DTMIterator;)V
    .registers 6

    .line 103
    iget-object v0, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    .line 105
    new-array v0, v0, [Lorg/apache/xml/dtm/DTMIterator;

    iput-object v0, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    .line 106
    aput-object p1, v0, v1

    goto :goto_1b

    .line 111
    :cond_d
    array-length v2, v0

    add-int/lit8 v3, v2, 0x1

    .line 113
    new-array v3, v3, [Lorg/apache/xml/dtm/DTMIterator;

    iput-object v3, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    .line 115
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    iget-object v0, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    aput-object p1, v0, v2

    .line 119
    :goto_1b
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    .line 120
    instance-of v0, p1, Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_27

    .line 121
    check-cast p1, Lorg/apache/xpath/Expression;

    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    :cond_27
    return-void
.end method

.method public greylist callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .registers 6

    .line 539
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitUnionPath(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/axes/UnionPathIterator;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 541
    iget-object p1, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    if-eqz p1, :cond_1d

    .line 543
    array-length p1, p1

    const/4 v0, 0x0

    :goto_c
    if-ge v0, p1, :cond_1d

    .line 546
    iget-object v1, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    aget-object v1, v1, v0

    new-instance v2, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;

    invoke-direct {v2, p0, v0}, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;-><init>(Lorg/apache/xpath/axes/UnionPathIterator;I)V

    invoke-virtual {v1, v2, p2}, Lorg/apache/xpath/axes/LocPathIterator;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1d
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 282
    invoke-super {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/UnionPathIterator;

    .line 283
    iget-object v1, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v1, :cond_23

    .line 285
    array-length v1, v1

    .line 287
    new-array v2, v1, [Lorg/apache/xml/dtm/DTMIterator;

    iput-object v2, v0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_23

    .line 291
    iget-object v3, v0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    iget-object v4, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lorg/apache/xml/dtm/DTMIterator;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xml/dtm/DTMIterator;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_23
    return-object v0
.end method

.method protected greylist createDTMIterator(Lorg/apache/xpath/compiler/Compiler;I)Lorg/apache/xpath/axes/LocPathIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 314
    invoke-virtual {p1}, Lorg/apache/xpath/compiler/Compiler;->getLocationPathDepth()I

    move-result p0

    if-gtz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    .line 313
    :goto_9
    invoke-static {p1, p2, p0}, Lorg/apache/xpath/axes/WalkerFactory;->newDTMIterator(Lorg/apache/xpath/compiler/Compiler;IZ)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0

    check-cast p0, Lorg/apache/xpath/axes/LocPathIterator;

    return-object p0
.end method

.method public greylist deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 7

    .line 557
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/PredicatedNodeTest;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 560
    :cond_8
    check-cast p1, Lorg/apache/xpath/axes/UnionPathIterator;

    .line 562
    iget-object v0, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    if-eqz v0, :cond_2d

    .line 564
    array-length v0, v0

    .line 566
    iget-object v2, p1, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    if-eqz v2, :cond_2c

    array-length v2, v2

    if-eq v2, v0, :cond_17

    goto :goto_2c

    :cond_17
    move v2, v1

    :goto_18
    if-ge v2, v0, :cond_32

    .line 571
    iget-object v3, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    aget-object v3, v3, v2

    iget-object v4, p1, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xpath/axes/PredicatedNodeTest;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v3

    if-nez v3, :cond_29

    return v1

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2c
    :goto_2c
    return v1

    .line 575
    :cond_2d
    iget-object p0, p1, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    if-eqz p0, :cond_32

    return v1

    :cond_32
    const/4 p0, 0x1

    return p0
.end method

.method public greylist detach()V
    .registers 4

    .line 133
    iget-boolean v0, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_allowDetach:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v0, :cond_19

    .line 134
    array-length v0, v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_16

    .line 137
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_16
    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    :cond_19
    return-void
.end method

.method public greylist fixupVariables(Ljava/util/Vector;I)V
    .registers 6

    const/4 v0, 0x0

    .line 455
    :goto_1
    iget-object v1, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 457
    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/axes/PredicatedNodeTest;->fixupVariables(Ljava/util/Vector;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method public greylist getAnalysisBits()I
    .registers 5

    .line 235
    iget-object v0, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 237
    array-length v0, v0

    move v2, v1

    :goto_7
    if-ge v1, v0, :cond_15

    .line 241
    iget-object v3, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/apache/xpath/axes/LocPathIterator;->getAnalysisBits()I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    return v2

    :cond_16
    return v1
.end method

.method public greylist getAxis()I
    .registers 1

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method protected greylist loadLocationPaths(Lorg/apache/xpath/compiler/Compiler;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 334
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_21

    .line 338
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/OpMap;->getNextOpPos(I)I

    move-result v0

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/xpath/axes/UnionPathIterator;->loadLocationPaths(Lorg/apache/xpath/compiler/Compiler;II)V

    .line 340
    iget-object v0, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/axes/UnionPathIterator;->createDTMIterator(Lorg/apache/xpath/compiler/Compiler;I)Lorg/apache/xpath/axes/LocPathIterator;

    move-result-object p1

    aput-object p1, v0, p3

    .line 341
    iget-object p1, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    aget-object p1, p1, p3

    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    return-void

    :cond_21
    packed-switch v0, :pswitch_data_58

    .line 370
    new-array p1, p3, [Lorg/apache/xpath/axes/LocPathIterator;

    iput-object p1, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    return-void

    .line 354
    :pswitch_29
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/OpMap;->getNextOpPos(I)I

    move-result v1

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lorg/apache/xpath/axes/UnionPathIterator;->loadLocationPaths(Lorg/apache/xpath/compiler/Compiler;II)V

    .line 356
    new-instance v1, Lorg/apache/xpath/axes/WalkingIterator;

    .line 357
    invoke-virtual {p1}, Lorg/apache/xpath/compiler/Compiler;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/xpath/axes/WalkingIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 358
    invoke-virtual {v1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 360
    invoke-virtual {p1}, Lorg/apache/xpath/compiler/Compiler;->getLocationPathDepth()I

    move-result v2

    if-gtz v2, :cond_48

    const/4 v2, 0x1

    .line 361
    invoke-virtual {v1, v2}, Lorg/apache/xpath/axes/LocPathIterator;->setIsTopLevel(Z)V

    .line 363
    :cond_48
    new-instance v2, Lorg/apache/xpath/axes/FilterExprWalker;

    invoke-direct {v2, v1}, Lorg/apache/xpath/axes/FilterExprWalker;-><init>(Lorg/apache/xpath/axes/WalkingIterator;)V

    iput-object v2, v1, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    .line 365
    invoke-virtual {v2, p1, p2, v0}, Lorg/apache/xpath/axes/AxesWalker;->init(Lorg/apache/xpath/compiler/Compiler;II)V

    .line 367
    iget-object p0, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    aput-object v1, p0, p3

    return-void

    nop

    :pswitch_data_58
    .packed-switch 0x16
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method

.method public greylist nextNode()I
    .registers 8

    .line 384
    iget-boolean v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    return v1

    .line 391
    :cond_6
    iget-object v0, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v0, :cond_48

    .line 393
    array-length v0, v0

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    :goto_e
    if-ge v2, v0, :cond_37

    .line 398
    iget-object v5, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    aget-object v5, v5, v2

    invoke-interface {v5}, Lorg/apache/xml/dtm/DTMIterator;->getCurrentNode()I

    move-result v5

    if-ne v1, v5, :cond_1b

    goto :goto_34

    :cond_1b
    if-ne v1, v3, :cond_1e

    goto :goto_32

    :cond_1e
    if-ne v5, v3, :cond_28

    .line 413
    iget-object v5, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    aget-object v5, v5, v2

    invoke-interface {v5}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    goto :goto_34

    .line 417
    :cond_28
    invoke-virtual {p0, v5}, Lorg/apache/xpath/axes/LocPathIterator;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v6

    .line 419
    invoke-interface {v6, v5, v3}, Lorg/apache/xml/dtm/DTM;->isNodeAfter(II)Z

    move-result v6

    if-eqz v6, :cond_34

    :goto_32
    move v4, v2

    move v3, v5

    :cond_34
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_37
    if-eq v1, v3, :cond_44

    .line 430
    iget-object v0, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    aget-object v0, v0, v4

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    .line 432
    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->incrementCurrentPos()V

    goto :goto_47

    :cond_44
    const/4 v0, 0x1

    .line 435
    iput-boolean v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    :goto_47
    move v1, v3

    .line 438
    :cond_48
    iput v1, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_lastFetched:I

    return v1
.end method

.method public greylist setRoot(ILjava/lang/Object;)V
    .registers 7

    .line 69
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/LocPathIterator;->setRoot(ILjava/lang/Object;)V

    .line 73
    :try_start_3
    iget-object p2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    if-eqz p2, :cond_21

    .line 75
    array-length p2, p2

    .line 76
    new-array v0, p2, [Lorg/apache/xml/dtm/DTMIterator;

    const/4 v1, 0x0

    :goto_b
    if-ge v1, p2, :cond_1f

    .line 80
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/apache/xpath/axes/LocPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v2, v3, p1}, Lorg/apache/xpath/axes/LocPathIterator;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v2

    .line 81
    aput-object v2, v0, v1

    .line 82
    invoke-interface {v2}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 84
    :cond_1f
    iput-object v0, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_21} :catch_22

    :cond_21
    return-void

    :catch_22
    move-exception p0

    .line 89
    new-instance p1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method
