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
.field static final DEBUG_PREDICATECOUNTING:Z = false

.field static final serialVersionUID:J = -0x55f3d768b61b4e07L


# instance fields
.field protected transient m_foundLast:Z

.field protected m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

.field protected m_predCount:I

.field transient m_predicateIndex:I

.field private m_predicates:[Lorg/apache/xpath/Expression;

.field protected transient m_proximityPositions:[I


# direct methods
.method static synthetic -get0(Lorg/apache/xpath/axes/PredicatedNodeTest;)[Lorg/apache/xpath/Expression;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    #@2
    return-object v0
.end method

.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 52
    invoke-direct {p0}, Lorg/apache/xpath/patterns/NodeTest;-><init>()V

    #@4
    .line 109
    iput v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predCount:I

    #@6
    .line 593
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    #@9
    .line 602
    iput v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    #@b
    .line 52
    return-void
.end method

.method constructor <init>(Lorg/apache/xpath/axes/LocPathIterator;)V
    .locals 2
    .param p1, "locPathIterator"    # Lorg/apache/xpath/axes/LocPathIterator;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 43
    invoke-direct {p0}, Lorg/apache/xpath/patterns/NodeTest;-><init>()V

    #@4
    .line 109
    iput v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predCount:I

    #@6
    .line 593
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    #@9
    .line 602
    iput v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    #@b
    .line 45
    iput-object p1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    #@d
    .line 43
    return-void
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
    .line 69
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 70
    const/4 v1, -0x1

    #@4
    iput v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    #@6
    .line 71
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->resetProximityPositions()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 65
    return-void

    #@a
    .line 74
    :catch_0
    move-exception v0

    #@b
    .line 75
    .local v0, "cnfe":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljavax/xml/transform/TransformerException;

    #@d
    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    #@10
    throw v1
.end method


# virtual methods
.method public acceptNode(I)S
    .locals 5
    .param p1, "n"    # I

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    .line 464
    iget-object v3, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    #@3
    invoke-virtual {v3}, Lorg/apache/xpath/axes/LocPathIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@6
    move-result-object v2

    #@7
    .line 468
    .local v2, "xctxt":Lorg/apache/xpath/XPathContext;
    :try_start_0
    invoke-virtual {v2, p1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    #@a
    .line 470
    invoke-virtual {p0, v2, p1}, Lorg/apache/xpath/axes/PredicatedNodeTest;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    #@d
    move-result-object v0

    #@e
    .line 473
    .local v0, "score":Lorg/apache/xpath/objects/XObject;
    sget-object v3, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@10
    if-eq v0, v3, :cond_1

    #@12
    .line 475
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getPredicateCount()I

    #@15
    move-result v3

    #@16
    if-lez v3, :cond_0

    #@18
    .line 477
    const/4 v3, 0x0

    #@19
    invoke-virtual {p0, v3}, Lorg/apache/xpath/axes/PredicatedNodeTest;->countProximityPosition(I)V

    #@1c
    .line 479
    invoke-virtual {p0, p1, v2}, Lorg/apache/xpath/axes/PredicatedNodeTest;->executePredicates(ILorg/apache/xpath/XPathContext;)Z
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    move-result v3

    #@20
    if-nez v3, :cond_0

    #@22
    .line 494
    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@25
    .line 480
    return v4

    #@26
    .line 483
    :cond_0
    const/4 v3, 0x1

    #@27
    .line 494
    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@2a
    .line 483
    return v3

    #@2b
    .line 494
    :cond_1
    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@2e
    .line 497
    return v4

    #@2f
    .line 487
    .end local v0    # "score":Lorg/apache/xpath/objects/XObject;
    :catch_0
    move-exception v1

    #@30
    .line 490
    .local v1, "se":Ljavax/xml/transform/TransformerException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    #@32
    invoke-virtual {v1}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@39
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    .line 493
    .end local v1    # "se":Ljavax/xml/transform/TransformerException;
    :catchall_0
    move-exception v3

    #@3b
    .line 494
    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@3e
    .line 493
    throw v3
.end method

.method public callPredicateVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .locals 4
    .param p1, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    #@0
    .prologue
    .line 550
    iget-object v3, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    #@2
    if-eqz v3, :cond_1

    #@4
    .line 552
    iget-object v3, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    #@6
    array-length v1, v3

    #@7
    .line 553
    .local v1, "n":I
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@a
    .line 555
    new-instance v2, Lorg/apache/xpath/axes/PredicatedNodeTest$PredOwner;

    #@c
    invoke-direct {v2, p0, v0}, Lorg/apache/xpath/axes/PredicatedNodeTest$PredOwner;-><init>(Lorg/apache/xpath/axes/PredicatedNodeTest;I)V

    #@f
    .line 556
    .local v2, "predOwner":Lorg/apache/xpath/ExpressionOwner;
    iget-object v3, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    #@11
    aget-object v3, v3, v0

    #@13
    invoke-virtual {p1, v2, v3}, Lorg/apache/xpath/XPathVisitor;->visitPredicate(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/Expression;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_0

    #@19
    .line 558
    iget-object v3, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    #@1b
    aget-object v3, v3, v0

    #@1d
    invoke-virtual {v3, v2, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@20
    .line 553
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 548
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "predOwner":Lorg/apache/xpath/ExpressionOwner;
    :cond_1
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .locals 3

    #@0
    .prologue
    .line 532
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getPredicateCount()I

    #@3
    move-result v1

    #@4
    .line 533
    .local v1, "n":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@7
    .line 535
    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getPredicate(I)Lorg/apache/xpath/Expression;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v2}, Lorg/apache/xpath/Expression;->canTraverseOutsideSubtree()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 536
    const/4 v2, 0x1

    #@12
    return v2

    #@13
    .line 533
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 538
    :cond_1
    const/4 v2, 0x0

    #@17
    return v2
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
    .line 90
    invoke-super {p0}, Lorg/apache/xpath/patterns/NodeTest;->clone()Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Lorg/apache/xpath/axes/PredicatedNodeTest;

    #@7
    .line 92
    .local v0, "clone":Lorg/apache/xpath/axes/PredicatedNodeTest;
    iget-object v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 93
    iget-object v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    #@d
    iget-object v2, v0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    #@f
    if-ne v1, v2, :cond_0

    #@11
    .line 95
    iget-object v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    #@13
    array-length v1, v1

    #@14
    new-array v1, v1, [I

    #@16
    iput-object v1, v0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    #@18
    .line 97
    iget-object v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    #@1a
    .line 98
    iget-object v2, v0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    #@1c
    .line 99
    iget-object v3, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    #@1e
    array-length v3, v3

    #@1f
    .line 97
    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@22
    .line 102
    :cond_0
    iget-object v1, v0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    #@24
    if-ne v1, p0, :cond_1

    #@26
    move-object v1, v0

    #@27
    .line 103
    check-cast v1, Lorg/apache/xpath/axes/LocPathIterator;

    #@29
    iput-object v1, v0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    #@2b
    .line 105
    :cond_1
    return-object v0
.end method

.method protected countProximityPosition(I)V
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 286
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    #@2
    .line 287
    .local v0, "pp":[I
    if-eqz v0, :cond_0

    #@4
    array-length v1, v0

    #@5
    if-ge p1, v1, :cond_0

    #@7
    .line 288
    aget v1, v0, p1

    #@9
    add-int/lit8 v1, v1, 0x1

    #@b
    aput v1, v0, p1

    #@d
    .line 282
    :cond_0
    return-void
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .locals 6
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 570
    invoke-super {p0, p1}, Lorg/apache/xpath/patterns/NodeTest;->deepEquals(Lorg/apache/xpath/Expression;)Z

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_0

    #@7
    .line 571
    return v5

    #@8
    :cond_0
    move-object v2, p1

    #@9
    .line 573
    check-cast v2, Lorg/apache/xpath/axes/PredicatedNodeTest;

    #@b
    .line 574
    .local v2, "pnt":Lorg/apache/xpath/axes/PredicatedNodeTest;
    iget-object v3, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    #@d
    if-eqz v3, :cond_4

    #@f
    .line 577
    iget-object v3, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    #@11
    array-length v1, v3

    #@12
    .line 578
    .local v1, "n":I
    iget-object v3, v2, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    #@14
    if-eqz v3, :cond_1

    #@16
    iget-object v3, v2, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    #@18
    array-length v3, v3

    #@19
    if-eq v3, v1, :cond_2

    #@1b
    .line 579
    :cond_1
    return v5

    #@1c
    .line 580
    :cond_2
    const/4 v0, 0x0

    #@1d
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_5

    #@1f
    .line 582
    iget-object v3, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    #@21
    aget-object v3, v3, v0

    #@23
    iget-object v4, v2, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    #@25
    aget-object v4, v4, v0

    #@27
    invoke-virtual {v3, v4}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    #@2a
    move-result v3

    #@2b
    if-nez v3, :cond_3

    #@2d
    .line 583
    return v5

    #@2e
    .line 580
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_0

    #@31
    .line 586
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_4
    iget-object v3, v2, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    #@33
    if-eqz v3, :cond_5

    #@35
    .line 587
    return v5

    #@36
    .line 589
    :cond_5
    const/4 v3, 0x1

    #@37
    return v3
.end method

.method executePredicates(ILorg/apache/xpath/XPathContext;)Z
    .locals 11
    .param p1, "context"    # I
    .param p2, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    const/4 v8, -0x1

    #@3
    .line 325
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getPredicateCount()I

    #@6
    move-result v1

    #@7
    .line 327
    .local v1, "nPredicates":I
    if-nez v1, :cond_0

    #@9
    .line 328
    return v10

    #@a
    .line 330
    :cond_0
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    #@d
    move-result-object v5

    #@e
    .line 334
    .local v5, "savedResolver":Lorg/apache/xml/utils/PrefixResolver;
    const/4 v6, 0x0

    #@f
    :try_start_0
    iput v6, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    #@11
    .line 335
    invoke-virtual {p2, p0}, Lorg/apache/xpath/XPathContext;->pushSubContextList(Lorg/apache/xpath/axes/SubContextList;)V

    #@14
    .line 336
    iget-object v6, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    #@16
    invoke-virtual {v6}, Lorg/apache/xpath/axes/LocPathIterator;->getPrefixResolver()Lorg/apache/xml/utils/PrefixResolver;

    #@19
    move-result-object v6

    #@1a
    invoke-virtual {p2, v6}, Lorg/apache/xpath/XPathContext;->pushNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    #@1d
    .line 337
    invoke-virtual {p2, p1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    #@20
    .line 339
    const/4 v0, 0x0

    #@21
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    #@23
    .line 342
    iget-object v6, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    #@25
    aget-object v6, v6, v0

    #@27
    invoke-virtual {v6, p2}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    #@2a
    move-result-object v2

    #@2b
    .line 345
    .local v2, "pred":Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v2}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@2e
    move-result v6

    #@2f
    const/4 v7, 0x2

    #@30
    if-ne v7, v6, :cond_3

    #@32
    .line 357
    iget v6, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    #@34
    invoke-virtual {p0, v6}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getProximityPosition(I)I

    #@37
    move-result v4

    #@38
    .line 358
    .local v4, "proxPos":I
    invoke-virtual {v2}, Lorg/apache/xpath/objects/XObject;->num()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    move-result-wide v6

    #@3c
    double-to-int v3, v6

    #@3d
    .line 359
    .local v3, "predIndex":I
    if-eq v4, v3, :cond_1

    #@3f
    .line 398
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@42
    .line 399
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    #@45
    .line 400
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    #@48
    .line 401
    iput v8, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    #@4a
    .line 367
    return v9

    #@4b
    .line 385
    :cond_1
    :try_start_1
    iget-object v6, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    #@4d
    aget-object v6, v6, v0

    #@4f
    invoke-virtual {v6}, Lorg/apache/xpath/Expression;->isStableNumber()Z

    #@52
    move-result v6

    #@53
    if-eqz v6, :cond_2

    #@55
    add-int/lit8 v6, v1, -0x1

    #@57
    if-ne v0, v6, :cond_2

    #@59
    .line 387
    const/4 v6, 0x1

    #@5a
    iput-boolean v6, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    #@5c
    .line 393
    .end local v3    # "predIndex":I
    .end local v4    # "proxPos":I
    :cond_2
    iget v6, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    #@5e
    add-int/lit8 v6, v6, 0x1

    #@60
    iput v6, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    #@62
    invoke-virtual {p0, v6}, Lorg/apache/xpath/axes/PredicatedNodeTest;->countProximityPosition(I)V

    #@65
    .line 339
    add-int/lit8 v0, v0, 0x1

    #@67
    goto :goto_0

    #@68
    .line 390
    :cond_3
    invoke-virtual {v2}, Lorg/apache/xpath/objects/XObject;->bool()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6b
    move-result v6

    #@6c
    if-nez v6, :cond_2

    #@6e
    .line 398
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@71
    .line 399
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    #@74
    .line 400
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    #@77
    .line 401
    iput v8, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    #@79
    .line 391
    return v9

    #@7a
    .line 398
    .end local v2    # "pred":Lorg/apache/xpath/objects/XObject;
    :cond_4
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@7d
    .line 399
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    #@80
    .line 400
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    #@83
    .line 401
    iput v8, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    #@85
    .line 404
    return v10

    #@86
    .line 397
    .end local v0    # "i":I
    :catchall_0
    move-exception v6

    #@87
    .line 398
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    #@8a
    .line 399
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    #@8d
    .line 400
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    #@90
    .line 401
    iput v8, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    #@92
    .line 397
    throw v6
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .locals 3
    .param p1, "vars"    # Ljava/util/Vector;
    .param p2, "globalsSize"    # I

    #@0
    .prologue
    .line 419
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/patterns/NodeTest;->fixupVariables(Ljava/util/Vector;I)V

    #@3
    .line 421
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getPredicateCount()I

    #@6
    move-result v1

    #@7
    .line 423
    .local v1, "nPredicates":I
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@a
    .line 425
    iget-object v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    #@c
    aget-object v2, v2, v0

    #@e
    invoke-virtual {v2, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    #@11
    .line 423
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 417
    :cond_0
    return-void
.end method

.method public abstract getLastPos(Lorg/apache/xpath/XPathContext;)I
.end method

.method public getLocPathIterator()Lorg/apache/xpath/axes/LocPathIterator;
    .locals 1

    #@0
    .prologue
    .line 508
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    #@2
    return-object v0
.end method

.method public getPredicate(I)Lorg/apache/xpath/Expression;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 188
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public getPredicateCount()I
    .locals 2

    #@0
    .prologue
    .line 118
    iget v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predCount:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v1, v0, :cond_1

    #@5
    .line 119
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    #@7
    if-nez v0, :cond_0

    #@9
    const/4 v0, 0x0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    #@d
    array-length v0, v0

    #@e
    goto :goto_0

    #@f
    .line 121
    :cond_1
    iget v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predCount:I

    #@11
    return v0
.end method

.method public getPredicateIndex()I
    .locals 1

    #@0
    .prologue
    .line 308
    iget v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    #@2
    return v0
.end method

.method public getProximityPosition()I
    .locals 1

    #@0
    .prologue
    .line 200
    iget v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    #@2
    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getProximityPosition(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected getProximityPosition(I)I
    .locals 1
    .param p1, "predicateIndex"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 235
    if-ltz p1, :cond_0

    #@3
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    #@5
    aget v0, v0, p1

    #@7
    :cond_0
    return v0
.end method

.method public getProximityPosition(Lorg/apache/xpath/XPathContext;)I
    .locals 1
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;

    #@0
    .prologue
    .line 212
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getProximityPosition()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected initPredicateInfo(Lorg/apache/xpath/compiler/Compiler;I)V
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
    .line 163
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/Compiler;->getFirstPredicateOpPos(I)I

    #@3
    move-result v1

    #@4
    .line 165
    .local v1, "pos":I
    if-lez v1, :cond_0

    #@6
    .line 167
    invoke-virtual {p1, v1}, Lorg/apache/xpath/compiler/Compiler;->getCompiledPredicates(I)[Lorg/apache/xpath/Expression;

    #@9
    move-result-object v2

    #@a
    iput-object v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    #@c
    .line 168
    iget-object v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 170
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    #@13
    array-length v2, v2

    #@14
    if-ge v0, v2, :cond_0

    #@16
    .line 172
    iget-object v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    #@18
    aget-object v2, v2, v0

    #@1a
    invoke-virtual {v2, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@1d
    .line 170
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 160
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public initProximityPosition(I)V
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 273
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    #@2
    const/4 v1, 0x0

    #@3
    aput v1, v0, p1

    #@5
    .line 271
    return-void
.end method

.method public isReverseAxes()Z
    .locals 1

    #@0
    .prologue
    .line 298
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected nodeToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "n"    # I

    #@0
    .prologue
    .line 439
    const/4 v1, -0x1

    #@1
    if-eq v1, p1, :cond_0

    #@3
    .line 441
    iget-object v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    #@5
    invoke-virtual {v1}, Lorg/apache/xpath/axes/LocPathIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@c
    move-result-object v0

    #@d
    .line 442
    .local v0, "dtm":Lorg/apache/xml/dtm/DTM;
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, "{"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    add-int/lit8 v2, p1, 0x1

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    const-string/jumbo v2, "}"

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    return-object v1

    #@33
    .line 446
    .end local v0    # "dtm":Lorg/apache/xml/dtm/DTM;
    :cond_0
    const-string/jumbo v1, "null"

    #@36
    return-object v1
.end method

.method public resetProximityPositions()V
    .locals 4

    #@0
    .prologue
    .line 243
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getPredicateCount()I

    #@3
    move-result v2

    #@4
    .line 244
    .local v2, "nPredicates":I
    if-lez v2, :cond_1

    #@6
    .line 246
    iget-object v3, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    #@8
    if-nez v3, :cond_0

    #@a
    .line 247
    new-array v3, v2, [I

    #@c
    iput-object v3, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    #@e
    .line 249
    :cond_0
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@11
    .line 253
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/xpath/axes/PredicatedNodeTest;->initProximityPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 249
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 256
    :catch_0
    move-exception v0

    #@18
    .line 258
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@1a
    invoke-direct {v3, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@1d
    throw v3

    #@1e
    .line 241
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setLocPathIterator(Lorg/apache/xpath/axes/LocPathIterator;)V
    .locals 0
    .param p1, "li"    # Lorg/apache/xpath/axes/LocPathIterator;

    #@0
    .prologue
    .line 519
    iput-object p1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    #@2
    .line 520
    if-eq p0, p1, :cond_0

    #@4
    .line 521
    invoke-virtual {p1, p0}, Lorg/apache/xpath/axes/LocPathIterator;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@7
    .line 517
    :cond_0
    return-void
.end method

.method public setPredicateCount(I)V
    .locals 3
    .param p1, "count"    # I

    #@0
    .prologue
    .line 136
    if-lez p1, :cond_1

    #@2
    .line 138
    new-array v1, p1, [Lorg/apache/xpath/Expression;

    #@4
    .line 139
    .local v1, "newPredicates":[Lorg/apache/xpath/Expression;
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    #@7
    .line 141
    iget-object v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    #@9
    aget-object v2, v2, v0

    #@b
    aput-object v2, v1, v0

    #@d
    .line 139
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 143
    :cond_0
    iput-object v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    #@12
    .line 134
    .end local v0    # "i":I
    .end local v1    # "newPredicates":[Lorg/apache/xpath/Expression;
    :goto_1
    return-void

    #@13
    .line 146
    :cond_1
    const/4 v2, 0x0

    #@14
    iput-object v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    #@16
    goto :goto_1
.end method
