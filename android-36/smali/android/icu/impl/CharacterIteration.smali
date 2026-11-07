.class public final Landroid/icu/impl/CharacterIteration;
.super Ljava/lang/Object;
.source "CharacterIteration.java"


# static fields
.field public static final blacklist DONE32:I = 0x7fffffff


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist current32(Ljava/text/CharacterIterator;)I
    .registers 6
    .param p0, "ci"    # Ljava/text/CharacterIterator;

    .line 109
    invoke-interface {p0}, Ljava/text/CharacterIterator;->current()C

    move-result v0

    .line 110
    .local v0, "lead":C
    move v1, v0

    .line 111
    .local v1, "retVal":I
    const v2, 0xd800

    if-ge v1, v2, :cond_b

    .line 112
    return v1

    .line 114
    :cond_b
    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 115
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v3

    .line 116
    .local v3, "trail":I
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    .line 117
    invoke-static {v3}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 118
    sub-int v2, v0, v2

    shl-int/lit8 v2, v2, 0xa

    const v4, 0xdc00

    sub-int v4, v3, v4

    add-int/2addr v2, v4

    const/high16 v4, 0x10000

    add-int v1, v2, v4

    .line 122
    .end local v3    # "trail":I
    :cond_2c
    goto :goto_3f

    .line 123
    :cond_2d
    const v2, 0xffff

    if-ne v0, v2, :cond_3f

    .line 124
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v2

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v3

    if-lt v2, v3, :cond_3f

    .line 125
    const v1, 0x7fffffff

    .line 129
    :cond_3f
    :goto_3f
    return v1
.end method

.method public static blacklist next32(Ljava/text/CharacterIterator;)I
    .registers 4
    .param p0, "ci"    # Ljava/text/CharacterIterator;

    .line 38
    invoke-interface {p0}, Ljava/text/CharacterIterator;->current()C

    move-result v0

    .line 39
    .local v0, "c":I
    const v1, 0xd800

    if-lt v0, v1, :cond_1f

    const v2, 0xdbff

    if-gt v0, v2, :cond_1f

    .line 40
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    .line 41
    const v2, 0xdc00

    if-lt v0, v2, :cond_1c

    const v2, 0xdfff

    if-le v0, v2, :cond_1f

    .line 42
    :cond_1c
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    .line 47
    :cond_1f
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    .line 51
    if-lt v0, v1, :cond_29

    .line 52
    invoke-static {p0, v0}, Landroid/icu/impl/CharacterIteration;->nextTrail32(Ljava/text/CharacterIterator;I)I

    move-result v0

    .line 55
    :cond_29
    const/high16 v1, 0x10000

    if-lt v0, v1, :cond_35

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_35

    .line 58
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    .line 60
    :cond_35
    return v0
.end method

.method public static blacklist nextTrail32(Ljava/text/CharacterIterator;I)I
    .registers 6
    .param p0, "ci"    # Ljava/text/CharacterIterator;
    .param p1, "lead"    # I

    .line 72
    const v0, 0xffff

    if-ne p1, v0, :cond_13

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v1

    if-lt v0, v1, :cond_13

    .line 73
    const v0, 0x7fffffff

    return v0

    .line 75
    :cond_13
    move v0, p1

    .line 76
    .local v0, "retVal":I
    const v1, 0xdbff

    if-gt p1, v1, :cond_38

    .line 77
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    move-result v1

    .line 78
    .local v1, "cTrail":C
    invoke-static {v1}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 79
    const v2, 0xd800

    sub-int v2, p1, v2

    shl-int/lit8 v2, v2, 0xa

    const v3, 0xdc00

    sub-int v3, v1, v3

    add-int/2addr v2, v3

    const/high16 v3, 0x10000

    add-int v0, v2, v3

    goto :goto_38

    .line 83
    :cond_35
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    .line 86
    .end local v1    # "cTrail":C
    :cond_38
    :goto_38
    return v0
.end method

.method public static blacklist previous32(Ljava/text/CharacterIterator;)I
    .registers 6
    .param p0, "ci"    # Ljava/text/CharacterIterator;

    .line 90
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    if-gt v0, v1, :cond_e

    .line 91
    const v0, 0x7fffffff

    return v0

    .line 93
    :cond_e
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    move-result v0

    .line 94
    .local v0, "trail":C
    move v1, v0

    .line 95
    .local v1, "retVal":I
    invoke-static {v0}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v2

    invoke-interface {p0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v3

    if-le v2, v3, :cond_42

    .line 96
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    move-result v2

    .line 97
    .local v2, "lead":C
    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 98
    const v3, 0xd800

    sub-int v3, v2, v3

    shl-int/lit8 v3, v3, 0xa

    const v4, 0xdc00

    sub-int v4, v0, v4

    add-int/2addr v3, v4

    const/high16 v4, 0x10000

    add-int v1, v3, v4

    goto :goto_42

    .line 102
    :cond_3f
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    .line 105
    .end local v2    # "lead":C
    :cond_42
    :goto_42
    return v1
.end method
