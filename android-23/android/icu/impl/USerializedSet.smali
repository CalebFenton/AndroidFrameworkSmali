.class public final Landroid/icu/impl/USerializedSet;
.super Ljava/lang/Object;
.source "USerializedSet.java"


# instance fields
.field private array:[C

.field private arrayOffset:I

.field private bmpLength:I

.field private length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 183
    const/16 v0, 0x8

    #@5
    new-array v0, v0, [C

    #@7
    iput-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    #@9
    .line 21
    return-void
.end method


# virtual methods
.method public final contains(I)Z
    .locals 7
    .param p1, "c"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 150
    const v5, 0x10ffff

    #@5
    if-le p1, v5, :cond_0

    #@7
    .line 151
    return v4

    #@8
    .line 154
    :cond_0
    const v5, 0xffff

    #@b
    if-gt p1, v5, :cond_3

    #@d
    .line 157
    const/4 v1, 0x0

    #@e
    .local v1, "i":I
    :goto_0
    iget v5, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    #@10
    if-ge v1, v5, :cond_1

    #@12
    int-to-char v5, p1

    #@13
    iget-object v6, p0, Landroid/icu/impl/USerializedSet;->array:[C

    #@15
    aget-char v6, v6, v1

    #@17
    if-lt v5, v6, :cond_1

    #@19
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 158
    :cond_1
    and-int/lit8 v5, v1, 0x1

    #@1e
    if-eqz v5, :cond_2

    #@20
    :goto_1
    return v3

    #@21
    :cond_2
    move v3, v4

    #@22
    goto :goto_1

    #@23
    .line 162
    .end local v1    # "i":I
    :cond_3
    shr-int/lit8 v5, p1, 0x10

    #@25
    int-to-char v0, v5

    #@26
    .local v0, "high":C
    int-to-char v2, p1

    #@27
    .line 163
    .local v2, "low":C
    iget v1, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    #@29
    .line 164
    .restart local v1    # "i":I
    :goto_2
    iget v5, p0, Landroid/icu/impl/USerializedSet;->length:I

    #@2b
    if-ge v1, v5, :cond_5

    #@2d
    iget-object v5, p0, Landroid/icu/impl/USerializedSet;->array:[C

    #@2f
    aget-char v5, v5, v1

    #@31
    if-gt v0, v5, :cond_4

    #@33
    iget-object v5, p0, Landroid/icu/impl/USerializedSet;->array:[C

    #@35
    aget-char v5, v5, v1

    #@37
    if-ne v0, v5, :cond_5

    #@39
    iget-object v5, p0, Landroid/icu/impl/USerializedSet;->array:[C

    #@3b
    add-int/lit8 v6, v1, 0x1

    #@3d
    aget-char v5, v5, v6

    #@3f
    if-lt v2, v5, :cond_5

    #@41
    .line 165
    :cond_4
    add-int/lit8 v1, v1, 0x2

    #@43
    goto :goto_2

    #@44
    .line 168
    :cond_5
    iget v5, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    #@46
    add-int/2addr v5, v1

    #@47
    and-int/lit8 v5, v5, 0x2

    #@49
    if-eqz v5, :cond_6

    #@4b
    :goto_3
    return v3

    #@4c
    :cond_6
    move v3, v4

    #@4d
    goto :goto_3
.end method

.method public final countRanges()I
    .locals 3

    #@0
    .prologue
    .line 180
    iget v0, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    #@2
    iget v1, p0, Landroid/icu/impl/USerializedSet;->length:I

    #@4
    iget v2, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    #@6
    sub-int/2addr v1, v2

    #@7
    div-int/lit8 v1, v1, 0x2

    #@9
    add-int/2addr v0, v1

    #@a
    add-int/lit8 v0, v0, 0x1

    #@c
    div-int/lit8 v0, v0, 0x2

    #@e
    return v0
.end method

.method public final getRange(I[I)Z
    .locals 9
    .param p1, "rangeIndex"    # I
    .param p2, "range"    # [I

    #@0
    .prologue
    const v8, 0x10ffff

    #@3
    const/4 v7, 0x0

    #@4
    const/4 v6, 0x1

    #@5
    .line 102
    if-gez p1, :cond_0

    #@7
    .line 103
    return v7

    #@8
    .line 105
    :cond_0
    iget-object v3, p0, Landroid/icu/impl/USerializedSet;->array:[C

    #@a
    if-nez v3, :cond_1

    #@c
    .line 106
    const/16 v3, 0x8

    #@e
    new-array v3, v3, [C

    #@10
    iput-object v3, p0, Landroid/icu/impl/USerializedSet;->array:[C

    #@12
    .line 108
    :cond_1
    if-eqz p2, :cond_2

    #@14
    array-length v3, p2

    #@15
    const/4 v4, 0x2

    #@16
    if-ge v3, v4, :cond_3

    #@18
    .line 109
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@1a
    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@1d
    throw v3

    #@1e
    .line 111
    :cond_3
    mul-int/lit8 p1, p1, 0x2

    #@20
    .line 112
    iget v3, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    #@22
    if-ge p1, v3, :cond_6

    #@24
    .line 113
    iget-object v3, p0, Landroid/icu/impl/USerializedSet;->array:[C

    #@26
    add-int/lit8 v1, p1, 0x1

    #@28
    .end local p1    # "rangeIndex":I
    .local v1, "rangeIndex":I
    aget-char v3, v3, p1

    #@2a
    aput v3, p2, v7

    #@2c
    .line 114
    iget v3, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    #@2e
    if-ge v1, v3, :cond_4

    #@30
    .line 115
    iget-object v3, p0, Landroid/icu/impl/USerializedSet;->array:[C

    #@32
    aget-char v3, v3, v1

    #@34
    add-int/lit8 v3, v3, -0x1

    #@36
    aput v3, p2, v6

    #@38
    .line 121
    :goto_0
    return v6

    #@39
    .line 116
    :cond_4
    iget v3, p0, Landroid/icu/impl/USerializedSet;->length:I

    #@3b
    if-ge v1, v3, :cond_5

    #@3d
    .line 117
    iget-object v3, p0, Landroid/icu/impl/USerializedSet;->array:[C

    #@3f
    aget-char v3, v3, v1

    #@41
    shl-int/lit8 v3, v3, 0x10

    #@43
    iget-object v4, p0, Landroid/icu/impl/USerializedSet;->array:[C

    #@45
    add-int/lit8 v5, v1, 0x1

    #@47
    aget-char v4, v4, v5

    #@49
    or-int/2addr v3, v4

    #@4a
    add-int/lit8 v3, v3, -0x1

    #@4c
    aput v3, p2, v6

    #@4e
    goto :goto_0

    #@4f
    .line 119
    :cond_5
    aput v8, p2, v6

    #@51
    goto :goto_0

    #@52
    .line 123
    .end local v1    # "rangeIndex":I
    .restart local p1    # "rangeIndex":I
    :cond_6
    iget v3, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    #@54
    sub-int/2addr p1, v3

    #@55
    .line 124
    mul-int/lit8 p1, p1, 0x2

    #@57
    .line 125
    iget v3, p0, Landroid/icu/impl/USerializedSet;->length:I

    #@59
    iget v4, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    #@5b
    sub-int v2, v3, v4

    #@5d
    .line 126
    .local v2, "suppLength":I
    if-ge p1, v2, :cond_8

    #@5f
    .line 127
    iget v3, p0, Landroid/icu/impl/USerializedSet;->arrayOffset:I

    #@61
    iget v4, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    #@63
    add-int v0, v3, v4

    #@65
    .line 128
    .local v0, "offset":I
    iget-object v3, p0, Landroid/icu/impl/USerializedSet;->array:[C

    #@67
    add-int v4, v0, p1

    #@69
    aget-char v3, v3, v4

    #@6b
    shl-int/lit8 v3, v3, 0x10

    #@6d
    iget-object v4, p0, Landroid/icu/impl/USerializedSet;->array:[C

    #@6f
    add-int v5, v0, p1

    #@71
    add-int/lit8 v5, v5, 0x1

    #@73
    aget-char v4, v4, v5

    #@75
    or-int/2addr v3, v4

    #@76
    aput v3, p2, v7

    #@78
    .line 129
    add-int/lit8 p1, p1, 0x2

    #@7a
    .line 130
    if-ge p1, v2, :cond_7

    #@7c
    .line 131
    iget-object v3, p0, Landroid/icu/impl/USerializedSet;->array:[C

    #@7e
    add-int v4, v0, p1

    #@80
    aget-char v3, v3, v4

    #@82
    shl-int/lit8 v3, v3, 0x10

    #@84
    iget-object v4, p0, Landroid/icu/impl/USerializedSet;->array:[C

    #@86
    add-int v5, v0, p1

    #@88
    add-int/lit8 v5, v5, 0x1

    #@8a
    aget-char v4, v4, v5

    #@8c
    or-int/2addr v3, v4

    #@8d
    add-int/lit8 v3, v3, -0x1

    #@8f
    aput v3, p2, v6

    #@91
    .line 135
    :goto_1
    return v6

    #@92
    .line 133
    :cond_7
    aput v8, p2, v6

    #@94
    goto :goto_1

    #@95
    .line 137
    .end local v0    # "offset":I
    :cond_8
    return v7
.end method

.method public final getSet([CI)Z
    .locals 5
    .param p1, "src"    # [C
    .param p2, "srcStart"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 30
    const/4 v1, 0x0

    #@2
    iput-object v1, p0, Landroid/icu/impl/USerializedSet;->array:[C

    #@4
    .line 31
    iput v4, p0, Landroid/icu/impl/USerializedSet;->length:I

    #@6
    iput v4, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    #@8
    iput v4, p0, Landroid/icu/impl/USerializedSet;->arrayOffset:I

    #@a
    .line 33
    add-int/lit8 v0, p2, 0x1

    #@c
    .end local p2    # "srcStart":I
    .local v0, "srcStart":I
    aget-char v1, p1, p2

    #@e
    iput v1, p0, Landroid/icu/impl/USerializedSet;->length:I

    #@10
    .line 36
    iget v1, p0, Landroid/icu/impl/USerializedSet;->length:I

    #@12
    const v2, 0x8000

    #@15
    and-int/2addr v1, v2

    #@16
    if-lez v1, :cond_1

    #@18
    .line 38
    iget v1, p0, Landroid/icu/impl/USerializedSet;->length:I

    #@1a
    and-int/lit16 v1, v1, 0x7fff

    #@1c
    iput v1, p0, Landroid/icu/impl/USerializedSet;->length:I

    #@1e
    .line 39
    array-length v1, p1

    #@1f
    add-int/lit8 v2, v0, 0x1

    #@21
    iget v3, p0, Landroid/icu/impl/USerializedSet;->length:I

    #@23
    add-int/2addr v2, v3

    #@24
    if-ge v1, v2, :cond_0

    #@26
    .line 40
    iput v4, p0, Landroid/icu/impl/USerializedSet;->length:I

    #@28
    .line 41
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@2a
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@2d
    throw v1

    #@2e
    .line 43
    :cond_0
    add-int/lit8 p2, v0, 0x1

    #@30
    .end local v0    # "srcStart":I
    .restart local p2    # "srcStart":I
    aget-char v1, p1, v0

    #@32
    iput v1, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    #@34
    .line 52
    :goto_0
    iget v1, p0, Landroid/icu/impl/USerializedSet;->length:I

    #@36
    new-array v1, v1, [C

    #@38
    iput-object v1, p0, Landroid/icu/impl/USerializedSet;->array:[C

    #@3a
    .line 53
    iget-object v1, p0, Landroid/icu/impl/USerializedSet;->array:[C

    #@3c
    iget v2, p0, Landroid/icu/impl/USerializedSet;->length:I

    #@3e
    invoke-static {p1, p2, v1, v4, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@41
    .line 55
    const/4 v1, 0x1

    #@42
    return v1

    #@43
    .line 46
    .end local p2    # "srcStart":I
    .restart local v0    # "srcStart":I
    :cond_1
    array-length v1, p1

    #@44
    iget v2, p0, Landroid/icu/impl/USerializedSet;->length:I

    #@46
    add-int/2addr v2, v0

    #@47
    if-ge v1, v2, :cond_2

    #@49
    .line 47
    iput v4, p0, Landroid/icu/impl/USerializedSet;->length:I

    #@4b
    .line 48
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@4d
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@50
    throw v1

    #@51
    .line 50
    :cond_2
    iget v1, p0, Landroid/icu/impl/USerializedSet;->length:I

    #@53
    iput v1, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    #@55
    move p2, v0

    #@56
    .end local v0    # "srcStart":I
    .restart local p2    # "srcStart":I
    goto :goto_0
.end method

.method public final setToOne(I)V
    .locals 7
    .param p1, "c"    # I

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const v5, 0xffff

    #@4
    const/4 v4, 0x2

    #@5
    const/4 v3, 0x1

    #@6
    const/4 v2, 0x0

    #@7
    .line 63
    const v0, 0x10ffff

    #@a
    if-ge v0, p1, :cond_0

    #@c
    .line 64
    return-void

    #@d
    .line 67
    :cond_0
    if-ge p1, v5, :cond_1

    #@f
    .line 68
    iput v4, p0, Landroid/icu/impl/USerializedSet;->length:I

    #@11
    iput v4, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    #@13
    .line 69
    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    #@15
    int-to-char v1, p1

    #@16
    aput-char v1, v0, v2

    #@18
    .line 70
    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    #@1a
    add-int/lit8 v1, p1, 0x1

    #@1c
    int-to-char v1, v1

    #@1d
    aput-char v1, v0, v3

    #@1f
    .line 62
    :goto_0
    return-void

    #@20
    .line 71
    :cond_1
    if-ne p1, v5, :cond_2

    #@22
    .line 72
    iput v3, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    #@24
    .line 73
    iput v6, p0, Landroid/icu/impl/USerializedSet;->length:I

    #@26
    .line 74
    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    #@28
    aput-char v5, v0, v2

    #@2a
    .line 75
    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    #@2c
    aput-char v3, v0, v3

    #@2e
    .line 76
    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    #@30
    aput-char v2, v0, v4

    #@32
    goto :goto_0

    #@33
    .line 77
    :cond_2
    const v0, 0x10ffff

    #@36
    if-ge p1, v0, :cond_3

    #@38
    .line 78
    iput v2, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    #@3a
    .line 79
    const/4 v0, 0x4

    #@3b
    iput v0, p0, Landroid/icu/impl/USerializedSet;->length:I

    #@3d
    .line 80
    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    #@3f
    shr-int/lit8 v1, p1, 0x10

    #@41
    int-to-char v1, v1

    #@42
    aput-char v1, v0, v2

    #@44
    .line 81
    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    #@46
    int-to-char v1, p1

    #@47
    aput-char v1, v0, v3

    #@49
    .line 82
    add-int/lit8 p1, p1, 0x1

    #@4b
    .line 83
    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    #@4d
    shr-int/lit8 v1, p1, 0x10

    #@4f
    int-to-char v1, v1

    #@50
    aput-char v1, v0, v4

    #@52
    .line 84
    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    #@54
    int-to-char v1, p1

    #@55
    aput-char v1, v0, v6

    #@57
    goto :goto_0

    #@58
    .line 86
    :cond_3
    iput v2, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    #@5a
    .line 87
    iput v4, p0, Landroid/icu/impl/USerializedSet;->length:I

    #@5c
    .line 88
    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    #@5e
    const/16 v1, 0x10

    #@60
    aput-char v1, v0, v2

    #@62
    .line 89
    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    #@64
    aput-char v5, v0, v3

    #@66
    goto :goto_0
.end method
