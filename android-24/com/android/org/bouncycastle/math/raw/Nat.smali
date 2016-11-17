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

.method public static create64(I)[J
    .locals 1
    .param p0, "len"    # I

    #@0
    .prologue
    .line 216
    new-array v0, p0, [J

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
    .line 221
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    #@4
    .line 223
    aget v1, p1, v0

    #@6
    add-int/lit8 v1, v1, -0x1

    #@8
    aput v1, p1, v0

    #@a
    if-eq v1, v2, :cond_0

    #@c
    .line 225
    const/4 v1, 0x0

    #@d
    return v1

    #@e
    .line 221
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 228
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
    .line 233
    const/4 v1, 0x0

    #@2
    .line 234
    .local v1, "i":I
    :cond_0
    if-ge v1, p0, :cond_2

    #@4
    .line 236
    aget v2, p1, v1

    #@6
    add-int/lit8 v0, v2, -0x1

    #@8
    .line 237
    .local v0, "c":I
    aput v0, p2, v1

    #@a
    .line 238
    add-int/lit8 v1, v1, 0x1

    #@c
    .line 239
    if-eq v0, v3, :cond_0

    #@e
    .line 241
    :goto_0
    if-ge v1, p0, :cond_1

    #@10
    .line 243
    aget v2, p1, v1

    #@12
    aput v2, p2, v1

    #@14
    .line 244
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 246
    :cond_1
    const/4 v2, 0x0

    #@18
    return v2

    #@19
    .line 249
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
    .line 255
    move v0, p2

    #@2
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    #@4
    .line 257
    aget v1, p1, v0

    #@6
    add-int/lit8 v1, v1, -0x1

    #@8
    aput v1, p1, v0

    #@a
    if-eq v1, v2, :cond_0

    #@c
    .line 259
    const/4 v1, 0x0

    #@d
    return v1

    #@e
    .line 255
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 262
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
    .line 268
    move v0, p3

    #@2
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    #@4
    .line 270
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
    .line 272
    const/4 v1, 0x0

    #@f
    return v1

    #@10
    .line 268
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 275
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
    .line 280
    add-int/lit8 v0, p0, -0x1

    #@3
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@5
    .line 282
    aget v1, p1, v0

    #@7
    aget v2, p2, v0

    #@9
    if-eq v1, v2, :cond_0

    #@b
    .line 284
    return v3

    #@c
    .line 280
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@e
    goto :goto_0

    #@f
    .line 287
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
    .line 292
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
    .line 294
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@e
    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@11
    throw v4

    #@12
    .line 297
    :cond_1
    add-int/lit8 v4, p0, 0x1f

    #@14
    shr-int/lit8 v2, v4, 0x5

    #@16
    .line 298
    .local v2, "len":I
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    #@19
    move-result-object v3

    #@1a
    .line 299
    .local v3, "z":[I
    const/4 v0, 0x0

    #@1b
    .line 300
    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_2

    #@21
    .line 302
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
    .line 303
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
    .line 305
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
    .line 310
    if-nez p1, :cond_0

    #@3
    .line 312
    aget v2, p0, v3

    #@5
    and-int/lit8 v2, v2, 0x1

    #@7
    return v2

    #@8
    .line 314
    :cond_0
    shr-int/lit8 v1, p1, 0x5

    #@a
    .line 315
    .local v1, "w":I
    if-ltz v1, :cond_1

    #@c
    array-length v2, p0

    #@d
    if-lt v1, v2, :cond_2

    #@f
    .line 317
    :cond_1
    return v3

    #@10
    .line 319
    :cond_2
    and-int/lit8 v0, p1, 0x1f

    #@12
    .line 320
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
    .line 325
    add-int/lit8 v0, p0, -0x1

    #@6
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@8
    .line 327
    aget v3, p1, v0

    #@a
    xor-int v1, v3, v4

    #@c
    .line 328
    .local v1, "x_i":I
    aget v3, p2, v0

    #@e
    xor-int v2, v3, v4

    #@10
    .line 329
    .local v2, "y_i":I
    if-ge v1, v2, :cond_0

    #@12
    .line 330
    return v5

    #@13
    .line 331
    :cond_0
    if-le v1, v2, :cond_1

    #@15
    .line 332
    return v6

    #@16
    .line 325
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@18
    goto :goto_0

    #@19
    .line 334
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
    .line 339
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    #@4
    .line 341
    aget v1, p1, v0

    #@6
    add-int/lit8 v1, v1, 0x1

    #@8
    aput v1, p1, v0

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 343
    return v2

    #@d
    .line 339
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 346
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
    .line 351
    const/4 v1, 0x0

    #@2
    .line 352
    .local v1, "i":I
    :cond_0
    if-ge v1, p0, :cond_2

    #@4
    .line 354
    aget v2, p1, v1

    #@6
    add-int/lit8 v0, v2, 0x1

    #@8
    .line 355
    .local v0, "c":I
    aput v0, p2, v1

    #@a
    .line 356
    add-int/lit8 v1, v1, 0x1

    #@c
    .line 357
    if-eqz v0, :cond_0

    #@e
    .line 359
    :goto_0
    if-ge v1, p0, :cond_1

    #@10
    .line 361
    aget v2, p1, v1

    #@12
    aput v2, p2, v1

    #@14
    .line 362
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 364
    :cond_1
    return v3

    #@18
    .line 367
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
    .line 373
    move v0, p2

    #@2
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    #@4
    .line 375
    aget v1, p1, v0

    #@6
    add-int/lit8 v1, v1, 0x1

    #@8
    aput v1, p1, v0

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 377
    return v2

    #@d
    .line 373
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 380
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
    .line 386
    move v0, p3

    #@2
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    #@4
    .line 388
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
    .line 390
    return v3

    #@f
    .line 386
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 393
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
    .line 398
    aget v1, p1, v2

    #@4
    if-eq v1, v3, :cond_0

    #@6
    .line 400
    return v2

    #@7
    .line 402
    :cond_0
    const/4 v0, 0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_2

    #@a
    .line 404
    aget v1, p1, v0

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 406
    return v2

    #@f
    .line 402
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 409
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
    .line 414
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    #@4
    .line 416
    aget v1, p1, v0

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 418
    return v2

    #@9
    .line 414
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 421
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
    .line 436
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
    .line 438
    const/4 v6, 0x1

    #@10
    .local v6, "i":I
    :goto_0
    if-ge v6, p0, :cond_0

    #@12
    .line 440
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
    .line 438
    add-int/lit8 v6, v6, 0x1

    #@28
    goto :goto_0

    #@29
    .line 434
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
    .line 426
    aget v0, p1, v3

    #@3
    invoke-static {p0, v0, p2, p3}, Lcom/android/org/bouncycastle/math/raw/Nat;->mulWord(II[I[I)I

    #@6
    move-result v0

    #@7
    aput v0, p3, p0

    #@9
    .line 428
    const/4 v5, 0x1

    #@a
    .local v5, "i":I
    :goto_0
    if-ge v5, p0, :cond_0

    #@c
    .line 430
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
    .line 428
    add-int/lit8 v5, v5, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 424
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
    .line 473
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
    .line 474
    .local v4, "bVal":J
    const/4 v8, 0x0

    #@17
    .line 477
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
    .line 478
    add-int v9, p6, v8

    #@3b
    long-to-int v10, v6

    #@3c
    aput v10, p5, v9

    #@3e
    .line 479
    const/16 v9, 0x20

    #@40
    ushr-long/2addr v6, v9

    #@41
    .line 481
    add-int/lit8 v8, v8, 0x1

    #@43
    move/from16 v0, p0

    #@45
    if-lt v8, v0, :cond_0

    #@47
    .line 482
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
    .line 459
    const-wide/16 v10, 0x0

    #@2
    .line 460
    .local v10, "zc":J
    const/4 v8, 0x0

    #@3
    .local v8, "i":I
    :goto_0
    if-ge v8, p0, :cond_0

    #@5
    .line 462
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
    .line 463
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
    .line 464
    add-int v0, p6, p0

    #@2c
    long-to-int v1, v6

    #@2d
    aput v1, p5, v0

    #@2f
    .line 465
    const/16 v0, 0x20

    #@31
    ushr-long v10, v6, v0

    #@33
    .line 466
    add-int/lit8 p6, p6, 0x1

    #@35
    .line 460
    add-int/lit8 v8, v8, 0x1

    #@37
    goto :goto_0

    #@38
    .line 468
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
    .line 446
    const-wide/16 v8, 0x0

    #@7
    .line 447
    .local v8, "zc":J
    const/4 v5, 0x0

    #@8
    .local v5, "i":I
    :goto_0
    if-ge v5, p0, :cond_0

    #@a
    .line 449
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
    .line 450
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
    .line 451
    add-int v0, v5, p0

    #@21
    long-to-int v1, v6

    #@22
    aput v1, p3, v0

    #@24
    .line 452
    const/16 v0, 0x20

    #@26
    ushr-long v8, v6, v0

    #@28
    .line 447
    add-int/lit8 v5, v5, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 454
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
    .line 501
    const-wide/16 v0, 0x0

    #@7
    .local v0, "c":J
    int-to-long v6, p1

    #@8
    and-long v4, v6, v8

    #@a
    .line 502
    .local v4, "xVal":J
    const/4 v2, 0x0

    #@b
    .line 505
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
    .line 506
    add-int v3, p5, v2

    #@15
    long-to-int v6, v0

    #@16
    aput v6, p4, v3

    #@18
    .line 507
    const/16 v3, 0x20

    #@1a
    ushr-long/2addr v0, v3

    #@1b
    .line 509
    add-int/lit8 v2, v2, 0x1

    #@1d
    if-lt v2, p0, :cond_0

    #@1f
    .line 510
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
    .line 487
    const-wide/16 v0, 0x0

    #@7
    .local v0, "c":J
    int-to-long v6, p1

    #@8
    and-long v4, v6, v8

    #@a
    .line 488
    .local v4, "xVal":J
    const/4 v2, 0x0

    #@b
    .line 491
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
    .line 492
    long-to-int v3, v0

    #@12
    aput v3, p3, v2

    #@14
    .line 493
    const/16 v3, 0x20

    #@16
    ushr-long/2addr v0, v3

    #@17
    .line 495
    add-int/lit8 v2, v2, 0x1

    #@19
    if-lt v2, p0, :cond_0

    #@1b
    .line 496
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
    .line 515
    const-wide/16 v0, 0x0

    #@2
    .local v0, "c":J
    int-to-long v6, p1

    #@3
    const-wide v8, 0xffffffffL

    #@8
    and-long v4, v6, v8

    #@a
    .line 516
    .local v4, "xVal":J
    const/4 v2, 0x0

    #@b
    .line 519
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
    .line 520
    add-int v3, p5, v2

    #@26
    long-to-int v6, v0

    #@27
    aput v6, p4, v3

    #@29
    .line 521
    const/16 v3, 0x20

    #@2b
    ushr-long/2addr v0, v3

    #@2c
    .line 523
    add-int/lit8 v2, v2, 0x1

    #@2e
    if-lt v2, p0, :cond_0

    #@30
    .line 524
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
    .line 530
    int-to-long v4, p1

    #@1
    const-wide v6, 0xffffffffL

    #@6
    and-long v2, v4, v6

    #@8
    .line 531
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
    .line 530
    const-wide/16 v6, 0x0

    #@1d
    .line 531
    add-long v0, v6, v4

    #@1f
    .line 532
    .local v0, "c":J
    add-int/lit8 v4, p5, 0x0

    #@21
    long-to-int v5, v0

    #@22
    aput v5, p4, v4

    #@24
    .line 533
    const/16 v4, 0x20

    #@26
    ushr-long/2addr v0, v4

    #@27
    .line 534
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
    .line 535
    add-int/lit8 v4, p5, 0x1

    #@3b
    long-to-int v5, v0

    #@3c
    aput v5, p4, v4

    #@3e
    .line 536
    const/16 v4, 0x20

    #@40
    ushr-long/2addr v0, v4

    #@41
    .line 537
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
    .line 538
    add-int/lit8 v4, p5, 0x2

    #@4f
    long-to-int v5, v0

    #@50
    aput v5, p4, v4

    #@52
    .line 539
    const/16 v4, 0x20

    #@54
    ushr-long/2addr v0, v4

    #@55
    .line 540
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
    .line 545
    move v0, p0

    #@1
    .line 546
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    #@3
    if-ltz v0, :cond_0

    #@5
    .line 548
    aget v1, p1, v0

    #@7
    .line 549
    .local v1, "next":I
    ushr-int/lit8 v2, v1, 0x1

    #@9
    shl-int/lit8 v3, p2, 0x1f

    #@b
    or-int/2addr v2, v3

    #@c
    aput v2, p1, v0

    #@e
    .line 550
    move p2, v1

    #@f
    goto :goto_0

    #@10
    .line 552
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
    .line 557
    move v0, p0

    #@1
    .line 558
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    #@3
    if-ltz v0, :cond_0

    #@5
    .line 560
    add-int v2, p2, v0

    #@7
    aget v1, p1, v2

    #@9
    .line 561
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
    .line 562
    move p3, v1

    #@13
    goto :goto_0

    #@14
    .line 564
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
    .line 581
    move v0, p0

    #@1
    .line 582
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    #@3
    if-ltz v0, :cond_0

    #@5
    .line 584
    add-int v2, p2, v0

    #@7
    aget v1, p1, v2

    #@9
    .line 585
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
    .line 586
    move p3, v1

    #@13
    goto :goto_0

    #@14
    .line 588
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
    .line 569
    move v0, p0

    #@1
    .line 570
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    #@3
    if-ltz v0, :cond_0

    #@5
    .line 572
    aget v1, p1, v0

    #@7
    .line 573
    .local v1, "next":I
    ushr-int/lit8 v2, v1, 0x1

    #@9
    shl-int/lit8 v3, p2, 0x1f

    #@b
    or-int/2addr v2, v3

    #@c
    aput v2, p3, v0

    #@e
    .line 574
    move p2, v1

    #@f
    goto :goto_0

    #@10
    .line 576
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
    .line 594
    move v0, p0

    #@1
    .line 595
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    #@3
    if-ltz v0, :cond_0

    #@5
    .line 597
    aget v1, p1, v0

    #@7
    .line 598
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
    .line 599
    move p3, v1

    #@10
    goto :goto_0

    #@11
    .line 601
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
    .line 607
    move v0, p0

    #@1
    .line 608
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    #@3
    if-ltz v0, :cond_0

    #@5
    .line 610
    add-int v2, p2, v0

    #@7
    aget v1, p1, v2

    #@9
    .line 611
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
    .line 612
    move p4, v1

    #@14
    goto :goto_0

    #@15
    .line 614
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
    .line 633
    move v0, p0

    #@1
    .line 634
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    #@3
    if-ltz v0, :cond_0

    #@5
    .line 636
    add-int v2, p2, v0

    #@7
    aget v1, p1, v2

    #@9
    .line 637
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
    .line 638
    move p4, v1

    #@14
    goto :goto_0

    #@15
    .line 640
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
    .line 620
    move v0, p0

    #@1
    .line 621
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    #@3
    if-ltz v0, :cond_0

    #@5
    .line 623
    aget v1, p1, v0

    #@7
    .line 624
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
    .line 625
    move p3, v1

    #@10
    goto :goto_0

    #@11
    .line 627
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
    .line 645
    move v0, p0

    #@1
    .line 646
    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    #@3
    if-ltz v0, :cond_0

    #@5
    .line 648
    aget v1, p1, v0

    #@7
    .line 649
    .local v1, "next":I
    aput p2, p1, v0

    #@9
    .line 650
    move p2, v1

    #@a
    goto :goto_0

    #@b
    .line 652
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
    .line 657
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    #@3
    .line 659
    aget v1, p1, v0

    #@5
    .line 660
    .local v1, "next":I
    shl-int/lit8 v2, v1, 0x1

    #@7
    ushr-int/lit8 v3, p2, 0x1f

    #@9
    or-int/2addr v2, v3

    #@a
    aput v2, p1, v0

    #@c
    .line 661
    move p2, v1

    #@d
    .line 657
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 663
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
    .line 668
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    #@3
    .line 670
    add-int v2, p2, v0

    #@5
    aget v1, p1, v2

    #@7
    .line 671
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
    .line 672
    move p3, v1

    #@11
    .line 668
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 674
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
    .line 690
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    #@3
    .line 692
    add-int v2, p2, v0

    #@5
    aget v1, p1, v2

    #@7
    .line 693
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
    .line 694
    move p3, v1

    #@11
    .line 690
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 696
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
    .line 679
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    #@3
    .line 681
    aget v1, p1, v0

    #@5
    .line 682
    .local v1, "next":I
    shl-int/lit8 v2, v1, 0x1

    #@7
    ushr-int/lit8 v3, p2, 0x1f

    #@9
    or-int/2addr v2, v3

    #@a
    aput v2, p3, v0

    #@c
    .line 683
    move p2, v1

    #@d
    .line 679
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 685
    .end local v1    # "next":I
    :cond_0
    ushr-int/lit8 v2, p2, 0x1f

    #@12
    return v2
.end method

.method public static shiftUpBit64(I[JIJ[JI)J
    .locals 9
    .param p0, "len"    # I
    .param p1, "x"    # [J
    .param p2, "xOff"    # I
    .param p3, "c"    # J
    .param p5, "z"    # [J
    .param p6, "zOff"    # I

    #@0
    .prologue
    const/16 v8, 0x3f

    #@2
    .line 701
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    #@5
    .line 703
    add-int v1, p2, v0

    #@7
    aget-wide v2, p1, v1

    #@9
    .line 704
    .local v2, "next":J
    add-int v1, p6, v0

    #@b
    const/4 v4, 0x1

    #@c
    shl-long v4, v2, v4

    #@e
    ushr-long v6, p3, v8

    #@10
    or-long/2addr v4, v6

    #@11
    aput-wide v4, p5, v1

    #@13
    .line 705
    move-wide p3, v2

    #@14
    .line 701
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 707
    .end local v2    # "next":J
    :cond_0
    ushr-long v4, p3, v8

    #@19
    return-wide v4
.end method

.method public static shiftUpBits(I[III)I
    .locals 4
    .param p0, "len"    # I
    .param p1, "z"    # [I
    .param p2, "bits"    # I
    .param p3, "c"    # I

    #@0
    .prologue
    .line 713
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    #@3
    .line 715
    aget v1, p1, v0

    #@5
    .line 716
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
    .line 717
    move p3, v1

    #@e
    .line 713
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 719
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
    .line 725
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    #@3
    .line 727
    add-int v2, p2, v0

    #@5
    aget v1, p1, v2

    #@7
    .line 728
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
    .line 729
    move p4, v1

    #@12
    .line 725
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 731
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
    .line 761
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    #@3
    .line 763
    add-int v2, p2, v0

    #@5
    aget v1, p1, v2

    #@7
    .line 764
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
    .line 765
    move p4, v1

    #@12
    .line 761
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 767
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
    .line 749
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    #@3
    .line 751
    aget v1, p1, v0

    #@5
    .line 752
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
    .line 753
    move p3, v1

    #@e
    .line 749
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 755
    .end local v1    # "next":I
    :cond_0
    neg-int v2, p2

    #@12
    ushr-int v2, p3, v2

    #@14
    return v2
.end method

.method public static shiftUpBits64(I[JIIJ)J
    .locals 8
    .param p0, "len"    # I
    .param p1, "z"    # [J
    .param p2, "zOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # J

    #@0
    .prologue
    .line 737
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    #@3
    .line 739
    add-int v1, p2, v0

    #@5
    aget-wide v2, p1, v1

    #@7
    .line 740
    .local v2, "next":J
    add-int v1, p2, v0

    #@9
    shl-long v4, v2, p3

    #@b
    neg-int v6, p3

    #@c
    ushr-long v6, p4, v6

    #@e
    or-long/2addr v4, v6

    #@f
    aput-wide v4, p1, v1

    #@11
    .line 741
    move-wide p4, v2

    #@12
    .line 737
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 743
    .end local v2    # "next":J
    :cond_0
    neg-int v1, p3

    #@16
    ushr-long v4, p4, v1

    #@18
    return-wide v4
.end method

.method public static shiftUpBits64(I[JIIJ[JI)J
    .locals 8
    .param p0, "len"    # I
    .param p1, "x"    # [J
    .param p2, "xOff"    # I
    .param p3, "bits"    # I
    .param p4, "c"    # J
    .param p6, "z"    # [J
    .param p7, "zOff"    # I

    #@0
    .prologue
    .line 773
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    #@3
    .line 775
    add-int v1, p2, v0

    #@5
    aget-wide v2, p1, v1

    #@7
    .line 776
    .local v2, "next":J
    add-int v1, p7, v0

    #@9
    shl-long v4, v2, p3

    #@b
    neg-int v6, p3

    #@c
    ushr-long v6, p4, v6

    #@e
    or-long/2addr v4, v6

    #@f
    aput-wide v4, p6, v1

    #@11
    .line 777
    move-wide p4, v2

    #@12
    .line 773
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 779
    .end local v2    # "next":J
    :cond_0
    neg-int v1, p3

    #@16
    ushr-long v4, p4, v1

    #@18
    return-wide v4
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
    .line 808
    shl-int/lit8 v5, p0, 0x1

    #@2
    .line 809
    .local v5, "extLen":I
    const/4 v4, 0x0

    #@3
    .line 810
    .local v4, "c":I
    move/from16 v7, p0

    #@5
    .local v7, "j":I
    move v8, v5

    #@6
    .line 813
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
    .line 814
    .local v12, "xVal":J
    mul-long v10, v12, v12

    #@16
    .line 815
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
    .line 816
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
    .line 817
    long-to-int v4, v10

    #@31
    .line 819
    if-gtz v7, :cond_0

    #@33
    .line 821
    const/4 v6, 0x1

    #@34
    .local v6, "i":I
    :goto_0
    move/from16 v0, p0

    #@36
    if-ge v6, v0, :cond_1

    #@38
    .line 823
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
    .line 824
    shl-int/lit8 v9, v6, 0x1

    #@46
    move-object/from16 v0, p3

    #@48
    move/from16 v1, p4

    #@4a
    invoke-static {v5, v4, v0, v1, v9}, Lcom/android/org/bouncycastle/math/raw/Nat;->addWordAt(II[III)I

    #@4d
    .line 821
    add-int/lit8 v6, v6, 0x1

    #@4f
    goto :goto_0

    #@50
    .line 827
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
    .line 806
    return-void
.end method

.method public static square(I[I[I)V
    .locals 16
    .param p0, "len"    # I
    .param p1, "x"    # [I
    .param p2, "zz"    # [I

    #@0
    .prologue
    .line 784
    shl-int/lit8 v3, p0, 0x1

    #@2
    .line 785
    .local v3, "extLen":I
    const/4 v2, 0x0

    #@3
    .line 786
    .local v2, "c":I
    move/from16 v5, p0

    #@5
    .local v5, "j":I
    move v6, v3

    #@6
    .line 789
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
    .line 790
    .local v10, "xVal":J
    mul-long v8, v10, v10

    #@14
    .line 791
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
    .line 792
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
    .line 793
    long-to-int v2, v8

    #@29
    .line 795
    if-gtz v5, :cond_0

    #@2b
    .line 797
    const/4 v4, 0x1

    #@2c
    .local v4, "i":I
    :goto_0
    move/from16 v0, p0

    #@2e
    if-ge v4, v0, :cond_1

    #@30
    .line 799
    move-object/from16 v0, p1

    #@32
    move-object/from16 v1, p2

    #@34
    invoke-static {v0, v4, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->squareWordAdd([II[I)I

    #@37
    move-result v2

    #@38
    .line 800
    shl-int/lit8 v7, v4, 0x1

    #@3a
    move-object/from16 v0, p2

    #@3c
    invoke-static {v3, v2, v0, v7}, Lcom/android/org/bouncycastle/math/raw/Nat;->addWordAt(II[II)I

    #@3f
    .line 797
    add-int/lit8 v4, v4, 0x1

    #@41
    goto :goto_0

    #@42
    .line 803
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
    .line 782
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
    .line 846
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
    .line 847
    .local v4, "xVal":J
    const/4 v2, 0x0

    #@f
    .line 850
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
    .line 851
    add-int v3, p2, p4

    #@2a
    long-to-int v6, v0

    #@2b
    aput v6, p3, v3

    #@2d
    .line 852
    const/16 v3, 0x20

    #@2f
    ushr-long/2addr v0, v3

    #@30
    .line 853
    add-int/lit8 p4, p4, 0x1

    #@32
    .line 855
    add-int/lit8 v2, v2, 0x1

    #@34
    if-lt v2, p2, :cond_0

    #@36
    .line 856
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
    .line 832
    const-wide/16 v0, 0x0

    #@7
    .local v0, "c":J
    aget v3, p0, p1

    #@9
    int-to-long v6, v3

    #@a
    and-long v4, v6, v10

    #@c
    .line 833
    .local v4, "xVal":J
    const/4 v2, 0x0

    #@d
    .line 836
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
    .line 837
    add-int v3, p1, v2

    #@1c
    long-to-int v6, v0

    #@1d
    aput v6, p2, v3

    #@1f
    .line 838
    const/16 v3, 0x20

    #@21
    ushr-long/2addr v0, v3

    #@22
    .line 840
    add-int/lit8 v2, v2, 0x1

    #@24
    if-lt v2, p1, :cond_0

    #@26
    .line 841
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
    .line 873
    const-wide/16 v0, 0x0

    #@2
    .line 874
    .local v0, "c":J
    const/4 v2, 0x0

    #@3
    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    #@5
    .line 876
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
    .line 877
    add-int v3, p6, v2

    #@1f
    long-to-int v4, v0

    #@20
    aput v4, p5, v3

    #@22
    .line 878
    const/16 v3, 0x20

    #@24
    shr-long/2addr v0, v3

    #@25
    .line 874
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_0

    #@28
    .line 880
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
    .line 861
    const-wide/16 v0, 0x0

    #@7
    .line 862
    .local v0, "c":J
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    #@a
    .line 864
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
    .line 865
    long-to-int v3, v0

    #@15
    aput v3, p3, v2

    #@17
    .line 866
    const/16 v3, 0x20

    #@19
    shr-long/2addr v0, v3

    #@1a
    .line 862
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 868
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
    .line 886
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
    .line 887
    .local v0, "c":J
    add-int/lit8 v2, p3, 0x0

    #@13
    long-to-int v3, v0

    #@14
    aput v3, p2, v2

    #@16
    .line 888
    shr-long/2addr v0, v8

    #@17
    .line 889
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
    .line 890
    add-int/lit8 v2, p3, 0x1

    #@23
    long-to-int v3, v0

    #@24
    aput v3, p2, v2

    #@26
    .line 891
    shr-long/2addr v0, v8

    #@27
    .line 892
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
    .line 898
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
    .line 899
    .local v0, "c":J
    add-int v2, p3, p4

    #@13
    long-to-int v3, v0

    #@14
    aput v3, p2, v2

    #@16
    .line 900
    shr-long/2addr v0, v8

    #@17
    .line 901
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
    .line 902
    add-int v2, p3, p4

    #@25
    add-int/lit8 v2, v2, 0x1

    #@27
    long-to-int v3, v0

    #@28
    aput v3, p2, v2

    #@2a
    .line 903
    shr-long/2addr v0, v8

    #@2b
    .line 904
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
    .line 909
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
    .line 910
    .local v0, "c":J
    long-to-int v3, v0

    #@12
    aput v3, p2, v2

    #@14
    .line 911
    shr-long/2addr v0, v11

    #@15
    .line 912
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
    .line 913
    long-to-int v3, v0

    #@1e
    aput v3, p2, v10

    #@20
    .line 914
    shr-long/2addr v0, v11

    #@21
    .line 915
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
    .line 920
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
    .line 921
    .local v0, "c":J
    add-int/lit8 v2, p3, 0x0

    #@13
    long-to-int v3, v0

    #@14
    aput v3, p2, v2

    #@16
    .line 922
    shr-long/2addr v0, v8

    #@17
    .line 923
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
    .line 924
    add-int/lit8 v2, p3, 0x1

    #@23
    long-to-int v3, v0

    #@24
    aput v3, p2, v2

    #@26
    .line 925
    shr-long/2addr v0, v8

    #@27
    .line 926
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
    .line 943
    const-wide/16 v0, 0x0

    #@2
    .line 944
    .local v0, "c":J
    const/4 v2, 0x0

    #@3
    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    #@5
    .line 946
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
    .line 947
    add-int v3, p6, v2

    #@2b
    long-to-int v4, v0

    #@2c
    aput v4, p5, v3

    #@2e
    .line 948
    const/16 v3, 0x20

    #@30
    shr-long/2addr v0, v3

    #@31
    .line 944
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_0

    #@34
    .line 950
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
    .line 931
    const-wide/16 v0, 0x0

    #@7
    .line 932
    .local v0, "c":J
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    #@a
    .line 934
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
    .line 935
    long-to-int v3, v0

    #@1a
    aput v3, p3, v2

    #@1c
    .line 936
    const/16 v3, 0x20

    #@1e
    shr-long/2addr v0, v3

    #@1f
    .line 932
    add-int/lit8 v2, v2, 0x1

    #@21
    goto :goto_0

    #@22
    .line 938
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
    .line 956
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
    .line 957
    .local v0, "c":J
    add-int/lit8 v2, p4, 0x0

    #@13
    long-to-int v3, v0

    #@14
    aput v3, p3, v2

    #@16
    .line 958
    shr-long/2addr v0, v6

    #@17
    .line 959
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
    .line 960
    add-int/lit8 v2, p4, 0x1

    #@23
    long-to-int v3, v0

    #@24
    aput v3, p3, v2

    #@26
    .line 961
    shr-long/2addr v0, v6

    #@27
    .line 962
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
    .line 968
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
    .line 969
    .local v0, "c":J
    add-int v2, p4, p5

    #@13
    long-to-int v3, v0

    #@14
    aput v3, p3, v2

    #@16
    .line 970
    shr-long/2addr v0, v6

    #@17
    .line 971
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
    .line 972
    add-int v2, p4, p5

    #@25
    add-int/lit8 v2, v2, 0x1

    #@27
    long-to-int v3, v0

    #@28
    aput v3, p3, v2

    #@2a
    .line 973
    shr-long/2addr v0, v6

    #@2b
    .line 974
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
    .line 979
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
    .line 980
    .local v2, "c":J
    long-to-int v5, v2

    #@12
    aput v5, p3, v4

    #@14
    .line 981
    shr-long/2addr v2, v10

    #@15
    .line 982
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
    .line 983
    long-to-int v5, v2

    #@1e
    aput v5, p3, v11

    #@20
    .line 984
    shr-long/2addr v2, v10

    #@21
    .line 985
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
    .line 990
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
    .line 991
    .local v0, "c":J
    add-int/lit8 v2, p4, 0x0

    #@13
    long-to-int v3, v0

    #@14
    aput v3, p3, v2

    #@16
    .line 992
    shr-long/2addr v0, v6

    #@17
    .line 993
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
    .line 994
    add-int/lit8 v2, p4, 0x1

    #@23
    long-to-int v3, v0

    #@24
    aput v3, p3, v2

    #@26
    .line 995
    shr-long/2addr v0, v6

    #@27
    .line 996
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
    .line 1013
    const-wide/16 v0, 0x0

    #@7
    .line 1014
    .local v0, "c":J
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    #@a
    .line 1016
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
    .line 1017
    add-int v3, p4, v2

    #@1a
    long-to-int v4, v0

    #@1b
    aput v4, p3, v3

    #@1d
    .line 1018
    const/16 v3, 0x20

    #@1f
    shr-long/2addr v0, v3

    #@20
    .line 1014
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_0

    #@23
    .line 1020
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
    .line 1001
    const-wide/16 v0, 0x0

    #@7
    .line 1002
    .local v0, "c":J
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    #@a
    .line 1004
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
    .line 1005
    long-to-int v3, v0

    #@15
    aput v3, p2, v2

    #@17
    .line 1006
    const/16 v3, 0x20

    #@19
    shr-long/2addr v0, v3

    #@1a
    .line 1002
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 1008
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
    .line 1026
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
    .line 1027
    .local v0, "c":J
    long-to-int v2, v0

    #@e
    aput v2, p2, p3

    #@10
    .line 1028
    const/16 v2, 0x20

    #@12
    shr-long/2addr v0, v2

    #@13
    .line 1029
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
    .line 1035
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
    .line 1036
    .local v0, "c":J
    add-int v2, p3, p4

    #@11
    long-to-int v3, v0

    #@12
    aput v3, p2, v2

    #@14
    .line 1037
    const/16 v2, 0x20

    #@16
    shr-long/2addr v0, v2

    #@17
    .line 1038
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
    .line 1043
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
    .line 1044
    .local v0, "c":J
    long-to-int v3, v0

    #@f
    aput v3, p2, v2

    #@11
    .line 1045
    const/16 v3, 0x20

    #@13
    shr-long/2addr v0, v3

    #@14
    .line 1046
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
    .line 1051
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
    .line 1052
    .local v0, "c":J
    add-int/lit8 v2, p3, 0x0

    #@11
    long-to-int v3, v0

    #@12
    aput v3, p2, v2

    #@14
    .line 1053
    const/16 v2, 0x20

    #@16
    shr-long/2addr v0, v2

    #@17
    .line 1054
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
    .line 1059
    shl-int/lit8 v3, p0, 0x2

    #@2
    new-array v0, v3, [B

    #@4
    .line 1060
    .local v0, "bs":[B
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_1

    #@7
    .line 1062
    aget v2, p1, v1

    #@9
    .line 1063
    .local v2, "x_i":I
    if-eqz v2, :cond_0

    #@b
    .line 1065
    add-int/lit8 v3, p0, -0x1

    #@d
    sub-int/2addr v3, v1

    #@e
    shl-int/lit8 v3, v3, 0x2

    #@10
    invoke-static {v2, v0, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@13
    .line 1060
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1068
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
    .line 1073
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    #@3
    .line 1075
    const/4 v1, 0x0

    #@4
    aput v1, p1, v0

    #@6
    .line 1073
    add-int/lit8 v0, v0, 0x1

    #@8
    goto :goto_0

    #@9
    .line 1071
    :cond_0
    return-void
.end method
