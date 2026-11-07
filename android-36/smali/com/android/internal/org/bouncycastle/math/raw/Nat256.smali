.class public abstract Lcom/android/internal/org/bouncycastle/math/raw/Nat256;
.super Ljava/lang/Object;
.source "Nat256.java"


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

    .line 47
    const-wide/16 v0, 0x0

    .line 48
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

    .line 49
    add-int/lit8 v2, p5, 0x0

    long-to-int v3, v0

    aput v3, p4, v2

    .line 50
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 51
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

    .line 52
    add-int/lit8 v3, p5, 0x1

    long-to-int v6, v0

    aput v6, p4, v3

    .line 53
    ushr-long/2addr v0, v2

    .line 54
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

    .line 55
    add-int/lit8 v3, p5, 0x2

    long-to-int v6, v0

    aput v6, p4, v3

    .line 56
    ushr-long/2addr v0, v2

    .line 57
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

    .line 58
    add-int/lit8 v3, p5, 0x3

    long-to-int v6, v0

    aput v6, p4, v3

    .line 59
    ushr-long/2addr v0, v2

    .line 60
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

    .line 61
    add-int/lit8 v3, p5, 0x4

    long-to-int v6, v0

    aput v6, p4, v3

    .line 62
    ushr-long/2addr v0, v2

    .line 63
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

    .line 64
    add-int/lit8 v3, p5, 0x5

    long-to-int v6, v0

    aput v6, p4, v3

    .line 65
    ushr-long/2addr v0, v2

    .line 66
    add-int/lit8 v3, p1, 0x6

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x6

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 67
    add-int/lit8 v3, p5, 0x6

    long-to-int v6, v0

    aput v6, p4, v3

    .line 68
    ushr-long/2addr v0, v2

    .line 69
    add-int/lit8 v3, p1, 0x7

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x7

    aget v3, p2, v3

    int-to-long v8, v3

    and-long v3, v8, v4

    add-long/2addr v6, v3

    add-long/2addr v0, v6

    .line 70
    add-int/lit8 v3, p5, 0x7

    long-to-int v4, v0

    aput v4, p4, v3

    .line 71
    ushr-long/2addr v0, v2

    .line 72
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

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 37
    long-to-int v4, v0

    aput v4, p2, v3

    .line 38
    ushr-long/2addr v0, v2

    .line 39
    const/4 v3, 0x7

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    add-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 40
    long-to-int v4, v0

    aput v4, p2, v3

    .line 41
    ushr-long/2addr v0, v2

    .line 42
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

    .line 107
    const-wide/16 v0, 0x0

    .line 108
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

    .line 109
    add-int/lit8 v2, p5, 0x0

    long-to-int v3, v0

    aput v3, p4, v2

    .line 110
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 111
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

    .line 112
    add-int/lit8 v3, p5, 0x1

    long-to-int v6, v0

    aput v6, p4, v3

    .line 113
    ushr-long/2addr v0, v2

    .line 114
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

    .line 115
    add-int/lit8 v3, p5, 0x2

    long-to-int v6, v0

    aput v6, p4, v3

    .line 116
    ushr-long/2addr v0, v2

    .line 117
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

    .line 118
    add-int/lit8 v3, p5, 0x3

    long-to-int v6, v0

    aput v6, p4, v3

    .line 119
    ushr-long/2addr v0, v2

    .line 120
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

    .line 121
    add-int/lit8 v3, p5, 0x4

    long-to-int v6, v0

    aput v6, p4, v3

    .line 122
    ushr-long/2addr v0, v2

    .line 123
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

    .line 124
    add-int/lit8 v3, p5, 0x5

    long-to-int v6, v0

    aput v6, p4, v3

    .line 125
    ushr-long/2addr v0, v2

    .line 126
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

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 127
    add-int/lit8 v3, p5, 0x6

    long-to-int v6, v0

    aput v6, p4, v3

    .line 128
    ushr-long/2addr v0, v2

    .line 129
    add-int/lit8 v3, p1, 0x7

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x7

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-int/lit8 v3, p5, 0x7

    aget v3, p4, v3

    int-to-long v8, v3

    and-long v3, v8, v4

    add-long/2addr v6, v3

    add-long/2addr v0, v6

    .line 130
    add-int/lit8 v3, p5, 0x7

    long-to-int v4, v0

    aput v4, p4, v3

    .line 131
    ushr-long/2addr v0, v2

    .line 132
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addBothTo([I[I[I)I
    .registers 14
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 77
    const-wide/16 v0, 0x0

    .line 78
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

    .line 79
    long-to-int v3, v0

    aput v3, p2, v2

    .line 80
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 81
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

    .line 82
    long-to-int v4, v0

    aput v4, p2, v3

    .line 83
    ushr-long/2addr v0, v2

    .line 84
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

    .line 85
    long-to-int v4, v0

    aput v4, p2, v3

    .line 86
    ushr-long/2addr v0, v2

    .line 87
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

    .line 88
    long-to-int v4, v0

    aput v4, p2, v3

    .line 89
    ushr-long/2addr v0, v2

    .line 90
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

    .line 91
    long-to-int v4, v0

    aput v4, p2, v3

    .line 92
    ushr-long/2addr v0, v2

    .line 93
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

    .line 94
    long-to-int v4, v0

    aput v4, p2, v3

    .line 95
    ushr-long/2addr v0, v2

    .line 96
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

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 97
    long-to-int v4, v0

    aput v4, p2, v3

    .line 98
    ushr-long/2addr v0, v2

    .line 99
    const/4 v3, 0x7

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

    .line 100
    long-to-int v4, v0

    aput v4, p2, v3

    .line 101
    ushr-long/2addr v0, v2

    .line 102
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

    .line 197
    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 198
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

    .line 199
    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    .line 200
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 201
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

    .line 202
    add-int/lit8 v5, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v5

    .line 203
    ushr-long/2addr v0, v4

    .line 204
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

    .line 205
    add-int/lit8 v5, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v5

    .line 206
    ushr-long/2addr v0, v4

    .line 207
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

    .line 208
    add-int/lit8 v5, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v5

    .line 209
    ushr-long/2addr v0, v4

    .line 210
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

    .line 211
    add-int/lit8 v5, p3, 0x4

    long-to-int v6, v0

    aput v6, p2, v5

    .line 212
    ushr-long/2addr v0, v4

    .line 213
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

    .line 214
    add-int/lit8 v5, p3, 0x5

    long-to-int v6, v0

    aput v6, p2, v5

    .line 215
    ushr-long/2addr v0, v4

    .line 216
    add-int/lit8 v5, p1, 0x6

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x6

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 217
    add-int/lit8 v5, p3, 0x6

    long-to-int v6, v0

    aput v6, p2, v5

    .line 218
    ushr-long/2addr v0, v4

    .line 219
    add-int/lit8 v5, p1, 0x7

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x7

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v2, v7

    add-long/2addr v5, v2

    add-long/2addr v0, v5

    .line 220
    add-int/lit8 v2, p3, 0x7

    long-to-int v3, v0

    aput v3, p2, v2

    .line 221
    ushr-long/2addr v0, v4

    .line 222
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addTo([I[I)I
    .registers 13
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 137
    const-wide/16 v0, 0x0

    .line 138
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

    .line 139
    long-to-int v3, v0

    aput v3, p1, v2

    .line 140
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 141
    const/4 v3, 0x1

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
    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 145
    long-to-int v4, v0

    aput v4, p1, v3

    .line 146
    ushr-long/2addr v0, v2

    .line 147
    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 148
    long-to-int v4, v0

    aput v4, p1, v3

    .line 149
    ushr-long/2addr v0, v2

    .line 150
    const/4 v3, 0x4

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 151
    long-to-int v4, v0

    aput v4, p1, v3

    .line 152
    ushr-long/2addr v0, v2

    .line 153
    const/4 v3, 0x5

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 154
    long-to-int v4, v0

    aput v4, p1, v3

    .line 155
    ushr-long/2addr v0, v2

    .line 156
    const/4 v3, 0x6

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 157
    long-to-int v4, v0

    aput v4, p1, v3

    .line 158
    ushr-long/2addr v0, v2

    .line 159
    const/4 v3, 0x7

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    add-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 160
    long-to-int v4, v0

    aput v4, p1, v3

    .line 161
    ushr-long/2addr v0, v2

    .line 162
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addTo([I[II)I
    .registers 13
    .param p0, "x"    # [I
    .param p1, "z"    # [I
    .param p2, "cIn"    # I

    .line 167
    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 168
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

    .line 169
    long-to-int v5, v0

    aput v5, p1, v4

    .line 170
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 171
    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 172
    long-to-int v6, v0

    aput v6, p1, v5

    .line 173
    ushr-long/2addr v0, v4

    .line 174
    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 175
    long-to-int v6, v0

    aput v6, p1, v5

    .line 176
    ushr-long/2addr v0, v4

    .line 177
    const/4 v5, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 178
    long-to-int v6, v0

    aput v6, p1, v5

    .line 179
    ushr-long/2addr v0, v4

    .line 180
    const/4 v5, 0x4

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 181
    long-to-int v6, v0

    aput v6, p1, v5

    .line 182
    ushr-long/2addr v0, v4

    .line 183
    const/4 v5, 0x5

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 184
    long-to-int v6, v0

    aput v6, p1, v5

    .line 185
    ushr-long/2addr v0, v4

    .line 186
    const/4 v5, 0x6

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 187
    long-to-int v6, v0

    aput v6, p1, v5

    .line 188
    ushr-long/2addr v0, v4

    .line 189
    const/4 v5, 0x7

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v2, v8

    add-long/2addr v6, v2

    add-long/2addr v0, v6

    .line 190
    long-to-int v2, v0

    aput v2, p1, v5

    .line 191
    ushr-long/2addr v0, v4

    .line 192
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addToEachOther([II[II)I
    .registers 14
    .param p0, "u"    # [I
    .param p1, "uOff"    # I
    .param p2, "v"    # [I
    .param p3, "vOff"    # I

    .line 227
    const-wide/16 v0, 0x0

    .line 228
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

    .line 229
    add-int/lit8 v2, p1, 0x0

    long-to-int v3, v0

    aput v3, p0, v2

    .line 230
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 231
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 232
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

    .line 233
    add-int/lit8 v3, p1, 0x1

    long-to-int v6, v0

    aput v6, p0, v3

    .line 234
    add-int/lit8 v3, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v3

    .line 235
    ushr-long/2addr v0, v2

    .line 236
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

    .line 237
    add-int/lit8 v3, p1, 0x2

    long-to-int v6, v0

    aput v6, p0, v3

    .line 238
    add-int/lit8 v3, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v3

    .line 239
    ushr-long/2addr v0, v2

    .line 240
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

    .line 241
    add-int/lit8 v3, p1, 0x3

    long-to-int v6, v0

    aput v6, p0, v3

    .line 242
    add-int/lit8 v3, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v3

    .line 243
    ushr-long/2addr v0, v2

    .line 244
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

    .line 245
    add-int/lit8 v3, p1, 0x4

    long-to-int v6, v0

    aput v6, p0, v3

    .line 246
    add-int/lit8 v3, p3, 0x4

    long-to-int v6, v0

    aput v6, p2, v3

    .line 247
    ushr-long/2addr v0, v2

    .line 248
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

    .line 249
    add-int/lit8 v3, p1, 0x5

    long-to-int v6, v0

    aput v6, p0, v3

    .line 250
    add-int/lit8 v3, p3, 0x5

    long-to-int v6, v0

    aput v6, p2, v3

    .line 251
    ushr-long/2addr v0, v2

    .line 252
    add-int/lit8 v3, p1, 0x6

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x6

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 253
    add-int/lit8 v3, p1, 0x6

    long-to-int v6, v0

    aput v6, p0, v3

    .line 254
    add-int/lit8 v3, p3, 0x6

    long-to-int v6, v0

    aput v6, p2, v3

    .line 255
    ushr-long/2addr v0, v2

    .line 256
    add-int/lit8 v3, p1, 0x7

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x7

    aget v3, p2, v3

    int-to-long v8, v3

    and-long v3, v8, v4

    add-long/2addr v6, v3

    add-long/2addr v0, v6

    .line 257
    add-int/lit8 v3, p1, 0x7

    long-to-int v4, v0

    aput v4, p0, v3

    .line 258
    add-int/lit8 v3, p3, 0x7

    long-to-int v4, v0

    aput v4, p2, v3

    .line 259
    ushr-long/2addr v0, v2

    .line 260
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist copy([II[II)V
    .registers 6
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .line 277
    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v1, p1, 0x0

    aget v1, p0, v1

    aput v1, p2, v0

    .line 278
    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    aput v1, p2, v0

    .line 279
    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, p1, 0x2

    aget v1, p0, v1

    aput v1, p2, v0

    .line 280
    add-int/lit8 v0, p3, 0x3

    add-int/lit8 v1, p1, 0x3

    aget v1, p0, v1

    aput v1, p2, v0

    .line 281
    add-int/lit8 v0, p3, 0x4

    add-int/lit8 v1, p1, 0x4

    aget v1, p0, v1

    aput v1, p2, v0

    .line 282
    add-int/lit8 v0, p3, 0x5

    add-int/lit8 v1, p1, 0x5

    aget v1, p0, v1

    aput v1, p2, v0

    .line 283
    add-int/lit8 v0, p3, 0x6

    add-int/lit8 v1, p1, 0x6

    aget v1, p0, v1

    aput v1, p2, v0

    .line 284
    add-int/lit8 v0, p3, 0x7

    add-int/lit8 v1, p1, 0x7

    aget v1, p0, v1

    aput v1, p2, v0

    .line 285
    return-void
.end method

.method public static blacklist copy([I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 265
    const/4 v0, 0x0

    aget v1, p0, v0

    aput v1, p1, v0

    .line 266
    const/4 v0, 0x1

    aget v1, p0, v0

    aput v1, p1, v0

    .line 267
    const/4 v0, 0x2

    aget v1, p0, v0

    aput v1, p1, v0

    .line 268
    const/4 v0, 0x3

    aget v1, p0, v0

    aput v1, p1, v0

    .line 269
    const/4 v0, 0x4

    aget v1, p0, v0

    aput v1, p1, v0

    .line 270
    const/4 v0, 0x5

    aget v1, p0, v0

    aput v1, p1, v0

    .line 271
    const/4 v0, 0x6

    aget v1, p0, v0

    aput v1, p1, v0

    .line 272
    const/4 v0, 0x7

    aget v1, p0, v0

    aput v1, p1, v0

    .line 273
    return-void
.end method

.method public static blacklist copy64([JI[JI)V
    .registers 7
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "z"    # [J
    .param p3, "zOff"    # I

    .line 297
    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v1, p1, 0x0

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    .line 298
    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    .line 299
    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, p1, 0x2

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    .line 300
    add-int/lit8 v0, p3, 0x3

    add-int/lit8 v1, p1, 0x3

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    .line 301
    return-void
.end method

.method public static blacklist copy64([J[J)V
    .registers 5
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .line 289
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 290
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 291
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 292
    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 293
    return-void
.end method

.method public static blacklist create()[I
    .registers 1

    .line 305
    const/16 v0, 0x8

    new-array v0, v0, [I

    return-object v0
.end method

.method public static blacklist create64()[J
    .registers 1

    .line 310
    const/4 v0, 0x4

    new-array v0, v0, [J

    return-object v0
.end method

.method public static blacklist createExt()[I
    .registers 1

    .line 315
    const/16 v0, 0x10

    new-array v0, v0, [I

    return-object v0
.end method

.method public static blacklist createExt64()[J
    .registers 1

    .line 320
    const/16 v0, 0x8

    new-array v0, v0, [J

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

    .line 325
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->gte([II[II)Z

    move-result v0

    .line 326
    .local v0, "pos":Z
    if-eqz v0, :cond_a

    .line 328
    invoke-static/range {p0 .. p5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->sub([II[II[II)I

    goto :goto_19

    .line 332
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
    invoke-static/range {p0 .. p5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->sub([II[II[II)I

    move-object v1, p2

    move-object p2, p0

    move-object p0, v1

    move v1, p3

    move p3, p1

    move p1, v1

    .line 334
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

    .line 339
    const/4 v0, 0x7

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_e

    .line 341
    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_b

    .line 343
    const/4 v1, 0x0

    return v1

    .line 339
    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 346
    .end local v0    # "i":I
    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist eq64([J[J)Z
    .registers 7
    .param p0, "x"    # [J
    .param p1, "y"    # [J

    .line 351
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_10

    .line 353
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_d

    .line 355
    const/4 v1, 0x0

    return v1

    .line 351
    :cond_d
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 358
    .end local v0    # "i":I
    :cond_10
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 4
    .param p0, "x"    # Ljava/math/BigInteger;

    .line 363
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_27

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_27

    .line 368
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 371
    .local v0, "z":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    const/16 v2, 0x8

    if-ge v1, v2, :cond_26

    .line 373
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 374
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 376
    .end local v1    # "i":I
    :cond_26
    return-object v0

    .line 365
    .end local v0    # "z":[I
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist fromBigInteger64(Ljava/math/BigInteger;)[J
    .registers 5
    .param p0, "x"    # Ljava/math/BigInteger;

    .line 381
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_26

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_26

    .line 386
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object v0

    .line 389
    .local v0, "z":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    const/4 v2, 0x4

    if-ge v1, v2, :cond_25

    .line 391
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 392
    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 389
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 394
    .end local v1    # "i":I
    :cond_25
    return-object v0

    .line 383
    .end local v0    # "z":[J
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist getBit([II)I
    .registers 5
    .param p0, "x"    # [I
    .param p1, "bit"    # I

    .line 399
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 401
    aget v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    return v0

    .line 403
    :cond_8
    and-int/lit16 v1, p1, 0xff

    if-eq v1, p1, :cond_d

    .line 405
    return v0

    .line 407
    :cond_d
    ushr-int/lit8 v0, p1, 0x5

    .line 408
    .local v0, "w":I
    and-int/lit8 v1, p1, 0x1f

    .line 409
    .local v1, "b":I
    aget v2, p0, v0

    ushr-int/2addr v2, v1

    and-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public static blacklist gte([II[II)Z
    .registers 9
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I

    .line 428
    const/4 v0, 0x7

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x1

    if-ltz v0, :cond_1a

    .line 430
    add-int v2, p1, v0

    aget v2, p0, v2

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 431
    .local v2, "x_i":I
    add-int v4, p3, v0

    aget v4, p2, v4

    xor-int/2addr v3, v4

    .line 432
    .local v3, "y_i":I
    if-ge v2, v3, :cond_14

    .line 433
    const/4 v1, 0x0

    return v1

    .line 434
    :cond_14
    if-le v2, v3, :cond_17

    .line 435
    return v1

    .line 428
    .end local v2    # "x_i":I
    .end local v3    # "y_i":I
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 437
    .end local v0    # "i":I
    :cond_1a
    return v1
.end method

.method public static blacklist gte([I[I)Z
    .registers 7
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .line 414
    const/4 v0, 0x7

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x1

    if-ltz v0, :cond_16

    .line 416
    aget v2, p0, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 417
    .local v2, "x_i":I
    aget v4, p1, v0

    xor-int/2addr v3, v4

    .line 418
    .local v3, "y_i":I
    if-ge v2, v3, :cond_10

    .line 419
    const/4 v1, 0x0

    return v1

    .line 420
    :cond_10
    if-le v2, v3, :cond_13

    .line 421
    return v1

    .line 414
    .end local v2    # "x_i":I
    .end local v3    # "y_i":I
    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 423
    .end local v0    # "i":I
    :cond_16
    return v1
.end method

.method public static blacklist isOne([I)Z
    .registers 5
    .param p0, "x"    # [I

    .line 442
    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    .line 444
    return v0

    .line 446
    :cond_7
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_8
    const/16 v3, 0x8

    if-ge v1, v3, :cond_14

    .line 448
    aget v3, p0, v1

    if-eqz v3, :cond_11

    .line 450
    return v0

    .line 446
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 453
    .end local v1    # "i":I
    :cond_14
    return v2
.end method

.method public static blacklist isOne64([J)Z
    .registers 7
    .param p0, "x"    # [J

    .line 458
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_a

    .line 460
    return v0

    .line 462
    :cond_a
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_b
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1a

    .line 464
    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_17

    .line 466
    return v0

    .line 462
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 469
    .end local v1    # "i":I
    :cond_1a
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isZero([I)Z
    .registers 3
    .param p0, "x"    # [I

    .line 474
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x8

    if-ge v0, v1, :cond_e

    .line 476
    aget v1, p0, v0

    if-eqz v1, :cond_b

    .line 478
    const/4 v1, 0x0

    return v1

    .line 474
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 481
    .end local v0    # "i":I
    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isZero64([J)Z
    .registers 6
    .param p0, "x"    # [J

    .line 486
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_11

    .line 488
    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_e

    .line 490
    const/4 v1, 0x0

    return v1

    .line 486
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 493
    .end local v0    # "i":I
    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist mul([II[II[II)V
    .registers 35
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "zz"    # [I
    .param p5, "zzOff"    # I

    .line 569
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 570
    .local v0, "y_0":J
    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 571
    .local v4, "y_1":J
    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 572
    .local v6, "y_2":J
    add-int/lit8 v8, p3, 0x3

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 573
    .local v8, "y_3":J
    add-int/lit8 v10, p3, 0x4

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 574
    .local v10, "y_4":J
    add-int/lit8 v12, p3, 0x5

    aget v12, p2, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    .line 575
    .local v12, "y_5":J
    add-int/lit8 v14, p3, 0x6

    aget v14, p2, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    .line 576
    .local v14, "y_6":J
    add-int/lit8 v16, p3, 0x7

    move-wide/from16 v17, v2

    aget v2, p2, v16

    int-to-long v2, v2

    and-long v2, v2, v17

    .line 579
    .local v2, "y_7":J
    const-wide/16 v19, 0x0

    .local v19, "c":J
    add-int/lit8 v16, p1, 0x0

    move-wide/from16 v21, v0

    .end local v0    # "y_0":J
    .local v21, "y_0":J
    aget v0, p0, v16

    int-to-long v0, v0

    and-long v0, v0, v17

    .line 580
    .local v0, "x_0":J
    mul-long v23, v0, v21

    move-wide/from16 v25, v0

    .end local v0    # "x_0":J
    .local v25, "x_0":J
    add-long v0, v19, v23

    .line 581
    .end local v19    # "c":J
    .local v0, "c":J
    add-int/lit8 v16, p5, 0x0

    move-wide/from16 v19, v2

    .end local v2    # "y_7":J
    .local v19, "y_7":J
    long-to-int v2, v0

    aput v2, p4, v16

    .line 582
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 583
    mul-long v23, v25, v4

    add-long v0, v0, v23

    .line 584
    add-int/lit8 v3, p5, 0x1

    move/from16 v16, v2

    long-to-int v2, v0

    aput v2, p4, v3

    .line 585
    ushr-long v0, v0, v16

    .line 586
    mul-long v2, v25, v6

    add-long/2addr v0, v2

    .line 587
    add-int/lit8 v2, p5, 0x2

    long-to-int v3, v0

    aput v3, p4, v2

    .line 588
    ushr-long v0, v0, v16

    .line 589
    mul-long v2, v25, v8

    add-long/2addr v0, v2

    .line 590
    add-int/lit8 v2, p5, 0x3

    long-to-int v3, v0

    aput v3, p4, v2

    .line 591
    ushr-long v0, v0, v16

    .line 592
    mul-long v2, v25, v10

    add-long/2addr v0, v2

    .line 593
    add-int/lit8 v2, p5, 0x4

    long-to-int v3, v0

    aput v3, p4, v2

    .line 594
    ushr-long v0, v0, v16

    .line 595
    mul-long v2, v25, v12

    add-long/2addr v0, v2

    .line 596
    add-int/lit8 v2, p5, 0x5

    long-to-int v3, v0

    aput v3, p4, v2

    .line 597
    ushr-long v0, v0, v16

    .line 598
    mul-long v2, v25, v14

    add-long/2addr v0, v2

    .line 599
    add-int/lit8 v2, p5, 0x6

    long-to-int v3, v0

    aput v3, p4, v2

    .line 600
    ushr-long v0, v0, v16

    .line 601
    mul-long v2, v25, v19

    add-long/2addr v0, v2

    .line 602
    add-int/lit8 v2, p5, 0x7

    long-to-int v3, v0

    aput v3, p4, v2

    .line 603
    ushr-long v0, v0, v16

    .line 604
    add-int/lit8 v2, p5, 0x8

    long-to-int v3, v0

    aput v3, p4, v2

    .line 607
    .end local v0    # "c":J
    .end local v25    # "x_0":J
    const/4 v0, 0x1

    move v1, v0

    move/from16 v0, p5

    .end local p5    # "zzOff":I
    .local v0, "zzOff":I
    .local v1, "i":I
    :goto_a5
    const/16 v2, 0x8

    if-ge v1, v2, :cond_16c

    .line 609
    add-int/lit8 v0, v0, 0x1

    .line 610
    const-wide/16 v2, 0x0

    .local v2, "c":J
    add-int v23, p1, v1

    move/from16 p5, v0

    .end local v0    # "zzOff":I
    .restart local p5    # "zzOff":I
    aget v0, p0, v23

    move/from16 v23, v1

    .end local v1    # "i":I
    .local v23, "i":I
    int-to-long v0, v0

    and-long v0, v0, v17

    .line 611
    .local v0, "x_i":J
    mul-long v24, v0, v21

    add-int/lit8 v26, p5, 0x0

    move-wide/from16 v27, v0

    .end local v0    # "x_i":J
    .local v27, "x_i":J
    aget v0, p4, v26

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long v24, v24, v0

    add-long v2, v2, v24

    .line 612
    add-int/lit8 v0, p5, 0x0

    long-to-int v1, v2

    aput v1, p4, v0

    .line 613
    ushr-long v0, v2, v16

    .line 614
    .end local v2    # "c":J
    .local v0, "c":J
    mul-long v2, v27, v4

    add-int/lit8 v24, p5, 0x1

    move-wide/from16 v25, v0

    .end local v0    # "c":J
    .local v25, "c":J
    aget v0, p4, v24

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v25, v2

    .line 615
    .end local v25    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x1

    long-to-int v3, v0

    aput v3, p4, v2

    .line 616
    ushr-long v0, v0, v16

    .line 617
    mul-long v2, v27, v6

    add-int/lit8 v24, p5, 0x2

    move-wide/from16 v25, v0

    .end local v0    # "c":J
    .restart local v25    # "c":J
    aget v0, p4, v24

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v25, v2

    .line 618
    .end local v25    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x2

    long-to-int v3, v0

    aput v3, p4, v2

    .line 619
    ushr-long v0, v0, v16

    .line 620
    mul-long v2, v27, v8

    add-int/lit8 v24, p5, 0x3

    move-wide/from16 v25, v0

    .end local v0    # "c":J
    .restart local v25    # "c":J
    aget v0, p4, v24

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v25, v2

    .line 621
    .end local v25    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x3

    long-to-int v3, v0

    aput v3, p4, v2

    .line 622
    ushr-long v0, v0, v16

    .line 623
    mul-long v2, v27, v10

    add-int/lit8 v24, p5, 0x4

    move-wide/from16 v25, v0

    .end local v0    # "c":J
    .restart local v25    # "c":J
    aget v0, p4, v24

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v25, v2

    .line 624
    .end local v25    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x4

    long-to-int v3, v0

    aput v3, p4, v2

    .line 625
    ushr-long v0, v0, v16

    .line 626
    mul-long v2, v27, v12

    add-int/lit8 v24, p5, 0x5

    move-wide/from16 v25, v0

    .end local v0    # "c":J
    .restart local v25    # "c":J
    aget v0, p4, v24

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v25, v2

    .line 627
    .end local v25    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x5

    long-to-int v3, v0

    aput v3, p4, v2

    .line 628
    ushr-long v0, v0, v16

    .line 629
    mul-long v2, v27, v14

    add-int/lit8 v24, p5, 0x6

    move-wide/from16 v25, v0

    .end local v0    # "c":J
    .restart local v25    # "c":J
    aget v0, p4, v24

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v25, v2

    .line 630
    .end local v25    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x6

    long-to-int v3, v0

    aput v3, p4, v2

    .line 631
    ushr-long v0, v0, v16

    .line 632
    mul-long v2, v27, v19

    add-int/lit8 v24, p5, 0x7

    move-wide/from16 v25, v0

    .end local v0    # "c":J
    .restart local v25    # "c":J
    aget v0, p4, v24

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v25, v2

    .line 633
    .end local v25    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x7

    long-to-int v3, v0

    aput v3, p4, v2

    .line 634
    ushr-long v0, v0, v16

    .line 635
    add-int/lit8 v2, p5, 0x8

    long-to-int v3, v0

    aput v3, p4, v2

    .line 607
    .end local v0    # "c":J
    .end local v27    # "x_i":J
    add-int/lit8 v1, v23, 0x1

    move/from16 v0, p5

    .end local v23    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_a5

    .line 637
    .end local v1    # "i":I
    .end local p5    # "zzOff":I
    .local v0, "zzOff":I
    :cond_16c
    return-void
.end method

.method public static blacklist mul([I[I[I)V
    .registers 37
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .line 498
    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 499
    .local v1, "y_0":J
    const/4 v5, 0x1

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    .line 500
    .local v6, "y_1":J
    const/4 v8, 0x2

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    .line 501
    .local v9, "y_2":J
    const/4 v11, 0x3

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    .line 502
    .local v12, "y_3":J
    const/4 v14, 0x4

    aget v15, p1, v14

    move/from16 v16, v0

    move-wide/from16 v17, v1

    .end local v1    # "y_0":J
    .local v17, "y_0":J
    int-to-long v0, v15

    and-long/2addr v0, v3

    .line 503
    .local v0, "y_4":J
    const/4 v2, 0x5

    aget v15, p1, v2

    move-wide/from16 v19, v3

    move v4, v2

    int-to-long v2, v15

    and-long v2, v2, v19

    .line 504
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

    .line 505
    .local v4, "y_6":J
    const/4 v6, 0x7

    aget v7, p1, v6

    move/from16 v25, v6

    int-to-long v6, v7

    and-long v6, v6, v19

    .line 508
    .local v6, "y_7":J
    const-wide/16 v26, 0x0

    move/from16 v28, v8

    .local v26, "c":J
    aget v8, p0, v16

    move/from16 v29, v11

    move-wide/from16 v30, v12

    .end local v12    # "y_3":J
    .local v30, "y_3":J
    int-to-long v11, v8

    and-long v11, v11, v19

    .line 509
    .local v11, "x_0":J
    mul-long v32, v11, v17

    move v8, v14

    move v13, v15

    add-long v14, v26, v32

    .line 510
    .end local v26    # "c":J
    .local v14, "c":J
    move/from16 v26, v8

    long-to-int v8, v14

    aput v8, p2, v16

    .line 511
    const/16 v8, 0x20

    ushr-long/2addr v14, v8

    .line 512
    mul-long v32, v11, v23

    add-long v14, v14, v32

    .line 513
    move/from16 v16, v8

    long-to-int v8, v14

    aput v8, p2, v22

    .line 514
    ushr-long v14, v14, v16

    .line 515
    mul-long v32, v11, v9

    add-long v14, v14, v32

    .line 516
    long-to-int v8, v14

    aput v8, p2, v28

    .line 517
    ushr-long v14, v14, v16

    .line 518
    mul-long v27, v11, v30

    add-long v14, v14, v27

    .line 519
    long-to-int v8, v14

    aput v8, p2, v29

    .line 520
    ushr-long v14, v14, v16

    .line 521
    mul-long v27, v11, v0

    add-long v14, v14, v27

    .line 522
    long-to-int v8, v14

    aput v8, p2, v26

    .line 523
    ushr-long v14, v14, v16

    .line 524
    mul-long v26, v11, v2

    add-long v14, v14, v26

    .line 525
    long-to-int v8, v14

    aput v8, p2, v21

    .line 526
    ushr-long v14, v14, v16

    .line 527
    mul-long v21, v11, v4

    add-long v14, v14, v21

    .line 528
    long-to-int v8, v14

    aput v8, p2, v13

    .line 529
    ushr-long v13, v14, v16

    .line 530
    .end local v14    # "c":J
    .local v13, "c":J
    mul-long v21, v11, v6

    add-long v13, v13, v21

    .line 531
    long-to-int v8, v13

    aput v8, p2, v25

    .line 532
    ushr-long v13, v13, v16

    .line 533
    long-to-int v8, v13

    const/16 v15, 0x8

    aput v8, p2, v15

    .line 536
    .end local v11    # "x_0":J
    .end local v13    # "c":J
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_a1
    if-ge v8, v15, :cond_160

    .line 538
    const-wide/16 v11, 0x0

    .local v11, "c":J
    aget v13, p0, v8

    int-to-long v13, v13

    and-long v13, v13, v19

    .line 539
    .local v13, "x_i":J
    mul-long v21, v13, v17

    add-int/lit8 v25, v8, 0x0

    aget v15, p2, v25

    move-wide/from16 v27, v0

    .end local v0    # "y_4":J
    .local v27, "y_4":J
    int-to-long v0, v15

    and-long v0, v0, v19

    add-long v21, v21, v0

    add-long v11, v11, v21

    .line 540
    add-int/lit8 v0, v8, 0x0

    long-to-int v1, v11

    aput v1, p2, v0

    .line 541
    ushr-long v0, v11, v16

    .line 542
    .end local v11    # "c":J
    .local v0, "c":J
    mul-long v11, v13, v23

    add-int/lit8 v15, v8, 0x1

    aget v15, p2, v15

    move-wide/from16 v21, v0

    .end local v0    # "c":J
    .local v21, "c":J
    int-to-long v0, v15

    and-long v0, v0, v19

    add-long/2addr v11, v0

    add-long v0, v21, v11

    .line 543
    .end local v21    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v11, v8, 0x1

    long-to-int v12, v0

    aput v12, p2, v11

    .line 544
    ushr-long v0, v0, v16

    .line 545
    mul-long v11, v13, v9

    add-int/lit8 v15, v8, 0x2

    aget v15, p2, v15

    move-wide/from16 v21, v0

    .end local v0    # "c":J
    .restart local v21    # "c":J
    int-to-long v0, v15

    and-long v0, v0, v19

    add-long/2addr v11, v0

    add-long v0, v21, v11

    .line 546
    .end local v21    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v11, v8, 0x2

    long-to-int v12, v0

    aput v12, p2, v11

    .line 547
    ushr-long v0, v0, v16

    .line 548
    mul-long v11, v13, v30

    add-int/lit8 v15, v8, 0x3

    aget v15, p2, v15

    move-wide/from16 v21, v0

    .end local v0    # "c":J
    .restart local v21    # "c":J
    int-to-long v0, v15

    and-long v0, v0, v19

    add-long/2addr v11, v0

    add-long v0, v21, v11

    .line 549
    .end local v21    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v11, v8, 0x3

    long-to-int v12, v0

    aput v12, p2, v11

    .line 550
    ushr-long v0, v0, v16

    .line 551
    mul-long v11, v13, v27

    add-int/lit8 v15, v8, 0x4

    aget v15, p2, v15

    move-wide/from16 v21, v0

    .end local v0    # "c":J
    .restart local v21    # "c":J
    int-to-long v0, v15

    and-long v0, v0, v19

    add-long/2addr v11, v0

    add-long v0, v21, v11

    .line 552
    .end local v21    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v11, v8, 0x4

    long-to-int v12, v0

    aput v12, p2, v11

    .line 553
    ushr-long v0, v0, v16

    .line 554
    mul-long v11, v13, v2

    add-int/lit8 v15, v8, 0x5

    aget v15, p2, v15

    move-wide/from16 v21, v0

    .end local v0    # "c":J
    .restart local v21    # "c":J
    int-to-long v0, v15

    and-long v0, v0, v19

    add-long/2addr v11, v0

    add-long v0, v21, v11

    .line 555
    .end local v21    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v11, v8, 0x5

    long-to-int v12, v0

    aput v12, p2, v11

    .line 556
    ushr-long v0, v0, v16

    .line 557
    mul-long v11, v13, v4

    add-int/lit8 v15, v8, 0x6

    aget v15, p2, v15

    move-wide/from16 v21, v0

    .end local v0    # "c":J
    .restart local v21    # "c":J
    int-to-long v0, v15

    and-long v0, v0, v19

    add-long/2addr v11, v0

    add-long v0, v21, v11

    .line 558
    .end local v21    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v11, v8, 0x6

    long-to-int v12, v0

    aput v12, p2, v11

    .line 559
    ushr-long v0, v0, v16

    .line 560
    mul-long v11, v13, v6

    add-int/lit8 v15, v8, 0x7

    aget v15, p2, v15

    move-wide/from16 v21, v0

    .end local v0    # "c":J
    .restart local v21    # "c":J
    int-to-long v0, v15

    and-long v0, v0, v19

    add-long/2addr v11, v0

    add-long v0, v21, v11

    .line 561
    .end local v21    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v11, v8, 0x7

    long-to-int v12, v0

    aput v12, p2, v11

    .line 562
    ushr-long v0, v0, v16

    .line 563
    add-int/lit8 v11, v8, 0x8

    long-to-int v12, v0

    aput v12, p2, v11

    .line 536
    .end local v0    # "c":J
    .end local v13    # "x_i":J
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v0, v27

    const/16 v15, 0x8

    goto/16 :goto_a1

    .line 565
    .end local v8    # "i":I
    .end local v27    # "y_4":J
    .local v0, "y_4":J
    :cond_160
    return-void
.end method

.method public static blacklist mul128([I[I[I)V
    .registers 37
    .param p0, "x"    # [I
    .param p1, "y128"    # [I
    .param p2, "zz"    # [I

    .line 641
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 642
    .local v1, "x_0":J
    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    .line 643
    .local v6, "x_1":J
    const/4 v8, 0x2

    aget v9, p0, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    .line 644
    .local v9, "x_2":J
    const/4 v11, 0x3

    aget v12, p0, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    .line 645
    .local v12, "x_3":J
    const/4 v14, 0x4

    aget v15, p0, v14

    move/from16 v16, v0

    move-wide/from16 v17, v1

    .end local v1    # "x_0":J
    .local v17, "x_0":J
    int-to-long v0, v15

    and-long/2addr v0, v3

    .line 646
    .local v0, "x_4":J
    const/4 v2, 0x5

    aget v15, p0, v2

    move-wide/from16 v19, v3

    move v4, v2

    int-to-long v2, v15

    and-long v2, v2, v19

    .line 647
    .local v2, "x_5":J
    const/4 v15, 0x6

    move/from16 v21, v4

    aget v4, p0, v15

    move/from16 v22, v5

    move-wide/from16 v23, v6

    .end local v6    # "x_1":J
    .local v23, "x_1":J
    int-to-long v5, v4

    and-long v4, v5, v19

    .line 648
    .local v4, "x_6":J
    const/4 v6, 0x7

    aget v7, p0, v6

    move/from16 v25, v6

    int-to-long v6, v7

    and-long v6, v6, v19

    .line 651
    .local v6, "x_7":J
    const-wide/16 v26, 0x0

    move/from16 v28, v8

    .local v26, "c":J
    aget v8, p1, v16

    move/from16 v29, v11

    move-wide/from16 v30, v12

    .end local v12    # "x_3":J
    .local v30, "x_3":J
    int-to-long v11, v8

    and-long v11, v11, v19

    .line 652
    .local v11, "y_0":J
    mul-long v32, v11, v17

    move v8, v14

    move v13, v15

    add-long v14, v26, v32

    .line 653
    .end local v26    # "c":J
    .local v14, "c":J
    move/from16 v26, v8

    long-to-int v8, v14

    aput v8, p2, v16

    .line 654
    const/16 v8, 0x20

    ushr-long/2addr v14, v8

    .line 655
    mul-long v32, v11, v23

    add-long v14, v14, v32

    .line 656
    move/from16 v16, v8

    long-to-int v8, v14

    aput v8, p2, v22

    .line 657
    ushr-long v14, v14, v16

    .line 658
    mul-long v32, v11, v9

    add-long v14, v14, v32

    .line 659
    long-to-int v8, v14

    aput v8, p2, v28

    .line 660
    ushr-long v14, v14, v16

    .line 661
    mul-long v27, v11, v30

    add-long v14, v14, v27

    .line 662
    long-to-int v8, v14

    aput v8, p2, v29

    .line 663
    ushr-long v14, v14, v16

    .line 664
    mul-long v27, v11, v0

    add-long v14, v14, v27

    .line 665
    long-to-int v8, v14

    aput v8, p2, v26

    .line 666
    ushr-long v14, v14, v16

    .line 667
    mul-long v27, v11, v2

    add-long v14, v14, v27

    .line 668
    long-to-int v8, v14

    aput v8, p2, v21

    .line 669
    ushr-long v14, v14, v16

    .line 670
    mul-long v21, v11, v4

    add-long v14, v14, v21

    .line 671
    long-to-int v8, v14

    aput v8, p2, v13

    .line 672
    ushr-long v13, v14, v16

    .line 673
    .end local v14    # "c":J
    .local v13, "c":J
    mul-long v21, v11, v6

    add-long v13, v13, v21

    .line 674
    long-to-int v8, v13

    aput v8, p2, v25

    .line 675
    ushr-long v13, v13, v16

    .line 676
    const/16 v8, 0x8

    long-to-int v15, v13

    aput v15, p2, v8

    .line 679
    .end local v11    # "y_0":J
    .end local v13    # "c":J
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_a1
    move/from16 v11, v26

    if-ge v8, v11, :cond_162

    .line 681
    const-wide/16 v12, 0x0

    .local v12, "c":J
    aget v14, p1, v8

    int-to-long v14, v14

    and-long v14, v14, v19

    .line 682
    .local v14, "y_i":J
    mul-long v21, v14, v17

    add-int/lit8 v25, v8, 0x0

    aget v11, p2, v25

    move-wide/from16 v27, v0

    .end local v0    # "x_4":J
    .local v27, "x_4":J
    int-to-long v0, v11

    and-long v0, v0, v19

    add-long v21, v21, v0

    add-long v12, v12, v21

    .line 683
    add-int/lit8 v0, v8, 0x0

    long-to-int v1, v12

    aput v1, p2, v0

    .line 684
    ushr-long v0, v12, v16

    .line 685
    .end local v12    # "c":J
    .local v0, "c":J
    mul-long v11, v14, v23

    add-int/lit8 v13, v8, 0x1

    aget v13, p2, v13

    move-wide/from16 v21, v0

    .end local v0    # "c":J
    .local v21, "c":J
    int-to-long v0, v13

    and-long v0, v0, v19

    add-long/2addr v11, v0

    add-long v0, v21, v11

    .line 686
    .end local v21    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v11, v8, 0x1

    long-to-int v12, v0

    aput v12, p2, v11

    .line 687
    ushr-long v0, v0, v16

    .line 688
    mul-long v11, v14, v9

    add-int/lit8 v13, v8, 0x2

    aget v13, p2, v13

    move-wide/from16 v21, v0

    .end local v0    # "c":J
    .restart local v21    # "c":J
    int-to-long v0, v13

    and-long v0, v0, v19

    add-long/2addr v11, v0

    add-long v0, v21, v11

    .line 689
    .end local v21    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v11, v8, 0x2

    long-to-int v12, v0

    aput v12, p2, v11

    .line 690
    ushr-long v0, v0, v16

    .line 691
    mul-long v12, v14, v30

    add-int/lit8 v11, v8, 0x3

    aget v11, p2, v11

    move-wide/from16 v21, v0

    .end local v0    # "c":J
    .restart local v21    # "c":J
    int-to-long v0, v11

    and-long v0, v0, v19

    add-long/2addr v12, v0

    add-long v0, v21, v12

    .line 692
    .end local v21    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v11, v8, 0x3

    long-to-int v12, v0

    aput v12, p2, v11

    .line 693
    ushr-long v0, v0, v16

    .line 694
    mul-long v11, v14, v27

    add-int/lit8 v13, v8, 0x4

    aget v13, p2, v13

    move-wide/from16 v21, v0

    .end local v0    # "c":J
    .restart local v21    # "c":J
    int-to-long v0, v13

    and-long v0, v0, v19

    add-long/2addr v11, v0

    add-long v0, v21, v11

    .line 695
    .end local v21    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v11, v8, 0x4

    long-to-int v12, v0

    aput v12, p2, v11

    .line 696
    ushr-long v0, v0, v16

    .line 697
    mul-long v11, v14, v2

    add-int/lit8 v13, v8, 0x5

    aget v13, p2, v13

    move-wide/from16 v21, v0

    .end local v0    # "c":J
    .restart local v21    # "c":J
    int-to-long v0, v13

    and-long v0, v0, v19

    add-long/2addr v11, v0

    add-long v0, v21, v11

    .line 698
    .end local v21    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v11, v8, 0x5

    long-to-int v12, v0

    aput v12, p2, v11

    .line 699
    ushr-long v0, v0, v16

    .line 700
    mul-long v11, v14, v4

    add-int/lit8 v13, v8, 0x6

    aget v13, p2, v13

    move-wide/from16 v21, v0

    .end local v0    # "c":J
    .restart local v21    # "c":J
    int-to-long v0, v13

    and-long v0, v0, v19

    add-long/2addr v11, v0

    add-long v0, v21, v11

    .line 701
    .end local v21    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v11, v8, 0x6

    long-to-int v12, v0

    aput v12, p2, v11

    .line 702
    ushr-long v0, v0, v16

    .line 703
    mul-long v11, v14, v6

    add-int/lit8 v13, v8, 0x7

    aget v13, p2, v13

    move-wide/from16 v21, v0

    .end local v0    # "c":J
    .restart local v21    # "c":J
    int-to-long v0, v13

    and-long v0, v0, v19

    add-long/2addr v11, v0

    add-long v0, v21, v11

    .line 704
    .end local v21    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v11, v8, 0x7

    long-to-int v12, v0

    aput v12, p2, v11

    .line 705
    ushr-long v0, v0, v16

    .line 706
    add-int/lit8 v11, v8, 0x8

    long-to-int v12, v0

    aput v12, p2, v11

    .line 679
    .end local v0    # "c":J
    .end local v14    # "y_i":J
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v0, v27

    const/16 v26, 0x4

    goto/16 :goto_a1

    .line 708
    .end local v8    # "i":I
    .end local v27    # "x_4":J
    .local v0, "x_4":J
    :cond_162
    return-void
.end method

.method public static blacklist mul33Add(I[II[II[II)J
    .registers 37
    .param p0, "w"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .line 809
    const-wide/16 v0, 0x0

    move/from16 v2, p0

    .local v0, "c":J
    int-to-long v3, v2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 810
    .local v3, "wVal":J
    add-int/lit8 v7, p2, 0x0

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    .line 811
    .local v7, "x0":J
    mul-long v9, v3, v7

    add-int/lit8 v11, p4, 0x0

    aget v11, p3, v11

    int-to-long v11, v11

    and-long/2addr v11, v5

    add-long/2addr v9, v11

    add-long/2addr v0, v9

    .line 812
    add-int/lit8 v9, p6, 0x0

    long-to-int v10, v0

    aput v10, p5, v9

    .line 813
    const/16 v9, 0x20

    ushr-long/2addr v0, v9

    .line 814
    add-int/lit8 v10, p2, 0x1

    aget v10, p1, v10

    int-to-long v10, v10

    and-long/2addr v10, v5

    .line 815
    .local v10, "x1":J
    mul-long v12, v3, v10

    add-long/2addr v12, v7

    add-int/lit8 v14, p4, 0x1

    aget v14, p3, v14

    int-to-long v14, v14

    and-long/2addr v14, v5

    add-long/2addr v12, v14

    add-long/2addr v0, v12

    .line 816
    add-int/lit8 v12, p6, 0x1

    long-to-int v13, v0

    aput v13, p5, v12

    .line 817
    ushr-long/2addr v0, v9

    .line 818
    add-int/lit8 v12, p2, 0x2

    aget v12, p1, v12

    int-to-long v12, v12

    and-long/2addr v12, v5

    .line 819
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

    .line 820
    add-int/lit8 v5, p6, 0x2

    long-to-int v6, v0

    aput v6, p5, v5

    .line 821
    ushr-long/2addr v0, v9

    .line 822
    add-int/lit8 v5, p2, 0x3

    aget v5, p1, v5

    int-to-long v5, v5

    and-long v5, v5, v17

    .line 823
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

    .line 824
    .end local v20    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v9, p6, 0x3

    long-to-int v14, v0

    aput v14, p5, v9

    .line 825
    ushr-long v0, v0, v19

    .line 826
    add-int/lit8 v9, p2, 0x4

    aget v9, p1, v9

    int-to-long v14, v9

    and-long v14, v14, v17

    .line 827
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

    .line 828
    .end local v22    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v9, p6, 0x4

    long-to-int v2, v0

    aput v2, p5, v9

    .line 829
    ushr-long v0, v0, v19

    .line 830
    add-int/lit8 v2, p2, 0x5

    aget v2, p1, v2

    move-wide/from16 v20, v0

    .end local v0    # "c":J
    .restart local v20    # "c":J
    int-to-long v0, v2

    and-long v0, v0, v17

    .line 831
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

    .line 832
    .end local v20    # "c":J
    .local v0, "c":J
    add-int/lit8 v2, p6, 0x5

    long-to-int v9, v0

    aput v9, p5, v2

    .line 833
    ushr-long v0, v0, v19

    .line 834
    add-int/lit8 v2, p2, 0x6

    aget v2, p1, v2

    move-wide/from16 v20, v0

    .end local v0    # "c":J
    .restart local v20    # "c":J
    int-to-long v0, v2

    and-long v0, v0, v17

    .line 835
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

    .line 836
    .end local v20    # "c":J
    .local v0, "c":J
    add-int/lit8 v2, p6, 0x6

    long-to-int v9, v0

    aput v9, p5, v2

    .line 837
    ushr-long v0, v0, v19

    .line 838
    add-int/lit8 v2, p2, 0x7

    aget v2, p1, v2

    move-wide/from16 v20, v0

    .end local v0    # "c":J
    .restart local v20    # "c":J
    int-to-long v0, v2

    and-long v0, v0, v17

    .line 839
    .local v0, "x7":J
    mul-long v22, v3, v0

    add-long v22, v22, v26

    add-int/lit8 v2, p4, 0x7

    aget v2, p3, v2

    move-wide/from16 v28, v0

    .end local v0    # "x7":J
    .local v28, "x7":J
    int-to-long v0, v2

    and-long v0, v0, v17

    add-long v22, v22, v0

    add-long v0, v20, v22

    .line 840
    .end local v20    # "c":J
    .local v0, "c":J
    add-int/lit8 v2, p6, 0x7

    long-to-int v9, v0

    aput v9, p5, v2

    .line 841
    ushr-long v0, v0, v19

    .line 842
    add-long v0, v0, v28

    .line 843
    return-wide v0
.end method

.method public static blacklist mul33DWordAdd(IJ[II)I
    .registers 24
    .param p0, "x"    # I
    .param p1, "y"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 941
    move-object/from16 v0, p3

    move/from16 v1, p4

    const-wide/16 v2, 0x0

    move/from16 v4, p0

    .local v2, "c":J
    int-to-long v5, v4

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    .line 942
    .local v5, "xVal":J
    and-long v9, p1, v7

    .line 943
    .local v9, "y00":J
    mul-long v11, v5, v9

    add-int/lit8 v13, v1, 0x0

    aget v13, v0, v13

    int-to-long v13, v13

    and-long/2addr v13, v7

    add-long/2addr v11, v13

    add-long/2addr v2, v11

    .line 944
    add-int/lit8 v11, v1, 0x0

    long-to-int v12, v2

    aput v12, v0, v11

    .line 945
    const/16 v11, 0x20

    ushr-long/2addr v2, v11

    .line 946
    ushr-long v12, p1, v11

    .line 947
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

    .line 948
    add-int/lit8 v7, v1, 0x1

    long-to-int v8, v2

    aput v8, v0, v7

    .line 949
    ushr-long/2addr v2, v11

    .line 950
    add-int/lit8 v7, v1, 0x2

    aget v7, v0, v7

    int-to-long v7, v7

    and-long v7, v7, v17

    add-long/2addr v7, v12

    add-long/2addr v2, v7

    .line 951
    add-int/lit8 v7, v1, 0x2

    long-to-int v8, v2

    aput v8, v0, v7

    .line 952
    ushr-long/2addr v2, v11

    .line 953
    add-int/lit8 v7, v1, 0x3

    aget v7, v0, v7

    int-to-long v7, v7

    and-long v7, v7, v17

    add-long/2addr v2, v7

    .line 954
    add-int/lit8 v7, v1, 0x3

    long-to-int v8, v2

    aput v8, v0, v7

    .line 955
    ushr-long/2addr v2, v11

    .line 956
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-nez v7, :cond_5e

    const/4 v7, 0x0

    goto :goto_65

    :cond_5e
    const/16 v7, 0x8

    const/4 v8, 0x4

    invoke-static {v7, v0, v1, v8}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v7

    :goto_65
    return v7
.end method

.method public static blacklist mul33WordAdd(II[II)I
    .registers 16
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .line 964
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .local v2, "xVal":J
    int-to-long v6, p1

    and-long/2addr v6, v4

    .line 965
    .local v6, "yVal":J
    mul-long v8, v6, v2

    add-int/lit8 v10, p3, 0x0

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 966
    add-int/lit8 v8, p3, 0x0

    long-to-int v9, v0

    aput v9, p2, v8

    .line 967
    const/16 v8, 0x20

    ushr-long/2addr v0, v8

    .line 968
    add-int/lit8 v9, p3, 0x1

    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v9, v6

    add-long/2addr v0, v9

    .line 969
    add-int/lit8 v9, p3, 0x1

    long-to-int v10, v0

    aput v10, p2, v9

    .line 970
    ushr-long/2addr v0, v8

    .line 971
    add-int/lit8 v9, p3, 0x2

    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v4, v9

    add-long/2addr v0, v4

    .line 972
    add-int/lit8 v4, p3, 0x2

    long-to-int v5, v0

    aput v5, p2, v4

    .line 973
    ushr-long/2addr v0, v8

    .line 974
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_40

    const/4 v4, 0x0

    goto :goto_47

    :cond_40
    const/16 v4, 0x8

    const/4 v5, 0x3

    invoke-static {v4, p2, p3, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v4

    :goto_47
    return v4
.end method

.method public static blacklist mulAddTo([II[II[II)I
    .registers 42
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "zz"    # [I
    .param p5, "zzOff"    # I

    .line 759
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 760
    .local v0, "y_0":J
    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 761
    .local v4, "y_1":J
    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 762
    .local v6, "y_2":J
    add-int/lit8 v8, p3, 0x3

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 763
    .local v8, "y_3":J
    add-int/lit8 v10, p3, 0x4

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 764
    .local v10, "y_4":J
    add-int/lit8 v12, p3, 0x5

    aget v12, p2, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    .line 765
    .local v12, "y_5":J
    add-int/lit8 v14, p3, 0x6

    aget v14, p2, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    .line 766
    .local v14, "y_6":J
    add-int/lit8 v16, p3, 0x7

    move-wide/from16 v17, v2

    aget v2, p2, v16

    int-to-long v2, v2

    and-long v2, v2, v17

    .line 768
    .local v2, "y_7":J
    const-wide/16 v19, 0x0

    .line 769
    .local v19, "zc":J
    const/16 v16, 0x0

    move-wide/from16 v21, v2

    move/from16 v33, v16

    move/from16 v16, p5

    move-wide/from16 v34, v0

    move/from16 v0, v33

    move-wide/from16 v1, v19

    move-wide/from16 v19, v34

    .end local v2    # "y_7":J
    .end local p5    # "zzOff":I
    .local v0, "i":I
    .local v1, "zc":J
    .local v16, "zzOff":I
    .local v19, "y_0":J
    .local v21, "y_7":J
    :goto_4a
    const/16 v3, 0x8

    if-ge v0, v3, :cond_123

    .line 771
    const-wide/16 v23, 0x0

    .local v23, "c":J
    add-int v3, p1, v0

    aget v3, p0, v3

    move-wide/from16 v25, v4

    .end local v4    # "y_1":J
    .local v25, "y_1":J
    int-to-long v3, v3

    and-long v3, v3, v17

    .line 772
    .local v3, "x_i":J
    mul-long v27, v3, v19

    add-int/lit8 v5, v16, 0x0

    aget v5, p4, v5

    move-wide/from16 v29, v3

    .end local v3    # "x_i":J
    .local v29, "x_i":J
    int-to-long v3, v5

    and-long v3, v3, v17

    add-long v27, v27, v3

    add-long v3, v23, v27

    .line 773
    .end local v23    # "c":J
    .local v3, "c":J
    add-int/lit8 v5, v16, 0x0

    move/from16 v23, v0

    .end local v0    # "i":I
    .local v23, "i":I
    long-to-int v0, v3

    aput v0, p4, v5

    .line 774
    const/16 v0, 0x20

    ushr-long/2addr v3, v0

    .line 775
    mul-long v27, v29, v25

    add-int/lit8 v5, v16, 0x1

    aget v5, p4, v5

    move/from16 p5, v0

    move-wide/from16 v31, v1

    .end local v1    # "zc":J
    .local v31, "zc":J
    int-to-long v0, v5

    and-long v0, v0, v17

    add-long v27, v27, v0

    add-long v3, v3, v27

    .line 776
    add-int/lit8 v0, v16, 0x1

    long-to-int v1, v3

    aput v1, p4, v0

    .line 777
    ushr-long v0, v3, p5

    .line 778
    .end local v3    # "c":J
    .local v0, "c":J
    mul-long v3, v29, v6

    add-int/lit8 v2, v16, 0x2

    aget v2, p4, v2

    move-wide/from16 v27, v0

    .end local v0    # "c":J
    .local v27, "c":J
    int-to-long v0, v2

    and-long v0, v0, v17

    add-long/2addr v3, v0

    add-long v0, v27, v3

    .line 779
    .end local v27    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v16, 0x2

    long-to-int v3, v0

    aput v3, p4, v2

    .line 780
    ushr-long v0, v0, p5

    .line 781
    mul-long v3, v29, v8

    add-int/lit8 v2, v16, 0x3

    aget v2, p4, v2

    move-wide/from16 v27, v0

    .end local v0    # "c":J
    .restart local v27    # "c":J
    int-to-long v0, v2

    and-long v0, v0, v17

    add-long/2addr v3, v0

    add-long v0, v27, v3

    .line 782
    .end local v27    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v16, 0x3

    long-to-int v3, v0

    aput v3, p4, v2

    .line 783
    ushr-long v0, v0, p5

    .line 784
    mul-long v3, v29, v10

    add-int/lit8 v2, v16, 0x4

    aget v2, p4, v2

    move-wide/from16 v27, v0

    .end local v0    # "c":J
    .restart local v27    # "c":J
    int-to-long v0, v2

    and-long v0, v0, v17

    add-long/2addr v3, v0

    add-long v0, v27, v3

    .line 785
    .end local v27    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v16, 0x4

    long-to-int v3, v0

    aput v3, p4, v2

    .line 786
    ushr-long v0, v0, p5

    .line 787
    mul-long v3, v29, v12

    add-int/lit8 v2, v16, 0x5

    aget v2, p4, v2

    move-wide/from16 v27, v0

    .end local v0    # "c":J
    .restart local v27    # "c":J
    int-to-long v0, v2

    and-long v0, v0, v17

    add-long/2addr v3, v0

    add-long v0, v27, v3

    .line 788
    .end local v27    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v16, 0x5

    long-to-int v3, v0

    aput v3, p4, v2

    .line 789
    ushr-long v0, v0, p5

    .line 790
    mul-long v3, v29, v14

    add-int/lit8 v2, v16, 0x6

    aget v2, p4, v2

    move-wide/from16 v27, v0

    .end local v0    # "c":J
    .restart local v27    # "c":J
    int-to-long v0, v2

    and-long v0, v0, v17

    add-long/2addr v3, v0

    add-long v0, v27, v3

    .line 791
    .end local v27    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v16, 0x6

    long-to-int v3, v0

    aput v3, p4, v2

    .line 792
    ushr-long v0, v0, p5

    .line 793
    mul-long v3, v29, v21

    add-int/lit8 v2, v16, 0x7

    aget v2, p4, v2

    move-wide/from16 v27, v0

    .end local v0    # "c":J
    .restart local v27    # "c":J
    int-to-long v0, v2

    and-long v0, v0, v17

    add-long/2addr v3, v0

    add-long v0, v27, v3

    .line 794
    .end local v27    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v16, 0x7

    long-to-int v3, v0

    aput v3, p4, v2

    .line 795
    ushr-long v0, v0, p5

    .line 797
    add-int/lit8 v2, v16, 0x8

    aget v2, p4, v2

    int-to-long v2, v2

    and-long v2, v2, v17

    add-long/2addr v2, v0

    add-long v2, v31, v2

    .line 798
    .end local v31    # "zc":J
    .local v2, "zc":J
    add-int/lit8 v4, v16, 0x8

    long-to-int v5, v2

    aput v5, p4, v4

    .line 799
    ushr-long v2, v2, p5

    .line 800
    nop

    .end local v0    # "c":J
    .end local v29    # "x_i":J
    add-int/lit8 v16, v16, 0x1

    .line 769
    add-int/lit8 v0, v23, 0x1

    move-wide v1, v2

    move-wide/from16 v4, v25

    .end local v23    # "i":I
    .local v0, "i":I
    goto/16 :goto_4a

    .end local v2    # "zc":J
    .end local v25    # "y_1":J
    .restart local v1    # "zc":J
    .restart local v4    # "y_1":J
    :cond_123
    move/from16 v23, v0

    move-wide/from16 v31, v1

    .line 802
    .end local v0    # "i":I
    .end local v1    # "zc":J
    .restart local v31    # "zc":J
    move-wide/from16 v2, v31

    .end local v31    # "zc":J
    .restart local v2    # "zc":J
    long-to-int v0, v2

    return v0
.end method

.method public static blacklist mulAddTo([I[I[I)I
    .registers 38
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .line 712
    const/4 v0, 0x0

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 713
    .local v0, "y_0":J
    const/4 v4, 0x1

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 714
    .local v4, "y_1":J
    const/4 v6, 0x2

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 715
    .local v6, "y_2":J
    const/4 v8, 0x3

    aget v8, p1, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 716
    .local v8, "y_3":J
    const/4 v10, 0x4

    aget v10, p1, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 717
    .local v10, "y_4":J
    const/4 v12, 0x5

    aget v12, p1, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    .line 718
    .local v12, "y_5":J
    const/4 v14, 0x6

    aget v14, p1, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    .line 719
    .local v14, "y_6":J
    const/16 v16, 0x7

    move-wide/from16 v17, v2

    aget v2, p1, v16

    int-to-long v2, v2

    and-long v2, v2, v17

    .line 721
    .local v2, "y_7":J
    const-wide/16 v19, 0x0

    .line 722
    .local v19, "zc":J
    const/16 v16, 0x0

    move-wide/from16 v21, v0

    move/from16 v0, v16

    move-wide/from16 v33, v19

    move-wide/from16 v19, v2

    move-wide/from16 v1, v33

    .end local v2    # "y_7":J
    .local v0, "i":I
    .local v1, "zc":J
    .local v19, "y_7":J
    .local v21, "y_0":J
    :goto_3f
    const/16 v3, 0x8

    if-ge v0, v3, :cond_113

    .line 724
    const-wide/16 v23, 0x0

    .local v23, "c":J
    aget v3, p0, v0

    move-wide/from16 v25, v4

    .end local v4    # "y_1":J
    .local v25, "y_1":J
    int-to-long v3, v3

    and-long v3, v3, v17

    .line 725
    .local v3, "x_i":J
    mul-long v27, v3, v21

    add-int/lit8 v5, v0, 0x0

    aget v5, p2, v5

    move-wide/from16 v29, v3

    .end local v3    # "x_i":J
    .local v29, "x_i":J
    int-to-long v3, v5

    and-long v3, v3, v17

    add-long v27, v27, v3

    add-long v3, v23, v27

    .line 726
    .end local v23    # "c":J
    .local v3, "c":J
    add-int/lit8 v5, v0, 0x0

    move/from16 v16, v0

    .end local v0    # "i":I
    .local v16, "i":I
    long-to-int v0, v3

    aput v0, p2, v5

    .line 727
    const/16 v0, 0x20

    ushr-long/2addr v3, v0

    .line 728
    mul-long v23, v29, v25

    add-int/lit8 v5, v16, 0x1

    aget v5, p2, v5

    move-wide/from16 v27, v1

    move v2, v0

    .end local v1    # "zc":J
    .local v27, "zc":J
    int-to-long v0, v5

    and-long v0, v0, v17

    add-long v23, v23, v0

    add-long v3, v3, v23

    .line 729
    add-int/lit8 v0, v16, 0x1

    long-to-int v1, v3

    aput v1, p2, v0

    .line 730
    ushr-long v0, v3, v2

    .line 731
    .end local v3    # "c":J
    .local v0, "c":J
    mul-long v3, v29, v6

    add-int/lit8 v5, v16, 0x2

    aget v5, p2, v5

    move/from16 v23, v2

    move-wide/from16 v31, v3

    int-to-long v2, v5

    and-long v2, v2, v17

    add-long v3, v31, v2

    add-long/2addr v0, v3

    .line 732
    add-int/lit8 v2, v16, 0x2

    long-to-int v3, v0

    aput v3, p2, v2

    .line 733
    ushr-long v0, v0, v23

    .line 734
    mul-long v3, v29, v8

    add-int/lit8 v2, v16, 0x3

    aget v2, p2, v2

    move-wide/from16 v31, v0

    .end local v0    # "c":J
    .local v31, "c":J
    int-to-long v0, v2

    and-long v0, v0, v17

    add-long/2addr v3, v0

    add-long v0, v31, v3

    .line 735
    .end local v31    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v16, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 736
    ushr-long v0, v0, v23

    .line 737
    mul-long v3, v29, v10

    add-int/lit8 v2, v16, 0x4

    aget v2, p2, v2

    move-wide/from16 v31, v0

    .end local v0    # "c":J
    .restart local v31    # "c":J
    int-to-long v0, v2

    and-long v0, v0, v17

    add-long/2addr v3, v0

    add-long v0, v31, v3

    .line 738
    .end local v31    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v16, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 739
    ushr-long v0, v0, v23

    .line 740
    mul-long v3, v29, v12

    add-int/lit8 v2, v16, 0x5

    aget v2, p2, v2

    move-wide/from16 v31, v0

    .end local v0    # "c":J
    .restart local v31    # "c":J
    int-to-long v0, v2

    and-long v0, v0, v17

    add-long/2addr v3, v0

    add-long v0, v31, v3

    .line 741
    .end local v31    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v16, 0x5

    long-to-int v3, v0

    aput v3, p2, v2

    .line 742
    ushr-long v0, v0, v23

    .line 743
    mul-long v3, v29, v14

    add-int/lit8 v2, v16, 0x6

    aget v2, p2, v2

    move-wide/from16 v31, v0

    .end local v0    # "c":J
    .restart local v31    # "c":J
    int-to-long v0, v2

    and-long v0, v0, v17

    add-long/2addr v3, v0

    add-long v0, v31, v3

    .line 744
    .end local v31    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v16, 0x6

    long-to-int v3, v0

    aput v3, p2, v2

    .line 745
    ushr-long v0, v0, v23

    .line 746
    mul-long v3, v29, v19

    add-int/lit8 v2, v16, 0x7

    aget v2, p2, v2

    move-wide/from16 v31, v0

    .end local v0    # "c":J
    .restart local v31    # "c":J
    int-to-long v0, v2

    and-long v0, v0, v17

    add-long/2addr v3, v0

    add-long v0, v31, v3

    .line 747
    .end local v31    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v16, 0x7

    long-to-int v3, v0

    aput v3, p2, v2

    .line 748
    ushr-long v0, v0, v23

    .line 750
    add-int/lit8 v2, v16, 0x8

    aget v2, p2, v2

    int-to-long v2, v2

    and-long v2, v2, v17

    add-long/2addr v2, v0

    add-long v2, v27, v2

    .line 751
    .end local v27    # "zc":J
    .local v2, "zc":J
    add-int/lit8 v4, v16, 0x8

    long-to-int v5, v2

    aput v5, p2, v4

    .line 752
    ushr-long v1, v2, v23

    .line 722
    .end local v0    # "c":J
    .end local v2    # "zc":J
    .end local v29    # "x_i":J
    .restart local v1    # "zc":J
    add-int/lit8 v0, v16, 0x1

    move-wide/from16 v4, v25

    .end local v16    # "i":I
    .local v0, "i":I
    goto/16 :goto_3f

    .end local v25    # "y_1":J
    .restart local v4    # "y_1":J
    :cond_113
    move/from16 v16, v0

    .line 754
    .end local v0    # "i":I
    long-to-int v0, v1

    return v0
.end method

.method public static blacklist mulByWord(I[I)I
    .registers 12
    .param p0, "x"    # I
    .param p1, "z"    # [I

    .line 848
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 849
    .local v2, "xVal":J
    const/4 v6, 0x0

    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-long/2addr v0, v7

    .line 850
    long-to-int v7, v0

    aput v7, p1, v6

    .line 851
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 852
    const/4 v7, 0x1

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    add-long/2addr v0, v8

    .line 853
    long-to-int v8, v0

    aput v8, p1, v7

    .line 854
    ushr-long/2addr v0, v6

    .line 855
    const/4 v7, 0x2

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    add-long/2addr v0, v8

    .line 856
    long-to-int v8, v0

    aput v8, p1, v7

    .line 857
    ushr-long/2addr v0, v6

    .line 858
    const/4 v7, 0x3

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    add-long/2addr v0, v8

    .line 859
    long-to-int v8, v0

    aput v8, p1, v7

    .line 860
    ushr-long/2addr v0, v6

    .line 861
    const/4 v7, 0x4

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    add-long/2addr v0, v8

    .line 862
    long-to-int v8, v0

    aput v8, p1, v7

    .line 863
    ushr-long/2addr v0, v6

    .line 864
    const/4 v7, 0x5

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    add-long/2addr v0, v8

    .line 865
    long-to-int v8, v0

    aput v8, p1, v7

    .line 866
    ushr-long/2addr v0, v6

    .line 867
    const/4 v7, 0x6

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    add-long/2addr v0, v8

    .line 868
    long-to-int v8, v0

    aput v8, p1, v7

    .line 869
    ushr-long/2addr v0, v6

    .line 870
    const/4 v7, 0x7

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v4, v8

    mul-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 871
    long-to-int v4, v0

    aput v4, p1, v7

    .line 872
    ushr-long/2addr v0, v6

    .line 873
    long-to-int v4, v0

    return v4
.end method

.method public static blacklist mulByWordAddTo(I[I[I)I
    .registers 15
    .param p0, "x"    # I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 878
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 879
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

    .line 880
    long-to-int v7, v0

    aput v7, p2, v6

    .line 881
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 882
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

    .line 883
    long-to-int v8, v0

    aput v8, p2, v7

    .line 884
    ushr-long/2addr v0, v6

    .line 885
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

    .line 886
    long-to-int v8, v0

    aput v8, p2, v7

    .line 887
    ushr-long/2addr v0, v6

    .line 888
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

    .line 889
    long-to-int v8, v0

    aput v8, p2, v7

    .line 890
    ushr-long/2addr v0, v6

    .line 891
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

    .line 892
    long-to-int v8, v0

    aput v8, p2, v7

    .line 893
    ushr-long/2addr v0, v6

    .line 894
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

    .line 895
    long-to-int v8, v0

    aput v8, p2, v7

    .line 896
    ushr-long/2addr v0, v6

    .line 897
    const/4 v7, 0x6

    aget v8, p2, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    aget v10, p1, v7

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 898
    long-to-int v8, v0

    aput v8, p2, v7

    .line 899
    ushr-long/2addr v0, v6

    .line 900
    const/4 v7, 0x7

    aget v8, p2, v7

    int-to-long v8, v8

    and-long/2addr v8, v4

    mul-long/2addr v8, v2

    aget v10, p1, v7

    int-to-long v10, v10

    and-long/2addr v4, v10

    add-long/2addr v8, v4

    add-long/2addr v0, v8

    .line 901
    long-to-int v4, v0

    aput v4, p2, v7

    .line 902
    ushr-long/2addr v0, v6

    .line 903
    long-to-int v4, v0

    return v4
.end method

.method public static blacklist mulWord(I[I[II)I
    .registers 13
    .param p0, "x"    # I
    .param p1, "y"    # [I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .line 995
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 996
    .local v2, "xVal":J
    const/4 v6, 0x0

    .line 999
    .local v6, "i":I
    :cond_a
    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-long/2addr v0, v7

    .line 1000
    add-int v7, p3, v6

    long-to-int v8, v0

    aput v8, p2, v7

    .line 1001
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 1003
    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x8

    if-lt v6, v7, :cond_a

    .line 1004
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

    .line 908
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 909
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

    .line 910
    add-int/lit8 v6, p4, 0x0

    long-to-int v7, v0

    aput v7, p3, v6

    .line 911
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 912
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

    .line 913
    add-int/lit8 v7, p4, 0x1

    long-to-int v8, v0

    aput v8, p3, v7

    .line 914
    ushr-long/2addr v0, v6

    .line 915
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

    .line 916
    add-int/lit8 v7, p4, 0x2

    long-to-int v8, v0

    aput v8, p3, v7

    .line 917
    ushr-long/2addr v0, v6

    .line 918
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

    .line 919
    add-int/lit8 v7, p4, 0x3

    long-to-int v8, v0

    aput v8, p3, v7

    .line 920
    ushr-long/2addr v0, v6

    .line 921
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

    .line 922
    add-int/lit8 v7, p4, 0x4

    long-to-int v8, v0

    aput v8, p3, v7

    .line 923
    ushr-long/2addr v0, v6

    .line 924
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

    .line 925
    add-int/lit8 v7, p4, 0x5

    long-to-int v8, v0

    aput v8, p3, v7

    .line 926
    ushr-long/2addr v0, v6

    .line 927
    add-int/lit8 v7, p2, 0x6

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int/lit8 v9, p4, 0x6

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 928
    add-int/lit8 v7, p4, 0x6

    long-to-int v8, v0

    aput v8, p3, v7

    .line 929
    ushr-long/2addr v0, v6

    .line 930
    add-int/lit8 v7, p2, 0x7

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int/lit8 v9, p4, 0x7

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v4, v9

    add-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 931
    add-int/lit8 v4, p4, 0x7

    long-to-int v5, v0

    aput v5, p3, v4

    .line 932
    ushr-long/2addr v0, v6

    .line 933
    long-to-int v4, v0

    return v4
.end method

.method public static blacklist mulWordDwordAdd(IJ[II)I
    .registers 16
    .param p0, "x"    # I
    .param p1, "y"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 980
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 981
    .local v2, "xVal":J
    and-long v6, p1, v4

    mul-long/2addr v6, v2

    add-int/lit8 v8, p4, 0x0

    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 982
    add-int/lit8 v6, p4, 0x0

    long-to-int v7, v0

    aput v7, p3, v6

    .line 983
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 984
    ushr-long v7, p1, v6

    mul-long/2addr v7, v2

    add-int/lit8 v9, p4, 0x1

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 985
    add-int/lit8 v7, p4, 0x1

    long-to-int v8, v0

    aput v8, p3, v7

    .line 986
    ushr-long/2addr v0, v6

    .line 987
    add-int/lit8 v7, p4, 0x2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v4, v7

    add-long/2addr v0, v4

    .line 988
    add-int/lit8 v4, p4, 0x2

    long-to-int v5, v0

    aput v5, p3, v4

    .line 989
    ushr-long/2addr v0, v6

    .line 990
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_42

    const/4 v4, 0x0

    goto :goto_49

    :cond_42
    const/16 v4, 0x8

    const/4 v5, 0x3

    invoke-static {v4, p3, p4, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v4

    :goto_49
    return v4
.end method

.method public static blacklist square([II[II)V
    .registers 57
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "zz"    # [I
    .param p3, "zzOff"    # I

    .line 1173
    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 1176
    .local v0, "x_0":J
    const/4 v4, 0x0

    .line 1178
    .local v4, "c":I
    const/4 v5, 0x7

    .local v5, "i":I
    const/16 v6, 0x10

    .line 1181
    .local v6, "j":I
    :goto_f
    add-int/lit8 v7, v5, -0x1

    .end local v5    # "i":I
    .local v7, "i":I
    add-int v5, p1, v5

    aget v5, p0, v5

    int-to-long v8, v5

    and-long/2addr v8, v2

    .line 1182
    .local v8, "xVal":J
    mul-long v10, v8, v8

    .line 1183
    .local v10, "p":J
    add-int/lit8 v6, v6, -0x1

    add-int v5, p3, v6

    shl-int/lit8 v12, v4, 0x1f

    const/16 v13, 0x21

    ushr-long v14, v10, v13

    long-to-int v14, v14

    or-int/2addr v12, v14

    aput v12, p2, v5

    .line 1184
    add-int/lit8 v6, v6, -0x1

    add-int v5, p3, v6

    const/4 v12, 0x1

    ushr-long v14, v10, v12

    long-to-int v14, v14

    aput v14, p2, v5

    .line 1185
    long-to-int v4, v10

    .line 1187
    .end local v8    # "xVal":J
    .end local v10    # "p":J
    if-gtz v7, :cond_2ec

    .line 1190
    mul-long v8, v0, v0

    .line 1191
    .local v8, "p":J
    shl-int/lit8 v5, v4, 0x1f

    int-to-long v10, v5

    and-long/2addr v10, v2

    ushr-long v13, v8, v13

    or-long/2addr v10, v13

    .line 1192
    .local v10, "zz_1":J
    add-int/lit8 v5, p3, 0x0

    long-to-int v13, v8

    aput v13, p2, v5

    .line 1193
    const/16 v5, 0x20

    ushr-long v13, v8, v5

    long-to-int v13, v13

    and-int/lit8 v4, v13, 0x1

    .line 1197
    .end local v6    # "j":I
    .end local v7    # "i":I
    .end local v8    # "p":J
    add-int/lit8 v6, p1, 0x1

    aget v6, p0, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 1198
    .local v6, "x_1":J
    add-int/lit8 v8, p3, 0x2

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 1201
    .local v8, "zz_2":J
    mul-long v12, v6, v0

    add-long/2addr v10, v12

    .line 1202
    long-to-int v12, v10

    .line 1203
    .local v12, "w":I
    add-int/lit8 v13, p3, 0x1

    shl-int/lit8 v14, v12, 0x1

    or-int/2addr v14, v4

    aput v14, p2, v13

    .line 1204
    ushr-int/lit8 v4, v12, 0x1f

    .line 1205
    ushr-long v13, v10, v5

    add-long/2addr v8, v13

    .line 1208
    add-int/lit8 v13, p1, 0x2

    aget v13, p0, v13

    int-to-long v13, v13

    and-long/2addr v13, v2

    .line 1209
    .local v13, "x_2":J
    add-int/lit8 v15, p3, 0x3

    aget v15, p2, v15

    move-wide/from16 v16, v2

    int-to-long v2, v15

    and-long v2, v2, v16

    .line 1210
    .local v2, "zz_3":J
    add-int/lit8 v15, p3, 0x4

    aget v15, p2, v15

    move/from16 v18, v5

    move-wide/from16 v19, v6

    .end local v6    # "x_1":J
    .local v19, "x_1":J
    int-to-long v5, v15

    and-long v5, v5, v16

    .line 1212
    .local v5, "zz_4":J
    mul-long v21, v13, v0

    add-long v8, v8, v21

    .line 1213
    long-to-int v7, v8

    .line 1214
    .end local v12    # "w":I
    .local v7, "w":I
    add-int/lit8 v12, p3, 0x2

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 1215
    ushr-int/lit8 v4, v7, 0x1f

    .line 1216
    ushr-long v21, v8, v18

    mul-long v23, v13, v19

    add-long v21, v21, v23

    add-long v2, v2, v21

    .line 1217
    ushr-long v21, v2, v18

    add-long v5, v5, v21

    .line 1218
    and-long v2, v2, v16

    .line 1221
    add-int/lit8 v12, p1, 0x3

    aget v12, p0, v12

    move-wide/from16 v21, v0

    .end local v0    # "x_0":J
    .local v21, "x_0":J
    int-to-long v0, v12

    and-long v0, v0, v16

    .line 1222
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

    .line 1223
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

    .line 1225
    mul-long v27, v23, v21

    add-long v2, v2, v27

    .line 1226
    long-to-int v7, v2

    .line 1227
    add-int/lit8 v12, p3, 0x3

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 1228
    ushr-int/lit8 v4, v7, 0x1f

    .line 1229
    ushr-long v27, v2, v18

    mul-long v29, v23, v19

    add-long v27, v27, v29

    add-long v5, v5, v27

    .line 1230
    ushr-long v27, v5, v18

    mul-long v29, v23, v13

    add-long v27, v27, v29

    add-long v25, v25, v27

    .line 1231
    and-long v5, v5, v16

    .line 1232
    ushr-long v27, v25, v18

    add-long v0, v0, v27

    .line 1233
    and-long v25, v25, v16

    .line 1236
    add-int/lit8 v12, p1, 0x4

    aget v12, p0, v12

    move-wide/from16 v27, v0

    .end local v0    # "zz_6":J
    .local v27, "zz_6":J
    int-to-long v0, v12

    and-long v0, v0, v16

    .line 1237
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

    .line 1238
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

    .line 1240
    mul-long v33, v29, v21

    add-long v5, v5, v33

    .line 1241
    long-to-int v7, v5

    .line 1242
    add-int/lit8 v12, p3, 0x4

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 1243
    ushr-int/lit8 v4, v7, 0x1f

    .line 1244
    ushr-long v33, v5, v18

    mul-long v35, v29, v19

    add-long v33, v33, v35

    add-long v25, v25, v33

    .line 1245
    ushr-long v33, v25, v18

    mul-long v35, v29, v13

    add-long v33, v33, v35

    add-long v27, v27, v33

    .line 1246
    and-long v25, v25, v16

    .line 1247
    ushr-long v33, v27, v18

    mul-long v35, v29, v23

    add-long v33, v33, v35

    add-long v31, v31, v33

    .line 1248
    and-long v27, v27, v16

    .line 1249
    ushr-long v33, v31, v18

    add-long v0, v0, v33

    .line 1250
    and-long v31, v31, v16

    .line 1253
    add-int/lit8 v12, p1, 0x5

    aget v12, p0, v12

    move-wide/from16 v33, v0

    .end local v0    # "zz_8":J
    .local v33, "zz_8":J
    int-to-long v0, v12

    and-long v0, v0, v16

    .line 1254
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

    .line 1255
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

    .line 1257
    mul-long v39, v35, v21

    move-wide/from16 v41, v0

    .end local v0    # "zz_10":J
    .local v41, "zz_10":J
    add-long v0, v25, v39

    .line 1258
    .end local v25    # "zz_5":J
    .local v0, "zz_5":J
    long-to-int v7, v0

    .line 1259
    add-int/lit8 v12, p3, 0x5

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 1260
    ushr-int/lit8 v4, v7, 0x1f

    .line 1261
    ushr-long v25, v0, v18

    mul-long v39, v35, v19

    add-long v25, v25, v39

    add-long v27, v27, v25

    .line 1262
    ushr-long v25, v27, v18

    mul-long v39, v35, v13

    add-long v25, v25, v39

    add-long v31, v31, v25

    .line 1263
    and-long v25, v27, v16

    .line 1264
    .end local v27    # "zz_6":J
    .local v25, "zz_6":J
    ushr-long v27, v31, v18

    mul-long v39, v35, v23

    add-long v27, v27, v39

    add-long v33, v33, v27

    .line 1265
    and-long v27, v31, v16

    .line 1266
    .end local v31    # "zz_7":J
    .local v27, "zz_7":J
    ushr-long v31, v33, v18

    mul-long v39, v35, v29

    add-long v31, v31, v39

    add-long v37, v37, v31

    .line 1267
    and-long v31, v33, v16

    .line 1268
    .end local v33    # "zz_8":J
    .local v31, "zz_8":J
    ushr-long v33, v37, v18

    add-long v33, v41, v33

    .line 1269
    .end local v41    # "zz_10":J
    .local v33, "zz_10":J
    and-long v37, v37, v16

    .line 1272
    add-int/lit8 v12, p1, 0x6

    aget v12, p0, v12

    move-wide/from16 v39, v0

    .end local v0    # "zz_5":J
    .local v39, "zz_5":J
    int-to-long v0, v12

    and-long v0, v0, v16

    .line 1273
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

    .line 1274
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
    and-long v43, v43, v16

    .line 1276
    mul-long v45, v41, v21

    move-wide/from16 v47, v0

    .end local v0    # "zz_12":J
    .local v47, "zz_12":J
    add-long v0, v25, v45

    .line 1277
    .end local v25    # "zz_6":J
    .local v0, "zz_6":J
    long-to-int v7, v0

    .line 1278
    add-int/lit8 v12, p3, 0x6

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 1279
    ushr-int/lit8 v4, v7, 0x1f

    .line 1280
    ushr-long v25, v0, v18

    mul-long v45, v41, v19

    add-long v25, v25, v45

    add-long v27, v27, v25

    .line 1281
    ushr-long v25, v27, v18

    mul-long v45, v41, v13

    add-long v25, v25, v45

    add-long v31, v31, v25

    .line 1282
    and-long v25, v27, v16

    .line 1283
    .end local v27    # "zz_7":J
    .local v25, "zz_7":J
    ushr-long v27, v31, v18

    mul-long v45, v41, v23

    add-long v27, v27, v45

    add-long v37, v37, v27

    .line 1284
    and-long v27, v31, v16

    .line 1285
    .end local v31    # "zz_8":J
    .local v27, "zz_8":J
    ushr-long v31, v37, v18

    mul-long v45, v41, v29

    add-long v31, v31, v45

    add-long v33, v33, v31

    .line 1286
    and-long v31, v37, v16

    .line 1287
    .end local v37    # "zz_9":J
    .local v31, "zz_9":J
    ushr-long v37, v33, v18

    mul-long v45, v41, v35

    add-long v37, v37, v45

    add-long v43, v43, v37

    .line 1288
    and-long v33, v33, v16

    .line 1289
    ushr-long v37, v43, v18

    add-long v37, v47, v37

    .line 1290
    .end local v47    # "zz_12":J
    .local v37, "zz_12":J
    and-long v43, v43, v16

    .line 1293
    add-int/lit8 v12, p1, 0x7

    aget v12, p0, v12

    move-wide/from16 v45, v0

    .end local v0    # "zz_6":J
    .local v45, "zz_6":J
    int-to-long v0, v12

    and-long v0, v0, v16

    .line 1294
    .local v0, "x_7":J
    add-int/lit8 v12, p3, 0xd

    aget v12, p2, v12

    move-wide/from16 v47, v0

    .end local v0    # "x_7":J
    .local v47, "x_7":J
    int-to-long v0, v12

    and-long v0, v0, v16

    ushr-long v49, v37, v18

    add-long v0, v0, v49

    .local v0, "zz_13":J
    and-long v37, v37, v16

    .line 1295
    add-int/lit8 v12, p3, 0xe

    aget v12, p2, v12

    move-wide/from16 v49, v0

    .end local v0    # "zz_13":J
    .local v49, "zz_13":J
    int-to-long v0, v12

    and-long v0, v0, v16

    ushr-long v51, v49, v18

    add-long v0, v0, v51

    .local v0, "zz_14":J
    and-long v15, v49, v16

    .line 1297
    .end local v49    # "zz_13":J
    .local v15, "zz_13":J
    mul-long v49, v47, v21

    move-wide/from16 v51, v0

    .end local v0    # "zz_14":J
    .local v51, "zz_14":J
    add-long v0, v25, v49

    .line 1298
    .end local v25    # "zz_7":J
    .local v0, "zz_7":J
    long-to-int v7, v0

    .line 1299
    add-int/lit8 v12, p3, 0x7

    shl-int/lit8 v17, v7, 0x1

    or-int v17, v17, v4

    aput v17, p2, v12

    .line 1300
    ushr-int/lit8 v4, v7, 0x1f

    .line 1301
    ushr-long v25, v0, v18

    mul-long v49, v47, v19

    add-long v25, v25, v49

    move-wide/from16 v49, v0

    .end local v0    # "zz_7":J
    .local v49, "zz_7":J
    add-long v0, v27, v25

    .line 1302
    .end local v27    # "zz_8":J
    .local v0, "zz_8":J
    ushr-long v25, v0, v18

    mul-long v27, v47, v13

    add-long v25, v25, v27

    move-wide/from16 v27, v2

    .end local v2    # "zz_3":J
    .local v27, "zz_3":J
    add-long v2, v31, v25

    .line 1303
    .end local v31    # "zz_9":J
    .local v2, "zz_9":J
    ushr-long v25, v2, v18

    mul-long v31, v47, v23

    add-long v25, v25, v31

    move-wide/from16 v31, v5

    move v6, v4

    .end local v4    # "c":I
    .end local v5    # "zz_4":J
    .local v6, "c":I
    .local v31, "zz_4":J
    add-long v4, v33, v25

    .line 1304
    .end local v33    # "zz_10":J
    .local v4, "zz_10":J
    ushr-long v25, v4, v18

    mul-long v33, v47, v29

    add-long v25, v25, v33

    move/from16 v17, v6

    move v12, v7

    .end local v6    # "c":I
    .end local v7    # "w":I
    .restart local v12    # "w":I
    .local v17, "c":I
    add-long v6, v43, v25

    .line 1305
    .end local v43    # "zz_11":J
    .local v6, "zz_11":J
    ushr-long v25, v6, v18

    mul-long v33, v47, v35

    add-long v25, v25, v33

    move-wide/from16 v33, v8

    .end local v8    # "zz_2":J
    .local v33, "zz_2":J
    add-long v8, v37, v25

    .line 1306
    .end local v37    # "zz_12":J
    .local v8, "zz_12":J
    ushr-long v25, v8, v18

    mul-long v37, v47, v41

    add-long v25, v25, v37

    move-wide/from16 v37, v10

    .end local v10    # "zz_1":J
    .local v37, "zz_1":J
    add-long v10, v15, v25

    .line 1307
    .end local v15    # "zz_13":J
    .local v10, "zz_13":J
    ushr-long v15, v10, v18

    move-wide/from16 v25, v13

    move v14, v12

    .end local v12    # "w":I
    .end local v13    # "x_2":J
    .local v14, "w":I
    .local v25, "x_2":J
    add-long v12, v51, v15

    .line 1310
    .end local v51    # "zz_14":J
    .local v12, "zz_14":J
    long-to-int v14, v0

    .line 1311
    add-int/lit8 v15, p3, 0x8

    shl-int/lit8 v16, v14, 0x1

    or-int v16, v16, v17

    aput v16, p2, v15

    .line 1312
    ushr-int/lit8 v15, v14, 0x1f

    .line 1313
    .end local v17    # "c":I
    .local v15, "c":I
    long-to-int v14, v2

    .line 1314
    add-int/lit8 v16, p3, 0x9

    shl-int/lit8 v17, v14, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 1315
    ushr-int/lit8 v15, v14, 0x1f

    .line 1316
    long-to-int v14, v4

    .line 1317
    add-int/lit8 v16, p3, 0xa

    shl-int/lit8 v17, v14, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 1318
    ushr-int/lit8 v15, v14, 0x1f

    .line 1319
    long-to-int v14, v6

    .line 1320
    add-int/lit8 v16, p3, 0xb

    shl-int/lit8 v17, v14, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 1321
    ushr-int/lit8 v15, v14, 0x1f

    .line 1322
    long-to-int v14, v8

    .line 1323
    add-int/lit8 v16, p3, 0xc

    shl-int/lit8 v17, v14, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 1324
    ushr-int/lit8 v15, v14, 0x1f

    .line 1325
    long-to-int v14, v10

    .line 1326
    add-int/lit8 v16, p3, 0xd

    shl-int/lit8 v17, v14, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 1327
    ushr-int/lit8 v15, v14, 0x1f

    .line 1328
    long-to-int v14, v12

    .line 1329
    add-int/lit8 v16, p3, 0xe

    shl-int/lit8 v17, v14, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 1330
    ushr-int/lit8 v15, v14, 0x1f

    .line 1331
    add-int/lit8 v16, p3, 0xf

    aget v16, p2, v16

    move-wide/from16 v43, v0

    .end local v0    # "zz_8":J
    .local v43, "zz_8":J
    ushr-long v0, v12, v18

    long-to-int v0, v0

    add-int v16, v16, v0

    .line 1332
    .end local v14    # "w":I
    .local v16, "w":I
    add-int/lit8 v0, p3, 0xf

    shl-int/lit8 v1, v16, 0x1

    or-int/2addr v1, v15

    aput v1, p2, v0

    .line 1333
    return-void

    .line 1187
    .end local v2    # "zz_9":J
    .end local v8    # "zz_12":J
    .end local v10    # "zz_13":J
    .end local v12    # "zz_14":J
    .end local v15    # "c":I
    .end local v16    # "w":I
    .end local v19    # "x_1":J
    .end local v21    # "x_0":J
    .end local v23    # "x_3":J
    .end local v25    # "x_2":J
    .end local v27    # "zz_3":J
    .end local v29    # "x_4":J
    .end local v31    # "zz_4":J
    .end local v33    # "zz_2":J
    .end local v35    # "x_5":J
    .end local v37    # "zz_1":J
    .end local v39    # "zz_5":J
    .end local v41    # "x_6":J
    .end local v43    # "zz_8":J
    .end local v45    # "zz_6":J
    .end local v47    # "x_7":J
    .end local v49    # "zz_7":J
    .local v0, "x_0":J
    .local v4, "c":I
    .local v6, "j":I
    .local v7, "i":I
    :cond_2ec
    move-wide/from16 v21, v0

    move-wide/from16 v16, v2

    .end local v0    # "x_0":J
    .restart local v21    # "x_0":J
    move v5, v7

    goto/16 :goto_f
.end method

.method public static blacklist square([I[I)V
    .registers 62
    .param p0, "x"    # [I
    .param p1, "zz"    # [I

    .line 1009
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 1012
    .local v1, "x_0":J
    const/4 v5, 0x0

    .line 1014
    .local v5, "c":I
    const/4 v6, 0x7

    .local v6, "i":I
    const/16 v7, 0x10

    .line 1017
    .local v7, "j":I
    :goto_e
    add-int/lit8 v8, v6, -0x1

    .end local v6    # "i":I
    .local v8, "i":I
    aget v6, p0, v6

    int-to-long v9, v6

    and-long/2addr v9, v3

    .line 1018
    .local v9, "xVal":J
    mul-long v11, v9, v9

    .line 1019
    .local v11, "p":J
    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v6, v5, 0x1f

    const/16 v13, 0x21

    ushr-long v14, v11, v13

    long-to-int v14, v14

    or-int/2addr v6, v14

    aput v6, p1, v7

    .line 1020
    add-int/lit8 v7, v7, -0x1

    const/4 v6, 0x1

    ushr-long v14, v11, v6

    long-to-int v14, v14

    aput v14, p1, v7

    .line 1021
    long-to-int v5, v11

    .line 1023
    .end local v9    # "xVal":J
    .end local v11    # "p":J
    if-gtz v8, :cond_2b7

    .line 1026
    mul-long v9, v1, v1

    .line 1027
    .local v9, "p":J
    shl-int/lit8 v11, v5, 0x1f

    int-to-long v11, v11

    and-long/2addr v11, v3

    ushr-long v13, v9, v13

    or-long/2addr v11, v13

    .line 1028
    .local v11, "zz_1":J
    long-to-int v13, v9

    aput v13, p1, v0

    .line 1029
    const/16 v0, 0x20

    ushr-long v13, v9, v0

    long-to-int v13, v13

    and-int/lit8 v5, v13, 0x1

    .line 1033
    .end local v7    # "j":I
    .end local v8    # "i":I
    .end local v9    # "p":J
    aget v7, p0, v6

    int-to-long v7, v7

    and-long/2addr v7, v3

    .line 1034
    .local v7, "x_1":J
    const/4 v9, 0x2

    aget v10, p1, v9

    int-to-long v13, v10

    and-long/2addr v13, v3

    .line 1037
    .local v13, "zz_2":J
    mul-long v15, v7, v1

    add-long/2addr v11, v15

    .line 1038
    long-to-int v10, v11

    .line 1039
    .local v10, "w":I
    shl-int/lit8 v15, v10, 0x1

    or-int/2addr v15, v5

    aput v15, p1, v6

    .line 1040
    ushr-int/lit8 v5, v10, 0x1f

    .line 1041
    ushr-long v15, v11, v0

    add-long/2addr v13, v15

    .line 1044
    aget v6, p0, v9

    move-wide v15, v1

    move v2, v0

    .end local v1    # "x_0":J
    .local v15, "x_0":J
    int-to-long v0, v6

    and-long/2addr v0, v3

    .line 1045
    .local v0, "x_2":J
    const/4 v6, 0x3

    move/from16 v17, v2

    aget v2, p1, v6

    move-wide/from16 v18, v3

    int-to-long v3, v2

    and-long v2, v3, v18

    .line 1046
    .local v2, "zz_3":J
    const/16 v20, 0x4

    aget v4, p1, v20

    move-wide/from16 v21, v7

    move v8, v6

    .end local v7    # "x_1":J
    .local v21, "x_1":J
    int-to-long v6, v4

    and-long v6, v6, v18

    .line 1048
    .local v6, "zz_4":J
    mul-long v23, v0, v15

    add-long v13, v13, v23

    .line 1049
    long-to-int v4, v13

    .line 1050
    .end local v10    # "w":I
    .local v4, "w":I
    shl-int/lit8 v10, v4, 0x1

    or-int/2addr v10, v5

    aput v10, p1, v9

    .line 1051
    ushr-int/lit8 v5, v4, 0x1f

    .line 1052
    ushr-long v9, v13, v17

    mul-long v23, v0, v21

    add-long v9, v9, v23

    add-long/2addr v2, v9

    .line 1053
    ushr-long v9, v2, v17

    add-long/2addr v6, v9

    .line 1054
    and-long v2, v2, v18

    .line 1057
    aget v9, p0, v8

    int-to-long v9, v9

    and-long v9, v9, v18

    .line 1058
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

    .line 1059
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

    .line 1061
    mul-long v30, v9, v15

    add-long v2, v2, v30

    .line 1062
    long-to-int v4, v2

    .line 1063
    shl-int/lit8 v8, v4, 0x1

    or-int/2addr v8, v5

    aput v8, p1, v24

    .line 1064
    ushr-int/lit8 v5, v4, 0x1f

    .line 1065
    ushr-long v30, v2, v17

    mul-long v32, v9, v21

    add-long v30, v30, v32

    add-long v6, v6, v30

    .line 1066
    ushr-long v30, v6, v17

    mul-long v32, v9, v25

    add-long v30, v30, v32

    add-long v28, v28, v30

    .line 1067
    and-long v6, v6, v18

    .line 1068
    ushr-long v30, v28, v17

    add-long v0, v0, v30

    .line 1069
    and-long v28, v28, v18

    .line 1072
    aget v8, p0, v20

    move-wide/from16 v30, v0

    .end local v0    # "zz_6":J
    .local v30, "zz_6":J
    int-to-long v0, v8

    and-long v0, v0, v18

    .line 1073
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

    .line 1074
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

    .line 1076
    mul-long v37, v32, v15

    add-long v6, v6, v37

    .line 1077
    long-to-int v4, v6

    .line 1078
    shl-int/lit8 v8, v4, 0x1

    or-int/2addr v8, v5

    aput v8, p1, v20

    .line 1079
    ushr-int/lit8 v5, v4, 0x1f

    .line 1080
    ushr-long v37, v6, v17

    mul-long v39, v32, v21

    add-long v37, v37, v39

    add-long v28, v28, v37

    .line 1081
    ushr-long v37, v28, v17

    mul-long v39, v32, v25

    add-long v37, v37, v39

    add-long v30, v30, v37

    .line 1082
    and-long v28, v28, v18

    .line 1083
    ushr-long v37, v30, v17

    mul-long v39, v32, v9

    add-long v37, v37, v39

    add-long v35, v35, v37

    .line 1084
    and-long v30, v30, v18

    .line 1085
    ushr-long v37, v35, v17

    add-long v0, v0, v37

    .line 1086
    and-long v35, v35, v18

    .line 1089
    aget v8, p0, v23

    move-wide/from16 v37, v0

    .end local v0    # "zz_8":J
    .local v37, "zz_8":J
    int-to-long v0, v8

    and-long v0, v0, v18

    .line 1090
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

    .line 1091
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

    .line 1093
    mul-long v44, v39, v15

    move-wide/from16 v46, v0

    .end local v0    # "zz_10":J
    .local v46, "zz_10":J
    add-long v0, v28, v44

    .line 1094
    .end local v28    # "zz_5":J
    .local v0, "zz_5":J
    long-to-int v4, v0

    .line 1095
    shl-int/lit8 v8, v4, 0x1

    or-int/2addr v8, v5

    aput v8, p1, v23

    .line 1096
    ushr-int/lit8 v5, v4, 0x1f

    .line 1097
    ushr-long v28, v0, v17

    mul-long v44, v39, v21

    add-long v28, v28, v44

    add-long v30, v30, v28

    .line 1098
    ushr-long v28, v30, v17

    mul-long v44, v39, v25

    add-long v28, v28, v44

    add-long v35, v35, v28

    .line 1099
    and-long v28, v30, v18

    .line 1100
    .end local v30    # "zz_6":J
    .local v28, "zz_6":J
    ushr-long v30, v35, v17

    mul-long v44, v39, v9

    add-long v30, v30, v44

    add-long v37, v37, v30

    .line 1101
    and-long v30, v35, v18

    .line 1102
    .end local v35    # "zz_7":J
    .local v30, "zz_7":J
    ushr-long v35, v37, v17

    mul-long v44, v39, v32

    add-long v35, v35, v44

    add-long v42, v42, v35

    .line 1103
    and-long v35, v37, v18

    .line 1104
    .end local v37    # "zz_8":J
    .local v35, "zz_8":J
    ushr-long v37, v42, v17

    add-long v37, v46, v37

    .line 1105
    .end local v46    # "zz_10":J
    .local v37, "zz_10":J
    and-long v42, v42, v18

    .line 1108
    aget v8, p0, v27

    move-wide/from16 v44, v0

    .end local v0    # "zz_5":J
    .local v44, "zz_5":J
    int-to-long v0, v8

    and-long v0, v0, v18

    .line 1109
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

    .line 1110
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
    and-long v49, v49, v18

    .line 1112
    mul-long v51, v46, v15

    move-wide/from16 v53, v0

    .end local v0    # "zz_12":J
    .local v53, "zz_12":J
    add-long v0, v28, v51

    .line 1113
    .end local v28    # "zz_6":J
    .local v0, "zz_6":J
    long-to-int v4, v0

    .line 1114
    shl-int/lit8 v8, v4, 0x1

    or-int/2addr v8, v5

    aput v8, p1, v27

    .line 1115
    ushr-int/lit8 v5, v4, 0x1f

    .line 1116
    ushr-long v27, v0, v17

    mul-long v51, v46, v21

    add-long v27, v27, v51

    add-long v30, v30, v27

    .line 1117
    ushr-long v27, v30, v17

    mul-long v51, v46, v25

    add-long v27, v27, v51

    add-long v35, v35, v27

    .line 1118
    and-long v27, v30, v18

    .line 1119
    .end local v30    # "zz_7":J
    .local v27, "zz_7":J
    ushr-long v29, v35, v17

    mul-long v51, v46, v9

    add-long v29, v29, v51

    add-long v42, v42, v29

    .line 1120
    and-long v29, v35, v18

    .line 1121
    .end local v35    # "zz_8":J
    .local v29, "zz_8":J
    ushr-long v35, v42, v17

    mul-long v51, v46, v32

    add-long v35, v35, v51

    add-long v37, v37, v35

    .line 1122
    and-long v35, v42, v18

    .line 1123
    .end local v42    # "zz_9":J
    .local v35, "zz_9":J
    ushr-long v42, v37, v17

    mul-long v51, v46, v39

    add-long v42, v42, v51

    add-long v49, v49, v42

    .line 1124
    and-long v37, v37, v18

    .line 1125
    ushr-long v42, v49, v17

    add-long v42, v53, v42

    .line 1126
    .end local v53    # "zz_12":J
    .local v42, "zz_12":J
    and-long v49, v49, v18

    .line 1129
    aget v8, p0, v24

    move-wide/from16 v51, v0

    .end local v0    # "zz_6":J
    .local v51, "zz_6":J
    int-to-long v0, v8

    and-long v0, v0, v18

    .line 1130
    .local v0, "x_7":J
    const/16 v31, 0xd

    aget v8, p1, v31

    move-wide/from16 v53, v0

    .end local v0    # "x_7":J
    .local v53, "x_7":J
    int-to-long v0, v8

    and-long v0, v0, v18

    ushr-long v55, v42, v17

    add-long v0, v0, v55

    .local v0, "zz_13":J
    and-long v42, v42, v18

    .line 1131
    const/16 v55, 0xe

    aget v8, p1, v55

    move-wide/from16 v56, v0

    .end local v0    # "zz_13":J
    .local v56, "zz_13":J
    int-to-long v0, v8

    and-long v0, v0, v18

    ushr-long v58, v56, v17

    add-long v0, v0, v58

    .local v0, "zz_14":J
    and-long v18, v56, v18

    .line 1133
    .end local v56    # "zz_13":J
    .local v18, "zz_13":J
    mul-long v56, v53, v15

    move-wide/from16 v58, v0

    .end local v0    # "zz_14":J
    .local v58, "zz_14":J
    add-long v0, v27, v56

    .line 1134
    .end local v27    # "zz_7":J
    .local v0, "zz_7":J
    long-to-int v4, v0

    .line 1135
    shl-int/lit8 v8, v4, 0x1

    or-int/2addr v8, v5

    aput v8, p1, v24

    .line 1136
    ushr-int/lit8 v5, v4, 0x1f

    .line 1137
    ushr-long v27, v0, v17

    mul-long v56, v53, v21

    add-long v27, v27, v56

    move-wide/from16 v56, v0

    .end local v0    # "zz_7":J
    .local v56, "zz_7":J
    add-long v0, v29, v27

    .line 1138
    .end local v29    # "zz_8":J
    .local v0, "zz_8":J
    ushr-long v27, v0, v17

    mul-long v29, v53, v25

    add-long v27, v27, v29

    move-wide/from16 v29, v2

    .end local v2    # "zz_3":J
    .local v29, "zz_3":J
    add-long v2, v35, v27

    .line 1139
    .end local v35    # "zz_9":J
    .local v2, "zz_9":J
    ushr-long v27, v2, v17

    mul-long v35, v53, v9

    add-long v27, v27, v35

    move v8, v4

    move/from16 v24, v5

    .end local v4    # "w":I
    .end local v5    # "c":I
    .local v8, "w":I
    .local v24, "c":I
    add-long v4, v37, v27

    .line 1140
    .end local v37    # "zz_10":J
    .local v4, "zz_10":J
    ushr-long v27, v4, v17

    mul-long v35, v53, v32

    add-long v27, v27, v35

    move-wide/from16 v35, v6

    .end local v6    # "zz_4":J
    .local v35, "zz_4":J
    add-long v6, v49, v27

    .line 1141
    .end local v49    # "zz_11":J
    .local v6, "zz_11":J
    ushr-long v27, v6, v17

    mul-long v37, v53, v39

    add-long v27, v27, v37

    move-wide/from16 v37, v9

    move v10, v8

    .end local v8    # "w":I
    .end local v9    # "x_3":J
    .restart local v10    # "w":I
    .local v37, "x_3":J
    add-long v8, v42, v27

    .line 1142
    .end local v42    # "zz_12":J
    .local v8, "zz_12":J
    ushr-long v27, v8, v17

    mul-long v42, v53, v46

    add-long v27, v27, v42

    move-wide/from16 v42, v11

    move v12, v10

    .end local v10    # "w":I
    .end local v11    # "zz_1":J
    .local v12, "w":I
    .local v42, "zz_1":J
    add-long v10, v18, v27

    .line 1143
    .end local v18    # "zz_13":J
    .local v10, "zz_13":J
    ushr-long v18, v10, v17

    move-wide/from16 v27, v13

    move v14, v12

    .end local v12    # "w":I
    .end local v13    # "zz_2":J
    .local v14, "w":I
    .local v27, "zz_2":J
    add-long v12, v58, v18

    .line 1146
    .end local v58    # "zz_14":J
    .local v12, "zz_14":J
    long-to-int v14, v0

    .line 1147
    shl-int/lit8 v18, v14, 0x1

    or-int v18, v18, v24

    aput v18, p1, v34

    .line 1148
    ushr-int/lit8 v18, v14, 0x1f

    .line 1149
    .end local v24    # "c":I
    .local v18, "c":I
    long-to-int v14, v2

    .line 1150
    shl-int/lit8 v19, v14, 0x1

    or-int v19, v19, v18

    aput v19, p1, v20

    .line 1151
    ushr-int/lit8 v18, v14, 0x1f

    .line 1152
    long-to-int v14, v4

    .line 1153
    shl-int/lit8 v19, v14, 0x1

    or-int v19, v19, v18

    aput v19, p1, v41

    .line 1154
    ushr-int/lit8 v18, v14, 0x1f

    .line 1155
    long-to-int v14, v6

    .line 1156
    shl-int/lit8 v19, v14, 0x1

    or-int v19, v19, v18

    aput v19, p1, v23

    .line 1157
    ushr-int/lit8 v18, v14, 0x1f

    .line 1158
    long-to-int v14, v8

    .line 1159
    shl-int/lit8 v19, v14, 0x1

    or-int v19, v19, v18

    aput v19, p1, v48

    .line 1160
    ushr-int/lit8 v18, v14, 0x1f

    .line 1161
    long-to-int v14, v10

    .line 1162
    shl-int/lit8 v19, v14, 0x1

    or-int v19, v19, v18

    aput v19, p1, v31

    .line 1163
    ushr-int/lit8 v18, v14, 0x1f

    .line 1164
    long-to-int v14, v12

    .line 1165
    shl-int/lit8 v19, v14, 0x1

    or-int v19, v19, v18

    aput v19, p1, v55

    .line 1166
    ushr-int/lit8 v18, v14, 0x1f

    .line 1167
    const/16 v19, 0xf

    aget v20, p1, v19

    move-wide/from16 v23, v0

    .end local v0    # "zz_8":J
    .local v23, "zz_8":J
    ushr-long v0, v12, v17

    long-to-int v0, v0

    add-int v20, v20, v0

    .line 1168
    .end local v14    # "w":I
    .local v20, "w":I
    shl-int/lit8 v0, v20, 0x1

    or-int v0, v0, v18

    aput v0, p1, v19

    .line 1169
    return-void

    .line 1023
    .end local v2    # "zz_9":J
    .end local v4    # "zz_10":J
    .end local v6    # "zz_11":J
    .end local v10    # "zz_13":J
    .end local v12    # "zz_14":J
    .end local v15    # "x_0":J
    .end local v18    # "c":I
    .end local v20    # "w":I
    .end local v21    # "x_1":J
    .end local v23    # "zz_8":J
    .end local v25    # "x_2":J
    .end local v27    # "zz_2":J
    .end local v29    # "zz_3":J
    .end local v32    # "x_4":J
    .end local v35    # "zz_4":J
    .end local v37    # "x_3":J
    .end local v39    # "x_5":J
    .end local v42    # "zz_1":J
    .end local v44    # "zz_5":J
    .end local v46    # "x_6":J
    .end local v51    # "zz_6":J
    .end local v53    # "x_7":J
    .end local v56    # "zz_7":J
    .restart local v1    # "x_0":J
    .restart local v5    # "c":I
    .local v7, "j":I
    .local v8, "i":I
    :cond_2b7
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

    .line 1367
    const-wide/16 v0, 0x0

    .line 1368
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

    .line 1369
    add-int/lit8 v2, p5, 0x0

    long-to-int v3, v0

    aput v3, p4, v2

    .line 1370
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1371
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

    .line 1372
    add-int/lit8 v3, p5, 0x1

    long-to-int v6, v0

    aput v6, p4, v3

    .line 1373
    shr-long/2addr v0, v2

    .line 1374
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

    .line 1375
    add-int/lit8 v3, p5, 0x2

    long-to-int v6, v0

    aput v6, p4, v3

    .line 1376
    shr-long/2addr v0, v2

    .line 1377
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

    .line 1378
    add-int/lit8 v3, p5, 0x3

    long-to-int v6, v0

    aput v6, p4, v3

    .line 1379
    shr-long/2addr v0, v2

    .line 1380
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

    .line 1381
    add-int/lit8 v3, p5, 0x4

    long-to-int v6, v0

    aput v6, p4, v3

    .line 1382
    shr-long/2addr v0, v2

    .line 1383
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

    .line 1384
    add-int/lit8 v3, p5, 0x5

    long-to-int v6, v0

    aput v6, p4, v3

    .line 1385
    shr-long/2addr v0, v2

    .line 1386
    add-int/lit8 v3, p1, 0x6

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x6

    aget v3, p2, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1387
    add-int/lit8 v3, p5, 0x6

    long-to-int v6, v0

    aput v6, p4, v3

    .line 1388
    shr-long/2addr v0, v2

    .line 1389
    add-int/lit8 v3, p1, 0x7

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x7

    aget v3, p2, v3

    int-to-long v8, v3

    and-long v3, v8, v4

    sub-long/2addr v6, v3

    add-long/2addr v0, v6

    .line 1390
    add-int/lit8 v3, p5, 0x7

    long-to-int v4, v0

    aput v4, p4, v3

    .line 1391
    shr-long/2addr v0, v2

    .line 1392
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist sub([I[I[I)I
    .registers 14
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 1337
    const-wide/16 v0, 0x0

    .line 1338
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

    .line 1339
    long-to-int v3, v0

    aput v3, p2, v2

    .line 1340
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1341
    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1342
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1343
    shr-long/2addr v0, v2

    .line 1344
    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1345
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1346
    shr-long/2addr v0, v2

    .line 1347
    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1348
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1349
    shr-long/2addr v0, v2

    .line 1350
    const/4 v3, 0x4

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1351
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1352
    shr-long/2addr v0, v2

    .line 1353
    const/4 v3, 0x5

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1354
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1355
    shr-long/2addr v0, v2

    .line 1356
    const/4 v3, 0x6

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1357
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1358
    shr-long/2addr v0, v2

    .line 1359
    const/4 v3, 0x7

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    sub-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 1360
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1361
    shr-long/2addr v0, v2

    .line 1362
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subBothFrom([I[I[I)I
    .registers 14
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 1397
    const-wide/16 v0, 0x0

    .line 1398
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

    .line 1399
    long-to-int v3, v0

    aput v3, p2, v2

    .line 1400
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1401
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

    .line 1402
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1403
    shr-long/2addr v0, v2

    .line 1404
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

    .line 1405
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1406
    shr-long/2addr v0, v2

    .line 1407
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

    .line 1408
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1409
    shr-long/2addr v0, v2

    .line 1410
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

    .line 1411
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1412
    shr-long/2addr v0, v2

    .line 1413
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

    .line 1414
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1415
    shr-long/2addr v0, v2

    .line 1416
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

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1417
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1418
    shr-long/2addr v0, v2

    .line 1419
    const/4 v3, 0x7

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

    .line 1420
    long-to-int v4, v0

    aput v4, p2, v3

    .line 1421
    shr-long/2addr v0, v2

    .line 1422
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subFrom([II[II)I
    .registers 14
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .line 1487
    const-wide/16 v0, 0x0

    .line 1488
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

    .line 1489
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1490
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1491
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

    .line 1492
    add-int/lit8 v3, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1493
    shr-long/2addr v0, v2

    .line 1494
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

    .line 1495
    add-int/lit8 v3, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1496
    shr-long/2addr v0, v2

    .line 1497
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

    .line 1498
    add-int/lit8 v3, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1499
    shr-long/2addr v0, v2

    .line 1500
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

    .line 1501
    add-int/lit8 v3, p3, 0x4

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1502
    shr-long/2addr v0, v2

    .line 1503
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

    .line 1504
    add-int/lit8 v3, p3, 0x5

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1505
    shr-long/2addr v0, v2

    .line 1506
    add-int/lit8 v3, p3, 0x6

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x6

    aget v3, p0, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1507
    add-int/lit8 v3, p3, 0x6

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1508
    shr-long/2addr v0, v2

    .line 1509
    add-int/lit8 v3, p3, 0x7

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x7

    aget v3, p0, v3

    int-to-long v8, v3

    and-long v3, v8, v4

    sub-long/2addr v6, v3

    add-long/2addr v0, v6

    .line 1510
    add-int/lit8 v3, p3, 0x7

    long-to-int v4, v0

    aput v4, p2, v3

    .line 1511
    shr-long/2addr v0, v2

    .line 1512
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subFrom([II[III)I
    .registers 14
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .param p4, "cIn"    # I

    .line 1517
    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 1518
    .local v0, "c":J
    add-int/lit8 v4, p3, 0x0

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p1, 0x0

    aget v6, p0, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 1519
    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    .line 1520
    const/16 v4, 0x20

    shr-long/2addr v0, v4

    .line 1521
    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p1, 0x1

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 1522
    add-int/lit8 v5, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v5

    .line 1523
    shr-long/2addr v0, v4

    .line 1524
    add-int/lit8 v5, p3, 0x2

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p1, 0x2

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 1525
    add-int/lit8 v5, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v5

    .line 1526
    shr-long/2addr v0, v4

    .line 1527
    add-int/lit8 v5, p3, 0x3

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p1, 0x3

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 1528
    add-int/lit8 v5, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v5

    .line 1529
    shr-long/2addr v0, v4

    .line 1530
    add-int/lit8 v5, p3, 0x4

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p1, 0x4

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 1531
    add-int/lit8 v5, p3, 0x4

    long-to-int v6, v0

    aput v6, p2, v5

    .line 1532
    shr-long/2addr v0, v4

    .line 1533
    add-int/lit8 v5, p3, 0x5

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p1, 0x5

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 1534
    add-int/lit8 v5, p3, 0x5

    long-to-int v6, v0

    aput v6, p2, v5

    .line 1535
    shr-long/2addr v0, v4

    .line 1536
    add-int/lit8 v5, p3, 0x6

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p1, 0x6

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 1537
    add-int/lit8 v5, p3, 0x6

    long-to-int v6, v0

    aput v6, p2, v5

    .line 1538
    shr-long/2addr v0, v4

    .line 1539
    add-int/lit8 v5, p3, 0x7

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p1, 0x7

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v2, v7

    sub-long/2addr v5, v2

    add-long/2addr v0, v5

    .line 1540
    add-int/lit8 v2, p3, 0x7

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1541
    shr-long/2addr v0, v4

    .line 1542
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subFrom([I[I)I
    .registers 13
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 1427
    const-wide/16 v0, 0x0

    .line 1428
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

    .line 1429
    long-to-int v3, v0

    aput v3, p1, v2

    .line 1430
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1431
    const/4 v3, 0x1

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1432
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1433
    shr-long/2addr v0, v2

    .line 1434
    const/4 v3, 0x2

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1435
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1436
    shr-long/2addr v0, v2

    .line 1437
    const/4 v3, 0x3

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1438
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1439
    shr-long/2addr v0, v2

    .line 1440
    const/4 v3, 0x4

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1441
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1442
    shr-long/2addr v0, v2

    .line 1443
    const/4 v3, 0x5

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1444
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1445
    shr-long/2addr v0, v2

    .line 1446
    const/4 v3, 0x6

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1447
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1448
    shr-long/2addr v0, v2

    .line 1449
    const/4 v3, 0x7

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    sub-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 1450
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1451
    shr-long/2addr v0, v2

    .line 1452
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subFrom([I[II)I
    .registers 13
    .param p0, "x"    # [I
    .param p1, "z"    # [I
    .param p2, "cIn"    # I

    .line 1457
    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 1458
    .local v0, "c":J
    const/4 v4, 0x0

    aget v5, p1, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    aget v7, p0, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 1459
    long-to-int v5, v0

    aput v5, p1, v4

    .line 1460
    const/16 v4, 0x20

    shr-long/2addr v0, v4

    .line 1461
    const/4 v5, 0x1

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v2

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1462
    long-to-int v6, v0

    aput v6, p1, v5

    .line 1463
    shr-long/2addr v0, v4

    .line 1464
    const/4 v5, 0x2

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v2

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1465
    long-to-int v6, v0

    aput v6, p1, v5

    .line 1466
    shr-long/2addr v0, v4

    .line 1467
    const/4 v5, 0x3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v2

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1468
    long-to-int v6, v0

    aput v6, p1, v5

    .line 1469
    shr-long/2addr v0, v4

    .line 1470
    const/4 v5, 0x4

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v2

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1471
    long-to-int v6, v0

    aput v6, p1, v5

    .line 1472
    shr-long/2addr v0, v4

    .line 1473
    const/4 v5, 0x5

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v2

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1474
    long-to-int v6, v0

    aput v6, p1, v5

    .line 1475
    shr-long/2addr v0, v4

    .line 1476
    const/4 v5, 0x6

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v2

    sub-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 1477
    long-to-int v6, v0

    aput v6, p1, v5

    .line 1478
    shr-long/2addr v0, v4

    .line 1479
    const/4 v5, 0x7

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v2, v8

    sub-long/2addr v6, v2

    add-long/2addr v0, v6

    .line 1480
    long-to-int v2, v0

    aput v2, p1, v5

    .line 1481
    shr-long/2addr v0, v4

    .line 1482
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist toBigInteger([I)Ljava/math/BigInteger;
    .registers 5
    .param p0, "x"    # [I

    .line 1547
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 1548
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    const/16 v2, 0x8

    if-ge v1, v2, :cond_17

    .line 1550
    aget v2, p0, v1

    .line 1551
    .local v2, "x_i":I
    if-eqz v2, :cond_14

    .line 1553
    rsub-int/lit8 v3, v1, 0x7

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v2, v0, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 1548
    .end local v2    # "x_i":I
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1556
    .end local v1    # "i":I
    :cond_17
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public static blacklist toBigInteger64([J)Ljava/math/BigInteger;
    .registers 7
    .param p0, "x"    # [J

    .line 1561
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 1562
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1a

    .line 1564
    aget-wide v2, p0, v1

    .line 1565
    .local v2, "x_i":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_17

    .line 1567
    rsub-int/lit8 v4, v1, 0x3

    shl-int/lit8 v4, v4, 0x3

    invoke-static {v2, v3, v0, v4}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 1562
    .end local v2    # "x_i":J
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1570
    .end local v1    # "i":I
    :cond_1a
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public static blacklist zero([I)V
    .registers 3
    .param p0, "z"    # [I

    .line 1575
    const/4 v0, 0x0

    aput v0, p0, v0

    .line 1576
    const/4 v1, 0x1

    aput v0, p0, v1

    .line 1577
    const/4 v1, 0x2

    aput v0, p0, v1

    .line 1578
    const/4 v1, 0x3

    aput v0, p0, v1

    .line 1579
    const/4 v1, 0x4

    aput v0, p0, v1

    .line 1580
    const/4 v1, 0x5

    aput v0, p0, v1

    .line 1581
    const/4 v1, 0x6

    aput v0, p0, v1

    .line 1582
    const/4 v1, 0x7

    aput v0, p0, v1

    .line 1583
    return-void
.end method
