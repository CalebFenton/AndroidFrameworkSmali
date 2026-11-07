.class public Lorg/apache/xpath/axes/AxesWalker;
.super Lorg/apache/xpath/axes/PredicatedNodeTest;
.source "AxesWalker.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/xpath/axes/PathComponent;
.implements Lorg/apache/xpath/ExpressionOwner;


# static fields
.field static final whitelist serialVersionUID:J = -0x292976585216b31fL


# instance fields
.field protected greylist m_axis:I

.field private transient greylist m_currentNode:I

.field private greylist m_dtm:Lorg/apache/xml/dtm/DTM;

.field transient greylist m_isFresh:Z

.field protected greylist m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

.field greylist m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

.field transient greylist m_root:I

.field protected greylist m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;


# direct methods
.method public constructor greylist <init>(Lorg/apache/xpath/axes/LocPathIterator;I)V
    .registers 3

    .line 52
    invoke-direct {p0, p1}, Lorg/apache/xpath/axes/PredicatedNodeTest;-><init>(Lorg/apache/xpath/axes/LocPathIterator;)V

    const/4 p1, -0x1

    .line 567
    iput p1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_root:I

    .line 572
    iput p1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    .line 53
    iput p2, p0, Lorg/apache/xpath/axes/AxesWalker;->m_axis:I

    return-void
.end method

.method static greylist findClone(Lorg/apache/xpath/axes/AxesWalker;Ljava/util/Vector;)Lorg/apache/xpath/axes/AxesWalker;
    .registers 5

    if-eqz p1, :cond_1b

    .line 162
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1b

    .line 165
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p0, v2, :cond_18

    add-int/lit8 v1, v1, 0x1

    .line 166
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xpath/axes/AxesWalker;

    return-object p0

    :cond_18
    add-int/lit8 v1, v1, 0x2

    goto :goto_7

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method private greylist returnNextNode(I)I
    .registers 2

    .line 0
    return p1
.end method


