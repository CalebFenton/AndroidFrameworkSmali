.class public Landroid/icu/impl/coll/IterCollationIterator;
.super Landroid/icu/impl/coll/CollationIterator;
.source "IterCollationIterator.java"


# instance fields
.field protected blacklist iter:Landroid/icu/text/UCharacterIterator;


# direct methods
.method public constructor blacklist <init>(Landroid/icu/impl/coll/CollationData;ZLandroid/icu/text/UCharacterIterator;)V
    .registers 4
    .param p1, "d"    # Landroid/icu/impl/coll/CollationData;
    .param p2, "numeric"    # Z
    .param p3, "ui"    # Landroid/icu/text/UCharacterIterator;

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/coll/CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;Z)V

    .line 28
    iput-object p3, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    .line 29
    return-void
.end method


# virtual methods
.method protected blacklist backwardNumCodePoints(I)V
    .registers 4
    .param p1, "num"    # I

    .line 75
    iget-object v0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/icu/text/UCharacterIterator;->moveCodePointIndex(I)I

    .line 76
    return-void
.end method

.method protected blacklist forwardNumCodePoints(I)V
    .registers 3
    .param p1, "num"    # I

    .line 70
    iget-object v0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/UCharacterIterator;->moveCodePointIndex(I)I

    .line 71
    return-void
.end method

.method public blacklist getOffset()I
    .registers 2

    .line 39
    iget-object v0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    return v0
.end method

.method protected blacklist handleGetTrailSurrogate()C
    .registers 3

    .line 63
    iget-object v0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->next()I

    move-result v0

    .line 64
    .local v0, "trail":I
    invoke-static {v0}, Landroid/icu/impl/coll/IterCollationIterator;->isTrailSurrogate(I)Z

    move-result v1

    if-nez v1, :cond_13

    if-ltz v0, :cond_13

    iget-object v1, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Landroid/icu/text/UCharacterIterator;->previous()I

    .line 65
    :cond_13
    int-to-char v1, v0

    return v1
.end method

.method protected blacklist handleNextCE32()J
    .registers 4

    .line 54
    iget-object v0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->next()I

    move-result v0

    .line 55
    .local v0, "c":I
    if-gez v0, :cond_e

    .line 56
    const-wide v1, -0xffffff40L

    return-wide v1

    .line 58
    :cond_e
    iget-object v1, p0, Landroid/icu/impl/coll/IterCollationIterator;->trie:Landroid/icu/impl/Trie2_32;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Landroid/icu/impl/Trie2_32;->getFromU16SingleLead(C)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/coll/IterCollationIterator;->makeCodePointAndCE32Pair(II)J

    move-result-wide v1

    return-wide v1
.end method

.method public blacklist nextCodePoint()I
    .registers 2

    .line 44
    iget-object v0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v0

    return v0
.end method

.method public blacklist previousCodePoint()I
    .registers 2

    .line 49
    iget-object v0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    move-result v0

    return v0
.end method

.method public blacklist resetToOffset(I)V
    .registers 3
    .param p1, "newOffset"    # I

    .line 33
    invoke-virtual {p0}, Landroid/icu/impl/coll/IterCollationIterator;->reset()V

    .line 34
    iget-object v0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    .line 35
    return-void
.end method
