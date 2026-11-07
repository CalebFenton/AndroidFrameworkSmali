.class public abstract Lcom/android/internal/org/bouncycastle/math/raw/Nat192;
.super Ljava/lang/Object;
.source "Nat192.java"


# static fields
.field private static final blacklist M:J = 0xffffffffL


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    and-long v4, v9, v5

    add-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 34
    long-to-int v4, v0

    aput v4, p2, v3

    .line 35
    ushr-long/2addr v0, v2

    .line 36
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addBothTo([I[I[I)I
    .registers 14
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 41
    const-wide/16 v0, 0x0

    .line 42
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

    .line 43
    long-to-int v3, v0

    aput v3, p2, v2

    .line 44
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 45
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

    .line 46
    long-to-int v4, v0

    aput v4, p2, v3

    .line 47
    ushr-long/2addr v0, v2

    .line 48
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

    .line 49
    long-to-int v4, v0

    aput v4, p2, v3

    .line 50
    ushr-long/2addr v0, v2

    .line 51
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

    .line 52
    long-to-int v4, v0

    aput v4, p2, v3

    .line 53
    ushr-long/2addr v0, v2

    .line 54
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

    .line 55
    long-to-int v4, v0

    aput v4, p2, v3

    .line 56
    ushr-long/2addr v0, v2

    .line 57
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

    and-long v4, v9, v5

    add-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 58
    long-to-int v4, v0

    aput v4, p2, v3

    .line 59
    ushr-long/2addr v0, v2

    .line 60
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

    .line 89
    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 90
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

    .line 91
    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    .line 92
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 93
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

    .line 94
    add-int/lit8 v5, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v5

    .line 95
    ushr-long/2addr v0, v4

    .line 96
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

    .line 97
    add-int/lit8 v5, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v5

    .line 98
    ushr-long/2addr v0, v4

    .line 99
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

    .line 100
    add-int/lit8 v5, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v5

    .line 101
    ushr-long/2addr v0, v4

    .line 102
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

    .line 103
    add-int/lit8 v5, p3, 0x4

    long-to-int v6, v0

    aput v6, p2, v5

    .line 104
    ushr-long/2addr v0, v4

    .line 105
    add-int/lit8 v5, p1, 0x5

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x5

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v2, v7

    add-long/2addr v5, v2

    add-long/2addr v0, v5

    .line 106
    add-int/lit8 v2, p3, 0x5

    long-to-int v3, v0

    aput v3, p2, v2

    .line 107
    ushr-long/2addr v0, v4

    .line 108
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addTo([I[I)I
    .registers 13
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 65
    const-wide/16 v0, 0x0

    .line 66
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

    .line 67
    long-to-int v3, v0

    aput v3, p1, v2

    .line 68
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 69
    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 70
    long-to-int v4, v0

    aput v4, p1, v3

    .line 71
    ushr-long/2addr v0, v2

    .line 72
    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 73
    long-to-int v4, v0

    aput v4, p1, v3

    .line 74
    ushr-long/2addr v0, v2

    .line 75
    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 76
    long-to-int v4, v0

    aput v4, p1, v3

    .line 77
    ushr-long/2addr v0, v2

    .line 78
    const/4 v3, 0x4

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 79
    long-to-int v4, v0

    aput v4, p1, v3

    .line 80
    ushr-long/2addr v0, v2

    .line 81
    const/4 v3, 0x5

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    add-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 82
    long-to-int v4, v0

    aput v4, p1, v3

    .line 83
    ushr-long/2addr v0, v2

    .line 84
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addToEachOther([II[II)I
    .registers 14
    .param p0, "u"    # [I
    .param p1, "uOff"    # I
    .param p2, "v"    # [I
    .param p3, "vOff"    # I

    .line 113
    const-wide/16 v0, 0x0

    .line 114
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

    .line 115
    add-int/lit8 v2, p1, 0x0

    long-to-int v3, v0

    aput v3, p0, v2

    .line 116
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 117
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 118
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

    .line 119
    add-int/lit8 v3, p1, 0x1

    long-to-int v6, v0

    aput v6, p0, v3

    .line 120
    add-int/lit8 v3, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v3

    .line 121
    ushr-long/2addr v0, v2

    .line 122
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

    .line 123
    add-int/lit8 v3, p1, 0x2

    long-to-int v6, v0

    aput v6, p0, v3

    .line 124
    add-int/lit8 v3, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v3

    .line 125
    ushr-long/2addr v0, v2

    .line 126
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

    .line 127
    add-int/lit8 v3, p1, 0x3

    long-to-int v6, v0

    aput v6, p0, v3

    .line 128
    add-int/lit8 v3, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v3

    .line 129
    ushr-long/2addr v0, v2

    .line 130
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

    .line 131
    add-int/lit8 v3, p1, 0x4

    long-to-int v6, v0

    aput v6, p0, v3

    .line 132
    add-int/lit8 v3, p3, 0x4

    long-to-int v6, v0

    aput v6, p2, v3

    .line 133
    ushr-long/2addr v0, v2

    .line 134
    add-int/lit8 v3, p1, 0x5

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x5

    aget v3, p2, v3

    int-to-long v8, v3

    and-long v3, v8, v4

    add-long/2addr v6, v3

    add-long/2addr v0, v6

    .line 135
    add-int/lit8 v3, p1, 0x5

    long-to-int v4, v0

    aput v4, p0, v3

    .line 136
    add-int/lit8 v3, p3, 0x5

    long-to-int v4, v0

    aput v4, p2, v3

    .line 137
    ushr-long/2addr v0, v2

    .line 138
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist copy([II[II)V
    .registers 6
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .line 153
    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v1, p1, 0x0

    aget v1, p0, v1

    aput v1, p2, v0

    .line 154
    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    aput v1, p2, v0

    .line 155
    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, p1, 0x2

    aget v1, p0, v1

    aput v1, p2, v0

    .line 156
    add-int/lit8 v0, p3, 0x3

    add-int/lit8 v1, p1, 0x3

    aget v1, p0, v1

    aput v1, p2, v0

    .line 157
    add-int/lit8 v0, p3, 0x4

    add-int/lit8 v1, p1, 0x4

    aget v1, p0, v1

    aput v1, p2, v0

    .line 158
    add-int/lit8 v0, p3, 0x5

    add-int/lit8 v1, p1, 0x5

    aget v1, p0, v1

    aput v1, p2, v0

    .line 159
    return-void
.end method

.method public static blacklist copy([I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 143
    const/4 v0, 0x0

    aget v1, p0, v0

    aput v1, p1, v0

    .line 144
    const/4 v0, 0x1

    aget v1, p0, v0

    aput v1, p1, v0

    .line 145
    const/4 v0, 0x2

    aget v1, p0, v0

    aput v1, p1, v0

    .line 146
    const/4 v0, 0x3

    aget v1, p0, v0

    aput v1, p1, v0

    .line 147
    const/4 v0, 0x4

    aget v1, p0, v0

    aput v1, p1, v0

    .line 148
    const/4 v0, 0x5

    aget v1, p0, v0

    aput v1, p1, v0

    .line 149
    return-void
.end method

.method public static blacklist copy64([JI[JI)V
    .registers 7
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "z"    # [J
    .param p3, "zOff"    # I

    .line 170
    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v1, p1, 0x0

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    .line 171
    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    .line 172
    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, p1, 0x2

    aget-wide v1, p0, v1

    aput-wide v1, p2, v0

    .line 173
    return-void
.end method

.method public static blacklist copy64([J[J)V
    .registers 5
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    .line 163
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 164
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 165
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 166
    return-void
.end method

.method public static blacklist create()[I
    .registers 1

    .line 177
    const/4 v0, 0x6

    new-array v0, v0, [I

    return-object v0
.end method

.method public static blacklist create64()[J
    .registers 1

    .line 182
    const/4 v0, 0x3

    new-array v0, v0, [J

    return-object v0
.end method

.method public static blacklist createExt()[I
    .registers 1

    .line 187
    const/16 v0, 0xc

    new-array v0, v0, [I

    return-object v0
.end method

.method public static blacklist createExt64()[J
    .registers 1

    .line 192
    const/4 v0, 0x6

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

    .line 197
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->gte([II[II)Z

    move-result v0

    .line 198
    .local v0, "pos":Z
    if-eqz v0, :cond_a

    .line 200
    invoke-static/range {p0 .. p5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->sub([II[II[II)I

    goto :goto_19

    .line 204
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
    invoke-static/range {p0 .. p5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->sub([II[II[II)I

    move-object v1, p2

    move-object p2, p0

    move-object p0, v1

    move v1, p3

    move p3, p1

    move p1, v1

    .line 206
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

    .line 211
    const/4 v0, 0x5

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_e

    .line 213
    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_b

    .line 215
    const/4 v1, 0x0

    return v1

    .line 211
    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 218
    .end local v0    # "i":I
    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist eq64([J[J)Z
    .registers 7
    .param p0, "x"    # [J
    .param p1, "y"    # [J

    .line 223
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_10

    .line 225
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_d

    .line 227
    const/4 v1, 0x0

    return v1

    .line 223
    :cond_d
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 230
    .end local v0    # "i":I
    :cond_10
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 4
    .param p0, "x"    # Ljava/math/BigInteger;

    .line 235
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_26

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xc0

    if-gt v0, v1, :cond_26

    .line 240
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v0

    .line 243
    .local v0, "z":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    const/4 v2, 0x6

    if-ge v1, v2, :cond_25

    .line 245
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 246
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 248
    .end local v1    # "i":I
    :cond_25
    return-object v0

    .line 237
    .end local v0    # "z":[I
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist fromBigInteger64(Ljava/math/BigInteger;)[J
    .registers 5
    .param p0, "x"    # Ljava/math/BigInteger;

    .line 253
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_26

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0xc0

    if-gt v0, v1, :cond_26

    .line 258
    invoke-static {}, Lcom/android/internal/org/bouncycastle/math/raw/Nat192;->create64()[J

    move-result-object v0

    .line 261
    .local v0, "z":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    const/4 v2, 0x3

    if-ge v1, v2, :cond_25

    .line 263
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 264
    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 266
    .end local v1    # "i":I
    :cond_25
    return-object v0

    .line 255
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

    .line 271
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 273
    aget v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    return v0

    .line 275
    :cond_8
    shr-int/lit8 v1, p1, 0x5

    .line 276
    .local v1, "w":I
    if-ltz v1, :cond_18

    const/4 v2, 0x6

    if-lt v1, v2, :cond_10

    goto :goto_18

    .line 280
    :cond_10
    and-int/lit8 v0, p1, 0x1f

    .line 281
    .local v0, "b":I
    aget v2, p0, v1

    ushr-int/2addr v2, v0

    and-int/lit8 v2, v2, 0x1

    return v2

    .line 278
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

    .line 300
    const/4 v0, 0x5

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x1

    if-ltz v0, :cond_1a

    .line 302
    add-int v2, p1, v0

    aget v2, p0, v2

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 303
    .local v2, "x_i":I
    add-int v4, p3, v0

    aget v4, p2, v4

    xor-int/2addr v3, v4

    .line 304
    .local v3, "y_i":I
    if-ge v2, v3, :cond_14

    .line 305
    const/4 v1, 0x0

    return v1

    .line 306
    :cond_14
    if-le v2, v3, :cond_17

    .line 307
    return v1

    .line 300
    .end local v2    # "x_i":I
    .end local v3    # "y_i":I
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 309
    .end local v0    # "i":I
    :cond_1a
    return v1
.end method

.method public static blacklist gte([I[I)Z
    .registers 7
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    .line 286
    const/4 v0, 0x5

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x1

    if-ltz v0, :cond_16

    .line 288
    aget v2, p0, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 289
    .local v2, "x_i":I
    aget v4, p1, v0

    xor-int/2addr v3, v4

    .line 290
    .local v3, "y_i":I
    if-ge v2, v3, :cond_10

    .line 291
    const/4 v1, 0x0

    return v1

    .line 292
    :cond_10
    if-le v2, v3, :cond_13

    .line 293
    return v1

    .line 286
    .end local v2    # "x_i":I
    .end local v3    # "y_i":I
    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 295
    .end local v0    # "i":I
    :cond_16
    return v1
.end method

.method public static blacklist isOne([I)Z
    .registers 5
    .param p0, "x"    # [I

    .line 314
    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    .line 316
    return v0

    .line 318
    :cond_7
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_8
    const/4 v3, 0x6

    if-ge v1, v3, :cond_13

    .line 320
    aget v3, p0, v1

    if-eqz v3, :cond_10

    .line 322
    return v0

    .line 318
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 325
    .end local v1    # "i":I
    :cond_13
    return v2
.end method

.method public static blacklist isOne64([J)Z
    .registers 7
    .param p0, "x"    # [J

    .line 330
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_a

    .line 332
    return v0

    .line 334
    :cond_a
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_b
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1a

    .line 336
    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_17

    .line 338
    return v0

    .line 334
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 341
    .end local v1    # "i":I
    :cond_1a
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isZero([I)Z
    .registers 3
    .param p0, "x"    # [I

    .line 346
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x6

    if-ge v0, v1, :cond_d

    .line 348
    aget v1, p0, v0

    if-eqz v1, :cond_a

    .line 350
    const/4 v1, 0x0

    return v1

    .line 346
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 353
    .end local v0    # "i":I
    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isZero64([J)Z
    .registers 6
    .param p0, "x"    # [J

    .line 358
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_11

    .line 360
    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_e

    .line 362
    const/4 v1, 0x0

    return v1

    .line 358
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 365
    .end local v0    # "i":I
    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist mul([II[II[II)V
    .registers 32
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "zz"    # [I
    .param p5, "zzOff"    # I

    .line 427
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 428
    .local v0, "y_0":J
    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 429
    .local v4, "y_1":J
    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 430
    .local v6, "y_2":J
    add-int/lit8 v8, p3, 0x3

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 431
    .local v8, "y_3":J
    add-int/lit8 v10, p3, 0x4

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 432
    .local v10, "y_4":J
    add-int/lit8 v12, p3, 0x5

    aget v12, p2, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    .line 435
    .local v12, "y_5":J
    const-wide/16 v14, 0x0

    .local v14, "c":J
    add-int/lit8 v16, p1, 0x0

    move-wide/from16 v17, v2

    aget v2, p0, v16

    int-to-long v2, v2

    and-long v2, v2, v17

    .line 436
    .local v2, "x_0":J
    mul-long v19, v2, v0

    add-long v14, v14, v19

    .line 437
    add-int/lit8 v16, p5, 0x0

    move-wide/from16 v19, v0

    .end local v0    # "y_0":J
    .local v19, "y_0":J
    long-to-int v0, v14

    aput v0, p4, v16

    .line 438
    const/16 v0, 0x20

    ushr-long/2addr v14, v0

    .line 439
    mul-long v21, v2, v4

    add-long v14, v14, v21

    .line 440
    add-int/lit8 v1, p5, 0x1

    move/from16 v16, v0

    long-to-int v0, v14

    aput v0, p4, v1

    .line 441
    ushr-long v0, v14, v16

    .line 442
    .end local v14    # "c":J
    .local v0, "c":J
    mul-long v14, v2, v6

    add-long/2addr v0, v14

    .line 443
    add-int/lit8 v14, p5, 0x2

    long-to-int v15, v0

    aput v15, p4, v14

    .line 444
    ushr-long v0, v0, v16

    .line 445
    mul-long v14, v2, v8

    add-long/2addr v0, v14

    .line 446
    add-int/lit8 v14, p5, 0x3

    long-to-int v15, v0

    aput v15, p4, v14

    .line 447
    ushr-long v0, v0, v16

    .line 448
    mul-long v14, v2, v10

    add-long/2addr v0, v14

    .line 449
    add-int/lit8 v14, p5, 0x4

    long-to-int v15, v0

    aput v15, p4, v14

    .line 450
    ushr-long v0, v0, v16

    .line 451
    mul-long v14, v2, v12

    add-long/2addr v0, v14

    .line 452
    add-int/lit8 v14, p5, 0x5

    long-to-int v15, v0

    aput v15, p4, v14

    .line 453
    ushr-long v0, v0, v16

    .line 454
    add-int/lit8 v14, p5, 0x6

    long-to-int v15, v0

    aput v15, p4, v14

    .line 457
    .end local v0    # "c":J
    .end local v2    # "x_0":J
    const/4 v0, 0x1

    move v1, v0

    move/from16 v0, p5

    .end local p5    # "zzOff":I
    .local v0, "zzOff":I
    .local v1, "i":I
    :goto_80
    const/4 v2, 0x6

    if-ge v1, v2, :cond_11a

    .line 459
    add-int/lit8 v0, v0, 0x1

    .line 460
    const-wide/16 v2, 0x0

    .local v2, "c":J
    add-int v14, p1, v1

    aget v14, p0, v14

    int-to-long v14, v14

    and-long v14, v14, v17

    .line 461
    .local v14, "x_i":J
    mul-long v21, v14, v19

    add-int/lit8 v23, v0, 0x0

    move/from16 p5, v0

    .end local v0    # "zzOff":I
    .restart local p5    # "zzOff":I
    aget v0, p4, v23

    move/from16 v23, v1

    .end local v1    # "i":I
    .local v23, "i":I
    int-to-long v0, v0

    and-long v0, v0, v17

    add-long v21, v21, v0

    add-long v2, v2, v21

    .line 462
    add-int/lit8 v0, p5, 0x0

    long-to-int v1, v2

    aput v1, p4, v0

    .line 463
    ushr-long v0, v2, v16

    .line 464
    .end local v2    # "c":J
    .local v0, "c":J
    mul-long v2, v14, v4

    add-int/lit8 v21, p5, 0x1

    move-wide/from16 v24, v0

    .end local v0    # "c":J
    .local v24, "c":J
    aget v0, p4, v21

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v24, v2

    .line 465
    .end local v24    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x1

    long-to-int v3, v0

    aput v3, p4, v2

    .line 466
    ushr-long v0, v0, v16

    .line 467
    mul-long v2, v14, v6

    add-int/lit8 v21, p5, 0x2

    move-wide/from16 v24, v0

    .end local v0    # "c":J
    .restart local v24    # "c":J
    aget v0, p4, v21

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v24, v2

    .line 468
    .end local v24    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x2

    long-to-int v3, v0

    aput v3, p4, v2

    .line 469
    ushr-long v0, v0, v16

    .line 470
    mul-long v2, v14, v8

    add-int/lit8 v21, p5, 0x3

    move-wide/from16 v24, v0

    .end local v0    # "c":J
    .restart local v24    # "c":J
    aget v0, p4, v21

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v24, v2

    .line 471
    .end local v24    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x3

    long-to-int v3, v0

    aput v3, p4, v2

    .line 472
    ushr-long v0, v0, v16

    .line 473
    mul-long v2, v14, v10

    add-int/lit8 v21, p5, 0x4

    move-wide/from16 v24, v0

    .end local v0    # "c":J
    .restart local v24    # "c":J
    aget v0, p4, v21

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v24, v2

    .line 474
    .end local v24    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x4

    long-to-int v3, v0

    aput v3, p4, v2

    .line 475
    ushr-long v0, v0, v16

    .line 476
    mul-long v2, v14, v12

    add-int/lit8 v21, p5, 0x5

    move-wide/from16 v24, v0

    .end local v0    # "c":J
    .restart local v24    # "c":J
    aget v0, p4, v21

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v2, v0

    add-long v0, v24, v2

    .line 477
    .end local v24    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, p5, 0x5

    long-to-int v3, v0

    aput v3, p4, v2

    .line 478
    ushr-long v0, v0, v16

    .line 479
    add-int/lit8 v2, p5, 0x6

    long-to-int v3, v0

    aput v3, p4, v2

    .line 457
    .end local v0    # "c":J
    .end local v14    # "x_i":J
    add-int/lit8 v1, v23, 0x1

    move/from16 v0, p5

    .end local v23    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_80

    .line 481
    .end local v1    # "i":I
    .end local p5    # "zzOff":I
    .local v0, "zzOff":I
    :cond_11a
    return-void
.end method

.method public static blacklist mul([I[I[I)V
    .registers 32
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .line 370
    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 371
    .local v1, "y_0":J
    const/4 v5, 0x1

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    .line 372
    .local v6, "y_1":J
    const/4 v8, 0x2

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    .line 373
    .local v9, "y_2":J
    const/4 v11, 0x3

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    .line 374
    .local v12, "y_3":J
    const/4 v14, 0x4

    aget v15, p1, v14

    move/from16 v16, v0

    move-wide/from16 v17, v1

    .end local v1    # "y_0":J
    .local v17, "y_0":J
    int-to-long v0, v15

    and-long/2addr v0, v3

    .line 375
    .local v0, "y_4":J
    const/4 v2, 0x5

    aget v15, p1, v2

    move-wide/from16 v19, v3

    move v4, v2

    int-to-long v2, v15

    and-long v2, v2, v19

    .line 378
    .local v2, "y_5":J
    const-wide/16 v21, 0x0

    .local v21, "c":J
    aget v15, p0, v16

    move/from16 v24, v4

    move/from16 v23, v5

    int-to-long v4, v15

    and-long v4, v4, v19

    .line 379
    .local v4, "x_0":J
    mul-long v25, v4, v17

    move v15, v8

    move-wide/from16 v27, v9

    .end local v9    # "y_2":J
    .local v27, "y_2":J
    add-long v8, v21, v25

    .line 380
    .end local v21    # "c":J
    .local v8, "c":J
    long-to-int v10, v8

    aput v10, p2, v16

    .line 381
    const/16 v10, 0x20

    ushr-long/2addr v8, v10

    .line 382
    mul-long v21, v4, v6

    add-long v8, v8, v21

    .line 383
    move/from16 v16, v10

    long-to-int v10, v8

    aput v10, p2, v23

    .line 384
    ushr-long v8, v8, v16

    .line 385
    mul-long v21, v4, v27

    add-long v8, v8, v21

    .line 386
    long-to-int v10, v8

    aput v10, p2, v15

    .line 387
    ushr-long v8, v8, v16

    .line 388
    mul-long v21, v4, v12

    add-long v8, v8, v21

    .line 389
    long-to-int v10, v8

    aput v10, p2, v11

    .line 390
    ushr-long v8, v8, v16

    .line 391
    mul-long v10, v4, v0

    add-long/2addr v8, v10

    .line 392
    long-to-int v10, v8

    aput v10, p2, v14

    .line 393
    ushr-long v8, v8, v16

    .line 394
    mul-long v10, v4, v2

    add-long/2addr v8, v10

    .line 395
    long-to-int v10, v8

    aput v10, p2, v24

    .line 396
    ushr-long v8, v8, v16

    .line 397
    long-to-int v10, v8

    const/4 v11, 0x6

    aput v10, p2, v11

    .line 400
    .end local v4    # "x_0":J
    .end local v8    # "c":J
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_75
    if-ge v4, v11, :cond_ff

    .line 402
    const-wide/16 v8, 0x0

    .restart local v8    # "c":J
    aget v5, p0, v4

    int-to-long v14, v5

    and-long v14, v14, v19

    .line 403
    .local v14, "x_i":J
    mul-long v21, v14, v17

    add-int/lit8 v5, v4, 0x0

    aget v5, p2, v5

    move-wide/from16 v23, v12

    .end local v12    # "y_3":J
    .local v23, "y_3":J
    int-to-long v11, v5

    and-long v11, v11, v19

    add-long v21, v21, v11

    add-long v8, v8, v21

    .line 404
    add-int/lit8 v5, v4, 0x0

    long-to-int v11, v8

    aput v11, p2, v5

    .line 405
    ushr-long v8, v8, v16

    .line 406
    mul-long v11, v14, v6

    add-int/lit8 v5, v4, 0x1

    aget v5, p2, v5

    move-wide/from16 v21, v11

    int-to-long v10, v5

    and-long v10, v10, v19

    add-long v11, v21, v10

    add-long/2addr v8, v11

    .line 407
    add-int/lit8 v5, v4, 0x1

    long-to-int v10, v8

    aput v10, p2, v5

    .line 408
    ushr-long v8, v8, v16

    .line 409
    mul-long v10, v14, v27

    add-int/lit8 v5, v4, 0x2

    aget v5, p2, v5

    move-wide/from16 v21, v14

    .end local v14    # "x_i":J
    .local v21, "x_i":J
    int-to-long v13, v5

    and-long v13, v13, v19

    add-long/2addr v10, v13

    add-long/2addr v8, v10

    .line 410
    add-int/lit8 v5, v4, 0x2

    long-to-int v10, v8

    aput v10, p2, v5

    .line 411
    ushr-long v8, v8, v16

    .line 412
    mul-long v14, v21, v23

    add-int/lit8 v5, v4, 0x3

    aget v5, p2, v5

    int-to-long v10, v5

    and-long v10, v10, v19

    add-long/2addr v14, v10

    add-long/2addr v8, v14

    .line 413
    add-int/lit8 v5, v4, 0x3

    long-to-int v10, v8

    aput v10, p2, v5

    .line 414
    ushr-long v8, v8, v16

    .line 415
    mul-long v14, v21, v0

    add-int/lit8 v5, v4, 0x4

    aget v5, p2, v5

    int-to-long v10, v5

    and-long v10, v10, v19

    add-long/2addr v14, v10

    add-long/2addr v8, v14

    .line 416
    add-int/lit8 v5, v4, 0x4

    long-to-int v10, v8

    aput v10, p2, v5

    .line 417
    ushr-long v8, v8, v16

    .line 418
    mul-long v14, v21, v2

    add-int/lit8 v5, v4, 0x5

    aget v5, p2, v5

    int-to-long v10, v5

    and-long v10, v10, v19

    add-long/2addr v14, v10

    add-long/2addr v8, v14

    .line 419
    add-int/lit8 v5, v4, 0x5

    long-to-int v10, v8

    aput v10, p2, v5

    .line 420
    ushr-long v8, v8, v16

    .line 421
    add-int/lit8 v5, v4, 0x6

    long-to-int v10, v8

    aput v10, p2, v5

    .line 400
    .end local v8    # "c":J
    .end local v21    # "x_i":J
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v12, v23

    const/4 v11, 0x6

    goto/16 :goto_75

    .line 423
    .end local v4    # "i":I
    .end local v23    # "y_3":J
    .restart local v12    # "y_3":J
    :cond_ff
    return-void
.end method

.method public static blacklist mul33Add(I[II[II[II)J
    .registers 33
    .param p0, "w"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .line 566
    const-wide/16 v0, 0x0

    move/from16 v2, p0

    .local v0, "c":J
    int-to-long v3, v2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 567
    .local v3, "wVal":J
    add-int/lit8 v7, p2, 0x0

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    .line 568
    .local v7, "x0":J
    mul-long v9, v3, v7

    add-int/lit8 v11, p4, 0x0

    aget v11, p3, v11

    int-to-long v11, v11

    and-long/2addr v11, v5

    add-long/2addr v9, v11

    add-long/2addr v0, v9

    .line 569
    add-int/lit8 v9, p6, 0x0

    long-to-int v10, v0

    aput v10, p5, v9

    .line 570
    const/16 v9, 0x20

    ushr-long/2addr v0, v9

    .line 571
    add-int/lit8 v10, p2, 0x1

    aget v10, p1, v10

    int-to-long v10, v10

    and-long/2addr v10, v5

    .line 572
    .local v10, "x1":J
    mul-long v12, v3, v10

    add-long/2addr v12, v7

    add-int/lit8 v14, p4, 0x1

    aget v14, p3, v14

    int-to-long v14, v14

    and-long/2addr v14, v5

    add-long/2addr v12, v14

    add-long/2addr v0, v12

    .line 573
    add-int/lit8 v12, p6, 0x1

    long-to-int v13, v0

    aput v13, p5, v12

    .line 574
    ushr-long/2addr v0, v9

    .line 575
    add-int/lit8 v12, p2, 0x2

    aget v12, p1, v12

    int-to-long v12, v12

    and-long/2addr v12, v5

    .line 576
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

    .line 577
    add-int/lit8 v5, p6, 0x2

    long-to-int v6, v0

    aput v6, p5, v5

    .line 578
    ushr-long/2addr v0, v9

    .line 579
    add-int/lit8 v5, p2, 0x3

    aget v5, p1, v5

    int-to-long v5, v5

    and-long v5, v5, v17

    .line 580
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

    .line 581
    .end local v20    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v9, p6, 0x3

    long-to-int v14, v0

    aput v14, p5, v9

    .line 582
    ushr-long v0, v0, v19

    .line 583
    add-int/lit8 v9, p2, 0x4

    aget v9, p1, v9

    int-to-long v14, v9

    and-long v14, v14, v17

    .line 584
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

    .line 585
    .end local v22    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v9, p6, 0x4

    long-to-int v2, v0

    aput v2, p5, v9

    .line 586
    ushr-long v0, v0, v19

    .line 587
    add-int/lit8 v2, p2, 0x5

    aget v2, p1, v2

    move-wide/from16 v20, v0

    .end local v0    # "c":J
    .restart local v20    # "c":J
    int-to-long v0, v2

    and-long v0, v0, v17

    .line 588
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

    .line 589
    .end local v20    # "c":J
    .local v0, "c":J
    add-int/lit8 v2, p6, 0x5

    long-to-int v9, v0

    aput v9, p5, v2

    .line 590
    ushr-long v0, v0, v19

    .line 591
    add-long v0, v0, v24

    .line 592
    return-wide v0
.end method

.method public static blacklist mul33DWordAdd(IJ[II)I
    .registers 24
    .param p0, "x"    # I
    .param p1, "y"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 626
    move-object/from16 v0, p3

    move/from16 v1, p4

    const-wide/16 v2, 0x0

    move/from16 v4, p0

    .local v2, "c":J
    int-to-long v5, v4

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    .line 627
    .local v5, "xVal":J
    and-long v9, p1, v7

    .line 628
    .local v9, "y00":J
    mul-long v11, v5, v9

    add-int/lit8 v13, v1, 0x0

    aget v13, v0, v13

    int-to-long v13, v13

    and-long/2addr v13, v7

    add-long/2addr v11, v13

    add-long/2addr v2, v11

    .line 629
    add-int/lit8 v11, v1, 0x0

    long-to-int v12, v2

    aput v12, v0, v11

    .line 630
    const/16 v11, 0x20

    ushr-long/2addr v2, v11

    .line 631
    ushr-long v12, p1, v11

    .line 632
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

    .line 633
    add-int/lit8 v7, v1, 0x1

    long-to-int v8, v2

    aput v8, v0, v7

    .line 634
    ushr-long/2addr v2, v11

    .line 635
    add-int/lit8 v7, v1, 0x2

    aget v7, v0, v7

    int-to-long v7, v7

    and-long v7, v7, v17

    add-long/2addr v7, v12

    add-long/2addr v2, v7

    .line 636
    add-int/lit8 v7, v1, 0x2

    long-to-int v8, v2

    aput v8, v0, v7

    .line 637
    ushr-long/2addr v2, v11

    .line 638
    add-int/lit8 v7, v1, 0x3

    aget v7, v0, v7

    int-to-long v7, v7

    and-long v7, v7, v17

    add-long/2addr v2, v7

    .line 639
    add-int/lit8 v7, v1, 0x3

    long-to-int v8, v2

    aput v8, v0, v7

    .line 640
    ushr-long/2addr v2, v11

    .line 641
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-nez v7, :cond_5e

    const/4 v7, 0x0

    goto :goto_64

    :cond_5e
    const/4 v7, 0x6

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

    .line 649
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .local v2, "xVal":J
    int-to-long v6, p1

    and-long/2addr v6, v4

    .line 650
    .local v6, "yVal":J
    mul-long v8, v6, v2

    add-int/lit8 v10, p3, 0x0

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v8, v10

    add-long/2addr v0, v8

    .line 651
    add-int/lit8 v8, p3, 0x0

    long-to-int v9, v0

    aput v9, p2, v8

    .line 652
    const/16 v8, 0x20

    ushr-long/2addr v0, v8

    .line 653
    add-int/lit8 v9, p3, 0x1

    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v9, v6

    add-long/2addr v0, v9

    .line 654
    add-int/lit8 v9, p3, 0x1

    long-to-int v10, v0

    aput v10, p2, v9

    .line 655
    ushr-long/2addr v0, v8

    .line 656
    add-int/lit8 v9, p3, 0x2

    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v4, v9

    add-long/2addr v0, v4

    .line 657
    add-int/lit8 v4, p3, 0x2

    long-to-int v5, v0

    aput v5, p2, v4

    .line 658
    ushr-long/2addr v0, v8

    .line 659
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_40

    const/4 v4, 0x0

    goto :goto_46

    :cond_40
    const/4 v4, 0x6

    const/4 v5, 0x3

    invoke-static {v4, p2, p3, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v4

    :goto_46
    return v4
.end method

.method public static blacklist mulAddTo([II[II[II)I
    .registers 33
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "zz"    # [I
    .param p5, "zzOff"    # I

    .line 524
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 525
    .local v0, "y_0":J
    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 526
    .local v4, "y_1":J
    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 527
    .local v6, "y_2":J
    add-int/lit8 v8, p3, 0x3

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 528
    .local v8, "y_3":J
    add-int/lit8 v10, p3, 0x4

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 529
    .local v10, "y_4":J
    add-int/lit8 v12, p3, 0x5

    aget v12, p2, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    .line 531
    .local v12, "y_5":J
    const-wide/16 v14, 0x0

    .line 532
    .local v14, "zc":J
    const/16 v16, 0x0

    move-wide/from16 v17, v2

    move-wide v2, v14

    move/from16 v15, v16

    move/from16 v14, p5

    .end local p5    # "zzOff":I
    .local v2, "zc":J
    .local v14, "zzOff":I
    .local v15, "i":I
    :goto_34
    move-wide/from16 v19, v0

    .end local v0    # "y_0":J
    .local v19, "y_0":J
    const/4 v0, 0x6

    if-ge v15, v0, :cond_e2

    .line 534
    const-wide/16 v0, 0x0

    .local v0, "c":J
    add-int v16, p1, v15

    move-wide/from16 v21, v0

    .end local v0    # "c":J
    .local v21, "c":J
    aget v0, p0, v16

    int-to-long v0, v0

    and-long v0, v0, v17

    .line 535
    .local v0, "x_i":J
    mul-long v23, v0, v19

    add-int/lit8 v16, v14, 0x0

    move-wide/from16 v25, v0

    .end local v0    # "x_i":J
    .local v25, "x_i":J
    aget v0, p4, v16

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long v23, v23, v0

    add-long v0, v21, v23

    .line 536
    .end local v21    # "c":J
    .local v0, "c":J
    add-int/lit8 v16, v14, 0x0

    move-wide/from16 v21, v4

    .end local v4    # "y_1":J
    .local v21, "y_1":J
    long-to-int v4, v0

    aput v4, p4, v16

    .line 537
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 538
    mul-long v23, v25, v21

    add-int/lit8 v5, v14, 0x1

    aget v5, p4, v5

    move/from16 p5, v4

    int-to-long v4, v5

    and-long v4, v4, v17

    add-long v23, v23, v4

    add-long v0, v0, v23

    .line 539
    add-int/lit8 v4, v14, 0x1

    long-to-int v5, v0

    aput v5, p4, v4

    .line 540
    ushr-long v0, v0, p5

    .line 541
    mul-long v4, v25, v6

    add-int/lit8 v16, v14, 0x2

    move-wide/from16 v23, v0

    .end local v0    # "c":J
    .local v23, "c":J
    aget v0, p4, v16

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v4, v0

    add-long v0, v23, v4

    .line 542
    .end local v23    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v4, v14, 0x2

    long-to-int v5, v0

    aput v5, p4, v4

    .line 543
    ushr-long v0, v0, p5

    .line 544
    mul-long v4, v25, v8

    add-int/lit8 v16, v14, 0x3

    move-wide/from16 v23, v0

    .end local v0    # "c":J
    .restart local v23    # "c":J
    aget v0, p4, v16

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v4, v0

    add-long v0, v23, v4

    .line 545
    .end local v23    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v4, v14, 0x3

    long-to-int v5, v0

    aput v5, p4, v4

    .line 546
    ushr-long v0, v0, p5

    .line 547
    mul-long v4, v25, v10

    add-int/lit8 v16, v14, 0x4

    move-wide/from16 v23, v0

    .end local v0    # "c":J
    .restart local v23    # "c":J
    aget v0, p4, v16

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v4, v0

    add-long v0, v23, v4

    .line 548
    .end local v23    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v4, v14, 0x4

    long-to-int v5, v0

    aput v5, p4, v4

    .line 549
    ushr-long v0, v0, p5

    .line 550
    mul-long v4, v25, v12

    add-int/lit8 v16, v14, 0x5

    move-wide/from16 v23, v0

    .end local v0    # "c":J
    .restart local v23    # "c":J
    aget v0, p4, v16

    int-to-long v0, v0

    and-long v0, v0, v17

    add-long/2addr v4, v0

    add-long v0, v23, v4

    .line 551
    .end local v23    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v4, v14, 0x5

    long-to-int v5, v0

    aput v5, p4, v4

    .line 552
    ushr-long v0, v0, p5

    .line 554
    add-int/lit8 v4, v14, 0x6

    aget v4, p4, v4

    int-to-long v4, v4

    and-long v4, v4, v17

    add-long/2addr v4, v0

    add-long/2addr v2, v4

    .line 555
    add-int/lit8 v4, v14, 0x6

    long-to-int v5, v2

    aput v5, p4, v4

    .line 556
    ushr-long v2, v2, p5

    .line 557
    nop

    .end local v0    # "c":J
    .end local v25    # "x_i":J
    add-int/lit8 v14, v14, 0x1

    .line 532
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v0, v19

    move-wide/from16 v4, v21

    goto/16 :goto_34

    .line 559
    .end local v15    # "i":I
    .end local v21    # "y_1":J
    .restart local v4    # "y_1":J
    :cond_e2
    long-to-int v0, v2

    return v0
.end method

.method public static blacklist mulAddTo([I[I[I)I
    .registers 33
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .line 485
    const/4 v0, 0x0

    aget v0, p1, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 486
    .local v0, "y_0":J
    const/4 v4, 0x1

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    .line 487
    .local v4, "y_1":J
    const/4 v6, 0x2

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 488
    .local v6, "y_2":J
    const/4 v8, 0x3

    aget v8, p1, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 489
    .local v8, "y_3":J
    const/4 v10, 0x4

    aget v10, p1, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    .line 490
    .local v10, "y_4":J
    const/4 v12, 0x5

    aget v12, p1, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    .line 492
    .local v12, "y_5":J
    const-wide/16 v14, 0x0

    .line 493
    .local v14, "zc":J
    const/16 v16, 0x0

    move-wide/from16 v28, v2

    move/from16 v2, v16

    move-wide/from16 v16, v28

    .local v2, "i":I
    :goto_2d
    const/4 v3, 0x6

    if-ge v2, v3, :cond_d2

    .line 495
    const-wide/16 v18, 0x0

    .local v18, "c":J
    aget v3, p0, v2

    move-wide/from16 v20, v0

    .end local v0    # "y_0":J
    .local v20, "y_0":J
    int-to-long v0, v3

    and-long v0, v0, v16

    .line 496
    .local v0, "x_i":J
    mul-long v22, v0, v20

    add-int/lit8 v3, v2, 0x0

    aget v3, p2, v3

    move-wide/from16 v24, v0

    .end local v0    # "x_i":J
    .local v24, "x_i":J
    int-to-long v0, v3

    and-long v0, v0, v16

    add-long v22, v22, v0

    add-long v0, v18, v22

    .line 497
    .end local v18    # "c":J
    .local v0, "c":J
    add-int/lit8 v3, v2, 0x0

    move/from16 v18, v2

    .end local v2    # "i":I
    .local v18, "i":I
    long-to-int v2, v0

    aput v2, p2, v3

    .line 498
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 499
    mul-long v22, v24, v4

    add-int/lit8 v3, v18, 0x1

    aget v3, p2, v3

    move/from16 v19, v2

    int-to-long v2, v3

    and-long v2, v2, v16

    add-long v22, v22, v2

    add-long v0, v0, v22

    .line 500
    add-int/lit8 v2, v18, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 501
    ushr-long v0, v0, v19

    .line 502
    mul-long v2, v24, v6

    add-int/lit8 v22, v18, 0x2

    move-wide/from16 v26, v0

    .end local v0    # "c":J
    .local v26, "c":J
    aget v0, p2, v22

    int-to-long v0, v0

    and-long v0, v0, v16

    add-long/2addr v2, v0

    add-long v0, v26, v2

    .line 503
    .end local v26    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v18, 0x2

    long-to-int v3, v0

    aput v3, p2, v2

    .line 504
    ushr-long v0, v0, v19

    .line 505
    mul-long v2, v24, v8

    add-int/lit8 v22, v18, 0x3

    move-wide/from16 v26, v0

    .end local v0    # "c":J
    .restart local v26    # "c":J
    aget v0, p2, v22

    int-to-long v0, v0

    and-long v0, v0, v16

    add-long/2addr v2, v0

    add-long v0, v26, v2

    .line 506
    .end local v26    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v18, 0x3

    long-to-int v3, v0

    aput v3, p2, v2

    .line 507
    ushr-long v0, v0, v19

    .line 508
    mul-long v2, v24, v10

    add-int/lit8 v22, v18, 0x4

    move-wide/from16 v26, v0

    .end local v0    # "c":J
    .restart local v26    # "c":J
    aget v0, p2, v22

    int-to-long v0, v0

    and-long v0, v0, v16

    add-long/2addr v2, v0

    add-long v0, v26, v2

    .line 509
    .end local v26    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v18, 0x4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 510
    ushr-long v0, v0, v19

    .line 511
    mul-long v2, v24, v12

    add-int/lit8 v22, v18, 0x5

    move-wide/from16 v26, v0

    .end local v0    # "c":J
    .restart local v26    # "c":J
    aget v0, p2, v22

    int-to-long v0, v0

    and-long v0, v0, v16

    add-long/2addr v2, v0

    add-long v0, v26, v2

    .line 512
    .end local v26    # "c":J
    .restart local v0    # "c":J
    add-int/lit8 v2, v18, 0x5

    long-to-int v3, v0

    aput v3, p2, v2

    .line 513
    ushr-long v0, v0, v19

    .line 515
    add-int/lit8 v2, v18, 0x6

    aget v2, p2, v2

    int-to-long v2, v2

    and-long v2, v2, v16

    add-long/2addr v2, v0

    add-long/2addr v14, v2

    .line 516
    add-int/lit8 v2, v18, 0x6

    long-to-int v3, v14

    aput v3, p2, v2

    .line 517
    ushr-long v14, v14, v19

    .line 493
    .end local v0    # "c":J
    .end local v24    # "x_i":J
    add-int/lit8 v2, v18, 0x1

    move-wide/from16 v0, v20

    .end local v18    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_2d

    .end local v20    # "y_0":J
    .local v0, "y_0":J
    :cond_d2
    move-wide/from16 v20, v0

    .line 519
    .end local v0    # "y_0":J
    .end local v2    # "i":I
    .restart local v20    # "y_0":J
    long-to-int v0, v14

    return v0
.end method

.method public static blacklist mulWord(I[I[II)I
    .registers 13
    .param p0, "x"    # I
    .param p1, "y"    # [I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .line 680
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 681
    .local v2, "xVal":J
    const/4 v6, 0x0

    .line 684
    .local v6, "i":I
    :cond_a
    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-long/2addr v0, v7

    .line 685
    add-int v7, p3, v6

    long-to-int v8, v0

    aput v8, p2, v7

    .line 686
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 688
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x6

    if-lt v6, v7, :cond_a

    .line 689
    long-to-int v4, v0

    return v4
.end method

.method public static blacklist mulWordAddExt(I[II[II)I
    .registers 16
    .param p0, "x"    # I
    .param p1, "yy"    # [I
    .param p2, "yyOff"    # I
    .param p3, "zz"    # [I
    .param p4, "zzOff"    # I

    .line 599
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 600
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

    .line 601
    add-int/lit8 v6, p4, 0x0

    long-to-int v7, v0

    aput v7, p3, v6

    .line 602
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 603
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

    .line 604
    add-int/lit8 v7, p4, 0x1

    long-to-int v8, v0

    aput v8, p3, v7

    .line 605
    ushr-long/2addr v0, v6

    .line 606
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

    .line 607
    add-int/lit8 v7, p4, 0x2

    long-to-int v8, v0

    aput v8, p3, v7

    .line 608
    ushr-long/2addr v0, v6

    .line 609
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

    .line 610
    add-int/lit8 v7, p4, 0x3

    long-to-int v8, v0

    aput v8, p3, v7

    .line 611
    ushr-long/2addr v0, v6

    .line 612
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

    .line 613
    add-int/lit8 v7, p4, 0x4

    long-to-int v8, v0

    aput v8, p3, v7

    .line 614
    ushr-long/2addr v0, v6

    .line 615
    add-int/lit8 v7, p2, 0x5

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int/lit8 v9, p4, 0x5

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v4, v9

    add-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 616
    add-int/lit8 v4, p4, 0x5

    long-to-int v5, v0

    aput v5, p3, v4

    .line 617
    ushr-long/2addr v0, v6

    .line 618
    long-to-int v4, v0

    return v4
.end method

.method public static blacklist mulWordDwordAdd(IJ[II)I
    .registers 16
    .param p0, "x"    # I
    .param p1, "y"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 665
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 666
    .local v2, "xVal":J
    and-long v6, p1, v4

    mul-long/2addr v6, v2

    add-int/lit8 v8, p4, 0x0

    aget v8, p3, v8

    int-to-long v8, v8

    and-long/2addr v8, v4

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 667
    add-int/lit8 v6, p4, 0x0

    long-to-int v7, v0

    aput v7, p3, v6

    .line 668
    const/16 v6, 0x20

    ushr-long/2addr v0, v6

    .line 669
    ushr-long v7, p1, v6

    mul-long/2addr v7, v2

    add-int/lit8 v9, p4, 0x1

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 670
    add-int/lit8 v7, p4, 0x1

    long-to-int v8, v0

    aput v8, p3, v7

    .line 671
    ushr-long/2addr v0, v6

    .line 672
    add-int/lit8 v7, p4, 0x2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v4, v7

    add-long/2addr v0, v4

    .line 673
    add-int/lit8 v4, p4, 0x2

    long-to-int v5, v0

    aput v5, p3, v4

    .line 674
    ushr-long/2addr v0, v6

    .line 675
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_42

    const/4 v4, 0x0

    goto :goto_48

    :cond_42
    const/4 v4, 0x6

    const/4 v5, 0x3

    invoke-static {v4, p3, p4, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v4

    :goto_48
    return v4
.end method

.method public static blacklist square([II[II)V
    .registers 45
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "zz"    # [I
    .param p3, "zzOff"    # I

    .line 810
    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 813
    .local v0, "x_0":J
    const/4 v4, 0x0

    .line 815
    .local v4, "c":I
    const/4 v5, 0x5

    .local v5, "i":I
    const/16 v6, 0xc

    .line 818
    .local v6, "j":I
    :goto_f
    add-int/lit8 v7, v5, -0x1

    .end local v5    # "i":I
    .local v7, "i":I
    add-int v5, p1, v5

    aget v5, p0, v5

    int-to-long v8, v5

    and-long/2addr v8, v2

    .line 819
    .local v8, "xVal":J
    mul-long v10, v8, v8

    .line 820
    .local v10, "p":J
    add-int/lit8 v6, v6, -0x1

    add-int v5, p3, v6

    shl-int/lit8 v12, v4, 0x1f

    const/16 v13, 0x21

    ushr-long v14, v10, v13

    long-to-int v14, v14

    or-int/2addr v12, v14

    aput v12, p2, v5

    .line 821
    add-int/lit8 v6, v6, -0x1

    add-int v5, p3, v6

    const/4 v12, 0x1

    ushr-long v14, v10, v12

    long-to-int v14, v14

    aput v14, p2, v5

    .line 822
    long-to-int v4, v10

    .line 824
    .end local v8    # "xVal":J
    .end local v10    # "p":J
    if-gtz v7, :cond_1f1

    .line 827
    mul-long v8, v0, v0

    .line 828
    .local v8, "p":J
    shl-int/lit8 v5, v4, 0x1f

    int-to-long v10, v5

    and-long/2addr v10, v2

    ushr-long v13, v8, v13

    or-long/2addr v10, v13

    .line 829
    .local v10, "zz_1":J
    add-int/lit8 v5, p3, 0x0

    long-to-int v13, v8

    aput v13, p2, v5

    .line 830
    const/16 v5, 0x20

    ushr-long v13, v8, v5

    long-to-int v13, v13

    and-int/lit8 v4, v13, 0x1

    .line 834
    .end local v6    # "j":I
    .end local v7    # "i":I
    .end local v8    # "p":J
    add-int/lit8 v6, p1, 0x1

    aget v6, p0, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    .line 835
    .local v6, "x_1":J
    add-int/lit8 v8, p3, 0x2

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    .line 838
    .local v8, "zz_2":J
    mul-long v12, v6, v0

    add-long/2addr v10, v12

    .line 839
    long-to-int v12, v10

    .line 840
    .local v12, "w":I
    add-int/lit8 v13, p3, 0x1

    shl-int/lit8 v14, v12, 0x1

    or-int/2addr v14, v4

    aput v14, p2, v13

    .line 841
    ushr-int/lit8 v4, v12, 0x1f

    .line 842
    ushr-long v13, v10, v5

    add-long/2addr v8, v13

    .line 845
    add-int/lit8 v13, p1, 0x2

    aget v13, p0, v13

    int-to-long v13, v13

    and-long/2addr v13, v2

    .line 846
    .local v13, "x_2":J
    add-int/lit8 v15, p3, 0x3

    aget v15, p2, v15

    move-wide/from16 v16, v2

    int-to-long v2, v15

    and-long v2, v2, v16

    .line 847
    .local v2, "zz_3":J
    add-int/lit8 v15, p3, 0x4

    aget v15, p2, v15

    move/from16 v18, v5

    move-wide/from16 v19, v6

    .end local v6    # "x_1":J
    .local v19, "x_1":J
    int-to-long v5, v15

    and-long v5, v5, v16

    .line 849
    .local v5, "zz_4":J
    mul-long v21, v13, v0

    add-long v8, v8, v21

    .line 850
    long-to-int v7, v8

    .line 851
    .end local v12    # "w":I
    .local v7, "w":I
    add-int/lit8 v12, p3, 0x2

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 852
    ushr-int/lit8 v4, v7, 0x1f

    .line 853
    ushr-long v21, v8, v18

    mul-long v23, v13, v19

    add-long v21, v21, v23

    add-long v2, v2, v21

    .line 854
    ushr-long v21, v2, v18

    add-long v5, v5, v21

    .line 855
    and-long v2, v2, v16

    .line 858
    add-int/lit8 v12, p1, 0x3

    aget v12, p0, v12

    move-wide/from16 v21, v0

    .end local v0    # "x_0":J
    .local v21, "x_0":J
    int-to-long v0, v12

    and-long v0, v0, v16

    .line 859
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

    .line 860
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

    .line 862
    mul-long v27, v23, v21

    add-long v2, v2, v27

    .line 863
    long-to-int v7, v2

    .line 864
    add-int/lit8 v12, p3, 0x3

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 865
    ushr-int/lit8 v4, v7, 0x1f

    .line 866
    ushr-long v27, v2, v18

    mul-long v29, v23, v19

    add-long v27, v27, v29

    add-long v5, v5, v27

    .line 867
    ushr-long v27, v5, v18

    mul-long v29, v23, v13

    add-long v27, v27, v29

    add-long v25, v25, v27

    .line 868
    and-long v5, v5, v16

    .line 869
    ushr-long v27, v25, v18

    add-long v0, v0, v27

    .line 870
    and-long v25, v25, v16

    .line 873
    add-int/lit8 v12, p1, 0x4

    aget v12, p0, v12

    move-wide/from16 v27, v0

    .end local v0    # "zz_6":J
    .local v27, "zz_6":J
    int-to-long v0, v12

    and-long v0, v0, v16

    .line 874
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

    .line 875
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

    .line 877
    mul-long v33, v29, v21

    add-long v5, v5, v33

    .line 878
    long-to-int v7, v5

    .line 879
    add-int/lit8 v12, p3, 0x4

    shl-int/lit8 v15, v7, 0x1

    or-int/2addr v15, v4

    aput v15, p2, v12

    .line 880
    ushr-int/lit8 v4, v7, 0x1f

    .line 881
    ushr-long v33, v5, v18

    mul-long v35, v29, v19

    add-long v33, v33, v35

    add-long v25, v25, v33

    .line 882
    ushr-long v33, v25, v18

    mul-long v35, v29, v13

    add-long v33, v33, v35

    add-long v27, v27, v33

    .line 883
    and-long v25, v25, v16

    .line 884
    ushr-long v33, v27, v18

    mul-long v35, v29, v23

    add-long v33, v33, v35

    add-long v31, v31, v33

    .line 885
    and-long v27, v27, v16

    .line 886
    ushr-long v33, v31, v18

    add-long v0, v0, v33

    .line 887
    and-long v31, v31, v16

    .line 890
    add-int/lit8 v12, p1, 0x5

    aget v12, p0, v12

    move-wide/from16 v33, v0

    .end local v0    # "zz_8":J
    .local v33, "zz_8":J
    int-to-long v0, v12

    and-long v0, v0, v16

    .line 891
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

    .line 892
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
    and-long v15, v37, v16

    .line 894
    .end local v37    # "zz_9":J
    .local v15, "zz_9":J
    mul-long v37, v35, v21

    move-wide/from16 v39, v0

    .end local v0    # "zz_10":J
    .local v39, "zz_10":J
    add-long v0, v25, v37

    .line 895
    .end local v25    # "zz_5":J
    .local v0, "zz_5":J
    long-to-int v7, v0

    .line 896
    add-int/lit8 v12, p3, 0x5

    shl-int/lit8 v17, v7, 0x1

    or-int v17, v17, v4

    aput v17, p2, v12

    .line 897
    ushr-int/lit8 v4, v7, 0x1f

    .line 898
    ushr-long v25, v0, v18

    mul-long v37, v35, v19

    add-long v25, v25, v37

    move-wide/from16 v37, v0

    .end local v0    # "zz_5":J
    .local v37, "zz_5":J
    add-long v0, v27, v25

    .line 899
    .end local v27    # "zz_6":J
    .local v0, "zz_6":J
    ushr-long v25, v0, v18

    mul-long v27, v35, v13

    add-long v25, v25, v27

    move-wide/from16 v27, v2

    .end local v2    # "zz_3":J
    .local v27, "zz_3":J
    add-long v2, v31, v25

    .line 900
    .end local v31    # "zz_7":J
    .local v2, "zz_7":J
    ushr-long v25, v2, v18

    mul-long v31, v35, v23

    add-long v25, v25, v31

    move-wide/from16 v31, v5

    move v6, v4

    .end local v4    # "c":I
    .end local v5    # "zz_4":J
    .local v6, "c":I
    .local v31, "zz_4":J
    add-long v4, v33, v25

    .line 901
    .end local v33    # "zz_8":J
    .local v4, "zz_8":J
    ushr-long v25, v4, v18

    mul-long v33, v35, v29

    add-long v25, v25, v33

    move/from16 v17, v6

    move v12, v7

    .end local v6    # "c":I
    .end local v7    # "w":I
    .restart local v12    # "w":I
    .local v17, "c":I
    add-long v6, v15, v25

    .line 902
    .end local v15    # "zz_9":J
    .local v6, "zz_9":J
    ushr-long v15, v6, v18

    move-wide/from16 v25, v8

    .end local v8    # "zz_2":J
    .local v25, "zz_2":J
    add-long v8, v39, v15

    .line 905
    .end local v39    # "zz_10":J
    .local v8, "zz_10":J
    long-to-int v12, v0

    .line 906
    add-int/lit8 v15, p3, 0x6

    shl-int/lit8 v16, v12, 0x1

    or-int v16, v16, v17

    aput v16, p2, v15

    .line 907
    ushr-int/lit8 v15, v12, 0x1f

    .line 908
    .end local v17    # "c":I
    .local v15, "c":I
    long-to-int v12, v2

    .line 909
    add-int/lit8 v16, p3, 0x7

    shl-int/lit8 v17, v12, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 910
    ushr-int/lit8 v15, v12, 0x1f

    .line 911
    long-to-int v12, v4

    .line 912
    add-int/lit8 v16, p3, 0x8

    shl-int/lit8 v17, v12, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 913
    ushr-int/lit8 v15, v12, 0x1f

    .line 914
    long-to-int v12, v6

    .line 915
    add-int/lit8 v16, p3, 0x9

    shl-int/lit8 v17, v12, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 916
    ushr-int/lit8 v15, v12, 0x1f

    .line 917
    long-to-int v12, v8

    .line 918
    add-int/lit8 v16, p3, 0xa

    shl-int/lit8 v17, v12, 0x1

    or-int v17, v17, v15

    aput v17, p2, v16

    .line 919
    ushr-int/lit8 v15, v12, 0x1f

    .line 920
    add-int/lit8 v16, p3, 0xb

    aget v16, p2, v16

    move-wide/from16 v33, v0

    .end local v0    # "zz_6":J
    .local v33, "zz_6":J
    ushr-long v0, v8, v18

    long-to-int v0, v0

    add-int v16, v16, v0

    .line 921
    .end local v12    # "w":I
    .local v16, "w":I
    add-int/lit8 v0, p3, 0xb

    shl-int/lit8 v1, v16, 0x1

    or-int/2addr v1, v15

    aput v1, p2, v0

    .line 922
    return-void

    .line 824
    .end local v2    # "zz_7":J
    .end local v8    # "zz_10":J
    .end local v10    # "zz_1":J
    .end local v13    # "x_2":J
    .end local v15    # "c":I
    .end local v16    # "w":I
    .end local v19    # "x_1":J
    .end local v21    # "x_0":J
    .end local v23    # "x_3":J
    .end local v25    # "zz_2":J
    .end local v27    # "zz_3":J
    .end local v29    # "x_4":J
    .end local v31    # "zz_4":J
    .end local v33    # "zz_6":J
    .end local v35    # "x_5":J
    .end local v37    # "zz_5":J
    .local v0, "x_0":J
    .local v4, "c":I
    .local v6, "j":I
    .local v7, "i":I
    :cond_1f1
    move-wide/from16 v21, v0

    move-wide/from16 v16, v2

    .end local v0    # "x_0":J
    .restart local v21    # "x_0":J
    move v5, v7

    goto/16 :goto_f
.end method

.method public static blacklist square([I[I)V
    .registers 48
    .param p0, "x"    # [I
    .param p1, "zz"    # [I

    .line 694
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .line 697
    .local v1, "x_0":J
    const/4 v5, 0x0

    .line 699
    .local v5, "c":I
    const/4 v6, 0x5

    .local v6, "i":I
    const/16 v7, 0xc

    .line 702
    .local v7, "j":I
    :goto_e
    add-int/lit8 v8, v6, -0x1

    .end local v6    # "i":I
    .local v8, "i":I
    aget v6, p0, v6

    int-to-long v9, v6

    and-long/2addr v9, v3

    .line 703
    .local v9, "xVal":J
    mul-long v11, v9, v9

    .line 704
    .local v11, "p":J
    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v6, v5, 0x1f

    const/16 v13, 0x21

    ushr-long v14, v11, v13

    long-to-int v14, v14

    or-int/2addr v6, v14

    aput v6, p1, v7

    .line 705
    add-int/lit8 v7, v7, -0x1

    const/4 v6, 0x1

    ushr-long v14, v11, v6

    long-to-int v14, v14

    aput v14, p1, v7

    .line 706
    long-to-int v5, v11

    .line 708
    .end local v9    # "xVal":J
    .end local v11    # "p":J
    if-gtz v8, :cond_1c7

    .line 711
    mul-long v9, v1, v1

    .line 712
    .local v9, "p":J
    shl-int/lit8 v11, v5, 0x1f

    int-to-long v11, v11

    and-long/2addr v11, v3

    ushr-long v13, v9, v13

    or-long/2addr v11, v13

    .line 713
    .local v11, "zz_1":J
    long-to-int v13, v9

    aput v13, p1, v0

    .line 714
    const/16 v0, 0x20

    ushr-long v13, v9, v0

    long-to-int v13, v13

    and-int/lit8 v5, v13, 0x1

    .line 718
    .end local v7    # "j":I
    .end local v8    # "i":I
    .end local v9    # "p":J
    aget v7, p0, v6

    int-to-long v7, v7

    and-long/2addr v7, v3

    .line 719
    .local v7, "x_1":J
    const/4 v9, 0x2

    aget v10, p1, v9

    int-to-long v13, v10

    and-long/2addr v13, v3

    .line 722
    .local v13, "zz_2":J
    mul-long v15, v7, v1

    add-long/2addr v11, v15

    .line 723
    long-to-int v10, v11

    .line 724
    .local v10, "w":I
    shl-int/lit8 v15, v10, 0x1

    or-int/2addr v15, v5

    aput v15, p1, v6

    .line 725
    ushr-int/lit8 v5, v10, 0x1f

    .line 726
    ushr-long v15, v11, v0

    add-long/2addr v13, v15

    .line 729
    aget v6, p0, v9

    move-wide v15, v1

    move v2, v0

    .end local v1    # "x_0":J
    .local v15, "x_0":J
    int-to-long v0, v6

    and-long/2addr v0, v3

    .line 730
    .local v0, "x_2":J
    const/4 v6, 0x3

    move/from16 v17, v2

    aget v2, p1, v6

    move-wide/from16 v18, v3

    int-to-long v3, v2

    and-long v2, v3, v18

    .line 731
    .local v2, "zz_3":J
    const/16 v20, 0x4

    aget v4, p1, v20

    move-wide/from16 v21, v7

    move v8, v6

    .end local v7    # "x_1":J
    .local v21, "x_1":J
    int-to-long v6, v4

    and-long v6, v6, v18

    .line 733
    .local v6, "zz_4":J
    mul-long v23, v0, v15

    add-long v13, v13, v23

    .line 734
    long-to-int v4, v13

    .line 735
    .end local v10    # "w":I
    .local v4, "w":I
    shl-int/lit8 v10, v4, 0x1

    or-int/2addr v10, v5

    aput v10, p1, v9

    .line 736
    ushr-int/lit8 v5, v4, 0x1f

    .line 737
    ushr-long v9, v13, v17

    mul-long v23, v0, v21

    add-long v9, v9, v23

    add-long/2addr v2, v9

    .line 738
    ushr-long v9, v2, v17

    add-long/2addr v6, v9

    .line 739
    and-long v2, v2, v18

    .line 742
    aget v9, p0, v8

    int-to-long v9, v9

    and-long v9, v9, v18

    .line 743
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

    .line 744
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

    .line 746
    mul-long v30, v9, v15

    add-long v2, v2, v30

    .line 747
    long-to-int v4, v2

    .line 748
    shl-int/lit8 v8, v4, 0x1

    or-int/2addr v8, v5

    aput v8, p1, v24

    .line 749
    ushr-int/lit8 v5, v4, 0x1f

    .line 750
    ushr-long v30, v2, v17

    mul-long v32, v9, v21

    add-long v30, v30, v32

    add-long v6, v6, v30

    .line 751
    ushr-long v30, v6, v17

    mul-long v32, v9, v25

    add-long v30, v30, v32

    add-long v28, v28, v30

    .line 752
    and-long v6, v6, v18

    .line 753
    ushr-long v30, v28, v17

    add-long v0, v0, v30

    .line 754
    and-long v28, v28, v18

    .line 757
    aget v8, p0, v20

    move-wide/from16 v30, v0

    .end local v0    # "zz_6":J
    .local v30, "zz_6":J
    int-to-long v0, v8

    and-long v0, v0, v18

    .line 758
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

    .line 759
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

    .line 761
    mul-long v37, v32, v15

    add-long v6, v6, v37

    .line 762
    long-to-int v4, v6

    .line 763
    shl-int/lit8 v8, v4, 0x1

    or-int/2addr v8, v5

    aput v8, p1, v20

    .line 764
    ushr-int/lit8 v5, v4, 0x1f

    .line 765
    ushr-long v37, v6, v17

    mul-long v39, v32, v21

    add-long v37, v37, v39

    add-long v28, v28, v37

    .line 766
    ushr-long v37, v28, v17

    mul-long v39, v32, v25

    add-long v37, v37, v39

    add-long v30, v30, v37

    .line 767
    and-long v28, v28, v18

    .line 768
    ushr-long v37, v30, v17

    mul-long v39, v32, v9

    add-long v37, v37, v39

    add-long v35, v35, v37

    .line 769
    and-long v30, v30, v18

    .line 770
    ushr-long v37, v35, v17

    add-long v0, v0, v37

    .line 771
    and-long v35, v35, v18

    .line 774
    aget v8, p0, v23

    move-wide/from16 v37, v0

    .end local v0    # "zz_8":J
    .local v37, "zz_8":J
    int-to-long v0, v8

    and-long v0, v0, v18

    .line 775
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

    .line 776
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
    and-long v18, v42, v18

    .line 778
    .end local v42    # "zz_9":J
    .local v18, "zz_9":J
    mul-long v42, v39, v15

    move-wide/from16 v44, v0

    .end local v0    # "zz_10":J
    .local v44, "zz_10":J
    add-long v0, v28, v42

    .line 779
    .end local v28    # "zz_5":J
    .local v0, "zz_5":J
    long-to-int v4, v0

    .line 780
    shl-int/lit8 v8, v4, 0x1

    or-int/2addr v8, v5

    aput v8, p1, v23

    .line 781
    ushr-int/lit8 v5, v4, 0x1f

    .line 782
    ushr-long v28, v0, v17

    mul-long v42, v39, v21

    add-long v28, v28, v42

    move-wide/from16 v42, v0

    .end local v0    # "zz_5":J
    .local v42, "zz_5":J
    add-long v0, v30, v28

    .line 783
    .end local v30    # "zz_6":J
    .local v0, "zz_6":J
    ushr-long v28, v0, v17

    mul-long v30, v39, v25

    add-long v28, v28, v30

    move-wide/from16 v30, v2

    .end local v2    # "zz_3":J
    .local v30, "zz_3":J
    add-long v2, v35, v28

    .line 784
    .end local v35    # "zz_7":J
    .local v2, "zz_7":J
    ushr-long v28, v2, v17

    mul-long v35, v39, v9

    add-long v28, v28, v35

    move v8, v4

    move/from16 v23, v5

    .end local v4    # "w":I
    .end local v5    # "c":I
    .local v8, "w":I
    .local v23, "c":I
    add-long v4, v37, v28

    .line 785
    .end local v37    # "zz_8":J
    .local v4, "zz_8":J
    ushr-long v28, v4, v17

    mul-long v35, v39, v32

    add-long v28, v28, v35

    move-wide/from16 v35, v6

    .end local v6    # "zz_4":J
    .local v35, "zz_4":J
    add-long v6, v18, v28

    .line 786
    .end local v18    # "zz_9":J
    .local v6, "zz_9":J
    ushr-long v18, v6, v17

    move-wide/from16 v28, v9

    move v10, v8

    .end local v8    # "w":I
    .end local v9    # "x_3":J
    .restart local v10    # "w":I
    .local v28, "x_3":J
    add-long v8, v44, v18

    .line 789
    .end local v44    # "zz_10":J
    .local v8, "zz_10":J
    long-to-int v10, v0

    .line 790
    shl-int/lit8 v18, v10, 0x1

    or-int v18, v18, v23

    aput v18, p1, v27

    .line 791
    ushr-int/lit8 v18, v10, 0x1f

    .line 792
    .end local v23    # "c":I
    .local v18, "c":I
    long-to-int v10, v2

    .line 793
    shl-int/lit8 v19, v10, 0x1

    or-int v19, v19, v18

    aput v19, p1, v24

    .line 794
    ushr-int/lit8 v18, v10, 0x1f

    .line 795
    long-to-int v10, v4

    .line 796
    shl-int/lit8 v19, v10, 0x1

    or-int v19, v19, v18

    aput v19, p1, v34

    .line 797
    ushr-int/lit8 v18, v10, 0x1f

    .line 798
    long-to-int v10, v6

    .line 799
    shl-int/lit8 v19, v10, 0x1

    or-int v19, v19, v18

    aput v19, p1, v20

    .line 800
    ushr-int/lit8 v18, v10, 0x1f

    .line 801
    long-to-int v10, v8

    .line 802
    shl-int/lit8 v19, v10, 0x1

    or-int v19, v19, v18

    aput v19, p1, v41

    .line 803
    ushr-int/lit8 v18, v10, 0x1f

    .line 804
    const/16 v19, 0xb

    aget v20, p1, v19

    move-wide/from16 v23, v0

    .end local v0    # "zz_6":J
    .local v23, "zz_6":J
    ushr-long v0, v8, v17

    long-to-int v0, v0

    add-int v20, v20, v0

    .line 805
    .end local v10    # "w":I
    .local v20, "w":I
    shl-int/lit8 v0, v20, 0x1

    or-int v0, v0, v18

    aput v0, p1, v19

    .line 806
    return-void

    .line 708
    .end local v2    # "zz_7":J
    .end local v4    # "zz_8":J
    .end local v6    # "zz_9":J
    .end local v11    # "zz_1":J
    .end local v13    # "zz_2":J
    .end local v15    # "x_0":J
    .end local v18    # "c":I
    .end local v20    # "w":I
    .end local v21    # "x_1":J
    .end local v23    # "zz_6":J
    .end local v25    # "x_2":J
    .end local v28    # "x_3":J
    .end local v30    # "zz_3":J
    .end local v32    # "x_4":J
    .end local v35    # "zz_4":J
    .end local v39    # "x_5":J
    .end local v42    # "zz_5":J
    .restart local v1    # "x_0":J
    .restart local v5    # "c":I
    .local v7, "j":I
    .local v8, "i":I
    :cond_1c7
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

    .line 950
    const-wide/16 v0, 0x0

    .line 951
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

    .line 952
    add-int/lit8 v2, p5, 0x0

    long-to-int v3, v0

    aput v3, p4, v2

    .line 953
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 954
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

    .line 955
    add-int/lit8 v3, p5, 0x1

    long-to-int v6, v0

    aput v6, p4, v3

    .line 956
    shr-long/2addr v0, v2

    .line 957
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

    .line 958
    add-int/lit8 v3, p5, 0x2

    long-to-int v6, v0

    aput v6, p4, v3

    .line 959
    shr-long/2addr v0, v2

    .line 960
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

    .line 961
    add-int/lit8 v3, p5, 0x3

    long-to-int v6, v0

    aput v6, p4, v3

    .line 962
    shr-long/2addr v0, v2

    .line 963
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

    .line 964
    add-int/lit8 v3, p5, 0x4

    long-to-int v6, v0

    aput v6, p4, v3

    .line 965
    shr-long/2addr v0, v2

    .line 966
    add-int/lit8 v3, p1, 0x5

    aget v3, p0, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p3, 0x5

    aget v3, p2, v3

    int-to-long v8, v3

    and-long v3, v8, v4

    sub-long/2addr v6, v3

    add-long/2addr v0, v6

    .line 967
    add-int/lit8 v3, p5, 0x5

    long-to-int v4, v0

    aput v4, p4, v3

    .line 968
    shr-long/2addr v0, v2

    .line 969
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist sub([I[I[I)I
    .registers 14
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 926
    const-wide/16 v0, 0x0

    .line 927
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

    .line 928
    long-to-int v3, v0

    aput v3, p2, v2

    .line 929
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 930
    const/4 v3, 0x1

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 931
    long-to-int v4, v0

    aput v4, p2, v3

    .line 932
    shr-long/2addr v0, v2

    .line 933
    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 934
    long-to-int v4, v0

    aput v4, p2, v3

    .line 935
    shr-long/2addr v0, v2

    .line 936
    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 937
    long-to-int v4, v0

    aput v4, p2, v3

    .line 938
    shr-long/2addr v0, v2

    .line 939
    const/4 v3, 0x4

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 940
    long-to-int v4, v0

    aput v4, p2, v3

    .line 941
    shr-long/2addr v0, v2

    .line 942
    const/4 v3, 0x5

    aget v4, p0, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p1, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    sub-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 943
    long-to-int v4, v0

    aput v4, p2, v3

    .line 944
    shr-long/2addr v0, v2

    .line 945
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subBothFrom([I[I[I)I
    .registers 14
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 974
    const-wide/16 v0, 0x0

    .line 975
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

    .line 976
    long-to-int v3, v0

    aput v3, p2, v2

    .line 977
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 978
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

    .line 979
    long-to-int v4, v0

    aput v4, p2, v3

    .line 980
    shr-long/2addr v0, v2

    .line 981
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

    .line 982
    long-to-int v4, v0

    aput v4, p2, v3

    .line 983
    shr-long/2addr v0, v2

    .line 984
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

    .line 985
    long-to-int v4, v0

    aput v4, p2, v3

    .line 986
    shr-long/2addr v0, v2

    .line 987
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

    .line 988
    long-to-int v4, v0

    aput v4, p2, v3

    .line 989
    shr-long/2addr v0, v2

    .line 990
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

    and-long v4, v9, v5

    sub-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 991
    long-to-int v4, v0

    aput v4, p2, v3

    .line 992
    shr-long/2addr v0, v2

    .line 993
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subFrom([II[II)I
    .registers 14
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .line 1022
    const-wide/16 v0, 0x0

    .line 1023
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

    .line 1024
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1025
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1026
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

    .line 1027
    add-int/lit8 v3, p3, 0x1

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1028
    shr-long/2addr v0, v2

    .line 1029
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

    .line 1030
    add-int/lit8 v3, p3, 0x2

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1031
    shr-long/2addr v0, v2

    .line 1032
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

    .line 1033
    add-int/lit8 v3, p3, 0x3

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1034
    shr-long/2addr v0, v2

    .line 1035
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

    .line 1036
    add-int/lit8 v3, p3, 0x4

    long-to-int v6, v0

    aput v6, p2, v3

    .line 1037
    shr-long/2addr v0, v2

    .line 1038
    add-int/lit8 v3, p3, 0x5

    aget v3, p2, v3

    int-to-long v6, v3

    and-long/2addr v6, v4

    add-int/lit8 v3, p1, 0x5

    aget v3, p0, v3

    int-to-long v8, v3

    and-long v3, v8, v4

    sub-long/2addr v6, v3

    add-long/2addr v0, v6

    .line 1039
    add-int/lit8 v3, p3, 0x5

    long-to-int v4, v0

    aput v4, p2, v3

    .line 1040
    shr-long/2addr v0, v2

    .line 1041
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subFrom([I[I)I
    .registers 13
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 998
    const-wide/16 v0, 0x0

    .line 999
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

    .line 1000
    long-to-int v3, v0

    aput v3, p1, v2

    .line 1001
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1002
    const/4 v3, 0x1

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1003
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1004
    shr-long/2addr v0, v2

    .line 1005
    const/4 v3, 0x2

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1006
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1007
    shr-long/2addr v0, v2

    .line 1008
    const/4 v3, 0x3

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1009
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1010
    shr-long/2addr v0, v2

    .line 1011
    const/4 v3, 0x4

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long/2addr v9, v5

    sub-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1012
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1013
    shr-long/2addr v0, v2

    .line 1014
    const/4 v3, 0x5

    aget v4, p1, v3

    int-to-long v7, v4

    and-long/2addr v7, v5

    aget v4, p0, v3

    int-to-long v9, v4

    and-long v4, v9, v5

    sub-long/2addr v7, v4

    add-long/2addr v0, v7

    .line 1015
    long-to-int v4, v0

    aput v4, p1, v3

    .line 1016
    shr-long/2addr v0, v2

    .line 1017
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist toBigInteger([I)Ljava/math/BigInteger;
    .registers 5
    .param p0, "x"    # [I

    .line 1046
    const/16 v0, 0x18

    new-array v0, v0, [B

    .line 1047
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    const/4 v2, 0x6

    if-ge v1, v2, :cond_16

    .line 1049
    aget v2, p0, v1

    .line 1050
    .local v2, "x_i":I
    if-eqz v2, :cond_13

    .line 1052
    rsub-int/lit8 v3, v1, 0x5

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v2, v0, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 1047
    .end local v2    # "x_i":I
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1055
    .end local v1    # "i":I
    :cond_16
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public static blacklist toBigInteger64([J)Ljava/math/BigInteger;
    .registers 8
    .param p0, "x"    # [J

    .line 1060
    const/16 v0, 0x18

    new-array v0, v0, [B

    .line 1061
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1a

    .line 1063
    aget-wide v3, p0, v1

    .line 1064
    .local v3, "x_i":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_17

    .line 1066
    rsub-int/lit8 v5, v1, 0x2

    shl-int/lit8 v2, v5, 0x3

    invoke-static {v3, v4, v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 1061
    .end local v3    # "x_i":J
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1069
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

    .line 1074
    const/4 v0, 0x0

    aput v0, p0, v0

    .line 1075
    const/4 v1, 0x1

    aput v0, p0, v1

    .line 1076
    const/4 v1, 0x2

    aput v0, p0, v1

    .line 1077
    const/4 v1, 0x3

    aput v0, p0, v1

    .line 1078
    const/4 v1, 0x4

    aput v0, p0, v1

    .line 1079
    const/4 v1, 0x5

    aput v0, p0, v1

    .line 1080
    return-void
.end method
