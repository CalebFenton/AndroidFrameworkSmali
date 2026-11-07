.class public abstract Lcom/android/org/bouncycastle/math/raw/Nat256;
.super Ljava/lang/Object;
.source "Nat256.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist add([II[II[II)I
    .registers 15

    .line 48
    aget v0, p0, p1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 49
    aput v4, p4, p5

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x1

    .line 51
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x1

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x1

    long-to-int v6, v0

    .line 52
    aput v6, p4, v5

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x2

    .line 54
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x2

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x2

    long-to-int v6, v0

    .line 55
    aput v6, p4, v5

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x3

    .line 57
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x3

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x3

    long-to-int v6, v0

    .line 58
    aput v6, p4, v5

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x4

    .line 60
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x4

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x4

    long-to-int v6, v0

    .line 61
    aput v6, p4, v5

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x5

    .line 63
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x5

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x5

    long-to-int v6, v0

    .line 64
    aput v6, p4, v5

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x6

    .line 66
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x6

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x6

    long-to-int v6, v0

    .line 67
    aput v6, p4, v5

    ushr-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    .line 69
    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-int/lit8 p3, p3, 0x7

    aget p2, p2, p3

    int-to-long p2, p2

    and-long/2addr p2, v2

    add-long/2addr p0, p2

    add-long/2addr v0, p0

    add-int/lit8 p5, p5, 0x7

    long-to-int p0, v0

    .line 70
    aput p0, p4, p5

    ushr-long p0, v0, v4

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist add([I[I[I)I
    .registers 13

    const/4 v0, 0x0

    .line 18
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 19
    aput v5, p2, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/4 v5, 0x1

    .line 21
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 22
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x2

    .line 24
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 25
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x3

    .line 27
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 28
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x4

    .line 30
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 31
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x5

    .line 33
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 34
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x6

    .line 36
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 37
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x7

    .line 39
    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 40
    aput p0, p2, v5

    ushr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist addBothTo([II[II[II)I
    .registers 16

    .line 108
    aget v0, p0, p1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    aget v4, p4, p5

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 109
    aput v4, p4, p5

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x1

    .line 111
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x1

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-int/lit8 v7, p5, 0x1

    aget v8, p4, v7

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v5, v8

    add-long/2addr v0, v5

    long-to-int v5, v0

    .line 112
    aput v5, p4, v7

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x2

    .line 114
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x2

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-int/lit8 v7, p5, 0x2

    aget v8, p4, v7

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v5, v8

    add-long/2addr v0, v5

    long-to-int v5, v0

    .line 115
    aput v5, p4, v7

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x3

    .line 117
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x3

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-int/lit8 v7, p5, 0x3

    aget v8, p4, v7

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v5, v8

    add-long/2addr v0, v5

    long-to-int v5, v0

    .line 118
    aput v5, p4, v7

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x4

    .line 120
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x4

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-int/lit8 v7, p5, 0x4

    aget v8, p4, v7

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v5, v8

    add-long/2addr v0, v5

    long-to-int v5, v0

    .line 121
    aput v5, p4, v7

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x5

    .line 123
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x5

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-int/lit8 v7, p5, 0x5

    aget v8, p4, v7

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v5, v8

    add-long/2addr v0, v5

    long-to-int v5, v0

    .line 124
    aput v5, p4, v7

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x6

    .line 126
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x6

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-int/lit8 v7, p5, 0x6

    aget v8, p4, v7

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v5, v8

    add-long/2addr v0, v5

    long-to-int v5, v0

    .line 127
    aput v5, p4, v7

    ushr-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    .line 129
    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-int/lit8 p3, p3, 0x7

    aget p2, p2, p3

    int-to-long p2, p2

    and-long/2addr p2, v2

    add-long/2addr p0, p2

    add-int/lit8 p5, p5, 0x7

    aget p2, p4, p5

    int-to-long p2, p2

    and-long/2addr p2, v2

    add-long/2addr p0, p2

    add-long/2addr v0, p0

    long-to-int p0, v0

    .line 130
    aput p0, p4, p5

    ushr-long p0, v0, v4

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist addBothTo([I[I[I)I
    .registers 13

    const/4 v0, 0x0

    .line 78
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    aget v5, p2, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 79
    aput v5, p2, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/4 v5, 0x1

    .line 81
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 82
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x2

    .line 84
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 85
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x3

    .line 87
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 88
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x4

    .line 90
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 91
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x5

    .line 93
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 94
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x6

    .line 96
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 97
    aput v6, p2, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x7

    .line 99
    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    aget p0, p2, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 100
    aput p0, p2, v5

    ushr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist addTo([II[III)I
    .registers 14

    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 198
    aget p4, p0, p1

    int-to-long v4, p4

    and-long/2addr v4, v2

    aget p4, p2, p3

    int-to-long v6, p4

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    long-to-int p4, v0

    .line 199
    aput p4, p2, p3

    const/16 p4, 0x20

    ushr-long/2addr v0, p4

    add-int/lit8 v4, p1, 0x1

    .line 201
    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x1

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 202
    aput v4, p2, v6

    ushr-long/2addr v0, p4

    add-int/lit8 v4, p1, 0x2

    .line 204
    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x2

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 205
    aput v4, p2, v6

    ushr-long/2addr v0, p4

    add-int/lit8 v4, p1, 0x3

    .line 207
    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x3

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 208
    aput v4, p2, v6

    ushr-long/2addr v0, p4

    add-int/lit8 v4, p1, 0x4

    .line 210
    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x4

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 211
    aput v4, p2, v6

    ushr-long/2addr v0, p4

    add-int/lit8 v4, p1, 0x5

    .line 213
    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x5

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 214
    aput v4, p2, v6

    ushr-long/2addr v0, p4

    add-int/lit8 v4, p1, 0x6

    .line 216
    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x6

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 217
    aput v4, p2, v6

    ushr-long/2addr v0, p4

    add-int/lit8 p1, p1, 0x7

    .line 219
    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-int/lit8 p3, p3, 0x7

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr p0, v2

    add-long/2addr v0, p0

    long-to-int p0, v0

    .line 220
    aput p0, p2, p3

    ushr-long p0, v0, p4

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist addTo([I[I)I
    .registers 12

    const/4 v0, 0x0

    .line 138
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    long-to-int v5, v1

    .line 139
    aput v5, p1, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/4 v5, 0x1

    .line 141
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 142
    aput v6, p1, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x2

    .line 144
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 145
    aput v6, p1, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x3

    .line 147
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 148
    aput v6, p1, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x4

    .line 150
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 151
    aput v6, p1, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x5

    .line 153
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 154
    aput v6, p1, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x6

    .line 156
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 157
    aput v6, p1, v5

    ushr-long/2addr v1, v0

    const/4 v5, 0x7

    .line 159
    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long v8, p0

    and-long/2addr v3, v8

    add-long/2addr v6, v3

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 160
    aput p0, p1, v5

    ushr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist addTo([I[II)I
    .registers 12

    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 p2, 0x0

    .line 168
    aget v4, p0, p2

    int-to-long v4, v4

    and-long/2addr v4, v2

    aget v6, p1, p2

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 169
    aput v4, p1, p2

    const/16 p2, 0x20

    ushr-long/2addr v0, p2

    const/4 v4, 0x1

    .line 171
    aget v5, p0, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget v7, p1, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    long-to-int v5, v0

    .line 172
    aput v5, p1, v4

    ushr-long/2addr v0, p2

    const/4 v4, 0x2

    .line 174
    aget v5, p0, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget v7, p1, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    long-to-int v5, v0

    .line 175
    aput v5, p1, v4

    ushr-long/2addr v0, p2

    const/4 v4, 0x3

    .line 177
    aget v5, p0, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget v7, p1, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    long-to-int v5, v0

    .line 178
    aput v5, p1, v4

    ushr-long/2addr v0, p2

    const/4 v4, 0x4

    .line 180
    aget v5, p0, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget v7, p1, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    long-to-int v5, v0

    .line 181
    aput v5, p1, v4

    ushr-long/2addr v0, p2

    const/4 v4, 0x5

    .line 183
    aget v5, p0, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget v7, p1, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    long-to-int v5, v0

    .line 184
    aput v5, p1, v4

    ushr-long/2addr v0, p2

    const/4 v4, 0x6

    .line 186
    aget v5, p0, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget v7, p1, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    long-to-int v5, v0

    .line 187
    aput v5, p1, v4

    ushr-long/2addr v0, p2

    const/4 v4, 0x7

    .line 189
    aget p0, p0, v4

    int-to-long v5, p0

    and-long/2addr v5, v2

    aget p0, p1, v4

    int-to-long v7, p0

    and-long/2addr v2, v7

    add-long/2addr v5, v2

    add-long/2addr v0, v5

    long-to-int p0, v0

    .line 190
    aput p0, p1, v4

    ushr-long p0, v0, p2

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist addToEachOther([II[II)I
    .registers 15

    .line 228
    aget v0, p0, p1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 229
    aput v4, p0, p1

    .line 230
    aput v4, p2, p3

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x1

    .line 232
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p3, 0x1

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v0, v6

    long-to-int v6, v0

    .line 233
    aput v6, p0, v5

    .line 234
    aput v6, p2, v8

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x2

    .line 236
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p3, 0x2

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v0, v6

    long-to-int v6, v0

    .line 237
    aput v6, p0, v5

    .line 238
    aput v6, p2, v8

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x3

    .line 240
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p3, 0x3

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v0, v6

    long-to-int v6, v0

    .line 241
    aput v6, p0, v5

    .line 242
    aput v6, p2, v8

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x4

    .line 244
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p3, 0x4

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v0, v6

    long-to-int v6, v0

    .line 245
    aput v6, p0, v5

    .line 246
    aput v6, p2, v8

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x5

    .line 248
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p3, 0x5

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v0, v6

    long-to-int v6, v0

    .line 249
    aput v6, p0, v5

    .line 250
    aput v6, p2, v8

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x6

    .line 252
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p3, 0x6

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v0, v6

    long-to-int v6, v0

    .line 253
    aput v6, p0, v5

    .line 254
    aput v6, p2, v8

    ushr-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    .line 256
    aget v5, p0, p1

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 p3, p3, 0x7

    aget v7, p2, p3

    int-to-long v7, v7

    and-long/2addr v2, v7

    add-long/2addr v5, v2

    add-long/2addr v0, v5

    long-to-int v2, v0

    .line 257
    aput v2, p0, p1

    .line 258
    aput v2, p2, p3

    ushr-long p0, v0, v4

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist copy([II[II)V
    .registers 6

    .line 277
    aget v0, p0, p1

    aput v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    .line 278
    aget v1, p0, v1

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, p1, 0x2

    .line 279
    aget v1, p0, v1

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    add-int/lit8 v1, p1, 0x3

    .line 280
    aget v1, p0, v1

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x4

    add-int/lit8 v1, p1, 0x4

    .line 281
    aget v1, p0, v1

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x5

    add-int/lit8 v1, p1, 0x5

    .line 282
    aget v1, p0, v1

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x6

    add-int/lit8 v1, p1, 0x6

    .line 283
    aget v1, p0, v1

    aput v1, p2, v0

    add-int/lit8 p3, p3, 0x7

    add-int/lit8 p1, p1, 0x7

    .line 284
    aget p0, p0, p1

    aput p0, p2, p3

    return-void
.end method

.method public static blacklist copy([I[I)V
    .registers 4

    const/4 v0, 0x0

    .line 265
    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x1

    .line 266
    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x2

    .line 267
    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x3

    .line 268
    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x4

    .line 269
    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x5

    .line 270
    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x6

    .line 271
    aget v1, p0, v0

    aput v1, p1, v0

    const/4 v0, 0x7

    .line 272
    aget p0, p0, v0

    aput p0, p1, v0

    return-void
.end method

.method public static blacklist copy64([JI[JI)V
    .registers 7

    .line 297
    aget-wide v0, p0, p1

    aput-wide v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    .line 298
    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, p1, 0x2

    .line 299
    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    add-int/lit8 p3, p3, 0x3

    add-int/lit8 p1, p1, 0x3

    .line 300
    aget-wide p0, p0, p1

    aput-wide p0, p2, p3

    return-void
.end method

.method public static blacklist copy64([J[J)V
    .registers 5

    const/4 v0, 0x0

    .line 289
    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    .line 290
    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    const/4 v0, 0x2

    .line 291
    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    const/4 v0, 0x3

    .line 292
    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    return-void
.end method

.method public static blacklist create()[I
    .registers 1

    const/16 v0, 0x8

    .line 305
    new-array v0, v0, [I

    return-object v0
.end method

.method public static blacklist create64()[J
    .registers 1

    const/4 v0, 0x4

    .line 310
    new-array v0, v0, [J

    return-object v0
.end method

.method public static blacklist createExt()[I
    .registers 1

    const/16 v0, 0x10

    .line 315
    new-array v0, v0, [I

    return-object v0
.end method

.method public static blacklist createExt64()[J
    .registers 1

    const/16 v0, 0x8

    .line 320
    new-array v0, v0, [J

    return-object v0
.end method

.method public static blacklist diff([II[II[II)Z
    .registers 8

    .line 325
    invoke-static {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([II[II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 328
    invoke-static/range {p0 .. p5}, Lcom/android/org/bouncycastle/math/raw/Nat256;->sub([II[II[II)I

    return v0

    :cond_a
    move-object v1, p2

    move-object p2, p0

    move-object p0, v1

    move v1, p3

    move p3, p1

    move p1, v1

    .line 332
    invoke-static/range {p0 .. p5}, Lcom/android/org/bouncycastle/math/raw/Nat256;->sub([II[II[II)I

    return v0
.end method

.method public static blacklist eq([I[I)Z
    .registers 5

    const/4 v0, 0x7

    :goto_1
    if-ltz v0, :cond_e

    .line 341
    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist eq64([J[J)Z
    .registers 7

    const/4 v0, 0x3

    :goto_1
    if-ltz v0, :cond_10

    .line 353
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_10
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 4

    .line 363
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_27

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_27

    .line 368
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_13
    const/16 v2, 0x8

    if-ge v1, v2, :cond_26

    .line 373
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    aput v2, v0, v1

    const/16 v2, 0x20

    .line 374
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_26
    return-object v0

    .line 365
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static blacklist fromBigInteger64(Ljava/math/BigInteger;)[J
    .registers 5

    .line 381
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_26

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_26

    .line 386
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object v0

    const/4 v1, 0x0

    :goto_13
    const/4 v2, 0x4

    if-ge v1, v2, :cond_25

    .line 391
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    const/16 v2, 0x40

    .line 392
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_25
    return-object v0

    .line 383
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static blacklist getBit([II)I
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 401
    aget p0, p0, v0

    :goto_5
    and-int/lit8 p0, p0, 0x1

    return p0

    :cond_8
    and-int/lit16 v1, p1, 0xff

    if-eq v1, p1, :cond_d

    return v0

    :cond_d
    ushr-int/lit8 v0, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    .line 409
    aget p0, p0, v0

    ushr-int/2addr p0, p1

    goto :goto_5
.end method

.method public static blacklist gte([II[II)Z
    .registers 9

    const/4 v0, 0x7

    :goto_1
    const/4 v1, 0x1

    if-ltz v0, :cond_1a

    add-int v2, p1, v0

    .line 430
    aget v2, p0, v2

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    add-int v4, p3, v0

    .line 431
    aget v4, p2, v4

    xor-int/2addr v3, v4

    if-ge v2, v3, :cond_14

    const/4 p0, 0x0

    return p0

    :cond_14
    if-le v2, v3, :cond_17

    return v1

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1a
    return v1
.end method

.method public static blacklist gte([I[I)Z
    .registers 7

    const/4 v0, 0x7

    :goto_1
    const/4 v1, 0x1

    if-ltz v0, :cond_16

    .line 416
    aget v2, p0, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 417
    aget v4, p1, v0

    xor-int/2addr v3, v4

    if-ge v2, v3, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    if-le v2, v3, :cond_13

    return v1

    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_16
    return v1
.end method

.method public static blacklist isOne([I)Z
    .registers 5

    const/4 v0, 0x0

    .line 442
    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    return v0

    :cond_7
    move v1, v2

    :goto_8
    const/16 v3, 0x8

    if-ge v1, v3, :cond_14

    .line 448
    aget v3, p0, v1

    if-eqz v3, :cond_11

    return v0

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    return v2
.end method

.method public static blacklist isOne64([J)Z
    .registers 8

    const/4 v0, 0x0

    .line 458
    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_a

    return v0

    :cond_a
    const/4 v1, 0x1

    move v2, v1

    :goto_c
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1b

    .line 464
    aget-wide v3, p0, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_18

    return v0

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1b
    return v1
.end method

.method public static blacklist isZero([I)Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x8

    if-ge v1, v2, :cond_e

    .line 476
    aget v2, p0, v1

    if-eqz v2, :cond_b

    return v0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist isZero64([J)Z
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_11

    .line 488
    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    return v0

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist mul([II[II[II)V
    .registers 36

    .line 569
    aget v0, p2, p3

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v4, p3, 0x1

    .line 570
    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x2

    .line 571
    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p3, 0x3

    .line 572
    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-int/lit8 v10, p3, 0x4

    .line 573
    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    add-int/lit8 v12, p3, 0x5

    .line 574
    aget v12, p2, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    add-int/lit8 v14, p3, 0x6

    .line 575
    aget v14, p2, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    add-int/lit8 v16, p3, 0x7

    move-wide/from16 v17, v2

    .line 576
    aget v2, p2, v16

    int-to-long v2, v2

    and-long v2, v2, v17

    move-wide/from16 v19, v0

    .line 579
    aget v0, p0, p1

    int-to-long v0, v0

    and-long v0, v0, v17

    move-wide/from16 p2, v0

    mul-long v0, p2, v19

    move-wide/from16 v21, v2

    long-to-int v2, v0

    .line 581
    aput v2, p4, p5

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    mul-long v23, p2, v4

    add-long v0, v0, v23

    add-int/lit8 v3, p5, 0x1

    move/from16 v16, v2

    long-to-int v2, v0

    .line 584
    aput v2, p4, v3

    ushr-long v0, v0, v16

    mul-long v2, p2, v6

    add-long/2addr v0, v2

    add-int/lit8 v2, p5, 0x2

    long-to-int v3, v0

    .line 587
    aput v3, p4, v2

    ushr-long v0, v0, v16

    mul-long v2, p2, v8

    add-long/2addr v0, v2

    add-int/lit8 v2, p5, 0x3

    long-to-int v3, v0

    .line 590
    aput v3, p4, v2

    ushr-long v0, v0, v16

    mul-long v2, p2, v10

    add-long/2addr v0, v2

    add-int/lit8 v2, p5, 0x4

    long-to-int v3, v0

    .line 593
    aput v3, p4, v2

    ushr-long v0, v0, v16

    mul-long v2, p2, v12

    add-long/2addr v0, v2

    add-int/lit8 v2, p5, 0x5

    long-to-int v3, v0

    .line 596
    aput v3, p4, v2

    ushr-long v0, v0, v16

    mul-long v2, p2, v14

    add-long/2addr v0, v2

    add-int/lit8 v2, p5, 0x6

    long-to-int v3, v0

    .line 599
    aput v3, p4, v2

    ushr-long v0, v0, v16

    mul-long v2, p2, v21

    add-long/2addr v0, v2

    add-int/lit8 v2, p5, 0x7

    long-to-int v3, v0

    .line 602
    aput v3, p4, v2

    ushr-long v0, v0, v16

    add-int/lit8 v2, p5, 0x8

    long-to-int v0, v0

    .line 604
    aput v0, p4, v2

    const/4 v0, 0x1

    move v1, v0

    move/from16 v0, p5

    :goto_9b
    const/16 v2, 0x8

    if-ge v1, v2, :cond_14f

    add-int/lit8 v2, v0, 0x1

    add-int v3, p1, v1

    .line 610
    aget v3, p0, v3

    move/from16 p2, v0

    move/from16 v23, v1

    int-to-long v0, v3

    and-long v0, v0, v17

    mul-long v24, v0, v19

    .line 611
    aget v3, p4, v2

    move-wide/from16 v26, v0

    int-to-long v0, v3

    and-long v0, v0, v17

    add-long v0, v24, v0

    long-to-int v3, v0

    .line 612
    aput v3, p4, v2

    ushr-long v0, v0, v16

    mul-long v24, v26, v4

    add-int/lit8 v3, p2, 0x2

    move-wide/from16 v28, v0

    .line 614
    aget v0, p4, v3

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long v24, v24, v0

    add-long v0, v28, v24

    move/from16 p3, v2

    long-to-int v2, v0

    .line 615
    aput v2, p4, v3

    ushr-long v0, v0, v16

    mul-long v2, v26, v6

    add-int/lit8 v24, p2, 0x3

    move-wide/from16 v28, v0

    .line 617
    aget v0, p4, v24

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v28, v2

    long-to-int v2, v0

    .line 618
    aput v2, p4, v24

    ushr-long v0, v0, v16

    mul-long v2, v26, v8

    add-int/lit8 v24, p2, 0x4

    move-wide/from16 v28, v0

    .line 620
    aget v0, p4, v24

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v28, v2

    long-to-int v2, v0

    .line 621
    aput v2, p4, v24

    ushr-long v0, v0, v16

    mul-long v2, v26, v10

    add-int/lit8 v24, p2, 0x5

    move-wide/from16 v28, v0

    .line 623
    aget v0, p4, v24

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v28, v2

    long-to-int v2, v0

    .line 624
    aput v2, p4, v24

    ushr-long v0, v0, v16

    mul-long v2, v26, v12

    add-int/lit8 v24, p2, 0x6

    move-wide/from16 v28, v0

    .line 626
    aget v0, p4, v24

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v28, v2

    long-to-int v2, v0

    .line 627
    aput v2, p4, v24

    ushr-long v0, v0, v16

    mul-long v2, v26, v14

    add-int/lit8 v24, p2, 0x7

    move-wide/from16 v28, v0

    .line 629
    aget v0, p4, v24

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v28, v2

    long-to-int v2, v0

    .line 630
    aput v2, p4, v24

    ushr-long v0, v0, v16

    mul-long v2, v26, v21

    add-int/lit8 v24, p2, 0x8

    move-wide/from16 v25, v0

    .line 632
    aget v0, p4, v24

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v25, v2

    long-to-int v2, v0

    .line 633
    aput v2, p4, v24

    ushr-long v0, v0, v16

    add-int/lit8 v2, p2, 0x9

    long-to-int v0, v0

    .line 635
    aput v0, p4, v2

    add-int/lit8 v1, v23, 0x1

    move/from16 v0, p3

    goto/16 :goto_9b

    :cond_14f
    return-void
.end method

.method public static blacklist mul([I[I[I)V
    .registers 35

    const/4 v0, 0x0

    .line 498
    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x1

    .line 499
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/4 v8, 0x2

    .line 500
    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/4 v11, 0x3

    .line 501
    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    const/4 v14, 0x4

    .line 502
    aget v15, p1, v14

    move/from16 v16, v0

    move-wide/from16 v17, v1

    int-to-long v0, v15

    and-long/2addr v0, v3

    const/4 v2, 0x5

    .line 503
    aget v15, p1, v2

    move-wide/from16 v19, v3

    move v4, v2

    int-to-long v2, v15

    and-long v2, v2, v19

    const/4 v15, 0x6

    move/from16 v21, v4

    .line 504
    aget v4, p1, v15

    move/from16 v22, v5

    move-wide/from16 v23, v6

    int-to-long v5, v4

    and-long v4, v5, v19

    const/4 v6, 0x7

    .line 505
    aget v7, p1, v6

    move/from16 v25, v6

    int-to-long v6, v7

    and-long v6, v6, v19

    move/from16 v26, v8

    .line 508
    aget v8, p0, v16

    move/from16 v27, v11

    move-wide/from16 v28, v12

    int-to-long v11, v8

    and-long v11, v11, v19

    move v8, v14

    move v13, v15

    mul-long v14, v11, v17

    move/from16 p1, v8

    long-to-int v8, v14

    .line 510
    aput v8, p2, v16

    const/16 v8, 0x20

    ushr-long/2addr v14, v8

    mul-long v30, v11, v23

    add-long v14, v14, v30

    move/from16 v16, v8

    long-to-int v8, v14

    .line 513
    aput v8, p2, v22

    ushr-long v14, v14, v16

    mul-long v30, v11, v9

    add-long v14, v14, v30

    long-to-int v8, v14

    .line 516
    aput v8, p2, v26

    ushr-long v14, v14, v16

    mul-long v30, v11, v28

    add-long v14, v14, v30

    long-to-int v8, v14

    .line 519
    aput v8, p2, v27

    ushr-long v14, v14, v16

    mul-long v26, v11, v0

    add-long v14, v14, v26

    long-to-int v8, v14

    .line 522
    aput v8, p2, p1

    ushr-long v14, v14, v16

    mul-long v26, v11, v2

    add-long v14, v14, v26

    long-to-int v8, v14

    .line 525
    aput v8, p2, v21

    ushr-long v14, v14, v16

    mul-long v26, v11, v4

    add-long v14, v14, v26

    long-to-int v8, v14

    .line 528
    aput v8, p2, v13

    ushr-long v13, v14, v16

    mul-long/2addr v11, v6

    add-long/2addr v13, v11

    long-to-int v8, v13

    .line 531
    aput v8, p2, v25

    ushr-long v11, v13, v16

    long-to-int v8, v11

    const/16 v11, 0x8

    .line 533
    aput v8, p2, v11

    move/from16 v8, v22

    :goto_9c
    if-ge v8, v11, :cond_142

    .line 538
    aget v12, p0, v8

    int-to-long v12, v12

    and-long v12, v12, v19

    mul-long v14, v12, v17

    .line 539
    aget v11, p2, v8

    move-wide/from16 v21, v0

    int-to-long v0, v11

    and-long v0, v0, v19

    add-long/2addr v14, v0

    long-to-int v0, v14

    .line 540
    aput v0, p2, v8

    ushr-long v0, v14, v16

    mul-long v14, v12, v23

    add-int/lit8 v11, v8, 0x1

    move-wide/from16 v25, v0

    .line 542
    aget v0, p2, v11

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long v0, v25, v14

    long-to-int v14, v0

    .line 543
    aput v14, p2, v11

    ushr-long v0, v0, v16

    mul-long v14, v12, v9

    add-int/lit8 v25, v8, 0x2

    move-wide/from16 v26, v0

    .line 545
    aget v0, p2, v25

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long v0, v26, v14

    long-to-int v14, v0

    .line 546
    aput v14, p2, v25

    ushr-long v0, v0, v16

    mul-long v14, v12, v28

    add-int/lit8 v25, v8, 0x3

    move-wide/from16 v26, v0

    .line 548
    aget v0, p2, v25

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long v0, v26, v14

    long-to-int v14, v0

    .line 549
    aput v14, p2, v25

    ushr-long v0, v0, v16

    mul-long v14, v12, v21

    add-int/lit8 v25, v8, 0x4

    move-wide/from16 v26, v0

    .line 551
    aget v0, p2, v25

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long v0, v26, v14

    long-to-int v14, v0

    .line 552
    aput v14, p2, v25

    ushr-long v0, v0, v16

    mul-long v14, v12, v2

    add-int/lit8 v25, v8, 0x5

    move-wide/from16 v26, v0

    .line 554
    aget v0, p2, v25

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long v0, v26, v14

    long-to-int v14, v0

    .line 555
    aput v14, p2, v25

    ushr-long v0, v0, v16

    mul-long v14, v12, v4

    add-int/lit8 v25, v8, 0x6

    move-wide/from16 v26, v0

    .line 557
    aget v0, p2, v25

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long v0, v26, v14

    long-to-int v14, v0

    .line 558
    aput v14, p2, v25

    ushr-long v0, v0, v16

    mul-long/2addr v12, v6

    add-int/lit8 v14, v8, 0x7

    .line 560
    aget v15, p2, v14

    move-wide/from16 v25, v0

    int-to-long v0, v15

    and-long v0, v0, v19

    add-long/2addr v12, v0

    add-long v0, v25, v12

    long-to-int v12, v0

    .line 561
    aput v12, p2, v14

    ushr-long v0, v0, v16

    add-int/lit8 v8, v8, 0x8

    long-to-int v0, v0

    .line 563
    aput v0, p2, v8

    move v8, v11

    move-wide/from16 v0, v21

    const/16 v11, 0x8

    goto/16 :goto_9c

    :cond_142
    return-void
.end method

.method public static blacklist mul128([I[I[I)V
    .registers 35

    const/4 v0, 0x0

    .line 641
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x1

    .line 642
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/4 v8, 0x2

    .line 643
    aget v9, p0, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/4 v11, 0x3

    .line 644
    aget v12, p0, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    const/4 v14, 0x4

    .line 645
    aget v15, p0, v14

    move/from16 v16, v0

    move-wide/from16 v17, v1

    int-to-long v0, v15

    and-long/2addr v0, v3

    const/4 v2, 0x5

    .line 646
    aget v15, p0, v2

    move-wide/from16 v19, v3

    move v4, v2

    int-to-long v2, v15

    and-long v2, v2, v19

    const/4 v15, 0x6

    move/from16 v21, v4

    .line 647
    aget v4, p0, v15

    move/from16 v22, v5

    move-wide/from16 v23, v6

    int-to-long v5, v4

    and-long v4, v5, v19

    const/4 v6, 0x7

    .line 648
    aget v7, p0, v6

    move/from16 v25, v6

    int-to-long v6, v7

    and-long v6, v6, v19

    move/from16 v26, v8

    .line 651
    aget v8, p1, v16

    move/from16 v27, v11

    move-wide/from16 v28, v12

    int-to-long v11, v8

    and-long v11, v11, v19

    move v8, v14

    move v13, v15

    mul-long v14, v11, v17

    move/from16 p0, v8

    long-to-int v8, v14

    .line 653
    aput v8, p2, v16

    const/16 v8, 0x20

    ushr-long/2addr v14, v8

    mul-long v30, v11, v23

    add-long v14, v14, v30

    move/from16 v16, v8

    long-to-int v8, v14

    .line 656
    aput v8, p2, v22

    ushr-long v14, v14, v16

    mul-long v30, v11, v9

    add-long v14, v14, v30

    long-to-int v8, v14

    .line 659
    aput v8, p2, v26

    ushr-long v14, v14, v16

    mul-long v30, v11, v28

    add-long v14, v14, v30

    long-to-int v8, v14

    .line 662
    aput v8, p2, v27

    ushr-long v14, v14, v16

    mul-long v26, v11, v0

    add-long v14, v14, v26

    long-to-int v8, v14

    .line 665
    aput v8, p2, p0

    ushr-long v14, v14, v16

    mul-long v26, v11, v2

    add-long v14, v14, v26

    long-to-int v8, v14

    .line 668
    aput v8, p2, v21

    ushr-long v14, v14, v16

    mul-long v26, v11, v4

    add-long v14, v14, v26

    long-to-int v8, v14

    .line 671
    aput v8, p2, v13

    ushr-long v13, v14, v16

    mul-long/2addr v11, v6

    add-long/2addr v13, v11

    long-to-int v8, v13

    .line 674
    aput v8, p2, v25

    ushr-long v11, v13, v16

    const/16 v8, 0x8

    long-to-int v11, v11

    .line 676
    aput v11, p2, v8

    move/from16 v11, p0

    move/from16 v8, v22

    :goto_9e
    if-ge v8, v11, :cond_143

    .line 681
    aget v12, p1, v8

    int-to-long v12, v12

    and-long v12, v12, v19

    mul-long v14, v12, v17

    .line 682
    aget v11, p2, v8

    move-wide/from16 v21, v0

    int-to-long v0, v11

    and-long v0, v0, v19

    add-long/2addr v14, v0

    long-to-int v0, v14

    .line 683
    aput v0, p2, v8

    ushr-long v0, v14, v16

    mul-long v14, v12, v23

    add-int/lit8 v11, v8, 0x1

    move-wide/from16 v25, v0

    .line 685
    aget v0, p2, v11

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long v0, v25, v14

    long-to-int v14, v0

    .line 686
    aput v14, p2, v11

    ushr-long v0, v0, v16

    mul-long v14, v12, v9

    add-int/lit8 v25, v8, 0x2

    move-wide/from16 v26, v0

    .line 688
    aget v0, p2, v25

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long v0, v26, v14

    long-to-int v14, v0

    .line 689
    aput v14, p2, v25

    ushr-long v0, v0, v16

    mul-long v14, v12, v28

    add-int/lit8 v25, v8, 0x3

    move-wide/from16 v26, v0

    .line 691
    aget v0, p2, v25

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long v0, v26, v14

    long-to-int v14, v0

    .line 692
    aput v14, p2, v25

    ushr-long v0, v0, v16

    mul-long v14, v12, v21

    add-int/lit8 v25, v8, 0x4

    move-wide/from16 v26, v0

    .line 694
    aget v0, p2, v25

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long v0, v26, v14

    long-to-int v14, v0

    .line 695
    aput v14, p2, v25

    ushr-long v0, v0, v16

    mul-long v14, v12, v2

    add-int/lit8 v25, v8, 0x5

    move-wide/from16 v26, v0

    .line 697
    aget v0, p2, v25

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long v0, v26, v14

    long-to-int v14, v0

    .line 698
    aput v14, p2, v25

    ushr-long v0, v0, v16

    mul-long v14, v12, v4

    add-int/lit8 v25, v8, 0x6

    move-wide/from16 v26, v0

    .line 700
    aget v0, p2, v25

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v14, v0

    add-long v0, v26, v14

    long-to-int v14, v0

    .line 701
    aput v14, p2, v25

    ushr-long v0, v0, v16

    mul-long/2addr v12, v6

    add-int/lit8 v14, v8, 0x7

    .line 703
    aget v15, p2, v14

    move-wide/from16 v25, v0

    int-to-long v0, v15

    and-long v0, v0, v19

    add-long/2addr v12, v0

    add-long v0, v25, v12

    long-to-int v12, v0

    .line 704
    aput v12, p2, v14

    ushr-long v0, v0, v16

    add-int/lit8 v8, v8, 0x8

    long-to-int v0, v0

    .line 706
    aput v0, p2, v8

    move v8, v11

    move-wide/from16 v0, v21

    const/4 v11, 0x4

    goto/16 :goto_9e

    :cond_143
    return-void
.end method

.method public static blacklist mul33Add(I[II[II[II)J
    .registers 19

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 810
    aget p0, p1, p2

    int-to-long v4, p0

    and-long/2addr v4, v2

    mul-long v6, v0, v4

    .line 811
    aget p0, p3, p4

    int-to-long v8, p0

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    long-to-int p0, v6

    .line 812
    aput p0, p5, p6

    const/16 p0, 0x20

    ushr-long/2addr v6, p0

    add-int/lit8 v8, p2, 0x1

    .line 814
    aget v8, p1, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    mul-long v10, v0, v8

    add-long/2addr v10, v4

    add-int/lit8 v4, p4, 0x1

    .line 815
    aget v4, p3, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-long/2addr v10, v4

    add-long/2addr v6, v10

    add-int/lit8 v4, p6, 0x1

    long-to-int v5, v6

    .line 816
    aput v5, p5, v4

    ushr-long v4, v6, p0

    add-int/lit8 v6, p2, 0x2

    .line 818
    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long v10, v0, v6

    add-long/2addr v10, v8

    add-int/lit8 v8, p4, 0x2

    .line 819
    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v10, v8

    add-long/2addr v4, v10

    add-int/lit8 v8, p6, 0x2

    long-to-int v9, v4

    .line 820
    aput v9, p5, v8

    ushr-long/2addr v4, p0

    add-int/lit8 v8, p2, 0x3

    .line 822
    aget v8, p1, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    mul-long v10, v0, v8

    add-long/2addr v10, v6

    add-int/lit8 v6, p4, 0x3

    .line 823
    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v10, v6

    add-long/2addr v4, v10

    add-int/lit8 v6, p6, 0x3

    long-to-int v7, v4

    .line 824
    aput v7, p5, v6

    ushr-long/2addr v4, p0

    add-int/lit8 v6, p2, 0x4

    .line 826
    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long v10, v0, v6

    add-long/2addr v10, v8

    add-int/lit8 v8, p4, 0x4

    .line 827
    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v10, v8

    add-long/2addr v4, v10

    add-int/lit8 v8, p6, 0x4

    long-to-int v9, v4

    .line 828
    aput v9, p5, v8

    ushr-long/2addr v4, p0

    add-int/lit8 v8, p2, 0x5

    .line 830
    aget v8, p1, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    mul-long v10, v0, v8

    add-long/2addr v10, v6

    add-int/lit8 v6, p4, 0x5

    .line 831
    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v10, v6

    add-long/2addr v4, v10

    add-int/lit8 v6, p6, 0x5

    long-to-int v7, v4

    .line 832
    aput v7, p5, v6

    ushr-long/2addr v4, p0

    add-int/lit8 v6, p2, 0x6

    .line 834
    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long v10, v0, v6

    add-long/2addr v10, v8

    add-int/lit8 v8, p4, 0x6

    .line 835
    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v10, v8

    add-long/2addr v4, v10

    add-int/lit8 v8, p6, 0x6

    long-to-int v9, v4

    .line 836
    aput v9, p5, v8

    ushr-long/2addr v4, p0

    add-int/lit8 p2, p2, 0x7

    .line 838
    aget p1, p1, p2

    int-to-long p1, p1

    and-long/2addr p1, v2

    mul-long/2addr v0, p1

    add-long/2addr v0, v6

    add-int/lit8 v6, p4, 0x7

    .line 839
    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v2, v6

    add-long/2addr v0, v2

    add-long/2addr v4, v0

    add-int/lit8 v0, p6, 0x7

    long-to-int v1, v4

    .line 840
    aput v1, p5, v0

    ushr-long v0, v4, p0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public static blacklist mul33DWordAdd(IJ[II)I
    .registers 15

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    mul-long v6, v0, v4

    .line 943
    aget p0, p3, p4

    int-to-long v8, p0

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    long-to-int p0, v6

    .line 944
    aput p0, p3, p4

    const/16 p0, 0x20

    ushr-long/2addr v6, p0

    ushr-long/2addr p1, p0

    mul-long/2addr v0, p1

    add-long/2addr v0, v4

    add-int/lit8 v4, p4, 0x1

    .line 947
    aget v5, p3, v4

    int-to-long v8, v5

    and-long/2addr v8, v2

    add-long/2addr v0, v8

    add-long/2addr v6, v0

    long-to-int v0, v6

    .line 948
    aput v0, p3, v4

    ushr-long v0, v6, p0

    add-int/lit8 v4, p4, 0x2

    .line 950
    aget v5, p3, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-long/2addr p1, v5

    add-long/2addr v0, p1

    long-to-int p1, v0

    .line 951
    aput p1, p3, v4

    ushr-long p1, v0, p0

    add-int/lit8 v0, p4, 0x3

    .line 953
    aget v1, p3, v0

    int-to-long v4, v1

    and-long v1, v4, v2

    add-long/2addr p1, v1

    long-to-int v1, p1

    .line 954
    aput v1, p3, v0

    ushr-long p0, p1, p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_48

    const/4 p0, 0x0

    return p0

    :cond_48
    const/16 p0, 0x8

    const/4 p1, 0x4

    .line 956
    invoke-static {p0, p3, p4, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    return p0
.end method

.method public static blacklist mul33WordAdd(II[II)I
    .registers 12

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long p0, p1

    and-long/2addr p0, v2

    mul-long/2addr v0, p0

    .line 965
    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 966
    aput v4, p2, p3

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p3, 0x1

    .line 968
    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr p0, v6

    add-long/2addr v0, p0

    long-to-int p0, v0

    .line 969
    aput p0, p2, v5

    ushr-long p0, v0, v4

    add-int/lit8 v0, p3, 0x2

    .line 971
    aget v1, p2, v0

    int-to-long v5, v1

    and-long v1, v5, v2

    add-long/2addr p0, v1

    long-to-int v1, p0

    .line 972
    aput v1, p2, v0

    ushr-long/2addr p0, v4

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_36

    const/4 p0, 0x0

    return p0

    :cond_36
    const/16 p0, 0x8

    const/4 p1, 0x3

    .line 974
    invoke-static {p0, p2, p3, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    return p0
.end method

.method public static blacklist mulAddTo([II[II[II)I
    .registers 41

    .line 759
    aget v0, p2, p3

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v4, p3, 0x1

    .line 760
    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x2

    .line 761
    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p3, 0x3

    .line 762
    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-int/lit8 v10, p3, 0x4

    .line 763
    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    add-int/lit8 v12, p3, 0x5

    .line 764
    aget v12, p2, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    add-int/lit8 v14, p3, 0x6

    .line 765
    aget v14, p2, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    add-int/lit8 v16, p3, 0x7

    move-wide/from16 v17, v2

    .line 766
    aget v2, p2, v16

    int-to-long v2, v2

    and-long v2, v2, v17

    const-wide/16 v19, 0x0

    const/16 v16, 0x0

    move-wide/from16 p2, v2

    move/from16 v32, v16

    move/from16 v16, p5

    move-wide/from16 v33, v0

    move/from16 v0, v32

    move-wide/from16 v1, v19

    move-wide/from16 v19, v33

    :goto_48
    const/16 v3, 0x8

    if-ge v0, v3, :cond_111

    add-int v21, p1, v0

    move/from16 p5, v3

    .line 771
    aget v3, p0, v21

    move-wide/from16 v21, v4

    int-to-long v3, v3

    and-long v3, v3, v17

    mul-long v23, v3, v19

    .line 772
    aget v5, p4, v16

    move-wide/from16 v25, v3

    int-to-long v3, v5

    and-long v3, v3, v17

    add-long v3, v23, v3

    long-to-int v5, v3

    .line 773
    aput v5, p4, v16

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    mul-long v23, v25, v21

    add-int/lit8 v27, v16, 0x1

    move/from16 v28, v5

    .line 775
    aget v5, p4, v27

    move-wide/from16 v29, v3

    int-to-long v3, v5

    and-long v3, v3, v17

    add-long v23, v23, v3

    add-long v3, v29, v23

    long-to-int v5, v3

    .line 776
    aput v5, p4, v27

    ushr-long v3, v3, v28

    mul-long v23, v25, v6

    add-int/lit8 v5, v16, 0x2

    move/from16 v29, v0

    .line 778
    aget v0, p4, v5

    move-wide/from16 v30, v3

    int-to-long v3, v0

    and-long v3, v3, v17

    add-long v23, v23, v3

    add-long v3, v30, v23

    long-to-int v0, v3

    .line 779
    aput v0, p4, v5

    ushr-long v3, v3, v28

    mul-long v23, v25, v8

    add-int/lit8 v0, v16, 0x3

    .line 781
    aget v5, p4, v0

    move-wide/from16 v30, v3

    int-to-long v3, v5

    and-long v3, v3, v17

    add-long v23, v23, v3

    add-long v3, v30, v23

    long-to-int v5, v3

    .line 782
    aput v5, p4, v0

    ushr-long v3, v3, v28

    mul-long v23, v25, v10

    add-int/lit8 v0, v16, 0x4

    .line 784
    aget v5, p4, v0

    move-wide/from16 v30, v3

    int-to-long v3, v5

    and-long v3, v3, v17

    add-long v23, v23, v3

    add-long v3, v30, v23

    long-to-int v5, v3

    .line 785
    aput v5, p4, v0

    ushr-long v3, v3, v28

    mul-long v23, v25, v12

    add-int/lit8 v0, v16, 0x5

    .line 787
    aget v5, p4, v0

    move-wide/from16 v30, v3

    int-to-long v3, v5

    and-long v3, v3, v17

    add-long v23, v23, v3

    add-long v3, v30, v23

    long-to-int v5, v3

    .line 788
    aput v5, p4, v0

    ushr-long v3, v3, v28

    mul-long v23, v25, v14

    add-int/lit8 v0, v16, 0x6

    .line 790
    aget v5, p4, v0

    move-wide/from16 v30, v3

    int-to-long v3, v5

    and-long v3, v3, v17

    add-long v23, v23, v3

    add-long v3, v30, v23

    long-to-int v5, v3

    .line 791
    aput v5, p4, v0

    ushr-long v3, v3, v28

    mul-long v23, v25, p2

    add-int/lit8 v0, v16, 0x7

    .line 793
    aget v5, p4, v0

    move-wide/from16 v25, v3

    int-to-long v3, v5

    and-long v3, v3, v17

    add-long v23, v23, v3

    add-long v3, v25, v23

    long-to-int v5, v3

    .line 794
    aput v5, p4, v0

    ushr-long v3, v3, v28

    add-int/lit8 v16, v16, 0x8

    .line 797
    aget v0, p4, v16

    move-wide/from16 v23, v3

    int-to-long v3, v0

    and-long v3, v3, v17

    add-long v3, v23, v3

    add-long/2addr v1, v3

    long-to-int v0, v1

    .line 798
    aput v0, p4, v16

    ushr-long v1, v1, v28

    add-int/lit8 v0, v29, 0x1

    move-wide/from16 v4, v21

    move/from16 v16, v27

    goto/16 :goto_48

    :cond_111
    long-to-int v0, v1

    return v0
.end method

.method public static blacklist mulAddTo([I[I[I)I
    .registers 34

    const/4 v0, 0x0

    .line 712
    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x1

    .line 713
    aget v5, p1, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/4 v7, 0x2

    .line 714
    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    const/4 v9, 0x3

    .line 715
    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/4 v11, 0x4

    .line 716
    aget v11, p1, v11

    int-to-long v11, v11

    and-long/2addr v11, v3

    const/4 v13, 0x5

    .line 717
    aget v13, p1, v13

    int-to-long v13, v13

    and-long/2addr v13, v3

    const/4 v15, 0x6

    .line 718
    aget v15, p1, v15

    move-wide/from16 v17, v1

    int-to-long v0, v15

    and-long/2addr v0, v3

    const/4 v2, 0x7

    .line 719
    aget v2, p1, v2

    move-wide/from16 v19, v3

    int-to-long v3, v2

    and-long v2, v3, v19

    const-wide/16 v21, 0x0

    move-wide v15, v0

    move-wide/from16 v0, v21

    const/4 v4, 0x0

    move-wide/from16 v21, v2

    :goto_3a
    const/16 v2, 0x8

    if-ge v4, v2, :cond_105

    .line 724
    aget v2, p0, v4

    int-to-long v2, v2

    and-long v2, v2, v19

    mul-long v23, v2, v17

    move-wide/from16 v25, v2

    .line 725
    aget v2, p2, v4

    int-to-long v2, v2

    and-long v2, v2, v19

    add-long v2, v23, v2

    move/from16 v23, v4

    long-to-int v4, v2

    .line 726
    aput v4, p2, v23

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    mul-long v27, v25, v5

    add-int/lit8 v24, v23, 0x1

    move/from16 p1, v4

    .line 728
    aget v4, p2, v24

    move-wide/from16 v29, v2

    int-to-long v2, v4

    and-long v2, v2, v19

    add-long v27, v27, v2

    add-long v2, v29, v27

    long-to-int v4, v2

    .line 729
    aput v4, p2, v24

    ushr-long v2, v2, p1

    mul-long v27, v25, v7

    add-int/lit8 v4, v23, 0x2

    move-wide/from16 v29, v2

    .line 731
    aget v2, p2, v4

    int-to-long v2, v2

    and-long v2, v2, v19

    add-long v27, v27, v2

    add-long v2, v29, v27

    move/from16 v27, v4

    long-to-int v4, v2

    .line 732
    aput v4, p2, v27

    ushr-long v2, v2, p1

    mul-long v27, v25, v9

    add-int/lit8 v4, v23, 0x3

    move-wide/from16 v29, v2

    .line 734
    aget v2, p2, v4

    int-to-long v2, v2

    and-long v2, v2, v19

    add-long v27, v27, v2

    add-long v2, v29, v27

    move/from16 v27, v4

    long-to-int v4, v2

    .line 735
    aput v4, p2, v27

    ushr-long v2, v2, p1

    mul-long v27, v25, v11

    add-int/lit8 v4, v23, 0x4

    move-wide/from16 v29, v2

    .line 737
    aget v2, p2, v4

    int-to-long v2, v2

    and-long v2, v2, v19

    add-long v27, v27, v2

    add-long v2, v29, v27

    move/from16 v27, v4

    long-to-int v4, v2

    .line 738
    aput v4, p2, v27

    ushr-long v2, v2, p1

    mul-long v27, v25, v13

    add-int/lit8 v4, v23, 0x5

    move-wide/from16 v29, v2

    .line 740
    aget v2, p2, v4

    int-to-long v2, v2

    and-long v2, v2, v19

    add-long v27, v27, v2

    add-long v2, v29, v27

    move/from16 v27, v4

    long-to-int v4, v2

    .line 741
    aput v4, p2, v27

    ushr-long v2, v2, p1

    mul-long v27, v25, v15

    add-int/lit8 v4, v23, 0x6

    move-wide/from16 v29, v2

    .line 743
    aget v2, p2, v4

    int-to-long v2, v2

    and-long v2, v2, v19

    add-long v27, v27, v2

    add-long v2, v29, v27

    move/from16 v27, v4

    long-to-int v4, v2

    .line 744
    aput v4, p2, v27

    ushr-long v2, v2, p1

    mul-long v25, v25, v21

    add-int/lit8 v4, v23, 0x7

    move-wide/from16 v27, v2

    .line 746
    aget v2, p2, v4

    int-to-long v2, v2

    and-long v2, v2, v19

    add-long v25, v25, v2

    add-long v2, v27, v25

    move/from16 v25, v4

    long-to-int v4, v2

    .line 747
    aput v4, p2, v25

    ushr-long v2, v2, p1

    add-int/lit8 v4, v23, 0x8

    move-wide/from16 v25, v2

    .line 750
    aget v2, p2, v4

    int-to-long v2, v2

    and-long v2, v2, v19

    add-long v2, v25, v2

    add-long/2addr v0, v2

    long-to-int v2, v0

    .line 751
    aput v2, p2, v4

    ushr-long v0, v0, p1

    move/from16 v4, v24

    goto/16 :goto_3a

    :cond_105
    long-to-int v0, v0

    return v0
.end method

.method public static blacklist mulByWord(I[I)I
    .registers 11

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 p0, 0x0

    .line 849
    aget v4, p1, p0

    int-to-long v4, v4

    and-long/2addr v4, v2

    mul-long/2addr v4, v0

    long-to-int v6, v4

    .line 850
    aput v6, p1, p0

    const/16 p0, 0x20

    ushr-long/2addr v4, p0

    const/4 v6, 0x1

    .line 852
    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    add-long/2addr v4, v7

    long-to-int v7, v4

    .line 853
    aput v7, p1, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x2

    .line 855
    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    add-long/2addr v4, v7

    long-to-int v7, v4

    .line 856
    aput v7, p1, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x3

    .line 858
    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    add-long/2addr v4, v7

    long-to-int v7, v4

    .line 859
    aput v7, p1, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x4

    .line 861
    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    add-long/2addr v4, v7

    long-to-int v7, v4

    .line 862
    aput v7, p1, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x5

    .line 864
    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    add-long/2addr v4, v7

    long-to-int v7, v4

    .line 865
    aput v7, p1, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x6

    .line 867
    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    add-long/2addr v4, v7

    long-to-int v7, v4

    .line 868
    aput v7, p1, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x7

    .line 870
    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v2, v7

    mul-long/2addr v0, v2

    add-long/2addr v4, v0

    long-to-int v0, v4

    .line 871
    aput v0, p1, v6

    ushr-long p0, v4, p0

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist mulByWordAddTo(I[I[I)I
    .registers 14

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 p0, 0x0

    .line 879
    aget v4, p2, p0

    int-to-long v4, v4

    and-long/2addr v4, v2

    mul-long/2addr v4, v0

    aget v6, p1, p0

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    long-to-int v6, v4

    .line 880
    aput v6, p2, p0

    const/16 p0, 0x20

    ushr-long/2addr v4, p0

    const/4 v6, 0x1

    .line 882
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    long-to-int v7, v4

    .line 883
    aput v7, p2, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x2

    .line 885
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    long-to-int v7, v4

    .line 886
    aput v7, p2, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x3

    .line 888
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    long-to-int v7, v4

    .line 889
    aput v7, p2, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x4

    .line 891
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    long-to-int v7, v4

    .line 892
    aput v7, p2, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x5

    .line 894
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    long-to-int v7, v4

    .line 895
    aput v7, p2, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x6

    .line 897
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    long-to-int v7, v4

    .line 898
    aput v7, p2, v6

    ushr-long/2addr v4, p0

    const/4 v6, 0x7

    .line 900
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v0, v7

    aget p1, p1, v6

    int-to-long v7, p1

    and-long/2addr v2, v7

    add-long/2addr v0, v2

    add-long/2addr v4, v0

    long-to-int p1, v4

    .line 901
    aput p1, p2, v6

    ushr-long p0, v4, p0

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist mulWord(I[I[II)I
    .registers 12

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    const/4 p0, 0x0

    .line 999
    :cond_a
    aget v6, p1, p0

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    add-long/2addr v4, v6

    add-int v6, p3, p0

    long-to-int v7, v4

    .line 1000
    aput v7, p2, v6

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    add-int/lit8 p0, p0, 0x1

    const/16 v6, 0x8

    if-lt p0, v6, :cond_a

    long-to-int p0, v4

    return p0
.end method

.method public static blacklist mulWordAddTo(I[II[II)I
    .registers 16

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 909
    aget p0, p1, p2

    int-to-long v4, p0

    and-long/2addr v4, v2

    mul-long/2addr v4, v0

    aget p0, p3, p4

    int-to-long v6, p0

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    long-to-int p0, v4

    .line 910
    aput p0, p3, p4

    const/16 p0, 0x20

    ushr-long/2addr v4, p0

    add-int/lit8 v6, p2, 0x1

    .line 912
    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    add-int/lit8 v8, p4, 0x1

    aget v9, p3, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v4, v6

    long-to-int v6, v4

    .line 913
    aput v6, p3, v8

    ushr-long/2addr v4, p0

    add-int/lit8 v6, p2, 0x2

    .line 915
    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    add-int/lit8 v8, p4, 0x2

    aget v9, p3, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v4, v6

    long-to-int v6, v4

    .line 916
    aput v6, p3, v8

    ushr-long/2addr v4, p0

    add-int/lit8 v6, p2, 0x3

    .line 918
    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    add-int/lit8 v8, p4, 0x3

    aget v9, p3, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v4, v6

    long-to-int v6, v4

    .line 919
    aput v6, p3, v8

    ushr-long/2addr v4, p0

    add-int/lit8 v6, p2, 0x4

    .line 921
    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    add-int/lit8 v8, p4, 0x4

    aget v9, p3, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v4, v6

    long-to-int v6, v4

    .line 922
    aput v6, p3, v8

    ushr-long/2addr v4, p0

    add-int/lit8 v6, p2, 0x5

    .line 924
    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    add-int/lit8 v8, p4, 0x5

    aget v9, p3, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v4, v6

    long-to-int v6, v4

    .line 925
    aput v6, p3, v8

    ushr-long/2addr v4, p0

    add-int/lit8 v6, p2, 0x6

    .line 927
    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    add-int/lit8 v8, p4, 0x6

    aget v9, p3, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v4, v6

    long-to-int v6, v4

    .line 928
    aput v6, p3, v8

    ushr-long/2addr v4, p0

    add-int/lit8 p2, p2, 0x7

    .line 930
    aget p1, p1, p2

    int-to-long p1, p1

    and-long/2addr p1, v2

    mul-long/2addr v0, p1

    add-int/lit8 p4, p4, 0x7

    aget p1, p3, p4

    int-to-long p1, p1

    and-long/2addr p1, v2

    add-long/2addr v0, p1

    add-long/2addr v4, v0

    long-to-int p1, v4

    .line 931
    aput p1, p3, p4

    ushr-long p0, v4, p0

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist mulWordDwordAdd(IJ[II)I
    .registers 13

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    mul-long/2addr v4, v0

    .line 981
    aget p0, p3, p4

    int-to-long v6, p0

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    long-to-int p0, v4

    .line 982
    aput p0, p3, p4

    const/16 p0, 0x20

    ushr-long/2addr v4, p0

    ushr-long/2addr p1, p0

    mul-long/2addr v0, p1

    add-int/lit8 p1, p4, 0x1

    .line 984
    aget p2, p3, p1

    int-to-long v6, p2

    and-long/2addr v6, v2

    add-long/2addr v0, v6

    add-long/2addr v4, v0

    long-to-int p2, v4

    .line 985
    aput p2, p3, p1

    ushr-long p1, v4, p0

    add-int/lit8 v0, p4, 0x2

    .line 987
    aget v1, p3, v0

    int-to-long v4, v1

    and-long v1, v4, v2

    add-long/2addr p1, v1

    long-to-int v1, p1

    .line 988
    aput v1, p3, v0

    ushr-long p0, p1, p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_39

    const/4 p0, 0x0

    return p0

    :cond_39
    const/16 p0, 0x8

    const/4 p1, 0x3

    .line 990
    invoke-static {p0, p3, p4, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    return p0
.end method

.method public static blacklist square([II[II)V
    .registers 49

    .line 1173
    aget v0, p0, p1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v4, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x7

    :goto_d
    add-int/lit8 v8, v7, -0x1

    add-int v7, p1, v7

    .line 1181
    aget v7, p0, v7

    int-to-long v9, v7

    and-long/2addr v9, v2

    mul-long/2addr v9, v9

    add-int/lit8 v7, v6, -0x1

    add-int v7, p3, v7

    shl-int/lit8 v4, v4, 0x1f

    const/16 v11, 0x21

    ushr-long v12, v9, v11

    long-to-int v12, v12

    or-int/2addr v4, v12

    .line 1183
    aput v4, p2, v7

    add-int/lit8 v6, v6, -0x2

    add-int v4, p3, v6

    const/4 v7, 0x1

    ushr-long v12, v9, v7

    long-to-int v12, v12

    .line 1184
    aput v12, p2, v4

    long-to-int v4, v9

    if-gtz v8, :cond_2b6

    mul-long v8, v0, v0

    shl-int/lit8 v4, v4, 0x1f

    int-to-long v12, v4

    and-long/2addr v12, v2

    ushr-long v10, v8, v11

    or-long/2addr v10, v12

    long-to-int v4, v8

    .line 1192
    aput v4, p2, p3

    const/16 v4, 0x20

    ushr-long/2addr v8, v4

    long-to-int v6, v8

    and-int/2addr v6, v7

    add-int/lit8 v8, p1, 0x1

    .line 1197
    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-int/lit8 v12, p3, 0x2

    .line 1198
    aget v13, p2, v12

    int-to-long v13, v13

    and-long/2addr v13, v2

    mul-long v15, v8, v0

    add-long/2addr v10, v15

    long-to-int v15, v10

    add-int/lit8 v16, p3, 0x1

    shl-int/lit8 v17, v15, 0x1

    or-int v6, v17, v6

    .line 1203
    aput v6, p2, v16

    ushr-int/lit8 v6, v15, 0x1f

    ushr-long/2addr v10, v4

    add-long/2addr v13, v10

    add-int/lit8 v10, p1, 0x2

    .line 1208
    aget v10, p0, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    add-int/lit8 v15, p3, 0x3

    move-wide/from16 v16, v2

    .line 1209
    aget v2, p2, v15

    int-to-long v2, v2

    and-long v2, v2, v16

    add-int/lit8 v18, p3, 0x4

    move/from16 v19, v4

    .line 1210
    aget v4, p2, v18

    move/from16 v21, v6

    const/16 v20, 0x7

    int-to-long v5, v4

    and-long v4, v5, v16

    mul-long v22, v10, v0

    add-long v13, v13, v22

    long-to-int v6, v13

    shl-int/lit8 v22, v6, 0x1

    or-int v21, v22, v21

    .line 1214
    aput v21, p2, v12

    ushr-int/lit8 v6, v6, 0x1f

    ushr-long v12, v13, v19

    mul-long v21, v10, v8

    add-long v12, v12, v21

    add-long/2addr v2, v12

    ushr-long v12, v2, v19

    add-long/2addr v4, v12

    and-long v2, v2, v16

    add-int/lit8 v12, p1, 0x3

    .line 1221
    aget v12, p0, v12

    int-to-long v12, v12

    and-long v12, v12, v16

    add-int/lit8 v14, p3, 0x5

    move/from16 v21, v7

    .line 1222
    aget v7, p2, v14

    move-wide/from16 v22, v0

    int-to-long v0, v7

    and-long v0, v0, v16

    ushr-long v24, v4, v19

    add-long v0, v0, v24

    and-long v4, v4, v16

    add-int/lit8 v7, p3, 0x6

    move-wide/from16 v24, v0

    .line 1223
    aget v0, p2, v7

    int-to-long v0, v0

    and-long v0, v0, v16

    ushr-long v26, v24, v19

    add-long v0, v0, v26

    and-long v24, v24, v16

    mul-long v26, v12, v22

    add-long v2, v2, v26

    move-wide/from16 v26, v0

    long-to-int v0, v2

    shl-int/lit8 v1, v0, 0x1

    or-int/2addr v1, v6

    .line 1227
    aput v1, p2, v15

    ushr-int/lit8 v0, v0, 0x1f

    ushr-long v1, v2, v19

    mul-long v28, v12, v8

    add-long v1, v1, v28

    add-long/2addr v4, v1

    ushr-long v1, v4, v19

    mul-long v28, v12, v10

    add-long v1, v1, v28

    add-long v24, v24, v1

    and-long v1, v4, v16

    ushr-long v3, v24, v19

    add-long v3, v26, v3

    and-long v5, v24, v16

    add-int/lit8 v15, p1, 0x4

    .line 1236
    aget v15, p0, v15

    move/from16 v24, v0

    move-wide/from16 v25, v1

    int-to-long v0, v15

    and-long v0, v0, v16

    add-int/lit8 v2, p3, 0x7

    .line 1237
    aget v15, p2, v2

    move-wide/from16 v27, v0

    int-to-long v0, v15

    and-long v0, v0, v16

    ushr-long v29, v3, v19

    add-long v0, v0, v29

    and-long v3, v3, v16

    add-int/lit8 v15, p3, 0x8

    move-wide/from16 v29, v0

    .line 1238
    aget v0, p2, v15

    int-to-long v0, v0

    and-long v0, v0, v16

    ushr-long v31, v29, v19

    add-long v0, v0, v31

    and-long v29, v29, v16

    mul-long v31, v27, v22

    move-wide/from16 v33, v0

    add-long v0, v25, v31

    move/from16 v25, v2

    long-to-int v2, v0

    shl-int/lit8 v26, v2, 0x1

    or-int v24, v26, v24

    .line 1242
    aput v24, p2, v18

    ushr-int/lit8 v2, v2, 0x1f

    ushr-long v0, v0, v19

    mul-long v31, v27, v8

    add-long v0, v0, v31

    add-long/2addr v5, v0

    ushr-long v0, v5, v19

    mul-long v31, v27, v10

    add-long v0, v0, v31

    add-long/2addr v3, v0

    and-long v0, v5, v16

    ushr-long v5, v3, v19

    mul-long v31, v27, v12

    add-long v5, v5, v31

    add-long v29, v29, v5

    and-long v3, v3, v16

    ushr-long v5, v29, v19

    add-long v5, v33, v5

    and-long v29, v29, v16

    add-int/lit8 v18, p1, 0x5

    move-wide/from16 v31, v0

    .line 1253
    aget v0, p0, v18

    int-to-long v0, v0

    and-long v0, v0, v16

    add-int/lit8 v18, p3, 0x9

    move-wide/from16 v33, v0

    .line 1254
    aget v0, p2, v18

    int-to-long v0, v0

    and-long v0, v0, v16

    ushr-long v35, v5, v19

    add-long v0, v0, v35

    and-long v5, v5, v16

    add-int/lit8 v24, p3, 0xa

    move-wide/from16 v35, v0

    .line 1255
    aget v0, p2, v24

    int-to-long v0, v0

    and-long v0, v0, v16

    ushr-long v37, v35, v19

    add-long v0, v0, v37

    and-long v35, v35, v16

    mul-long v37, v33, v22

    move-wide/from16 v39, v0

    add-long v0, v31, v37

    move/from16 v26, v2

    long-to-int v2, v0

    shl-int/lit8 v31, v2, 0x1

    or-int v26, v31, v26

    .line 1259
    aput v26, p2, v14

    ushr-int/lit8 v2, v2, 0x1f

    ushr-long v0, v0, v19

    mul-long v31, v33, v8

    add-long v0, v0, v31

    add-long/2addr v3, v0

    ushr-long v0, v3, v19

    mul-long v31, v33, v10

    add-long v0, v0, v31

    add-long v29, v29, v0

    and-long v0, v3, v16

    ushr-long v3, v29, v19

    mul-long v31, v33, v12

    add-long v3, v3, v31

    add-long/2addr v5, v3

    and-long v3, v29, v16

    ushr-long v29, v5, v19

    mul-long v31, v33, v27

    add-long v29, v29, v31

    add-long v35, v35, v29

    and-long v5, v5, v16

    ushr-long v29, v35, v19

    add-long v29, v39, v29

    and-long v31, v35, v16

    add-int/lit8 v14, p1, 0x6

    .line 1272
    aget v14, p0, v14

    move-wide/from16 v35, v0

    int-to-long v0, v14

    and-long v0, v0, v16

    add-int/lit8 v14, p3, 0xb

    move-wide/from16 v37, v0

    .line 1273
    aget v0, p2, v14

    int-to-long v0, v0

    and-long v0, v0, v16

    ushr-long v39, v29, v19

    add-long v0, v0, v39

    and-long v29, v29, v16

    add-int/lit8 v26, p3, 0xc

    move-wide/from16 v39, v0

    .line 1274
    aget v0, p2, v26

    int-to-long v0, v0

    and-long v0, v0, v16

    ushr-long v41, v39, v19

    add-long v0, v0, v41

    and-long v39, v39, v16

    mul-long v41, v37, v22

    move-wide/from16 v43, v0

    add-long v0, v35, v41

    move/from16 v35, v2

    long-to-int v2, v0

    shl-int/lit8 v36, v2, 0x1

    or-int v35, v36, v35

    .line 1278
    aput v35, p2, v7

    ushr-int/lit8 v2, v2, 0x1f

    ushr-long v0, v0, v19

    mul-long v35, v37, v8

    add-long v0, v0, v35

    add-long/2addr v3, v0

    ushr-long v0, v3, v19

    mul-long v35, v37, v10

    add-long v0, v0, v35

    add-long/2addr v5, v0

    and-long v0, v3, v16

    ushr-long v3, v5, v19

    mul-long v35, v37, v12

    add-long v3, v3, v35

    add-long v31, v31, v3

    and-long v3, v5, v16

    ushr-long v5, v31, v19

    mul-long v35, v37, v27

    add-long v5, v5, v35

    add-long v29, v29, v5

    and-long v5, v31, v16

    ushr-long v31, v29, v19

    mul-long v35, v37, v33

    add-long v31, v31, v35

    add-long v39, v39, v31

    and-long v29, v29, v16

    ushr-long v31, v39, v19

    add-long v31, v43, v31

    and-long v35, v39, v16

    add-int/lit8 v7, p1, 0x7

    .line 1293
    aget v7, p0, v7

    move-wide/from16 v39, v0

    int-to-long v0, v7

    and-long v0, v0, v16

    add-int/lit8 v7, p3, 0xd

    move-wide/from16 p0, v0

    .line 1294
    aget v0, p2, v7

    int-to-long v0, v0

    and-long v0, v0, v16

    ushr-long v41, v31, v19

    add-long v0, v0, v41

    and-long v31, v31, v16

    add-int/lit8 v20, p3, 0xe

    move-wide/from16 v41, v0

    .line 1295
    aget v0, p2, v20

    int-to-long v0, v0

    and-long v0, v0, v16

    ushr-long v43, v41, v19

    add-long v0, v0, v43

    and-long v16, v41, v16

    mul-long v22, v22, p0

    move-wide/from16 v41, v0

    add-long v0, v39, v22

    move/from16 v39, v2

    long-to-int v2, v0

    shl-int/lit8 v22, v2, 0x1

    or-int v22, v22, v39

    .line 1299
    aput v22, p2, v25

    ushr-int/lit8 v2, v2, 0x1f

    ushr-long v0, v0, v19

    mul-long v8, v8, p0

    add-long/2addr v0, v8

    add-long/2addr v3, v0

    ushr-long v0, v3, v19

    mul-long v8, p0, v10

    add-long/2addr v0, v8

    add-long/2addr v5, v0

    ushr-long v0, v5, v19

    mul-long v8, p0, v12

    add-long/2addr v0, v8

    add-long v0, v29, v0

    ushr-long v8, v0, v19

    mul-long v10, p0, v27

    add-long/2addr v8, v10

    add-long v8, v35, v8

    ushr-long v10, v8, v19

    mul-long v12, p0, v33

    add-long/2addr v10, v12

    add-long v10, v31, v10

    ushr-long v12, v10, v19

    mul-long v22, p0, v37

    add-long v12, v12, v22

    add-long v12, v16, v12

    ushr-long v16, v12, v19

    move/from16 v27, v14

    move/from16 v25, v15

    add-long v14, v41, v16

    long-to-int v3, v3

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    .line 1311
    aput v2, p2, v25

    ushr-int/lit8 v2, v3, 0x1f

    long-to-int v3, v5

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    .line 1314
    aput v2, p2, v18

    ushr-int/lit8 v2, v3, 0x1f

    long-to-int v0, v0

    shl-int/lit8 v1, v0, 0x1

    or-int/2addr v1, v2

    .line 1317
    aput v1, p2, v24

    ushr-int/lit8 v0, v0, 0x1f

    long-to-int v1, v8

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    .line 1320
    aput v0, p2, v27

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v10

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    .line 1323
    aput v0, p2, v26

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v12

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    .line 1326
    aput v0, p2, v7

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v14

    shl-int/lit8 v2, v1, 0x1

    or-int/2addr v0, v2

    .line 1329
    aput v0, p2, v20

    ushr-int/lit8 v0, v1, 0x1f

    add-int/lit8 v1, p3, 0xf

    .line 1331
    aget v2, p2, v1

    ushr-long v3, v14, v19

    long-to-int v3, v3

    add-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x1

    or-int/2addr v0, v2

    .line 1332
    aput v0, p2, v1

    return-void

    :cond_2b6
    move v7, v8

    goto/16 :goto_d
.end method

.method public static blacklist square([I[I)V
    .registers 49

    const/4 v0, 0x0

    .line 1009
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/16 v6, 0x10

    move v8, v0

    const/4 v7, 0x7

    :goto_e
    add-int/lit8 v9, v7, -0x1

    .line 1017
    aget v7, p0, v7

    int-to-long v10, v7

    and-long/2addr v10, v3

    mul-long/2addr v10, v10

    add-int/lit8 v7, v6, -0x1

    shl-int/lit8 v8, v8, 0x1f

    const/16 v12, 0x21

    ushr-long v13, v10, v12

    long-to-int v13, v13

    or-int/2addr v8, v13

    .line 1019
    aput v8, p1, v7

    add-int/lit8 v6, v6, -0x2

    const/4 v7, 0x1

    ushr-long v13, v10, v7

    long-to-int v8, v13

    .line 1020
    aput v8, p1, v6

    long-to-int v8, v10

    if-gtz v9, :cond_281

    mul-long v9, v1, v1

    shl-int/lit8 v6, v8, 0x1f

    int-to-long v13, v6

    and-long/2addr v13, v3

    ushr-long v11, v9, v12

    or-long/2addr v11, v13

    long-to-int v6, v9

    .line 1028
    aput v6, p1, v0

    const/16 v0, 0x20

    ushr-long v8, v9, v0

    long-to-int v6, v8

    and-int/2addr v6, v7

    .line 1033
    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    const/4 v10, 0x2

    .line 1034
    aget v13, p1, v10

    int-to-long v13, v13

    and-long/2addr v13, v3

    mul-long v15, v8, v1

    add-long/2addr v11, v15

    long-to-int v15, v11

    shl-int/lit8 v16, v15, 0x1

    or-int v6, v16, v6

    .line 1039
    aput v6, p1, v7

    ushr-int/lit8 v6, v15, 0x1f

    ushr-long/2addr v11, v0

    add-long/2addr v13, v11

    .line 1044
    aget v11, p0, v10

    int-to-long v11, v11

    and-long/2addr v11, v3

    const/4 v15, 0x3

    move/from16 v16, v0

    .line 1045
    aget v0, p1, v15

    move-wide/from16 v17, v3

    int-to-long v3, v0

    and-long v3, v3, v17

    const/16 v19, 0x4

    .line 1046
    aget v0, p1, v19

    move/from16 v21, v6

    const/16 v20, 0x7

    int-to-long v5, v0

    and-long v5, v5, v17

    mul-long v22, v11, v1

    add-long v13, v13, v22

    long-to-int v0, v13

    shl-int/lit8 v22, v0, 0x1

    or-int v21, v22, v21

    .line 1050
    aput v21, p1, v10

    ushr-int/lit8 v0, v0, 0x1f

    ushr-long v13, v13, v16

    mul-long v21, v11, v8

    add-long v13, v13, v21

    add-long/2addr v3, v13

    ushr-long v13, v3, v16

    add-long/2addr v5, v13

    and-long v3, v3, v17

    .line 1057
    aget v10, p0, v15

    int-to-long v13, v10

    and-long v13, v13, v17

    const/4 v10, 0x5

    move/from16 v21, v7

    .line 1058
    aget v7, p1, v10

    move-wide/from16 v22, v11

    move v12, v10

    int-to-long v10, v7

    and-long v10, v10, v17

    ushr-long v24, v5, v16

    add-long v10, v10, v24

    and-long v5, v5, v17

    const/16 v24, 0x6

    .line 1059
    aget v7, p1, v24

    move-wide/from16 v25, v13

    move v14, v12

    int-to-long v12, v7

    and-long v12, v12, v17

    ushr-long v27, v10, v16

    add-long v12, v12, v27

    and-long v10, v10, v17

    mul-long v27, v25, v1

    add-long v3, v3, v27

    long-to-int v7, v3

    shl-int/lit8 v27, v7, 0x1

    or-int v0, v27, v0

    .line 1063
    aput v0, p1, v15

    ushr-int/lit8 v0, v7, 0x1f

    ushr-long v3, v3, v16

    mul-long v27, v25, v8

    add-long v3, v3, v27

    add-long/2addr v5, v3

    ushr-long v3, v5, v16

    mul-long v27, v25, v22

    add-long v3, v3, v27

    add-long/2addr v10, v3

    and-long v3, v5, v17

    ushr-long v5, v10, v16

    add-long/2addr v12, v5

    and-long v5, v10, v17

    .line 1072
    aget v7, p0, v19

    int-to-long v10, v7

    and-long v10, v10, v17

    .line 1073
    aget v7, p1, v20

    move/from16 v27, v14

    int-to-long v14, v7

    and-long v14, v14, v17

    ushr-long v28, v12, v16

    add-long v14, v14, v28

    and-long v12, v12, v17

    const/16 v28, 0x8

    .line 1074
    aget v7, p1, v28

    move-wide/from16 v29, v1

    move v2, v0

    int-to-long v0, v7

    and-long v0, v0, v17

    ushr-long v31, v14, v16

    add-long v0, v0, v31

    and-long v14, v14, v17

    mul-long v31, v10, v29

    add-long v3, v3, v31

    long-to-int v7, v3

    shl-int/lit8 v31, v7, 0x1

    or-int v2, v31, v2

    .line 1078
    aput v2, p1, v19

    ushr-int/lit8 v2, v7, 0x1f

    ushr-long v3, v3, v16

    mul-long v31, v10, v8

    add-long v3, v3, v31

    add-long/2addr v5, v3

    ushr-long v3, v5, v16

    mul-long v31, v10, v22

    add-long v3, v3, v31

    add-long/2addr v12, v3

    and-long v3, v5, v17

    ushr-long v5, v12, v16

    mul-long v31, v10, v25

    add-long v5, v5, v31

    add-long/2addr v14, v5

    and-long v5, v12, v17

    ushr-long v12, v14, v16

    add-long/2addr v0, v12

    and-long v12, v14, v17

    .line 1089
    aget v7, p0, v27

    int-to-long v14, v7

    and-long v14, v14, v17

    const/16 v19, 0x9

    .line 1090
    aget v7, p1, v19

    move-wide/from16 v31, v0

    int-to-long v0, v7

    and-long v0, v0, v17

    ushr-long v33, v31, v16

    add-long v0, v0, v33

    and-long v31, v31, v17

    const/16 v33, 0xa

    .line 1091
    aget v7, p1, v33

    move-wide/from16 v34, v0

    int-to-long v0, v7

    and-long v0, v0, v17

    ushr-long v36, v34, v16

    add-long v0, v0, v36

    and-long v34, v34, v17

    mul-long v36, v14, v29

    add-long v3, v3, v36

    long-to-int v7, v3

    shl-int/lit8 v36, v7, 0x1

    or-int v2, v36, v2

    .line 1095
    aput v2, p1, v27

    ushr-int/lit8 v2, v7, 0x1f

    ushr-long v3, v3, v16

    mul-long v36, v14, v8

    add-long v3, v3, v36

    add-long/2addr v5, v3

    ushr-long v3, v5, v16

    mul-long v36, v14, v22

    add-long v3, v3, v36

    add-long/2addr v12, v3

    and-long v3, v5, v17

    ushr-long v5, v12, v16

    mul-long v36, v14, v25

    add-long v5, v5, v36

    add-long v31, v31, v5

    and-long v5, v12, v17

    ushr-long v12, v31, v16

    mul-long v36, v14, v10

    add-long v12, v12, v36

    add-long v34, v34, v12

    and-long v12, v31, v17

    ushr-long v31, v34, v16

    add-long v0, v0, v31

    and-long v31, v34, v17

    .line 1108
    aget v7, p0, v24

    move-wide/from16 v34, v0

    int-to-long v0, v7

    and-long v0, v0, v17

    const/16 v27, 0xb

    .line 1109
    aget v7, p1, v27

    move-wide/from16 v36, v0

    int-to-long v0, v7

    and-long v0, v0, v17

    ushr-long v38, v34, v16

    add-long v0, v0, v38

    and-long v34, v34, v17

    const/16 v38, 0xc

    .line 1110
    aget v7, p1, v38

    move-wide/from16 v39, v0

    int-to-long v0, v7

    and-long v0, v0, v17

    ushr-long v41, v39, v16

    add-long v0, v0, v41

    and-long v39, v39, v17

    mul-long v41, v36, v29

    add-long v3, v3, v41

    long-to-int v7, v3

    shl-int/lit8 v41, v7, 0x1

    or-int v2, v41, v2

    .line 1114
    aput v2, p1, v24

    ushr-int/lit8 v2, v7, 0x1f

    ushr-long v3, v3, v16

    mul-long v41, v36, v8

    add-long v3, v3, v41

    add-long/2addr v5, v3

    ushr-long v3, v5, v16

    mul-long v41, v36, v22

    add-long v3, v3, v41

    add-long/2addr v12, v3

    and-long v3, v5, v17

    ushr-long v5, v12, v16

    mul-long v41, v36, v25

    add-long v5, v5, v41

    add-long v31, v31, v5

    and-long v5, v12, v17

    ushr-long v12, v31, v16

    mul-long v41, v36, v10

    add-long v12, v12, v41

    add-long v34, v34, v12

    and-long v12, v31, v17

    ushr-long v31, v34, v16

    mul-long v41, v36, v14

    add-long v31, v31, v41

    add-long v39, v39, v31

    and-long v31, v34, v17

    ushr-long v34, v39, v16

    add-long v0, v0, v34

    and-long v34, v39, v17

    .line 1129
    aget v7, p0, v20

    move-wide/from16 v39, v0

    int-to-long v0, v7

    and-long v0, v0, v17

    const/16 p0, 0xd

    .line 1130
    aget v7, p1, p0

    move-wide/from16 v41, v0

    int-to-long v0, v7

    and-long v0, v0, v17

    ushr-long v43, v39, v16

    add-long v0, v0, v43

    and-long v39, v39, v17

    const/16 v24, 0xe

    .line 1131
    aget v7, p1, v24

    move-wide/from16 v43, v0

    int-to-long v0, v7

    and-long v0, v0, v17

    ushr-long v45, v43, v16

    add-long v0, v0, v45

    and-long v17, v43, v17

    mul-long v29, v29, v41

    add-long v3, v3, v29

    long-to-int v7, v3

    shl-int/lit8 v29, v7, 0x1

    or-int v2, v29, v2

    .line 1135
    aput v2, p1, v20

    ushr-int/lit8 v2, v7, 0x1f

    ushr-long v3, v3, v16

    mul-long v7, v41, v8

    add-long/2addr v3, v7

    add-long/2addr v5, v3

    ushr-long v3, v5, v16

    mul-long v7, v41, v22

    add-long/2addr v3, v7

    add-long/2addr v12, v3

    ushr-long v3, v12, v16

    mul-long v7, v41, v25

    add-long/2addr v3, v7

    add-long v3, v31, v3

    ushr-long v7, v3, v16

    mul-long v9, v41, v10

    add-long/2addr v7, v9

    add-long v7, v34, v7

    ushr-long v9, v7, v16

    mul-long v14, v14, v41

    add-long/2addr v9, v14

    add-long v9, v39, v9

    ushr-long v14, v9, v16

    mul-long v22, v41, v36

    add-long v14, v14, v22

    add-long v14, v17, v14

    ushr-long v17, v14, v16

    add-long v0, v0, v17

    long-to-int v5, v5

    shl-int/lit8 v6, v5, 0x1

    or-int/2addr v2, v6

    .line 1147
    aput v2, p1, v28

    ushr-int/lit8 v2, v5, 0x1f

    long-to-int v5, v12

    shl-int/lit8 v6, v5, 0x1

    or-int/2addr v2, v6

    .line 1150
    aput v2, p1, v19

    ushr-int/lit8 v2, v5, 0x1f

    long-to-int v3, v3

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    .line 1153
    aput v2, p1, v33

    ushr-int/lit8 v2, v3, 0x1f

    long-to-int v3, v7

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    .line 1156
    aput v2, p1, v27

    ushr-int/lit8 v2, v3, 0x1f

    long-to-int v3, v9

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    .line 1159
    aput v2, p1, v38

    ushr-int/lit8 v2, v3, 0x1f

    long-to-int v3, v14

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    .line 1162
    aput v2, p1, p0

    ushr-int/lit8 v2, v3, 0x1f

    long-to-int v3, v0

    shl-int/lit8 v4, v3, 0x1

    or-int/2addr v2, v4

    .line 1165
    aput v2, p1, v24

    ushr-int/lit8 v2, v3, 0x1f

    const/16 v3, 0xf

    .line 1167
    aget v4, p1, v3

    ushr-long v0, v0, v16

    long-to-int v0, v0

    add-int/2addr v4, v0

    shl-int/lit8 v0, v4, 0x1

    or-int/2addr v0, v2

    .line 1168
    aput v0, p1, v3

    return-void

    :cond_281
    move v7, v9

    goto/16 :goto_e
.end method

.method public static blacklist sub([II[II[II)I
    .registers 15

    .line 1368
    aget v0, p0, p1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v4, v2

    sub-long/2addr v0, v4

    long-to-int v4, v0

    .line 1369
    aput v4, p4, p5

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x1

    .line 1371
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x1

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x1

    long-to-int v6, v0

    .line 1372
    aput v6, p4, v5

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x2

    .line 1374
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x2

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x2

    long-to-int v6, v0

    .line 1375
    aput v6, p4, v5

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x3

    .line 1377
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x3

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x3

    long-to-int v6, v0

    .line 1378
    aput v6, p4, v5

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x4

    .line 1380
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x4

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x4

    long-to-int v6, v0

    .line 1381
    aput v6, p4, v5

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x5

    .line 1383
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x5

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x5

    long-to-int v6, v0

    .line 1384
    aput v6, p4, v5

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x6

    .line 1386
    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x6

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    add-int/lit8 v5, p5, 0x6

    long-to-int v6, v0

    .line 1387
    aput v6, p4, v5

    shr-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    .line 1389
    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-int/lit8 p3, p3, 0x7

    aget p2, p2, p3

    int-to-long p2, p2

    and-long/2addr p2, v2

    sub-long/2addr p0, p2

    add-long/2addr v0, p0

    add-int/lit8 p5, p5, 0x7

    long-to-int p0, v0

    .line 1390
    aput p0, p4, p5

    shr-long p0, v0, v4

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist sub([I[I[I)I
    .registers 13

    const/4 v0, 0x0

    .line 1338
    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    long-to-int v5, v1

    .line 1339
    aput v5, p2, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const/4 v5, 0x1

    .line 1341
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1342
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x2

    .line 1344
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1345
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x3

    .line 1347
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1348
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x4

    .line 1350
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1351
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x5

    .line 1353
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1354
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x6

    .line 1356
    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1357
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x7

    .line 1359
    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    sub-long/2addr v6, p0

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 1360
    aput p0, p2, v5

    shr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist subBothFrom([I[I[I)I
    .registers 13

    const/4 v0, 0x0

    .line 1398
    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p0, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    long-to-int v5, v1

    .line 1399
    aput v5, p2, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const/4 v5, 0x1

    .line 1401
    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1402
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x2

    .line 1404
    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1405
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x3

    .line 1407
    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1408
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x4

    .line 1410
    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1411
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x5

    .line 1413
    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1414
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x6

    .line 1416
    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1417
    aput v6, p2, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x7

    .line 1419
    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget p0, p0, v5

    int-to-long v8, p0

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    sub-long/2addr v6, p0

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 1420
    aput p0, p2, v5

    shr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist subFrom([II[II)I
    .registers 14

    .line 1488
    aget v0, p2, p3

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget v4, p0, p1

    int-to-long v4, v4

    and-long/2addr v4, v2

    sub-long/2addr v0, v4

    long-to-int v4, v0

    .line 1489
    aput v4, p2, p3

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    add-int/lit8 v5, p3, 0x1

    .line 1491
    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p1, 0x1

    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    long-to-int v6, v0

    .line 1492
    aput v6, p2, v5

    shr-long/2addr v0, v4

    add-int/lit8 v5, p3, 0x2

    .line 1494
    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p1, 0x2

    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    long-to-int v6, v0

    .line 1495
    aput v6, p2, v5

    shr-long/2addr v0, v4

    add-int/lit8 v5, p3, 0x3

    .line 1497
    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p1, 0x3

    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    long-to-int v6, v0

    .line 1498
    aput v6, p2, v5

    shr-long/2addr v0, v4

    add-int/lit8 v5, p3, 0x4

    .line 1500
    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p1, 0x4

    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    long-to-int v6, v0

    .line 1501
    aput v6, p2, v5

    shr-long/2addr v0, v4

    add-int/lit8 v5, p3, 0x5

    .line 1503
    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p1, 0x5

    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    long-to-int v6, v0

    .line 1504
    aput v6, p2, v5

    shr-long/2addr v0, v4

    add-int/lit8 v5, p3, 0x6

    .line 1506
    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p1, 0x6

    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    long-to-int v6, v0

    .line 1507
    aput v6, p2, v5

    shr-long/2addr v0, v4

    add-int/lit8 p3, p3, 0x7

    .line 1509
    aget v5, p2, p3

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 p1, p1, 0x7

    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    sub-long/2addr v5, p0

    add-long/2addr v0, v5

    long-to-int p0, v0

    .line 1510
    aput p0, p2, p3

    shr-long p0, v0, v4

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist subFrom([II[III)I
    .registers 14

    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 1518
    aget p4, p2, p3

    int-to-long v4, p4

    and-long/2addr v4, v2

    aget p4, p0, p1

    int-to-long v6, p4

    and-long/2addr v6, v2

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    long-to-int p4, v0

    .line 1519
    aput p4, p2, p3

    const/16 p4, 0x20

    shr-long/2addr v0, p4

    add-int/lit8 v4, p3, 0x1

    .line 1521
    aget v5, p2, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p1, 0x1

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    long-to-int v5, v0

    .line 1522
    aput v5, p2, v4

    shr-long/2addr v0, p4

    add-int/lit8 v4, p3, 0x2

    .line 1524
    aget v5, p2, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p1, 0x2

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    long-to-int v5, v0

    .line 1525
    aput v5, p2, v4

    shr-long/2addr v0, p4

    add-int/lit8 v4, p3, 0x3

    .line 1527
    aget v5, p2, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p1, 0x3

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    long-to-int v5, v0

    .line 1528
    aput v5, p2, v4

    shr-long/2addr v0, p4

    add-int/lit8 v4, p3, 0x4

    .line 1530
    aget v5, p2, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p1, 0x4

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    long-to-int v5, v0

    .line 1531
    aput v5, p2, v4

    shr-long/2addr v0, p4

    add-int/lit8 v4, p3, 0x5

    .line 1533
    aget v5, p2, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p1, 0x5

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    long-to-int v5, v0

    .line 1534
    aput v5, p2, v4

    shr-long/2addr v0, p4

    add-int/lit8 v4, p3, 0x6

    .line 1536
    aget v5, p2, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p1, 0x6

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    long-to-int v5, v0

    .line 1537
    aput v5, p2, v4

    shr-long/2addr v0, p4

    add-int/lit8 p3, p3, 0x7

    .line 1539
    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 p1, p1, 0x7

    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    sub-long/2addr v4, p0

    add-long/2addr v0, v4

    long-to-int p0, v0

    .line 1540
    aput p0, p2, p3

    shr-long p0, v0, p4

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist subFrom([I[I)I
    .registers 12

    const/4 v0, 0x0

    .line 1428
    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p0, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    long-to-int v5, v1

    .line 1429
    aput v5, p1, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const/4 v5, 0x1

    .line 1431
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1432
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x2

    .line 1434
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1435
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x3

    .line 1437
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1438
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x4

    .line 1440
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1441
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x5

    .line 1443
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1444
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x6

    .line 1446
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v1, v6

    long-to-int v6, v1

    .line 1447
    aput v6, p1, v5

    shr-long/2addr v1, v0

    const/4 v5, 0x7

    .line 1449
    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget p0, p0, v5

    int-to-long v8, p0

    and-long/2addr v3, v8

    sub-long/2addr v6, v3

    add-long/2addr v1, v6

    long-to-int p0, v1

    .line 1450
    aput p0, p1, v5

    shr-long p0, v1, v0

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist subFrom([I[II)I
    .registers 12

    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 p2, 0x0

    .line 1458
    aget v4, p1, p2

    int-to-long v4, v4

    and-long/2addr v4, v2

    aget v6, p0, p2

    int-to-long v6, v6

    and-long/2addr v6, v2

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    long-to-int v4, v0

    .line 1459
    aput v4, p1, p2

    const/16 p2, 0x20

    shr-long/2addr v0, p2

    const/4 v4, 0x1

    .line 1461
    aget v5, p1, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget v7, p0, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    long-to-int v5, v0

    .line 1462
    aput v5, p1, v4

    shr-long/2addr v0, p2

    const/4 v4, 0x2

    .line 1464
    aget v5, p1, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget v7, p0, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    long-to-int v5, v0

    .line 1465
    aput v5, p1, v4

    shr-long/2addr v0, p2

    const/4 v4, 0x3

    .line 1467
    aget v5, p1, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget v7, p0, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    long-to-int v5, v0

    .line 1468
    aput v5, p1, v4

    shr-long/2addr v0, p2

    const/4 v4, 0x4

    .line 1470
    aget v5, p1, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget v7, p0, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    long-to-int v5, v0

    .line 1471
    aput v5, p1, v4

    shr-long/2addr v0, p2

    const/4 v4, 0x5

    .line 1473
    aget v5, p1, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget v7, p0, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    long-to-int v5, v0

    .line 1474
    aput v5, p1, v4

    shr-long/2addr v0, p2

    const/4 v4, 0x6

    .line 1476
    aget v5, p1, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget v7, p0, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    long-to-int v5, v0

    .line 1477
    aput v5, p1, v4

    shr-long/2addr v0, p2

    const/4 v4, 0x7

    .line 1479
    aget v5, p1, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget p0, p0, v4

    int-to-long v7, p0

    and-long/2addr v2, v7

    sub-long/2addr v5, v2

    add-long/2addr v0, v5

    long-to-int p0, v0

    .line 1480
    aput p0, p1, v4

    shr-long p0, v0, p2

    long-to-int p0, p0

    return p0
.end method

.method public static blacklist toBigInteger([I)Ljava/math/BigInteger;
    .registers 5

    const/16 v0, 0x20

    .line 1547
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_5
    const/16 v2, 0x8

    if-ge v1, v2, :cond_17

    .line 1550
    aget v2, p0, v1

    if-eqz v2, :cond_14

    rsub-int/lit8 v3, v1, 0x7

    shl-int/lit8 v3, v3, 0x2

    .line 1553
    invoke-static {v2, v0, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1556
    :cond_17
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static blacklist toBigInteger64([J)Ljava/math/BigInteger;
    .registers 7

    const/16 v0, 0x20

    .line 1561
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1a

    .line 1564
    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_17

    rsub-int/lit8 v4, v1, 0x3

    shl-int/lit8 v4, v4, 0x3

    .line 1567
    invoke-static {v2, v3, v0, v4}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1570
    :cond_1a
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static blacklist zero([I)V
    .registers 3

    const/4 v0, 0x0

    .line 1575
    aput v0, p0, v0

    const/4 v1, 0x1

    .line 1576
    aput v0, p0, v1

    const/4 v1, 0x2

    .line 1577
    aput v0, p0, v1

    const/4 v1, 0x3

    .line 1578
    aput v0, p0, v1

    const/4 v1, 0x4

    .line 1579
    aput v0, p0, v1

    const/4 v1, 0x5

    .line 1580
    aput v0, p0, v1

    const/4 v1, 0x6

    .line 1581
    aput v0, p0, v1

    const/4 v1, 0x7

    .line 1582
    aput v0, p0, v1

    return-void
.end method
