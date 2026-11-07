.class public Landroid/icu/impl/UCharacterIteratorWrapper;
.super Ljava/lang/Object;
.source "UCharacterIteratorWrapper.java"

# interfaces
.implements Ljava/text/CharacterIterator;


# instance fields
.field private blacklist iterator:Landroid/icu/text/UCharacterIterator;


# direct methods
.method public constructor blacklist <init>(Landroid/icu/text/UCharacterIterator;)V
    .registers 2
    .param p1, "iter"    # Landroid/icu/text/UCharacterIterator;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    .line 27
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 146
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/UCharacterIteratorWrapper;

    .line 147
    .local v0, "result":Landroid/icu/impl/UCharacterIteratorWrapper;
    iget-object v1, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Landroid/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/UCharacterIterator;

    iput-object v1, v0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;
    :try_end_10
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_10} :catch_11

    .line 148
    return-object v0

    .line 149
    .end local v0    # "result":Landroid/icu/impl/UCharacterIteratorWrapper;
    :catch_11
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api current()C
    .registers 2

    .line 65
    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->current()I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public whitelist test-api first()C
    .registers 2

    .line 41
    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->setToStart()V

    .line 42
    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->current()I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public whitelist test-api getBeginIndex()I
    .registers 2

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api getEndIndex()I
    .registers 2

    .line 127
    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getLength()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getIndex()I
    .registers 2

    .line 136
    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    return v0
.end method

.method public whitelist test-api last()C
    .registers 2

    .line 53
    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->setToLimit()V

    .line 54
    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->previous()I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public whitelist test-api next()C
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->next()I

    .line 80
    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->current()I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public whitelist test-api previous()C
    .registers 2

    .line 93
    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->previous()I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public whitelist test-api setIndex(I)C
    .registers 3
    .param p1, "position"    # I

    .line 106
    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    .line 107
    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->current()I

    move-result v0

    int-to-char v0, v0

    return v0
.end method
