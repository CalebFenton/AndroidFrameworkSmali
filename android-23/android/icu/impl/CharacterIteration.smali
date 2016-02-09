.class public final Landroid/icu/impl/CharacterIteration;
.super Ljava/lang/Object;
.source "CharacterIteration.java"


# static fields
.field public static final DONE32:I = 0x7fffffff


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static current32(Ljava/text/CharacterIterator;)I
    .locals 5
    .param p0, "ci"    # Ljava/text/CharacterIterator;

    #@0
    .prologue
    const v4, 0xd800

    #@3
    .line 103
    invoke-interface {p0}, Ljava/text/CharacterIterator;->current()C

    #@6
    move-result v0

    #@7
    .line 104
    .local v0, "lead":C
    move v1, v0

    #@8
    .line 105
    .local v1, "retVal":I
    if-ge v1, v4, :cond_0

    #@a
    .line 106
    return v1

    #@b
    .line 108
    :cond_0
    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_2

    #@11
    .line 109
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    #@14
    move-result v2

    #@15
    .line 110
    .local v2, "trail":I
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    #@18
    .line 111
    int-to-char v3, v2

    #@19
    invoke-static {v3}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_1

    #@1f
    .line 112
    sub-int v3, v0, v4

    #@21
    shl-int/lit8 v3, v3, 0xa

    #@23
    .line 113
    const v4, 0xdc00

    #@26
    sub-int v4, v2, v4

    #@28
    .line 112
    add-int/2addr v3, v4

    #@29
    .line 114
    const/high16 v4, 0x10000

    #@2b
    .line 112
    add-int v1, v3, v4

    #@2d
    .line 123
    .end local v2    # "trail":I
    :cond_1
    :goto_0
    return v1

    #@2e
    .line 117
    :cond_2
    const v3, 0xffff

    #@31
    if-ne v0, v3, :cond_1

    #@33
    .line 118
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    #@36
    move-result v3

    #@37
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getEndIndex()I

    #@3a
    move-result v4

    #@3b
    if-lt v3, v4, :cond_1

    #@3d
    .line 119
    const v1, 0x7fffffff

    #@40
    goto :goto_0
.end method

.method public static next32(Ljava/text/CharacterIterator;)I
    .locals 3
    .param p0, "ci"    # Ljava/text/CharacterIterator;

    #@0
    .prologue
    const v2, 0xd800

    #@3
    .line 32
    invoke-interface {p0}, Ljava/text/CharacterIterator;->current()C

    #@6
    move-result v0

    #@7
    .line 33
    .local v0, "c":I
    if-lt v0, v2, :cond_1

    #@9
    const v1, 0xdbff

    #@c
    if-gt v0, v1, :cond_1

    #@e
    .line 34
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    #@11
    move-result v0

    #@12
    .line 35
    const v1, 0xdc00

    #@15
    if-lt v0, v1, :cond_0

    #@17
    const v1, 0xdfff

    #@1a
    if-le v0, v1, :cond_1

    #@1c
    .line 36
    :cond_0
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    #@1f
    move-result v0

    #@20
    .line 41
    :cond_1
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    #@23
    move-result v0

    #@24
    .line 45
    if-lt v0, v2, :cond_2

    #@26
    .line 46
    invoke-static {p0, v0}, Landroid/icu/impl/CharacterIteration;->nextTrail32(Ljava/text/CharacterIterator;I)I

    #@29
    move-result v0

    #@2a
    .line 49
    :cond_2
    const/high16 v1, 0x10000

    #@2c
    if-lt v0, v1, :cond_3

    #@2e
    const v1, 0x7fffffff

    #@31
    if-eq v0, v1, :cond_3

    #@33
    .line 52
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    #@36
    .line 54
    :cond_3
    return v0
.end method

.method public static nextTrail32(Ljava/text/CharacterIterator;I)I
    .locals 4
    .param p0, "ci"    # Ljava/text/CharacterIterator;
    .param p1, "lead"    # I

    #@0
    .prologue
    .line 66
    const v2, 0xffff

    #@3
    if-ne p1, v2, :cond_0

    #@5
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    #@8
    move-result v2

    #@9
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getEndIndex()I

    #@c
    move-result v3

    #@d
    if-lt v2, v3, :cond_0

    #@f
    .line 67
    const v2, 0x7fffffff

    #@12
    return v2

    #@13
    .line 69
    :cond_0
    move v1, p1

    #@14
    .line 70
    .local v1, "retVal":I
    const v2, 0xdbff

    #@17
    if-gt p1, v2, :cond_1

    #@19
    .line 71
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    #@1c
    move-result v0

    #@1d
    .line 72
    .local v0, "cTrail":C
    invoke-static {v0}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_2

    #@23
    .line 73
    const v2, 0xd800

    #@26
    sub-int v2, p1, v2

    #@28
    shl-int/lit8 v2, v2, 0xa

    #@2a
    .line 74
    const v3, 0xdc00

    #@2d
    sub-int v3, v0, v3

    #@2f
    .line 73
    add-int/2addr v2, v3

    #@30
    .line 75
    const/high16 v3, 0x10000

    #@32
    .line 73
    add-int v1, v2, v3

    #@34
    .line 80
    .end local v0    # "cTrail":C
    :cond_1
    :goto_0
    return v1

    #@35
    .line 77
    .restart local v0    # "cTrail":C
    :cond_2
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    #@38
    goto :goto_0
.end method

.method public static previous32(Ljava/text/CharacterIterator;)I
    .locals 5
    .param p0, "ci"    # Ljava/text/CharacterIterator;

    #@0
    .prologue
    .line 84
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    #@3
    move-result v3

    #@4
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    #@7
    move-result v4

    #@8
    if-gt v3, v4, :cond_0

    #@a
    .line 85
    const v3, 0x7fffffff

    #@d
    return v3

    #@e
    .line 87
    :cond_0
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    #@11
    move-result v2

    #@12
    .line 88
    .local v2, "trail":C
    move v1, v2

    #@13
    .line 89
    .local v1, "retVal":I
    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_1

    #@19
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    #@1c
    move-result v3

    #@1d
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    #@20
    move-result v4

    #@21
    if-le v3, v4, :cond_1

    #@23
    .line 90
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    #@26
    move-result v0

    #@27
    .line 91
    .local v0, "lead":C
    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_2

    #@2d
    .line 92
    const v3, 0xd800

    #@30
    sub-int v3, v0, v3

    #@32
    shl-int/lit8 v3, v3, 0xa

    #@34
    .line 93
    const v4, 0xdc00

    #@37
    sub-int v4, v2, v4

    #@39
    .line 92
    add-int/2addr v3, v4

    #@3a
    .line 94
    const/high16 v4, 0x10000

    #@3c
    .line 92
    add-int v1, v3, v4

    #@3e
    .line 99
    .end local v0    # "lead":C
    :cond_1
    :goto_0
    return v1

    #@3f
    .line 96
    .restart local v0    # "lead":C
    :cond_2
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    #@42
    goto :goto_0
.end method
