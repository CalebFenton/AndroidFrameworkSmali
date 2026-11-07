.class public abstract Lcom/android/internal/org/bouncycastle/math/raw/Nat224;
.super Ljava/lang/Object;
.source "Nat224.java"


# static fields
.field private static final blacklist M:J = 0xffffffffL


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist add([II[II[II)I
    .registers 16
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .line 44
    const-wide/16 v0, 0x0

    .line 45
    .local v0, "c":J
    add-int/lit8 v2, p1, 0x0

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-int/lit8 v6, p3, 0x0

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    add-long/2addr v2, v6

    add-long/2addr v0, v2

    .line 46
    add-int/lit8 v2, p5, 0x0

    long-to-int v3, v0

    aput v3, p4, v2

    .line 47
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 48
    add-int/lit8 v3, p1, 0x1

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x1

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 49
    add-int/lit8 v3, p5, 0x1

    long-to-int v6, v0

    aput v6, p4, v3

    .line 50
    ushr-long/2addr v0, v2

    .line 51
    add-int/lit8 v3, p1, 0x2

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x2

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 52
    add-int/lit8 v3, p5, 0x2

    long-to-int v6, v0

    aput v6, p4, v3

    .line 53
    ushr-long/2addr v0, v2

    .line 54
    add-int/lit8 v3, p1, 0x3

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x3

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 55
    add-int/lit8 v3, p5, 0x3

    long-to-int v6, v0

    aput v6, p4, v3

    .line 56
    ushr-long/2addr v0, v2

    .line 57
    add-int/lit8 v3, p1, 0x4

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x4

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 58
    add-int/lit8 v3, p5, 0x4

    long-to-int v6, v0

    aput v6, p4, v3

    .line 59
    ushr-long/2addr v0, v2

    .line 60
    add-int/lit8 v3, p1, 0x5

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x5

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 61
    add-int/lit8 v3, p5, 0x5

    long-to-int v6, v0

    aput v6, p4, v3

    .line 62
    ushr-long/2addr v0, v2

    .line 63
    add-int/lit8 v3, p1, 0x6

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x6

    aget v3, p2, v3

    int-to-long v8, v3

    and-long v3, v8, v4

    add-long/2addr v6, v3

    add-long/2addr v0, v6

    .line 64
    add-int/lit8 v3, p5, 0x6

    long-to-int v4, v0

    aput v4, p4, v3

    .line 65
    ushr-long/2addr v0, v2

    .line 66
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist add([I[I[I)I
    .registers 14
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 17
    const-wide/16 v0, 0x0

    .line 18
    .local v0, "c":J
    const/4 v2, 0x0

    aget v3, p0, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    add-long/2addr v0, v3

    .line 19
    long-to-int v3, v0

    aput v3, p2, v2

    .line 20
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 21
    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 22
    long-to-int v4, v0

    aput v4, p2, v3

    .line 23
    ushr-long/2addr v0, v2

    .line 24
    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 25
    long-to-int v4, v0

    aput v4, p2, v3

    .line 26
    ushr-long/2addr v0, v2

    .line 27
    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 28
    long-to-int v4, v0

    aput v4, p2, v3

    .line 29
    ushr-long/2addr v0, v2

    .line 30
    const/4 v3, 0x4

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 31
    long-to-int v4, v0

    aput v4, p2, v3

    .line 32
    ushr-long/2addr v0, v2

    .line 33
    const/4 v3, 0x5

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 34
    long-to-int v4, v0

    aput v4, p2, v3

    .line 35
    ushr-long/2addr v0, v2

    .line 36
    const/4 v3, 0x6

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    add-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 37
    long-to-int v4, v0

    aput v4, p2, v3

    .line 38
    ushr-long/2addr v0, v2

    .line 39
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addBothTo([II[II[II)I
    .registers 16
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .line 98
    const-wide/16 v0, 0x0

    .line 99
    .local v0, "c":J
    add-int/lit8 v2, p1, 0x0

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-int/lit8 v6, p3, 0x0

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    add-long/2addr v2, v6

    add-int/lit8 v6, p5, 0x0

    aget v6, p4, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    add-long/2addr v2, v6

    add-long/2addr v0, v2

    .line 100
    add-int/lit8 v2, p5, 0x0

    long-to-int v3, v0

    aput v3, p4, v2

    .line 101
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 102
    add-int/lit8 v3, p1, 0x1

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x1

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-int/lit8 v3, p5, 0x1

    aget v3, p4, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 103
    add-int/lit8 v3, p5, 0x1

    long-to-int v6, v0

    aput v6, p4, v3

    .line 104
    ushr-long/2addr v0, v2

    .line 105
    add-int/lit8 v3, p1, 0x2

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x2

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-int/lit8 v3, p5, 0x2

    aget v3, p4, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 106
    add-int/lit8 v3, p5, 0x2

    long-to-int v6, v0

    aput v6, p4, v3

    .line 107
    ushr-long/2addr v0, v2

    .line 108
    add-int/lit8 v3, p1, 0x3

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x3

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-int/lit8 v3, p5, 0x3

    aget v3, p4, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 109
    add-int/lit8 v3, p5, 0x3

    long-to-int v6, v0

    aput v6, p4, v3

    .line 110
    ushr-long/2addr v0, v2

    .line 111
    add-int/lit8 v3, p1, 0x4

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x4

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-int/lit8 v3, p5, 0x4

    aget v3, p4, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 112
    add-int/lit8 v3, p5, 0x4

    long-to-int v6, v0

    aput v6, p4, v3

    .line 113
    ushr-long/2addr v0, v2

    .line 114
    add-int/lit8 v3, p1, 0x5

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x5

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-int/lit8 v3, p5, 0x5

    aget v3, p4, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 115
    add-int/lit8 v3, p5, 0x5

    long-to-int v6, v0

    aput v6, p4, v3

    .line 116
    ushr-long/2addr v0, v2

    .line 117
    add-int/lit8 v3, p1, 0x6

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x6

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-int/lit8 v3, p5, 0x6

    aget v3, p4, v3

    int-to-long v8, v3

    and-long v3, v8, v4

    add-long/2addr v6, v3

    add-long/2addr v0, v6

    .line 118
    add-int/lit8 v3, p5, 0x6

    long-to-int v4, v0

    aput v4, p4, v3

    .line 119
    ushr-long/2addr v0, v2

    .line 120
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addBothTo([I[I[I)I
    .registers 14
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 71
    const-wide/16 v0, 0x0

    .line 72
    .local v0, "c":J
    const/4 v2, 0x0

    aget v3, p0, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    add-long/2addr v0, v3

    .line 73
    long-to-int v3, v0

    aput v3, p2, v2

    .line 74
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 75
    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    aget v4, p2, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 76
    long-to-int v4, v0

    aput v4, p2, v3

    .line 77
    ushr-long/2addr v0, v2

    .line 78
    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    aget v4, p2, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 79
    long-to-int v4, v0

    aput v4, p2, v3

    .line 80
    ushr-long/2addr v0, v2

    .line 81
    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    aget v4, p2, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 82
    long-to-int v4, v0

    aput v4, p2, v3

    .line 83
    ushr-long/2addr v0, v2

    .line 84
    const/4 v3, 0x4

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    aget v4, p2, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 85
    long-to-int v4, v0

    aput v4, p2, v3

    .line 86
    ushr-long/2addr v0, v2

    .line 87
    const/4 v3, 0x5

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    aget v4, p2, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 88
    long-to-int v4, v0

    aput v4, p2, v3

    .line 89
    ushr-long/2addr v0, v2

    .line 90
    const/4 v3, 0x6

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    aget v4, p2, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    add-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 91
    long-to-int v4, v0

    aput v4, p2, v3

    .line 92
    ushr-long/2addr v0, v2

    .line 93
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addTo([II[III)I
    .registers 14
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .param p4, "cIn"    # I

    .line 179
    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 180
    .local v0, "c":J
    add-int/lit8 v4, p1, 0x0

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x0

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 181
    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    .line 182
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 183
    add-int/lit8 v5, p1, 0x1

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x1

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 184
    add-int/lit8 v5, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v5

    .line 185
    ushr-long/2addr v0, v4

    .line 186
    add-int/lit8 v5, p1, 0x2

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x2

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 187
    add-int/lit8 v5, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v5

    .line 188
    ushr-long/2addr v0, v4

    .line 189
    add-int/lit8 v5, p1, 0x3

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x3

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 190
    add-int/lit8 v5, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v5

    .line 191
    ushr-long/2addr v0, v4

    .line 192
    add-int/lit8 v5, p1, 0x4

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x4

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 193
    add-int/lit8 v5, p3, 0x4

    long-to-int v6, v0

    aput v6, p2, v5

    .line 194
    ushr-long/2addr v0, v4

    .line 195
    add-int/lit8 v5, p1, 0x5

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x5

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 196
    add-int/lit8 v5, p3, 0x5

    long-to-int v6, v0

    aput v6, p2, v5

    .line 197
    ushr-long/2addr v0, v4

    .line 198
    add-int/lit8 v5, p1, 0x6

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x6

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v2, v7

    add-long/2addr v5, v2

    add-long/2addr v0, v5

    .line 199
    add-int/lit8 v2, p3, 0x6

    long-to-int v3, v0

    aput v3, p2, v2

    .line 200
    ushr-long/2addr v0, v4

    .line 201
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addTo([I[I)I
    .registers 13
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 125
    const-wide/16 v0, 0x0

    .line 126
    .local v0, "c":J
    const/4 v2, 0x0

    aget v3, p0, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    add-long/2addr v0, v3

    .line 127
    long-to-int v3, v0

    aput v3, p1, v2

    .line 128
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 129
    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 130
    long-to-int v4, v0

    aput v4, p1, v3

    .line 131
    ushr-long/2addr v0, v2

    .line 132
    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 133
    long-to-int v4, v0

    aput v4, p1, v3

    .line 134
    ushr-long/2addr v0, v2

    .line 135
    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 136
    long-to-int v4, v0

    aput v4, p1, v3

    .line 137
    ushr-long/2addr v0, v2

    .line 138
    const/4 v3, 0x4

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 139
    long-to-int v4, v0

    aput v4, p1, v3

    .line 140
    ushr-long/2addr v0, v2

    .line 141
    const/4 v3, 0x5

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 142
    long-to-int v4, v0

    aput v4, p1, v3

    .line 143
    ushr-long/2addr v0, v2

    .line 144
    const/4 v3, 0x6

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    add-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 145
    long-to-int v4, v0

    aput v4, p1, v3

    .line 146
    ushr-long/2addr v0, v2

    .line 147
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addTo([I[II)I
    .registers 13
    .param p0, "x"    # [I
    .param p1, "z"    # [I
    .param p2, "cIn"    # I

    .line 152
    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 153
    .local v0, "c":J
    const/4 v4, 0x0

    aget v5, p0, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget v7, p1, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 154
    long-to-int v5, v0

    aput v5, p1, v4

    .line 155
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 156
    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 157
    long-to-int v6, v0

    aput v6, p1, v5

    .line 158
    ushr-long/2addr v0, v4

    .line 159
    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 160
    long-to-int v6, v0

    aput v6, p1, v5

    .line 161
    ushr-long/2addr v0, v4

    .line 162
    const/4 v5, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 163
    long-to-int v6, v0

    aput v6, p1, v5

    .line 164
    ushr-long/2addr v0, v4

    .line 165
    const/4 v5, 0x4

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 166
    long-to-int v6, v0

    aput v6, p1, v5

    .line 167
    ushr-long/2addr v0, v4

    .line 168
    const/4 v5, 0x5

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 169
    long-to-int v6, v0

    aput v6, p1, v5

    .line 170
    ushr-long/2addr v0, v4

    .line 171
    const/4 v5, 0x6

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v2, v8

    add-long/2addr v6, v2

    add-long/2addr v0, v6

    .line 172
    long-to-int v2, v0

    aput v2, p1, v5

    .line 173
    ushr-long/2addr v0, v4

    .line 174
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addToEachOther([II[II)I
    .registers 14
    .param p0, "u"    # [I
    .param p1, "uOff"    # I
    .param p2, "v"    # [I
    .param p3, "vOff"    # I

    .line 206
    const-wide/16 v0, 0x0

    .line 207
    .local v0, "c":J
    add-int/lit8 v2, p1, 0x0

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-int/lit8 v6, p3, 0x0

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    add-long/2addr v2, v6

    add-long/2addr v0, v2

    .line 208
    add-int/lit8 v2, p1, 0x0

    long-to-int v3, v0

    aput v3, p0, v2

    .line 209
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 210
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 211
    add-int/lit8 v3, p1, 0x1

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x1

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 212
    add-int/lit8 v3, p1, 0x1

    long-to-int v6, v0

    aput v6, p0, v3

    .line 213
    add-int/lit8 v3, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v3

    .line 214
    ushr-long/2addr v0, v2

    .line 215
    add-int/lit8 v3, p1, 0x2

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x2

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 216
    add-int/lit8 v3, p1, 0x2

    long-to-int v6, v0

    aput v6, p0, v3

    .line 217
    add-int/lit8 v3, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v3

    .line 218
    ushr-long/2addr v0, v2

    .line 219
    add-int/lit8 v3, p1, 0x3

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x3

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 220
    add-int/lit8 v3, p1, 0x3

    long-to-int v6, v0

    aput v6, p0, v3

    .line 221
    add-int/lit8 v3, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v3

    .line 222
    ushr-long/2addr v0, v2

    .line 223
    add-int/lit8 v3, p1, 0x4

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x4

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 224
    add-int/lit8 v3, p1, 0x4

    long-to-int v6, v0

    aput v6, p0, v3

    .line 225
    add-int/lit8 v3, p3, 0x4

    long-to-int v6, v0

    aput v6, p2, v3

    .line 226
    ushr-long/2addr v0, v2

    .line 227
    add-int/lit8 v3, p1, 0x5

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x5

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 228
    add-int/lit8 v3, p1, 0x5

    long-to-int v6, v0

    aput v6, p0, v3

    .line 229
    add-int/lit8 v3, p3, 0x5

    long-to-int v6, v0

    aput v6, p2, v3

    .line 230
    ushr-long/2addr v0, v2

    .line 231
    add-int/lit8 v3, p1, 0x6

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x6

    aget v3, p2, v3

    int-to-long v8, v3

    and-long v3, v8, v4

    add-long/2addr v6, v3

    add-long/2addr v0, v6

    .line 232
    add-int/lit8 v3, p1, 0x6

    long-to-int v4, v0

    aput v4, p0, v3

    .line 233
    add-int/lit8 v3, p3, 0x6

    long-to-int v4, v0

    aput v4, p2, v3

    .line 234
    ushr-long/2addr v0, v2

    .line 235
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist copy([II[II)V
    .registers 6
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .line 251
    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v1, p1, 0x0

    aget v1, p0, v1

    aput v1, p2, v0

    .line 252
    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    aput v1, p2, v0

    .line 253
    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, p1, 0x2

    aget v1, p0, v1

    aput v1, p2, v0

    .line 254
    add-int/lit8 v0, p3, 0x3

    add-int/lit8 v1, p1, 0x3

    aget v1, p0, v1

    aput v1, p2, v0

    .line 255
    add-int/lit8 v0, p3, 0x4

    add-int/lit8 v1, p1, 0x4

    aget v1, p0, v1

    aput v1, p2, v0

    .line 256
    add-int/lit8 v0, p3, 0x5

    add-int/lit8 v1, p1, 0x5

    aget v1, p0, v1

    aput v1, p2, v0

    .line 257
    add-int/lit8 v0, p3, 0x6

    add-int/lit8 v1, p1, 0x6

    aget v1, p0, v1

    aput v1, p2, v0

    .line 258
    return-void
.end method

.method public static blacklist copy([I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 240
    const/4 v0, 0x0

    aget v1, p0, v0

    aput v1, p1, v0

    .line 241
    const/4 v0, 0x1

    aget v1, p0, v0

    aput v1, p1, v0

    .line 242
    const/4 v0, 0x2

    aget v1, p0, v0

    aput v1, p1, v0

    .line 243
    const/4 v0, 0x3

    aget v1, p0, v0

    aput v1, p1, v0

    .line 244
    const/4 v0, 0x4

    aget v1, p0, v0

    aput v1, p1, v0

    .line 245
    const/4 v0, 0x5

    aget v1, p0, v0

    aput v1, p1, v0

    .line 246
    const/4 v0, 0x6

    aget v1, p0, v0

    aput v1, p1, v0

    .line 247
    return-void
.end method

.method public static blacklist create()[I
    .registers 1

    .line 262
    const/4 v0, 0x7

    new-array v0, v0, [I

    return-object v0
.end method

.method public static blacklist createExt()[I
    .registers 1

    .line 267
    const/16 v0, 0xe

    new-array v0, v0, [I

    return-object v0
.end method

.method public static blacklist diff([II[II[II)Z
    .registers 8
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .line 272
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->gte([II[II)Z

    move-result v0

    .line 273
    .local v0, "pos":Z
    if-eqz v0, :cond_a

    .line 275
    invoke-static/range {p0 .. p5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->sub([II[II[II)I

    goto :goto_19

    .line 279
    :cond_a
    move-object v1, p2

    move-object p2, p0

    move-object p0, v1

    move v1, p3

    move p3, p1

    move p1, v1

    .local p0, "y":[I
    .local p1, "yOff":I
    .local p2, "x":[I
    .local p3, "xOff":I
    invoke-static/range {p0 .. p5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->sub([II[II[II)I

    move-object v1, p2

    move-object p2, p0

    move-object p0, v1

    move v1, p3

    move p3, p1

    move p1, v1

    .line 281
    .local p0, "x":[I
    .local p1, "xOff":I
    .local p2, "y":[I
    .local p3, "yOff":I
    :goto_19
    return v0
.end method

.method public static blacklist eq([I[I)Z
    .registers 5
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .line 286
    const/4 v0, 0x6

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_e

    .line 288
    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_b

    .line 290
    const/4 v1, 0x0

    return v1

    .line 286
    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 293
    .end local v0    # "i":I
    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 4
    .param p0, "x"    # Ljava/math/BigInteger;

    .line 298
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_26

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xe0

    if-gt v0, v1, :cond_26

    .line 303
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 306
    .local v0, "z":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    const/4 v2, 0x7

    if-ge v1, v2, :cond_25

    .line 308
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 309
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 311
    .end local v1    # "i":I
    :cond_25
    return-object v0

    .line 300
    .end local v0    # "z":[I
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist getBit([II)I
    .registers 5
    .param p0, "x"    # [I
    .param p1, "bit"    # I

    .line 316
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 318
    aget v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    return v0

    .line 320
    :cond_8
    shr-int/lit8 v1, p1, 0x5

    .line 321
    .local v1, "w":I
    if-ltz v1, :cond_18

    const/4 v2, 0x7

    if-lt v1, v2, :cond_10

    goto :goto_18

    .line 325
    :cond_10
    and-int/lit8 v0, p1, 0x1f

    .line 326
    .local v0, "b":I
    aget v2, p0, v1

    ushr-int/2addr v2, v0

    and-int/lit8 v2, v2, 0x1

    return v2

    .line 323
    .end local v0    # "b":I
    :cond_18
    :goto_18
    return v0
.end method

.method public static blacklist gte([II[II)Z
    .registers 9
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I

    .line 345
    const/4 v0, 0x6

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x1

    if-ltz v0, :cond_1a

    .line 347
    add-int v2, p1, v0

    aget v2, p0, v2

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 348
    .local v2, "x_i":I
    add-int v4, p3, v0

    aget v4, p2, v4

    xor-int/2addr v3, v4

    .line 349
    .local v3, "y_i":I
    if-ge v2, v3, :cond_14

    .line 350
    const/4 v1, 0x0

    return v1

    .line 351
    :cond_14
    if-le v2, v3, :cond_17

    .line 352
    return v1

    .line 345
    .end local v2    # "x_i":I
    .end local v3    # "y_i":I
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 354
    .end local v0    # "i":I
    :cond_1a
    return v1
.end method

.method public static blacklist gte([I[I)Z
    .registers 7
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .line 331
    const/4 v0, 0x6

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x1

    if-ltz v0, :cond_16

    .line 333
    aget v2, p0, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 334
    .local v2, "x_i":I
    aget v4, p1, v0

    xor-int/2addr v3, v4

    .line 335
    .local v3, "y_i":I
    if-ge v2, v3, :cond_10

    .line 336
    const/4 v1, 0x0

    return v1

    .line 337
    :cond_10
    if-le v2, v3, :cond_13

    .line 338
    return v1

    .line 331
    .end local v2    # "x_i":I
    .end local v3    # "y_i":I
    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 340
    .end local v0    # "i":I
    :cond_16
    return v1
.end method

.method public static blacklist isOne([I)Z
    .registers 5
    .param p0, "x"    # [I

    .line 359
    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    .line 361
    return v0

    .line 363
    :cond_7
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_8
    const/4 v3, 0x7

    if-ge v1, v3, :cond_13

    .line 365
    aget v3, p0, v1

    if-eqz v3, :cond_10

    .line 367
    return v0

    .line 363
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 370
    .end local v1    # "i":I
    :cond_13
    return v2
.end method

.method public static blacklist isZero([I)Z
    .registers 3
    .param p0, "x"    # [I

    .line 375
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x7

    if-ge v0, v1, :cond_d

    .line 377
    aget v1, p0, v0

    if-eqz v1, :cond_a

    .line 379
    const/4 v1, 0x0

    return v1

    .line 375
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 382
    .end local v0    # "i":I
    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist mul([II[II[II)V
    .registers 33
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "zz"    # [I
    .param p5, "zzOff"    # I

    .line 451
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 452
    .local v0, "y_0":J
    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 453
    .local v4, "y_1":J
    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 454
    .local v6, "y_2":J
    add-int/lit8 v8, p3, 0x3

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 455
    .local v8, "y_3":J
    add-int/lit8 v10, p3, 0x4

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 456
    .local v10, "y_4":J
    add-int/lit8 v12, p3, 0x5

    aget v12, p2, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    .line 457
    .local v12, "y_5":J
    add-int/lit8 v14, p3, 0x6

    aget v14, p2, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    .line 460
    .local v14, "y_6":J
    const-wide/16 v16, 0x0

    .local v16, "c":J
    add-int/lit8 v18, p1, 0x0

    move-wide/from16 v19, v2

    aget v2, p0, v18

    int-to-long v2, v2

    and-long v2, v2, v19

    .line 461
    .local v2, "x_0":J
    mul-long v21, v2, v0

    move-wide/from16 v23, v0

    .end local v0    # "y_0":J
    .local v23, "y_0":J
    add-long v0, v16, v21

    .line 462
    .end local v16    # "c":J
    .local v0, "c":J
    add-int/lit8 v16, p5, 0x0

    move-wide/from16 v17, v2

    .end local v2    # "x_0":J
    .local v17, "x_0":J
    long-to-int v2, v0

    aput v2, p4, v16

    .line 463
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 464
    mul-long v21, v17, v4

    add-long v0, v0, v21

    .line 465
    add-int/lit8 v3, p5, 0x1

    move/from16 v16, v2

    long-to-int v2, v0

    aput v2, p4, v3

    .line 466
    ushr-long v0, v0, v16

    .line 467
    mul-long v2, v17, v6

    add-long/2addr v0, v2

    .line 468
    add-int/lit8 v2, p5, 0x2

    long-to-int v3, v0

    aput v3, p4, v2

    .line 469
    ushr-long v0, v0, v16

    .line 470
    mul-long v2, v17, v8

    add-long/2addr v0, v2

    .line 471
    add-int/lit8 v2, p5, 0x3

    long-to-int v3, v0

    aput v3, p4, v2

    .line 472
    ushr-long v0, v0, v16

    .line 473
    mul-long v2, v17, v10

    add-long/2addr v0, v2

    .line 474
    add-int/lit8 v2, p5, 0x4

    long-to-int v3, v0

    aput v3, p4, v2

    .line 475
    ushr-long v0, v0, v16

    .line 476
    mul-long v2, v17, v12

    add-long/2addr v0, v2

    .line 477
    add-int/lit8 v2, p5, 0x5

    long-to-int v3, v0

    aput v3, p4, v2

    .line 478
    ushr-long v0, v0, v16

    .line 479
    mul-long v2, v17, v14

    add-long/2addr v0, v2

    .line 480
    add-int/lit8 v2, p5, 0x6

    long-to-int v3, v0

    aput v3, p4, v2

    .line 481
    ushr-long v0, v0, v16

    .line 482
    add-int/lit8 v2, p5, 0x7

    long-to-int v3, v0

    aput v3, p4, v2

    .line 485
    .end local v0    # "c":J
    .end local v17    # "x_0":J
    const/4 v0, 0x1

    move v1, v0

    move/from16 v0, p5

    .end local p5    # "zzOff":I
    .local v0, "zzOff":I
    .local v1, "i":I
    :goto_92
    const/4 v2, 0x7

    if-ge v1, v2, :cond_143

    .line 487
    add-int/lit8 v0, v0, 0x1

    .line 488
    const-wide/16 v2, 0x0

    .local v2, "c":J
    add-int v17, p1, v1

    move/from16 p5, v0

    .end local v0    # "zzOff":I
    .restart local p5    # "zzOff":I
    aget v0, p0, v17

    move/from16 v17, v1

    .end local v1    # "i":I
    .local v17, "i":I
    int-to-long v0, v0

    and-long v0, v0, v19

    .line 489
    .local v0, "x_i":J
    mul-long v21, v0, v23

    add-int/lit8 v18, p5, 0x0

    move-wide/from16 v25, v0

    .end local v0    # "x_i":J
    .local v25, "x_i":J
    aget v0, p4, v18

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long v21, v21, v0

    add-long v2, v2, v21

    .line 490
    add-int/lit8 v0, p5, 0x0

    long-to-int v1, v2

    aput v1, p4, v0

    .line 491
    ushr-long v0, v2, v16

    .line 492
    .end local v2    # "c":J
    .local v0, "c":J
    mul-long v2, v25, v4

    add-int/lit8 v18, p5, 0x1

    move-wide/from16 v21, v0

    .end local v0    # "c":J
    .local v21, "c":J
    aget v0, p4, v18

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v2, v0

    add-long v0, v21, v2

    .line 493
    .end local v21    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x1

    long-to-int v3, v0

    aput v3, p4, v2

    .line 494
    ushr-long v0, v0, v16

    .line 495
    mul-long v2, v25, v6

    add-int/lit8 v18, p5, 0x2

    move-wide/from16 v21, v0

    .end local v0    # "c":J
    .restart local v21    # "c":J
    aget v0, p4, v18

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v2, v0

    add-long v0, v21, v2

    .line 496
    .end local v21    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x2

    long-to-int v3, v0

    aput v3, p4, v2

    .line 497
    ushr-long v0, v0, v16

    .line 498
    mul-long v2, v25, v8

    add-int/lit8 v18, p5, 0x3

    move-wide/from16 v21, v0

    .end local v0    # "c":J
    .restart local v21    # "c":J
    aget v0, p4, v18

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v2, v0

    add-long v0, v21, v2

    .line 499
    .end local v21    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x3

    long-to-int v3, v0

    aput v3, p4, v2

    .line 500
    ushr-long v0, v0, v16

    .line 501
    mul-long v2, v25, v10

    add-int/lit8 v18, p5, 0x4

    move-wide/from16 v21, v0

    .end local v0    # "c":J
    .restart local v21    # "c":J
    aget v0, p4, v18

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v2, v0

    add-long v0, v21, v2

    .line 502
    .end local v21    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x4

    long-to-int v3, v0

    aput v3, p4, v2

    .line 503
    ushr-long v0, v0, v16

    .line 504
    mul-long v2, v25, v12

    add-int/lit8 v18, p5, 0x5

    move-wide/from16 v21, v0

    .end local v0    # "c":J
    .restart local v21    # "c":J
    aget v0, p4, v18

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v2, v0

    add-long v0, v21, v2

    .line 505
    .end local v21    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x5

    long-to-int v3, v0

    aput v3, p4, v2

    .line 506
    ushr-long v0, v0, v16

    .line 507
    mul-long v2, v25, v14

    add-int/lit8 v18, p5, 0x6

    move-wide/from16 v21, v0

    .end local v0    # "c":J
    .restart local v21    # "c":J
    aget v0, p4, v18

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v2, v0

    add-long v0, v21, v2

    .line 508
    .end local v21    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x6

    long-to-int v3, v0

    aput v3, p4, v2

    .line 509
    ushr-long v0, v0, v16

    .line 510
    add-int/lit8 v2, p5, 0x7

    long-to-int v3, v0

    aput v3, p4, v2

    .line 485
    .end local v0    # "c":J
    .end local v25    # "x_i":J
    add-int/lit8 v1, v17, 0x1

    move/from16 v0, p5

    .end local v17    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_92

    .line 512
    .end local v1    # "i":I
    .end local p5    # "zzOff":I
    .local v0, "zzOff":I
    :cond_143
    return-void
.end method

.method public static blacklist mul([I[I[I)V
    .registers 34
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .line 387
    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 388
    .local v1, "y_0":J
    const/4 v5, 0x1

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    .line 389
    .local v6, "y_1":J
    const/4 v8, 0x2

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    .line 390
    .local v9, "y_2":J
    const/4 v11, 0x3

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    .line 391
    .local v12, "y_3":J
    const/4 v14, 0x4

    aget v15, p1, v14

    move/from16 v16, v0

    move-wide/from16 v17, v1

    .end local v1    # "y_0":J
    .local v17, "y_0":J
    int-to-long v0, v15

    and-long/2addr v0, v3

    .line 392
    .local v0, "y_4":J
    const/4 v2, 0x5

    aget v15, p1, v2

    move-wide/from16 v19, v3

    move v4, v2

    int-to-long v2, v15

    and-long v2, v2, v19

    .line 393
    .local v2, "y_5":J
    const/4 v15, 0x6

    move/from16 v21, v4

    aget v4, p1, v15

    move/from16 v22, v5

    move-wide/from16 v23, v6

    .end local v6    # "y_1":J
    .local v23, "y_1":J
    int-to-long v5, v4

    and-long v4, v5, v19

    .line 396
    .local v4, "y_6":J
    const-wide/16 v6, 0x0

    move/from16 v25, v8

    .local v6, "c":J
    aget v8, p0, v16

    move/from16 v26, v11

    move-wide/from16 v27, v12

    .end local v12    # "y_3":J
    .local v27, "y_3":J
    int-to-long v11, v8

    and-long v11, v11, v19

    .line 397
    .local v11, "x_0":J
    mul-long v29, v11, v17

    add-long v6, v6, v29

    .line 398
    long-to-int v8, v6

    aput v8, p2, v16

    .line 399
    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    .line 400
    mul-long v29, v11, v23

    add-long v6, v6, v29

    .line 401
    long-to-int v13, v6

    aput v13, p2, v22

    .line 402
    ushr-long/2addr v6, v8

    .line 403
    mul-long v29, v11, v9

    add-long v6, v6, v29

    .line 404
    long-to-int v13, v6

    aput v13, p2, v25

    .line 405
    ushr-long/2addr v6, v8

    .line 406
    mul-long v29, v11, v27

    add-long v6, v6, v29

    .line 407
    long-to-int v13, v6

    aput v13, p2, v26

    .line 408
    ushr-long/2addr v6, v8

    .line 409
    mul-long v25, v11, v0

    add-long v6, v6, v25

    .line 410
    long-to-int v13, v6

    aput v13, p2, v14

    .line 411
    ushr-long/2addr v6, v8

    .line 412
    mul-long v13, v11, v2

    add-long/2addr v6, v13

    .line 413
    long-to-int v13, v6

    aput v13, p2, v21

    .line 414
    ushr-long/2addr v6, v8

    .line 415
    mul-long v13, v11, v4

    add-long/2addr v6, v13

    .line 416
    long-to-int v13, v6

    aput v13, p2, v15

    .line 417
    ushr-long/2addr v6, v8

    .line 418
    long-to-int v13, v6

    const/4 v14, 0x7

    aput v13, p2, v14

    .line 421
    .end local v6    # "c":J
    .end local v11    # "x_0":J
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_81
    if-ge v6, v14, :cond_122

    .line 423
    const-wide/16 v11, 0x0

    .local v11, "c":J
    aget v7, p0, v6

    move-wide v15, v9

    move v10, v8

    .end local v9    # "y_2":J
    .local v15, "y_2":J
    int-to-long v8, v7

    and-long v7, v8, v19

    .line 424
    .local v7, "x_i":J
    mul-long v21, v7, v17

    add-int/lit8 v9, v6, 0x0

    aget v9, p2, v9

    move-wide/from16 v25, v11

    move v12, v10

    .end local v11    # "c":J
    .local v25, "c":J
    int-to-long v10, v9

    and-long v9, v10, v19

    add-long v21, v21, v9

    add-long v9, v25, v21

    .line 425
    .end local v25    # "c":J
    .local v9, "c":J
    add-int/lit8 v11, v6, 0x0

    long-to-int v13, v9

    aput v13, p2, v11

    .line 426
    ushr-long/2addr v9, v12

    .line 427
    mul-long v21, v7, v23

    add-int/lit8 v11, v6, 0x1

    aget v11, p2, v11

    move/from16 v25, v12

    int-to-long v12, v11

    and-long v11, v12, v19

    add-long v21, v21, v11

    add-long v9, v9, v21

    .line 428
    add-int/lit8 v11, v6, 0x1

    long-to-int v12, v9

    aput v12, p2, v11

    .line 429
    ushr-long v9, v9, v25

    .line 430
    mul-long v11, v7, v15

    add-int/lit8 v13, v6, 0x2

    aget v13, p2, v13

    move-wide/from16 v29, v15

    .end local v15    # "y_2":J
    .local v29, "y_2":J
    int-to-long v14, v13

    and-long v13, v14, v19

    add-long/2addr v11, v13

    add-long/2addr v9, v11

    .line 431
    add-int/lit8 v11, v6, 0x2

    long-to-int v12, v9

    aput v12, p2, v11

    .line 432
    ushr-long v9, v9, v25

    .line 433
    mul-long v12, v7, v27

    add-int/lit8 v11, v6, 0x3

    aget v11, p2, v11

    int-to-long v14, v11

    and-long v14, v14, v19

    add-long/2addr v12, v14

    add-long/2addr v9, v12

    .line 434
    add-int/lit8 v11, v6, 0x3

    long-to-int v12, v9

    aput v12, p2, v11

    .line 435
    ushr-long v9, v9, v25

    .line 436
    mul-long v11, v7, v0

    add-int/lit8 v13, v6, 0x4

    aget v13, p2, v13

    int-to-long v13, v13

    and-long v13, v13, v19

    add-long/2addr v11, v13

    add-long/2addr v9, v11

    .line 437
    add-int/lit8 v11, v6, 0x4

    long-to-int v12, v9

    aput v12, p2, v11

    .line 438
    ushr-long v9, v9, v25

    .line 439
    mul-long v11, v7, v2

    add-int/lit8 v13, v6, 0x5

    aget v13, p2, v13

    int-to-long v13, v13

    and-long v13, v13, v19

    add-long/2addr v11, v13

    add-long/2addr v9, v11

    .line 440
    add-int/lit8 v11, v6, 0x5

    long-to-int v12, v9

    aput v12, p2, v11

    .line 441
    ushr-long v9, v9, v25

    .line 442
    mul-long v11, v7, v4

    add-int/lit8 v13, v6, 0x6

    aget v13, p2, v13

    int-to-long v13, v13

    and-long v13, v13, v19

    add-long/2addr v11, v13

    add-long/2addr v9, v11

    .line 443
    add-int/lit8 v11, v6, 0x6

    long-to-int v12, v9

    aput v12, p2, v11

    .line 444
    ushr-long v9, v9, v25

    .line 445
    add-int/lit8 v11, v6, 0x7

    long-to-int v12, v9

    aput v12, p2, v11

    .line 421
    .end local v7    # "x_i":J
    .end local v9    # "c":J
    add-int/lit8 v6, v6, 0x1

    move/from16 v8, v25

    move-wide/from16 v9, v29

    const/4 v14, 0x7

    goto/16 :goto_81

    .line 447
    .end local v6    # "i":I
    .end local v29    # "y_2":J
    .local v9, "y_2":J
    :cond_122
    return-void
.end method

.method public static blacklist mul33Add(I[II[II[II)J
    .registers 35
    .param p0, "w"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .line 605
    const-wide/16 v0, 0x0

    move/from16 v2, p0

    .local v0, "c":J
    int-to-long v3, v2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 606
    .local v3, "wVal":J
    add-int/lit8 v7, p2, 0x0

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    .line 607
    .local v7, "x0":J
    mul-long v9, v3, v7

    add-int/lit8 v11, p4, 0x0

    aget v11, p3, v11

    int-to-long v11, v11

    and-long/2addr v11, v5

    add-long/2addr v9, v11

    add-long/2addr v0, v9

    .line 608
    add-int/lit8 v9, p6, 0x0

    long-to-int v10, v0

    aput v10, p5, v9

    .line 609
    const/16 v9, 0x20

    ushr-long/2addr v0, v9

    .line 610
    add-int/lit8 v10, p2, 0x1

    aget v10, p1, v10

    int-to-long v10, v10

    and-long/2addr v10, v5

    .line 611
    .local v10, "x1":J
    mul-long v12, v3, v10

    add-long/2addr v12, v7

    add-int/lit8 v14, p4, 0x1

    aget v14, p3, v14

    int-to-long v14, v14

    and-long/2addr v14, v5

    add-long/2addr v12, v14

    add-long/2addr v0, v12

    .line 612
    add-int/lit8 v12, p6, 0x1

    long-to-int v13, v0

    aput v13, p5, v12

    .line 613
    ushr-long/2addr v0, v9

    .line 614
    add-int/lit8 v12, p2, 0x2

    aget v12, p1, v12

    int-to-long v12, v12

    and-long/2addr v12, v5

    .line 615
    .local v12, "x2":J
    mul-long v14, v3, v12

    add-long/2addr v14, v10

    add-int/lit8 v16, p4, 0x2

    move-wide/from16 v17, v5

    aget v5, p3, v16

    int-to-long v5, v5

    and-long v5, v5, v17

    add-long/2addr v14, v5

    add-long/2addr v0, v14

    .line 616
    add-int/lit8 v5, p6, 0x2

    long-to-int v6, v0

    aput v6, p5, v5

    .line 617
    ushr-long/2addr v0, v9

    .line 618
    add-int/lit8 v5, p2, 0x3

    aget v5, p1, v5

    int-to-long v5, v5

    and-long v5, v5, v17

    .line 619
    .local v5, "x3":J
    mul-long v14, v3, v5

    add-long/2addr v14, v12

    add-int/lit8 v16, p4, 0x3

    move/from16 v19, v9

    aget v9, p3, v16

    move-wide/from16 v20, v0

    .end local v0    # "c":J
    .local v20, "c":J
    int-to-long v0, v9

    and-long v0, v0, v17

    add-long/2addr v14, v0

    add-long v0, v20, v14

    .line 620
    .end local v20    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v9, p6, 0x3

    long-to-int v14, v0

    aput v14, p5, v9

    .line 621
    ushr-long v0, v0, v19

    .line 622
    add-int/lit8 v9, p2, 0x4

    aget v9, p1, v9

    int-to-long v14, v9

    and-long v14, v14, v17

    .line 623
    .local v14, "x4":J
    mul-long v20, v3, v14

    add-long v20, v20, v5

    add-int/lit8 v9, p4, 0x4

    aget v9, p3, v9

    move-wide/from16 v22, v0

    .end local v0    # "c":J
    .local v22, "c":J
    int-to-long v0, v9

    and-long v0, v0, v17

    add-long v20, v20, v0

    add-long v0, v22, v20

    .line 624
    .end local v22    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v9, p6, 0x4

    long-to-int v2, v0

    aput v2, p5, v9

    .line 625
    ushr-long v0, v0, v19

    .line 626
    add-int/lit8 v2, p2, 0x5

    aget v2, p1, v2

    move-wide/from16 v20, v0

    .end local v0    # "c":J
    .restart local v20    # "c":J
    int-to-long v0, v2

    and-long v0, v0, v17

    .line 627
    .local v0, "x5":J
    mul-long v22, v3, v0

    add-long v22, v22, v14

    add-int/lit8 v2, p4, 0x5

    aget v2, p3, v2

    move-wide/from16 v24, v0

    .end local v0    # "x5":J
    .local v24, "x5":J
    int-to-long v0, v2

    and-long v0, v0, v17

    add-long v22, v22, v0

    add-long v0, v20, v22

    .line 628
    .end local v20    # "c":J
    .local v0, "c":J
    add-int/lit8 v2, p6, 0x5

    long-to-int v9, v0

    aput v9, p5, v2

    .line 629
    ushr-long v0, v0, v19

    .line 630
    add-int/lit8 v2, p2, 0x6

    aget v2, p1, v2

    move-wide/from16 v20, v0

    .end local v0    # "c":J
    .restart local v20    # "c":J
    int-to-long v0, v2

    and-long v0, v0, v17

    .line 631
    .local v0, "x6":J
    mul-long v22, v3, v0

    add-long v22, v22, v24

    add-int/lit8 v2, p4, 0x6

    aget v2, p3, v2

    move-wide/from16 v26, v0

    .end local v0    # "x6":J
    .local v26, "x6":J
    int-to-long v0, v2

    and-long v0, v0, v17

    add-long v22, v22, v0

    add-long v0, v20, v22

    .line 632
    .end local v20    # "c":J
    .local v0, "c":J
    add-int/lit8 v2, p6, 0x6

    long-to-int v9, v0

    aput v9, p5, v2

    .line 633
    ushr-long v0, v0, v19

    .line 634
    add-long v0, v0, v26

    .line 635
    return-wide v0
.end method

.method public static blacklist mul33DWordAdd(IJ[II)I
    .registers 24
    .param p0, "x"    # I
    .param p1, "y"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 724
    move-object/from16 v0, p3

    move/from16 v1, p4

    const-wide/16 v2, 0x0

    move/from16 v4, p0

    .local v2, "c":J
    int-to-long v5, v4

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    .line 725
    .local v5, "xVal":J
    and-long v9, p1, v7

    .line 726
    .local v9, "y00":J
    mul-long v11, v5, v9

    add-int/lit8 v13, v1, 0x0

    aget v13, v0, v13

    int-to-long v13, v13

    and-long/2addr v13, v7

    add-long/2addr v11, v13

    add-long/2addr v2, v11

    .line 727
    add-int/lit8 v11, v1, 0x0

    long-to-int v12, v2

    aput v12, v0, v11

    .line 728
    const/16 v11, 0x20

    ushr-long/2addr v2, v11

    .line 729
    ushr-long v12, p1, v11

    .line 730
    .local v12, "y01":J
    mul-long v14, v5, v12

    add-long/2addr v14, v9

    add-int/lit8 v16, v1, 0x1

    move-wide/from16 v17, v7

    aget v7, v0, v16

    int-to-long v7, v7

    and-long v7, v7, v17

    add-long/2addr v14, v7

    add-long/2addr v2, v14

    .line 731
    add-int/lit8 v7, v1, 0x1

    long-to-int v8, v2

    aput v8, v0, v7

    .line 732
    ushr-long/2addr v2, v11

    .line 733
    add-int/lit8 v7, v1, 0x2

    aget v7, v0, v7

    int-to-long v7, v7

    and-long v7, v7, v17

    add-long/2addr v7, v12

    add-long/2addr v2, v7

    .line 734
    add-int/lit8 v7, v1, 0x2

    long-to-int v8, v2

    aput v8, v0, v7

    .line 735
    ushr-long/2addr v2, v11

    .line 736
    add-int/lit8 v7, v1, 0x3

    aget v7, v0, v7

    int-to-long v7, v7

    and-long v7, v7, v17

    add-long/2addr v2, v7

    .line 737
    add-int/lit8 v7, v1, 0x3

    long-to-int v8, v2

    aput v8, v0, v7

    .line 738
    ushr-long/2addr v2, v11

    .line 739
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-nez v7, :cond_5e

    const/4 v7, 0x0

    goto :goto_64

    :cond_5e
    const/4 v7, 0x7

    const/4 v8, 0x4

    invoke-static {v7, v0, v1, v8}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v7

    :goto_64
    return v7
.end method

.method public static blacklist mul33WordAdd(II[II)I
    .registers 16
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .line 747
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .local v2, "xVal":J
    int-to-long v6, p1

    and-long/2addr v6, v4

    .line 748
    .local v6, "yVal":J
    mul-long v8, v6, v2

    add-int/lit8 v10, p3, 0x0

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 749
    add-int/lit8 v8, p3, 0x0

    long-to-int v9, v0

    aput v9, p2, v8

    .line 750
    const/16 v8, 0x20

    ushr-long/2addr v0, v8

    .line 751
    add-int/lit8 v9, p3, 0x1

    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v9, v6

    add-long/2addr v0, v9

    .line 752
    add-int/lit8 v9, p3, 0x1

    long-to-int v10, v0

    aput v10, p2, v9

    .line 753
    ushr-long/2addr v0, v8

    .line 754
    add-int/lit8 v9, p3, 0x2

    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v4, v9

    add-long/2addr v0, v4

    .line 755
    add-int/lit8 v4, p3, 0x2

    long-to-int v5, v0

    aput v5, p2, v4

    .line 756
    ushr-long/2addr v0, v8

    .line 757
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_40

    const/4 v4, 0x0

    goto :goto_46

    :cond_40
    const/4 v4, 0x7

    const/4 v5, 0x3

    invoke-static {v4, p2, p3, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v4

    :goto_46
    return v4
.end method

.method public static blacklist mulAddTo([II[II[II)I
    .registers 38
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "zz"    # [I
    .param p5, "zzOff"    # I

    .line 559
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 560
    .local v0, "y_0":J
    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 561
    .local v4, "y_1":J
    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 562
    .local v6, "y_2":J
    add-int/lit8 v8, p3, 0x3

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 563
    .local v8, "y_3":J
    add-int/lit8 v10, p3, 0x4

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 564
    .local v10, "y_4":J
    add-int/lit8 v12, p3, 0x5

    aget v12, p2, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    .line 565
    .local v12, "y_5":J
    add-int/lit8 v14, p3, 0x6

    aget v14, p2, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    .line 567
    .local v14, "y_6":J
    const-wide/16 v16, 0x0

    .line 568
    .local v16, "zc":J
    const/16 v18, 0x0

    move-wide/from16 v19, v0

    move/from16 v0, v18

    move-wide/from16 v30, v16

    move/from16 v16, p5

    move-wide/from16 v17, v2

    move-wide/from16 v2, v30

    .end local p5    # "zzOff":I
    .local v0, "i":I
    .local v2, "zc":J
    .local v16, "zzOff":I
    .local v19, "y_0":J
    :goto_3f
    const/4 v1, 0x7

    if-ge v0, v1, :cond_fe

    .line 570
    const-wide/16 v21, 0x0

    .local v21, "c":J
    add-int v1, p1, v0

    aget v1, p0, v1

    move/from16 p5, v0

    .end local v0    # "i":I
    .local p5, "i":I
    int-to-long v0, v1

    and-long v0, v0, v17

    .line 571
    .local v0, "x_i":J
    mul-long v23, v0, v19

    add-int/lit8 v25, v16, 0x0

    move-wide/from16 v26, v0

    .end local v0    # "x_i":J
    .local v26, "x_i":J
    aget v0, p4, v25

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long v23, v23, v0

    add-long v0, v21, v23

    .line 572
    .end local v21    # "c":J
    .local v0, "c":J
    add-int/lit8 v21, v16, 0x0

    move-wide/from16 v22, v4

    .end local v4    # "y_1":J
    .local v22, "y_1":J
    long-to-int v4, v0

    aput v4, p4, v21

    .line 573
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 574
    mul-long v24, v26, v22

    add-int/lit8 v5, v16, 0x1

    aget v5, p4, v5

    move/from16 v21, v4

    int-to-long v4, v5

    and-long v4, v4, v17

    add-long v24, v24, v4

    add-long v0, v0, v24

    .line 575
    add-int/lit8 v4, v16, 0x1

    long-to-int v5, v0

    aput v5, p4, v4

    .line 576
    ushr-long v0, v0, v21

    .line 577
    mul-long v4, v26, v6

    add-int/lit8 v24, v16, 0x2

    move-wide/from16 v28, v0

    .end local v0    # "c":J
    .local v28, "c":J
    aget v0, p4, v24

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v4, v0

    add-long v0, v28, v4

    .line 578
    .end local v28    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v4, v16, 0x2

    long-to-int v5, v0

    aput v5, p4, v4

    .line 579
    ushr-long v0, v0, v21

    .line 580
    mul-long v4, v26, v8

    add-int/lit8 v24, v16, 0x3

    move-wide/from16 v28, v0

    .end local v0    # "c":J
    .restart local v28    # "c":J
    aget v0, p4, v24

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v4, v0

    add-long v0, v28, v4

    .line 581
    .end local v28    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v4, v16, 0x3

    long-to-int v5, v0

    aput v5, p4, v4

    .line 582
    ushr-long v0, v0, v21

    .line 583
    mul-long v4, v26, v10

    add-int/lit8 v24, v16, 0x4

    move-wide/from16 v28, v0

    .end local v0    # "c":J
    .restart local v28    # "c":J
    aget v0, p4, v24

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v4, v0

    add-long v0, v28, v4

    .line 584
    .end local v28    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v4, v16, 0x4

    long-to-int v5, v0

    aput v5, p4, v4

    .line 585
    ushr-long v0, v0, v21

    .line 586
    mul-long v4, v26, v12

    add-int/lit8 v24, v16, 0x5

    move-wide/from16 v28, v0

    .end local v0    # "c":J
    .restart local v28    # "c":J
    aget v0, p4, v24

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v4, v0

    add-long v0, v28, v4

    .line 587
    .end local v28    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v4, v16, 0x5

    long-to-int v5, v0

    aput v5, p4, v4

    .line 588
    ushr-long v0, v0, v21

    .line 589
    mul-long v4, v26, v14

    add-int/lit8 v24, v16, 0x6

    move-wide/from16 v28, v0

    .end local v0    # "c":J
    .restart local v28    # "c":J
    aget v0, p4, v24

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v4, v0

    add-long v0, v28, v4

    .line 590
    .end local v28    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v4, v16, 0x6

    long-to-int v5, v0

    aput v5, p4, v4

    .line 591
    ushr-long v0, v0, v21

    .line 593
    add-int/lit8 v4, v16, 0x7

    aget v4, p4, v4

    int-to-long v4, v4

    and-long v4, v4, v17

    add-long/2addr v4, v0

    add-long/2addr v2, v4

    .line 594
    add-int/lit8 v4, v16, 0x7

    long-to-int v5, v2

    aput v5, p4, v4

    .line 595
    ushr-long v2, v2, v21

    .line 596
    nop

    .end local v0    # "c":J
    .end local v26    # "x_i":J
    add-int/lit8 v16, v16, 0x1

    .line 568
    add-int/lit8 v0, p5, 0x1

    move-wide/from16 v4, v22

    .end local p5    # "i":I
    .local v0, "i":I
    goto/16 :goto_3f

    .end local v22    # "y_1":J
    .restart local v4    # "y_1":J
    :cond_fe
    move/from16 p5, v0

    .line 598
    .end local v0    # "i":I
    long-to-int v0, v2

    return v0
.end method

.method public static blacklist mulAddTo([I[I[I)I
    .registers 33
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .line 516
    const/4 v0, 0x0

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 517
    .local v0, "y_0":J
    const/4 v4, 0x1

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 518
    .local v4, "y_1":J
    const/4 v6, 0x2

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 519
    .local v6, "y_2":J
    const/4 v8, 0x3

    aget v8, p1, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 520
    .local v8, "y_3":J
    const/4 v10, 0x4

    aget v10, p1, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 521
    .local v10, "y_4":J
    const/4 v12, 0x5

    aget v12, p1, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    .line 522
    .local v12, "y_5":J
    const/4 v14, 0x6

    aget v14, p1, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    .line 524
    .local v14, "y_6":J
    const-wide/16 v16, 0x0

    .line 525
    .local v16, "zc":J
    const/16 v18, 0x0

    move-wide/from16 v19, v2

    move-wide/from16 v2, v16

    move-wide/from16 v16, v0

    move/from16 v0, v18

    .local v0, "i":I
    .local v2, "zc":J
    .local v16, "y_0":J
    :goto_34
    const/4 v1, 0x7

    if-ge v0, v1, :cond_ee

    .line 527
    const-wide/16 v21, 0x0

    .local v21, "c":J
    aget v1, p0, v0

    move/from16 v18, v0

    .end local v0    # "i":I
    .local v18, "i":I
    int-to-long v0, v1

    and-long v0, v0, v19

    .line 528
    .local v0, "x_i":J
    mul-long v23, v0, v16

    add-int/lit8 v25, v18, 0x0

    move-wide/from16 v26, v0

    .end local v0    # "x_i":J
    .local v26, "x_i":J
    aget v0, p2, v25

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long v23, v23, v0

    add-long v0, v21, v23

    .line 529
    .end local v21    # "c":J
    .local v0, "c":J
    add-int/lit8 v21, v18, 0x0

    move-wide/from16 v22, v4

    .end local v4    # "y_1":J
    .local v22, "y_1":J
    long-to-int v4, v0

    aput v4, p2, v21

    .line 530
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 531
    mul-long v24, v26, v22

    add-int/lit8 v5, v18, 0x1

    aget v5, p2, v5

    move/from16 v21, v4

    int-to-long v4, v5

    and-long v4, v4, v19

    add-long v24, v24, v4

    add-long v0, v0, v24

    .line 532
    add-int/lit8 v4, v18, 0x1

    long-to-int v5, v0

    aput v5, p2, v4

    .line 533
    ushr-long v0, v0, v21

    .line 534
    mul-long v4, v26, v6

    add-int/lit8 v24, v18, 0x2

    move-wide/from16 v28, v0

    .end local v0    # "c":J
    .local v28, "c":J
    aget v0, p2, v24

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v4, v0

    add-long v0, v28, v4

    .line 535
    .end local v28    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v4, v18, 0x2

    long-to-int v5, v0

    aput v5, p2, v4

    .line 536
    ushr-long v0, v0, v21

    .line 537
    mul-long v4, v26, v8

    add-int/lit8 v24, v18, 0x3

    move-wide/from16 v28, v0

    .end local v0    # "c":J
    .restart local v28    # "c":J
    aget v0, p2, v24

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v4, v0

    add-long v0, v28, v4

    .line 538
    .end local v28    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v4, v18, 0x3

    long-to-int v5, v0

    aput v5, p2, v4

    .line 539
    ushr-long v0, v0, v21

    .line 540
    mul-long v4, v26, v10

    add-int/lit8 v24, v18, 0x4

    move-wide/from16 v28, v0

    .end local v0    # "c":J
    .restart local v28    # "c":J
    aget v0, p2, v24

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v4, v0

    add-long v0, v28, v4

    .line 541
    .end local v28    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v4, v18, 0x4

    long-to-int v5, v0

    aput v5, p2, v4

    .line 542
    ushr-long v0, v0, v21

    .line 543
    mul-long v4, v26, v12

    add-int/lit8 v24, v18, 0x5

    move-wide/from16 v28, v0

    .end local v0    # "c":J
    .restart local v28    # "c":J
    aget v0, p2, v24

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v4, v0

    add-long v0, v28, v4

    .line 544
    .end local v28    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v4, v18, 0x5

    long-to-int v5, v0

    aput v5, p2, v4

    .line 545
    ushr-long v0, v0, v21

    .line 546
    mul-long v4, v26, v14

    add-int/lit8 v24, v18, 0x6

    move-wide/from16 v28, v0

    .end local v0    # "c":J
    .restart local v28    # "c":J
    aget v0, p2, v24

    int-to-long v0, v0

    and-long v0, v0, v19

    add-long/2addr v4, v0

    add-long v0, v28, v4

    .line 547
    .end local v28    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v4, v18, 0x6

    long-to-int v5, v0

    aput v5, p2, v4

    .line 548
    ushr-long v0, v0, v21

    .line 550
    add-int/lit8 v4, v18, 0x7

    aget v4, p2, v4

    int-to-long v4, v4

    and-long v4, v4, v19

    add-long/2addr v4, v0

    add-long/2addr v2, v4

    .line 551
    add-int/lit8 v4, v18, 0x7

    long-to-int v5, v2

    aput v5, p2, v4

    .line 552
    ushr-long v2, v2, v21

    .line 525
    .end local v0    # "c":J
    .end local v26    # "x_i":J
    add-int/lit8 v0, v18, 0x1

    move-wide/from16 v4, v22

    .end local v18    # "i":I
    .local v0, "i":I
    goto/16 :goto_34

    .end local v22    # "y_1":J
    .restart local v4    # "y_1":J
    :cond_ee
    move/from16 v18, v0

    .line 554
    .end local v0    # "i":I
    long-to-int v0, v2

    return v0
.end method

.method public static blacklist mulByWord(I[I)I
    .registers 12
    .param p0, "x"    # I
    .param p1, "z"    # [I

    .line 640
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 641
    .local v2, "xVal":J
    const/4 v6, 0x0

    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-long/2addr v0, v7

    .line 642
    long-to-int v7, v0

    aput v7, p1, v6

    .line 643
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 644
    const/4 v7, 0x1

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    add-long/2addr v0, v8

    .line 645
    long-to-int v8, v0

    aput v8, p1, v7

    .line 646
    ushr-long/2addr v0, v6

    .line 647
    const/4 v7, 0x2

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    add-long/2addr v0, v8

    .line 648
    long-to-int v8, v0

    aput v8, p1, v7

    .line 649
    ushr-long/2addr v0, v6

    .line 650
    const/4 v7, 0x3

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    add-long/2addr v0, v8

    .line 651
    long-to-int v8, v0

    aput v8, p1, v7

    .line 652
    ushr-long/2addr v0, v6

    .line 653
    const/4 v7, 0x4

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    add-long/2addr v0, v8

    .line 654
    long-to-int v8, v0

    aput v8, p1, v7

    .line 655
    ushr-long/2addr v0, v6

    .line 656
    const/4 v7, 0x5

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    add-long/2addr v0, v8

    .line 657
    long-to-int v8, v0

    aput v8, p1, v7

    .line 658
    ushr-long/2addr v0, v6

    .line 659
    const/4 v7, 0x6

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v4, v8

    mul-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 660
    long-to-int v4, v0

    aput v4, p1, v7

    .line 661
    ushr-long/2addr v0, v6

    .line 662
    long-to-int v4, v0

    return v4
.end method

.method public static blacklist mulByWordAddTo(I[I[I)I
    .registers 15
    .param p0, "x"    # I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 667
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 668
    .local v2, "xVal":J
    const/4 v6, 0x0

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 669
    long-to-int v7, v0

    aput v7, p2, v6

    .line 670
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 671
    const/4 v7, 0x1

    aget v8, p2, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    aget v10, p1, v7

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 672
    long-to-int v8, v0

    aput v8, p2, v7

    .line 673
    ushr-long/2addr v0, v6

    .line 674
    const/4 v7, 0x2

    aget v8, p2, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    aget v10, p1, v7

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 675
    long-to-int v8, v0

    aput v8, p2, v7

    .line 676
    ushr-long/2addr v0, v6

    .line 677
    const/4 v7, 0x3

    aget v8, p2, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    aget v10, p1, v7

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 678
    long-to-int v8, v0

    aput v8, p2, v7

    .line 679
    ushr-long/2addr v0, v6

    .line 680
    const/4 v7, 0x4

    aget v8, p2, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    aget v10, p1, v7

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 681
    long-to-int v8, v0

    aput v8, p2, v7

    .line 682
    ushr-long/2addr v0, v6

    .line 683
    const/4 v7, 0x5

    aget v8, p2, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    aget v10, p1, v7

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 684
    long-to-int v8, v0

    aput v8, p2, v7

    .line 685
    ushr-long/2addr v0, v6

    .line 686
    const/4 v7, 0x6

    aget v8, p2, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    aget v10, p1, v7

    int-to-long v10, v10

    and-long/2addr v4, v10

    add-long/2addr v8, v4

    add-long/2addr v0, v8

    .line 687
    long-to-int v4, v0

    aput v4, p2, v7

    .line 688
    ushr-long/2addr v0, v6

    .line 689
    long-to-int v4, v0

    return v4
.end method

.method public static blacklist mulWord(I[I[II)I
    .registers 13
    .param p0, "x"    # I
    .param p1, "y"    # [I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .line 778
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 779
    .local v2, "xVal":J
    const/4 v6, 0x0

    .line 782
    .local v6, "i":I
    :cond_a
    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-long/2addr v0, v7

    .line 783
    add-int v7, p3, v6

    long-to-int v8, v0

    aput v8, p2, v7

    .line 784
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 786
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x7

    if-lt v6, v7, :cond_a

    .line 787
    long-to-int v4, v0

    return v4
.end method

.method public static blacklist mulWordAddTo(I[II[II)I
    .registers 16
    .param p0, "x"    # I
    .param p1, "y"    # [I
    .param p2, "yOff"    # I
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 694
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 695
    .local v2, "xVal":J
    add-int/lit8 v6, p2, 0x0

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    mul-long/2addr v6, v2

    add-int/lit8 v8, p4, 0x0

    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 696
    add-int/lit8 v6, p4, 0x0

    long-to-int v7, v0

    aput v7, p3, v6

    .line 697
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 698
    add-int/lit8 v7, p2, 0x1

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int/lit8 v9, p4, 0x1

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 699
    add-int/lit8 v7, p4, 0x1

    long-to-int v8, v0

    aput v8, p3, v7

    .line 700
    ushr-long/2addr v0, v6

    .line 701
    add-int/lit8 v7, p2, 0x2

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int/lit8 v9, p4, 0x2

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 702
    add-int/lit8 v7, p4, 0x2

    long-to-int v8, v0

    aput v8, p3, v7

    .line 703
    ushr-long/2addr v0, v6

    .line 704
    add-int/lit8 v7, p2, 0x3

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int/lit8 v9, p4, 0x3

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 705
    add-int/lit8 v7, p4, 0x3

    long-to-int v8, v0

    aput v8, p3, v7

    .line 706
    ushr-long/2addr v0, v6

    .line 707
    add-int/lit8 v7, p2, 0x4

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int/lit8 v9, p4, 0x4

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 708
    add-int/lit8 v7, p4, 0x4

    long-to-int v8, v0

    aput v8, p3, v7

    .line 709
    ushr-long/2addr v0, v6

    .line 710
    add-int/lit8 v7, p2, 0x5

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int/lit8 v9, p4, 0x5

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 711
    add-int/lit8 v7, p4, 0x5

    long-to-int v8, v0

    aput v8, p3, v7

    .line 712
    ushr-long/2addr v0, v6

    .line 713
    add-int/lit8 v7, p2, 0x6

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int/lit8 v9, p4, 0x6

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v4, v9

    add-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 714
    add-int/lit8 v4, p4, 0x6

    long-to-int v5, v0

    aput v5, p3, v4

    .line 715
    ushr-long/2addr v0, v6

    .line 716
    long-to-int v4, v0

    return v4
.end method

.method public static blacklist mulWordDwordAdd(IJ[II)I
    .registers 16
    .param p0, "x"    # I
    .param p1, "y"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 763
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 764
    .local v2, "xVal":J
    and-long v6, p1, v4

    mul-long/2addr v6, v2

    add-int/lit8 v8, p4, 0x0

    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 765
    add-int/lit8 v6, p4, 0x0

    long-to-int v7, v0

    aput v7, p3, v6

    .line 766
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 767
    ushr-long v7, p1, v6

    mul-long/2addr v7, v2

    add-int/lit8 v9, p4, 0x1

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 768
    add-int/lit8 v7, p4, 0x1

    long-to-int v8, v0

    aput v8, p3, v7

    .line 769
    ushr-long/2addr v0, v6

    .line 770
    add-int/lit8 v7, p4, 0x2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v4, v7

    add-long/2addr v0, v4

    .line 771
    add-int/lit8 v4, p4, 0x2

    long-to-int v5, v0

    aput v5, p3, v4

    .line 772
    ushr-long/2addr v0, v6

    .line 773
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_42

    const/4 v4, 0x0

    goto :goto_48

    :cond_42
    const/4 v4, 0x7

    const/4 v5, 0x3

    invoke-static {v4, p3, p4, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v4

    :goto_48
    return v4
.end method

.method public static blacklist square([II[II)V
    .registers 51
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "zz"    # [I
    .param p3, "zzOff"    # I

    .line 931
    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 934
    .local v0, "x_0":J
    const/4 v4, 0x0

    .line 936
    .local v4, "c":I
    const/4 v5, 0x6

    .local v5, "i":I
    const/16 v6, 0xe

    .line 939
    .local v6, "j":I
    :goto_f
    add-int/lit8 v7, v5, -0x1

    .end local v5    # "i":I
    .local v7, "i":I
    add-int v5, p1, v5

    aget v5, p0, v5

    int-to-long v8, v5

    and-long/2addr v8, v2

    .line 940
    .local v8, "xVal":J
    mul-long v10, v8, v8

    .line 941
    .local v10, "p":J
    add-int/lit8 v6, v6, -0x1

    add-int v5, p3, v6

    shl-int/lit8 v12, v4, 0x1f

    const/16 v13, 0x21

    ushr-long v14, v10, v13

    long-to-int v14, v14

    or-int/2addr v12, v14

    aput v12, p2, v5

    .line 942
    add-int/lit8 v6, v6, -0x1

    add-int v5, p3, v6

    const/4 v12, 0x1

    ushr-long v14, v10, v12

    long-to-int v14, v14

    aput v14, p2, v5

    .line 943
    long-to-int v4, v10

    .line 945
    .end local v8    # "xVal":J
    .end local v10    # "p":J
    if-gtz v7, :cond_269

    .line 948
    mul-long v8, v0, v0

    .line 949
    .local v8, "p":J
    shl-int/lit8 v5, v4, 0x1f

    int-to-long v10, v5

    and-long/2addr v10, v2

    ushr-long v13, v8, v13

    or-long/2addr v10, v13

    .line 950
    .local v10, "zz_1":J
    add-int/lit8 v5, p3, 0x0

    long-to-int v13, v8

    aput v13, p2, v5

    .line 951
    const/16 v5, 0x20

    ushr-long v13, v8, v5

    long-to-int v13, v13

    and-int/lit8 v4, v13, 0x1

    .line 955
    .end local v6    # "j":I
    .end local v7    # "i":I
    .end local v8    # "p":J
    add-int/lit8 v6, p1, 0x1

    aget v6, p0, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 956
    .local v6, "x_1":J
    add-int/lit8 v8, p3, 0x2

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 959
    .local v8, "zz_2":J
    mul-long v12, v6, v0

    add-long/2addr v10, v12

    .line 960
    long-to-int v12, v10

    .line 961
    .local v12, "w":I
    add-int/lit8 v13, p3, 0x1

    shl-int/lit8 v14, v12, 0x1

    or-int/2addr v14, v4

    aput v14, p2, v13

    .line 962
    ushr-int/lit8 v4, v12, 0x1f

    .line 963
    ushr-long v13, v10, v5

    add-long/2addr v8, v13

    .line 966
    add-int/lit8 v13, p1, 0x2

    aget v13, p0, v13

    int-to-long v13, v13

    and-long/2addr v13, v2

    .line 967
    .local v13, "x_2":J
    add-int/lit8 v15, p3, 0x3

    aget v15, p2, v15

    move-wide/from16 v16, v2

    int-to-long v2, v15

    and-long v2, v2, v16

    .line 968
    .local v2, "zz_3":J
    add-int/lit8 v15, p3, 0x4

    aget v15, p2, v15

    move/from16 v18, v5

    move-wide/from16 v19, v6

    .end local v6    # "x_1":J
    .local v19, "x_1":J
    int-to-long v5, v15

    and-long v5, v5, v16

    .line 970
    .local v5, "zz_4":J
    mul-long v21, v13, v0

    add-long v8, v8, v21

    .line 971
    long-to-int v7, v8

    .line 972
    .end local v12    # "w":I
    .local v7, "w":I
    add-int/lit8 v12, p3, 0x2

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 973
    ushr-int/lit8 v4, v7, 0x1f

    .line 974
    ushr-long v21, v8, v18

    mul-long v23, v13, v19

    add-long v21, v21, v23

    add-long v2, v2, v21

    .line 975
    ushr-long v21, v2, v18

    add-long v5, v5, v21

    .line 976
    and-long v2, v2, v16

    .line 979
    add-int/lit8 v12, p1, 0x3

    aget v12, p0, v12

    move-wide/from16 v21, v0

    .end local v0    # "x_0":J
    .local v21, "x_0":J
    int-to-long v0, v12

    and-long v0, v0, v16

    .line 980
    .local v0, "x_3":J
    add-int/lit8 v12, p3, 0x5

    aget v12, p2, v12

    move-wide/from16 v23, v0

    .end local v0    # "x_3":J
    .local v23, "x_3":J
    int-to-long v0, v12

    and-long v0, v0, v16

    ushr-long v25, v5, v18

    add-long v0, v0, v25

    .local v0, "zz_5":J
    and-long v5, v5, v16

    .line 981
    add-int/lit8 v12, p3, 0x6

    aget v12, p2, v12

    move-wide/from16 v25, v0

    .end local v0    # "zz_5":J
    .local v25, "zz_5":J
    int-to-long v0, v12

    and-long v0, v0, v16

    ushr-long v27, v25, v18

    add-long v0, v0, v27

    .local v0, "zz_6":J
    and-long v25, v25, v16

    .line 983
    mul-long v27, v23, v21

    add-long v2, v2, v27

    .line 984
    long-to-int v7, v2

    .line 985
    add-int/lit8 v12, p3, 0x3

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 986
    ushr-int/lit8 v4, v7, 0x1f

    .line 987
    ushr-long v27, v2, v18

    mul-long v29, v23, v19

    add-long v27, v27, v29

    add-long v5, v5, v27

    .line 988
    ushr-long v27, v5, v18

    mul-long v29, v23, v13

    add-long v27, v27, v29

    add-long v25, v25, v27

    .line 989
    and-long v5, v5, v16

    .line 990
    ushr-long v27, v25, v18

    add-long v0, v0, v27

    .line 991
    and-long v25, v25, v16

    .line 994
    add-int/lit8 v12, p1, 0x4

    aget v12, p0, v12

    move-wide/from16 v27, v0

    .end local v0    # "zz_6":J
    .local v27, "zz_6":J
    int-to-long v0, v12

    and-long v0, v0, v16

    .line 995
    .local v0, "x_4":J
    add-int/lit8 v12, p3, 0x7

    aget v12, p2, v12

    move-wide/from16 v29, v0

    .end local v0    # "x_4":J
    .local v29, "x_4":J
    int-to-long v0, v12

    and-long v0, v0, v16

    ushr-long v31, v27, v18

    add-long v0, v0, v31

    .local v0, "zz_7":J
    and-long v27, v27, v16

    .line 996
    add-int/lit8 v12, p3, 0x8

    aget v12, p2, v12

    move-wide/from16 v31, v0

    .end local v0    # "zz_7":J
    .local v31, "zz_7":J
    int-to-long v0, v12

    and-long v0, v0, v16

    ushr-long v33, v31, v18

    add-long v0, v0, v33

    .local v0, "zz_8":J
    and-long v31, v31, v16

    .line 998
    mul-long v33, v29, v21

    add-long v5, v5, v33

    .line 999
    long-to-int v7, v5

    .line 1000
    add-int/lit8 v12, p3, 0x4

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 1001
    ushr-int/lit8 v4, v7, 0x1f

    .line 1002
    ushr-long v33, v5, v18

    mul-long v35, v29, v19

    add-long v33, v33, v35

    add-long v25, v25, v33

    .line 1003
    ushr-long v33, v25, v18

    mul-long v35, v29, v13

    add-long v33, v33, v35

    add-long v27, v27, v33

    .line 1004
    and-long v25, v25, v16

    .line 1005
    ushr-long v33, v27, v18

    mul-long v35, v29, v23

    add-long v33, v33, v35

    add-long v31, v31, v33

    .line 1006
    and-long v27, v27, v16

    .line 1007
    ushr-long v33, v31, v18

    add-long v0, v0, v33

    .line 1008
    and-long v31, v31, v16

    .line 1011
    add-int/lit8 v12, p1, 0x5

    aget v12, p0, v12

    move-wide/from16 v33, v0

    .end local v0    # "zz_8":J
    .local v33, "zz_8":J
    int-to-long v0, v12

    and-long v0, v0, v16

    .line 1012
    .local v0, "x_5":J
    add-int/lit8 v12, p3, 0x9

    aget v12, p2, v12

    move-wide/from16 v35, v0

    .end local v0    # "x_5":J
    .local v35, "x_5":J
    int-to-long v0, v12

    and-long v0, v0, v16

    ushr-long v37, v33, v18

    add-long v0, v0, v37

    .local v0, "zz_9":J
    and-long v33, v33, v16

    .line 1013
    add-int/lit8 v12, p3, 0xa

    aget v12, p2, v12

    move-wide/from16 v37, v0

    .end local v0    # "zz_9":J
    .local v37, "zz_9":J
    int-to-long v0, v12

    and-long v0, v0, v16

    ushr-long v39, v37, v18

    add-long v0, v0, v39

    .local v0, "zz_10":J
    and-long v37, v37, v16

    .line 1015
    mul-long v39, v35, v21

    move-wide/from16 v41, v0

    .end local v0    # "zz_10":J
    .local v41, "zz_10":J
    add-long v0, v25, v39

    .line 1016
    .end local v25    # "zz_5":J
    .local v0, "zz_5":J
    long-to-int v7, v0

    .line 1017
    add-int/lit8 v12, p3, 0x5

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 1018
    ushr-int/lit8 v4, v7, 0x1f

    .line 1019
    ushr-long v25, v0, v18

    mul-long v39, v35, v19

    add-long v25, v25, v39

    add-long v27, v27, v25

    .line 1020
    ushr-long v25, v27, v18

    mul-long v39, v35, v13

    add-long v25, v25, v39

    add-long v31, v31, v25

    .line 1021
    and-long v25, v27, v16

    .line 1022
    .end local v27    # "zz_6":J
    .local v25, "zz_6":J
    ushr-long v27, v31, v18

    mul-long v39, v35, v23

    add-long v27, v27, v39

    add-long v33, v33, v27

    .line 1023
    and-long v27, v31, v16

    .line 1024
    .end local v31    # "zz_7":J
    .local v27, "zz_7":J
    ushr-long v31, v33, v18

    mul-long v39, v35, v29

    add-long v31, v31, v39

    add-long v37, v37, v31

    .line 1025
    and-long v31, v33, v16

    .line 1026
    .end local v33    # "zz_8":J
    .local v31, "zz_8":J
    ushr-long v33, v37, v18

    add-long v33, v41, v33

    .line 1027
    .end local v41    # "zz_10":J
    .local v33, "zz_10":J
    and-long v37, v37, v16

    .line 1030
    add-int/lit8 v12, p1, 0x6

    aget v12, p0, v12

    move-wide/from16 v39, v0

    .end local v0    # "zz_5":J
    .local v39, "zz_5":J
    int-to-long v0, v12

    and-long v0, v0, v16

    .line 1031
    .local v0, "x_6":J
    add-int/lit8 v12, p3, 0xb

    aget v12, p2, v12

    move-wide/from16 v41, v0

    .end local v0    # "x_6":J
    .local v41, "x_6":J
    int-to-long v0, v12

    and-long v0, v0, v16

    ushr-long v43, v33, v18

    add-long v0, v0, v43

    .local v0, "zz_11":J
    and-long v33, v33, v16

    .line 1032
    add-int/lit8 v12, p3, 0xc

    aget v12, p2, v12

    move-wide/from16 v43, v0

    .end local v0    # "zz_11":J
    .local v43, "zz_11":J
    int-to-long v0, v12

    and-long v0, v0, v16

    ushr-long v45, v43, v18

    add-long v0, v0, v45

    .local v0, "zz_12":J
    and-long v15, v43, v16

    .line 1034
    .end local v43    # "zz_11":J
    .local v15, "zz_11":J
    mul-long v43, v41, v21

    move-wide/from16 v45, v0

    .end local v0    # "zz_12":J
    .local v45, "zz_12":J
    add-long v0, v25, v43

    .line 1035
    .end local v25    # "zz_6":J
    .local v0, "zz_6":J
    long-to-int v7, v0

    .line 1036
    add-int/lit8 v12, p3, 0x6

    shl-int/lit8 v17, v7, 0x1

    or-int v17, v17, v4

    aput v17, p2, v12

    .line 1037
    ushr-int/lit8 v4, v7, 0x1f

    .line 1038
    ushr-long v25, v0, v18

    mul-long v43, v41, v19

    add-long v25, v25, v43

    move-wide/from16 v43, v0

    .end local v0    # "zz_6":J
    .local v43, "zz_6":J
    add-long v0, v27, v25

    .line 1039
    .end local v27    # "zz_7":J
    .local v0, "zz_7":J
    ushr-long v25, v0, v18

    mul-long v27, v41, v13

    add-long v25, v25, v27

    move-wide/from16 v27, v2

    .end local v2    # "zz_3":J
    .local v27, "zz_3":J
    add-long v2, v31, v25

    .line 1040
    .end local v31    # "zz_8":J
    .local v2, "zz_8":J
    ushr-long v25, v2, v18

    mul-long v31, v41, v23

    add-long v25, v25, v31

    move-wide/from16 v31, v5

    move v6, v4

    .end local v4    # "c":I
    .end local v5    # "zz_4":J
    .local v6, "c":I
    .local v31, "zz_4":J
    add-long v4, v37, v25

    .line 1041
    .end local v37    # "zz_9":J
    .local v4, "zz_9":J
    ushr-long v25, v4, v18

    mul-long v37, v41, v29

    add-long v25, v25, v37

    move/from16 v17, v6

    move v12, v7

    .end local v6    # "c":I
    .end local v7    # "w":I
    .restart local v12    # "w":I
    .local v17, "c":I
    add-long v6, v33, v25

    .line 1042
    .end local v33    # "zz_10":J
    .local v6, "zz_10":J
    ushr-long v25, v6, v18

    mul-long v33, v41, v35

    add-long v25, v25, v33

    move-wide/from16 v33, v8

    .end local v8    # "zz_2":J
    .local v33, "zz_2":J
    add-long v8, v15, v25

    .line 1043
    .end local v15    # "zz_11":J
    .local v8, "zz_11":J
    ushr-long v15, v8, v18

    move-wide/from16 v25, v10

    .end local v10    # "zz_1":J
    .local v25, "zz_1":J
    add-long v10, v45, v15

    .line 1046
    .end local v45    # "zz_12":J
    .local v10, "zz_12":J
    long-to-int v12, v0

    .line 1047
    add-int/lit8 v15, p3, 0x7

    shl-int/lit8 v16, v12, 0x1

    or-int v16, v16, v17

    aput v16, p2, v15

    .line 1048
    ushr-int/lit8 v15, v12, 0x1f

    .line 1049
    .end local v17    # "c":I
    .local v15, "c":I
    long-to-int v12, v2

    .line 1050
    add-int/lit8 v16, p3, 0x8

    shl-int/lit8 v17, v12, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 1051
    ushr-int/lit8 v15, v12, 0x1f

    .line 1052
    long-to-int v12, v4

    .line 1053
    add-int/lit8 v16, p3, 0x9

    shl-int/lit8 v17, v12, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 1054
    ushr-int/lit8 v15, v12, 0x1f

    .line 1055
    long-to-int v12, v6

    .line 1056
    add-int/lit8 v16, p3, 0xa

    shl-int/lit8 v17, v12, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 1057
    ushr-int/lit8 v15, v12, 0x1f

    .line 1058
    long-to-int v12, v8

    .line 1059
    add-int/lit8 v16, p3, 0xb

    shl-int/lit8 v17, v12, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 1060
    ushr-int/lit8 v15, v12, 0x1f

    .line 1061
    long-to-int v12, v10

    .line 1062
    add-int/lit8 v16, p3, 0xc

    shl-int/lit8 v17, v12, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 1063
    ushr-int/lit8 v15, v12, 0x1f

    .line 1064
    add-int/lit8 v16, p3, 0xd

    aget v16, p2, v16

    move-wide/from16 v37, v0

    .end local v0    # "zz_7":J
    .local v37, "zz_7":J
    ushr-long v0, v10, v18

    long-to-int v0, v0

    add-int v16, v16, v0

    .line 1065
    .end local v12    # "w":I
    .local v16, "w":I
    add-int/lit8 v0, p3, 0xd

    shl-int/lit8 v1, v16, 0x1

    or-int/2addr v1, v15

    aput v1, p2, v0

    .line 1066
    return-void

    .line 945
    .end local v2    # "zz_8":J
    .end local v8    # "zz_11":J
    .end local v10    # "zz_12":J
    .end local v13    # "x_2":J
    .end local v15    # "c":I
    .end local v16    # "w":I
    .end local v19    # "x_1":J
    .end local v21    # "x_0":J
    .end local v23    # "x_3":J
    .end local v25    # "zz_1":J
    .end local v27    # "zz_3":J
    .end local v29    # "x_4":J
    .end local v31    # "zz_4":J
    .end local v33    # "zz_2":J
    .end local v35    # "x_5":J
    .end local v37    # "zz_7":J
    .end local v39    # "zz_5":J
    .end local v41    # "x_6":J
    .end local v43    # "zz_6":J
    .local v0, "x_0":J
    .local v4, "c":I
    .local v6, "j":I
    .local v7, "i":I
    :cond_269
    move-wide/from16 v21, v0

    move-wide/from16 v16, v2

    .end local v0    # "x_0":J
    .restart local v21    # "x_0":J
    move v5, v7

    goto/16 :goto_f
.end method

.method public static blacklist square([I[I)V
    .registers 55
    .param p0, "x"    # [I
    .param p1, "zz"    # [I

    .line 792
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 795
    .local v1, "x_0":J
    const/4 v5, 0x0

    .line 797
    .local v5, "c":I
    const/4 v6, 0x6

    .local v6, "i":I
    const/16 v7, 0xe

    .line 800
    .local v7, "j":I
    :goto_e
    add-int/lit8 v8, v6, -0x1

    .end local v6    # "i":I
    .local v8, "i":I
    aget v6, p0, v6

    int-to-long v9, v6

    and-long/2addr v9, v3

    .line 801
    .local v9, "xVal":J
    mul-long v11, v9, v9

    .line 802
    .local v11, "p":J
    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v6, v5, 0x1f

    const/16 v13, 0x21

    ushr-long v14, v11, v13

    long-to-int v14, v14

    or-int/2addr v6, v14

    aput v6, p1, v7

    .line 803
    add-int/lit8 v7, v7, -0x1

    const/4 v6, 0x1

    ushr-long v14, v11, v6

    long-to-int v14, v14

    aput v14, p1, v7

    .line 804
    long-to-int v5, v11

    .line 806
    .end local v9    # "xVal":J
    .end local v11    # "p":J
    if-gtz v8, :cond_23a

    .line 809
    mul-long v9, v1, v1

    .line 810
    .local v9, "p":J
    shl-int/lit8 v11, v5, 0x1f

    int-to-long v11, v11

    and-long/2addr v11, v3

    ushr-long v13, v9, v13

    or-long/2addr v11, v13

    .line 811
    .local v11, "zz_1":J
    long-to-int v13, v9

    aput v13, p1, v0

    .line 812
    const/16 v0, 0x20

    ushr-long v13, v9, v0

    long-to-int v13, v13

    and-int/lit8 v5, v13, 0x1

    .line 816
    .end local v7    # "j":I
    .end local v8    # "i":I
    .end local v9    # "p":J
    aget v7, p0, v6

    int-to-long v7, v7

    and-long/2addr v7, v3

    .line 817
    .local v7, "x_1":J
    const/4 v9, 0x2

    aget v10, p1, v9

    int-to-long v13, v10

    and-long/2addr v13, v3

    .line 820
    .local v13, "zz_2":J
    mul-long v15, v7, v1

    add-long/2addr v11, v15

    .line 821
    long-to-int v10, v11

    .line 822
    .local v10, "w":I
    shl-int/lit8 v15, v10, 0x1

    or-int/2addr v15, v5

    aput v15, p1, v6

    .line 823
    ushr-int/lit8 v5, v10, 0x1f

    .line 824
    ushr-long v15, v11, v0

    add-long/2addr v13, v15

    .line 827
    aget v6, p0, v9

    move-wide v15, v1

    move v2, v0

    .end local v1    # "x_0":J
    .local v15, "x_0":J
    int-to-long v0, v6

    and-long/2addr v0, v3

    .line 828
    .local v0, "x_2":J
    const/4 v6, 0x3

    move/from16 v17, v2

    aget v2, p1, v6

    move-wide/from16 v18, v3

    int-to-long v3, v2

    and-long v2, v3, v18

    .line 829
    .local v2, "zz_3":J
    const/16 v20, 0x4

    aget v4, p1, v20

    move-wide/from16 v21, v7

    move v8, v6

    .end local v7    # "x_1":J
    .local v21, "x_1":J
    int-to-long v6, v4

    and-long v6, v6, v18

    .line 831
    .local v6, "zz_4":J
    mul-long v23, v0, v15

    add-long v13, v13, v23

    .line 832
    long-to-int v4, v13

    .line 833
    .end local v10    # "w":I
    .local v4, "w":I
    shl-int/lit8 v10, v4, 0x1

    or-int/2addr v10, v5

    aput v10, p1, v9

    .line 834
    ushr-int/lit8 v5, v4, 0x1f

    .line 835
    ushr-long v9, v13, v17

    mul-long v23, v0, v21

    add-long v9, v9, v23

    add-long/2addr v2, v9

    .line 836
    ushr-long v9, v2, v17

    add-long/2addr v6, v9

    .line 837
    and-long v2, v2, v18

    .line 840
    aget v9, p0, v8

    int-to-long v9, v9

    and-long v9, v9, v18

    .line 841
    .local v9, "x_3":J
    const/16 v23, 0x5

    move/from16 v24, v8

    aget v8, p1, v23

    move-wide/from16 v25, v0

    .end local v0    # "x_2":J
    .local v25, "x_2":J
    int-to-long v0, v8

    and-long v0, v0, v18

    ushr-long v27, v6, v17

    add-long v0, v0, v27

    .local v0, "zz_5":J
    and-long v6, v6, v18

    .line 842
    const/16 v27, 0x6

    aget v8, p1, v27

    move-wide/from16 v28, v0

    .end local v0    # "zz_5":J
    .local v28, "zz_5":J
    int-to-long v0, v8

    and-long v0, v0, v18

    ushr-long v30, v28, v17

    add-long v0, v0, v30

    .local v0, "zz_6":J
    and-long v28, v28, v18

    .line 844
    mul-long v30, v9, v15

    add-long v2, v2, v30

    .line 845
    long-to-int v4, v2

    .line 846
    shl-int/lit8 v8, v4, 0x1

    or-int/2addr v8, v5

    aput v8, p1, v24

    .line 847
    ushr-int/lit8 v5, v4, 0x1f

    .line 848
    ushr-long v30, v2, v17

    mul-long v32, v9, v21

    add-long v30, v30, v32

    add-long v6, v6, v30

    .line 849
    ushr-long v30, v6, v17

    mul-long v32, v9, v25

    add-long v30, v30, v32

    add-long v28, v28, v30

    .line 850
    and-long v6, v6, v18

    .line 851
    ushr-long v30, v28, v17

    add-long v0, v0, v30

    .line 852
    and-long v28, v28, v18

    .line 855
    aget v8, p0, v20

    move-wide/from16 v30, v0

    .end local v0    # "zz_6":J
    .local v30, "zz_6":J
    int-to-long v0, v8

    and-long v0, v0, v18

    .line 856
    .local v0, "x_4":J
    const/16 v24, 0x7

    aget v8, p1, v24

    move-wide/from16 v32, v0

    .end local v0    # "x_4":J
    .local v32, "x_4":J
    int-to-long v0, v8

    and-long v0, v0, v18

    ushr-long v34, v30, v17

    add-long v0, v0, v34

    .local v0, "zz_7":J
    and-long v30, v30, v18

    .line 857
    const/16 v34, 0x8

    aget v8, p1, v34

    move-wide/from16 v35, v0

    .end local v0    # "zz_7":J
    .local v35, "zz_7":J
    int-to-long v0, v8

    and-long v0, v0, v18

    ushr-long v37, v35, v17

    add-long v0, v0, v37

    .local v0, "zz_8":J
    and-long v35, v35, v18

    .line 859
    mul-long v37, v32, v15

    add-long v6, v6, v37

    .line 860
    long-to-int v4, v6

    .line 861
    shl-int/lit8 v8, v4, 0x1

    or-int/2addr v8, v5

    aput v8, p1, v20

    .line 862
    ushr-int/lit8 v5, v4, 0x1f

    .line 863
    ushr-long v37, v6, v17

    mul-long v39, v32, v21

    add-long v37, v37, v39

    add-long v28, v28, v37

    .line 864
    ushr-long v37, v28, v17

    mul-long v39, v32, v25

    add-long v37, v37, v39

    add-long v30, v30, v37

    .line 865
    and-long v28, v28, v18

    .line 866
    ushr-long v37, v30, v17

    mul-long v39, v32, v9

    add-long v37, v37, v39

    add-long v35, v35, v37

    .line 867
    and-long v30, v30, v18

    .line 868
    ushr-long v37, v35, v17

    add-long v0, v0, v37

    .line 869
    and-long v35, v35, v18

    .line 872
    aget v8, p0, v23

    move-wide/from16 v37, v0

    .end local v0    # "zz_8":J
    .local v37, "zz_8":J
    int-to-long v0, v8

    and-long v0, v0, v18

    .line 873
    .local v0, "x_5":J
    const/16 v20, 0x9

    aget v8, p1, v20

    move-wide/from16 v39, v0

    .end local v0    # "x_5":J
    .local v39, "x_5":J
    int-to-long v0, v8

    and-long v0, v0, v18

    ushr-long v41, v37, v17

    add-long v0, v0, v41

    .local v0, "zz_9":J
    and-long v37, v37, v18

    .line 874
    const/16 v41, 0xa

    aget v8, p1, v41

    move-wide/from16 v42, v0

    .end local v0    # "zz_9":J
    .local v42, "zz_9":J
    int-to-long v0, v8

    and-long v0, v0, v18

    ushr-long v44, v42, v17

    add-long v0, v0, v44

    .local v0, "zz_10":J
    and-long v42, v42, v18

    .line 876
    mul-long v44, v39, v15

    move-wide/from16 v46, v0

    .end local v0    # "zz_10":J
    .local v46, "zz_10":J
    add-long v0, v28, v44

    .line 877
    .end local v28    # "zz_5":J
    .local v0, "zz_5":J
    long-to-int v4, v0

    .line 878
    shl-int/lit8 v8, v4, 0x1

    or-int/2addr v8, v5

    aput v8, p1, v23

    .line 879
    ushr-int/lit8 v5, v4, 0x1f

    .line 880
    ushr-long v28, v0, v17

    mul-long v44, v39, v21

    add-long v28, v28, v44

    add-long v30, v30, v28

    .line 881
    ushr-long v28, v30, v17

    mul-long v44, v39, v25

    add-long v28, v28, v44

    add-long v35, v35, v28

    .line 882
    and-long v28, v30, v18

    .line 883
    .end local v30    # "zz_6":J
    .local v28, "zz_6":J
    ushr-long v30, v35, v17

    mul-long v44, v39, v9

    add-long v30, v30, v44

    add-long v37, v37, v30

    .line 884
    and-long v30, v35, v18

    .line 885
    .end local v35    # "zz_7":J
    .local v30, "zz_7":J
    ushr-long v35, v37, v17

    mul-long v44, v39, v32

    add-long v35, v35, v44

    add-long v42, v42, v35

    .line 886
    and-long v35, v37, v18

    .line 887
    .end local v37    # "zz_8":J
    .local v35, "zz_8":J
    ushr-long v37, v42, v17

    add-long v37, v46, v37

    .line 888
    .end local v46    # "zz_10":J
    .local v37, "zz_10":J
    and-long v42, v42, v18

    .line 891
    aget v8, p0, v27

    move-wide/from16 v44, v0

    .end local v0    # "zz_5":J
    .local v44, "zz_5":J
    int-to-long v0, v8

    and-long v0, v0, v18

    .line 892
    .local v0, "x_6":J
    const/16 v23, 0xb

    aget v8, p1, v23

    move-wide/from16 v46, v0

    .end local v0    # "x_6":J
    .local v46, "x_6":J
    int-to-long v0, v8

    and-long v0, v0, v18

    ushr-long v48, v37, v17

    add-long v0, v0, v48

    .local v0, "zz_11":J
    and-long v37, v37, v18

    .line 893
    const/16 v48, 0xc

    aget v8, p1, v48

    move-wide/from16 v49, v0

    .end local v0    # "zz_11":J
    .local v49, "zz_11":J
    int-to-long v0, v8

    and-long v0, v0, v18

    ushr-long v51, v49, v17

    add-long v0, v0, v51

    .local v0, "zz_12":J
    and-long v18, v49, v18

    .line 895
    .end local v49    # "zz_11":J
    .local v18, "zz_11":J
    mul-long v49, v46, v15

    move-wide/from16 v51, v0

    .end local v0    # "zz_12":J
    .local v51, "zz_12":J
    add-long v0, v28, v49

    .line 896
    .end local v28    # "zz_6":J
    .local v0, "zz_6":J
    long-to-int v4, v0

    .line 897
    shl-int/lit8 v8, v4, 0x1

    or-int/2addr v8, v5

    aput v8, p1, v27

    .line 898
    ushr-int/lit8 v5, v4, 0x1f

    .line 899
    ushr-long v27, v0, v17

    mul-long v49, v46, v21

    add-long v27, v27, v49

    move-wide/from16 v49, v0

    .end local v0    # "zz_6":J
    .local v49, "zz_6":J
    add-long v0, v30, v27

    .line 900
    .end local v30    # "zz_7":J
    .local v0, "zz_7":J
    ushr-long v27, v0, v17

    mul-long v29, v46, v25

    add-long v27, v27, v29

    move-wide/from16 v29, v2

    .end local v2    # "zz_3":J
    .local v29, "zz_3":J
    add-long v2, v35, v27

    .line 901
    .end local v35    # "zz_8":J
    .local v2, "zz_8":J
    ushr-long v27, v2, v17

    mul-long v35, v46, v9

    add-long v27, v27, v35

    move v8, v4

    move/from16 v31, v5

    .end local v4    # "w":I
    .end local v5    # "c":I
    .local v8, "w":I
    .local v31, "c":I
    add-long v4, v42, v27

    .line 902
    .end local v42    # "zz_9":J
    .local v4, "zz_9":J
    ushr-long v27, v4, v17

    mul-long v35, v46, v32

    add-long v27, v27, v35

    move-wide/from16 v35, v6

    .end local v6    # "zz_4":J
    .local v35, "zz_4":J
    add-long v6, v37, v27

    .line 903
    .end local v37    # "zz_10":J
    .local v6, "zz_10":J
    ushr-long v27, v6, v17

    mul-long v37, v46, v39

    add-long v27, v27, v37

    move-wide/from16 v37, v9

    move v10, v8

    .end local v8    # "w":I
    .end local v9    # "x_3":J
    .restart local v10    # "w":I
    .local v37, "x_3":J
    add-long v8, v18, v27

    .line 904
    .end local v18    # "zz_11":J
    .local v8, "zz_11":J
    ushr-long v18, v8, v17

    move-wide/from16 v27, v11

    move v12, v10

    .end local v10    # "w":I
    .end local v11    # "zz_1":J
    .local v12, "w":I
    .local v27, "zz_1":J
    add-long v10, v51, v18

    .line 907
    .end local v51    # "zz_12":J
    .local v10, "zz_12":J
    long-to-int v12, v0

    .line 908
    shl-int/lit8 v18, v12, 0x1

    or-int v18, v18, v31

    aput v18, p1, v24

    .line 909
    ushr-int/lit8 v18, v12, 0x1f

    .line 910
    .end local v31    # "c":I
    .local v18, "c":I
    long-to-int v12, v2

    .line 911
    shl-int/lit8 v19, v12, 0x1

    or-int v19, v19, v18

    aput v19, p1, v34

    .line 912
    ushr-int/lit8 v18, v12, 0x1f

    .line 913
    long-to-int v12, v4

    .line 914
    shl-int/lit8 v19, v12, 0x1

    or-int v19, v19, v18

    aput v19, p1, v20

    .line 915
    ushr-int/lit8 v18, v12, 0x1f

    .line 916
    long-to-int v12, v6

    .line 917
    shl-int/lit8 v19, v12, 0x1

    or-int v19, v19, v18

    aput v19, p1, v41

    .line 918
    ushr-int/lit8 v18, v12, 0x1f

    .line 919
    long-to-int v12, v8

    .line 920
    shl-int/lit8 v19, v12, 0x1

    or-int v19, v19, v18

    aput v19, p1, v23

    .line 921
    ushr-int/lit8 v18, v12, 0x1f

    .line 922
    long-to-int v12, v10

    .line 923
    shl-int/lit8 v19, v12, 0x1

    or-int v19, v19, v18

    aput v19, p1, v48

    .line 924
    ushr-int/lit8 v18, v12, 0x1f

    .line 925
    const/16 v19, 0xd

    aget v20, p1, v19

    move-wide/from16 v23, v0

    .end local v0    # "zz_7":J
    .local v23, "zz_7":J
    ushr-long v0, v10, v17

    long-to-int v0, v0

    add-int v20, v20, v0

    .line 926
    .end local v12    # "w":I
    .local v20, "w":I
    shl-int/lit8 v0, v20, 0x1

    or-int v0, v0, v18

    aput v0, p1, v19

    .line 927
    return-void

    .line 806
    .end local v2    # "zz_8":J
    .end local v4    # "zz_9":J
    .end local v6    # "zz_10":J
    .end local v10    # "zz_12":J
    .end local v13    # "zz_2":J
    .end local v15    # "x_0":J
    .end local v18    # "c":I
    .end local v20    # "w":I
    .end local v21    # "x_1":J
    .end local v23    # "zz_7":J
    .end local v25    # "x_2":J
    .end local v27    # "zz_1":J
    .end local v29    # "zz_3":J
    .end local v32    # "x_4":J
    .end local v35    # "zz_4":J
    .end local v37    # "x_3":J
    .end local v39    # "x_5":J
    .end local v44    # "zz_5":J
    .end local v46    # "x_6":J
    .end local v49    # "zz_6":J
    .restart local v1    # "x_0":J
    .restart local v5    # "c":I
    .local v7, "j":I
    .local v8, "i":I
    :cond_23a
    move-wide v15, v1

    move-wide/from16 v18, v3

    .end local v1    # "x_0":J
    .restart local v15    # "x_0":J
    move v6, v8

    goto/16 :goto_e
.end method

.method public static blacklist sub([II[II[II)I
    .registers 16
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .line 1097
    const-wide/16 v0, 0x0

    .line 1098
    .local v0, "c":J
    add-int/lit8 v2, p1, 0x0

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-int/lit8 v6, p3, 0x0

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    sub-long/2addr v2, v6

    add-long/2addr v0, v2

    .line 1099
    add-int/lit8 v2, p5, 0x0

    long-to-int v3, v0

    aput v3, p4, v2

    .line 1100
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1101
    add-int/lit8 v3, p1, 0x1

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x1

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1102
    add-int/lit8 v3, p5, 0x1

    long-to-int v6, v0

    aput v6, p4, v3

    .line 1103
    shr-long/2addr v0, v2

    .line 1104
    add-int/lit8 v3, p1, 0x2

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x2

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1105
    add-int/lit8 v3, p5, 0x2

    long-to-int v6, v0

    aput v6, p4, v3

    .line 1106
    shr-long/2addr v0, v2

    .line 1107
    add-int/lit8 v3, p1, 0x3

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x3

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1108
    add-int/lit8 v3, p5, 0x3

    long-to-int v6, v0

    aput v6, p4, v3

    .line 1109
    shr-long/2addr v0, v2

    .line 1110
    add-int/lit8 v3, p1, 0x4

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x4

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1111
    add-int/lit8 v3, p5, 0x4

    long-to-int v6, v0

    aput v6, p4, v3

    .line 1112
    shr-long/2addr v0, v2

    .line 1113
    add-int/lit8 v3, p1, 0x5

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x5

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1114
    add-int/lit8 v3, p5, 0x5

    long-to-int v6, v0

    aput v6, p4, v3

    .line 1115
    shr-long/2addr v0, v2

    .line 1116
    add-int/lit8 v3, p1, 0x6

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x6

    aget v3, p2, v3

    int-to-long v8, v3

    and-long v3, v8, v4

    sub-long/2addr v6, v3

    add-long/2addr v0, v6

    .line 1117
    add-int/lit8 v3, p5, 0x6

    long-to-int v4, v0

    aput v4, p4, v3

    .line 1118
    shr-long/2addr v0, v2

    .line 1119
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist sub([I[I[I)I
    .registers 14
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 1070
    const-wide/16 v0, 0x0

    .line 1071
    .local v0, "c":J
    const/4 v2, 0x0

    aget v3, p0, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    add-long/2addr v0, v3

    .line 1072
    long-to-int v3, v0

    aput v3, p2, v2

    .line 1073
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1074
    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1075
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1076
    shr-long/2addr v0, v2

    .line 1077
    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1078
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1079
    shr-long/2addr v0, v2

    .line 1080
    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1081
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1082
    shr-long/2addr v0, v2

    .line 1083
    const/4 v3, 0x4

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1084
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1085
    shr-long/2addr v0, v2

    .line 1086
    const/4 v3, 0x5

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1087
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1088
    shr-long/2addr v0, v2

    .line 1089
    const/4 v3, 0x6

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    sub-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 1090
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1091
    shr-long/2addr v0, v2

    .line 1092
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subBothFrom([I[I[I)I
    .registers 14
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 1124
    const-wide/16 v0, 0x0

    .line 1125
    .local v0, "c":J
    const/4 v2, 0x0

    aget v3, p2, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p0, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    add-long/2addr v0, v3

    .line 1126
    long-to-int v3, v0

    aput v3, p2, v2

    .line 1127
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1128
    const/4 v3, 0x1

    aget v4, p2, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1129
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1130
    shr-long/2addr v0, v2

    .line 1131
    const/4 v3, 0x2

    aget v4, p2, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1132
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1133
    shr-long/2addr v0, v2

    .line 1134
    const/4 v3, 0x3

    aget v4, p2, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1135
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1136
    shr-long/2addr v0, v2

    .line 1137
    const/4 v3, 0x4

    aget v4, p2, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1138
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1139
    shr-long/2addr v0, v2

    .line 1140
    const/4 v3, 0x5

    aget v4, p2, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1141
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1142
    shr-long/2addr v0, v2

    .line 1143
    const/4 v3, 0x6

    aget v4, p2, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    aget v4, p1, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    sub-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 1144
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1145
    shr-long/2addr v0, v2

    .line 1146
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subFrom([II[II)I
    .registers 14
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .line 1178
    const-wide/16 v0, 0x0

    .line 1179
    .local v0, "c":J
    add-int/lit8 v2, p3, 0x0

    aget v2, p2, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-int/lit8 v6, p1, 0x0

    aget v6, p0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    sub-long/2addr v2, v6

    add-long/2addr v0, v2

    .line 1180
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1181
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1182
    add-int/lit8 v3, p3, 0x1

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x1

    aget v3, p0, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1183
    add-int/lit8 v3, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1184
    shr-long/2addr v0, v2

    .line 1185
    add-int/lit8 v3, p3, 0x2

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x2

    aget v3, p0, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1186
    add-int/lit8 v3, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1187
    shr-long/2addr v0, v2

    .line 1188
    add-int/lit8 v3, p3, 0x3

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x3

    aget v3, p0, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1189
    add-int/lit8 v3, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1190
    shr-long/2addr v0, v2

    .line 1191
    add-int/lit8 v3, p3, 0x4

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x4

    aget v3, p0, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1192
    add-int/lit8 v3, p3, 0x4

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1193
    shr-long/2addr v0, v2

    .line 1194
    add-int/lit8 v3, p3, 0x5

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x5

    aget v3, p0, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1195
    add-int/lit8 v3, p3, 0x5

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1196
    shr-long/2addr v0, v2

    .line 1197
    add-int/lit8 v3, p3, 0x6

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x6

    aget v3, p0, v3

    int-to-long v8, v3

    and-long v3, v8, v4

    sub-long/2addr v6, v3

    add-long/2addr v0, v6

    .line 1198
    add-int/lit8 v3, p3, 0x6

    long-to-int v4, v0

    aput v4, p2, v3

    .line 1199
    shr-long/2addr v0, v2

    .line 1200
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subFrom([I[I)I
    .registers 13
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 1151
    const-wide/16 v0, 0x0

    .line 1152
    .local v0, "c":J
    const/4 v2, 0x0

    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p0, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    add-long/2addr v0, v3

    .line 1153
    long-to-int v3, v0

    aput v3, p1, v2

    .line 1154
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1155
    const/4 v3, 0x1

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1156
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1157
    shr-long/2addr v0, v2

    .line 1158
    const/4 v3, 0x2

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1159
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1160
    shr-long/2addr v0, v2

    .line 1161
    const/4 v3, 0x3

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1162
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1163
    shr-long/2addr v0, v2

    .line 1164
    const/4 v3, 0x4

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1165
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1166
    shr-long/2addr v0, v2

    .line 1167
    const/4 v3, 0x5

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1168
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1169
    shr-long/2addr v0, v2

    .line 1170
    const/4 v3, 0x6

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    sub-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 1171
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1172
    shr-long/2addr v0, v2

    .line 1173
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist toBigInteger([I)Ljava/math/BigInteger;
    .registers 5
    .param p0, "x"    # [I

    .line 1205
    const/16 v0, 0x1c

    new-array v0, v0, [B

    .line 1206
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    const/4 v2, 0x7

    if-ge v1, v2, :cond_16

    .line 1208
    aget v2, p0, v1

    .line 1209
    .local v2, "x_i":I
    if-eqz v2, :cond_13

    .line 1211
    rsub-int/lit8 v3, v1, 0x6

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v2, v0, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 1206
    .end local v2    # "x_i":I
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1214
    .end local v1    # "i":I
    :cond_16
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public static blacklist zero([I)V
    .registers 3
    .param p0, "z"    # [I

    .line 1219
    const/4 v0, 0x0

    aput v0, p0, v0

    .line 1220
    const/4 v1, 0x1

    aput v0, p0, v1

    .line 1221
    const/4 v1, 0x2

    aput v0, p0, v1

    .line 1222
    const/4 v1, 0x3

    aput v0, p0, v1

    .line 1223
    const/4 v1, 0x4

    aput v0, p0, v1

    .line 1224
    const/4 v1, 0x5

    aput v0, p0, v1

    .line 1225
    const/4 v1, 0x6

    aput v0, p0, v1

    .line 1226
    return-void
.end method
