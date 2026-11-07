.class public Lorg/apache/xpath/axes/ReverseAxesWalker;
.super Lorg/apache/xpath/axes/AxesWalker;
.source "ReverseAxesWalker.java"


# static fields
.field static final whitelist serialVersionUID:J = 0x27829a5f21e481adL


# instance fields
.field protected greylist m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;


# direct methods
.method constructor greylist <init>(Lorg/apache/xpath/axes/LocPathIterator;I)V
    .registers 3

    .line 42
    invoke-direct {p0, p1, p2}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    return-void
.end method


# virtual methods
.method protected greylist countProximityPosition(I)V
    .registers 3

    .line 180
    iget-object p0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    array-length v0, p0

    if-ge p1, v0, :cond_b

    .line 181
    aget v0, p0, p1

    add-int/lit8 v0, v0, -0x1

    aput v0, p0, p1

    :cond_b
    return-void
.end method

.method public greylist detach()V
    .registers 2

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    .line 66
    invoke-super {p0}, Lorg/apache/xpath/axes/AxesWalker;->detach()V

    return-void
.end method

.method public greylist getLastPos(Lorg/apache/xpath/XPathContext;)I
    .registers 6

    .line 197
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xpath/axes/WalkingIterator;->getLastUsedWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object p1

    const/4 v0, 0x0

    .line 201
    :try_start_9
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xpath/axes/ReverseAxesWalker;

    .line 203
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->getRoot()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/xpath/axes/ReverseAxesWalker;->setRoot(I)V

    .line 205
    iget v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    invoke-virtual {v1, v2}, Lorg/apache/xpath/axes/PredicatedNodeTest;->setPredicateCount(I)V

    const/4 v2, 0x0

    .line 207
    invoke-virtual {v1, v2}, Lorg/apache/xpath/axes/AxesWalker;->setPrevWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 208
    invoke-virtual {v1, v2}, Lorg/apache/xpath/axes/AxesWalker;->setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 209
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 215
    :goto_29
    invoke-virtual {v1}, Lorg/apache/xpath/axes/AxesWalker;->nextNode()I

    move-result v2
    :try_end_2d
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_9 .. :try_end_2d} :catch_44
    .catchall {:try_start_9 .. :try_end_2d} :catchall_3b

    const/4 v3, -0x1

    if-eq v3, v2, :cond_33

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 227
    :cond_33
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    return v0

    :catchall_3b
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 228
    throw v0

    .line 227
    :catch_44
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    return v0
.end method

.method protected greylist getNextNode()I
    .registers 4

    .line 76
    iget-boolean v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    return v1

    .line 79
    :cond_6
    iget-object v0, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMAxisIterator;->next()I

    move-result v0

    .line 81
    iget-boolean v2, p0, Lorg/apache/xpath/axes/AxesWalker;->m_isFresh:Z

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    .line 82
    iput-boolean v2, p0, Lorg/apache/xpath/axes/AxesWalker;->m_isFresh:Z

    :cond_13
    if-ne v1, v0, :cond_18

    const/4 v1, 0x1

    .line 85
    iput-boolean v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    :cond_18
    return v0
.end method

.method protected greylist getProximityPosition(I)I
    .registers 7

    const/4 v0, -0x1

    if-gez p1, :cond_4

    return v0

    .line 130
    :cond_4
    iget-object v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    aget v1, v1, p1

    if-gtz v1, :cond_56

    .line 134
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xpath/axes/WalkingIterator;->getLastUsedWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v2

    .line 138
    :try_start_12
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xpath/axes/ReverseAxesWalker;

    .line 140
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->getRoot()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/xpath/axes/ReverseAxesWalker;->setRoot(I)V

    .line 142
    invoke-virtual {v3, p1}, Lorg/apache/xpath/axes/PredicatedNodeTest;->setPredicateCount(I)V

    const/4 v4, 0x0

    .line 144
    invoke-virtual {v3, v4}, Lorg/apache/xpath/axes/AxesWalker;->setPrevWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 145
    invoke-virtual {v3, v4}, Lorg/apache/xpath/axes/AxesWalker;->setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 146
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    goto :goto_37

    .line 152
    :goto_31
    invoke-virtual {v3}, Lorg/apache/xpath/axes/AxesWalker;->nextNode()I

    move-result v4

    if-eq v0, v4, :cond_3a

    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 157
    :cond_3a
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    aput v1, v0, p1
    :try_end_3e
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_12 .. :try_end_3e} :catch_4f
    .catchall {:try_start_12 .. :try_end_3e} :catchall_46

    .line 166
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object p0

    invoke-virtual {p0, v2}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    return v1

    :catchall_46
    move-exception p1

    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object p0

    invoke-virtual {p0, v2}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 167
    throw p1

    .line 166
    :catch_4f
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object p0

    invoke-virtual {p0, v2}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    :cond_56
    return v1
.end method

.method public greylist isDocOrdered()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist isReverseAxes()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist setRoot(I)V
    .registers 4

    .line 53
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/AxesWalker;->setRoot(I)V

    .line 54
    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/AxesWalker;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    iget v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_axis:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getAxisIterator(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    .line 55
    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTMAxisIterator;->setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    return-void
.end method
