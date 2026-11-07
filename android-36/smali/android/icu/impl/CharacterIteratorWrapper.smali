.class public Landroid/icu/impl/CharacterIteratorWrapper;
.super Landroid/icu/text/UCharacterIterator;
.source "CharacterIteratorWrapper.java"


# instance fields
.field private blacklist iterator:Ljava/text/CharacterIterator;


# direct methods
.method public constructor blacklist <init>(Ljava/text/CharacterIterator;)V
    .registers 3
    .param p1, "iter"    # Ljava/text/CharacterIterator;

    .line 28
    invoke-direct {p0}, Landroid/icu/text/UCharacterIterator;-><init>()V

    .line 29
    if-eqz p1, :cond_8

    .line 32
    iput-object p1, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    .line 33
    return-void

    .line 30
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 134
    :try_start_0
    invoke-super {p0}, Landroid/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/CharacterIteratorWrapper;

    .line 135
    .local v0, "result":Landroid/icu/impl/CharacterIteratorWrapper;
    iget-object v1, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/CharacterIterator;

    iput-object v1, v0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;
    :try_end_10
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_10} :catch_11

    .line 136
    return-object v0

    .line 137
    .end local v0    # "result":Landroid/icu/impl/CharacterIteratorWrapper;
    :catch_11
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api current()I
    .registers 3

    .line 40
    iget-object v0, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->current()C

    move-result v0

    .line 41
    .local v0, "c":I
    const v1, 0xffff

    if-ne v0, v1, :cond_d

    .line 42
    const/4 v1, -0x1

    return v1

    .line 44
    :cond_d
    return v0
.end method

.method public whitelist test-api getCharacterIterator()Ljava/text/CharacterIterator;
    .registers 2

    .line 161
    iget-object v0, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/CharacterIterator;

    return-object v0
.end method

.method public whitelist test-api getIndex()I
    .registers 2

    .line 60
    iget-object v0, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getLength()I
    .registers 3

    .line 52
    iget-object v0, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    iget-object v1, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api getText([CI)I
    .registers 7
    .param p1, "fillIn"    # [C
    .param p2, "offset"    # I

    .line 113
    iget-object v0, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    iget-object v1, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    sub-int/2addr v0, v1

    .line 114
    .local v0, "length":I
    iget-object v1, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    .line 115
    .local v1, "currentIndex":I
    if-ltz p2, :cond_37

    add-int v2, p2, v0

    array-length v3, p1

    if-gt v2, v3, :cond_37

    .line 119
    iget-object v2, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v2}, Ljava/text/CharacterIterator;->first()C

    move-result v2

    .local v2, "ch":C
    :goto_20
    const v3, 0xffff

    if-eq v2, v3, :cond_31

    .line 120
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "offset":I
    .local v3, "offset":I
    aput-char v2, p1, p2

    .line 119
    iget-object p2, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {p2}, Ljava/text/CharacterIterator;->next()C

    move-result v2

    move p2, v3

    goto :goto_20

    .line 122
    .end local v2    # "ch":C
    .end local v3    # "offset":I
    .restart local p2    # "offset":I
    :cond_31
    iget-object v2, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v2, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 124
    return v0

    .line 116
    :cond_37
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api moveIndex(I)I
    .registers 5
    .param p1, "delta"    # I

    .line 145
    iget-object v0, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    iget-object v1, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    sub-int/2addr v0, v1

    .line 146
    .local v0, "length":I
    iget-object v1, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    add-int/2addr v1, p1

    .line 148
    .local v1, "idx":I
    if-gez v1, :cond_18

    .line 149
    const/4 v1, 0x0

    goto :goto_1b

    .line 150
    :cond_18
    if-le v1, v0, :cond_1b

    .line 151
    move v1, v0

    .line 153
    :cond_1b
    :goto_1b
    iget-object v2, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v2, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v2

    return v2
.end method

.method public whitelist test-api next()I
    .registers 3

    .line 68
    iget-object v0, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->current()C

    move-result v0

    .line 69
    .local v0, "i":I
    iget-object v1, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->next()C

    .line 70
    const v1, 0xffff

    if-ne v0, v1, :cond_12

    .line 71
    const/4 v1, -0x1

    return v1

    .line 73
    :cond_12
    return v0
.end method

.method public whitelist test-api previous()I
    .registers 3

    .line 81
    iget-object v0, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->previous()C

    move-result v0

    .line 82
    .local v0, "i":I
    const v1, 0xffff

    if-ne v0, v1, :cond_d

    .line 83
    const/4 v1, -0x1

    return v1

    .line 85
    :cond_d
    return v0
.end method

.method public whitelist test-api setIndex(I)V
    .registers 4
    .param p1, "index"    # I

    .line 94
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_7

    .line 97
    nop

    .line 98
    return-void

    .line 95
    :catch_7
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public whitelist test-api setToLimit()V
    .registers 3

    .line 105
    iget-object v0, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    iget-object v1, p0, Landroid/icu/impl/CharacterIteratorWrapper;->iterator:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 106
    return-void
.end method
