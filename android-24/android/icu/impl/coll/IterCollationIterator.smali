.class public Landroid/icu/impl/coll/IterCollationIterator;
.super Landroid/icu/impl/coll/CollationIterator;
.source "IterCollationIterator.java"


# instance fields
.field protected iter:Landroid/icu/text/UCharacterIterator;


# direct methods
.method public constructor <init>(Landroid/icu/impl/coll/CollationData;ZLandroid/icu/text/UCharacterIterator;)V
    .locals 0
    .param p1, "d"    # Landroid/icu/impl/coll/CollationData;
    .param p2, "numeric"    # Z
    .param p3, "ui"    # Landroid/icu/text/UCharacterIterator;

    #@0
    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/coll/CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;Z)V

    #@3
    .line 26
    iput-object p3, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@5
    .line 24
    return-void
.end method


# virtual methods
.method protected backwardNumCodePoints(I)V
    .locals 2
    .param p1, "num"    # I

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@2
    neg-int v1, p1

    #@3
    invoke-virtual {v0, v1}, Landroid/icu/text/UCharacterIterator;->moveCodePointIndex(I)I

    #@6
    .line 72
    return-void
.end method

.method protected forwardNumCodePoints(I)V
    .locals 1
    .param p1, "num"    # I

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/UCharacterIterator;->moveCodePointIndex(I)I

    #@5
    .line 67
    return-void
.end method

.method public getOffset()I
    .locals 1

    #@0
    .prologue
    .line 37
    iget-object v0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected handleGetTrailSurrogate()C
    .locals 2

    #@0
    .prologue
    .line 61
    iget-object v1, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@2
    invoke-virtual {v1}, Landroid/icu/text/UCharacterIterator;->next()I

    #@5
    move-result v0

    #@6
    .line 62
    .local v0, "trail":I
    invoke-static {v0}, Landroid/icu/impl/coll/IterCollationIterator;->isTrailSurrogate(I)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    if-ltz v0, :cond_0

    #@e
    iget-object v1, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@10
    invoke-virtual {v1}, Landroid/icu/text/UCharacterIterator;->previous()I

    #@13
    .line 63
    :cond_0
    int-to-char v1, v0

    #@14
    return v1
.end method

.method protected handleNextCE32()J
    .locals 4

    #@0
    .prologue
    .line 52
    iget-object v1, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@2
    invoke-virtual {v1}, Landroid/icu/text/UCharacterIterator;->next()I

    #@5
    move-result v0

    #@6
    .line 53
    .local v0, "c":I
    if-gez v0, :cond_0

    #@8
    .line 54
    const-wide v2, -0xffffff40L

    #@d
    return-wide v2

    #@e
    .line 56
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/CollationIterator;->trie:Landroid/icu/impl/Trie2_32;

    #@10
    int-to-char v2, v0

    #@11
    invoke-virtual {v1, v2}, Landroid/icu/impl/Trie2_32;->getFromU16SingleLead(C)I

    #@14
    move-result v1

    #@15
    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/coll/CollationIterator;->makeCodePointAndCE32Pair(II)J

    #@18
    move-result-wide v2

    #@19
    return-wide v2
.end method

.method public nextCodePoint()I
    .locals 1

    #@0
    .prologue
    .line 42
    iget-object v0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public previousCodePoint()I
    .locals 1

    #@0
    .prologue
    .line 47
    iget-object v0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public resetToOffset(I)V
    .locals 1
    .param p1, "newOffset"    # I

    #@0
    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationIterator;->reset()V

    #@3
    .line 32
    iget-object v0, p0, Landroid/icu/impl/coll/IterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    #@5
    invoke-virtual {v0, p1}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    #@8
    .line 30
    return-void
.end method
