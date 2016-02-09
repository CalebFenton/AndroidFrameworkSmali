.class public Landroid/icu/impl/CharacterIteratorWrapper;
.super Landroid/icu/text/UCharacterIterator;
.source "CharacterIteratorWrapper.java"


# instance fields
.field private iterator:Ljava/text/CharacterIterator;


# direct methods
.method public constructor <init>(Ljava/text/CharacterIterator;)V
    .locals 1
    .param p1, "iter"    # Ljava/text/CharacterIterator;

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Landroid/icu/text/UCharacterIterator;-><init>()V

    #@3
    .line 25
    if-nez p1, :cond_0

    #@5
    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@a
    throw v0

    #@b
    .line 28
    :cond_0
    iput-object p1, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    #@d
    .line 24
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 121
    :try_start_0
    invoke-super {p0}, Landroid/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/icu/impl/CharacterIteratorWrapper;

    #@6
    .line 122
    .local v1, "result":Landroid/icu/impl/CharacterIteratorWrapper;
    iget-object v2, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    #@8
    invoke-interface {v2}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Ljava/text/CharacterIterator;

    #@e
    iput-object v2, v1, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 123
    return-object v1

    #@11
    .line 124
    .end local v1    # "result":Landroid/icu/impl/CharacterIteratorWrapper;
    :catch_0
    move-exception v0

    #@12
    .line 125
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v2, 0x0

    #@13
    return-object v2
.end method

.method public current()I
    .locals 2

    #@0
    .prologue
    .line 35
    iget-object v1, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    #@2
    invoke-interface {v1}, Ljava/text/CharacterIterator;->current()C

    #@5
    move-result v0

    #@6
    .line 36
    .local v0, "c":I
    const v1, 0xffff

    #@9
    if-ne v0, v1, :cond_0

    #@b
    .line 37
    const/4 v1, -0x1

    #@c
    return v1

    #@d
    .line 39
    :cond_0
    return v0
.end method

.method public getCharacterIterator()Ljava/text/CharacterIterator;
    .locals 1

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    #@2
    invoke-interface {v0}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/text/CharacterIterator;

    #@8
    return-object v0
.end method

.method public getIndex()I
    .locals 1

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    #@2
    invoke-interface {v0}, Ljava/text/CharacterIterator;->getIndex()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLength()I
    .locals 2

    #@0
    .prologue
    .line 46
    iget-object v0, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    #@2
    invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    #@8
    invoke-interface {v1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    #@b
    move-result v1

    #@c
    sub-int/2addr v0, v1

    #@d
    return v0
.end method

.method public getText([CI)I
    .locals 6
    .param p1, "fillIn"    # [C
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 101
    iget-object v4, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    #@2
    invoke-interface {v4}, Ljava/text/CharacterIterator;->getEndIndex()I

    #@5
    move-result v4

    #@6
    iget-object v5, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    #@8
    invoke-interface {v5}, Ljava/text/CharacterIterator;->getBeginIndex()I

    #@b
    move-result v5

    #@c
    sub-int v2, v4, v5

    #@e
    .line 102
    .local v2, "length":I
    iget-object v4, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    #@10
    invoke-interface {v4}, Ljava/text/CharacterIterator;->getIndex()I

    #@13
    move-result v1

    #@14
    .line 103
    .local v1, "currentIndex":I
    if-ltz p2, :cond_0

    #@16
    add-int v4, p2, v2

    #@18
    array-length v5, p1

    #@19
    if-le v4, v5, :cond_1

    #@1b
    .line 104
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    #@1d
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@24
    throw v4

    #@25
    .line 107
    :cond_1
    iget-object v4, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    #@27
    invoke-interface {v4}, Ljava/text/CharacterIterator;->first()C

    #@2a
    move-result v0

    #@2b
    .local v0, "ch":C
    move v3, p2

    #@2c
    .end local p2    # "offset":I
    .local v3, "offset":I
    :goto_0
    const v4, 0xffff

    #@2f
    if-eq v0, v4, :cond_2

    #@31
    .line 108
    add-int/lit8 p2, v3, 0x1

    #@33
    .end local v3    # "offset":I
    .restart local p2    # "offset":I
    aput-char v0, p1, v3

    #@35
    .line 107
    iget-object v4, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    #@37
    invoke-interface {v4}, Ljava/text/CharacterIterator;->next()C

    #@3a
    move-result v0

    #@3b
    move v3, p2

    #@3c
    .end local p2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    #@3d
    .line 110
    :cond_2
    iget-object v4, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    #@3f
    invoke-interface {v4, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@42
    .line 112
    return v2
.end method

.method public moveIndex(I)I
    .locals 4
    .param p1, "delta"    # I

    #@0
    .prologue
    .line 131
    iget-object v2, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    #@2
    invoke-interface {v2}, Ljava/text/CharacterIterator;->getEndIndex()I

    #@5
    move-result v2

    #@6
    iget-object v3, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    #@8
    invoke-interface {v3}, Ljava/text/CharacterIterator;->getBeginIndex()I

    #@b
    move-result v3

    #@c
    sub-int v1, v2, v3

    #@e
    .line 132
    .local v1, "length":I
    iget-object v2, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    #@10
    invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I

    #@13
    move-result v2

    #@14
    add-int v0, v2, p1

    #@16
    .line 134
    .local v0, "idx":I
    if-gez v0, :cond_1

    #@18
    .line 135
    const/4 v0, 0x0

    #@19
    .line 139
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    #@1b
    invoke-interface {v2, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@1e
    move-result v2

    #@1f
    return v2

    #@20
    .line 136
    :cond_1
    if-le v0, v1, :cond_0

    #@22
    .line 137
    move v0, v1

    #@23
    goto :goto_0
.end method

.method public next()I
    .locals 2

    #@0
    .prologue
    .line 60
    iget-object v1, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    #@2
    invoke-interface {v1}, Ljava/text/CharacterIterator;->current()C

    #@5
    move-result v0

    #@6
    .line 61
    .local v0, "i":I
    iget-object v1, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    #@8
    invoke-interface {v1}, Ljava/text/CharacterIterator;->next()C

    #@b
    .line 62
    const v1, 0xffff

    #@e
    if-ne v0, v1, :cond_0

    #@10
    .line 63
    const/4 v1, -0x1

    #@11
    return v1

    #@12
    .line 65
    :cond_0
    return v0
.end method

.method public previous()I
    .locals 2

    #@0
    .prologue
    .line 72
    iget-object v1, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    #@2
    invoke-interface {v1}, Ljava/text/CharacterIterator;->previous()C

    #@5
    move-result v0

    #@6
    .line 73
    .local v0, "i":I
    const v1, 0xffff

    #@9
    if-ne v0, v1, :cond_0

    #@b
    .line 74
    const/4 v1, -0x1

    #@c
    return v1

    #@d
    .line 76
    :cond_0
    return v0
.end method

.method public setIndex(I)V
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 84
    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    #@2
    invoke-interface {v1, p1}, Ljava/text/CharacterIterator;->setIndex(I)C
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 82
    return-void

    #@6
    .line 85
    :catch_0
    move-exception v0

    #@7
    .line 86
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@9
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@c
    throw v1
.end method

.method public setToLimit()V
    .locals 2

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    #@2
    iget-object v1, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    #@4
    invoke-interface {v1}, Ljava/text/CharacterIterator;->getEndIndex()I

    #@7
    move-result v1

    #@8
    invoke-interface {v0, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@b
    .line 93
    return-void
.end method
