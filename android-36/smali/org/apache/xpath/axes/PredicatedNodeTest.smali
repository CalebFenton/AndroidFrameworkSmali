.class public abstract Lorg/apache/xpath/axes/PredicatedNodeTest;
.super Lorg/apache/xpath/patterns/NodeTest;
.source "PredicatedNodeTest.java"

# interfaces
.implements Lorg/apache/xpath/axes/SubContextList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/axes/PredicatedNodeTest$PredOwner;
    }
.end annotation


# static fields
.field static final greylist DEBUG_PREDICATECOUNTING:Z = false

.field static final whitelist serialVersionUID:J = -0x55f3d768b61b4e07L


# instance fields
.field protected transient greylist m_foundLast:Z

.field protected greylist m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

.field protected greylist m_predCount:I

.field transient greylist m_predicateIndex:I

.field private greylist m_predicates:[Lorg/apache/xpath/Expression;

.field protected transient greylist m_proximityPositions:[I


# direct methods
.method static bridge synthetic greylist -$$Nest$fgetm_predicates(Lorg/apache/xpath/axes/PredicatedNodeTest;)[Lorg/apache/xpath/Expression;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    return-object p0
.end method

.method constructor greylist <init>()V
    .registers 3

    .line 53
    invoke-direct {p0}, Lorg/apache/xpath/patterns/NodeTest;-><init>()V

    const/4 v0, -0x1

    .line 109
    iput v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predCount:I

    const/4 v1, 0x0

    .line 593
    iput-boolean v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    .line 602
    iput v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    return-void
.end method

.method constructor greylist <init>(Lorg/apache/xpath/axes/LocPathIterator;)V
    .registers 4

    .line 44
    invoke-direct {p0}, Lorg/apache/xpath/patterns/NodeTest;-><init>()V

    const/4 v0, -0x1

    .line 109
    iput v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predCount:I

    const/4 v1, 0x0

    .line 593
    iput-boolean v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    .line 602
    iput v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    .line 45
    iput-object p1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 69
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 p1, -0x1

    .line 70
    iput p1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    .line 71
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->resetProximityPositions()V
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 75
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public greylist acceptNode(I)S
    .registers 6

    .line 464
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    invoke-virtual {v0}, Lorg/apache/xpath/axes/LocPathIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    .line 468
    :try_start_6
    invoke-virtual {v0, p1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 470
    invoke-virtual {p0, v0, p1}, Lorg/apache/xpath/patterns/NodeTest;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    .line 473
    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    const/4 v3, 0x3

    if-eq v1, v2, :cond_2f

    .line 475
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getPredicateCount()I

    move-result v1

    if-lez v1, :cond_2a

    const/4 v1, 0x0

    .line 477
    invoke-virtual {p0, v1}, Lorg/apache/xpath/axes/PredicatedNodeTest;->countProximityPosition(I)V

    .line 479
    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->executePredicates(ILorg/apache/xpath/XPathContext;)Z

    move-result p0
    :try_end_20
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_20} :catch_28
    .catchall {:try_start_6 .. :try_end_20} :catchall_26

    if-nez p0, :cond_2a

    .line 494
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    return v3

    :catchall_26
    move-exception p0

    goto :goto_3d

    :catch_28
    move-exception p0

    goto :goto_33

    :cond_2a
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    const/4 p0, 0x1

    return p0

    :cond_2f
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    return v3

    .line 490
    :goto_33
    :try_start_33
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_26

    .line 494
    :goto_3d
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 495
    throw p0
.end method

.method public greylist callPredicateVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .registers 6

    .line 550
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_21

    .line 552
    array-length v0, v0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_21

    .line 555
    new-instance v2, Lorg/apache/xpath/axes/PredicatedNodeTest$PredOwner;

    invoke-direct {v2, p0, v1}, Lorg/apache/xpath/axes/PredicatedNodeTest$PredOwner;-><init>(Lorg/apache/xpath/axes/PredicatedNodeTest;I)V

    .line 556
    iget-object v3, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v3, v3, v1

    invoke-virtual {p1, v2, v3}, Lorg/apache/xpath/XPathVisitor;->visitPredicate(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/Expression;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 558
    iget-object v3, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v3, v3, v1

    invoke-interface {v3, v2, p1}, Lorg/apache/xpath/XPathVisitable;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_21
    return-void
.end method

.method public greylist canTraverseOutsideSubtree()Z
    .registers 5

    .line 532
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getPredicateCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_17

    .line 535
    invoke-virtual {p0, v2}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getPredicate(I)Lorg/apache/xpath/Expression;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xpath/Expression;->canTraverseOutsideSubtree()Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_17
    return v1
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 90
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/PredicatedNodeTest;

    .line 92
    iget-object v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    if-eqz v1, :cond_1a

    iget-object v2, v0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    if-ne v1, v2, :cond_1a

    .line 95
    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    .line 97
    iget-object v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    :cond_1a
    iget-object v1, v0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    if-ne v1, p0, :cond_23

    .line 103
    move-object p0, v0

    check-cast p0, Lorg/apache/xpath/axes/LocPathIterator;

    iput-object p0, v0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    :cond_23
    return-object v0
.end method

.method protected greylist countProximityPosition(I)V
    .registers 3

    .line 286
    iget-object p0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    if-eqz p0, :cond_d

    .line 287
    array-length v0, p0

    if-ge p1, v0, :cond_d

    .line 288
    aget v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p0, p1

    :cond_d
    return-void
.end method

.method public greylist deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 7

    .line 570
    invoke-super {p0, p1}, Lorg/apache/xpath/patterns/NodeTest;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 573
    :cond_8
    check-cast p1, Lorg/apache/xpath/axes/PredicatedNodeTest;

    .line 574
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz v0, :cond_2d

    .line 577
    array-length v0, v0

    .line 578
    iget-object v2, p1, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz v2, :cond_2c

    array-length v2, v2

    if-eq v2, v0, :cond_17

    goto :goto_2c

    :cond_17
    move v2, v1

    :goto_18
    if-ge v2, v0, :cond_32

    .line 582
    iget-object v3, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v3, v3, v2

    iget-object v4, p1, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v3

    if-nez v3, :cond_29

    return v1

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2c
    :goto_2c
    return v1

    .line 586
    :cond_2d
    iget-object p0, p1, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz p0, :cond_32

    return v1

    :cond_32
    const/4 p0, 0x1

    return p0
.end method

.method greylist executePredicates(ILorg/apache/xpath/XPathContext;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 325
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getPredicateCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 330
    :cond_8
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 334
    :try_start_d
    iput v3, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    .line 335
    invoke-virtual {p2, p0}, Lorg/apache/xpath/XPathContext;->pushSubContextList(Lorg/apache/xpath/axes/SubContextList;)V

    .line 336
    iget-object v4, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    invoke-virtual {v4}, Lorg/apache/xpath/axes/LocPathIterator;->getPrefixResolver()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/apache/xpath/XPathContext;->pushNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 337
    invoke-virtual {p2, p1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    move p1, v3

    :goto_1f
    if-ge p1, v0, :cond_6e

    .line 342
    iget-object v4, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v4, v4, p1

    invoke-virtual {v4, p2}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v4

    .line 345
    invoke-virtual {v4}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v6, v5, :cond_5c

    .line 357
    iget v5, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    invoke-virtual {p0, v5}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getProximityPosition(I)I

    move-result v5

    .line 358
    invoke-virtual {v4}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v6
    :try_end_3a
    .catchall {:try_start_d .. :try_end_3a} :catchall_5a

    double-to-int v4, v6

    if-eq v5, v4, :cond_49

    .line 398
    :goto_3d
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 399
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 400
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    .line 401
    iput v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    return v3

    .line 385
    :cond_49
    :try_start_49
    iget-object v4, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lorg/apache/xpath/Expression;->isStableNumber()Z

    move-result v4

    if-eqz v4, :cond_63

    add-int/lit8 v4, v0, -0x1

    if-ne p1, v4, :cond_63

    .line 387
    iput-boolean v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    goto :goto_63

    :catchall_5a
    move-exception p1

    goto :goto_7a

    .line 390
    :cond_5c
    invoke-virtual {v4}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result v4

    if-nez v4, :cond_63

    goto :goto_3d

    .line 393
    :cond_63
    :goto_63
    iget v4, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    add-int/2addr v4, v1

    iput v4, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    invoke-virtual {p0, v4}, Lorg/apache/xpath/axes/PredicatedNodeTest;->countProximityPosition(I)V
    :try_end_6b
    .catchall {:try_start_49 .. :try_end_6b} :catchall_5a

    add-int/lit8 p1, p1, 0x1

    goto :goto_1f

    .line 398
    :cond_6e
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 399
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 400
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    .line 401
    iput v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    return v1

    .line 398
    :goto_7a
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 399
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 400
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    .line 401
    iput v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    .line 402
    throw p1
.end method

.method public greylist fixupVariables(Ljava/util/Vector;I)V
    .registers 6

    .line 419
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/patterns/NodeTest;->fixupVariables(Ljava/util/Vector;I)V

    .line 421
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getPredicateCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_14

    .line 425
    iget-object v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method

.method public abstract greylist getLastPos(Lorg/apache/xpath/XPathContext;)I
.end method

.method public greylist getLocPathIterator()Lorg/apache/xpath/axes/LocPathIterator;
    .registers 1

    .line 508
    iget-object p0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    return-object p0
.end method

.method public greylist getPredicate(I)Lorg/apache/xpath/Expression;
    .registers 2

    .line 188
    iget-object p0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public greylist getPredicateCount()I
    .registers 3

    .line 118
    iget v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predCount:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_d

    .line 119
    iget-object p0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    if-nez p0, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    array-length p0, p0

    return p0

    :cond_d
    return v0
.end method

.method public greylist getPredicateIndex()I
    .registers 1

    .line 308
    iget p0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    return p0
.end method

.method public greylist getProximityPosition()I
    .registers 2

    .line 200
    iget v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getProximityPosition(I)I

    move-result p0

    return p0
.end method

.method protected greylist getProximityPosition(I)I
    .registers 2

    if-ltz p1, :cond_7

    .line 235
    iget-object p0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    aget p0, p0, p1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public greylist getProximityPosition(Lorg/apache/xpath/XPathContext;)I
    .registers 2

    .line 212
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getProximityPosition()I

    move-result p0

    return p0
.end method

.method protected greylist initPredicateInfo(Lorg/apache/xpath/compiler/Compiler;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 163
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/OpMap;->getFirstPredicateOpPos(I)I

    move-result p2

    if-lez p2, :cond_1c

    .line 167
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/Compiler;->getCompiledPredicates(I)[Lorg/apache/xpath/Expression;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz p1, :cond_1c

    const/4 p1, 0x0

    .line 170
    :goto_f
    iget-object p2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    array-length v0, p2

    if-ge p1, v0, :cond_1c

    .line 172
    aget-object p2, p2, p1

    invoke-virtual {p2, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    :cond_1c
    return-void
.end method

.method public greylist initProximityPosition(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 273
    iget-object p0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    const/4 v0, 0x0

    aput v0, p0, p1

    return-void
.end method

.method public greylist isReverseAxes()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected greylist nodeToString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    if-eq v0, p1, :cond_2d

    .line 441
    iget-object p0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p0

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, p1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "{"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 446
    :cond_2d
    const-string p0, "null"

    return-object p0
.end method

.method public greylist resetProximityPositions()V
    .registers 3

    .line 243
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getPredicateCount()I

    move-result v0

    if-lez v0, :cond_1e

    .line 246
    iget-object v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    if-nez v1, :cond_e

    .line 247
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    :cond_e
    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_1e

    .line 253
    :try_start_11
    invoke-virtual {p0, v1}, Lorg/apache/xpath/axes/PredicatedNodeTest;->initProximityPosition(I)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_17

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :catch_17
    move-exception p0

    .line 258
    new-instance v0, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v0, p0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_1e
    return-void
.end method

.method public greylist setLocPathIterator(Lorg/apache/xpath/axes/LocPathIterator;)V
    .registers 2

    .line 519
    iput-object p1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    if-eq p0, p1, :cond_7

    .line 521
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    :cond_7
    return-void
.end method

.method public greylist setPredicateCount(I)V
    .registers 5

    if-lez p1, :cond_13

    .line 138
    new-array v0, p1, [Lorg/apache/xpath/Expression;

    const/4 v1, 0x0

    :goto_5
    if-ge v1, p1, :cond_10

    .line 141
    iget-object v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v2, v2, v1

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 143
    :cond_10
    iput-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    return-void

    :cond_13
    const/4 p1, 0x0

    .line 146
    iput-object p1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    return-void
.end method
