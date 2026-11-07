.class public abstract Lcom/android/internal/org/bouncycastle/math/raw/Nat;
.super Ljava/lang/Object;
.source "Nat.java"


# static fields
.field private static final blacklist M:J = 0xffffffffL


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist add(I[I[I[I)I
    .registers 13
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    .line 17
    const-wide/16 v0, 0x0

    .line 18
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
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

    .line 21
    long-to-int v3, v0

    aput v3, p3, v2

    .line 22
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 18
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 24
    .end local v2    # "i":I
    :cond_1d
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist add33At(II[II)I
    .registers 11
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zPos"    # I

    .line 30
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 31
    .local v0, "c":J
    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    .line 32
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 33
    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 34
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 35
    ushr-long/2addr v0, v4

    .line 36
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2e

    const/4 v2, 0x0

    goto :goto_34

    :cond_2e
    add-int/lit8 v2, p3, 0x2

    invoke-static {p0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    :goto_34
    return v2
.end method

.method public static blacklist add33At(II[III)I
    .registers 12
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .param p4, "zPos"    # I

    .line 42
    add-int v0, p3, p4

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 43
    .local v0, "c":J
    add-int v4, p3, p4

    long-to-int v5, v0

    aput v5, p2, v4

    .line 44
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 45
    add-int v5, p3, p4

    add-int/lit8 v5, v5, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 46
    add-int v2, p3, p4

    add-int/lit8 v2, v2, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 47
    ushr-long/2addr v0, v4

    .line 48
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_32

    const/4 v2, 0x0

    goto :goto_38

    :cond_32
    add-int/lit8 v2, p4, 0x2

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_38
    return v2
.end method

.method public static blacklist add33To(II[I)I
    .registers 12
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I

    .line 53
    const/4 v0, 0x0

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    .line 54
    .local v1, "c":J
    long-to-int v5, v1

    aput v5, p2, v0

    .line 55
    const/16 v5, 0x20

    ushr-long/2addr v1, v5

    .line 56
    const/4 v6, 0x1

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v3, v7

    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    add-long/2addr v1, v3

    .line 57
    long-to-int v3, v1

    aput v3, p2, v6

    .line 58
    ushr-long/2addr v1, v5

    .line 59
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_27

    goto :goto_2c

    :cond_27
    const/4 v0, 0x2

    invoke-static {p0, p2, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v0

    :goto_2c
    return v0
.end method

.method public static blacklist add33To(II[II)I
    .registers 11
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .line 64
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 65
    .local v0, "c":J
    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    .line 66
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 67
    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 68
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 69
    ushr-long/2addr v0, v4

    .line 70
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2e

    const/4 v2, 0x0

    goto :goto_33

    :cond_2e
    const/4 v2, 0x2

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_33
    return v2
.end method

.method public static blacklist addBothTo(I[II[II[II)I
    .registers 16
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .line 87
    const-wide/16 v0, 0x0

    .line 88
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, p0, :cond_2a

    .line 90
    add-int v3, p2, v2

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

    aget v7, p5, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 91
    add-int v3, p6, v2

    long-to-int v4, v0

    aput v4, p5, v3

    .line 92
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 94
    .end local v2    # "i":I
    :cond_2a
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addBothTo(I[I[I[I)I
    .registers 13
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    .line 75
    const-wide/16 v0, 0x0

    .line 76
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
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

    .line 79
    long-to-int v3, v0

    aput v3, p3, v2

    .line 80
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 82
    .end local v2    # "i":I
    :cond_22
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addDWordAt(IJ[II)I
    .registers 12
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .param p4, "zPos"    # I

    .line 100
    add-int/lit8 v0, p4, 0x0

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    add-long/2addr v0, v4

    .line 101
    .local v0, "c":J
    add-int/lit8 v4, p4, 0x0

    long-to-int v5, v0

    aput v5, p3, v4

    .line 102
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 103
    add-int/lit8 v5, p4, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 104
    add-int/lit8 v2, p4, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    .line 105
    ushr-long/2addr v0, v4

    .line 106
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2e

    const/4 v2, 0x0

    goto :goto_34

    :cond_2e
    add-int/lit8 v2, p4, 0x2

    invoke-static {p0, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    :goto_34
    return v2
.end method

.method public static blacklist addDWordAt(IJ[III)I
    .registers 13
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I
    .param p5, "zPos"    # I

    .line 112
    add-int v0, p4, p5

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    add-long/2addr v0, v4

    .line 113
    .local v0, "c":J
    add-int v4, p4, p5

    long-to-int v5, v0

    aput v5, p3, v4

    .line 114
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 115
    add-int v5, p4, p5

    add-int/lit8 v5, v5, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 116
    add-int v2, p4, p5

    add-int/lit8 v2, v2, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    .line 117
    ushr-long/2addr v0, v4

    .line 118
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_32

    const/4 v2, 0x0

    goto :goto_38

    :cond_32
    add-int/lit8 v2, p5, 0x2

    invoke-static {p0, p3, p4, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_38
    return v2
.end method

.method public static blacklist addDWordTo(IJ[I)I
    .registers 13
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I

    .line 123
    const/4 v0, 0x0

    aget v1, p3, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    and-long v5, p1, v3

    add-long/2addr v1, v5

    .line 124
    .local v1, "c":J
    long-to-int v5, v1

    aput v5, p3, v0

    .line 125
    const/16 v5, 0x20

    ushr-long/2addr v1, v5

    .line 126
    const/4 v6, 0x1

    aget v7, p3, v6

    int-to-long v7, v7

    and-long/2addr v3, v7

    ushr-long v7, p1, v5

    add-long/2addr v3, v7

    add-long/2addr v1, v3

    .line 127
    long-to-int v3, v1

    aput v3, p3, v6

    .line 128
    ushr-long/2addr v1, v5

    .line 129
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_27

    goto :goto_2c

    :cond_27
    const/4 v0, 0x2

    invoke-static {p0, p3, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v0

    :goto_2c
    return v0
.end method

.method public static blacklist addDWordTo(IJ[II)I
    .registers 12
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 134
    add-int/lit8 v0, p4, 0x0

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    add-long/2addr v0, v4

    .line 135
    .local v0, "c":J
    add-int/lit8 v4, p4, 0x0

    long-to-int v5, v0

    aput v5, p3, v4

    .line 136
    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    .line 137
    add-int/lit8 v5, p4, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    add-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 138
    add-int/lit8 v2, p4, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    .line 139
    ushr-long/2addr v0, v4

    .line 140
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2e

    const/4 v2, 0x0

    goto :goto_33

    :cond_2e
    const/4 v2, 0x2

    invoke-static {p0, p3, p4, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_33
    return v2
.end method

.method public static blacklist addTo(I[II[II)I
    .registers 14
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 157
    const-wide/16 v0, 0x0

    .line 158
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, p0, :cond_23

    .line 160
    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 161
    add-int v3, p4, v2

    long-to-int v4, v0

    aput v4, p3, v3

    .line 162
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 164
    .end local v2    # "i":I
    :cond_23
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addTo(I[II[III)I
    .registers 15
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "z"    # [I
    .param p4, "zOff"    # I
    .param p5, "cIn"    # I

    .line 169
    int-to-long v0, p5

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 170
    .local v0, "c":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    if-ge v4, p0, :cond_23

    .line 172
    add-int v5, p2, v4

    aget v5, p1, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int v7, p4, v4

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    add-long/2addr v0, v5

    .line 173
    add-int v5, p4, v4

    long-to-int v6, v0

    aput v6, p3, v5

    .line 174
    const/16 v5, 0x20

    ushr-long/2addr v0, v5

    .line 170
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 176
    .end local v4    # "i":I
    :cond_23
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addTo(I[I[I)I
    .registers 12
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .line 145
    const-wide/16 v0, 0x0

    .line 146
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
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

    .line 149
    long-to-int v3, v0

    aput v3, p2, v2

    .line 150
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 152
    .end local v2    # "i":I
    :cond_1d
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addToEachOther(I[II[II)I
    .registers 14
    .param p0, "len"    # I
    .param p1, "u"    # [I
    .param p2, "uOff"    # I
    .param p3, "v"    # [I
    .param p4, "vOff"    # I

    .line 181
    const-wide/16 v0, 0x0

    .line 182
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, p0, :cond_28

    .line 184
    add-int v3, p2, v2

    aget v3, p1, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 185
    add-int v3, p2, v2

    long-to-int v4, v0

    aput v4, p1, v3

    .line 186
    add-int v3, p4, v2

    long-to-int v4, v0

    aput v4, p3, v3

    .line 187
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 189
    .end local v2    # "i":I
    :cond_28
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist addWordAt(II[II)I
    .registers 10
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zPos"    # I

    .line 195
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 196
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p2, p3

    .line 197
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 198
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1a

    const/4 v2, 0x0

    goto :goto_20

    :cond_1a
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    :goto_20
    return v2
.end method

.method public static blacklist addWordAt(II[III)I
    .registers 11
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .param p4, "zPos"    # I

    .line 204
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int v4, p3, p4

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 205
    .local v0, "c":J
    add-int v2, p3, p4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 206
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 207
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1e

    const/4 v2, 0x0

    goto :goto_24

    :cond_1e
    add-int/lit8 v2, p4, 0x1

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_24
    return v2
.end method

.method public static blacklist addWordTo(II[I)I
    .registers 10
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I

    .line 212
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v4, 0x0

    aget v5, p2, v4

    int-to-long v5, v5

    and-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 213
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p2, v4

    .line 214
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 215
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1a

    goto :goto_1f

    :cond_1a
    const/4 v2, 0x1

    invoke-static {p0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v4

    :goto_1f
    return v4
.end method

.method public static blacklist addWordTo(II[II)I
    .registers 10
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .line 220
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 221
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p2, p3

    .line 222
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    .line 223
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1a

    const/4 v2, 0x0

    goto :goto_1f

    :cond_1a
    const/4 v2, 0x1

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    move-result v2

    :goto_1f
    return v2
.end method

.method public static blacklist cadd(II[I[I[I)I
    .registers 16
    .param p0, "len"    # I
    .param p1, "mask"    # I
    .param p2, "x"    # [I
    .param p3, "y"    # [I
    .param p4, "z"    # [I

    .line 228
    and-int/lit8 v0, p1, 0x1

    neg-int v0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 229
    .local v0, "MASK":J
    const-wide/16 v4, 0x0

    .line 230
    .local v4, "c":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_d
    if-ge v6, p0, :cond_22

    .line 232
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    aget v9, p3, v6

    int-to-long v9, v9

    and-long/2addr v9, v0

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    .line 233
    long-to-int v7, v4

    aput v7, p4, v6

    .line 234
    const/16 v7, 0x20

    ushr-long/2addr v4, v7

    .line 230
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 236
    .end local v6    # "i":I
    :cond_22
    long-to-int v2, v4

    return v2
.end method

.method public static blacklist caddTo(II[I[I)I
    .registers 15
    .param p0, "len"    # I
    .param p1, "mask"    # I
    .param p2, "x"    # [I
    .param p3, "z"    # [I

    .line 241
    and-int/lit8 v0, p1, 0x1

    neg-int v0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 242
    .local v0, "MASK":J
    const-wide/16 v4, 0x0

    .line 243
    .local v4, "c":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_d
    if-ge v6, p0, :cond_22

    .line 245
    aget v7, p3, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    aget v9, p2, v6

    int-to-long v9, v9

    and-long/2addr v9, v0

    add-long/2addr v7, v9

    add-long/2addr v4, v7

    .line 246
    long-to-int v7, v4

    aput v7, p3, v6

    .line 247
    const/16 v7, 0x20

    ushr-long/2addr v4, v7

    .line 243
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 249
    .end local v6    # "i":I
    :cond_22
    long-to-int v2, v4

    return v2
.end method

.method public static blacklist cmov(II[II[II)V
    .registers 10
    .param p0, "len"    # I
    .param p1, "mask"    # I
    .param p2, "x"    # [I
    .param p3, "xOff"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .line 254
    and-int/lit8 v0, p1, 0x1

    neg-int p1, v0

    .line 256
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, p0, :cond_19

    .line 258
    add-int v1, p5, v0

    aget v1, p4, v1

    .local v1, "z_i":I
    add-int v2, p3, v0

    aget v2, p2, v2

    xor-int/2addr v2, v1

    .line 259
    .local v2, "diff":I
    and-int v3, v2, p1

    xor-int/2addr v1, v3

    .line 260
    add-int v3, p5, v0

    aput v1, p4, v3

    .line 256
    .end local v1    # "z_i":I
    .end local v2    # "diff":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 272
    .end local v0    # "i":I
    :cond_19
    return-void
.end method

.method public static blacklist compare(I[II[II)I
    .registers 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I

    .line 290
    add-int/lit8 v0, p0, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_1b

    .line 292
    add-int v1, p2, v0

    aget v1, p1, v1

    const/high16 v2, -0x80000000

    xor-int/2addr v1, v2

    .line 293
    .local v1, "x_i":I
    add-int v3, p4, v0

    aget v3, p3, v3

    xor-int/2addr v2, v3

    .line 294
    .local v2, "y_i":I
    if-ge v1, v2, :cond_14

    .line 295
    const/4 v3, -0x1

    return v3

    .line 296
    :cond_14
    if-le v1, v2, :cond_18

    .line 297
    const/4 v3, 0x1

    return v3

    .line 290
    .end local v1    # "x_i":I
    .end local v2    # "y_i":I
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 299
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist compare(I[I[I)I
    .registers 7
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I

    .line 276
    add-int/lit8 v0, p0, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_17

    .line 278
    aget v1, p1, v0

    const/high16 v2, -0x80000000

    xor-int/2addr v1, v2

    .line 279
    .local v1, "x_i":I
    aget v3, p2, v0

    xor-int/2addr v2, v3

    .line 280
    .local v2, "y_i":I
    if-ge v1, v2, :cond_10

    .line 281
    const/4 v3, -0x1

    return v3

    .line 282
    :cond_10
    if-le v1, v2, :cond_14

    .line 283
    const/4 v3, 0x1

    return v3

    .line 276
    .end local v1    # "x_i":I
    .end local v2    # "y_i":I
    :cond_14
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 285
    .end local v0    # "i":I
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist copy(I[II[II)V
    .registers 5
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 316
    invoke-static {p1, p2, p3, p4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    return-void
.end method

.method public static blacklist copy(I[I[I)V
    .registers 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .line 311
    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    return-void
.end method

.method public static blacklist copy(I[I)[I
    .registers 4
    .param p0, "len"    # I
    .param p1, "x"    # [I

    .line 304
    new-array v0, p0, [I

    .line 305
    .local v0, "z":[I
    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    return-object v0
.end method

.method public static blacklist copy64(I[JI[JI)V
    .registers 5
    .param p0, "len"    # I
    .param p1, "x"    # [J
    .param p2, "xOff"    # I
    .param p3, "z"    # [J
    .param p4, "zOff"    # I

    .line 333
    invoke-static {p1, p2, p3, p4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    return-void
.end method

.method public static blacklist copy64(I[J[J)V
    .registers 4
    .param p0, "len"    # I
    .param p1, "x"    # [J
    .param p2, "z"    # [J

    .line 328
    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    return-void
.end method

.method public static blacklist copy64(I[J)[J
    .registers 4
    .param p0, "len"    # I
    .param p1, "x"    # [J

    .line 321
    new-array v0, p0, [J

    .line 322
    .local v0, "z":[J
    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    return-object v0
.end method

.method public static blacklist create(I)[I
    .registers 2
    .param p0, "len"    # I

    .line 338
    new-array v0, p0, [I

    return-object v0
.end method

.method public static blacklist create64(I)[J
    .registers 2
    .param p0, "len"    # I

    .line 343
    new-array v0, p0, [J

    return-object v0
.end method

.method public static blacklist csub(II[II[II[II)I
    .registers 19
    .param p0, "len"    # I
    .param p1, "mask"    # I
    .param p2, "x"    # [I
    .param p3, "xOff"    # I
    .param p4, "y"    # [I
    .param p5, "yOff"    # I
    .param p6, "z"    # [I
    .param p7, "zOff"    # I

    .line 361
    and-int/lit8 v0, p1, 0x1

    neg-int v0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 362
    .local v0, "MASK":J
    const-wide/16 v4, 0x0

    .line 363
    .local v4, "c":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_d
    if-ge v6, p0, :cond_28

    .line 365
    add-int v7, p3, v6

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-int v9, p5, v6

    aget v9, p4, v9

    int-to-long v9, v9

    and-long/2addr v9, v0

    sub-long/2addr v7, v9

    add-long/2addr v4, v7

    .line 366
    add-int v7, p7, v6

    long-to-int v8, v4

    aput v8, p6, v7

    .line 367
    const/16 v7, 0x20

    shr-long/2addr v4, v7

    .line 363
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 369
    .end local v6    # "i":I
    :cond_28
    long-to-int v2, v4

    return v2
.end method

.method public static blacklist csub(II[I[I[I)I
    .registers 16
    .param p0, "len"    # I
    .param p1, "mask"    # I
    .param p2, "x"    # [I
    .param p3, "y"    # [I
    .param p4, "z"    # [I

    .line 348
    and-int/lit8 v0, p1, 0x1

    neg-int v0, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 349
    .local v0, "MASK":J
    const-wide/16 v4, 0x0

    .line 350
    .local v4, "c":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_d
    if-ge v6, p0, :cond_22

    .line 352
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    aget v9, p3, v6

    int-to-long v9, v9

    and-long/2addr v9, v0

    sub-long/2addr v7, v9

    add-long/2addr v4, v7

    .line 353
    long-to-int v7, v4

    aput v7, p4, v6

    .line 354
    const/16 v7, 0x20

    shr-long/2addr v4, v7

    .line 350
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 356
    .end local v6    # "i":I
    :cond_22
    long-to-int v2, v4

    return v2
.end method

.method public static blacklist dec(I[I)I
    .registers 5
    .param p0, "len"    # I
    .param p1, "z"    # [I

    .line 374
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, -0x1

    if-ge v0, p0, :cond_11

    .line 376
    aget v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, p1, v0

    if-eq v2, v1, :cond_e

    .line 378
    const/4 v1, 0x0

    return v1

    .line 374
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 381
    .end local v0    # "i":I
    :cond_11
    return v1
.end method

.method public static blacklist dec(I[I[I)I
    .registers 6
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .line 386
    const/4 v0, 0x0

    .line 387
    .local v0, "i":I
    :goto_1
    const/4 v1, -0x1

    if-ge v0, p0, :cond_1a

    .line 389
    aget v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    .line 390
    .local v2, "c":I
    aput v2, p2, v0

    .line 391
    add-int/lit8 v0, v0, 0x1

    .line 392
    if-eq v2, v1, :cond_19

    .line 394
    :goto_e
    if-ge v0, p0, :cond_17

    .line 396
    aget v1, p1, v0

    aput v1, p2, v0

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 399
    :cond_17
    const/4 v1, 0x0

    return v1

    .line 401
    .end local v2    # "c":I
    :cond_19
    goto :goto_1

    .line 402
    :cond_1a
    return v1
.end method

.method public static blacklist decAt(I[II)I
    .registers 6
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zPos"    # I

    .line 408
    move v0, p2

    .local v0, "i":I
    :goto_1
    const/4 v1, -0x1

    if-ge v0, p0, :cond_11

    .line 410
    aget v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, p1, v0

    if-eq v2, v1, :cond_e

    .line 412
    const/4 v1, 0x0

    return v1

    .line 408
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 415
    .end local v0    # "i":I
    :cond_11
    return v1
.end method

.method public static blacklist decAt(I[III)I
    .registers 8
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "zPos"    # I

    .line 421
    move v0, p3

    .local v0, "i":I
    :goto_1
    const/4 v1, -0x1

    if-ge v0, p0, :cond_13

    .line 423
    add-int v2, p2, v0

    aget v3, p1, v2

    add-int/lit8 v3, v3, -0x1

    aput v3, p1, v2

    if-eq v3, v1, :cond_10

    .line 425
    const/4 v1, 0x0

    return v1

    .line 421
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 428
    .end local v0    # "i":I
    :cond_13
    return v1
.end method

.method public static blacklist diff(I[II[II[II)Z
    .registers 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .line 433
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->gte(I[II[II)Z

    move-result v0

    .line 434
    .local v0, "pos":Z
    if-eqz v0, :cond_a

    .line 436
    invoke-static/range {p0 .. p6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[II[II[II)I

    goto :goto_19

    .line 440
    :cond_a
    move-object v1, p3

    move-object p3, p1

    move-object p1, v1

    move v1, p4

    move p4, p2

    move p2, v1

    .local p1, "y":[I
    .local p2, "yOff":I
    .local p3, "x":[I
    .local p4, "xOff":I
    invoke-static/range {p0 .. p6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->sub(I[II[II[II)I

    move-object v1, p3

    move-object p3, p1

    move-object p1, v1

    move v1, p4

    move p4, p2

    move p2, v1

    .line 442
    .local p1, "x":[I
    .local p2, "xOff":I
    .local p3, "y":[I
    .local p4, "yOff":I
    :goto_19
    return v0
.end method

.method public static blacklist eq(I[I[I)Z
    .registers 6
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I

    .line 447
    add-int/lit8 v0, p0, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_f

    .line 449
    aget v1, p1, v0

    aget v2, p2, v0

    if-eq v1, v2, :cond_c

    .line 451
    const/4 v1, 0x0

    return v1

    .line 447
    :cond_c
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 454
    .end local v0    # "i":I
    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist equalTo(I[II)I
    .registers 6
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # I

    .line 459
    const/4 v0, 0x0

    aget v0, p1, v0

    xor-int/2addr v0, p2

    .line 460
    .local v0, "d":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_5
    if-ge v1, p0, :cond_d

    .line 462
    aget v2, p1, v1

    or-int/2addr v0, v2

    .line 460
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 464
    .end local v1    # "i":I
    :cond_d
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 465
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static blacklist equalTo(I[III)I
    .registers 7
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # I

    .line 470
    aget v0, p1, p2

    xor-int/2addr v0, p3

    .line 471
    .local v0, "d":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_4
    if-ge v1, p0, :cond_e

    .line 473
    add-int v2, p2, v1

    aget v2, p1, v2

    or-int/2addr v0, v2

    .line 471
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 475
    .end local v1    # "i":I
    :cond_e
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 476
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static blacklist equalTo(I[II[II)I
    .registers 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I

    .line 492
    const/4 v0, 0x0

    .line 493
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p0, :cond_11

    .line 495
    add-int v2, p2, v1

    aget v2, p1, v2

    add-int v3, p4, v1

    aget v3, p3, v3

    xor-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 493
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 497
    .end local v1    # "i":I
    :cond_11
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 498
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static blacklist equalTo(I[I[I)I
    .registers 7
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I

    .line 481
    const/4 v0, 0x0

    .line 482
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p0, :cond_d

    .line 484
    aget v2, p1, v1

    aget v3, p2, v1

    xor-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 482
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 486
    .end local v1    # "i":I
    :cond_d
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 487
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static blacklist equalToZero(I[I)I
    .registers 5
    .param p0, "len"    # I
    .param p1, "x"    # [I

    .line 503
    const/4 v0, 0x0

    .line 504
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p0, :cond_a

    .line 506
    aget v2, p1, v1

    or-int/2addr v0, v2

    .line 504
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 508
    .end local v1    # "i":I
    :cond_a
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 509
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static blacklist equalToZero(I[II)I
    .registers 6
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I

    .line 514
    const/4 v0, 0x0

    .line 515
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p0, :cond_c

    .line 517
    add-int v2, p2, v1

    aget v2, p1, v2

    or-int/2addr v0, v2

    .line 515
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 519
    .end local v1    # "i":I
    :cond_c
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 520
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static blacklist fromBigInteger(ILjava/math/BigInteger;)[I
    .registers 6
    .param p0, "bits"    # I
    .param p1, "x"    # Ljava/math/BigInteger;

    .line 525
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_27

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt v0, p0, :cond_27

    .line 530
    add-int/lit8 v0, p0, 0x1f

    shr-int/lit8 v0, v0, 0x5

    .line 531
    .local v0, "len":I
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v1

    .line 534
    .local v1, "z":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v0, :cond_26

    .line 536
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 537
    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 534
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 539
    .end local v2    # "i":I
    :cond_26
    return-object v1

    .line 527
    .end local v0    # "len":I
    .end local v1    # "z":[I
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist fromBigInteger64(ILjava/math/BigInteger;)[J
    .registers 7
    .param p0, "bits"    # I
    .param p1, "x"    # Ljava/math/BigInteger;

    .line 544
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_27

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt v0, p0, :cond_27

    .line 549
    add-int/lit8 v0, p0, 0x3f

    shr-int/lit8 v0, v0, 0x6

    .line 550
    .local v0, "len":I
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v1

    .line 553
    .local v1, "z":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v0, :cond_26

    .line 555
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 556
    const/16 v3, 0x40

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 553
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 558
    .end local v2    # "i":I
    :cond_26
    return-object v1

    .line 546
    .end local v0    # "len":I
    .end local v1    # "z":[J
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist getBit([II)I
    .registers 5
    .param p0, "x"    # [I
    .param p1, "bit"    # I

    .line 563
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 565
    aget v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    return v0

    .line 567
    :cond_8
    shr-int/lit8 v1, p1, 0x5

    .line 568
    .local v1, "w":I
    if-ltz v1, :cond_18

    array-length v2, p0

    if-lt v1, v2, :cond_10

    goto :goto_18

    .line 572
    :cond_10
    and-int/lit8 v0, p1, 0x1f

    .line 573
    .local v0, "b":I
    aget v2, p0, v1

    ushr-int/2addr v2, v0

    and-int/lit8 v2, v2, 0x1

    return v2

    .line 570
    .end local v0    # "b":I
    :cond_18
    :goto_18
    return v0
.end method

.method public static blacklist gte(I[II[II)Z
    .registers 10
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I

    .line 592
    add-int/lit8 v0, p0, -0x1

    .local v0, "i":I
    :goto_2
    const/4 v1, 0x1

    if-ltz v0, :cond_1b

    .line 594
    add-int v2, p2, v0

    aget v2, p1, v2

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 595
    .local v2, "x_i":I
    add-int v4, p4, v0

    aget v4, p3, v4

    xor-int/2addr v3, v4

    .line 596
    .local v3, "y_i":I
    if-ge v2, v3, :cond_15

    .line 597
    const/4 v1, 0x0

    return v1

    .line 598
    :cond_15
    if-le v2, v3, :cond_18

    .line 599
    return v1

    .line 592
    .end local v2    # "x_i":I
    .end local v3    # "y_i":I
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 601
    .end local v0    # "i":I
    :cond_1b
    return v1
.end method

.method public static blacklist gte(I[I[I)Z
    .registers 8
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I

    .line 578
    add-int/lit8 v0, p0, -0x1

    .local v0, "i":I
    :goto_2
    const/4 v1, 0x1

    if-ltz v0, :cond_17

    .line 580
    aget v2, p1, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    .line 581
    .local v2, "x_i":I
    aget v4, p2, v0

    xor-int/2addr v3, v4

    .line 582
    .local v3, "y_i":I
    if-ge v2, v3, :cond_11

    .line 583
    const/4 v1, 0x0

    return v1

    .line 584
    :cond_11
    if-le v2, v3, :cond_14

    .line 585
    return v1

    .line 578
    .end local v2    # "x_i":I
    .end local v3    # "y_i":I
    :cond_14
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 587
    .end local v0    # "i":I
    :cond_17
    return v1
.end method

.method public static blacklist inc(I[I)I
    .registers 5
    .param p0, "len"    # I
    .param p1, "z"    # [I

    .line 606
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x1

    if-ge v0, p0, :cond_10

    .line 608
    aget v2, p1, v0

    add-int/2addr v2, v1

    aput v2, p1, v0

    if-eqz v2, :cond_d

    .line 610
    const/4 v1, 0x0

    return v1

    .line 606
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 613
    .end local v0    # "i":I
    :cond_10
    return v1
.end method

.method public static blacklist inc(I[I[I)I
    .registers 6
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .line 618
    const/4 v0, 0x0

    .line 619
    .local v0, "i":I
    :goto_1
    const/4 v1, 0x1

    if-ge v0, p0, :cond_19

    .line 621
    aget v2, p1, v0

    add-int/2addr v2, v1

    .line 622
    .local v2, "c":I
    aput v2, p2, v0

    .line 623
    add-int/lit8 v0, v0, 0x1

    .line 624
    if-eqz v2, :cond_18

    .line 626
    :goto_d
    if-ge v0, p0, :cond_16

    .line 628
    aget v1, p1, v0

    aput v1, p2, v0

    .line 629
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 631
    :cond_16
    const/4 v1, 0x0

    return v1

    .line 633
    .end local v2    # "c":I
    :cond_18
    goto :goto_1

    .line 634
    :cond_19
    return v1
.end method

.method public static blacklist incAt(I[II)I
    .registers 6
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zPos"    # I

    .line 640
    move v0, p2

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x1

    if-ge v0, p0, :cond_10

    .line 642
    aget v2, p1, v0

    add-int/2addr v2, v1

    aput v2, p1, v0

    if-eqz v2, :cond_d

    .line 644
    const/4 v1, 0x0

    return v1

    .line 640
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 647
    .end local v0    # "i":I
    :cond_10
    return v1
.end method

.method public static blacklist incAt(I[III)I
    .registers 8
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "zPos"    # I

    .line 653
    move v0, p3

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x1

    if-ge v0, p0, :cond_12

    .line 655
    add-int v2, p2, v0

    aget v3, p1, v2

    add-int/2addr v3, v1

    aput v3, p1, v2

    if-eqz v3, :cond_f

    .line 657
    const/4 v1, 0x0

    return v1

    .line 653
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 660
    .end local v0    # "i":I
    :cond_12
    return v1
.end method

.method public static blacklist isOne(I[I)Z
    .registers 6
    .param p0, "len"    # I
    .param p1, "x"    # [I

    .line 665
    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    .line 667
    return v0

    .line 669
    :cond_7
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_8
    if-ge v1, p0, :cond_12

    .line 671
    aget v3, p1, v1

    if-eqz v3, :cond_f

    .line 673
    return v0

    .line 669
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 676
    .end local v1    # "i":I
    :cond_12
    return v2
.end method

.method public static blacklist isZero(I[I)Z
    .registers 4
    .param p0, "len"    # I
    .param p1, "x"    # [I

    .line 681
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_c

    .line 683
    aget v1, p1, v0

    if-eqz v1, :cond_9

    .line 685
    const/4 v1, 0x0

    return v1

    .line 681
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 688
    .end local v0    # "i":I
    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist lessThan(I[II[II)I
    .registers 14
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I

    .line 705
    const-wide/16 v0, 0x0

    .line 706
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, p0, :cond_1e

    .line 708
    add-int v3, p2, v2

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

    .line 709
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 706
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 712
    .end local v2    # "i":I
    :cond_1e
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist lessThan(I[I[I)I
    .registers 12
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I

    .line 693
    const-wide/16 v0, 0x0

    .line 694
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
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

    .line 697
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 694
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 700
    .end local v2    # "i":I
    :cond_1a
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist mul(I[II[II[II)V
    .registers 14
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "zz"    # [I
    .param p6, "zzOff"    # I

    .line 727
    add-int v0, p6, p0

    aget v2, p1, p2

    move v1, p0

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    .end local p0    # "len":I
    .end local p3    # "y":[I
    .end local p4    # "yOff":I
    .end local p5    # "zz":[I
    .end local p6    # "zzOff":I
    .local v1, "len":I
    .local v3, "y":[I
    .local v4, "yOff":I
    .local v5, "zz":[I
    .local v6, "zzOff":I
    invoke-static/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWord(II[II[II)I

    move-result p0

    move p3, v6

    .end local v6    # "zzOff":I
    .local p3, "zzOff":I
    aput p0, v5, v0

    .line 729
    const/4 p0, 0x1

    .local p0, "i":I
    :goto_11
    if-ge p0, v1, :cond_25

    .line 731
    add-int p6, p3, p0

    add-int/2addr p6, v1

    add-int p4, p2, p0

    aget v2, p1, p4

    add-int v6, p3, p0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result p4

    aput p4, v5, p6

    .line 729
    add-int/lit8 p0, p0, 0x1

    goto :goto_11

    .line 733
    .end local p0    # "i":I
    :cond_25
    return-void
.end method

.method public static blacklist mul(I[I[I[I)V
    .registers 11
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "zz"    # [I

    .line 717
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {p0, v0, p2, p3}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWord(II[I[I)I

    move-result v0

    aput v0, p3, p0

    .line 719
    const/4 v0, 0x1

    move v6, v0

    .local v6, "i":I
    :goto_b
    if-ge v6, p0, :cond_1f

    .line 721
    add-int v0, v6, p0

    aget v2, p1, v6

    const/4 v4, 0x0

    move v1, p0

    move-object v3, p2

    move-object v5, p3

    .end local p0    # "len":I
    .end local p2    # "y":[I
    .end local p3    # "zz":[I
    .local v1, "len":I
    .local v3, "y":[I
    .local v5, "zz":[I
    invoke-static/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result p0

    aput p0, v5, v0

    .line 719
    add-int/lit8 v6, v6, 0x1

    move p0, v1

    goto :goto_b

    .line 723
    .end local v1    # "len":I
    .end local v3    # "y":[I
    .end local v5    # "zz":[I
    .end local v6    # "i":I
    .restart local p0    # "len":I
    .restart local p2    # "y":[I
    .restart local p3    # "zz":[I
    :cond_1f
    return-void
.end method

.method public static blacklist mul([III[III[II)V
    .registers 15
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "xLen"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "yLen"    # I
    .param p6, "zz"    # [I
    .param p7, "zzOff"    # I

    .line 737
    add-int v0, p7, p5

    aget v2, p0, p1

    move-object v3, p3

    move v4, p4

    move v1, p5

    move-object v5, p6

    move v6, p7

    .end local p3    # "y":[I
    .end local p4    # "yOff":I
    .end local p5    # "yLen":I
    .end local p6    # "zz":[I
    .end local p7    # "zzOff":I
    .local v1, "yLen":I
    .local v3, "y":[I
    .local v4, "yOff":I
    .local v5, "zz":[I
    .local v6, "zzOff":I
    invoke-static/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWord(II[II[II)I

    move-result p3

    move p4, v6

    .end local v6    # "zzOff":I
    .local p4, "zzOff":I
    aput p3, v5, v0

    .line 739
    const/4 p3, 0x1

    .local p3, "i":I
    :goto_11
    if-ge p3, p2, :cond_25

    .line 741
    add-int p7, p4, p3

    add-int/2addr p7, v1

    add-int p5, p1, p3

    aget v2, p0, p5

    add-int v6, p4, p3

    invoke-static/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result p5

    aput p5, v5, p7

    .line 739
    add-int/lit8 p3, p3, 0x1

    goto :goto_11

    .line 743
    .end local p3    # "i":I
    :cond_25
    return-void
.end method

.method public static blacklist mul31BothAdd(II[II[I[II)I
    .registers 22
    .param p0, "len"    # I
    .param p1, "a"    # I
    .param p2, "x"    # [I
    .param p3, "b"    # I
    .param p4, "y"    # [I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .line 774
    const-wide/16 v0, 0x0

    move/from16 v2, p1

    .local v0, "c":J
    int-to-long v3, v2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    move/from16 v7, p3

    .local v3, "aVal":J
    int-to-long v8, v7

    and-long/2addr v8, v5

    .line 775
    .local v8, "bVal":J
    const/4 v10, 0x0

    .line 778
    .local v10, "i":I
    :cond_10
    aget v11, p2, v10

    int-to-long v11, v11

    and-long/2addr v11, v5

    mul-long/2addr v11, v3

    aget v13, p4, v10

    int-to-long v13, v13

    and-long/2addr v13, v5

    mul-long/2addr v13, v8

    add-long/2addr v11, v13

    add-int v13, p6, v10

    aget v13, p5, v13

    int-to-long v13, v13

    and-long/2addr v13, v5

    add-long/2addr v11, v13

    add-long/2addr v0, v11

    .line 779
    add-int v11, p6, v10

    long-to-int v12, v0

    aput v12, p5, v11

    .line 780
    const/16 v11, 0x20

    ushr-long/2addr v0, v11

    .line 782
    add-int/lit8 v10, v10, 0x1

    if-lt v10, p0, :cond_10

    .line 783
    long-to-int v5, v0

    return v5
.end method

.method public static blacklist mulAddTo(I[II[II[II)I
    .registers 16
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "zz"    # [I
    .param p6, "zzOff"    # I

    .line 760
    const-wide/16 v0, 0x0

    .line 761
    .local v0, "zc":J
    const/4 v2, 0x0

    move v8, p6

    .end local p6    # "zzOff":I
    .local v2, "i":I
    .local v8, "zzOff":I
    :goto_4
    if-ge v2, p0, :cond_32

    .line 763
    add-int p6, p2, v2

    aget v4, p1, p6

    move v3, p0

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    .end local p0    # "len":I
    .end local p3    # "y":[I
    .end local p4    # "yOff":I
    .end local p5    # "zz":[I
    .local v3, "len":I
    .local v5, "y":[I
    .local v6, "yOff":I
    .local v7, "zz":[I
    invoke-static/range {v3 .. v8}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result p0

    int-to-long p3, p0

    const-wide p5, 0xffffffffL

    and-long/2addr p3, p5

    add-long/2addr v0, p3

    .line 764
    add-int p0, v8, v3

    aget p0, v7, p0

    int-to-long p3, p0

    and-long/2addr p3, p5

    add-long/2addr v0, p3

    .line 765
    add-int p0, v8, v3

    long-to-int p3, v0

    aput p3, v7, p0

    .line 766
    const/16 p0, 0x20

    ushr-long/2addr v0, p0

    .line 767
    add-int/lit8 v8, v8, 0x1

    .line 761
    add-int/lit8 v2, v2, 0x1

    move p0, v3

    move-object p3, v5

    move p4, v6

    move-object p5, v7

    goto :goto_4

    .end local v3    # "len":I
    .end local v5    # "y":[I
    .end local v6    # "yOff":I
    .end local v7    # "zz":[I
    .restart local p0    # "len":I
    .restart local p3    # "y":[I
    .restart local p4    # "yOff":I
    .restart local p5    # "zz":[I
    :cond_32
    move v3, p0

    .line 769
    .end local v2    # "i":I
    .end local p0    # "len":I
    .restart local v3    # "len":I
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist mulAddTo(I[I[I[I)I
    .registers 14
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "zz"    # [I

    .line 747
    const-wide/16 v0, 0x0

    .line 748
    .local v0, "zc":J
    const/4 v2, 0x0

    move v7, v2

    .local v7, "i":I
    :goto_4
    if-ge v7, p0, :cond_2d

    .line 750
    aget v3, p1, v7

    const/4 v5, 0x0

    move v2, p0

    move-object v4, p2

    move-object v6, p3

    .end local p0    # "len":I
    .end local p2    # "y":[I
    .end local p3    # "zz":[I
    .local v2, "len":I
    .local v4, "y":[I
    .local v6, "zz":[I
    invoke-static/range {v2 .. v7}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result p0

    int-to-long p2, p0

    const-wide v8, 0xffffffffL

    and-long/2addr p2, v8

    add-long/2addr v0, p2

    .line 751
    add-int p0, v7, v2

    aget p0, v6, p0

    int-to-long p2, p0

    and-long/2addr p2, v8

    add-long/2addr v0, p2

    .line 752
    add-int p0, v7, v2

    long-to-int p2, v0

    aput p2, v6, p0

    .line 753
    const/16 p0, 0x20

    ushr-long/2addr v0, p0

    .line 748
    add-int/lit8 v7, v7, 0x1

    move p0, v2

    move-object p2, v4

    move-object p3, v6

    goto :goto_4

    .end local v2    # "len":I
    .end local v4    # "y":[I
    .end local v6    # "zz":[I
    .restart local p0    # "len":I
    .restart local p2    # "y":[I
    .restart local p3    # "zz":[I
    :cond_2d
    move v2, p0

    .line 755
    .end local v7    # "i":I
    .end local p0    # "len":I
    .restart local v2    # "len":I
    long-to-int p0, v0

    return p0
.end method

.method public static blacklist mulWord(II[II[II)I
    .registers 15
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .line 802
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 803
    .local v2, "xVal":J
    const/4 v6, 0x0

    .line 806
    .local v6, "i":I
    :cond_a
    add-int v7, p3, v6

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-long/2addr v0, v7

    .line 807
    add-int v7, p5, v6

    long-to-int v8, v0

    aput v8, p4, v7

    .line 808
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 810
    add-int/lit8 v6, v6, 0x1

    if-lt v6, p0, :cond_a

    .line 811
    long-to-int v4, v0

    return v4
.end method

.method public static blacklist mulWord(II[I[I)I
    .registers 13
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    .line 788
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 789
    .local v2, "xVal":J
    const/4 v6, 0x0

    .line 792
    .local v6, "i":I
    :cond_a
    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-long/2addr v0, v7

    .line 793
    long-to-int v7, v0

    aput v7, p3, v6

    .line 794
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 796
    add-int/lit8 v6, v6, 0x1

    if-lt v6, p0, :cond_a

    .line 797
    long-to-int v4, v0

    return v4
.end method

.method public static blacklist mulWordAddTo(II[II[II)I
    .registers 17
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .line 816
    const-wide/16 v0, 0x0

    .local v0, "c":J
    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 817
    .local v2, "xVal":J
    const/4 v6, 0x0

    .line 820
    .local v6, "i":I
    :cond_a
    add-int v7, p3, v6

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int v9, p5, v6

    aget v9, p4, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 821
    add-int v7, p5, v6

    long-to-int v8, v0

    aput v8, p4, v7

    .line 822
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 824
    add-int/lit8 v6, v6, 0x1

    if-lt v6, p0, :cond_a

    .line 825
    long-to-int v4, v0

    return v4
.end method

.method public static blacklist mulWordDwordAddAt(IIJ[II)I
    .registers 18
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "y"    # J
    .param p4, "z"    # [I
    .param p5, "zPos"    # I

    .line 831
    move-object/from16 v0, p4

    const-wide/16 v1, 0x0

    .local v1, "c":J
    int-to-long v3, p1

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 832
    .local v3, "xVal":J
    and-long v7, p2, v5

    mul-long/2addr v7, v3

    add-int/lit8 v9, p5, 0x0

    aget v9, v0, v9

    int-to-long v9, v9

    and-long/2addr v9, v5

    add-long/2addr v7, v9

    add-long/2addr v1, v7

    .line 833
    add-int/lit8 v7, p5, 0x0

    long-to-int v8, v1

    aput v8, v0, v7

    .line 834
    const/16 v7, 0x20

    ushr-long/2addr v1, v7

    .line 835
    ushr-long v8, p2, v7

    mul-long/2addr v8, v3

    add-int/lit8 v10, p5, 0x1

    aget v10, v0, v10

    int-to-long v10, v10

    and-long/2addr v10, v5

    add-long/2addr v8, v10

    add-long/2addr v1, v8

    .line 836
    add-int/lit8 v8, p5, 0x1

    long-to-int v9, v1

    aput v9, v0, v8

    .line 837
    ushr-long/2addr v1, v7

    .line 838
    add-int/lit8 v8, p5, 0x2

    aget v8, v0, v8

    int-to-long v8, v8

    and-long/2addr v5, v8

    add-long/2addr v1, v5

    .line 839
    add-int/lit8 v5, p5, 0x2

    long-to-int v6, v1

    aput v6, v0, v5

    .line 840
    ushr-long/2addr v1, v7

    .line 841
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-nez v5, :cond_44

    const/4 v5, 0x0

    goto :goto_4a

    :cond_44
    add-int/lit8 v5, p5, 0x3

    invoke-static {p0, v0, v5}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v5

    :goto_4a
    return v5
.end method

.method public static blacklist shiftDownBit(I[II)I
    .registers 7
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "c"    # I

    .line 846
    move v0, p0

    .line 847
    .local v0, "i":I
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_10

    .line 849
    aget v1, p1, v0

    .line 850
    .local v1, "next":I
    ushr-int/lit8 v2, v1, 0x1

    shl-int/lit8 v3, p2, 0x1f

    or-int/2addr v2, v3

    aput v2, p1, v0

    .line 851
    move p2, v1

    .line 852
    .end local v1    # "next":I
    goto :goto_1

    .line 853
    :cond_10
    shl-int/lit8 v1, p2, 0x1f

    return v1
.end method

.method public static blacklist shiftDownBit(I[III)I
    .registers 9
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "c"    # I

    .line 858
    move v0, p0

    .line 859
    .local v0, "i":I
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_14

    .line 861
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 862
    .local v1, "next":I
    add-int v2, p2, v0

    ushr-int/lit8 v3, v1, 0x1

    shl-int/lit8 v4, p3, 0x1f

    or-int/2addr v3, v4

    aput v3, p1, v2

    .line 863
    move p3, v1

    .line 864
    .end local v1    # "next":I
    goto :goto_1

    .line 865
    :cond_14
    shl-int/lit8 v1, p3, 0x1f

    return v1
.end method

.method public static blacklist shiftDownBit(I[III[II)I
    .registers 11
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "c"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .line 882
    move v0, p0

    .line 883
    .local v0, "i":I
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_14

    .line 885
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 886
    .local v1, "next":I
    add-int v2, p5, v0

    ushr-int/lit8 v3, v1, 0x1

    shl-int/lit8 v4, p3, 0x1f

    or-int/2addr v3, v4

    aput v3, p4, v2

    .line 887
    move p3, v1

    .line 888
    .end local v1    # "next":I
    goto :goto_1

    .line 889
    :cond_14
    shl-int/lit8 v1, p3, 0x1f

    return v1
.end method

.method public static blacklist shiftDownBit(I[II[I)I
    .registers 8
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "c"    # I
    .param p3, "z"    # [I

    .line 870
    move v0, p0

    .line 871
    .local v0, "i":I
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_10

    .line 873
    aget v1, p1, v0

    .line 874
    .local v1, "next":I
    ushr-int/lit8 v2, v1, 0x1

    shl-int/lit8 v3, p2, 0x1f

    or-int/2addr v2, v3

    aput v2, p3, v0

    .line 875
    move p2, v1

    .line 876
    .end local v1    # "next":I
    goto :goto_1

    .line 877
    :cond_10
    shl-int/lit8 v1, p2, 0x1f

    return v1
.end method

.method public static blacklist shiftDownBits(I[III)I
    .registers 8
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "bits"    # I
    .param p3, "c"    # I

    .line 895
    move v0, p0

    .line 896
    .local v0, "i":I
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_11

    .line 898
    aget v1, p1, v0

    .line 899
    .local v1, "next":I
    ushr-int v2, v1, p2

    neg-int v3, p2

    shl-int v3, p3, v3

    or-int/2addr v2, v3

    aput v2, p1, v0

    .line 900
    move p3, v1

    .line 901
    .end local v1    # "next":I
    goto :goto_1

    .line 902
    :cond_11
    neg-int v1, p2

    shl-int v1, p3, v1

    return v1
.end method

.method public static blacklist shiftDownBits(I[IIII)I
    .registers 10
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # I

    .line 908
    move v0, p0

    .line 909
    .local v0, "i":I
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_15

    .line 911
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 912
    .local v1, "next":I
    add-int v2, p2, v0

    ushr-int v3, v1, p3

    neg-int v4, p3

    shl-int v4, p4, v4

    or-int/2addr v3, v4

    aput v3, p1, v2

    .line 913
    move p4, v1

    .line 914
    .end local v1    # "next":I
    goto :goto_1

    .line 915
    :cond_15
    neg-int v1, p3

    shl-int v1, p4, v1

    return v1
.end method

.method public static blacklist shiftDownBits(I[IIII[II)I
    .registers 12
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .line 934
    move v0, p0

    .line 935
    .local v0, "i":I
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_15

    .line 937
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 938
    .local v1, "next":I
    add-int v2, p6, v0

    ushr-int v3, v1, p3

    neg-int v4, p3

    shl-int v4, p4, v4

    or-int/2addr v3, v4

    aput v3, p5, v2

    .line 939
    move p4, v1

    .line 940
    .end local v1    # "next":I
    goto :goto_1

    .line 941
    :cond_15
    neg-int v1, p3

    shl-int v1, p4, v1

    return v1
.end method

.method public static blacklist shiftDownBits(I[III[I)I
    .registers 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "bits"    # I
    .param p3, "c"    # I
    .param p4, "z"    # [I

    .line 921
    move v0, p0

    .line 922
    .local v0, "i":I
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_11

    .line 924
    aget v1, p1, v0

    .line 925
    .local v1, "next":I
    ushr-int v2, v1, p2

    neg-int v3, p2

    shl-int v3, p3, v3

    or-int/2addr v2, v3

    aput v2, p4, v0

    .line 926
    move p3, v1

    .line 927
    .end local v1    # "next":I
    goto :goto_1

    .line 928
    :cond_11
    neg-int v1, p2

    shl-int v1, p3, v1

    return v1
.end method

.method public static blacklist shiftDownWord(I[II)I
    .registers 5
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "c"    # I

    .line 946
    move v0, p0

    .line 947
    .local v0, "i":I
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_b

    .line 949
    aget v1, p1, v0

    .line 950
    .local v1, "next":I
    aput p2, p1, v0

    .line 951
    move p2, v1

    .line 952
    .end local v1    # "next":I
    goto :goto_1

    .line 953
    :cond_b
    return p2
.end method

.method public static blacklist shiftUpBit(I[II)I
    .registers 7
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "c"    # I

    .line 958
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_10

    .line 960
    aget v1, p1, v0

    .line 961
    .local v1, "next":I
    shl-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p2, 0x1f

    or-int/2addr v2, v3

    aput v2, p1, v0

    .line 962
    move p2, v1

    .line 958
    .end local v1    # "next":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 964
    .end local v0    # "i":I
    :cond_10
    ushr-int/lit8 v0, p2, 0x1f

    return v0
.end method

.method public static blacklist shiftUpBit(I[III)I
    .registers 9
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "c"    # I

    .line 969
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_14

    .line 971
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 972
    .local v1, "next":I
    add-int v2, p2, v0

    shl-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, p3, 0x1f

    or-int/2addr v3, v4

    aput v3, p1, v2

    .line 973
    move p3, v1

    .line 969
    .end local v1    # "next":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 975
    .end local v0    # "i":I
    :cond_14
    ushr-int/lit8 v0, p3, 0x1f

    return v0
.end method

.method public static blacklist shiftUpBit(I[III[II)I
    .registers 11
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "c"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    .line 991
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_14

    .line 993
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 994
    .local v1, "next":I
    add-int v2, p5, v0

    shl-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, p3, 0x1f

    or-int/2addr v3, v4

    aput v3, p4, v2

    .line 995
    move p3, v1

    .line 991
    .end local v1    # "next":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 997
    .end local v0    # "i":I
    :cond_14
    ushr-int/lit8 v0, p3, 0x1f

    return v0
.end method

.method public static blacklist shiftUpBit(I[II[I)I
    .registers 8
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "c"    # I
    .param p3, "z"    # [I

    .line 980
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_10

    .line 982
    aget v1, p1, v0

    .line 983
    .local v1, "next":I
    shl-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p2, 0x1f

    or-int/2addr v2, v3

    aput v2, p3, v0

    .line 984
    move p2, v1

    .line 980
    .end local v1    # "next":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 986
    .end local v0    # "i":I
    :cond_10
    ushr-int/lit8 v0, p2, 0x1f

    return v0
.end method

.method public static blacklist shiftUpBit64(I[JIJ[JI)J
    .registers 16
    .param p0, "len"    # I
    .param p1, "x"    # [J
    .param p2, "xOff"    # I
    .param p3, "c"    # J
    .param p5, "z"    # [J
    .param p6, "zOff"    # I

    .line 1002
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x3f

    if-ge v0, p0, :cond_17

    .line 1004
    add-int v2, p2, v0

    aget-wide v2, p1, v2

    .line 1005
    .local v2, "next":J
    add-int v4, p6, v0

    const/4 v5, 0x1

    shl-long v5, v2, v5

    ushr-long v7, p3, v1

    or-long/2addr v5, v7

    aput-wide v5, p5, v4

    .line 1006
    move-wide p3, v2

    .line 1002
    .end local v2    # "next":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1008
    .end local v0    # "i":I
    :cond_17
    ushr-long v0, p3, v1

    return-wide v0
.end method

.method public static blacklist shiftUpBits(I[III)I
    .registers 8
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "bits"    # I
    .param p3, "c"    # I

    .line 1014
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_11

    .line 1016
    aget v1, p1, v0

    .line 1017
    .local v1, "next":I
    shl-int v2, v1, p2

    neg-int v3, p2

    ushr-int v3, p3, v3

    or-int/2addr v2, v3

    aput v2, p1, v0

    .line 1018
    move p3, v1

    .line 1014
    .end local v1    # "next":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1020
    .end local v0    # "i":I
    :cond_11
    neg-int v0, p2

    ushr-int v0, p3, v0

    return v0
.end method

.method public static blacklist shiftUpBits(I[IIII)I
    .registers 10
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # I

    .line 1026
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_15

    .line 1028
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 1029
    .local v1, "next":I
    add-int v2, p2, v0

    shl-int v3, v1, p3

    neg-int v4, p3

    ushr-int v4, p4, v4

    or-int/2addr v3, v4

    aput v3, p1, v2

    .line 1030
    move p4, v1

    .line 1026
    .end local v1    # "next":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1032
    .end local v0    # "i":I
    :cond_15
    neg-int v0, p3

    ushr-int v0, p4, v0

    return v0
.end method

.method public static blacklist shiftUpBits(I[IIII[II)I
    .registers 12
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .line 1062
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_15

    .line 1064
    add-int v1, p2, v0

    aget v1, p1, v1

    .line 1065
    .local v1, "next":I
    add-int v2, p6, v0

    shl-int v3, v1, p3

    neg-int v4, p3

    ushr-int v4, p4, v4

    or-int/2addr v3, v4

    aput v3, p5, v2

    .line 1066
    move p4, v1

    .line 1062
    .end local v1    # "next":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1068
    .end local v0    # "i":I
    :cond_15
    neg-int v0, p3

    ushr-int v0, p4, v0

    return v0
.end method

.method public static blacklist shiftUpBits(I[III[I)I
    .registers 9
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "bits"    # I
    .param p3, "c"    # I
    .param p4, "z"    # [I

    .line 1050
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_11

    .line 1052
    aget v1, p1, v0

    .line 1053
    .local v1, "next":I
    shl-int v2, v1, p2

    neg-int v3, p2

    ushr-int v3, p3, v3

    or-int/2addr v2, v3

    aput v2, p4, v0

    .line 1054
    move p3, v1

    .line 1050
    .end local v1    # "next":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1056
    .end local v0    # "i":I
    :cond_11
    neg-int v0, p2

    ushr-int v0, p3, v0

    return v0
.end method

.method public static blacklist shiftUpBits64(I[JIIJ)J
    .registers 14
    .param p0, "len"    # I
    .param p1, "z"    # [J
    .param p2, "zOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # J

    .line 1038
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_15

    .line 1040
    add-int v1, p2, v0

    aget-wide v1, p1, v1

    .line 1041
    .local v1, "next":J
    add-int v3, p2, v0

    shl-long v4, v1, p3

    neg-int v6, p3

    ushr-long v6, p4, v6

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    .line 1042
    move-wide p4, v1

    .line 1038
    .end local v1    # "next":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1044
    .end local v0    # "i":I
    :cond_15
    neg-int v0, p3

    ushr-long v0, p4, v0

    return-wide v0
.end method

.method public static blacklist shiftUpBits64(I[JIIJ[JI)J
    .registers 16
    .param p0, "len"    # I
    .param p1, "x"    # [J
    .param p2, "xOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # J
    .param p6, "z"    # [J
    .param p7, "zOff"    # I

    .line 1074
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_15

    .line 1076
    add-int v1, p2, v0

    aget-wide v1, p1, v1

    .line 1077
    .local v1, "next":J
    add-int v3, p7, v0

    shl-long v4, v1, p3

    neg-int v6, p3

    ushr-long v6, p4, v6

    or-long/2addr v4, v6

    aput-wide v4, p6, v3

    .line 1078
    move-wide p4, v1

    .line 1074
    .end local v1    # "next":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1080
    .end local v0    # "i":I
    :cond_15
    neg-int v0, p3

    ushr-long v0, p4, v0

    return-wide v0
.end method

.method public static blacklist square(I[II[II)V
    .registers 25
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "zz"    # [I
    .param p4, "zzOff"    # I

    .line 1116
    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    shl-int/lit8 v5, v0, 0x1

    .line 1117
    .local v5, "extLen":I
    const/4 v6, 0x0

    .line 1118
    .local v6, "c":I
    move/from16 v7, p0

    .local v7, "j":I
    move v8, v5

    .line 1121
    .local v8, "k":I
    :goto_10
    add-int/lit8 v7, v7, -0x1

    add-int v9, v2, v7

    aget v9, v1, v9

    int-to-long v9, v9

    const-wide v11, 0xffffffffL

    and-long/2addr v9, v11

    .line 1122
    .local v9, "xVal":J
    mul-long v13, v9, v9

    .line 1123
    .local v13, "p":J
    add-int/lit8 v8, v8, -0x1

    add-int v15, v4, v8

    shl-int/lit8 v16, v6, 0x1f

    const/16 v17, 0x21

    move-wide/from16 v18, v11

    ushr-long v11, v13, v17

    long-to-int v11, v11

    or-int v11, v16, v11

    aput v11, v3, v15

    .line 1124
    add-int/lit8 v8, v8, -0x1

    add-int v11, v4, v8

    const/4 v12, 0x1

    move v15, v6

    move/from16 v16, v7

    .end local v6    # "c":I
    .end local v7    # "j":I
    .local v15, "c":I
    .local v16, "j":I
    ushr-long v6, v13, v12

    long-to-int v6, v6

    aput v6, v3, v11

    .line 1125
    long-to-int v6, v13

    .line 1127
    .end local v9    # "xVal":J
    .end local v13    # "p":J
    .end local v15    # "c":I
    .restart local v6    # "c":I
    if-gtz v16, :cond_75

    .line 1129
    const-wide/16 v9, 0x0

    .line 1130
    .local v9, "d":J
    add-int/lit8 v7, v4, 0x2

    .line 1132
    .local v7, "zzPos":I
    const/4 v11, 0x1

    .local v11, "i":I
    :goto_45
    if-ge v11, v0, :cond_6d

    .line 1134
    invoke-static {v1, v2, v11, v3, v4}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->squareWordAddTo([III[II)I

    move-result v12

    int-to-long v12, v12

    and-long v12, v12, v18

    add-long/2addr v9, v12

    .line 1135
    aget v12, v3, v7

    int-to-long v12, v12

    and-long v12, v12, v18

    add-long/2addr v9, v12

    .line 1136
    add-int/lit8 v12, v7, 0x1

    .end local v7    # "zzPos":I
    .local v12, "zzPos":I
    long-to-int v13, v9

    aput v13, v3, v7

    const/16 v7, 0x20

    ushr-long/2addr v9, v7

    .line 1137
    aget v13, v3, v12

    int-to-long v13, v13

    and-long v13, v13, v18

    add-long/2addr v9, v13

    .line 1138
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "zzPos":I
    .local v13, "zzPos":I
    long-to-int v14, v9

    aput v14, v3, v12

    ushr-long/2addr v9, v7

    .line 1132
    add-int/lit8 v11, v11, 0x1

    move v7, v13

    goto :goto_45

    .line 1142
    .end local v11    # "i":I
    .end local v13    # "zzPos":I
    .restart local v7    # "zzPos":I
    :cond_6d
    aget v11, v1, v2

    shl-int/lit8 v11, v11, 0x1f

    invoke-static {v5, v3, v4, v11}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[III)I

    .line 1143
    return-void

    .line 1127
    .end local v7    # "zzPos":I
    .end local v9    # "d":J
    :cond_75
    move/from16 v7, v16

    goto :goto_10
.end method

.method public static blacklist square(I[I[I)V
    .registers 16
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "zz"    # [I

    .line 1085
    shl-int/lit8 v0, p0, 0x1

    .line 1086
    .local v0, "extLen":I
    const/4 v1, 0x0

    .line 1087
    .local v1, "c":I
    move v2, p0

    .local v2, "j":I
    move v3, v0

    .line 1090
    .local v3, "k":I
    :cond_5
    add-int/lit8 v2, v2, -0x1

    aget v4, p1, v2

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    .line 1091
    .local v4, "xVal":J
    mul-long v8, v4, v4

    .line 1092
    .local v8, "p":J
    add-int/lit8 v3, v3, -0x1

    shl-int/lit8 v10, v1, 0x1f

    const/16 v11, 0x21

    ushr-long v11, v8, v11

    long-to-int v11, v11

    or-int/2addr v10, v11

    aput v10, p2, v3

    .line 1093
    add-int/lit8 v3, v3, -0x1

    const/4 v10, 0x1

    ushr-long v10, v8, v10

    long-to-int v10, v10

    aput v10, p2, v3

    .line 1094
    long-to-int v1, v8

    .line 1096
    .end local v4    # "xVal":J
    .end local v8    # "p":J
    if-gtz v2, :cond_5

    .line 1098
    const-wide/16 v4, 0x0

    .line 1099
    .local v4, "d":J
    const/4 v8, 0x2

    .line 1101
    .local v8, "zzPos":I
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_2d
    if-ge v9, p0, :cond_52

    .line 1103
    invoke-static {p1, v9, p2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->squareWordAddTo([II[I)I

    move-result v10

    int-to-long v10, v10

    and-long/2addr v10, v6

    add-long/2addr v4, v10

    .line 1104
    aget v10, p2, v8

    int-to-long v10, v10

    and-long/2addr v10, v6

    add-long/2addr v4, v10

    .line 1105
    add-int/lit8 v10, v8, 0x1

    .end local v8    # "zzPos":I
    .local v10, "zzPos":I
    long-to-int v11, v4

    aput v11, p2, v8

    const/16 v8, 0x20

    ushr-long/2addr v4, v8

    .line 1106
    aget v11, p2, v10

    int-to-long v11, v11

    and-long/2addr v11, v6

    add-long/2addr v4, v11

    .line 1107
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "zzPos":I
    .local v11, "zzPos":I
    long-to-int v12, v4

    aput v12, p2, v10

    ushr-long/2addr v4, v8

    .line 1101
    add-int/lit8 v9, v9, 0x1

    move v8, v11

    goto :goto_2d

    .line 1111
    .end local v9    # "i":I
    .end local v11    # "zzPos":I
    .restart local v8    # "zzPos":I
    :cond_52
    const/4 v6, 0x0

    aget v6, p1, v6

    shl-int/lit8 v6, v6, 0x1f

    invoke-static {v0, p2, v6}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II)I

    .line 1112
    return-void
.end method

.method public static blacklist squareWordAddTo([III[II)I
    .registers 16
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "xPos"    # I
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 1161
    const-wide/16 v0, 0x0

    .local v0, "c":J
    add-int v2, p1, p2

    aget v2, p0, v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 1162
    .local v2, "xVal":J
    const/4 v6, 0x0

    .line 1165
    .local v6, "i":I
    :cond_e
    add-int v7, p1, v6

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int v9, p2, p4

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1166
    add-int v7, p2, p4

    long-to-int v8, v0

    aput v8, p3, v7

    .line 1167
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 1168
    add-int/lit8 p4, p4, 0x1

    .line 1170
    add-int/lit8 v6, v6, 0x1

    if-lt v6, p2, :cond_e

    .line 1171
    long-to-int v4, v0

    return v4
.end method

.method public static blacklist squareWordAddTo([II[I)I
    .registers 14
    .param p0, "x"    # [I
    .param p1, "xPos"    # I
    .param p2, "z"    # [I

    .line 1147
    const-wide/16 v0, 0x0

    .local v0, "c":J
    aget v2, p0, p1

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 1148
    .local v2, "xVal":J
    const/4 v6, 0x0

    .line 1151
    .local v6, "i":I
    :cond_c
    aget v7, p0, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    mul-long/2addr v7, v2

    add-int v9, p1, v6

    aget v9, p2, v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    add-long/2addr v0, v7

    .line 1152
    add-int v7, p1, v6

    long-to-int v8, v0

    aput v8, p2, v7

    .line 1153
    const/16 v7, 0x20

    ushr-long/2addr v0, v7

    .line 1155
    add-int/lit8 v6, v6, 0x1

    if-lt v6, p1, :cond_c

    .line 1156
    long-to-int v4, v0

    return v4
.end method

.method public static blacklist sub(I[II[II[II)I
    .registers 16
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .line 1188
    const-wide/16 v0, 0x0

    .line 1189
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, p0, :cond_23

    .line 1191
    add-int v3, p2, v2

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

    .line 1192
    add-int v3, p6, v2

    long-to-int v4, v0

    aput v4, p5, v3

    .line 1193
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 1189
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1195
    .end local v2    # "i":I
    :cond_23
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist sub(I[I[I[I)I
    .registers 13
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    .line 1176
    const-wide/16 v0, 0x0

    .line 1177
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
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

    .line 1180
    long-to-int v3, v0

    aput v3, p3, v2

    .line 1181
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 1177
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1183
    .end local v2    # "i":I
    :cond_1d
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist sub33At(II[II)I
    .registers 11
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zPos"    # I

    .line 1201
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    sub-long/2addr v0, v4

    .line 1202
    .local v0, "c":J
    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    .line 1203
    const/16 v4, 0x20

    shr-long/2addr v0, v4

    .line 1204
    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 1205
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1206
    shr-long/2addr v0, v4

    .line 1207
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2e

    const/4 v2, 0x0

    goto :goto_34

    :cond_2e
    add-int/lit8 v2, p3, 0x2

    invoke-static {p0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v2

    :goto_34
    return v2
.end method

.method public static blacklist sub33At(II[III)I
    .registers 12
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .param p4, "zPos"    # I

    .line 1213
    add-int v0, p3, p4

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    sub-long/2addr v0, v4

    .line 1214
    .local v0, "c":J
    add-int v4, p3, p4

    long-to-int v5, v0

    aput v5, p2, v4

    .line 1215
    const/16 v4, 0x20

    shr-long/2addr v0, v4

    .line 1216
    add-int v5, p3, p4

    add-int/lit8 v5, v5, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 1217
    add-int v2, p3, p4

    add-int/lit8 v2, v2, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1218
    shr-long/2addr v0, v4

    .line 1219
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_32

    const/4 v2, 0x0

    goto :goto_38

    :cond_32
    add-int/lit8 v2, p4, 0x2

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_38
    return v2
.end method

.method public static blacklist sub33From(II[I)I
    .registers 12
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I

    .line 1224
    const/4 v0, 0x0

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    .line 1225
    .local v1, "c":J
    long-to-int v5, v1

    aput v5, p2, v0

    .line 1226
    const/16 v5, 0x20

    shr-long/2addr v1, v5

    .line 1227
    const/4 v6, 0x1

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v3, v7

    const-wide/16 v7, 0x1

    sub-long/2addr v3, v7

    add-long/2addr v1, v3

    .line 1228
    long-to-int v3, v1

    aput v3, p2, v6

    .line 1229
    shr-long/2addr v1, v5

    .line 1230
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_27

    goto :goto_2c

    :cond_27
    const/4 v0, 0x2

    invoke-static {p0, p2, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v0

    :goto_2c
    return v0
.end method

.method public static blacklist sub33From(II[II)I
    .registers 11
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .line 1235
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v4, v2

    sub-long/2addr v0, v4

    .line 1236
    .local v0, "c":J
    add-int/lit8 v4, p3, 0x0

    long-to-int v5, v0

    aput v5, p2, v4

    .line 1237
    const/16 v4, 0x20

    shr-long/2addr v0, v4

    .line 1238
    add-int/lit8 v5, p3, 0x1

    aget v5, p2, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 1239
    add-int/lit8 v2, p3, 0x1

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1240
    shr-long/2addr v0, v4

    .line 1241
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2e

    const/4 v2, 0x0

    goto :goto_33

    :cond_2e
    const/4 v2, 0x2

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_33
    return v2
.end method

.method public static blacklist subBothFrom(I[II[II[II)I
    .registers 16
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    .line 1258
    const-wide/16 v0, 0x0

    .line 1259
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, p0, :cond_2a

    .line 1261
    add-int v3, p6, v2

    aget v3, p5, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p2, v2

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    sub-long/2addr v3, v7

    add-int v7, p4, v2

    aget v7, p3, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 1262
    add-int v3, p6, v2

    long-to-int v4, v0

    aput v4, p5, v3

    .line 1263
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 1259
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1265
    .end local v2    # "i":I
    :cond_2a
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subBothFrom(I[I[I[I)I
    .registers 13
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    .line 1246
    const-wide/16 v0, 0x0

    .line 1247
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
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

    .line 1250
    long-to-int v3, v0

    aput v3, p3, v2

    .line 1251
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 1247
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1253
    .end local v2    # "i":I
    :cond_22
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subDWordAt(IJ[II)I
    .registers 12
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .param p4, "zPos"    # I

    .line 1271
    add-int/lit8 v0, p4, 0x0

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    sub-long/2addr v0, v4

    .line 1272
    .local v0, "c":J
    add-int/lit8 v4, p4, 0x0

    long-to-int v5, v0

    aput v5, p3, v4

    .line 1273
    const/16 v4, 0x20

    shr-long/2addr v0, v4

    .line 1274
    add-int/lit8 v5, p4, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 1275
    add-int/lit8 v2, p4, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    .line 1276
    shr-long/2addr v0, v4

    .line 1277
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2e

    const/4 v2, 0x0

    goto :goto_34

    :cond_2e
    add-int/lit8 v2, p4, 0x2

    invoke-static {p0, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v2

    :goto_34
    return v2
.end method

.method public static blacklist subDWordAt(IJ[III)I
    .registers 13
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I
    .param p5, "zPos"    # I

    .line 1283
    add-int v0, p4, p5

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    sub-long/2addr v0, v4

    .line 1284
    .local v0, "c":J
    add-int v4, p4, p5

    long-to-int v5, v0

    aput v5, p3, v4

    .line 1285
    const/16 v4, 0x20

    shr-long/2addr v0, v4

    .line 1286
    add-int v5, p4, p5

    add-int/lit8 v5, v5, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 1287
    add-int v2, p4, p5

    add-int/lit8 v2, v2, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    .line 1288
    shr-long/2addr v0, v4

    .line 1289
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_32

    const/4 v2, 0x0

    goto :goto_38

    :cond_32
    add-int/lit8 v2, p5, 0x2

    invoke-static {p0, p3, p4, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_38
    return v2
.end method

.method public static blacklist subDWordFrom(IJ[I)I
    .registers 13
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I

    .line 1294
    const/4 v0, 0x0

    aget v1, p3, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    and-long v5, p1, v3

    sub-long/2addr v1, v5

    .line 1295
    .local v1, "c":J
    long-to-int v5, v1

    aput v5, p3, v0

    .line 1296
    const/16 v5, 0x20

    shr-long/2addr v1, v5

    .line 1297
    const/4 v6, 0x1

    aget v7, p3, v6

    int-to-long v7, v7

    and-long/2addr v3, v7

    ushr-long v7, p1, v5

    sub-long/2addr v3, v7

    add-long/2addr v1, v3

    .line 1298
    long-to-int v3, v1

    aput v3, p3, v6

    .line 1299
    shr-long/2addr v1, v5

    .line 1300
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_27

    goto :goto_2c

    :cond_27
    const/4 v0, 0x2

    invoke-static {p0, p3, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v0

    :goto_2c
    return v0
.end method

.method public static blacklist subDWordFrom(IJ[II)I
    .registers 12
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 1305
    add-int/lit8 v0, p4, 0x0

    aget v0, p3, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    sub-long/2addr v0, v4

    .line 1306
    .local v0, "c":J
    add-int/lit8 v4, p4, 0x0

    long-to-int v5, v0

    aput v5, p3, v4

    .line 1307
    const/16 v4, 0x20

    shr-long/2addr v0, v4

    .line 1308
    add-int/lit8 v5, p4, 0x1

    aget v5, p3, v5

    int-to-long v5, v5

    and-long/2addr v2, v5

    ushr-long v5, p1, v4

    sub-long/2addr v2, v5

    add-long/2addr v0, v2

    .line 1309
    add-int/lit8 v2, p4, 0x1

    long-to-int v3, v0

    aput v3, p3, v2

    .line 1310
    shr-long/2addr v0, v4

    .line 1311
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2e

    const/4 v2, 0x0

    goto :goto_33

    :cond_2e
    const/4 v2, 0x2

    invoke-static {p0, p3, p4, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_33
    return v2
.end method

.method public static blacklist subFrom(I[II[II)I
    .registers 14
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    .line 1328
    const-wide/16 v0, 0x0

    .line 1329
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, p0, :cond_23

    .line 1331
    add-int v3, p4, v2

    aget v3, p3, v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p2, v2

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 1332
    add-int v3, p4, v2

    long-to-int v4, v0

    aput v4, p3, v3

    .line 1333
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 1329
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1335
    .end local v2    # "i":I
    :cond_23
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subFrom(I[I[I)I
    .registers 12
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .line 1316
    const-wide/16 v0, 0x0

    .line 1317
    .local v0, "c":J
    const/4 v2, 0x0

    .local v2, "i":I
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

    .line 1320
    long-to-int v3, v0

    aput v3, p2, v2

    .line 1321
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 1317
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1323
    .end local v2    # "i":I
    :cond_1d
    long-to-int v2, v0

    return v2
.end method

.method public static blacklist subWordAt(II[II)I
    .registers 10
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zPos"    # I

    .line 1341
    aget v0, p2, p3

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 1342
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p2, p3

    .line 1343
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1344
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1a

    const/4 v2, 0x0

    goto :goto_20

    :cond_1a
    add-int/lit8 v2, p3, 0x1

    invoke-static {p0, p2, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v2

    :goto_20
    return v2
.end method

.method public static blacklist subWordAt(II[III)I
    .registers 11
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .param p4, "zPos"    # I

    .line 1350
    add-int v0, p3, p4

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 1351
    .local v0, "c":J
    add-int v2, p3, p4

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1352
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1353
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1e

    const/4 v2, 0x0

    goto :goto_24

    :cond_1e
    add-int/lit8 v2, p4, 0x1

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_24
    return v2
.end method

.method public static blacklist subWordFrom(II[I)I
    .registers 10
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I

    .line 1358
    const/4 v0, 0x0

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v3, v5

    sub-long/2addr v1, v3

    .line 1359
    .local v1, "c":J
    long-to-int v3, v1

    aput v3, p2, v0

    .line 1360
    const/16 v3, 0x20

    shr-long/2addr v1, v3

    .line 1361
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_1a

    goto :goto_1f

    :cond_1a
    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v0

    :goto_1f
    return v0
.end method

.method public static blacklist subWordFrom(II[II)I
    .registers 10
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    .line 1366
    add-int/lit8 v0, p3, 0x0

    aget v0, p2, v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long v4, p1

    and-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 1367
    .local v0, "c":J
    add-int/lit8 v2, p3, 0x0

    long-to-int v3, v0

    aput v3, p2, v2

    .line 1368
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    .line 1369
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1e

    const/4 v2, 0x0

    goto :goto_23

    :cond_1e
    const/4 v2, 0x1

    invoke-static {p0, p2, p3, v2}, Lcom/android/internal/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    move-result v2

    :goto_23
    return v2
.end method

.method public static blacklist toBigInteger(I[I)Ljava/math/BigInteger;
    .registers 6
    .param p0, "len"    # I
    .param p1, "x"    # [I

    .line 1374
    shl-int/lit8 v0, p0, 0x2

    new-array v0, v0, [B

    .line 1375
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, p0, :cond_16

    .line 1377
    aget v2, p1, v1

    .line 1378
    .local v2, "x_i":I
    if-eqz v2, :cond_13

    .line 1380
    add-int/lit8 v3, p0, -0x1

    sub-int/2addr v3, v1

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v2, v0, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 1375
    .end local v2    # "x_i":I
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1383
    .end local v1    # "i":I
    :cond_16
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public static blacklist zero(I[I)V
    .registers 4
    .param p0, "len"    # I
    .param p1, "z"    # [I

    .line 1388
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_9

    .line 1390
    const/4 v1, 0x0

    aput v1, p1, v0

    .line 1388
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1392
    .end local v0    # "i":I
    :cond_9
    return-void
.end method

.method public static blacklist zero(I[II)V
    .registers 6
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I

    .line 1396
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_b

    .line 1398
    add-int v1, p2, v0

    const/4 v2, 0x0

    aput v2, p1, v1

    .line 1396
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1400
    .end local v0    # "i":I
    :cond_b
    return-void
.end method

.method public static blacklist zero64(I[J)V
    .registers 5
    .param p0, "len"    # I
    .param p1, "z"    # [J

    .line 1404
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p0, :cond_a

    .line 1406
    const-wide/16 v1, 0x0

    aput-wide v1, p1, v0

    .line 1404
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1408
    .end local v0    # "i":I
    :cond_a
    return-void
.end method