# virtual methods
.method public greylist callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .registers 3

    .line 522
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitStep(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/patterns/NodeTest;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 524
    invoke-virtual {p0, p2}, Lorg/apache/xpath/axes/PredicatedNodeTest;->callPredicateVisitors(Lorg/apache/xpath/XPathVisitor;)V

    .line 525
    iget-object p1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    if-eqz p1, :cond_10

    .line 527
    invoke-virtual {p1, p0, p2}, Lorg/apache/xpath/axes/AxesWalker;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    :cond_10
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 91
    invoke-super {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xpath/axes/AxesWalker;

    return-object p0
.end method

.method greylist cloneDeep(Lorg/apache/xpath/axes/WalkingIterator;Ljava/util/Vector;)Lorg/apache/xpath/axes/AxesWalker;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 116
    invoke-static {p0, p2}, Lorg/apache/xpath/axes/AxesWalker;->findClone(Lorg/apache/xpath/axes/AxesWalker;Ljava/util/Vector;)Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 119
    :cond_7
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/AxesWalker;

    .line 120
    invoke-virtual {v0, p1}, Lorg/apache/xpath/axes/PredicatedNodeTest;->setLocPathIterator(Lorg/apache/xpath/axes/LocPathIterator;)V

    if-eqz p2, :cond_18

    .line 123
    invoke-virtual {p2, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 124
    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 127
    :cond_18
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/xpath/axes/WalkingIterator;->m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;

    if-ne v1, p0, :cond_22

    .line 128
    iput-object v0, p1, Lorg/apache/xpath/axes/WalkingIterator;->m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;

    .line 130
    :cond_22
    iget-object v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    if-eqz v1, :cond_2c

    .line 131
    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/axes/AxesWalker;->cloneDeep(Lorg/apache/xpath/axes/WalkingIterator;Ljava/util/Vector;)Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    :cond_2c
    if-eqz p2, :cond_39

    .line 137
    iget-object p0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

    if-eqz p0, :cond_41

    .line 138
    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/axes/AxesWalker;->cloneDeep(Lorg/apache/xpath/axes/WalkingIterator;Ljava/util/Vector;)Lorg/apache/xpath/axes/AxesWalker;

    move-result-object p0

    iput-object p0, v0, Lorg/apache/xpath/axes/AxesWalker;->m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

    return-object v0

    .line 142
    :cond_39
    iget-object p0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    if-eqz p0, :cond_41

    .line 143
    iget-object p0, v0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    iput-object v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

    :cond_41
    return-object v0
.end method

.method public greylist deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 4

    .line 554
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/PredicatedNodeTest;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 557
    :cond_8
    check-cast p1, Lorg/apache/xpath/axes/AxesWalker;

    .line 558
    iget p0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_axis:I

    iget p1, p1, Lorg/apache/xpath/axes/AxesWalker;->m_axis:I

    if-eq p0, p1, :cond_11

    return v1

    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method public greylist detach()V
    .registers 3

    const/4 v0, -0x1

    .line 179
    iput v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    const/4 v1, 0x0

    .line 180
    iput-object v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    .line 181
    iput-object v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    const/4 v1, 0x1

    .line 182
    iput-boolean v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_isFresh:Z

    .line 183
    iput v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_root:I

    return-void
.end method

.method public greylist getAnalysisBits()I
    .registers 1

    .line 205
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->getAxis()I

    move-result p0

    .line 206
    invoke-static {p0}, Lorg/apache/xpath/axes/WalkerFactory;->getAnalysisBitFromAxes(I)I

    move-result p0

    return p0
.end method

.method public greylist getAxis()I
    .registers 1

    .line 508
    iget p0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_axis:I

    return p0
.end method

.method public final greylist getCurrentNode()I
    .registers 1

    .line 252
    iget p0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    return p0
.end method

.method public greylist getDTM(I)Lorg/apache/xml/dtm/DTM;
    .registers 2

    .line 485
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xpath/axes/LocPathIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p0

    return-object p0
.end method

.method public greylist getExpression()Lorg/apache/xpath/Expression;
    .registers 1

    .line 537
    iget-object p0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    return-object p0
.end method

.method public greylist getLastPos(Lorg/apache/xpath/XPathContext;)I
    .registers 6

    .line 415
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getProximityPosition()I

    move-result p1

    const/4 v0, -0x1

    .line 421
    :try_start_5
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xpath/axes/AxesWalker;
    :try_end_b
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_5 .. :try_end_b} :catch_34

    .line 428
    iget v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    invoke-virtual {v1, v2}, Lorg/apache/xpath/axes/PredicatedNodeTest;->setPredicateCount(I)V

    const/4 v2, 0x0

    .line 429
    invoke-virtual {v1, v2}, Lorg/apache/xpath/axes/AxesWalker;->setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 430
    invoke-virtual {v1, v2}, Lorg/apache/xpath/axes/AxesWalker;->setPrevWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 432
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object p0

    .line 433
    invoke-virtual {p0}, Lorg/apache/xpath/axes/WalkingIterator;->getLastUsedWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v2

    .line 437
    :try_start_1f
    invoke-virtual {p0, v1}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 441
    :goto_22
    invoke-virtual {v1}, Lorg/apache/xpath/axes/AxesWalker;->nextNode()I

    move-result v3
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_2f

    if-eq v0, v3, :cond_2b

    add-int/lit8 p1, p1, 0x1

    goto :goto_22

    .line 450
    :cond_2b
    invoke-virtual {p0, v2}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    return p1

    :catchall_2f
    move-exception p1

    invoke-virtual {p0, v2}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 451
    throw p1

    :catch_34
    return v0
.end method

.method protected greylist getNextNode()I
    .registers 5

    .line 322
    iget-boolean v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    return v1

    .line 325
    :cond_6
    iget-boolean v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_isFresh:Z

    if-eqz v0, :cond_18

    .line 327
    iget-object v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v2, p0, Lorg/apache/xpath/axes/AxesWalker;->m_root:I

    invoke-virtual {v0, v2}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    move-result v0

    iput v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    const/4 v0, 0x0

    .line 328
    iput-boolean v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_isFresh:Z

    goto :goto_26

    .line 333
    :cond_18
    iget v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    if-eq v1, v0, :cond_26

    .line 335
    iget-object v2, p0, Lorg/apache/xpath/axes/AxesWalker;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v3, p0, Lorg/apache/xpath/axes/AxesWalker;->m_root:I

    invoke-virtual {v2, v3, v0}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    move-result v0

    iput v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    .line 338
    :cond_26
    :goto_26
    iget v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    if-ne v1, v0, :cond_2d

    const/4 v1, 0x1

    .line 339
    iput-boolean v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    :cond_2d
    return v0
.end method

.method public greylist getNextWalker()Lorg/apache/xpath/axes/AxesWalker;
    .registers 1

    .line 274
    iget-object p0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    return-object p0
.end method

.method public greylist getPrevWalker()Lorg/apache/xpath/axes/AxesWalker;
    .registers 1

    .line 298
    iget-object p0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

    return-object p0
.end method

.method public greylist getRoot()I
    .registers 1

    .line 196
    iget p0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_root:I

    return p0
.end method

.method public greylist init(Lorg/apache/xpath/compiler/Compiler;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/axes/PredicatedNodeTest;->initPredicateInfo(Lorg/apache/xpath/compiler/Compiler;I)V

    return-void
.end method

.method public greylist isDocOrdered()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist nextNode()I
    .registers 6

    .line 356
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/axes/WalkingIterator;->getLastUsedWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v0

    const/4 v1, -0x1

    move v2, v1

    :goto_a
    if-nez v0, :cond_d

    return v2

    .line 363
    :cond_d
    invoke-virtual {v0}, Lorg/apache/xpath/axes/AxesWalker;->getNextNode()I

    move-result v2

    if-ne v1, v2, :cond_16

    .line 368
    iget-object v0, v0, Lorg/apache/xpath/axes/AxesWalker;->m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

    goto :goto_a

    .line 372
    :cond_16
    invoke-virtual {v0, v2}, Lorg/apache/xpath/axes/PredicatedNodeTest;->acceptNode(I)S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1e

    goto :goto_a

    .line 377
    :cond_1e
    iget-object v3, v0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    if-nez v3, :cond_2a

    .line 379
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    return v2

    .line 390
    :cond_2a
    invoke-virtual {v3, v2}, Lorg/apache/xpath/axes/AxesWalker;->setRoot(I)V

    .line 392
    iput-object v0, v3, Lorg/apache/xpath/axes/AxesWalker;->m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

    move-object v0, v3

    goto :goto_a
.end method

.method public greylist setDefaultDTM(Lorg/apache/xml/dtm/DTM;)V
    .registers 2

    .line 474
    iput-object p1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    return-void
.end method

.method public greylist setExpression(Lorg/apache/xpath/Expression;)V
    .registers 2

    .line 545
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 546
    check-cast p1, Lorg/apache/xpath/axes/AxesWalker;

    iput-object p1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    return-void
.end method

.method public greylist setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V
    .registers 2

    .line 263
    iput-object p1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    return-void
.end method

.method public greylist setPrevWalker(Lorg/apache/xpath/axes/AxesWalker;)V
    .registers 2

    .line 286
    iput-object p1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

    return-void
.end method

.method public greylist setRoot(I)V
    .registers 4

    .line 219
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/axes/LocPathIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    .line 220
    invoke-virtual {v0, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    .line 221
    iget v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_axis:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    const/4 v0, 0x1

    .line 222
    iput-boolean v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_isFresh:Z

    const/4 v0, 0x0

    .line 223
    iput-boolean v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    .line 224
    iput p1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_root:I

    .line 225
    iput p1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    const/4 v0, -0x1

    if-eq v0, p1, :cond_27

    .line 233
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->resetProximityPositions()V

    return-void

    .line 229
    :cond_27
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_SETTING_WALKER_ROOT_TO_NULL"

    const/4 v0, 0x0

    .line 230
    invoke-static {p1, v0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final greylist wi()Lorg/apache/xpath/axes/WalkingIterator;
    .registers 1

    .line 58
    iget-object p0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    check-cast p0, Lorg/apache/xpath/axes/WalkingIterator;

    return-object p0
.end method
