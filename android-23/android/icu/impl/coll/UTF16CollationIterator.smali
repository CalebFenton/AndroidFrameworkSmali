.class public Landroid/icu/impl/coll/UTF16CollationIterator;
.super Landroid/icu/impl/coll/CollationIterator;
.source "UTF16CollationIterator.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field protected limit:I

.field protected pos:I

.field protected seq:Ljava/lang/CharSequence;

.field protected start:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/coll/UTF16CollationIterator;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/UTF16CollationIterator;->-assertionsDisabled:Z

    #@b
    .line 19
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>(Landroid/icu/impl/coll/CollationData;)V
    .locals 0
    .param p1, "d"    # Landroid/icu/impl/coll/CollationData;

    #@0
    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;)V

    #@3
    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V
    .locals 1
    .param p1, "d"    # Landroid/icu/impl/coll/CollationData;
    .param p2, "numeric"    # Z
    .param p3, "s"    # Ljava/lang/CharSequence;
    .param p4, "p"    # I

    #@0
    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/coll/CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;Z)V

    #@3
    .line 29
    iput-object p3, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@5
    .line 30
    const/4 v0, 0x0

    #@6
    iput v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    #@8
    .line 31
    iput p4, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@a
    .line 32
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    #@d
    move-result v0

    #@e
    iput v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->limit:I

    #@10
    .line 27
    return-void
.end method


# virtual methods
.method protected backwardNumCodePoints(I)V
    .locals 3
    .param p1, "num"    # I

    #@0
    .prologue
    .line 133
    :cond_0
    :goto_0
    if-lez p1, :cond_1

    #@2
    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@4
    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    #@6
    if-eq v1, v2, :cond_1

    #@8
    .line 134
    iget-object v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@a
    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@c
    add-int/lit8 v2, v2, -0x1

    #@e
    iput v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@10
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@13
    move-result v0

    #@14
    .line 135
    .local v0, "c":C
    add-int/lit8 p1, p1, -0x1

    #@16
    .line 136
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_0

    #@1c
    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@1e
    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    #@20
    if-eq v1, v2, :cond_0

    #@22
    .line 137
    iget-object v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@24
    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@26
    add-int/lit8 v2, v2, -0x1

    #@28
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@2b
    move-result v1

    #@2c
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@2f
    move-result v1

    #@30
    .line 136
    if-eqz v1, :cond_0

    #@32
    .line 138
    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@34
    add-int/lit8 v1, v1, -0x1

    #@36
    iput v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@38
    goto :goto_0

    #@39
    .line 132
    .end local v0    # "c":C
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 37
    invoke-super {p0, p1}, Landroid/icu/impl/coll/CollationIterator;->equals(Ljava/lang/Object;)Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    return v1

    #@8
    :cond_0
    move-object v0, p1

    #@9
    .line 38
    check-cast v0, Landroid/icu/impl/coll/UTF16CollationIterator;

    #@b
    .line 40
    .local v0, "o":Landroid/icu/impl/coll/UTF16CollationIterator;
    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@d
    iget v3, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    #@f
    sub-int/2addr v2, v3

    #@10
    iget v3, v0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@12
    iget v4, v0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    #@14
    sub-int/2addr v3, v4

    #@15
    if-ne v2, v3, :cond_1

    #@17
    const/4 v1, 0x1

    #@18
    :cond_1
    return v1
.end method

.method protected forwardNumCodePoints(I)V
    .locals 4
    .param p1, "num"    # I

    #@0
    .prologue
    .line 121
    :cond_0
    :goto_0
    if-lez p1, :cond_1

    #@2
    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@4
    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->limit:I

    #@6
    if-eq v1, v2, :cond_1

    #@8
    .line 122
    iget-object v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@a
    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@c
    add-int/lit8 v3, v2, 0x1

    #@e
    iput v3, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@10
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@13
    move-result v0

    #@14
    .line 123
    .local v0, "c":C
    add-int/lit8 p1, p1, -0x1

    #@16
    .line 124
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_0

    #@1c
    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@1e
    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->limit:I

    #@20
    if-eq v1, v2, :cond_0

    #@22
    .line 125
    iget-object v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@24
    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@26
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@29
    move-result v1

    #@2a
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@2d
    move-result v1

    #@2e
    .line 124
    if-eqz v1, :cond_0

    #@30
    .line 126
    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@32
    add-int/lit8 v1, v1, 0x1

    #@34
    iput v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@36
    goto :goto_0

    #@37
    .line 120
    .end local v0    # "c":C
    :cond_1
    return-void
.end method

.method public getOffset()I
    .locals 2

    #@0
    .prologue
    .line 57
    iget v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@2
    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method protected handleGetTrailSurrogate()C
    .locals 3

    #@0
    .prologue
    .line 111
    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@2
    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->limit:I

    #@4
    if-ne v1, v2, :cond_0

    #@6
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 113
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@a
    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@c
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@f
    move-result v0

    #@10
    .local v0, "trail":C
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@18
    add-int/lit8 v1, v1, 0x1

    #@1a
    iput v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@1c
    .line 114
    :cond_1
    return v0
