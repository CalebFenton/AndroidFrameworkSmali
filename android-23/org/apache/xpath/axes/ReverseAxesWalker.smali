.class public Lorg/apache/xpath/axes/ReverseAxesWalker;
.super Lorg/apache/xpath/axes/AxesWalker;
.source "ReverseAxesWalker.java"


# static fields
.field static final serialVersionUID:J = 0x27829a5f21e481adL


# instance fields
.field protected m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;


# direct methods
.method constructor <init>(Lorg/apache/xpath/axes/LocPathIterator;I)V
    .locals 0
    .param p1, "locPathIterator"    # Lorg/apache/xpath/axes/LocPathIterator;
    .param p2, "axis"    # I

    #@0
    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/apache/xpath/axes/AxesWalker;-><init>(Lorg/apache/xpath/axes/LocPathIterator;I)V

    #@3
    .line 40
    return-void
.end method


# virtual methods
.method protected countProximityPosition(I)V
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 180
    iget-object v0, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_proximityPositions:[I

    #@2
    array-length v0, v0

    #@3
    if-ge p1, v0, :cond_0

    #@5
    .line 181
    iget-object v0, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_proximityPositions:[I

    #@7
    aget v1, v0, p1

    #@9
    add-int/lit8 v1, v1, -0x1

    #@b
    aput v1, v0, p1

    #@d
    .line 178
    :cond_0
    return-void
.end method

.method public detach()V
    .locals 1

    #@0
    .prologue
    .line 65
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    #@3
    .line 66
    invoke-super {p0}, Lorg/apache/xpath/axes/AxesWalker;->detach()V

    #@6
    .line 63
    return-void
.end method

.method public getLastPos(Lorg/apache/xpath/XPathContext;)I
    .locals 7
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;

    #@0
    .prologue
    .line 196
    const/4 v2, 0x0

    #@1
    .line 197
    .local v2, "count":I
    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    #@4
    move-result-object v5

    #@5
    invoke-virtual {v5}, Lorg/apache/xpath/axes/WalkingIterator;->getLastUsedWalker()Lorg/apache/xpath/axes/AxesWalker;

    #@8
    move-result-object v4

    #@9
    .line 201
    .local v4, "savedWalker":Lorg/apache/xpath/axes/AxesWalker;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->clone()Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lorg/apache/xpath/axes/ReverseAxesWalker;

    #@f
    .line 203
    .local v0, "clone":Lorg/apache/xpath/axes/ReverseAxesWalker;
    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->getRoot()I

    #@12
    move-result v5

    #@13
    invoke-virtual {v0, v5}, Lorg/apache/xpath/axes/ReverseAxesWalker;->setRoot(I)V

    #@16
    .line 205
    iget v5, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_predicateIndex:I

    #@18
    invoke-virtual {v0, v5}, Lorg/apache/xpath/axes/ReverseAxesWalker;->setPredicateCount(I)V

    #@1b
    .line 207
    const/4 v5, 0x0

    #@1c
    invoke-virtual {v0, v5}, Lorg/apache/xpath/axes/ReverseAxesWalker;->setPrevWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    #@1f
    .line 208
    const/4 v5, 0x0

    #@20
    invoke-virtual {v0, v5}, Lorg/apache/xpath/axes/ReverseAxesWalker;->setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    #@23
    .line 209
    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v5, v0}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    #@2a
    .line 215
    :goto_0
    invoke-virtual {v0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->nextNode()I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    move-result v3

    #@2e
    .local v3, "next":I
    const/4 v5, -0x1

    #@2f
    if-eq v5, v3, :cond_0

    #@31
    .line 217
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_0

    #@34
    .line 227
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v5, v4}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    #@3b
    .line 230
    .end local v0    # "clone":Lorg/apache/xpath/axes/ReverseAxesWalker;
    .end local v3    # "next":I
    :goto_1
    return v2

    #@3c
    .line 221
    :catch_0
    move-exception v1

    #@3d
    .line 227
    .local v1, "cnse":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {v5, v4}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    #@44
    goto :goto_1

    #@45
    .line 226
    .end local v1    # "cnse":Ljava/lang/CloneNotSupportedException;
    :catchall_0
    move-exception v5

    #@46
    .line 227
    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    #@49
    move-result-object v6

    #@4a
    invoke-virtual {v6, v4}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    #@4d
    .line 226
    throw v5
.end method

.method protected getNextNode()I
    .locals 3

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 76
    iget-boolean v1, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_foundLast:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 77
    return v2

    #@6
    .line 79
    :cond_0
    iget-object v1, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    #@8
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMAxisIterator;->next()I

    #@b
    move-result v0

    #@c
    .line 81
    .local v0, "next":I
    iget-boolean v1, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_isFresh:Z

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 82
    const/4 v1, 0x0

    #@11
    iput-boolean v1, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_isFresh:Z

    #@13
    .line 84
    :cond_1
    if-ne v2, v0, :cond_2

    #@15
    .line 85
    const/4 v1, 0x1

    #@16
    iput-boolean v1, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_foundLast:Z

    #@18
    .line 87
    :cond_2
    return v0
.end method

.method protected getProximityPosition(I)I
    .locals 7
    .param p1, "predicateIndex"    # I

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 127
    if-gez p1, :cond_0

    #@3
    .line 128
    return v6

    #@4
    .line 130
    :cond_0
    iget-object v5, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_proximityPositions:[I

    #@6
    aget v2, v5, p1

    #@8
    .line 132
    .local v2, "count":I
    if-gtz v2, :cond_2

    #@a
    .line 134
    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    #@d
    move-result-object v5

    #@e
    invoke-virtual {v5}, Lorg/apache/xpath/axes/WalkingIterator;->getLastUsedWalker()Lorg/apache/xpath/axes/AxesWalker;

    #@11
    move-result-object v4

    #@12
    .line 138
    .local v4, "savedWalker":Lorg/apache/xpath/axes/AxesWalker;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->clone()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lorg/apache/xpath/axes/ReverseAxesWalker;

    #@18
    .line 140
    .local v0, "clone":Lorg/apache/xpath/axes/ReverseAxesWalker;
    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->getRoot()I

    #@1b
    move-result v5

    #@1c
    invoke-virtual {v0, v5}, Lorg/apache/xpath/axes/ReverseAxesWalker;->setRoot(I)V

    #@1f
    .line 142
    invoke-virtual {v0, p1}, Lorg/apache/xpath/axes/ReverseAxesWalker;->setPredicateCount(I)V

    #@22
    .line 144
    const/4 v5, 0x0

    #@23
    invoke-virtual {v0, v5}, Lorg/apache/xpath/axes/ReverseAxesWalker;->setPrevWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    #@26
    .line 145
    const/4 v5, 0x0

    #@27
    invoke-virtual {v0, v5}, Lorg/apache/xpath/axes/ReverseAxesWalker;->setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    #@2a
    .line 146
    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v5, v0}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    #@31
    .line 149
    add-int/lit8 v2, v2, 0x1

    #@33
    .line 152
    :goto_0
    invoke-virtual {v0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->nextNode()I

    #@36
    move-result v3

    #@37
    .local v3, "next":I
    if-eq v6, v3, :cond_1

    #@39
    .line 154
    add-int/lit8 v2, v2, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 157
    :cond_1
    iget-object v5, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_proximityPositions:[I

    #@3e
    aput v2, v5, p1
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    .line 166
    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v5, v4}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    #@47
    .line 170
    .end local v0    # "clone":Lorg/apache/xpath/axes/ReverseAxesWalker;
    .end local v3    # "next":I
    .end local v4    # "savedWalker":Lorg/apache/xpath/axes/AxesWalker;
    :cond_2
    :goto_1
    return v2

    #@48
    .line 160
    .restart local v4    # "savedWalker":Lorg/apache/xpath/axes/AxesWalker;
    :catch_0
    move-exception v1

    #@49
    .line 166
    .local v1, "cnse":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {v5, v4}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    #@50
    goto :goto_1

    #@51
    .line 165
    .end local v1    # "cnse":Ljava/lang/CloneNotSupportedException;
    :catchall_0
    move-exception v5

    #@52
    .line 166
    invoke-virtual {p0}, Lorg/apache/xpath/axes/ReverseAxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    #@55
    move-result-object v6

    #@56
    invoke-virtual {v6, v4}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    #@59
    .line 165
    throw v5
.end method

.method public isDocOrdered()Z
    .locals 1

    #@0
    .prologue
    .line 242
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isReverseAxes()Z
    .locals 1

    #@0
    .prologue
    .line 98
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public setRoot(I)V
    .locals 2
    .param p1, "root"    # I

    #@0
    .prologue
    .line 53
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/AxesWalker;->setRoot(I)V

    #@3
    .line 54
    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/ReverseAxesWalker;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@6
    move-result-object v0

    #@7
    iget v1, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_axis:I

    #@9
    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getAxisIterator(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    #@f
    .line 55
    iget-object v0, p0, Lorg/apache/xpath/axes/ReverseAxesWalker;->m_iterator:Lorg/apache/xml/dtm/DTMAxisIterator;

    #@11
    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTMAxisIterator;->setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    #@14
    .line 51
    return-void
.end method
