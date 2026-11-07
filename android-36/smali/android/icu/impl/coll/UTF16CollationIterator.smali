.class public Landroid/icu/impl/coll/UTF16CollationIterator;
.super Landroid/icu/impl/coll/CollationIterator;
.source "UTF16CollationIterator.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field protected blacklist limit:I

.field protected blacklist pos:I

.field protected blacklist seq:Ljava/lang/CharSequence;

.field protected blacklist start:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 23
    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/impl/coll/CollationData;)V
    .registers 2
    .param p1, "d"    # Landroid/icu/impl/coll/CollationData;

    .line 28
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;)V

    .line 29
    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V
    .registers 6
    .param p1, "d"    # Landroid/icu/impl/coll/CollationData;
    .param p2, "numeric"    # Z
    .param p3, "s"    # Ljava/lang/CharSequence;
    .param p4, "p"    # I

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/coll/CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;Z)V

    .line 33
    iput-object p3, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    .line 35
    iput p4, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    .line 36
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->limit:I

    .line 37
    return-void
.end method


# virtual methods
.method protected blacklist backwardNumCodePoints(I)V
    .registers 5
    .param p1, "num"    # I

    .line 137
    nop

    :goto_1
    if-lez p1, :cond_3a

    iget v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    if-eq v0, v1, :cond_3a

    .line 138
    iget-object v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 139
    .local v0, "c":C
    add-int/lit8 p1, p1, -0x1

    .line 140
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_39

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    if-eq v1, v2, :cond_39

    iget-object v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    add-int/lit8 v2, v2, -0x1

    .line 141
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 142
    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    .line 144
    .end local v0    # "c":C
    :cond_39
    goto :goto_1

    .line 145
    :cond_3a
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 41
    invoke-super {p0, p1}, Landroid/icu/impl/coll/CollationIterator;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 42
    :cond_8
    move-object v0, p1

    check-cast v0, Landroid/icu/impl/coll/UTF16CollationIterator;

    .line 44
    .local v0, "o":Landroid/icu/impl/coll/UTF16CollationIterator;
    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v3, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v4, v0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method protected blacklist forwardNumCodePoints(I)V
    .registers 5
    .param p1, "num"    # I

    .line 125
    nop

    :goto_1
    if-lez p1, :cond_38

    iget v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->limit:I

    if-eq v0, v1, :cond_38

    .line 126
    iget-object v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 127
    .local v0, "c":C
    add-int/lit8 p1, p1, -0x1

    .line 128
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_37

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->limit:I

    if-eq v1, v2, :cond_37

    iget-object v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    .line 129
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 130
    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    .line 132
    .end local v0    # "c":C
    :cond_37
    goto :goto_1

    .line 133
    :cond_38
    return-void
.end method

.method public blacklist getOffset()I
    .registers 3

    .line 61
    iget v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected blacklist handleGetTrailSurrogate()C
    .registers 3

    .line 115
    iget v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->limit:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    return v0

    .line 117
    :cond_8
    iget-object v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    move v1, v0

    .local v1, "trail":C
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    .line 118
    :cond_1d
    return v1
.end method

.method protected blacklist handleNextCE32()J
    .registers 4

    .line 106
    iget v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->limit:I

    if-ne v0, v1, :cond_c

    .line 107
    const-wide v0, -0xffffff40L

    return-wide v0

    .line 109
    :cond_c
    iget-object v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 110
    .local v0, "c":C
    iget-object v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->trie:Landroid/icu/impl/Trie2_32;

    invoke-virtual {v1, v0}, Landroid/icu/impl/Trie2_32;->getFromU16SingleLead(C)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/coll/UTF16CollationIterator;->makeCodePointAndCE32Pair(II)J

    move-result-wide v1

    return-wide v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 49
    nop

    .line 50
    const/16 v0, 0x2a

    return v0
.end method

.method public blacklist nextCodePoint()I
    .registers 4

    .line 74
    iget v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->limit:I

    if-ne v0, v1, :cond_8

    .line 75
    const/4 v0, -0x1

    return v0

    .line 77
    :cond_8
    iget-object v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 79
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_3a

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->limit:I

    if-eq v1, v2, :cond_3a

    iget-object v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    .line 80
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    move v2, v1

    .local v2, "trail":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 81
    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    .line 82
    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    return v1

    .line 84
    .end local v2    # "trail":C
    :cond_3a
    return v0
.end method

.method public blacklist previousCodePoint()I
    .registers 4

    .line 90
    iget v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    if-ne v0, v1, :cond_8

    .line 91
    const/4 v0, -0x1

    return v0

    .line 93
    :cond_8
    iget-object v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 95
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    if-eq v1, v2, :cond_3c

    iget-object v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    add-int/lit8 v2, v2, -0x1

    .line 96
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    move v2, v1

    .local v2, "lead":C
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 97
    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    .line 98
    invoke-static {v2, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    return v1

    .line 100
    .end local v2    # "lead":C
    :cond_3c
    return v0
.end method

.method public blacklist resetToOffset(I)V
    .registers 3
    .param p1, "newOffset"    # I

    .line 55
    invoke-virtual {p0}, Landroid/icu/impl/coll/UTF16CollationIterator;->reset()V

    .line 56
    iget v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    .line 57
    return-void
.end method

.method public blacklist setText(ZLjava/lang/CharSequence;I)V
    .registers 5
    .param p1, "numeric"    # Z
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "p"    # I

    .line 65
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/UTF16CollationIterator;->reset(Z)V

    .line 66
    iput-object p2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    .line 68
    iput p3, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    .line 69
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->limit:I

    .line 70
    return-void
.end method