.end method

.method protected handleNextCE32()J
    .locals 4

    #@0
    .prologue
    .line 102
    iget v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@2
    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->limit:I

    #@4
    if-ne v1, v2, :cond_0

    #@6
    .line 103
    const-wide v2, -0xffffff40L

    #@b
    return-wide v2

    #@c
    .line 105
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@e
    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@10
    add-int/lit8 v3, v2, 0x1

    #@12
    iput v3, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@14
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@17
    move-result v0

    #@18
    .line 106
    .local v0, "c":C
    iget-object v1, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->trie:Landroid/icu/impl/Trie2_32;

    #@1a
    invoke-virtual {v1, v0}, Landroid/icu/impl/Trie2_32;->getFromU16SingleLead(C)I

    #@1d
    move-result v1

    #@1e
    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/coll/UTF16CollationIterator;->makeCodePointAndCE32Pair(II)J

    #@21
    move-result-wide v2

    #@22
    return-wide v2
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 45
    sget-boolean v0, Landroid/icu/impl/coll/UTF16CollationIterator;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/AssertionError;

    #@6
    const-string/jumbo v1, "hashCode not designed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@c
    throw v0

    #@d
    .line 46
    :cond_0
    const/16 v0, 0x2a

    #@f
    return v0
.end method

.method public nextCodePoint()I
    .locals 5

    #@0
    .prologue
    .line 70
    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@2
    iget v3, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->limit:I

    #@4
    if-ne v2, v3, :cond_0

    #@6
    .line 71
    const/4 v2, -0x1

    #@7
    return v2

    #@8
    .line 73
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@a
    iget v3, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@c
    add-int/lit8 v4, v3, 0x1

    #@e
    iput v4, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@10
    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@13
    move-result v0

    #@14
    .line 75
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_1

    #@1a
    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@1c
    iget v3, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->limit:I

    #@1e
    if-eq v2, v3, :cond_1

    #@20
    .line 76
    iget-object v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@22
    iget v3, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@24
    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@27
    move-result v1

    #@28
    .local v1, "trail":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@2b
    move-result v2

    #@2c
    .line 75
    if-eqz v2, :cond_1

    #@2e
    .line 77
    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@30
    add-int/lit8 v2, v2, 0x1

    #@32
    iput v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@34
    .line 78
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    #@37
    move-result v2

    #@38
    return v2

    #@39
    .line 80
    .end local v1    # "trail":C
    :cond_1
    return v0
.end method

.method public previousCodePoint()I
    .locals 4

    #@0
    .prologue
    .line 86
    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@2
    iget v3, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    #@4
    if-ne v2, v3, :cond_0

    #@6
    .line 87
    const/4 v2, -0x1

    #@7
    return v2

    #@8
    .line 89
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@a
    iget v3, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@c
    add-int/lit8 v3, v3, -0x1

    #@e
    iput v3, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@10
    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@13
    move-result v0

    #@14
    .line 91
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_1

    #@1a
    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@1c
    iget v3, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    #@1e
    if-eq v2, v3, :cond_1

    #@20
    .line 92
    iget-object v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@22
    iget v3, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@24
    add-int/lit8 v3, v3, -0x1

    #@26
    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    #@29
    move-result v1

    #@2a
    .local v1, "lead":C
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@2d
    move-result v2

    #@2e
    .line 91
    if-eqz v2, :cond_1

    #@30
    .line 93
    iget v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@32
    add-int/lit8 v2, v2, -0x1

    #@34
    iput v2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@36
    .line 94
    invoke-static {v1, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    #@39
    move-result v2

    #@3a
    return v2

    #@3b
    .line 96
    .end local v1    # "lead":C
    :cond_1
    return v0
.end method

.method public resetToOffset(I)V
    .locals 1
    .param p1, "newOffset"    # I

    #@0
    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/icu/impl/coll/UTF16CollationIterator;->reset()V

    #@3
    .line 52
    iget v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    #@5
    add-int/2addr v0, p1

    #@6
    iput v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@8
    .line 50
    return-void
.end method

.method public setText(ZLjava/lang/CharSequence;I)V
    .locals 1
    .param p1, "numeric"    # Z
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "p"    # I

    #@0
    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/UTF16CollationIterator;->reset(Z)V

    #@3
    .line 62
    iput-object p2, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    #@5
    .line 63
    const/4 v0, 0x0

    #@6
    iput v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->start:I

    #@8
    .line 64
    iput p3, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->pos:I

    #@a
    .line 65
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    #@d
    move-result v0

    #@e
    iput v0, p0, Landroid/icu/impl/coll/UTF16CollationIterator;->limit:I

    #@10
    .line 60
    return-void
.end method
