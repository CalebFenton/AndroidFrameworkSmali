.class public abstract Lcom/android/org/bouncycastle/math/raw/Nat;
.super Ljava/lang/Object;
.source "Nat.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist add(I[I[I[I)I
    .registers 13

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_1d

    .line 20
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 21
    aput v3, p3, v2

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1d
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist add33At(II[II)I
    .registers 11

    .line 30
    aget v0, p2, p3

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    long-to-int p1, v0

    .line 31
    aput p1, p2, p3

    const/16 p1, 0x20

    ushr-long/2addr v0, p1

    add-int/lit8 v4, p3, 0x1

    .line 33
    aget v5, p2, v4

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    long-to-int v2, v0

    .line 34
    aput v2, p2, v4

    ushr-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_28

    const/4 p0, 0x0

    return p0

    :cond_28
    add-int/lit8 p3, p3, 0x2

    .line 36
    invoke-static {p0, p2, p3}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result p0

    return p0
.end method

.method public static blacklist add33At(II[III)I
    .registers 12

    add-int v0, p3, p4

    .line 42
    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    long-to-int p1, v1

    .line 43
    aput p1, p2, v0

    const/16 p1, 0x20

    ushr-long/2addr v1, p1

    add-int/lit8 v0, v0, 0x1

    .line 45
    aget v5, p2, v0

    int-to-long v5, v5

    and-long/2addr v3, v5

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v3, v1

    .line 46
    aput v3, p2, v0

    ushr-long v0, v1, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_2b

    const/4 p0, 0x0

    return p0

    :cond_2b
    add-int/lit8 p4, p4, 0x2

    .line 48
    invoke-static {p0, p2, p3, p4}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    return p0
.end method

.method public static blacklist add33To(II[I)I
    .registers 11

    const/4 v0, 0x0

    .line 53
    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    long-to-int p1, v1

    .line 54
    aput p1, p2, v0

    const/16 p1, 0x20

    ushr-long/2addr v1, p1

    const/4 v5, 0x1

    .line 56
    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v3, v6

    const-wide/16 v6, 0x1

    add-long/2addr v3, v6

    add-long/2addr v1, v3

    long-to-int v3, v1

    .line 57
    aput v3, p2, v5

    ushr-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_27

    return v0

    :cond_27
    const/4 p1, 0x2

    .line 59
    invoke-static {p0, p2, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result p0

    return p0
.end method

.method public static blacklist add33To(II[II)I
    .registers 11

    .line 64
    aget v0, p2, p3

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    long-to-int p1, v0

    .line 65
    aput p1, p2, p3

    const/16 p1, 0x20

    ushr-long/2addr v0, p1

    add-int/lit8 v4, p3, 0x1

    .line 67
    aget v5, p2, v4

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    long-to-int v2, v0

    .line 68
    aput v2, p2, v4

    ushr-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_28

    const/4 p0, 0x0

    return p0

    :cond_28
    const/4 p1, 0x2

    .line 70
    invoke-static {p0, p2, p3, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    return p0
.end method

.method public static blacklist addBothTo(I[II[II[II)I
    .registers 17

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_28

    add-int v3, p2, v2

    .line 90
    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    add-int v7, p6, v2

    aget v8, p5, v7

    int-to-long v8, v8

    and-long/2addr v5, v8

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 91
    aput v3, p5, v7

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_28
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist addBothTo(I[I[I[I)I
    .registers 13

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_22

    .line 78
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    aget v7, p3, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 79
    aput v3, p3, v2

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_22
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist addDWordAt(IJ[II)I
    .registers 13

    .line 100
    aget v0, p3, p4

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 101
    aput v4, p3, p4

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p4, 0x1

    .line 103
    aget v6, p3, v5

    int-to-long v6, v6

    and-long/2addr v2, v6

    ushr-long/2addr p1, v4

    add-long/2addr v2, p1

    add-long/2addr v0, v2

    long-to-int p1, v0

    .line 104
    aput p1, p3, v5

    ushr-long p1, v0, v4

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_28

    const/4 p0, 0x0

    return p0

    :cond_28
    add-int/lit8 p4, p4, 0x2

    .line 106
    invoke-static {p0, p3, p4}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result p0

    return p0
.end method

.method public static blacklist addDWordAt(IJ[III)I
    .registers 14

    add-int v0, p4, p5

    .line 112
    aget v1, p3, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    and-long v5, p1, v3

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 113
    aput v5, p3, v0

    const/16 v5, 0x20

    ushr-long/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    .line 115
    aget v6, p3, v0

    int-to-long v6, v6

    and-long/2addr v3, v6

    ushr-long/2addr p1, v5

    add-long/2addr v3, p1

    add-long/2addr v1, v3

    long-to-int p1, v1

    .line 116
    aput p1, p3, v0

    ushr-long p1, v1, v5

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_2a

    const/4 p0, 0x0

    return p0

    :cond_2a
    add-int/lit8 p5, p5, 0x2

    .line 118
    invoke-static {p0, p3, p4, p5}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    return p0
.end method

.method public static blacklist addDWordTo(IJ[I)I
    .registers 13

    const/4 v0, 0x0

    .line 123
    aget v1, p3, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    and-long v5, p1, v3

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 124
    aput v5, p3, v0

    const/16 v5, 0x20

    ushr-long/2addr v1, v5

    const/4 v6, 0x1

    .line 126
    aget v7, p3, v6

    int-to-long v7, v7

    and-long/2addr v3, v7

    ushr-long/2addr p1, v5

    add-long/2addr v3, p1

    add-long/2addr v1, v3

    long-to-int p1, v1

    .line 127
    aput p1, p3, v6

    ushr-long p1, v1, v5

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-nez p1, :cond_27

    return v0

    :cond_27
    const/4 p1, 0x2

    .line 129
    invoke-static {p0, p3, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result p0

    return p0
.end method

.method public static blacklist addDWordTo(IJ[II)I
    .registers 13

    .line 134
    aget v0, p3, p4

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 135
    aput v4, p3, p4

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p4, 0x1

    .line 137
    aget v6, p3, v5

    int-to-long v6, v6

    and-long/2addr v2, v6

    ushr-long/2addr p1, v4

    add-long/2addr v2, p1

    add-long/2addr v0, v2

    long-to-int p1, v0

    .line 138
    aput p1, p3, v5

    ushr-long p1, v0, v4

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_28

    const/4 p0, 0x0

    return p0

    :cond_28
    const/4 p1, 0x2

    .line 140
    invoke-static {p0, p3, p4, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    return p0
.end method

.method public static blacklist addTo(I[II[II)I
    .registers 15

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_21

    add-int v3, p2, v2

    .line 160
    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v8, p3, v7

    int-to-long v8, v8

    and-long/2addr v5, v8

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 161
    aput v3, p3, v7

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_21
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist addTo(I[II[III)I
    .registers 15

    int-to-long v0, p5

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 p5, 0x0

    :goto_8
    if-ge p5, p0, :cond_21

    add-int v4, p2, p5

    .line 172
    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int v6, p4, p5

    aget v7, p3, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 173
    aput v4, p3, v6

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int/lit8 p5, p5, 0x1

    goto :goto_8

    :cond_21
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist addTo(I[I[I)I
    .registers 12

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_1d

    .line 148
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 149
    aput v3, p2, v2

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1d
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist addToEachOther(I[II[II)I
    .registers 16

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_23

    add-int v3, p2, v2

    .line 184
    aget v4, p1, v3

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-int v8, p4, v2

    aget v9, p3, v8

    int-to-long v9, v9

    and-long/2addr v6, v9

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 185
    aput v4, p1, v3

    .line 186
    aput v4, p3, v8

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_23
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist addWordAt(II[II)I
    .registers 10

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 195
    aget p1, p2, p3

    int-to-long v4, p1

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int p1, v0

    .line 196
    aput p1, p2, p3

    const/16 p1, 0x20

    ushr-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1a

    const/4 p0, 0x0

    return p0

    :cond_1a
    add-int/lit8 p3, p3, 0x1

    .line 198
    invoke-static {p0, p2, p3}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result p0

    return p0
.end method

.method public static blacklist addWordAt(II[III)I
    .registers 11

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int p1, p3, p4

    .line 204
    aget v4, p2, p1

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v2, v0

    .line 205
    aput v2, p2, p1

    const/16 p1, 0x20

    ushr-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1c

    const/4 p0, 0x0

    return p0

    :cond_1c
    add-int/lit8 p4, p4, 0x1

    .line 207
    invoke-static {p0, p2, p3, p4}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    return p0
.end method

.method public static blacklist addWordTo(II[I)I
    .registers 9

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 p1, 0x0

    .line 212
    aget v4, p2, p1

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v2, v0

    .line 213
    aput v2, p2, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    return p1

    :cond_1a
    const/4 p1, 0x1

    .line 215
    invoke-static {p0, p2, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result p0

    return p0
.end method

.method public static blacklist addWordTo(II[II)I
    .registers 10

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 220
    aget p1, p2, p3

    int-to-long v4, p1

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int p1, v0

    .line 221
    aput p1, p2, p3

    const/16 p1, 0x20

    ushr-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1a

    const/4 p0, 0x0

    return p0

    :cond_1a
    const/4 p1, 0x1

    .line 223
    invoke-static {p0, p2, p3, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    return p0
.end method

.method public static blacklist cadd(II[I[I[I)I
    .registers 15

    and-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    const/4 p1, 0x0

    :goto_d
    if-ge p1, p0, :cond_22

    .line 232
    aget v6, p2, p1

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p3, p1

    int-to-long v8, v8

    and-long/2addr v8, v0

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    long-to-int v6, v4

    .line 233
    aput v6, p4, p1

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    :cond_22
    long-to-int p0, v4

    return p0
.end method

.method public static blacklist caddTo(II[I[I)I
    .registers 14

    and-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    const/4 p1, 0x0

    :goto_d
    if-ge p1, p0, :cond_22

    .line 245
    aget v6, p3, p1

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p2, p1

    int-to-long v8, v8

    and-long/2addr v8, v0

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    long-to-int v6, v4

    .line 246
    aput v6, p3, p1

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    :cond_22
    long-to-int p0, v4

    return p0
.end method

.method public static blacklist cmov(II[II[II)V
    .registers 10

    and-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, p0, :cond_16

    add-int v1, p5, v0

    .line 258
    aget v2, p4, v1

    add-int v3, p3, v0

    aget v3, p2, v3

    xor-int/2addr v3, v2

    and-int/2addr v3, p1

    xor-int/2addr v2, v3

    .line 260
    aput v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_16
    return-void
.end method

.method public static blacklist compare(I[II[II)I
    .registers 9

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_2
    if-ltz p0, :cond_1a

    add-int v1, p2, p0

    .line 292
    aget v1, p1, v1

    const/high16 v2, -0x80000000

    xor-int/2addr v1, v2

    add-int v3, p4, p0

    .line 293
    aget v3, p3, v3

    xor-int/2addr v2, v3

    if-ge v1, v2, :cond_14

    const/4 p0, -0x1

    return p0

    :cond_14
    if-le v1, v2, :cond_17

    return v0

    :cond_17
    add-int/lit8 p0, p0, -0x1

    goto :goto_2

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist compare(I[I[I)I
    .registers 7

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_2
    if-ltz p0, :cond_16

    .line 278
    aget v1, p1, p0

    const/high16 v2, -0x80000000

    xor-int/2addr v1, v2

    .line 279
    aget v3, p2, p0

    xor-int/2addr v2, v3

    if-ge v1, v2, :cond_10

    const/4 p0, -0x1

    return p0

    :cond_10
    if-le v1, v2, :cond_13

    return v0

    :cond_13
    add-int/lit8 p0, p0, -0x1

    goto :goto_2

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist copy(I[II[II)V
    .registers 5

    .line 316
    invoke-static {p1, p2, p3, p4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static blacklist copy(I[I[I)V
    .registers 4

    const/4 v0, 0x0

    .line 311
    invoke-static {p1, v0, p2, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static blacklist copy(I[I)[I
    .registers 4

    .line 304
    new-array v0, p0, [I

    const/4 v1, 0x0

    .line 305
    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist copy64(I[JI[JI)V
    .registers 5

    .line 333
    invoke-static {p1, p2, p3, p4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static blacklist copy64(I[J[J)V
    .registers 4

    const/4 v0, 0x0

    .line 328
    invoke-static {p1, v0, p2, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static blacklist copy64(I[J)[J
    .registers 4

    .line 321
    new-array v0, p0, [J

    const/4 v1, 0x0

    .line 322
    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static blacklist create(I)[I
    .registers 1

    .line 338
    new-array p0, p0, [I

    return-object p0
.end method

.method public static blacklist create64(I)[J
    .registers 1

    .line 343
    new-array p0, p0, [J

    return-object p0
.end method

.method public static blacklist csub(II[II[II[II)I
    .registers 18

    and-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    const/4 p1, 0x0

    :goto_d
    if-ge p1, p0, :cond_28

    add-int v6, p3, p1

    .line 365
    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int v8, p5, p1

    aget v8, p4, v8

    int-to-long v8, v8

    and-long/2addr v8, v0

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    add-int v6, p7, p1

    long-to-int v7, v4

    .line 366
    aput v7, p6, v6

    const/16 v6, 0x20

    shr-long/2addr v4, v6

    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    :cond_28
    long-to-int p0, v4

    return p0
.end method

.method public static blacklist csub(II[I[I[I)I
    .registers 15

    and-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    const/4 p1, 0x0

    :goto_d
    if-ge p1, p0, :cond_22

    .line 352
    aget v6, p2, p1

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p3, p1

    int-to-long v8, v8

    and-long/2addr v8, v0

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    long-to-int v6, v4

    .line 353
    aput v6, p4, p1

    const/16 v6, 0x20

    shr-long/2addr v4, v6

    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    :cond_22
    long-to-int p0, v4

    return p0
.end method

.method public static blacklist dec(I[I)I
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, -0x1

    if-ge v1, p0, :cond_11

    .line 376
    aget v3, p1, v1

    add-int/lit8 v3, v3, -0x1

    aput v3, p1, v1

    if-eq v3, v2, :cond_e

    return v0

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    return v2
.end method

.method public static blacklist dec(I[I[I)I
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :cond_2
    const/4 v2, -0x1

    if-ge v1, p0, :cond_19

    .line 389
    aget v3, p1, v1

    add-int/lit8 v3, v3, -0x1

    .line 390
    aput v3, p2, v1

    add-int/lit8 v1, v1, 0x1

    if-eq v3, v2, :cond_2

    :goto_f
    if-ge v1, p0, :cond_18

    .line 396
    aget v2, p1, v1

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_18
    return v0

    :cond_19
    return v2
.end method

.method public static blacklist decAt(I[II)I
    .registers 5

    :goto_0
    const/4 v0, -0x1

    if-ge p2, p0, :cond_10

    .line 410
    aget v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    aput v1, p1, p2

    if-eq v1, v0, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_10
    return v0
.end method

.method public static blacklist decAt(I[III)I
    .registers 7

    :goto_0
    const/4 v0, -0x1

    if-ge p3, p0, :cond_12

    add-int v1, p2, p3

    .line 423
    aget v2, p1, v1

    add-int/lit8 v2, v2, -0x1

    aput v2, p1, v1

    if-eq v2, v0, :cond_f

    const/4 p0, 0x0

    return p0

    :cond_f
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_12
    return v0
.end method

.method public static blacklist diff(I[II[II[II)Z
    .registers 9

    .line 433
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[II[II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 436
    invoke-static/range {p0 .. p6}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[II[II[II)I

    return v0

    :cond_a
    move-object v1, p3

    move-object p3, p1

    move-object p1, v1

    move v1, p4

    move p4, p2

    move p2, v1

    .line 440
    invoke-static/range {p0 .. p6}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[II[II[II)I

    return v0
.end method

.method public static blacklist eq(I[I[I)Z
    .registers 6

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_2
    if-ltz p0, :cond_f

    .line 449
    aget v1, p1, p0

    aget v2, p2, p0

    if-eq v1, v2, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    add-int/lit8 p0, p0, -0x1

    goto :goto_2

    :cond_f
    return v0
.end method

.method public static blacklist equalTo(I[II)I
    .registers 6

    const/4 v0, 0x0

    .line 459
    aget v0, p1, v0

    xor-int/2addr p2, v0

    const/4 v0, 0x1

    move v1, v0

    :goto_6
    if-ge v1, p0, :cond_e

    .line 462
    aget v2, p1, v1

    or-int/2addr p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_e
    ushr-int/lit8 p0, p2, 0x1

    and-int/lit8 p1, p2, 0x1

    or-int/2addr p0, p1

    sub-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static blacklist equalTo(I[III)I
    .registers 7

    .line 470
    aget v0, p1, p2

    xor-int/2addr p3, v0

    const/4 v0, 0x1

    move v1, v0

    :goto_5
    if-ge v1, p0, :cond_f

    add-int v2, p2, v1

    .line 473
    aget v2, p1, v2

    or-int/2addr p3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_f
    ushr-int/lit8 p0, p3, 0x1

    and-int/lit8 p1, p3, 0x1

    or-int/2addr p0, p1

    sub-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static blacklist equalTo(I[II[II)I
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v0, p0, :cond_11

    add-int v2, p2, v0

    .line 495
    aget v2, p1, v2

    add-int v3, p4, v0

    aget v3, p3, v3

    xor-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_11
    ushr-int/lit8 p0, v1, 0x1

    and-int/lit8 p1, v1, 0x1

    or-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static blacklist equalTo(I[I[I)I
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v0, p0, :cond_d

    .line 484
    aget v2, p1, v0

    aget v3, p2, v0

    xor-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_d
    ushr-int/lit8 p0, v1, 0x1

    and-int/lit8 p1, v1, 0x1

    or-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static blacklist equalToZero(I[I)I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v0, p0, :cond_a

    .line 506
    aget v2, p1, v0

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_a
    ushr-int/lit8 p0, v1, 0x1

    and-int/lit8 p1, v1, 0x1

    or-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static blacklist equalToZero(I[II)I
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v0, p0, :cond_c

    add-int v2, p2, v0

    .line 517
    aget v2, p1, v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_c
    ushr-int/lit8 p0, v1, 0x1

    and-int/lit8 p1, v1, 0x1

    or-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static blacklist fromBigInteger(ILjava/math/BigInteger;)[I
    .registers 5

    .line 525
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_27

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt v0, p0, :cond_27

    add-int/lit8 p0, p0, 0x1f

    shr-int/lit8 p0, p0, 0x5

    .line 531
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_15
    if-ge v1, p0, :cond_26

    .line 536
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    aput v2, v0, v1

    const/16 v2, 0x20

    .line 537
    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_26
    return-object v0

    .line 527
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static blacklist fromBigInteger64(ILjava/math/BigInteger;)[J
    .registers 6

    .line 544
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_27

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt v0, p0, :cond_27

    add-int/lit8 p0, p0, 0x3f

    shr-int/lit8 p0, p0, 0x6

    .line 550
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    const/4 v1, 0x0

    :goto_15
    if-ge v1, p0, :cond_26

    .line 555
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    const/16 v2, 0x40

    .line 556
    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_26
    return-object v0

    .line 546
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static blacklist getBit([II)I
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 565
    aget p0, p0, v0

    :goto_5
    and-int/lit8 p0, p0, 0x1

    return p0

    :cond_8
    shr-int/lit8 v1, p1, 0x5

    if-ltz v1, :cond_16

    .line 568
    array-length v2, p0

    if-lt v1, v2, :cond_10

    goto :goto_16

    :cond_10
    and-int/lit8 p1, p1, 0x1f

    .line 573
    aget p0, p0, v1

    ushr-int/2addr p0, p1

    goto :goto_5

    :cond_16
    :goto_16
    return v0
.end method

.method public static blacklist gte(I[II[II)Z
    .registers 9

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_2
    if-ltz p0, :cond_1a

    add-int v1, p2, p0

    .line 594
    aget v1, p1, v1

    const/high16 v2, -0x80000000

    xor-int/2addr v1, v2

    add-int v3, p4, p0

    .line 595
    aget v3, p3, v3

    xor-int/2addr v2, v3

    if-ge v1, v2, :cond_14

    const/4 p0, 0x0

    return p0

    :cond_14
    if-le v1, v2, :cond_17

    return v0

    :cond_17
    add-int/lit8 p0, p0, -0x1

    goto :goto_2

    :cond_1a
    return v0
.end method

.method public static blacklist gte(I[I[I)Z
    .registers 7

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_2
    if-ltz p0, :cond_16

    .line 580
    aget v1, p1, p0

    const/high16 v2, -0x80000000

    xor-int/2addr v1, v2

    .line 581
    aget v3, p2, p0

    xor-int/2addr v2, v3

    if-ge v1, v2, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    if-le v1, v2, :cond_13

    return v0

    :cond_13
    add-int/lit8 p0, p0, -0x1

    goto :goto_2

    :cond_16
    return v0
.end method

.method public static blacklist inc(I[I)I
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x1

    if-ge v1, p0, :cond_10

    .line 608
    aget v3, p1, v1

    add-int/2addr v3, v2

    aput v3, p1, v1

    if-eqz v3, :cond_d

    return v0

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    return v2
.end method

.method public static blacklist inc(I[I[I)I
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :cond_2
    const/4 v2, 0x1

    if-ge v1, p0, :cond_18

    .line 621
    aget v3, p1, v1

    add-int/2addr v3, v2

    .line 622
    aput v3, p2, v1

    add-int/lit8 v1, v1, 0x1

    if-eqz v3, :cond_2

    :goto_e
    if-ge v1, p0, :cond_17

    .line 628
    aget v2, p1, v1

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_17
    return v0

    :cond_18
    return v2
.end method

.method public static blacklist incAt(I[II)I
    .registers 5

    :goto_0
    const/4 v0, 0x1

    if-ge p2, p0, :cond_f

    .line 642
    aget v1, p1, p2

    add-int/2addr v1, v0

    aput v1, p1, p2

    if-eqz v1, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_f
    return v0
.end method

.method public static blacklist incAt(I[III)I
    .registers 7

    :goto_0
    const/4 v0, 0x1

    if-ge p3, p0, :cond_11

    add-int v1, p2, p3

    .line 655
    aget v2, p1, v1

    add-int/2addr v2, v0

    aput v2, p1, v1

    if-eqz v2, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_11
    return v0
.end method

.method public static blacklist isOne(I[I)Z
    .registers 6

    const/4 v0, 0x0

    .line 665
    aget v1, p1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    return v0

    :cond_7
    move v1, v2

    :goto_8
    if-ge v1, p0, :cond_12

    .line 671
    aget v3, p1, v1

    if-eqz v3, :cond_f

    return v0

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_12
    return v2
.end method

.method public static blacklist isZero(I[I)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p0, :cond_c

    .line 683
    aget v2, p1, v1

    if-eqz v2, :cond_9

    return v0

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist lessThan(I[II[II)I
    .registers 14

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_1e

    add-int v3, p2, v2

    .line 708
    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1e
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist lessThan(I[I[I)I
    .registers 12

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_1a

    .line 696
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1a
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist mul(I[II[II[II)V
    .registers 14

    add-int v0, p6, p0

    .line 727
    aget v2, p1, p2

    move v1, p0

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/raw/Nat;->mulWord(II[II[II)I

    move-result p0

    move p3, v6

    aput p0, v5, v0

    const/4 p0, 0x1

    :goto_11
    if-ge p0, v1, :cond_24

    add-int v6, p3, p0

    add-int p4, v6, v1

    add-int p5, p2, p0

    .line 731
    aget v2, p1, p5

    invoke-static/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result p5

    aput p5, v5, p4

    add-int/lit8 p0, p0, 0x1

    goto :goto_11

    :cond_24
    return-void
.end method

.method public static blacklist mul(I[I[I[I)V
    .registers 11

    const/4 v0, 0x0

    .line 717
    aget v0, p1, v0

    invoke-static {p0, v0, p2, p3}, Lcom/android/org/bouncycastle/math/raw/Nat;->mulWord(II[I[I)I

    move-result v0

    aput v0, p3, p0

    const/4 v0, 0x1

    move v6, v0

    :goto_b
    if-ge v6, p0, :cond_1f

    add-int v0, v6, p0

    .line 721
    aget v2, p1, v6

    const/4 v4, 0x0

    move v1, p0

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result p0

    aput p0, v5, v0

    add-int/lit8 v6, v6, 0x1

    move p0, v1

    goto :goto_b

    :cond_1f
    return-void
.end method

.method public static blacklist mul([III[III[II)V
    .registers 15

    add-int v0, p7, p5

    .line 737
    aget v2, p0, p1

    move-object v3, p3

    move v4, p4

    move v1, p5

    move-object v5, p6

    move v6, p7

    invoke-static/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/raw/Nat;->mulWord(II[II[II)I

    move-result p3

    move p4, v6

    aput p3, v5, v0

    const/4 p3, 0x1

    :goto_11
    if-ge p3, p2, :cond_24

    add-int v6, p4, p3

    add-int p5, v6, v1

    add-int p6, p1, p3

    .line 741
    aget v2, p0, p6

    invoke-static/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result p6

    aput p6, v5, p5

    add-int/lit8 p3, p3, 0x1

    goto :goto_11

    :cond_24
    return-void
.end method

.method public static blacklist mul31BothAdd(II[II[I[II)I
    .registers 20

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    move/from16 p1, p3

    int-to-long v4, p1

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    const/4 p1, 0x0

    .line 778
    :cond_e
    aget v8, p2, p1

    int-to-long v8, v8

    and-long/2addr v8, v2

    mul-long/2addr v8, v0

    aget v10, p4, p1

    int-to-long v10, v10

    and-long/2addr v10, v2

    mul-long/2addr v10, v4

    add-long/2addr v8, v10

    add-int v10, p6, p1

    aget v11, p5, v10

    int-to-long v11, v11

    and-long/2addr v11, v2

    add-long/2addr v8, v11

    add-long/2addr v6, v8

    long-to-int v8, v6

    .line 779
    aput v8, p5, v10

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    add-int/lit8 p1, p1, 0x1

    if-lt p1, p0, :cond_e

    long-to-int p0, v6

    return p0
.end method

.method public static blacklist mulAddTo(I[II[II[II)I
    .registers 16

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v8, p6

    :goto_4
    if-ge v2, p0, :cond_30

    add-int p6, p2, v2

    .line 763
    aget v4, p1, p6

    move v3, p0

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-static/range {v3 .. v8}, Lcom/android/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result p0

    int-to-long p3, p0

    const-wide p5, 0xffffffffL

    and-long/2addr p3, p5

    add-long/2addr v0, p3

    add-int p0, v8, v3

    .line 764
    aget p3, v7, p0

    int-to-long p3, p3

    and-long/2addr p3, p5

    add-long/2addr v0, p3

    long-to-int p3, v0

    .line 765
    aput p3, v7, p0

    const/16 p0, 0x20

    ushr-long/2addr v0, p0

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v2, v2, 0x1

    move p0, v3

    move-object p3, v5

    move p4, v6

    move-object p5, v7

    goto :goto_4

    :cond_30
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist mulAddTo(I[I[I[I)I
    .registers 14

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v7, v2

    :goto_4
    if-ge v7, p0, :cond_2b

    .line 750
    aget v3, p1, v7

    const/4 v5, 0x0

    move v2, p0

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result p0

    int-to-long p2, p0

    const-wide v8, 0xffffffffL

    and-long/2addr p2, v8

    add-long/2addr v0, p2

    add-int p0, v7, v2

    .line 751
    aget p2, v6, p0

    int-to-long p2, p2

    and-long/2addr p2, v8

    add-long/2addr v0, p2

    long-to-int p2, v0

    .line 752
    aput p2, v6, p0

    const/16 p0, 0x20

    ushr-long/2addr v0, p0

    add-int/lit8 v7, v7, 0x1

    move p0, v2

    move-object p2, v4

    move-object p3, v6

    goto :goto_4

    :cond_2b
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist mulWord(II[II[II)I
    .registers 14

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    const/4 p1, 0x0

    :cond_a
    add-int v6, p3, p1

    .line 806
    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    add-long/2addr v4, v6

    add-int v6, p5, p1

    long-to-int v7, v4

    .line 807
    aput v7, p4, v6

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    add-int/lit8 p1, p1, 0x1

    if-lt p1, p0, :cond_a

    long-to-int p0, v4

    return p0
.end method

.method public static blacklist mulWord(II[I[I)I
    .registers 12

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    const/4 p1, 0x0

    .line 792
    :cond_a
    aget v6, p2, p1

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    add-long/2addr v4, v6

    long-to-int v6, v4

    .line 793
    aput v6, p3, p1

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    add-int/lit8 p1, p1, 0x1

    if-lt p1, p0, :cond_a

    long-to-int p0, v4

    return p0
.end method

.method public static blacklist mulWordAddTo(II[II[II)I
    .registers 17

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    const/4 p1, 0x0

    :cond_a
    add-int v6, p3, p1

    .line 820
    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    add-int v8, p5, p1

    aget v9, p4, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v4, v6

    long-to-int v6, v4

    .line 821
    aput v6, p4, v8

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    add-int/lit8 p1, p1, 0x1

    if-lt p1, p0, :cond_a

    long-to-int p0, v4

    return p0
.end method

.method public static blacklist mulWordDwordAddAt(IIJ[II)I
    .registers 14

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p2, v2

    mul-long/2addr v4, v0

    .line 832
    aget p1, p4, p5

    int-to-long v6, p1

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    long-to-int p1, v4

    .line 833
    aput p1, p4, p5

    const/16 p1, 0x20

    ushr-long/2addr v4, p1

    ushr-long/2addr p2, p1

    mul-long/2addr v0, p2

    add-int/lit8 p2, p5, 0x1

    .line 835
    aget p3, p4, p2

    int-to-long v6, p3

    and-long/2addr v6, v2

    add-long/2addr v0, v6

    add-long/2addr v4, v0

    long-to-int p3, v4

    .line 836
    aput p3, p4, p2

    ushr-long p2, v4, p1

    add-int/lit8 v0, p5, 0x2

    .line 838
    aget v1, p4, v0

    int-to-long v4, v1

    and-long v1, v4, v2

    add-long/2addr p2, v1

    long-to-int v1, p2

    .line 839
    aput v1, p4, v0

    ushr-long p1, p2, p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_39

    const/4 p0, 0x0

    return p0

    :cond_39
    add-int/lit8 p5, p5, 0x3

    .line 841
    invoke-static {p0, p4, p5}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result p0

    return p0
.end method

.method public static blacklist shiftDownBit(I[II)I
    .registers 5

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_f

    .line 849
    aget v0, p1, p0

    ushr-int/lit8 v1, v0, 0x1

    shl-int/lit8 p2, p2, 0x1f

    or-int/2addr p2, v1

    .line 850
    aput p2, p1, p0

    move p2, v0

    goto :goto_0

    :cond_f
    shl-int/lit8 p0, p2, 0x1f

    return p0
.end method

.method public static blacklist shiftDownBit(I[III)I
    .registers 7

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_11

    add-int v0, p2, p0

    .line 861
    aget v1, p1, v0

    ushr-int/lit8 v2, v1, 0x1

    shl-int/lit8 p3, p3, 0x1f

    or-int/2addr p3, v2

    .line 862
    aput p3, p1, v0

    move p3, v1

    goto :goto_0

    :cond_11
    shl-int/lit8 p0, p3, 0x1f

    return p0
.end method

.method public static blacklist shiftDownBit(I[III[II)I
    .registers 9

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_13

    add-int v0, p2, p0

    .line 885
    aget v0, p1, v0

    add-int v1, p5, p0

    ushr-int/lit8 v2, v0, 0x1

    shl-int/lit8 p3, p3, 0x1f

    or-int/2addr p3, v2

    .line 886
    aput p3, p4, v1

    move p3, v0

    goto :goto_0

    :cond_13
    shl-int/lit8 p0, p3, 0x1f

    return p0
.end method

.method public static blacklist shiftDownBit(I[II[I)I
    .registers 6

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_f

    .line 873
    aget v0, p1, p0

    ushr-int/lit8 v1, v0, 0x1

    shl-int/lit8 p2, p2, 0x1f

    or-int/2addr p2, v1

    .line 874
    aput p2, p3, p0

    move p2, v0

    goto :goto_0

    :cond_f
    shl-int/lit8 p0, p2, 0x1f

    return p0
.end method

.method public static blacklist shiftDownBits(I[III)I
    .registers 7

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_f

    .line 898
    aget v0, p1, p0

    ushr-int v1, v0, p2

    neg-int v2, p2

    shl-int/2addr p3, v2

    or-int/2addr p3, v1

    .line 899
    aput p3, p1, p0

    move p3, v0

    goto :goto_0

    :cond_f
    neg-int p0, p2

    shl-int p0, p3, p0

    return p0
.end method

.method public static blacklist shiftDownBits(I[IIII)I
    .registers 9

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_11

    add-int v0, p2, p0

    .line 911
    aget v1, p1, v0

    ushr-int v2, v1, p3

    neg-int v3, p3

    shl-int/2addr p4, v3

    or-int/2addr p4, v2

    .line 912
    aput p4, p1, v0

    move p4, v1

    goto :goto_0

    :cond_11
    neg-int p0, p3

    shl-int p0, p4, p0

    return p0
.end method

.method public static blacklist shiftDownBits(I[IIII[II)I
    .registers 11

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_13

    add-int v0, p2, p0

    .line 937
    aget v0, p1, v0

    add-int v1, p6, p0

    ushr-int v2, v0, p3

    neg-int v3, p3

    shl-int/2addr p4, v3

    or-int/2addr p4, v2

    .line 938
    aput p4, p5, v1

    move p4, v0

    goto :goto_0

    :cond_13
    neg-int p0, p3

    shl-int p0, p4, p0

    return p0
.end method

.method public static blacklist shiftDownBits(I[III[I)I
    .registers 8

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_f

    .line 924
    aget v0, p1, p0

    ushr-int v1, v0, p2

    neg-int v2, p2

    shl-int/2addr p3, v2

    or-int/2addr p3, v1

    .line 925
    aput p3, p4, p0

    move p3, v0

    goto :goto_0

    :cond_f
    neg-int p0, p2

    shl-int p0, p3, p0

    return p0
.end method

.method public static blacklist shiftDownWord(I[II)I
    .registers 4

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_a

    .line 949
    aget v0, p1, p0

    .line 950
    aput p2, p1, p0

    move p2, v0

    goto :goto_0

    :cond_a
    return p2
.end method

.method public static blacklist shiftUpBit(I[II)I
    .registers 6

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_10

    .line 960
    aget v1, p1, v0

    shl-int/lit8 v2, v1, 0x1

    ushr-int/lit8 p2, p2, 0x1f

    or-int/2addr p2, v2

    .line 961
    aput p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto :goto_1

    :cond_10
    ushr-int/lit8 p0, p2, 0x1f

    return p0
.end method

.method public static blacklist shiftUpBit(I[III)I
    .registers 8

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_12

    add-int v1, p2, v0

    .line 971
    aget v2, p1, v1

    shl-int/lit8 v3, v2, 0x1

    ushr-int/lit8 p3, p3, 0x1f

    or-int/2addr p3, v3

    .line 972
    aput p3, p1, v1

    add-int/lit8 v0, v0, 0x1

    move p3, v2

    goto :goto_1

    :cond_12
    ushr-int/lit8 p0, p3, 0x1f

    return p0
.end method

.method public static blacklist shiftUpBit(I[III[II)I
    .registers 10

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_14

    add-int v1, p2, v0

    .line 993
    aget v1, p1, v1

    add-int v2, p5, v0

    shl-int/lit8 v3, v1, 0x1

    ushr-int/lit8 p3, p3, 0x1f

    or-int/2addr p3, v3

    .line 994
    aput p3, p4, v2

    add-int/lit8 v0, v0, 0x1

    move p3, v1

    goto :goto_1

    :cond_14
    ushr-int/lit8 p0, p3, 0x1f

    return p0
.end method

.method public static blacklist shiftUpBit(I[II[I)I
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_10

    .line 982
    aget v1, p1, v0

    shl-int/lit8 v2, v1, 0x1

    ushr-int/lit8 p2, p2, 0x1f

    or-int/2addr p2, v2

    .line 983
    aput p2, p3, v0

    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto :goto_1

    :cond_10
    ushr-int/lit8 p0, p2, 0x1f

    return p0
.end method

.method public static blacklist shiftUpBit64(I[JIJ[JI)J
    .registers 14

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x3f

    if-ge v0, p0, :cond_16

    add-int v2, p2, v0

    .line 1004
    aget-wide v2, p1, v2

    add-int v4, p6, v0

    const/4 v5, 0x1

    shl-long v5, v2, v5

    ushr-long/2addr p3, v1

    or-long/2addr p3, v5

    .line 1005
    aput-wide p3, p5, v4

    add-int/lit8 v0, v0, 0x1

    move-wide p3, v2

    goto :goto_1

    :cond_16
    ushr-long p0, p3, v1

    return-wide p0
.end method

.method public static blacklist shiftUpBits(I[III)I
    .registers 8

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_10

    .line 1016
    aget v1, p1, v0

    shl-int v2, v1, p2

    neg-int v3, p2

    ushr-int/2addr p3, v3

    or-int/2addr p3, v2

    .line 1017
    aput p3, p1, v0

    add-int/lit8 v0, v0, 0x1

    move p3, v1

    goto :goto_1

    :cond_10
    neg-int p0, p2

    ushr-int p0, p3, p0

    return p0
.end method

.method public static blacklist shiftUpBits(I[IIII)I
    .registers 10

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_12

    add-int v1, p2, v0

    .line 1028
    aget v2, p1, v1

    shl-int v3, v2, p3

    neg-int v4, p3

    ushr-int/2addr p4, v4

    or-int/2addr p4, v3

    .line 1029
    aput p4, p1, v1

    add-int/lit8 v0, v0, 0x1

    move p4, v2

    goto :goto_1

    :cond_12
    neg-int p0, p3

    ushr-int p0, p4, p0

    return p0
.end method

.method public static blacklist shiftUpBits(I[IIII[II)I
    .registers 12

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_14

    add-int v1, p2, v0

    .line 1064
    aget v1, p1, v1

    add-int v2, p6, v0

    shl-int v3, v1, p3

    neg-int v4, p3

    ushr-int/2addr p4, v4

    or-int/2addr p4, v3

    .line 1065
    aput p4, p5, v2

    add-int/lit8 v0, v0, 0x1

    move p4, v1

    goto :goto_1

    :cond_14
    neg-int p0, p3

    ushr-int p0, p4, p0

    return p0
.end method

.method public static blacklist shiftUpBits(I[III[I)I
    .registers 9

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_10

    .line 1052
    aget v1, p1, v0

    shl-int v2, v1, p2

    neg-int v3, p2

    ushr-int/2addr p3, v3

    or-int/2addr p3, v2

    .line 1053
    aput p3, p4, v0

    add-int/lit8 v0, v0, 0x1

    move p3, v1

    goto :goto_1

    :cond_10
    neg-int p0, p2

    ushr-int p0, p3, p0

    return p0
.end method

.method public static blacklist shiftUpBits64(I[JIIJ)J
    .registers 13

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_12

    add-int v1, p2, v0

    .line 1040
    aget-wide v2, p1, v1

    shl-long v4, v2, p3

    neg-int v6, p3

    ushr-long/2addr p4, v6

    or-long/2addr p4, v4

    .line 1041
    aput-wide p4, p1, v1

    add-int/lit8 v0, v0, 0x1

    move-wide p4, v2

    goto :goto_1

    :cond_12
    neg-int p0, p3

    ushr-long p0, p4, p0

    return-wide p0
.end method

.method public static blacklist shiftUpBits64(I[JIIJ[JI)J
    .registers 15

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_14

    add-int v1, p2, v0

    .line 1076
    aget-wide v1, p1, v1

    add-int v3, p7, v0

    shl-long v4, v1, p3

    neg-int v6, p3

    ushr-long/2addr p4, v6

    or-long/2addr p4, v4

    .line 1077
    aput-wide p4, p6, v3

    add-int/lit8 v0, v0, 0x1

    move-wide p4, v1

    goto :goto_1

    :cond_14
    neg-int p0, p3

    ushr-long p0, p4, p0

    return-wide p0
.end method

.method public static blacklist square(I[II[II)V
    .registers 16

    shl-int/lit8 v0, p0, 0x1

    const/4 v1, 0x0

    move v2, p0

    move v3, v0

    :cond_5
    add-int/lit8 v2, v2, -0x1

    add-int v4, p2, v2

    .line 1121
    aget v4, p1, v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    mul-long/2addr v4, v4

    add-int/lit8 v8, v3, -0x1

    add-int/2addr v8, p4

    shl-int/lit8 v1, v1, 0x1f

    const/16 v9, 0x21

    ushr-long v9, v4, v9

    long-to-int v9, v9

    or-int/2addr v1, v9

    .line 1123
    aput v1, p3, v8

    add-int/lit8 v3, v3, -0x2

    add-int v1, p4, v3

    const/4 v8, 0x1

    ushr-long v9, v4, v8

    long-to-int v9, v9

    .line 1124
    aput v9, p3, v1

    long-to-int v1, v4

    if-gtz v2, :cond_5

    add-int/lit8 v1, p4, 0x2

    const-wide/16 v2, 0x0

    :goto_31
    if-ge v8, p0, :cond_55

    .line 1134
    invoke-static {p1, p2, v8, p3, p4}, Lcom/android/org/bouncycastle/math/raw/Nat;->squareWordAddTo([III[II)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 1135
    aget v4, p3, v1

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x1

    long-to-int v5, v2

    .line 1136
    aput v5, p3, v1

    const/16 v5, 0x20

    ushr-long/2addr v2, v5

    .line 1137
    aget v9, p3, v4

    int-to-long v9, v9

    and-long/2addr v9, v6

    add-long/2addr v2, v9

    add-int/lit8 v1, v1, 0x2

    long-to-int v9, v2

    .line 1138
    aput v9, p3, v4

    ushr-long/2addr v2, v5

    add-int/lit8 v8, v8, 0x1

    goto :goto_31

    .line 1142
    :cond_55
    aget p0, p1, p2

    shl-int/lit8 p0, p0, 0x1f

    invoke-static {v0, p3, p4, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[III)I

    return-void
.end method

.method public static blacklist square(I[I[I)V
    .registers 16

    shl-int/lit8 v0, p0, 0x1

    const/4 v1, 0x0

    move v2, p0

    move v3, v0

    move v4, v1

    :goto_6
    add-int/lit8 v2, v2, -0x1

    .line 1090
    aget v5, p1, v2

    int-to-long v5, v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    mul-long/2addr v5, v5

    add-int/lit8 v9, v3, -0x1

    shl-int/lit8 v4, v4, 0x1f

    const/16 v10, 0x21

    ushr-long v10, v5, v10

    long-to-int v10, v10

    or-int/2addr v4, v10

    .line 1092
    aput v4, p2, v9

    add-int/lit8 v3, v3, -0x2

    const/4 v4, 0x1

    ushr-long v9, v5, v4

    long-to-int v9, v9

    .line 1093
    aput v9, p2, v3

    long-to-int v5, v5

    if-gtz v2, :cond_58

    const/4 v2, 0x2

    const-wide/16 v5, 0x0

    move v3, v2

    :goto_2d
    if-ge v4, p0, :cond_50

    .line 1103
    invoke-static {p1, v4, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->squareWordAddTo([II[I)I

    move-result v9

    int-to-long v9, v9

    and-long/2addr v9, v7

    add-long/2addr v5, v9

    .line 1104
    aget v9, p2, v3

    int-to-long v9, v9

    and-long/2addr v9, v7

    add-long/2addr v5, v9

    add-int/lit8 v9, v3, 0x1

    long-to-int v10, v5

    .line 1105
    aput v10, p2, v3

    const/16 v10, 0x20

    ushr-long/2addr v5, v10

    .line 1106
    aget v11, p2, v9

    int-to-long v11, v11

    and-long/2addr v11, v7

    add-long/2addr v5, v11

    add-int/2addr v3, v2

    long-to-int v11, v5

    .line 1107
    aput v11, p2, v9

    ushr-long/2addr v5, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 1111
    :cond_50
    aget p0, p1, v1

    shl-int/lit8 p0, p0, 0x1f

    invoke-static {v0, p2, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II)I

    return-void

    :cond_58
    move v4, v5

    goto :goto_6
.end method

.method public static blacklist squareWordAddTo([III[II)I
    .registers 19

    move/from16 v0, p2

    add-int v1, p1, v0

    .line 1161
    aget v1, p0, v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move v8, v7

    move-wide v6, v5

    move/from16 v5, p4

    :cond_14
    add-int v9, p1, v8

    .line 1165
    aget v9, p0, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    mul-long/2addr v9, v1

    add-int v11, v0, v5

    aget v12, p3, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    add-long/2addr v9, v12

    add-long/2addr v6, v9

    long-to-int v9, v6

    .line 1166
    aput v9, p3, v11

    const/16 v9, 0x20

    ushr-long/2addr v6, v9

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v8, v8, 0x1

    if-lt v8, v0, :cond_14

    long-to-int p0, v6

    return p0
.end method

.method public static blacklist squareWordAddTo([II[I)I
    .registers 15

    .line 1147
    aget v0, p0, p1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 1151
    :cond_c
    aget v7, p0, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    add-int v9, p1, v6

    aget v10, p2, v9

    int-to-long v10, v10

    and-long/2addr v10, v2

    add-long/2addr v7, v10

    add-long/2addr v4, v7

    long-to-int v7, v4

    .line 1152
    aput v7, p2, v9

    const/16 v7, 0x20

    ushr-long/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    if-lt v6, p1, :cond_c

    long-to-int p0, v4

    return p0
.end method

.method public static blacklist sub(I[II[II[II)I
    .registers 16

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_23

    add-int v3, p2, v2

    .line 1191
    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int v3, p6, v2

    long-to-int v4, v0

    .line 1192
    aput v4, p5, v3

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_23
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist sub(I[I[I[I)I
    .registers 13

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_1d

    .line 1179
    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 1180
    aput v3, p3, v2

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1d
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist sub33At(II[II)I
    .registers 11

    .line 1201
    aget v0, p2, p3

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    sub-long/2addr v0, v4

    long-to-int p1, v0

    .line 1202
    aput p1, p2, p3

    const/16 p1, 0x20

    shr-long/2addr v0, p1

    add-int/lit8 v4, p3, 0x1

    .line 1204
    aget v5, p2, v4

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    long-to-int v2, v0

    .line 1205
    aput v2, p2, v4

    shr-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_28

    const/4 p0, 0x0

    return p0

    :cond_28
    add-int/lit8 p3, p3, 0x2

    .line 1207
    invoke-static {p0, p2, p3}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result p0

    return p0
.end method

.method public static blacklist sub33At(II[III)I
    .registers 12

    add-int v0, p3, p4

    .line 1213
    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    long-to-int p1, v1

    .line 1214
    aput p1, p2, v0

    const/16 p1, 0x20

    shr-long/2addr v1, p1

    add-int/lit8 v0, v0, 0x1

    .line 1216
    aget v5, p2, v0

    int-to-long v5, v5

    and-long/2addr v3, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v3, v1

    .line 1217
    aput v3, p2, v0

    shr-long v0, v1, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_2b

    const/4 p0, 0x0

    return p0

    :cond_2b
    add-int/lit8 p4, p4, 0x2

    .line 1219
    invoke-static {p0, p2, p3, p4}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result p0

    return p0
.end method

.method public static blacklist sub33From(II[I)I
    .registers 11

    const/4 v0, 0x0

    .line 1224
    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    long-to-int p1, v1

    .line 1225
    aput p1, p2, v0

    const/16 p1, 0x20

    shr-long/2addr v1, p1

    const/4 v5, 0x1

    .line 1227
    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v3, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v3, v6

    add-long/2addr v1, v3

    long-to-int v3, v1

    .line 1228
    aput v3, p2, v5

    shr-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_27

    return v0

    :cond_27
    const/4 p1, 0x2

    .line 1230
    invoke-static {p0, p2, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result p0

    return p0
.end method

.method public static blacklist sub33From(II[II)I
    .registers 11

    .line 1235
    aget v0, p2, p3

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    sub-long/2addr v0, v4

    long-to-int p1, v0

    .line 1236
    aput p1, p2, p3

    const/16 p1, 0x20

    shr-long/2addr v0, p1

    add-int/lit8 v4, p3, 0x1

    .line 1238
    aget v5, p2, v4

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    long-to-int v2, v0

    .line 1239
    aput v2, p2, v4

    shr-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_28

    const/4 p0, 0x0

    return p0

    :cond_28
    const/4 p1, 0x2

    .line 1241
    invoke-static {p0, p2, p3, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result p0

    return p0
.end method

.method public static blacklist subBothFrom(I[II[II[II)I
    .registers 17

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_28

    add-int v3, p6, v2

    .line 1261
    aget v4, p5, v3

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-int v8, p2, v2

    aget v8, p1, v8

    int-to-long v8, v8

    and-long/2addr v8, v6

    sub-long/2addr v4, v8

    add-int v8, p4, v2

    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v6, v8

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 1262
    aput v4, p5, v3

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_28
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist subBothFrom(I[I[I[I)I
    .registers 13

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_22

    .line 1249
    aget v3, p3, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 1250
    aput v3, p3, v2

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_22
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist subDWordAt(IJ[II)I
    .registers 13

    .line 1271
    aget v0, p3, p4

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    sub-long/2addr v0, v4

    long-to-int v4, v0

    .line 1272
    aput v4, p3, p4

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    add-int/lit8 v5, p4, 0x1

    .line 1274
    aget v6, p3, v5

    int-to-long v6, v6

    and-long/2addr v2, v6

    ushr-long/2addr p1, v4

    sub-long/2addr v2, p1

    add-long/2addr v0, v2

    long-to-int p1, v0

    .line 1275
    aput p1, p3, v5

    shr-long p1, v0, v4

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_28

    const/4 p0, 0x0

    return p0

    :cond_28
    add-int/lit8 p4, p4, 0x2

    .line 1277
    invoke-static {p0, p3, p4}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result p0

    return p0
.end method

.method public static blacklist subDWordAt(IJ[III)I
    .registers 14

    add-int v0, p4, p5

    .line 1283
    aget v1, p3, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    and-long v5, p1, v3

    sub-long/2addr v1, v5

    long-to-int v5, v1

    .line 1284
    aput v5, p3, v0

    const/16 v5, 0x20

    shr-long/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    .line 1286
    aget v6, p3, v0

    int-to-long v6, v6

    and-long/2addr v3, v6

    ushr-long/2addr p1, v5

    sub-long/2addr v3, p1

    add-long/2addr v1, v3

    long-to-int p1, v1

    .line 1287
    aput p1, p3, v0

    shr-long p1, v1, v5

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_2a

    const/4 p0, 0x0

    return p0

    :cond_2a
    add-int/lit8 p5, p5, 0x2

    .line 1289
    invoke-static {p0, p3, p4, p5}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result p0

    return p0
.end method

.method public static blacklist subDWordFrom(IJ[I)I
    .registers 13

    const/4 v0, 0x0

    .line 1294
    aget v1, p3, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    and-long v5, p1, v3

    sub-long/2addr v1, v5

    long-to-int v5, v1

    .line 1295
    aput v5, p3, v0

    const/16 v5, 0x20

    shr-long/2addr v1, v5

    const/4 v6, 0x1

    .line 1297
    aget v7, p3, v6

    int-to-long v7, v7

    and-long/2addr v3, v7

    ushr-long/2addr p1, v5

    sub-long/2addr v3, p1

    add-long/2addr v1, v3

    long-to-int p1, v1

    .line 1298
    aput p1, p3, v6

    shr-long p1, v1, v5

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-nez p1, :cond_27

    return v0

    :cond_27
    const/4 p1, 0x2

    .line 1300
    invoke-static {p0, p3, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result p0

    return p0
.end method

.method public static blacklist subDWordFrom(IJ[II)I
    .registers 13

    .line 1305
    aget v0, p3, p4

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    sub-long/2addr v0, v4

    long-to-int v4, v0

    .line 1306
    aput v4, p3, p4

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    add-int/lit8 v5, p4, 0x1

    .line 1308
    aget v6, p3, v5

    int-to-long v6, v6

    and-long/2addr v2, v6

    ushr-long/2addr p1, v4

    sub-long/2addr v2, p1

    add-long/2addr v0, v2

    long-to-int p1, v0

    .line 1309
    aput p1, p3, v5

    shr-long p1, v0, v4

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_28

    const/4 p0, 0x0

    return p0

    :cond_28
    const/4 p1, 0x2

    .line 1311
    invoke-static {p0, p3, p4, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result p0

    return p0
.end method

.method public static blacklist subFrom(I[II[II)I
    .registers 15

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_21

    add-int v3, p4, v2

    .line 1331
    aget v4, p3, v3

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-int v8, p2, v2

    aget v8, p1, v8

    int-to-long v8, v8

    and-long/2addr v6, v8

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 1332
    aput v4, p3, v3

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_21
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist subFrom(I[I[I)I
    .registers 12

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_1d

    .line 1319
    aget v3, p2, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    long-to-int v3, v0

    .line 1320
    aput v3, p2, v2

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1d
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist subWordAt(II[II)I
    .registers 10

    .line 1341
    aget v0, p2, p3

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int p1, v0

    .line 1342
    aput p1, p2, p3

    const/16 p1, 0x20

    shr-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1a

    const/4 p0, 0x0

    return p0

    :cond_1a
    add-int/lit8 p3, p3, 0x1

    .line 1344
    invoke-static {p0, p2, p3}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result p0

    return p0
.end method

.method public static blacklist subWordAt(II[III)I
    .registers 12

    add-int v0, p3, p4

    .line 1350
    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v3, v5

    sub-long/2addr v1, v3

    long-to-int p1, v1

    .line 1351
    aput p1, p2, v0

    const/16 p1, 0x20

    shr-long v0, v1, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1d

    const/4 p0, 0x0

    return p0

    :cond_1d
    add-int/lit8 p4, p4, 0x1

    .line 1353
    invoke-static {p0, p2, p3, p4}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result p0

    return p0
.end method

.method public static blacklist subWordFrom(II[I)I
    .registers 10

    const/4 v0, 0x0

    .line 1358
    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v3, v5

    sub-long/2addr v1, v3

    long-to-int p1, v1

    .line 1359
    aput p1, p2, v0

    const/16 p1, 0x20

    shr-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_1a

    return v0

    :cond_1a
    const/4 p1, 0x1

    .line 1361
    invoke-static {p0, p2, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result p0

    return p0
.end method

.method public static blacklist subWordFrom(II[II)I
    .registers 10

    .line 1366
    aget v0, p2, p3

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int p1, v0

    .line 1367
    aput p1, p2, p3

    const/16 p1, 0x20

    shr-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1a

    const/4 p0, 0x0

    return p0

    :cond_1a
    const/4 p1, 0x1

    .line 1369
    invoke-static {p0, p2, p3, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result p0

    return p0
.end method

.method public static blacklist toBigInteger(I[I)Ljava/math/BigInteger;
    .registers 6

    shl-int/lit8 v0, p0, 0x2

    .line 1374
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_5
    if-ge v1, p0, :cond_16

    .line 1377
    aget v2, p1, v1

    if-eqz v2, :cond_13

    add-int/lit8 v3, p0, -0x1

    sub-int/2addr v3, v1

    shl-int/lit8 v3, v3, 0x2

    .line 1380
    invoke-static {v2, v0, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1383
    :cond_16
    new-instance p0, Ljava/math/BigInteger;

    const/4 p1, 0x1

    invoke-direct {p0, p1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static blacklist zero(I[I)V
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p0, :cond_9

    .line 1390
    aput v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    return-void
.end method

.method public static blacklist zero(I[II)V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p0, :cond_b

    add-int v2, p2, v1

    .line 1398
    aput v0, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    return-void
.end method

.method public static blacklist zero64(I[J)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_a

    const-wide/16 v1, 0x0

    .line 1406
    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    return-void
.end method
