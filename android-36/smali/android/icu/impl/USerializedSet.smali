.class public final Landroid/icu/impl/USerializedSet;
.super Ljava/lang/Object;
.source "USerializedSet.java"


# instance fields
.field private blacklist array:[C

.field private blacklist arrayOffset:I

.field private blacklist bmpLength:I

.field private blacklist length:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/16 v0, 0x8

    new-array v0, v0, [C

    iput-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    return-void
.end method


# virtual methods
.method public final blacklist contains(I)Z
    .registers 9
    .param p1, "c"    # I

    .line 153
    const v0, 0x10ffff

    const/4 v1, 0x0

    if-le p1, v0, :cond_7

    .line 154
    return v1

    .line 157
    :cond_7
    const v0, 0xffff

    const/4 v2, 0x1

    if-gt p1, v0, :cond_22

    .line 160
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget v3, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    if-ge v0, v3, :cond_1c

    int-to-char v3, p1

    iget-object v4, p0, Landroid/icu/impl/USerializedSet;->array:[C

    aget-char v4, v4, v0

    if-lt v3, v4, :cond_1c

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 161
    :cond_1c
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_21

    move v1, v2

    :cond_21
    return v1

    .line 165
    .end local v0    # "i":I
    :cond_22
    shr-int/lit8 v0, p1, 0x10

    int-to-char v0, v0

    .local v0, "high":C
    int-to-char v3, p1

    .line 166
    .local v3, "low":C
    iget v4, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    .line 167
    .local v4, "i":I
    :goto_28
    iget v5, p0, Landroid/icu/impl/USerializedSet;->length:I

    if-ge v4, v5, :cond_43

    iget-object v5, p0, Landroid/icu/impl/USerializedSet;->array:[C

    aget-char v5, v5, v4

    if-gt v0, v5, :cond_40

    iget-object v5, p0, Landroid/icu/impl/USerializedSet;->array:[C

    aget-char v5, v5, v4

    if-ne v0, v5, :cond_43

    iget-object v5, p0, Landroid/icu/impl/USerializedSet;->array:[C

    add-int/lit8 v6, v4, 0x1

    aget-char v5, v5, v6

    if-lt v3, v5, :cond_43

    .line 168
    :cond_40
    add-int/lit8 v4, v4, 0x2

    goto :goto_28

    .line 171
    :cond_43
    iget v5, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    add-int/2addr v5, v4

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4b

    move v1, v2

    :cond_4b
    return v1
.end method

.method public final blacklist countRanges()I
    .registers 4

    .line 183
    iget v0, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    iget v1, p0, Landroid/icu/impl/USerializedSet;->length:I

    iget v2, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final blacklist getRange(I[I)Z
    .registers 12
    .param p1, "rangeIndex"    # I
    .param p2, "range"    # [I

    .line 105
    const/4 v0, 0x0

    if-gez p1, :cond_4

    .line 106
    return v0

    .line 108
    :cond_4
    iget-object v1, p0, Landroid/icu/impl/USerializedSet;->array:[C

    if-nez v1, :cond_e

    .line 109
    const/16 v1, 0x8

    new-array v1, v1, [C

    iput-object v1, p0, Landroid/icu/impl/USerializedSet;->array:[C

    .line 111
    :cond_e
    if-eqz p2, :cond_86

    array-length v1, p2

    const/4 v2, 0x2

    if-lt v1, v2, :cond_86

    .line 114
    mul-int/2addr p1, v2

    .line 115
    iget v1, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    const v3, 0x10ffff

    const/4 v4, 0x1

    if-ge p1, v1, :cond_49

    .line 116
    iget-object v1, p0, Landroid/icu/impl/USerializedSet;->array:[C

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "rangeIndex":I
    .local v2, "rangeIndex":I
    aget-char p1, v1, p1

    aput p1, p2, v0

    .line 117
    iget p1, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    if-ge v2, p1, :cond_31

    .line 118
    iget-object p1, p0, Landroid/icu/impl/USerializedSet;->array:[C

    aget-char p1, p1, v2

    sub-int/2addr p1, v4

    aput p1, p2, v4

    goto :goto_48

    .line 119
    :cond_31
    iget p1, p0, Landroid/icu/impl/USerializedSet;->length:I

    if-ge v2, p1, :cond_46

    .line 120
    iget-object p1, p0, Landroid/icu/impl/USerializedSet;->array:[C

    aget-char p1, p1, v2

    shl-int/lit8 p1, p1, 0x10

    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    add-int/lit8 v1, v2, 0x1

    aget-char v0, v0, v1

    or-int/2addr p1, v0

    sub-int/2addr p1, v4

    aput p1, p2, v4

    goto :goto_48

    .line 122
    :cond_46
    aput v3, p2, v4

    .line 124
    :goto_48
    return v4

    .line 126
    .end local v2    # "rangeIndex":I
    .restart local p1    # "rangeIndex":I
    :cond_49
    iget v1, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    sub-int/2addr p1, v1

    .line 127
    mul-int/2addr p1, v2

    .line 128
    iget v1, p0, Landroid/icu/impl/USerializedSet;->length:I

    iget v5, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    sub-int/2addr v1, v5

    .line 129
    .local v1, "suppLength":I
    if-ge p1, v1, :cond_85

    .line 130
    iget v5, p0, Landroid/icu/impl/USerializedSet;->arrayOffset:I

    iget v6, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    add-int/2addr v5, v6

    .line 131
    .local v5, "offset":I
    iget-object v6, p0, Landroid/icu/impl/USerializedSet;->array:[C

    add-int v7, v5, p1

    aget-char v6, v6, v7

    shl-int/lit8 v6, v6, 0x10

    iget-object v7, p0, Landroid/icu/impl/USerializedSet;->array:[C

    add-int v8, v5, p1

    add-int/2addr v8, v4

    aget-char v7, v7, v8

    or-int/2addr v6, v7

    aput v6, p2, v0

    .line 132
    add-int/2addr p1, v2

    .line 133
    if-ge p1, v1, :cond_82

    .line 134
    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    add-int v2, v5, p1

    aget-char v0, v0, v2

    shl-int/lit8 v0, v0, 0x10

    iget-object v2, p0, Landroid/icu/impl/USerializedSet;->array:[C

    add-int v3, v5, p1

    add-int/2addr v3, v4

    aget-char v2, v2, v3

    or-int/2addr v0, v2

    sub-int/2addr v0, v4

    aput v0, p2, v4

    goto :goto_84

    .line 136
    :cond_82
    aput v3, p2, v4

    .line 138
    :goto_84
    return v4

    .line 140
    .end local v5    # "offset":I
    :cond_85
    return v0

    .line 112
    .end local v1    # "suppLength":I
    :cond_86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final blacklist getSet([CI)Z
    .registers 7
    .param p1, "src"    # [C
    .param p2, "srcStart"    # I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/USerializedSet;->length:I

    iput v0, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    iput v0, p0, Landroid/icu/impl/USerializedSet;->arrayOffset:I

    .line 37
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "srcStart":I
    .local v1, "srcStart":I
    aget-char p2, p1, p2

    iput p2, p0, Landroid/icu/impl/USerializedSet;->length:I

    .line 39
    iget p2, p0, Landroid/icu/impl/USerializedSet;->length:I

    const v2, 0x8000

    and-int/2addr p2, v2

    if-eqz p2, :cond_36

    .line 41
    iget p2, p0, Landroid/icu/impl/USerializedSet;->length:I

    and-int/lit16 p2, p2, 0x7fff

    iput p2, p0, Landroid/icu/impl/USerializedSet;->length:I

    .line 42
    array-length p2, p1

    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Landroid/icu/impl/USerializedSet;->length:I

    add-int/2addr v2, v3

    if-lt p2, v2, :cond_2e

    .line 46
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "srcStart":I
    .restart local p2    # "srcStart":I
    aget-char v1, p1, v1

    iput v1, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    move v1, p2

    goto :goto_40

    .line 43
    .end local p2    # "srcStart":I
    .restart local v1    # "srcStart":I
    :cond_2e
    iput v0, p0, Landroid/icu/impl/USerializedSet;->length:I

    .line 44
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p2

    .line 49
    :cond_36
    array-length p2, p1

    iget v2, p0, Landroid/icu/impl/USerializedSet;->length:I

    add-int/2addr v2, v1

    if-lt p2, v2, :cond_4f

    .line 53
    iget p2, p0, Landroid/icu/impl/USerializedSet;->length:I

    iput p2, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    .line 55
    :goto_40
    iget p2, p0, Landroid/icu/impl/USerializedSet;->length:I

    new-array p2, p2, [C

    iput-object p2, p0, Landroid/icu/impl/USerializedSet;->array:[C

    .line 56
    iget-object p2, p0, Landroid/icu/impl/USerializedSet;->array:[C

    iget v2, p0, Landroid/icu/impl/USerializedSet;->length:I

    invoke-static {p1, v1, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    const/4 p2, 0x1

    return p2

    .line 50
    :cond_4f
    iput v0, p0, Landroid/icu/impl/USerializedSet;->length:I

    .line 51
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p2
.end method

.method public final blacklist setToOne(I)V
    .registers 8
    .param p1, "c"    # I

    .line 66
    const v0, 0x10ffff

    if-ge v0, p1, :cond_6

    .line 67
    return-void

    .line 70
    :cond_6
    const/4 v1, 0x2

    const v2, 0xffff

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge p1, v2, :cond_1f

    .line 71
    iput v1, p0, Landroid/icu/impl/USerializedSet;->length:I

    iput v1, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    .line 72
    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    int-to-char v1, p1

    aput-char v1, v0, v3

    .line 73
    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    add-int/lit8 v1, p1, 0x1

    int-to-char v1, v1

    aput-char v1, v0, v4

    goto :goto_63

    .line 74
    :cond_1f
    const/4 v5, 0x3

    if-ne p1, v2, :cond_33

    .line 75
    iput v4, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    .line 76
    iput v5, p0, Landroid/icu/impl/USerializedSet;->length:I

    .line 77
    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    aput-char v2, v0, v3

    .line 78
    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    aput-char v4, v0, v4

    .line 79
    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    aput-char v3, v0, v1

    goto :goto_63

    .line 80
    :cond_33
    if-ge p1, v0, :cond_55

    .line 81
    iput v3, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    .line 82
    const/4 v0, 0x4

    iput v0, p0, Landroid/icu/impl/USerializedSet;->length:I

    .line 83
    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    shr-int/lit8 v2, p1, 0x10

    int-to-char v2, v2

    aput-char v2, v0, v3

    .line 84
    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    int-to-char v2, p1

    aput-char v2, v0, v4

    .line 85
    add-int/lit8 p1, p1, 0x1

    .line 86
    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    shr-int/lit8 v2, p1, 0x10

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 87
    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    int-to-char v1, p1

    aput-char v1, v0, v5

    goto :goto_63

    .line 89
    :cond_55
    iput v3, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    .line 90
    iput v1, p0, Landroid/icu/impl/USerializedSet;->length:I

    .line 91
    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    const/16 v1, 0x10

    aput-char v1, v0, v3

    .line 92
    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    aput-char v2, v0, v4

    .line 94
    :goto_63
    return-void
.end method
