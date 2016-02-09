.class public abstract Lcom/android/org/bouncycastle/math/raw/Nat;
.super Ljava/lang/Object;
.source "Nat.java"


# static fields
.field private static final M:J = 0xffffffffL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static add(I[I[I[I)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    #@0
    .prologue
    const-wide v8, 0xffffffffL

    #@5
    .line 13
    const-wide/16 v0, 0x0

    #@7
    .line 14
    .local v0, "c":J
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    #@a
    .line 16
    aget v3, p1, v2

    #@c
    int-to-long v4, v3

    #@d
    and-long/2addr v4, v8

    #@e
    aget v3, p2, v2

    #@10
    int-to-long v6, v3

    #@11
    and-long/2addr v6, v8

    #@12
    add-long/2addr v4, v6

    #@13
    add-long/2addr v0, v4

    #@14
    .line 17
    long-to-int v3, v0

    #@15
    aput v3, p3, v2

    #@17
    .line 18
    const/16 v3, 0x20

    #@19
    ushr-long/2addr v0, v3

    #@1a
    .line 14
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 20
    :cond_0
    long-to-int v3, v0

    #@1e
    return v3
.end method

.method public static add33At(II[II)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zPos"    # I

    #@0
    .prologue
    const/16 v8, 0x20

    #@2
    const-wide v6, 0xffffffffL

    #@7
    .line 26
    add-int/lit8 v2, p3, 0x0

    #@9
    aget v2, p2, v2

    #@b
    int-to-long v2, v2

    #@c
    and-long/2addr v2, v6

    #@d
    int-to-long v4, p1

    #@e
    and-long/2addr v4, v6

    #@f
    add-long v0, v2, v4

    #@11
    .line 27
    .local v0, "c":J
    add-int/lit8 v2, p3, 0x0

    #@13
    long-to-int v3, v0

    #@14
    aput v3, p2, v2

    #@16
    .line 28
    ushr-long/2addr v0, v8

    #@17
    .line 29
    add-int/lit8 v2, p3, 0x1

    #@19
    aget v2, p2, v2

    #@1b
    int-to-long v2, v2

    #@1c
    and-long/2addr v2, v6

    #@1d
    const-wide/16 v4, 0x1

    #@1f
    add-long/2addr v2, v4

    #@20
    add-long/2addr v0, v2

    #@21
    .line 30
    add-int/lit8 v2, p3, 0x1

    #@23
    long-to-int v3, v0

    #@24
    aput v3, p2, v2

    #@26
    .line 31
    ushr-long/2addr v0, v8

    #@27
    .line 32
    const-wide/16 v2, 0x0

    #@29
    cmp-long v2, v0, v2

    #@2b
    if-nez v2, :cond_0

    #@2d
    const/4 v2, 0x0

    #@2e
    :goto_0
    return v2

    #@2f
    :cond_0
    add-int/lit8 v2, p3, 0x2

    #@31
    invoke-static {p0, p2, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    #@34
    move-result v2

    #@35
    goto :goto_0
.end method

.method public static add33At(II[III)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .param p4, "zPos"    # I

    #@0
    .prologue
    const/16 v8, 0x20

    #@2
    const-wide v6, 0xffffffffL

    #@7
    .line 38
    add-int v2, p3, p4

    #@9
    aget v2, p2, v2

    #@b
    int-to-long v2, v2

    #@c
    and-long/2addr v2, v6

    #@d
    int-to-long v4, p1

    #@e
    and-long/2addr v4, v6

    #@f
    add-long v0, v2, v4

    #@11
    .line 39
    .local v0, "c":J
    add-int v2, p3, p4

    #@13
    long-to-int v3, v0

    #@14
    aput v3, p2, v2

    #@16
    .line 40
    ushr-long/2addr v0, v8

    #@17
    .line 41
    add-int v2, p3, p4

    #@19
    add-int/lit8 v2, v2, 0x1

    #@1b
    aget v2, p2, v2

    #@1d
    int-to-long v2, v2

    #@1e
    and-long/2addr v2, v6

    #@1f
    const-wide/16 v4, 0x1

    #@21
    add-long/2addr v2, v4

    #@22
    add-long/2addr v0, v2

    #@23
    .line 42
    add-int v2, p3, p4

    #@25
    add-int/lit8 v2, v2, 0x1

    #@27
    long-to-int v3, v0

    #@28
    aput v3, p2, v2

    #@2a
    .line 43
    ushr-long/2addr v0, v8

    #@2b
    .line 44
    const-wide/16 v2, 0x0

    #@2d
    cmp-long v2, v0, v2

    #@2f
    if-nez v2, :cond_0

    #@31
    const/4 v2, 0x0

    #@32
    :goto_0
    return v2

    #@33
    :cond_0
    add-int/lit8 v2, p4, 0x2

    #@35
    invoke-static {p0, p2, p3, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    #@38
    move-result v2

    #@39
    goto :goto_0
.end method

.method public static add33To(II[I)I
    .locals 12
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I

    #@0
    .prologue
    const/16 v11, 0x20

    #@2
    const/4 v10, 0x1

    #@3
    const-wide v8, 0xffffffffL

    #@8
    const/4 v2, 0x0

    #@9
    .line 49
    aget v3, p2, v2

    #@b
    int-to-long v4, v3

    #@c
    and-long/2addr v4, v8

    #@d
    int-to-long v6, p1

    #@e
    and-long/2addr v6, v8

    #@f
    add-long v0, v4, v6

    #@11
    .line 50
    .local v0, "c":J
    long-to-int v3, v0

    #@12
    aput v3, p2, v2

    #@14
    .line 51
    ushr-long/2addr v0, v11

    #@15
    .line 52
    aget v3, p2, v10

    #@17
    int-to-long v4, v3

    #@18
    and-long/2addr v4, v8

    #@19
    const-wide/16 v6, 0x1

    #@1b
    add-long/2addr v4, v6

    #@1c
    add-long/2addr v0, v4

    #@1d
    .line 53
    long-to-int v3, v0

    #@1e
    aput v3, p2, v10

    #@20
    .line 54
    ushr-long/2addr v0, v11

    #@21
    .line 55
    const-wide/16 v4, 0x0

    #@23
    cmp-long v3, v0, v4

    #@25
    if-nez v3, :cond_0

    #@27
    :goto_0
    return v2

    #@28
    :cond_0
    const/4 v2, 0x2

    #@29
    invoke-static {p0, p2, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    #@2c
    move-result v2

    #@2d
    goto :goto_0
.end method

.method public static add33To(II[II)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    #@0
    .prologue
    const/16 v8, 0x20

    #@2
    const-wide v6, 0xffffffffL

    #@7
    .line 60
    add-int/lit8 v2, p3, 0x0

    #@9
    aget v2, p2, v2

    #@b
    int-to-long v2, v2

    #@c
    and-long/2addr v2, v6

    #@d
    int-to-long v4, p1

    #@e
    and-long/2addr v4, v6

    #@f
    add-long v0, v2, v4

    #@11
    .line 61
    .local v0, "c":J
    add-int/lit8 v2, p3, 0x0

    #@13
    long-to-int v3, v0

    #@14
    aput v3, p2, v2

    #@16
    .line 62
    ushr-long/2addr v0, v8

    #@17
    .line 63
    add-int/lit8 v2, p3, 0x1

    #@19
    aget v2, p2, v2

    #@1b
    int-to-long v2, v2

    #@1c
    and-long/2addr v2, v6

    #@1d
    const-wide/16 v4, 0x1

    #@1f
    add-long/2addr v2, v4

    #@20
    add-long/2addr v0, v2

    #@21
    .line 64
    add-int/lit8 v2, p3, 0x1

    #@23
    long-to-int v3, v0

    #@24
    aput v3, p2, v2

    #@26
    .line 65
    ushr-long/2addr v0, v8

    #@27
    .line 66
    const-wide/16 v2, 0x0

    #@29
    cmp-long v2, v0, v2

    #@2b
    if-nez v2, :cond_0

    #@2d
    const/4 v2, 0x0

    #@2e
    :goto_0
    return v2

    #@2f
    :cond_0
    const/4 v2, 0x2

    #@30
    invoke-static {p0, p2, p3, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    #@33
    move-result v2

    #@34
    goto :goto_0
.end method

.method public static addBothTo(I[II[II[II)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    #@0
    .prologue
    .line 83
    const-wide/16 v0, 0x0

    #@2
    .line 84
    .local v0, "c":J
    const/4 v2, 0x0

    #@3
    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    #@5
    .line 86
    add-int v3, p2, v2

    #@7
    aget v3, p1, v3

    #@9
    int-to-long v4, v3

    #@a
    const-wide v6, 0xffffffffL

    #@f
    and-long/2addr v4, v6

    #@10
    add-int v3, p4, v2

    #@12
    aget v3, p3, v3

    #@14
    int-to-long v6, v3

    #@15
    const-wide v8, 0xffffffffL

    #@1a
    and-long/2addr v6, v8

    #@1b
    add-long/2addr v4, v6

    #@1c
    add-int v3, p6, v2

    #@1e
    aget v3, p5, v3

    #@20
    int-to-long v6, v3

    #@21
    const-wide v8, 0xffffffffL

    #@26
    and-long/2addr v6, v8

    #@27
    add-long/2addr v4, v6

    #@28
    add-long/2addr v0, v4

    #@29
    .line 87
    add-int v3, p6, v2

    #@2b
    long-to-int v4, v0

    #@2c
    aput v4, p5, v3

    #@2e
    .line 88
    const/16 v3, 0x20

    #@30
    ushr-long/2addr v0, v3

    #@31
    .line 84
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_0

    #@34
    .line 90
    :cond_0
    long-to-int v3, v0

    #@35
    return v3
.end method

.method public static addBothTo(I[I[I[I)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    #@0
    .prologue
    const-wide v8, 0xffffffffL

    #@5
    .line 71
    const-wide/16 v0, 0x0

    #@7
    .line 72
    .local v0, "c":J
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    #@a
    .line 74
    aget v3, p1, v2

    #@c
    int-to-long v4, v3

    #@d
    and-long/2addr v4, v8

    #@e
    aget v3, p2, v2

    #@10
    int-to-long v6, v3

    #@11
    and-long/2addr v6, v8

    #@12
    add-long/2addr v4, v6

    #@13
    aget v3, p3, v2

    #@15
    int-to-long v6, v3

    #@16
    and-long/2addr v6, v8

    #@17
    add-long/2addr v4, v6

    #@18
    add-long/2addr v0, v4

    #@19
    .line 75
    long-to-int v3, v0

    #@1a
    aput v3, p3, v2

    #@1c
    .line 76
    const/16 v3, 0x20

    #@1e
    ushr-long/2addr v0, v3

    #@1f
    .line 72
    add-int/lit8 v2, v2, 0x1

    #@21
    goto :goto_0

    #@22
    .line 78
    :cond_0
    long-to-int v3, v0

    #@23
    return v3
.end method

.method public static addDWordAt(IJ[II)I
    .locals 11
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .param p4, "zPos"    # I

    #@0
    .prologue
    const-wide v8, 0xffffffffL

    #@5
    const/16 v6, 0x20

    #@7
    .line 96
    add-int/lit8 v2, p4, 0x0

    #@9
    aget v2, p3, v2

    #@b
    int-to-long v2, v2

    #@c
    and-long/2addr v2, v8

    #@d
    and-long v4, p1, v8

    #@f
    add-long v0, v2, v4

    #@11
    .line 97
    .local v0, "c":J
    add-int/lit8 v2, p4, 0x0

    #@13
    long-to-int v3, v0

    #@14
    aput v3, p3, v2

    #@16
    .line 98
    ushr-long/2addr v0, v6

    #@17
    .line 99
    add-int/lit8 v2, p4, 0x1

    #@19
    aget v2, p3, v2

    #@1b
    int-to-long v2, v2

    #@1c
    and-long/2addr v2, v8

    #@1d
    ushr-long v4, p1, v6

    #@1f
    add-long/2addr v2, v4

    #@20
    add-long/2addr v0, v2

    #@21
    .line 100
    add-int/lit8 v2, p4, 0x1

    #@23
    long-to-int v3, v0

    #@24
    aput v3, p3, v2

    #@26
    .line 101
    ushr-long/2addr v0, v6

    #@27
    .line 102
    const-wide/16 v2, 0x0

    #@29
    cmp-long v2, v0, v2

    #@2b
    if-nez v2, :cond_0

    #@2d
    const/4 v2, 0x0

    #@2e
    :goto_0
    return v2

    #@2f
    :cond_0
    add-int/lit8 v2, p4, 0x2

    #@31
    invoke-static {p0, p3, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    #@34
    move-result v2

    #@35
    goto :goto_0
.end method

.method public static addDWordAt(IJ[III)I
    .locals 11
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I
    .param p5, "zPos"    # I

    #@0
    .prologue
    const-wide v8, 0xffffffffL

    #@5
    const/16 v6, 0x20

    #@7
    .line 108
    add-int v2, p4, p5

    #@9
    aget v2, p3, v2

    #@b
    int-to-long v2, v2

    #@c
    and-long/2addr v2, v8

    #@d
    and-long v4, p1, v8

    #@f
    add-long v0, v2, v4

    #@11
    .line 109
    .local v0, "c":J
    add-int v2, p4, p5

    #@13
    long-to-int v3, v0

    #@14
    aput v3, p3, v2

    #@16
    .line 110
    ushr-long/2addr v0, v6

    #@17
    .line 111
    add-int v2, p4, p5

    #@19
    add-int/lit8 v2, v2, 0x1

    #@1b
    aget v2, p3, v2

    #@1d
    int-to-long v2, v2

    #@1e
    and-long/2addr v2, v8

    #@1f
    ushr-long v4, p1, v6

    #@21
    add-long/2addr v2, v4

    #@22
    add-long/2addr v0, v2

    #@23
    .line 112
    add-int v2, p4, p5

    #@25
    add-int/lit8 v2, v2, 0x1

    #@27
    long-to-int v3, v0

    #@28
    aput v3, p3, v2

    #@2a
    .line 113
    ushr-long/2addr v0, v6

    #@2b
    .line 114
    const-wide/16 v2, 0x0

    #@2d
    cmp-long v2, v0, v2

    #@2f
    if-nez v2, :cond_0

    #@31
    const/4 v2, 0x0

    #@32
    :goto_0
    return v2

    #@33
    :cond_0
    add-int/lit8 v2, p5, 0x2

    #@35
    invoke-static {p0, p3, p4, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    #@38
    move-result v2

    #@39
    goto :goto_0
.end method

.method public static addDWordTo(IJ[I)I
    .locals 15
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const-wide v12, 0xffffffffL

    #@6
    const/16 v10, 0x20

    #@8
    const/4 v4, 0x0

    #@9
    .line 119
    aget v5, p3, v4

    #@b
    int-to-long v6, v5

    #@c
    and-long/2addr v6, v12

    #@d
    and-long v8, p1, v12

    #@f
    add-long v2, v6, v8

    #@11
    .line 120
    .local v2, "c":J
    long-to-int v5, v2

    #@12
    aput v5, p3, v4

    #@14
    .line 121
    ushr-long/2addr v2, v10

    #@15
    .line 122
    aget v5, p3, v11

    #@17
    int-to-long v6, v5

    #@18
    and-long/2addr v6, v12

    #@19
    ushr-long v8, p1, v10

    #@1b
    add-long/2addr v6, v8

    #@1c
    add-long/2addr v2, v6

    #@1d
    .line 123
    long-to-int v5, v2

    #@1e
    aput v5, p3, v11

    #@20
    .line 124
    ushr-long/2addr v2, v10

    #@21
    .line 125
    const-wide/16 v6, 0x0

    #@23
    cmp-long v5, v2, v6

    #@25
    if-nez v5, :cond_0

    #@27
    :goto_0
    return v4

    #@28
    :cond_0
    const/4 v4, 0x2

    #@29
    move-object/from16 v0, p3

    #@2b
    invoke-static {p0, v0, v4}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    #@2e
    move-result v4

    #@2f
    goto :goto_0
.end method

.method public static addDWordTo(IJ[II)I
    .locals 11
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    #@0
    .prologue
    const-wide v8, 0xffffffffL

    #@5
    const/16 v6, 0x20

    #@7
    .line 130
    add-int/lit8 v2, p4, 0x0

    #@9
    aget v2, p3, v2

    #@b
    int-to-long v2, v2

    #@c
    and-long/2addr v2, v8

    #@d
    and-long v4, p1, v8

    #@f
    add-long v0, v2, v4

    #@11
    .line 131
    .local v0, "c":J
    add-int/lit8 v2, p4, 0x0

    #@13
    long-to-int v3, v0

    #@14
    aput v3, p3, v2

    #@16
    .line 132
    ushr-long/2addr v0, v6

    #@17
    .line 133
    add-int/lit8 v2, p4, 0x1

    #@19
    aget v2, p3, v2

    #@1b
    int-to-long v2, v2

    #@1c
    and-long/2addr v2, v8

    #@1d
    ushr-long v4, p1, v6

    #@1f
    add-long/2addr v2, v4

    #@20
    add-long/2addr v0, v2

    #@21
    .line 134
    add-int/lit8 v2, p4, 0x1

    #@23
    long-to-int v3, v0

    #@24
    aput v3, p3, v2

    #@26
    .line 135
    ushr-long/2addr v0, v6

    #@27
    .line 136
    const-wide/16 v2, 0x0

    #@29
    cmp-long v2, v0, v2

    #@2b
    if-nez v2, :cond_0

    #@2d
    const/4 v2, 0x0

    #@2e
    :goto_0
    return v2

    #@2f
    :cond_0
    const/4 v2, 0x2

    #@30
    invoke-static {p0, p3, p4, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    #@33
    move-result v2

    #@34
    goto :goto_0
.end method

.method public static addTo(I[II[II)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    #@0
    .prologue
    const-wide v8, 0xffffffffL

    #@5
    .line 153
    const-wide/16 v0, 0x0

    #@7
    .line 154
    .local v0, "c":J
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    #@a
    .line 156
    add-int v3, p2, v2

    #@c
    aget v3, p1, v3

    #@e
    int-to-long v4, v3

    #@f
    and-long/2addr v4, v8

    #@10
    add-int v3, p4, v2

    #@12
    aget v3, p3, v3

    #@14
    int-to-long v6, v3

    #@15
    and-long/2addr v6, v8

    #@16
    add-long/2addr v4, v6

    #@17
    add-long/2addr v0, v4

    #@18
    .line 157
    add-int v3, p4, v2

    #@1a
    long-to-int v4, v0

    #@1b
    aput v4, p3, v3

    #@1d
    .line 158
    const/16 v3, 0x20

    #@1f
    ushr-long/2addr v0, v3

    #@20
    .line 154
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_0

    #@23
    .line 160
    :cond_0
    long-to-int v3, v0

    #@24
    return v3
.end method

.method public static addTo(I[I[I)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    #@0
    .prologue
    const-wide v8, 0xffffffffL

    #@5
    .line 141
    const-wide/16 v0, 0x0

    #@7
    .line 142
    .local v0, "c":J
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    #@a
    .line 144
    aget v3, p1, v2

    #@c
    int-to-long v4, v3

    #@d
    and-long/2addr v4, v8

    #@e
    aget v3, p2, v2

    #@10
    int-to-long v6, v3

    #@11
    and-long/2addr v6, v8

    #@12
    add-long/2addr v4, v6

    #@13
    add-long/2addr v0, v4

    #@14
    .line 145
    long-to-int v3, v0

    #@15
    aput v3, p2, v2

    #@17
    .line 146
    const/16 v3, 0x20

    #@19
    ushr-long/2addr v0, v3

    #@1a
    .line 142
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 148
    :cond_0
    long-to-int v3, v0

    #@1e
    return v3
.end method

.method public static addWordAt(II[II)I
    .locals 8
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zPos"    # I

    #@0
    .prologue
    const-wide v6, 0xffffffffL

    #@5
    .line 166
    int-to-long v2, p1

    #@6
    and-long/2addr v2, v6

    #@7
    aget v4, p2, p3

    #@9
    int-to-long v4, v4

    #@a
    and-long/2addr v4, v6

    #@b
    add-long v0, v2, v4

    #@d
    .line 167
    .local v0, "c":J
    long-to-int v2, v0

    #@e
    aput v2, p2, p3

    #@10
    .line 168
    const/16 v2, 0x20

    #@12
    ushr-long/2addr v0, v2

    #@13
    .line 169
    const-wide/16 v2, 0x0

    #@15
    cmp-long v2, v0, v2

    #@17
    if-nez v2, :cond_0

    #@19
    const/4 v2, 0x0

    #@1a
    :goto_0
    return v2

    #@1b
    :cond_0
    add-int/lit8 v2, p3, 0x1

    #@1d
    invoke-static {p0, p2, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    #@20
    move-result v2

    #@21
    goto :goto_0
.end method

.method public static addWordAt(II[III)I
    .locals 8
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .param p4, "zPos"    # I

    #@0
    .prologue
    const-wide v6, 0xffffffffL

    #@5
    .line 175
    int-to-long v2, p1

    #@6
    and-long/2addr v2, v6

    #@7
    add-int v4, p3, p4

    #@9
    aget v4, p2, v4

    #@b
    int-to-long v4, v4

    #@c
    and-long/2addr v4, v6

    #@d
    add-long v0, v2, v4

    #@f
    .line 176
    .local v0, "c":J
    add-int v2, p3, p4

    #@11
    long-to-int v3, v0

    #@12
    aput v3, p2, v2

    #@14
    .line 177
    const/16 v2, 0x20

    #@16
    ushr-long/2addr v0, v2

    #@17
    .line 178
    const-wide/16 v2, 0x0

    #@19
    cmp-long v2, v0, v2

    #@1b
    if-nez v2, :cond_0

    #@1d
    const/4 v2, 0x0

    #@1e
    :goto_0
    return v2

    #@1f
    :cond_0
    add-int/lit8 v2, p4, 0x1

    #@21
    invoke-static {p0, p2, p3, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    #@24
    move-result v2

    #@25
    goto :goto_0
.end method

.method public static addWordTo(II[I)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I

    #@0
    .prologue
    const-wide v8, 0xffffffffL

    #@5
    const/4 v2, 0x0

    #@6
    .line 183
    int-to-long v4, p1

    #@7
    and-long/2addr v4, v8

    #@8
    aget v3, p2, v2

    #@a
    int-to-long v6, v3

    #@b
    and-long/2addr v6, v8

    #@c
    add-long v0, v4, v6

    #@e
    .line 184
    .local v0, "c":J
    long-to-int v3, v0

    #@f
    aput v3, p2, v2

    #@11
    .line 185
    const/16 v3, 0x20

    #@13
    ushr-long/2addr v0, v3

    #@14
    .line 186
    const-wide/16 v4, 0x0

    #@16
    cmp-long v3, v0, v4

    #@18
    if-nez v3, :cond_0

    #@1a
    :goto_0
    return v2

    #@1b
    :cond_0
    const/4 v2, 0x1

    #@1c
    invoke-static {p0, p2, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    #@1f
    move-result v2

    #@20
    goto :goto_0
.end method

.method public static addWordTo(II[II)I
    .locals 8
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    #@0
    .prologue
    const-wide v6, 0xffffffffL

    #@5
    .line 191
    int-to-long v2, p1

    #@6
    and-long/2addr v2, v6

    #@7
    aget v4, p2, p3

    #@9
    int-to-long v4, v4

    #@a
    and-long/2addr v4, v6

    #@b
    add-long v0, v2, v4

    #@d
    .line 192
    .local v0, "c":J
    long-to-int v2, v0

    #@e
    aput v2, p2, p3

    #@10
    .line 193
    const/16 v2, 0x20

    #@12
    ushr-long/2addr v0, v2

    #@13
    .line 194
    const-wide/16 v2, 0x0

    #@15
    cmp-long v2, v0, v2

    #@17
    if-nez v2, :cond_0

    #@19
    const/4 v2, 0x0

    #@1a
    :goto_0
    return v2

    #@1b
    :cond_0
    const/4 v2, 0x1

    #@1c
    invoke-static {p0, p2, p3, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    #@1f
    move-result v2

    #@20
    goto :goto_0
.end method

.method public static copy(I[I[I)V
    .locals 1
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 206
    invoke-static {p1, v0, p2, v0, p0}, Ljava/lang/System;->arraycopy([II[III)V

    #@4
    .line 204
    return-void
.end method

.method public static copy(I[I)[I
    .locals 2
    .param p0, "len"    # I
    .param p1, "x"    # [I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 199
    new-array v0, p0, [I

    #@3
    .line 200
    .local v0, "z":[I
    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy([II[III)V

    #@6
    .line 201
    return-object v0
.end method

.method public static create(I)[I
    .locals 1
    .param p0, "len"    # I

    #@0
    .prologue
    .line 211
    new-array v0, p0, [I

    #@2
    return-object v0
.end method

.method public static dec(I[I)I
    .locals 3
    .param p0, "len"    # I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 216
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    #@4
    .line 218
    aget v1, p1, v0

    #@6
    add-int/lit8 v1, v1, -0x1

    #@8
    aput v1, p1, v0

    #@a
    if-eq v1, v2, :cond_0

    #@c
    .line 220
    const/4 v1, 0x0

    #@d
    return v1

    #@e
    .line 216
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 223
    :cond_1
    return v2
.end method

.method public static dec(I[I[I)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 228
    const/4 v1, 0x0

    #@2
    .line 229
    .local v1, "i":I
    :cond_0
    if-ge v1, p0, :cond_2

    #@4
    .line 231
    aget v2, p1, v1

    #@6
    add-int/lit8 v0, v2, -0x1

    #@8
    .line 232
    .local v0, "c":I
    aput v0, p2, v1

    #@a
    .line 233
    add-int/lit8 v1, v1, 0x1

    #@c
    .line 234
    if-eq v0, v3, :cond_0

    #@e
    .line 236
    :goto_0
    if-ge v1, p0, :cond_1

    #@10
    .line 238
    aget v2, p1, v1

    #@12
    aput v2, p2, v1

    #@14
    .line 239
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 241
    :cond_1
    const/4 v2, 0x0

    #@18
    return v2

    #@19
    .line 244
    .end local v0    # "c":I
    :cond_2
    return v3
.end method

.method public static decAt(I[II)I
    .locals 3
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zPos"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 250
    move v0, p2

    #@2
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    #@4
    .line 252
    aget v1, p1, v0

    #@6
    add-int/lit8 v1, v1, -0x1

    #@8
    aput v1, p1, v0

    #@a
    if-eq v1, v2, :cond_0

    #@c
    .line 254
    const/4 v1, 0x0

    #@d
    return v1

    #@e
    .line 250
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 257
    :cond_1
    return v2
.end method

.method public static decAt(I[III)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "zPos"    # I

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 263
    move v0, p3

    #@2
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    #@4
    .line 265
    add-int v1, p2, v0

    #@6
    aget v2, p1, v1

    #@8
    add-int/lit8 v2, v2, -0x1

    #@a
    aput v2, p1, v1

    #@c
    if-eq v2, v3, :cond_0

    #@e
    .line 267
    const/4 v1, 0x0

    #@f
    return v1

    #@10
    .line 263
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 270
    :cond_1
    return v3
.end method

.method public static eq(I[I[I)Z
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 275
    add-int/lit8 v0, p0, -0x1

    #@3
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@5
    .line 277
    aget v1, p1, v0

    #@7
    aget v2, p2, v0

    #@9
    if-eq v1, v2, :cond_0

    #@b
    .line 279
    return v3

    #@c
    .line 275
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@e
    goto :goto_0

    #@f
    .line 282
    :cond_1
    const/4 v1, 0x1

    #@10
    return v1
.end method

.method public static fromBigInteger(ILjava/math/BigInteger;)[I
    .locals 5
    .param p0, "bits"    # I
    .param p1, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 287
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    #@3
    move-result v4

    #@4
    if-ltz v4, :cond_0

    #@6
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    #@9
    move-result v4

    #@a
    if-le v4, p0, :cond_1

    #@c
    .line 289
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@e
    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@11
    throw v4

    #@12
    .line 292
    :cond_1
    add-int/lit8 v4, p0, 0x1f

    #@14
    shr-int/lit8 v2, v4, 0x5

    #@16
    .line 293
    .local v2, "len":I
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@19
    move-result-object v3

    #@1a
    .line 294
    .local v3, "z":[I
    const/4 v0, 0x0

    #@1b
    .line 295
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_2

    #@21
    .line 297
    add-int/lit8 v1, v0, 0x1

    #@23
    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    #@26
    move-result v4

    #@27
    aput v4, v3, v0

    #@29
    .line 298
    const/16 v4, 0x20

    #@2b
    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@2e
    move-result-object p1

    #@2f
    move v0, v1

    #@30
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    #@31
    .line 300
    :cond_2
    return-object v3
.end method

.method public static getBit([II)I
    .locals 4
    .param p0, "x"    # [I
    .param p1, "bit"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 305
    if-nez p1, :cond_0

    #@3
    .line 307
    aget v2, p0, v3

    #@5
    and-int/lit8 v2, v2, 0x1

    #@7
    return v2

    #@8
    .line 309
    :cond_0
    shr-int/lit8 v1, p1, 0x5

    #@a
    .line 310
    .local v1, "w":I
    if-ltz v1, :cond_1

    #@c
    array-length v2, p0

    #@d
    if-lt v1, v2, :cond_2

    #@f
    .line 312
    :cond_1
    return v3

    #@10
    .line 314
    :cond_2
    and-int/lit8 v0, p1, 0x1f

    #@12
    .line 315
    .local v0, "b":I
    aget v2, p0, v1

    #@14
    ushr-int/2addr v2, v0

    #@15
    and-int/lit8 v2, v2, 0x1

    #@17
    return v2
.end method

.method public static gte(I[I[I)Z
    .locals 7
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/high16 v4, -0x80000000

    #@4
    .line 320
    add-int/lit8 v0, p0, -0x1

    #@6
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@8
    .line 322
    aget v3, p1, v0

    #@a
    xor-int v1, v3, v4

    #@c
    .line 323
    .local v1, "x_i":I
    aget v3, p2, v0

    #@e
    xor-int v2, v3, v4

    #@10
    .line 324
    .local v2, "y_i":I
    if-ge v1, v2, :cond_0

    #@12
    .line 325
    return v5

    #@13
    .line 326
    :cond_0
    if-le v1, v2, :cond_1

    #@15
    .line 327
    return v6

    #@16
    .line 320
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@18
    goto :goto_0

    #@19
    .line 329
    .end local v1    # "x_i":I
    .end local v2    # "y_i":I
    :cond_2
    return v6
.end method

.method public static inc(I[I)I
    .locals 3
    .param p0, "len"    # I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 334
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    #@4
    .line 336
    aget v1, p1, v0

    #@6
    add-int/lit8 v1, v1, 0x1

    #@8
    aput v1, p1, v0

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 338
    return v2

    #@d
    .line 334
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 341
    :cond_1
    const/4 v1, 0x1

    #@11
    return v1
.end method

.method public static inc(I[I[I)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 346
    const/4 v1, 0x0

    #@2
    .line 347
    .local v1, "i":I
    :cond_0
    if-ge v1, p0, :cond_2

    #@4
    .line 349
    aget v2, p1, v1

    #@6
    add-int/lit8 v0, v2, 0x1

    #@8
    .line 350
    .local v0, "c":I
    aput v0, p2, v1

    #@a
    .line 351
    add-int/lit8 v1, v1, 0x1

    #@c
    .line 352
    if-eqz v0, :cond_0

    #@e
    .line 354
    :goto_0
    if-ge v1, p0, :cond_1

    #@10
    .line 356
    aget v2, p1, v1

    #@12
    aput v2, p2, v1

    #@14
    .line 357
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 359
    :cond_1
    return v3

    #@18
    .line 362
    .end local v0    # "c":I
    :cond_2
    const/4 v2, 0x1

    #@19
    return v2
.end method

.method public static incAt(I[II)I
    .locals 3
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zPos"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 368
    move v0, p2

    #@2
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    #@4
    .line 370
    aget v1, p1, v0

    #@6
    add-int/lit8 v1, v1, 0x1

    #@8
    aput v1, p1, v0

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 372
    return v2

    #@d
    .line 368
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 375
    :cond_1
    const/4 v1, 0x1

    #@11
    return v1
.end method

.method public static incAt(I[III)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "zPos"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 381
    move v0, p3

    #@2
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    #@4
    .line 383
    add-int v1, p2, v0

    #@6
    aget v2, p1, v1

    #@8
    add-int/lit8 v2, v2, 0x1

    #@a
    aput v2, p1, v1

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 385
    return v3

    #@f
    .line 381
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 388
    :cond_1
    const/4 v1, 0x1

    #@13
    return v1
.end method

.method public static isOne(I[I)Z
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 393
    aget v1, p1, v2

    #@4
    if-eq v1, v3, :cond_0

    #@6
    .line 395
    return v2

    #@7
    .line 397
    :cond_0
    const/4 v0, 0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_2

    #@a
    .line 399
    aget v1, p1, v0

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 401
    return v2

    #@f
    .line 397
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 404
    :cond_2
    return v3
.end method

.method public static isZero(I[I)Z
    .locals 3
    .param p0, "len"    # I
    .param p1, "x"    # [I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 409
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    #@4
    .line 411
    aget v1, p1, v0

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 413
    return v2

    #@9
    .line 409
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 416
    :cond_1
    const/4 v1, 0x1

    #@d
    return v1
.end method

.method public static mul(I[II[II[II)V
    .locals 8
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "zz"    # [I
    .param p6, "zzOff"    # I

    #@0
    .prologue
    .line 431
    add-int v7, p6, p0

    #@2
    aget v1, p1, p2

    #@4
    move v0, p0

    #@5
    move-object v2, p3

    #@6
    move v3, p4

    #@7
    move-object v4, p5

    #@8
    move v5, p6

    #@9
    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->mulWord(II[II[II)I

    #@c
    move-result v0

    #@d
    aput v0, p5, v7

    #@f
    .line 433
    const/4 v6, 0x1

    #@10
    .local v6, "i":I
    :goto_0
    if-ge v6, p0, :cond_0

    #@12
    .line 435
    add-int v0, p6, v6

    #@14
    add-int v7, v0, p0

    #@16
    add-int v0, p2, v6

    #@18
    aget v1, p1, v0

    #@1a
    add-int v5, p6, v6

    #@1c
    move v0, p0

    #@1d
    move-object v2, p3

    #@1e
    move v3, p4

    #@1f
    move-object v4, p5

    #@20
    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    #@23
    move-result v0

    #@24
    aput v0, p5, v7

    #@26
    .line 433
    add-int/lit8 v6, v6, 0x1

    #@28
    goto :goto_0

    #@29
    .line 429
    :cond_0
    return-void
.end method

.method public static mul(I[I[I[I)V
    .locals 7
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "zz"    # [I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 421
    aget v0, p1, v3

    #@3
    invoke-static {p0, v0, p2, p3}, Lcom/android/org/bouncycastle/math/raw/Nat;->mulWord(II[I[I)I

    #@6
    move-result v0

    #@7
    aput v0, p3, p0

    #@9
    .line 423
    const/4 v5, 0x1

    #@a
    .local v5, "i":I
    :goto_0
    if-ge v5, p0, :cond_0

    #@c
    .line 425
    add-int v6, v5, p0

    #@e
    aget v1, p1, v5

    #@10
    move v0, p0

    #@11
    move-object v2, p2

    #@12
    move-object v4, p3

    #@13
    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    #@16
    move-result v0

    #@17
    aput v0, p3, v6

    #@19
    .line 423
    add-int/lit8 v5, v5, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 419
    :cond_0
    return-void
.end method

.method public static mul31BothAdd(II[II[I[II)I
    .locals 16
    .param p0, "len"    # I
    .param p1, "a"    # I
    .param p2, "x"    # [I
    .param p3, "b"    # I
    .param p4, "y"    # [I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    #@0
    .prologue
    .line 468
    const-wide/16 v6, 0x0

    #@2
    .local v6, "c":J
    move/from16 v0, p1

    #@4
    int-to-long v10, v0

    #@5
    const-wide v12, 0xffffffffL

    #@a
    and-long v2, v10, v12

    #@c
    .local v2, "aVal":J
    move/from16 v0, p3

    #@e
    int-to-long v10, v0

    #@f
    const-wide v12, 0xffffffffL

    #@14
    and-long v4, v10, v12

    #@16
    .line 469
    .local v4, "bVal":J
    const/4 v8, 0x0

    #@17
    .line 472
    .local v8, "i":I
    :cond_0
    aget v9, p2, v8

    #@19
    int-to-long v10, v9

    #@1a
    const-wide v12, 0xffffffffL

    #@1f
    and-long/2addr v10, v12

    #@20
    mul-long/2addr v10, v2

    #@21
    aget v9, p4, v8

    #@23
    int-to-long v12, v9

    #@24
    const-wide v14, 0xffffffffL

    #@29
    and-long/2addr v12, v14

    #@2a
    mul-long/2addr v12, v4

    #@2b
    add-long/2addr v10, v12

    #@2c
    add-int v9, p6, v8

    #@2e
    aget v9, p5, v9

    #@30
    int-to-long v12, v9

    #@31
    const-wide v14, 0xffffffffL

    #@36
    and-long/2addr v12, v14

    #@37
    add-long/2addr v10, v12

    #@38
    add-long/2addr v6, v10

    #@39
    .line 473
    add-int v9, p6, v8

    #@3b
    long-to-int v10, v6

    #@3c
    aput v10, p5, v9

    #@3e
    .line 474
    const/16 v9, 0x20

    #@40
    ushr-long/2addr v6, v9

    #@41
    .line 476
    add-int/lit8 v8, v8, 0x1

    #@43
    move/from16 v0, p0

    #@45
    if-lt v8, v0, :cond_0

    #@47
    .line 477
    long-to-int v9, v6

    #@48
    return v9
.end method

.method public static mulAddTo(I[II[II[II)I
    .locals 12
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "zz"    # [I
    .param p6, "zzOff"    # I

    #@0
    .prologue
    .line 454
    const-wide/16 v10, 0x0

    #@2
    .line 455
    .local v10, "zc":J
    const/4 v8, 0x0

    #@3
    .local v8, "i":I
    :goto_0
    if-ge v8, p0, :cond_0

    #@5
    .line 457
    add-int v0, p2, v8

    #@7
    aget v1, p1, v0

    #@9
    move v0, p0

    #@a
    move-object v2, p3

    #@b
    move/from16 v3, p4

    #@d
    move-object/from16 v4, p5

    #@f
    move/from16 v5, p6

    #@11
    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    #@14
    move-result v0

    #@15
    int-to-long v0, v0

    #@16
    const-wide v2, 0xffffffffL

    #@1b
    and-long v6, v0, v2

    #@1d
    .line 458
    .local v6, "c":J
    add-int v0, p6, p0

    #@1f
    aget v0, p5, v0

    #@21
    int-to-long v0, v0

    #@22
    const-wide v2, 0xffffffffL

    #@27
    and-long/2addr v0, v2

    #@28
    add-long/2addr v0, v10

    #@29
    add-long/2addr v6, v0

    #@2a
    .line 459
    add-int v0, p6, p0

    #@2c
    long-to-int v1, v6

    #@2d
    aput v1, p5, v0

    #@2f
    .line 460
    const/16 v0, 0x20

    #@31
    ushr-long v10, v6, v0

    #@33
    .line 461
    add-int/lit8 p6, p6, 0x1

    #@35
    .line 455
    add-int/lit8 v8, v8, 0x1

    #@37
    goto :goto_0

    #@38
    .line 463
    .end local v6    # "c":J
    :cond_0
    long-to-int v0, v10

    #@39
    return v0
.end method

.method public static mulAddTo(I[I[I[I)I
    .locals 12
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "zz"    # [I

    #@0
    .prologue
    const-wide v10, 0xffffffffL

    #@5
    .line 441
    const-wide/16 v8, 0x0

    #@7
    .line 442
    .local v8, "zc":J
    const/4 v5, 0x0

    #@8
    .local v5, "i":I
    :goto_0
    if-ge v5, p0, :cond_0

    #@a
    .line 444
    aget v1, p1, v5

    #@c
    const/4 v3, 0x0

    #@d
    move v0, p0

    #@e
    move-object v2, p2

    #@f
    move-object v4, p3

    #@10
    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    #@13
    move-result v0

    #@14
    int-to-long v0, v0

    #@15
    and-long v6, v0, v10

    #@17
    .line 445
    .local v6, "c":J
    add-int v0, v5, p0

    #@19
    aget v0, p3, v0

    #@1b
    int-to-long v0, v0

    #@1c
    and-long/2addr v0, v10

    #@1d
    add-long/2addr v0, v8

    #@1e
    add-long/2addr v6, v0

    #@1f
    .line 446
    add-int v0, v5, p0

    #@21
    long-to-int v1, v6

    #@22
    aput v1, p3, v0

    #@24
    .line 447
    const/16 v0, 0x20

    #@26
    ushr-long v8, v6, v0

    #@28
    .line 442
    add-int/lit8 v5, v5, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 449
    .end local v6    # "c":J
    :cond_0
    long-to-int v0, v8

    #@2c
    return v0
.end method

.method public static mulWord(II[II[II)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    #@0
    .prologue
    const-wide v8, 0xffffffffL

    #@5
    .line 496
    const-wide/16 v0, 0x0

    #@7
    .local v0, "c":J
    int-to-long v6, p1

    #@8
    and-long v4, v6, v8

    #@a
    .line 497
    .local v4, "xVal":J
    const/4 v2, 0x0

    #@b
    .line 500
    .local v2, "i":I
    :cond_0
    add-int v3, p3, v2

    #@d
    aget v3, p2, v3

    #@f
    int-to-long v6, v3

    #@10
    and-long/2addr v6, v8

    #@11
    mul-long/2addr v6, v4

    #@12
    add-long/2addr v0, v6

    #@13
    .line 501
    add-int v3, p5, v2

    #@15
    long-to-int v6, v0

    #@16
    aput v6, p4, v3

    #@18
    .line 502
    const/16 v3, 0x20

    #@1a
    ushr-long/2addr v0, v3

    #@1b
    .line 504
    add-int/lit8 v2, v2, 0x1

    #@1d
    if-lt v2, p0, :cond_0

    #@1f
    .line 505
    long-to-int v3, v0

    #@20
    return v3
.end method

.method public static mulWord(II[I[I)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    #@0
    .prologue
    const-wide v8, 0xffffffffL

    #@5
    .line 482
    const-wide/16 v0, 0x0

    #@7
    .local v0, "c":J
    int-to-long v6, p1

    #@8
    and-long v4, v6, v8

    #@a
    .line 483
    .local v4, "xVal":J
    const/4 v2, 0x0

    #@b
    .line 486
    .local v2, "i":I
    :cond_0
    aget v3, p2, v2

    #@d
    int-to-long v6, v3

    #@e
    and-long/2addr v6, v8

    #@f
    mul-long/2addr v6, v4

    #@10
    add-long/2addr v0, v6

    #@11
    .line 487
    long-to-int v3, v0

    #@12
    aput v3, p3, v2

    #@14
    .line 488
    const/16 v3, 0x20

    #@16
    ushr-long/2addr v0, v3

    #@17
    .line 490
    add-int/lit8 v2, v2, 0x1

    #@19
    if-lt v2, p0, :cond_0

    #@1b
    .line 491
    long-to-int v3, v0

    #@1c
    return v3
.end method

.method public static mulWordAddTo(II[II[II)I
    .locals 12
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    #@0
    .prologue
    .line 510
    const-wide/16 v0, 0x0

    #@2
    .local v0, "c":J
    int-to-long v6, p1

    #@3
    const-wide v8, 0xffffffffL

    #@8
    and-long v4, v6, v8

    #@a
    .line 511
    .local v4, "xVal":J
    const/4 v2, 0x0

    #@b
    .line 514
    .local v2, "i":I
    :cond_0
    add-int v3, p3, v2

    #@d
    aget v3, p2, v3

    #@f
    int-to-long v6, v3

    #@10
    const-wide v8, 0xffffffffL

    #@15
    and-long/2addr v6, v8

    #@16
    mul-long/2addr v6, v4

    #@17
    add-int v3, p5, v2

    #@19
    aget v3, p4, v3

    #@1b
    int-to-long v8, v3

    #@1c
    const-wide v10, 0xffffffffL

    #@21
    and-long/2addr v8, v10

    #@22
    add-long/2addr v6, v8

    #@23
    add-long/2addr v0, v6

    #@24
    .line 515
    add-int v3, p5, v2

    #@26
    long-to-int v6, v0

    #@27
    aput v6, p4, v3

    #@29
    .line 516
    const/16 v3, 0x20

    #@2b
    ushr-long/2addr v0, v3

    #@2c
    .line 518
    add-int/lit8 v2, v2, 0x1

    #@2e
    if-lt v2, p0, :cond_0

    #@30
    .line 519
    long-to-int v3, v0

    #@31
    return v3
.end method

.method public static mulWordDwordAddAt(IIJ[II)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "y"    # J
    .param p4, "z"    # [I
    .param p5, "zPos"    # I

    #@0
    .prologue
    .line 525
    int-to-long v4, p1

    #@1
    const-wide v6, 0xffffffffL

    #@6
    and-long v2, v4, v6

    #@8
    .line 526
    .local v2, "xVal":J
    const-wide v4, 0xffffffffL

    #@d
    and-long/2addr v4, p2

    #@e
    mul-long/2addr v4, v2

    #@f
    add-int/lit8 v6, p5, 0x0

    #@11
    aget v6, p4, v6

    #@13
    int-to-long v6, v6

    #@14
    const-wide v8, 0xffffffffL

    #@19
    and-long/2addr v6, v8

    #@1a
    add-long/2addr v4, v6

    #@1b
    .line 525
    const-wide/16 v6, 0x0

    #@1d
    .line 526
    add-long v0, v6, v4

    #@1f
    .line 527
    .local v0, "c":J
    add-int/lit8 v4, p5, 0x0

    #@21
    long-to-int v5, v0

    #@22
    aput v5, p4, v4

    #@24
    .line 528
    const/16 v4, 0x20

    #@26
    ushr-long/2addr v0, v4

    #@27
    .line 529
    const/16 v4, 0x20

    #@29
    ushr-long v4, p2, v4

    #@2b
    mul-long/2addr v4, v2

    #@2c
    add-int/lit8 v6, p5, 0x1

    #@2e
    aget v6, p4, v6

    #@30
    int-to-long v6, v6

    #@31
    const-wide v8, 0xffffffffL

    #@36
    and-long/2addr v6, v8

    #@37
    add-long/2addr v4, v6

    #@38
    add-long/2addr v0, v4

    #@39
    .line 530
    add-int/lit8 v4, p5, 0x1

    #@3b
    long-to-int v5, v0

    #@3c
    aput v5, p4, v4

    #@3e
    .line 531
    const/16 v4, 0x20

    #@40
    ushr-long/2addr v0, v4

    #@41
    .line 532
    add-int/lit8 v4, p5, 0x2

    #@43
    aget v4, p4, v4

    #@45
    int-to-long v4, v4

    #@46
    const-wide v6, 0xffffffffL

    #@4b
    and-long/2addr v4, v6

    #@4c
    add-long/2addr v0, v4

    #@4d
    .line 533
    add-int/lit8 v4, p5, 0x2

    #@4f
    long-to-int v5, v0

    #@50
    aput v5, p4, v4

    #@52
    .line 534
    const/16 v4, 0x20

    #@54
    ushr-long/2addr v0, v4

    #@55
    .line 535
    const-wide/16 v4, 0x0

    #@57
    cmp-long v4, v0, v4

    #@59
    if-nez v4, :cond_0

    #@5b
    const/4 v4, 0x0

    #@5c
    :goto_0
    return v4

    #@5d
    :cond_0
    add-int/lit8 v4, p5, 0x3

    #@5f
    invoke-static {p0, p4, v4}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    #@62
    move-result v4

    #@63
    goto :goto_0
.end method

.method public static shiftDownBit(I[II)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "c"    # I

    #@0
    .prologue
    .line 540
    move v0, p0

    #@1
    .line 541
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    #@3
    if-ltz v0, :cond_0

    #@5
    .line 543
    aget v1, p1, v0

    #@7
    .line 544
    .local v1, "next":I
    ushr-int/lit8 v2, v1, 0x1

    #@9
    shl-int/lit8 v3, p2, 0x1f

    #@b
    or-int/2addr v2, v3

    #@c
    aput v2, p1, v0

    #@e
    .line 545
    move p2, v1

    #@f
    goto :goto_0

    #@10
    .line 547
    .end local v1    # "next":I
    :cond_0
    shl-int/lit8 v2, p2, 0x1f

    #@12
    return v2
.end method

.method public static shiftDownBit(I[III)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "c"    # I

    #@0
    .prologue
    .line 552
    move v0, p0

    #@1
    .line 553
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    #@3
    if-ltz v0, :cond_0

    #@5
    .line 555
    add-int v2, p2, v0

    #@7
    aget v1, p1, v2

    #@9
    .line 556
    .local v1, "next":I
    add-int v2, p2, v0

    #@b
    ushr-int/lit8 v3, v1, 0x1

    #@d
    shl-int/lit8 v4, p3, 0x1f

    #@f
    or-int/2addr v3, v4

    #@10
    aput v3, p1, v2

    #@12
    .line 557
    move p3, v1

    #@13
    goto :goto_0

    #@14
    .line 559
    .end local v1    # "next":I
    :cond_0
    shl-int/lit8 v2, p3, 0x1f

    #@16
    return v2
.end method

.method public static shiftDownBit(I[III[II)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "c"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    #@0
    .prologue
    .line 576
    move v0, p0

    #@1
    .line 577
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    #@3
    if-ltz v0, :cond_0

    #@5
    .line 579
    add-int v2, p2, v0

    #@7
    aget v1, p1, v2

    #@9
    .line 580
    .local v1, "next":I
    add-int v2, p5, v0

    #@b
    ushr-int/lit8 v3, v1, 0x1

    #@d
    shl-int/lit8 v4, p3, 0x1f

    #@f
    or-int/2addr v3, v4

    #@10
    aput v3, p4, v2

    #@12
    .line 581
    move p3, v1

    #@13
    goto :goto_0

    #@14
    .line 583
    .end local v1    # "next":I
    :cond_0
    shl-int/lit8 v2, p3, 0x1f

    #@16
    return v2
.end method

.method public static shiftDownBit(I[II[I)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "c"    # I
    .param p3, "z"    # [I

    #@0
    .prologue
    .line 564
    move v0, p0

    #@1
    .line 565
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    #@3
    if-ltz v0, :cond_0

    #@5
    .line 567
    aget v1, p1, v0

    #@7
    .line 568
    .local v1, "next":I
    ushr-int/lit8 v2, v1, 0x1

    #@9
    shl-int/lit8 v3, p2, 0x1f

    #@b
    or-int/2addr v2, v3

    #@c
    aput v2, p3, v0

    #@e
    .line 569
    move p2, v1

    #@f
    goto :goto_0

    #@10
    .line 571
    .end local v1    # "next":I
    :cond_0
    shl-int/lit8 v2, p2, 0x1f

    #@12
    return v2
.end method

.method public static shiftDownBits(I[III)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "bits"    # I
    .param p3, "c"    # I

    #@0
    .prologue
    .line 589
    move v0, p0

    #@1
    .line 590
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    #@3
    if-ltz v0, :cond_0

    #@5
    .line 592
    aget v1, p1, v0

    #@7
    .line 593
    .local v1, "next":I
    ushr-int v2, v1, p2

    #@9
    neg-int v3, p2

    #@a
    shl-int v3, p3, v3

    #@c
    or-int/2addr v2, v3

    #@d
    aput v2, p1, v0

    #@f
    .line 594
    move p3, v1

    #@10
    goto :goto_0

    #@11
    .line 596
    .end local v1    # "next":I
    :cond_0
    neg-int v2, p2

    #@12
    shl-int v2, p3, v2

    #@14
    return v2
.end method

.method public static shiftDownBits(I[IIII)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # I

    #@0
    .prologue
    .line 602
    move v0, p0

    #@1
    .line 603
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    #@3
    if-ltz v0, :cond_0

    #@5
    .line 605
    add-int v2, p2, v0

    #@7
    aget v1, p1, v2

    #@9
    .line 606
    .local v1, "next":I
    add-int v2, p2, v0

    #@b
    ushr-int v3, v1, p3

    #@d
    neg-int v4, p3

    #@e
    shl-int v4, p4, v4

    #@10
    or-int/2addr v3, v4

    #@11
    aput v3, p1, v2

    #@13
    .line 607
    move p4, v1

    #@14
    goto :goto_0

    #@15
    .line 609
    .end local v1    # "next":I
    :cond_0
    neg-int v2, p3

    #@16
    shl-int v2, p4, v2

    #@18
    return v2
.end method

.method public static shiftDownBits(I[IIII[II)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    #@0
    .prologue
    .line 628
    move v0, p0

    #@1
    .line 629
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    #@3
    if-ltz v0, :cond_0

    #@5
    .line 631
    add-int v2, p2, v0

    #@7
    aget v1, p1, v2

    #@9
    .line 632
    .local v1, "next":I
    add-int v2, p6, v0

    #@b
    ushr-int v3, v1, p3

    #@d
    neg-int v4, p3

    #@e
    shl-int v4, p4, v4

    #@10
    or-int/2addr v3, v4

    #@11
    aput v3, p5, v2

    #@13
    .line 633
    move p4, v1

    #@14
    goto :goto_0

    #@15
    .line 635
    .end local v1    # "next":I
    :cond_0
    neg-int v2, p3

    #@16
    shl-int v2, p4, v2

    #@18
    return v2
.end method

.method public static shiftDownBits(I[III[I)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "bits"    # I
    .param p3, "c"    # I
    .param p4, "z"    # [I

    #@0
    .prologue
    .line 615
    move v0, p0

    #@1
    .line 616
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    #@3
    if-ltz v0, :cond_0

    #@5
    .line 618
    aget v1, p1, v0

    #@7
    .line 619
    .local v1, "next":I
    ushr-int v2, v1, p2

    #@9
    neg-int v3, p2

    #@a
    shl-int v3, p3, v3

    #@c
    or-int/2addr v2, v3

    #@d
    aput v2, p4, v0

    #@f
    .line 620
    move p3, v1

    #@10
    goto :goto_0

    #@11
    .line 622
    .end local v1    # "next":I
    :cond_0
    neg-int v2, p2

    #@12
    shl-int v2, p3, v2

    #@14
    return v2
.end method

.method public static shiftDownWord(I[II)I
    .locals 2
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "c"    # I

    #@0
    .prologue
    .line 640
    move v0, p0

    #@1
    .line 641
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    #@3
    if-ltz v0, :cond_0

    #@5
    .line 643
    aget v1, p1, v0

    #@7
    .line 644
    .local v1, "next":I
    aput p2, p1, v0

    #@9
    .line 645
    move p2, v1

    #@a
    goto :goto_0

    #@b
    .line 647
    .end local v1    # "next":I
    :cond_0
    return p2
.end method

.method public static shiftUpBit(I[II)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "c"    # I

    #@0
    .prologue
    .line 652
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    #@3
    .line 654
    aget v1, p1, v0

    #@5
    .line 655
    .local v1, "next":I
    shl-int/lit8 v2, v1, 0x1

    #@7
    ushr-int/lit8 v3, p2, 0x1f

    #@9
    or-int/2addr v2, v3

    #@a
    aput v2, p1, v0

    #@c
    .line 656
    move p2, v1

    #@d
    .line 652
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 658
    .end local v1    # "next":I
    :cond_0
    ushr-int/lit8 v2, p2, 0x1f

    #@12
    return v2
.end method

.method public static shiftUpBit(I[III)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "c"    # I

    #@0
    .prologue
    .line 663
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    #@3
    .line 665
    add-int v2, p2, v0

    #@5
    aget v1, p1, v2

    #@7
    .line 666
    .local v1, "next":I
    add-int v2, p2, v0

    #@9
    shl-int/lit8 v3, v1, 0x1

    #@b
    ushr-int/lit8 v4, p3, 0x1f

    #@d
    or-int/2addr v3, v4

    #@e
    aput v3, p1, v2

    #@10
    .line 667
    move p3, v1

    #@11
    .line 663
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 669
    .end local v1    # "next":I
    :cond_0
    ushr-int/lit8 v2, p3, 0x1f

    #@16
    return v2
.end method

.method public static shiftUpBit(I[III[II)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "c"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    #@0
    .prologue
    .line 685
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    #@3
    .line 687
    add-int v2, p2, v0

    #@5
    aget v1, p1, v2

    #@7
    .line 688
    .local v1, "next":I
    add-int v2, p5, v0

    #@9
    shl-int/lit8 v3, v1, 0x1

    #@b
    ushr-int/lit8 v4, p3, 0x1f

    #@d
    or-int/2addr v3, v4

    #@e
    aput v3, p4, v2

    #@10
    .line 689
    move p3, v1

    #@11
    .line 685
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 691
    .end local v1    # "next":I
    :cond_0
    ushr-int/lit8 v2, p3, 0x1f

    #@16
    return v2
.end method

.method public static shiftUpBit(I[II[I)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "c"    # I
    .param p3, "z"    # [I

    #@0
    .prologue
    .line 674
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    #@3
    .line 676
    aget v1, p1, v0

    #@5
    .line 677
    .local v1, "next":I
    shl-int/lit8 v2, v1, 0x1

    #@7
    ushr-int/lit8 v3, p2, 0x1f

    #@9
    or-int/2addr v2, v3

    #@a
    aput v2, p3, v0

    #@c
    .line 678
    move p2, v1

    #@d
    .line 674
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 680
    .end local v1    # "next":I
    :cond_0
    ushr-int/lit8 v2, p2, 0x1f

    #@12
    return v2
.end method

.method public static shiftUpBits(I[III)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "bits"    # I
    .param p3, "c"    # I

    #@0
    .prologue
    .line 697
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    #@3
    .line 699
    aget v1, p1, v0

    #@5
    .line 700
    .local v1, "next":I
    shl-int v2, v1, p2

    #@7
    neg-int v3, p2

    #@8
    ushr-int v3, p3, v3

    #@a
    or-int/2addr v2, v3

    #@b
    aput v2, p1, v0

    #@d
    .line 701
    move p3, v1

    #@e
    .line 697
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 703
    .end local v1    # "next":I
    :cond_0
    neg-int v2, p2

    #@12
    ushr-int v2, p3, v2

    #@14
    return v2
.end method

.method public static shiftUpBits(I[IIII)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # I

    #@0
    .prologue
    .line 709
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    #@3
    .line 711
    add-int v2, p2, v0

    #@5
    aget v1, p1, v2

    #@7
    .line 712
    .local v1, "next":I
    add-int v2, p2, v0

    #@9
    shl-int v3, v1, p3

    #@b
    neg-int v4, p3

    #@c
    ushr-int v4, p4, v4

    #@e
    or-int/2addr v3, v4

    #@f
    aput v3, p1, v2

    #@11
    .line 713
    move p4, v1

    #@12
    .line 709
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 715
    .end local v1    # "next":I
    :cond_0
    neg-int v2, p3

    #@16
    ushr-int v2, p4, v2

    #@18
    return v2
.end method

.method public static shiftUpBits(I[IIII[II)I
    .locals 5
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    #@0
    .prologue
    .line 733
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    #@3
    .line 735
    add-int v2, p2, v0

    #@5
    aget v1, p1, v2

    #@7
    .line 736
    .local v1, "next":I
    add-int v2, p6, v0

    #@9
    shl-int v3, v1, p3

    #@b
    neg-int v4, p3

    #@c
    ushr-int v4, p4, v4

    #@e
    or-int/2addr v3, v4

    #@f
    aput v3, p5, v2

    #@11
    .line 737
    move p4, v1

    #@12
    .line 733
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 739
    .end local v1    # "next":I
    :cond_0
    neg-int v2, p3

    #@16
    ushr-int v2, p4, v2

    #@18
    return v2
.end method

.method public static shiftUpBits(I[III[I)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "bits"    # I
    .param p3, "c"    # I
    .param p4, "z"    # [I

    #@0
    .prologue
    .line 721
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    #@3
    .line 723
    aget v1, p1, v0

    #@5
    .line 724
    .local v1, "next":I
    shl-int v2, v1, p2

    #@7
    neg-int v3, p2

    #@8
    ushr-int v3, p3, v3

    #@a
    or-int/2addr v2, v3

    #@b
    aput v2, p4, v0

    #@d
    .line 725
    move p3, v1

    #@e
    .line 721
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 727
    .end local v1    # "next":I
    :cond_0
    neg-int v2, p2

    #@12
    ushr-int v2, p3, v2

    #@14
    return v2
.end method

.method public static square(I[II[II)V
    .locals 18
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "zz"    # [I
    .param p4, "zzOff"    # I

    #@0
    .prologue
    .line 768
    shl-int/lit8 v5, p0, 0x1

    #@2
    .line 769
    .local v5, "extLen":I
    const/4 v4, 0x0

    #@3
    .line 770
    .local v4, "c":I
    move/from16 v7, p0

    #@5
    .local v7, "j":I
    move v8, v5

    #@6
    .line 773
    .local v8, "k":I
    :cond_0
    add-int/lit8 v7, v7, -0x1

    #@8
    add-int v9, p2, v7

    #@a
    aget v9, p1, v9

    #@c
    int-to-long v14, v9

    #@d
    const-wide v16, 0xffffffffL

    #@12
    and-long v12, v14, v16

    #@14
    .line 774
    .local v12, "xVal":J
    mul-long v10, v12, v12

    #@16
    .line 775
    .local v10, "p":J
    add-int/lit8 v8, v8, -0x1

    #@18
    add-int v9, p4, v8

    #@1a
    shl-int/lit8 v14, v4, 0x1f

    #@1c
    const/16 v15, 0x21

    #@1e
    ushr-long v16, v10, v15

    #@20
    move-wide/from16 v0, v16

    #@22
    long-to-int v15, v0

    #@23
    or-int/2addr v14, v15

    #@24
    aput v14, p3, v9

    #@26
    .line 776
    add-int/lit8 v8, v8, -0x1

    #@28
    add-int v9, p4, v8

    #@2a
    const/4 v14, 0x1

    #@2b
    ushr-long v14, v10, v14

    #@2d
    long-to-int v14, v14

    #@2e
    aput v14, p3, v9

    #@30
    .line 777
    long-to-int v4, v10

    #@31
    .line 779
    if-gtz v7, :cond_0

    #@33
    .line 781
    const/4 v6, 0x1

    #@34
    .local v6, "i":I
    :goto_0
    move/from16 v0, p0

    #@36
    if-ge v6, v0, :cond_1

    #@38
    .line 783
    move-object/from16 v0, p1

    #@3a
    move/from16 v1, p2

    #@3c
    move-object/from16 v2, p3

    #@3e
    move/from16 v3, p4

    #@40
    invoke-static {v0, v1, v6, v2, v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->squareWordAdd([III[II)I

    #@43
    move-result v4

    #@44
    .line 784
    shl-int/lit8 v9, v6, 0x1

    #@46
    move-object/from16 v0, p3

    #@48
    move/from16 v1, p4

    #@4a
    invoke-static {v5, v4, v0, v1, v9}, Lcom/android/org/bouncycastle/math/raw/Nat;->addWordAt(II[III)I

    #@4d
    .line 781
    add-int/lit8 v6, v6, 0x1

    #@4f
    goto :goto_0

    #@50
    .line 787
    :cond_1
    aget v9, p1, p2

    #@52
    shl-int/lit8 v9, v9, 0x1f

    #@54
    move-object/from16 v0, p3

    #@56
    move/from16 v1, p4

    #@58
    invoke-static {v5, v0, v1, v9}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[III)I

    #@5b
    .line 766
    return-void
.end method

.method public static square(I[I[I)V
    .locals 16
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "zz"    # [I

    #@0
    .prologue
    .line 744
    shl-int/lit8 v3, p0, 0x1

    #@2
    .line 745
    .local v3, "extLen":I
    const/4 v2, 0x0

    #@3
    .line 746
    .local v2, "c":I
    move/from16 v5, p0

    #@5
    .local v5, "j":I
    move v6, v3

    #@6
    .line 749
    .local v6, "k":I
    :cond_0
    add-int/lit8 v5, v5, -0x1

    #@8
    aget v7, p1, v5

    #@a
    int-to-long v12, v7

    #@b
    const-wide v14, 0xffffffffL

    #@10
    and-long v10, v12, v14

    #@12
    .line 750
    .local v10, "xVal":J
    mul-long v8, v10, v10

    #@14
    .line 751
    .local v8, "p":J
    add-int/lit8 v6, v6, -0x1

    #@16
    shl-int/lit8 v7, v2, 0x1f

    #@18
    const/16 v12, 0x21

    #@1a
    ushr-long v12, v8, v12

    #@1c
    long-to-int v12, v12

    #@1d
    or-int/2addr v7, v12

    #@1e
    aput v7, p2, v6

    #@20
    .line 752
    add-int/lit8 v6, v6, -0x1

    #@22
    const/4 v7, 0x1

    #@23
    ushr-long v12, v8, v7

    #@25
    long-to-int v7, v12

    #@26
    aput v7, p2, v6

    #@28
    .line 753
    long-to-int v2, v8

    #@29
    .line 755
    if-gtz v5, :cond_0

    #@2b
    .line 757
    const/4 v4, 0x1

    #@2c
    .local v4, "i":I
    :goto_0
    move/from16 v0, p0

    #@2e
    if-ge v4, v0, :cond_1

    #@30
    .line 759
    move-object/from16 v0, p1

    #@32
    move-object/from16 v1, p2

    #@34
    invoke-static {v0, v4, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->squareWordAdd([II[I)I

    #@37
    move-result v2

    #@38
    .line 760
    shl-int/lit8 v7, v4, 0x1

    #@3a
    move-object/from16 v0, p2

    #@3c
    invoke-static {v3, v2, v0, v7}, Lcom/android/org/bouncycastle/math/raw/Nat;->addWordAt(II[II)I

    #@3f
    .line 757
    add-int/lit8 v4, v4, 0x1

    #@41
    goto :goto_0

    #@42
    .line 763
    :cond_1
    const/4 v7, 0x0

    #@43
    aget v7, p1, v7

    #@45
    shl-int/lit8 v7, v7, 0x1f

    #@47
    move-object/from16 v0, p2

    #@49
    invoke-static {v3, v0, v7}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II)I

    #@4c
    .line 742
    return-void
.end method

.method public static squareWordAdd([III[II)I
    .locals 12
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "xPos"    # I
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    #@0
    .prologue
    .line 806
    const-wide/16 v0, 0x0

    #@2
    .local v0, "c":J
    add-int v3, p1, p2

    #@4
    aget v3, p0, v3

    #@6
    int-to-long v6, v3

    #@7
    const-wide v8, 0xffffffffL

    #@c
    and-long v4, v6, v8

    #@e
    .line 807
    .local v4, "xVal":J
    const/4 v2, 0x0

    #@f
    .line 810
    .local v2, "i":I
    :cond_0
    add-int v3, p1, v2

    #@11
    aget v3, p0, v3

    #@13
    int-to-long v6, v3

    #@14
    const-wide v8, 0xffffffffL

    #@19
    and-long/2addr v6, v8

    #@1a
    mul-long/2addr v6, v4

    #@1b
    add-int v3, p2, p4

    #@1d
    aget v3, p3, v3

    #@1f
    int-to-long v8, v3

    #@20
    const-wide v10, 0xffffffffL

    #@25
    and-long/2addr v8, v10

    #@26
    add-long/2addr v6, v8

    #@27
    add-long/2addr v0, v6

    #@28
    .line 811
    add-int v3, p2, p4

    #@2a
    long-to-int v6, v0

    #@2b
    aput v6, p3, v3

    #@2d
    .line 812
    const/16 v3, 0x20

    #@2f
    ushr-long/2addr v0, v3

    #@30
    .line 813
    add-int/lit8 p4, p4, 0x1

    #@32
    .line 815
    add-int/lit8 v2, v2, 0x1

    #@34
    if-lt v2, p2, :cond_0

    #@36
    .line 816
    long-to-int v3, v0

    #@37
    return v3
.end method

.method public static squareWordAdd([II[I)I
    .locals 12
    .param p0, "x"    # [I
    .param p1, "xPos"    # I
    .param p2, "z"    # [I

    #@0
    .prologue
    const-wide v10, 0xffffffffL

    #@5
    .line 792
    const-wide/16 v0, 0x0

    #@7
    .local v0, "c":J
    aget v3, p0, p1

    #@9
    int-to-long v6, v3

    #@a
    and-long v4, v6, v10

    #@c
    .line 793
    .local v4, "xVal":J
    const/4 v2, 0x0

    #@d
    .line 796
    .local v2, "i":I
    :cond_0
    aget v3, p0, v2

    #@f
    int-to-long v6, v3

    #@10
    and-long/2addr v6, v10

    #@11
    mul-long/2addr v6, v4

    #@12
    add-int v3, p1, v2

    #@14
    aget v3, p2, v3

    #@16
    int-to-long v8, v3

    #@17
    and-long/2addr v8, v10

    #@18
    add-long/2addr v6, v8

    #@19
    add-long/2addr v0, v6

    #@1a
    .line 797
    add-int v3, p1, v2

    #@1c
    long-to-int v6, v0

    #@1d
    aput v6, p2, v3

    #@1f
    .line 798
    const/16 v3, 0x20

    #@21
    ushr-long/2addr v0, v3

    #@22
    .line 800
    add-int/lit8 v2, v2, 0x1

    #@24
    if-lt v2, p1, :cond_0

    #@26
    .line 801
    long-to-int v3, v0

    #@27
    return v3
.end method

.method public static sub(I[II[II[II)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    #@0
    .prologue
    .line 833
    const-wide/16 v0, 0x0

    #@2
    .line 834
    .local v0, "c":J
    const/4 v2, 0x0

    #@3
    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    #@5
    .line 836
    add-int v3, p2, v2

    #@7
    aget v3, p1, v3

    #@9
    int-to-long v4, v3

    #@a
    const-wide v6, 0xffffffffL

    #@f
    and-long/2addr v4, v6

    #@10
    add-int v3, p4, v2

    #@12
    aget v3, p3, v3

    #@14
    int-to-long v6, v3

    #@15
    const-wide v8, 0xffffffffL

    #@1a
    and-long/2addr v6, v8

    #@1b
    sub-long/2addr v4, v6

    #@1c
    add-long/2addr v0, v4

    #@1d
    .line 837
    add-int v3, p6, v2

    #@1f
    long-to-int v4, v0

    #@20
    aput v4, p5, v3

    #@22
    .line 838
    const/16 v3, 0x20

    #@24
    shr-long/2addr v0, v3

    #@25
    .line 834
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_0

    #@28
    .line 840
    :cond_0
    long-to-int v3, v0

    #@29
    return v3
.end method

.method public static sub(I[I[I[I)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    #@0
    .prologue
    const-wide v8, 0xffffffffL

    #@5
    .line 821
    const-wide/16 v0, 0x0

    #@7
    .line 822
    .local v0, "c":J
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    #@a
    .line 824
    aget v3, p1, v2

    #@c
    int-to-long v4, v3

    #@d
    and-long/2addr v4, v8

    #@e
    aget v3, p2, v2

    #@10
    int-to-long v6, v3

    #@11
    and-long/2addr v6, v8

    #@12
    sub-long/2addr v4, v6

    #@13
    add-long/2addr v0, v4

    #@14
    .line 825
    long-to-int v3, v0

    #@15
    aput v3, p3, v2

    #@17
    .line 826
    const/16 v3, 0x20

    #@19
    shr-long/2addr v0, v3

    #@1a
    .line 822
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 828
    :cond_0
    long-to-int v3, v0

    #@1e
    return v3
.end method

.method public static sub33At(II[II)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zPos"    # I

    #@0
    .prologue
    const/16 v8, 0x20

    #@2
    const-wide v6, 0xffffffffL

    #@7
    .line 846
    add-int/lit8 v2, p3, 0x0

    #@9
    aget v2, p2, v2

    #@b
    int-to-long v2, v2

    #@c
    and-long/2addr v2, v6

    #@d
    int-to-long v4, p1

    #@e
    and-long/2addr v4, v6

    #@f
    sub-long v0, v2, v4

    #@11
    .line 847
    .local v0, "c":J
    add-int/lit8 v2, p3, 0x0

    #@13
    long-to-int v3, v0

    #@14
    aput v3, p2, v2

    #@16
    .line 848
    shr-long/2addr v0, v8

    #@17
    .line 849
    add-int/lit8 v2, p3, 0x1

    #@19
    aget v2, p2, v2

    #@1b
    int-to-long v2, v2

    #@1c
    and-long/2addr v2, v6

    #@1d
    const-wide/16 v4, 0x1

    #@1f
    sub-long/2addr v2, v4

    #@20
    add-long/2addr v0, v2

    #@21
    .line 850
    add-int/lit8 v2, p3, 0x1

    #@23
    long-to-int v3, v0

    #@24
    aput v3, p2, v2

    #@26
    .line 851
    shr-long/2addr v0, v8

    #@27
    .line 852
    const-wide/16 v2, 0x0

    #@29
    cmp-long v2, v0, v2

    #@2b
    if-nez v2, :cond_0

    #@2d
    const/4 v2, 0x0

    #@2e
    :goto_0
    return v2

    #@2f
    :cond_0
    add-int/lit8 v2, p3, 0x2

    #@31
    invoke-static {p0, p2, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    #@34
    move-result v2

    #@35
    goto :goto_0
.end method

.method public static sub33At(II[III)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .param p4, "zPos"    # I

    #@0
    .prologue
    const/16 v8, 0x20

    #@2
    const-wide v6, 0xffffffffL

    #@7
    .line 858
    add-int v2, p3, p4

    #@9
    aget v2, p2, v2

    #@b
    int-to-long v2, v2

    #@c
    and-long/2addr v2, v6

    #@d
    int-to-long v4, p1

    #@e
    and-long/2addr v4, v6

    #@f
    sub-long v0, v2, v4

    #@11
    .line 859
    .local v0, "c":J
    add-int v2, p3, p4

    #@13
    long-to-int v3, v0

    #@14
    aput v3, p2, v2

    #@16
    .line 860
    shr-long/2addr v0, v8

    #@17
    .line 861
    add-int v2, p3, p4

    #@19
    add-int/lit8 v2, v2, 0x1

    #@1b
    aget v2, p2, v2

    #@1d
    int-to-long v2, v2

    #@1e
    and-long/2addr v2, v6

    #@1f
    const-wide/16 v4, 0x1

    #@21
    sub-long/2addr v2, v4

    #@22
    add-long/2addr v0, v2

    #@23
    .line 862
    add-int v2, p3, p4

    #@25
    add-int/lit8 v2, v2, 0x1

    #@27
    long-to-int v3, v0

    #@28
    aput v3, p2, v2

    #@2a
    .line 863
    shr-long/2addr v0, v8

    #@2b
    .line 864
    const-wide/16 v2, 0x0

    #@2d
    cmp-long v2, v0, v2

    #@2f
    if-nez v2, :cond_0

    #@31
    const/4 v2, 0x0

    #@32
    :goto_0
    return v2

    #@33
    :cond_0
    add-int/lit8 v2, p4, 0x2

    #@35
    invoke-static {p0, p2, p3, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    #@38
    move-result v2

    #@39
    goto :goto_0
.end method

.method public static sub33From(II[I)I
    .locals 12
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I

    #@0
    .prologue
    const/16 v11, 0x20

    #@2
    const/4 v10, 0x1

    #@3
    const-wide v8, 0xffffffffL

    #@8
    const/4 v2, 0x0

    #@9
    .line 869
    aget v3, p2, v2

    #@b
    int-to-long v4, v3

    #@c
    and-long/2addr v4, v8

    #@d
    int-to-long v6, p1

    #@e
    and-long/2addr v6, v8

    #@f
    sub-long v0, v4, v6

    #@11
    .line 870
    .local v0, "c":J
    long-to-int v3, v0

    #@12
    aput v3, p2, v2

    #@14
    .line 871
    shr-long/2addr v0, v11

    #@15
    .line 872
    aget v3, p2, v10

    #@17
    int-to-long v4, v3

    #@18
    and-long/2addr v4, v8

    #@19
    const-wide/16 v6, 0x1

    #@1b
    sub-long/2addr v4, v6

    #@1c
    add-long/2addr v0, v4

    #@1d
    .line 873
    long-to-int v3, v0

    #@1e
    aput v3, p2, v10

    #@20
    .line 874
    shr-long/2addr v0, v11

    #@21
    .line 875
    const-wide/16 v4, 0x0

    #@23
    cmp-long v3, v0, v4

    #@25
    if-nez v3, :cond_0

    #@27
    :goto_0
    return v2

    #@28
    :cond_0
    const/4 v2, 0x2

    #@29
    invoke-static {p0, p2, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    #@2c
    move-result v2

    #@2d
    goto :goto_0
.end method

.method public static sub33From(II[II)I
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    #@0
    .prologue
    const/16 v8, 0x20

    #@2
    const-wide v6, 0xffffffffL

    #@7
    .line 880
    add-int/lit8 v2, p3, 0x0

    #@9
    aget v2, p2, v2

    #@b
    int-to-long v2, v2

    #@c
    and-long/2addr v2, v6

    #@d
    int-to-long v4, p1

    #@e
    and-long/2addr v4, v6

    #@f
    sub-long v0, v2, v4

    #@11
    .line 881
    .local v0, "c":J
    add-int/lit8 v2, p3, 0x0

    #@13
    long-to-int v3, v0

    #@14
    aput v3, p2, v2

    #@16
    .line 882
    shr-long/2addr v0, v8

    #@17
    .line 883
    add-int/lit8 v2, p3, 0x1

    #@19
    aget v2, p2, v2

    #@1b
    int-to-long v2, v2

    #@1c
    and-long/2addr v2, v6

    #@1d
    const-wide/16 v4, 0x1

    #@1f
    sub-long/2addr v2, v4

    #@20
    add-long/2addr v0, v2

    #@21
    .line 884
    add-int/lit8 v2, p3, 0x1

    #@23
    long-to-int v3, v0

    #@24
    aput v3, p2, v2

    #@26
    .line 885
    shr-long/2addr v0, v8

    #@27
    .line 886
    const-wide/16 v2, 0x0

    #@29
    cmp-long v2, v0, v2

    #@2b
    if-nez v2, :cond_0

    #@2d
    const/4 v2, 0x0

    #@2e
    :goto_0
    return v2

    #@2f
    :cond_0
    const/4 v2, 0x2

    #@30
    invoke-static {p0, p2, p3, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    #@33
    move-result v2

    #@34
    goto :goto_0
.end method

.method public static subBothFrom(I[II[II[II)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    #@0
    .prologue
    .line 903
    const-wide/16 v0, 0x0

    #@2
    .line 904
    .local v0, "c":J
    const/4 v2, 0x0

    #@3
    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    #@5
    .line 906
    add-int v3, p6, v2

    #@7
    aget v3, p5, v3

    #@9
    int-to-long v4, v3

    #@a
    const-wide v6, 0xffffffffL

    #@f
    and-long/2addr v4, v6

    #@10
    add-int v3, p2, v2

    #@12
    aget v3, p1, v3

    #@14
    int-to-long v6, v3

    #@15
    const-wide v8, 0xffffffffL

    #@1a
    and-long/2addr v6, v8

    #@1b
    sub-long/2addr v4, v6

    #@1c
    add-int v3, p4, v2

    #@1e
    aget v3, p3, v3

    #@20
    int-to-long v6, v3

    #@21
    const-wide v8, 0xffffffffL

    #@26
    and-long/2addr v6, v8

    #@27
    sub-long/2addr v4, v6

    #@28
    add-long/2addr v0, v4

    #@29
    .line 907
    add-int v3, p6, v2

    #@2b
    long-to-int v4, v0

    #@2c
    aput v4, p5, v3

    #@2e
    .line 908
    const/16 v3, 0x20

    #@30
    shr-long/2addr v0, v3

    #@31
    .line 904
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_0

    #@34
    .line 910
    :cond_0
    long-to-int v3, v0

    #@35
    return v3
.end method

.method public static subBothFrom(I[I[I[I)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    #@0
    .prologue
    const-wide v8, 0xffffffffL

    #@5
    .line 891
    const-wide/16 v0, 0x0

    #@7
    .line 892
    .local v0, "c":J
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    #@a
    .line 894
    aget v3, p3, v2

    #@c
    int-to-long v4, v3

    #@d
    and-long/2addr v4, v8

    #@e
    aget v3, p1, v2

    #@10
    int-to-long v6, v3

    #@11
    and-long/2addr v6, v8

    #@12
    sub-long/2addr v4, v6

    #@13
    aget v3, p2, v2

    #@15
    int-to-long v6, v3

    #@16
    and-long/2addr v6, v8

    #@17
    sub-long/2addr v4, v6

    #@18
    add-long/2addr v0, v4

    #@19
    .line 895
    long-to-int v3, v0

    #@1a
    aput v3, p3, v2

    #@1c
    .line 896
    const/16 v3, 0x20

    #@1e
    shr-long/2addr v0, v3

    #@1f
    .line 892
    add-int/lit8 v2, v2, 0x1

    #@21
    goto :goto_0

    #@22
    .line 898
    :cond_0
    long-to-int v3, v0

    #@23
    return v3
.end method

.method public static subDWordAt(IJ[II)I
    .locals 11
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .param p4, "zPos"    # I

    #@0
    .prologue
    const-wide v8, 0xffffffffL

    #@5
    const/16 v6, 0x20

    #@7
    .line 916
    add-int/lit8 v2, p4, 0x0

    #@9
    aget v2, p3, v2

    #@b
    int-to-long v2, v2

    #@c
    and-long/2addr v2, v8

    #@d
    and-long v4, p1, v8

    #@f
    sub-long v0, v2, v4

    #@11
    .line 917
    .local v0, "c":J
    add-int/lit8 v2, p4, 0x0

    #@13
    long-to-int v3, v0

    #@14
    aput v3, p3, v2

    #@16
    .line 918
    shr-long/2addr v0, v6

    #@17
    .line 919
    add-int/lit8 v2, p4, 0x1

    #@19
    aget v2, p3, v2

    #@1b
    int-to-long v2, v2

    #@1c
    and-long/2addr v2, v8

    #@1d
    ushr-long v4, p1, v6

    #@1f
    sub-long/2addr v2, v4

    #@20
    add-long/2addr v0, v2

    #@21
    .line 920
    add-int/lit8 v2, p4, 0x1

    #@23
    long-to-int v3, v0

    #@24
    aput v3, p3, v2

    #@26
    .line 921
    shr-long/2addr v0, v6

    #@27
    .line 922
    const-wide/16 v2, 0x0

    #@29
    cmp-long v2, v0, v2

    #@2b
    if-nez v2, :cond_0

    #@2d
    const/4 v2, 0x0

    #@2e
    :goto_0
    return v2

    #@2f
    :cond_0
    add-int/lit8 v2, p4, 0x2

    #@31
    invoke-static {p0, p3, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    #@34
    move-result v2

    #@35
    goto :goto_0
.end method

.method public static subDWordAt(IJ[III)I
    .locals 11
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I
    .param p5, "zPos"    # I

    #@0
    .prologue
    const-wide v8, 0xffffffffL

    #@5
    const/16 v6, 0x20

    #@7
    .line 928
    add-int v2, p4, p5

    #@9
    aget v2, p3, v2

    #@b
    int-to-long v2, v2

    #@c
    and-long/2addr v2, v8

    #@d
    and-long v4, p1, v8

    #@f
    sub-long v0, v2, v4

    #@11
    .line 929
    .local v0, "c":J
    add-int v2, p4, p5

    #@13
    long-to-int v3, v0

    #@14
    aput v3, p3, v2

    #@16
    .line 930
    shr-long/2addr v0, v6

    #@17
    .line 931
    add-int v2, p4, p5

    #@19
    add-int/lit8 v2, v2, 0x1

    #@1b
    aget v2, p3, v2

    #@1d
    int-to-long v2, v2

    #@1e
    and-long/2addr v2, v8

    #@1f
    ushr-long v4, p1, v6

    #@21
    sub-long/2addr v2, v4

    #@22
    add-long/2addr v0, v2

    #@23
    .line 932
    add-int v2, p4, p5

    #@25
    add-int/lit8 v2, v2, 0x1

    #@27
    long-to-int v3, v0

    #@28
    aput v3, p3, v2

    #@2a
    .line 933
    shr-long/2addr v0, v6

    #@2b
    .line 934
    const-wide/16 v2, 0x0

    #@2d
    cmp-long v2, v0, v2

    #@2f
    if-nez v2, :cond_0

    #@31
    const/4 v2, 0x0

    #@32
    :goto_0
    return v2

    #@33
    :cond_0
    add-int/lit8 v2, p5, 0x2

    #@35
    invoke-static {p0, p3, p4, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    #@38
    move-result v2

    #@39
    goto :goto_0
.end method

.method public static subDWordFrom(IJ[I)I
    .locals 15
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const-wide v12, 0xffffffffL

    #@6
    const/16 v10, 0x20

    #@8
    const/4 v4, 0x0

    #@9
    .line 939
    aget v5, p3, v4

    #@b
    int-to-long v6, v5

    #@c
    and-long/2addr v6, v12

    #@d
    and-long v8, p1, v12

    #@f
    sub-long v2, v6, v8

    #@11
    .line 940
    .local v2, "c":J
    long-to-int v5, v2

    #@12
    aput v5, p3, v4

    #@14
    .line 941
    shr-long/2addr v2, v10

    #@15
    .line 942
    aget v5, p3, v11

    #@17
    int-to-long v6, v5

    #@18
    and-long/2addr v6, v12

    #@19
    ushr-long v8, p1, v10

    #@1b
    sub-long/2addr v6, v8

    #@1c
    add-long/2addr v2, v6

    #@1d
    .line 943
    long-to-int v5, v2

    #@1e
    aput v5, p3, v11

    #@20
    .line 944
    shr-long/2addr v2, v10

    #@21
    .line 945
    const-wide/16 v6, 0x0

    #@23
    cmp-long v5, v2, v6

    #@25
    if-nez v5, :cond_0

    #@27
    :goto_0
    return v4

    #@28
    :cond_0
    const/4 v4, 0x2

    #@29
    move-object/from16 v0, p3

    #@2b
    invoke-static {p0, v0, v4}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    #@2e
    move-result v4

    #@2f
    goto :goto_0
.end method

.method public static subDWordFrom(IJ[II)I
    .locals 11
    .param p0, "len"    # I
    .param p1, "x"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    #@0
    .prologue
    const-wide v8, 0xffffffffL

    #@5
    const/16 v6, 0x20

    #@7
    .line 950
    add-int/lit8 v2, p4, 0x0

    #@9
    aget v2, p3, v2

    #@b
    int-to-long v2, v2

    #@c
    and-long/2addr v2, v8

    #@d
    and-long v4, p1, v8

    #@f
    sub-long v0, v2, v4

    #@11
    .line 951
    .local v0, "c":J
    add-int/lit8 v2, p4, 0x0

    #@13
    long-to-int v3, v0

    #@14
    aput v3, p3, v2

    #@16
    .line 952
    shr-long/2addr v0, v6

    #@17
    .line 953
    add-int/lit8 v2, p4, 0x1

    #@19
    aget v2, p3, v2

    #@1b
    int-to-long v2, v2

    #@1c
    and-long/2addr v2, v8

    #@1d
    ushr-long v4, p1, v6

    #@1f
    sub-long/2addr v2, v4

    #@20
    add-long/2addr v0, v2

    #@21
    .line 954
    add-int/lit8 v2, p4, 0x1

    #@23
    long-to-int v3, v0

    #@24
    aput v3, p3, v2

    #@26
    .line 955
    shr-long/2addr v0, v6

    #@27
    .line 956
    const-wide/16 v2, 0x0

    #@29
    cmp-long v2, v0, v2

    #@2b
    if-nez v2, :cond_0

    #@2d
    const/4 v2, 0x0

    #@2e
    :goto_0
    return v2

    #@2f
    :cond_0
    const/4 v2, 0x2

    #@30
    invoke-static {p0, p3, p4, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    #@33
    move-result v2

    #@34
    goto :goto_0
.end method

.method public static subFrom(I[II[II)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    #@0
    .prologue
    const-wide v8, 0xffffffffL

    #@5
    .line 973
    const-wide/16 v0, 0x0

    #@7
    .line 974
    .local v0, "c":J
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    #@a
    .line 976
    add-int v3, p4, v2

    #@c
    aget v3, p3, v3

    #@e
    int-to-long v4, v3

    #@f
    and-long/2addr v4, v8

    #@10
    add-int v3, p2, v2

    #@12
    aget v3, p1, v3

    #@14
    int-to-long v6, v3

    #@15
    and-long/2addr v6, v8

    #@16
    sub-long/2addr v4, v6

    #@17
    add-long/2addr v0, v4

    #@18
    .line 977
    add-int v3, p4, v2

    #@1a
    long-to-int v4, v0

    #@1b
    aput v4, p3, v3

    #@1d
    .line 978
    const/16 v3, 0x20

    #@1f
    shr-long/2addr v0, v3

    #@20
    .line 974
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_0

    #@23
    .line 980
    :cond_0
    long-to-int v3, v0

    #@24
    return v3
.end method

.method public static subFrom(I[I[I)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    #@0
    .prologue
    const-wide v8, 0xffffffffL

    #@5
    .line 961
    const-wide/16 v0, 0x0

    #@7
    .line 962
    .local v0, "c":J
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    #@a
    .line 964
    aget v3, p2, v2

    #@c
    int-to-long v4, v3

    #@d
    and-long/2addr v4, v8

    #@e
    aget v3, p1, v2

    #@10
    int-to-long v6, v3

    #@11
    and-long/2addr v6, v8

    #@12
    sub-long/2addr v4, v6

    #@13
    add-long/2addr v0, v4

    #@14
    .line 965
    long-to-int v3, v0

    #@15
    aput v3, p2, v2

    #@17
    .line 966
    const/16 v3, 0x20

    #@19
    shr-long/2addr v0, v3

    #@1a
    .line 962
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 968
    :cond_0
    long-to-int v3, v0

    #@1e
    return v3
.end method

.method public static subWordAt(II[II)I
    .locals 8
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zPos"    # I

    #@0
    .prologue
    const-wide v6, 0xffffffffL

    #@5
    .line 986
    aget v2, p2, p3

    #@7
    int-to-long v2, v2

    #@8
    and-long/2addr v2, v6

    #@9
    int-to-long v4, p1

    #@a
    and-long/2addr v4, v6

    #@b
    sub-long v0, v2, v4

    #@d
    .line 987
    .local v0, "c":J
    long-to-int v2, v0

    #@e
    aput v2, p2, p3

    #@10
    .line 988
    const/16 v2, 0x20

    #@12
    shr-long/2addr v0, v2

    #@13
    .line 989
    const-wide/16 v2, 0x0

    #@15
    cmp-long v2, v0, v2

    #@17
    if-nez v2, :cond_0

    #@19
    const/4 v2, 0x0

    #@1a
    :goto_0
    return v2

    #@1b
    :cond_0
    add-int/lit8 v2, p3, 0x1

    #@1d
    invoke-static {p0, p2, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    #@20
    move-result v2

    #@21
    goto :goto_0
.end method

.method public static subWordAt(II[III)I
    .locals 8
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .param p4, "zPos"    # I

    #@0
    .prologue
    const-wide v6, 0xffffffffL

    #@5
    .line 995
    add-int v2, p3, p4

    #@7
    aget v2, p2, v2

    #@9
    int-to-long v2, v2

    #@a
    and-long/2addr v2, v6

    #@b
    int-to-long v4, p1

    #@c
    and-long/2addr v4, v6

    #@d
    sub-long v0, v2, v4

    #@f
    .line 996
    .local v0, "c":J
    add-int v2, p3, p4

    #@11
    long-to-int v3, v0

    #@12
    aput v3, p2, v2

    #@14
    .line 997
    const/16 v2, 0x20

    #@16
    shr-long/2addr v0, v2

    #@17
    .line 998
    const-wide/16 v2, 0x0

    #@19
    cmp-long v2, v0, v2

    #@1b
    if-nez v2, :cond_0

    #@1d
    const/4 v2, 0x0

    #@1e
    :goto_0
    return v2

    #@1f
    :cond_0
    add-int/lit8 v2, p4, 0x1

    #@21
    invoke-static {p0, p2, p3, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    #@24
    move-result v2

    #@25
    goto :goto_0
.end method

.method public static subWordFrom(II[I)I
    .locals 10
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I

    #@0
    .prologue
    const-wide v8, 0xffffffffL

    #@5
    const/4 v2, 0x0

    #@6
    .line 1003
    aget v3, p2, v2

    #@8
    int-to-long v4, v3

    #@9
    and-long/2addr v4, v8

    #@a
    int-to-long v6, p1

    #@b
    and-long/2addr v6, v8

    #@c
    sub-long v0, v4, v6

    #@e
    .line 1004
    .local v0, "c":J
    long-to-int v3, v0

    #@f
    aput v3, p2, v2

    #@11
    .line 1005
    const/16 v3, 0x20

    #@13
    shr-long/2addr v0, v3

    #@14
    .line 1006
    const-wide/16 v4, 0x0

    #@16
    cmp-long v3, v0, v4

    #@18
    if-nez v3, :cond_0

    #@1a
    :goto_0
    return v2

    #@1b
    :cond_0
    const/4 v2, 0x1

    #@1c
    invoke-static {p0, p2, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    #@1f
    move-result v2

    #@20
    goto :goto_0
.end method

.method public static subWordFrom(II[II)I
    .locals 8
    .param p0, "len"    # I
    .param p1, "x"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    #@0
    .prologue
    const-wide v6, 0xffffffffL

    #@5
    .line 1011
    add-int/lit8 v2, p3, 0x0

    #@7
    aget v2, p2, v2

    #@9
    int-to-long v2, v2

    #@a
    and-long/2addr v2, v6

    #@b
    int-to-long v4, p1

    #@c
    and-long/2addr v4, v6

    #@d
    sub-long v0, v2, v4

    #@f
    .line 1012
    .local v0, "c":J
    add-int/lit8 v2, p3, 0x0

    #@11
    long-to-int v3, v0

    #@12
    aput v3, p2, v2

    #@14
    .line 1013
    const/16 v2, 0x20

    #@16
    shr-long/2addr v0, v2

    #@17
    .line 1014
    const-wide/16 v2, 0x0

    #@19
    cmp-long v2, v0, v2

    #@1b
    if-nez v2, :cond_0

    #@1d
    const/4 v2, 0x0

    #@1e
    :goto_0
    return v2

    #@1f
    :cond_0
    const/4 v2, 0x1

    #@20
    invoke-static {p0, p2, p3, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[III)I

    #@23
    move-result v2

    #@24
    goto :goto_0
.end method

.method public static toBigInteger(I[I)Ljava/math/BigInteger;
    .locals 5
    .param p0, "len"    # I
    .param p1, "x"    # [I

    #@0
    .prologue
    .line 1019
    shl-int/lit8 v3, p0, 0x2

    #@2
    new-array v0, v3, [B

    #@4
    .line 1020
    .local v0, "bs":[B
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_1

    #@7
    .line 1022
    aget v2, p1, v1

    #@9
    .line 1023
    .local v2, "x_i":I
    if-eqz v2, :cond_0

    #@b
    .line 1025
    add-int/lit8 v3, p0, -0x1

    #@d
    sub-int/2addr v3, v1

    #@e
    shl-int/lit8 v3, v3, 0x2

    #@10
    invoke-static {v2, v0, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@13
    .line 1020
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1028
    .end local v2    # "x_i":I
    :cond_1
    new-instance v3, Ljava/math/BigInteger;

    #@18
    const/4 v4, 0x1

    #@19
    invoke-direct {v3, v4, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    #@1c
    return-object v3
.end method

.method public static zero(I[I)V
    .locals 2
    .param p0, "len"    # I
    .param p1, "z"    # [I

    #@0
    .prologue
    .line 1033
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    #@3
    .line 1035
    const/4 v1, 0x0

    #@4
    aput v1, p1, v0

    #@6
    .line 1033
    add-int/lit8 v0, v0, 0x1

    #@8
    goto :goto_0

    #@9
    .line 1031
    :cond_0
    return-void
.end method
