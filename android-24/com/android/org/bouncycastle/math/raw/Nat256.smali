.class public abstract Lcom/android/org/bouncycastle/math/raw/Nat256;
.super Ljava/lang/Object;
.source "Nat256.java"


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

.method public static add([II[II[II)I
    .locals 9
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    #@0
    .prologue
    const/16 v8, 0x20

    #@2
    const-wide v6, 0xffffffffL

    #@7
    .line 44
    add-int/lit8 v2, p1, 0x0

    #@9
    aget v2, p0, v2

    #@b
    int-to-long v2, v2

    #@c
    and-long/2addr v2, v6

    #@d
    add-int/lit8 v4, p3, 0x0

    #@f
    aget v4, p2, v4

    #@11
    int-to-long v4, v4

    #@12
    and-long/2addr v4, v6

    #@13
    add-long/2addr v2, v4

    #@14
    .line 43
    const-wide/16 v4, 0x0

    #@16
    .line 44
    add-long v0, v4, v2

    #@18
    .line 45
    .local v0, "c":J
    add-int/lit8 v2, p5, 0x0

    #@1a
    long-to-int v3, v0

    #@1b
    aput v3, p4, v2

    #@1d
    .line 46
    ushr-long/2addr v0, v8

    #@1e
    .line 47
    add-int/lit8 v2, p1, 0x1

    #@20
    aget v2, p0, v2

    #@22
    int-to-long v2, v2

    #@23
    and-long/2addr v2, v6

    #@24
    add-int/lit8 v4, p3, 0x1

    #@26
    aget v4, p2, v4

    #@28
    int-to-long v4, v4

    #@29
    and-long/2addr v4, v6

    #@2a
    add-long/2addr v2, v4

    #@2b
    add-long/2addr v0, v2

    #@2c
    .line 48
    add-int/lit8 v2, p5, 0x1

    #@2e
    long-to-int v3, v0

    #@2f
    aput v3, p4, v2

    #@31
    .line 49
    ushr-long/2addr v0, v8

    #@32
    .line 50
    add-int/lit8 v2, p1, 0x2

    #@34
    aget v2, p0, v2

    #@36
    int-to-long v2, v2

    #@37
    and-long/2addr v2, v6

    #@38
    add-int/lit8 v4, p3, 0x2

    #@3a
    aget v4, p2, v4

    #@3c
    int-to-long v4, v4

    #@3d
    and-long/2addr v4, v6

    #@3e
    add-long/2addr v2, v4

    #@3f
    add-long/2addr v0, v2

    #@40
    .line 51
    add-int/lit8 v2, p5, 0x2

    #@42
    long-to-int v3, v0

    #@43
    aput v3, p4, v2

    #@45
    .line 52
    ushr-long/2addr v0, v8

    #@46
    .line 53
    add-int/lit8 v2, p1, 0x3

    #@48
    aget v2, p0, v2

    #@4a
    int-to-long v2, v2

    #@4b
    and-long/2addr v2, v6

    #@4c
    add-int/lit8 v4, p3, 0x3

    #@4e
    aget v4, p2, v4

    #@50
    int-to-long v4, v4

    #@51
    and-long/2addr v4, v6

    #@52
    add-long/2addr v2, v4

    #@53
    add-long/2addr v0, v2

    #@54
    .line 54
    add-int/lit8 v2, p5, 0x3

    #@56
    long-to-int v3, v0

    #@57
    aput v3, p4, v2

    #@59
    .line 55
    ushr-long/2addr v0, v8

    #@5a
    .line 56
    add-int/lit8 v2, p1, 0x4

    #@5c
    aget v2, p0, v2

    #@5e
    int-to-long v2, v2

    #@5f
    and-long/2addr v2, v6

    #@60
    add-int/lit8 v4, p3, 0x4

    #@62
    aget v4, p2, v4

    #@64
    int-to-long v4, v4

    #@65
    and-long/2addr v4, v6

    #@66
    add-long/2addr v2, v4

    #@67
    add-long/2addr v0, v2

    #@68
    .line 57
    add-int/lit8 v2, p5, 0x4

    #@6a
    long-to-int v3, v0

    #@6b
    aput v3, p4, v2

    #@6d
    .line 58
    ushr-long/2addr v0, v8

    #@6e
    .line 59
    add-int/lit8 v2, p1, 0x5

    #@70
    aget v2, p0, v2

    #@72
    int-to-long v2, v2

    #@73
    and-long/2addr v2, v6

    #@74
    add-int/lit8 v4, p3, 0x5

    #@76
    aget v4, p2, v4

    #@78
    int-to-long v4, v4

    #@79
    and-long/2addr v4, v6

    #@7a
    add-long/2addr v2, v4

    #@7b
    add-long/2addr v0, v2

    #@7c
    .line 60
    add-int/lit8 v2, p5, 0x5

    #@7e
    long-to-int v3, v0

    #@7f
    aput v3, p4, v2

    #@81
    .line 61
    ushr-long/2addr v0, v8

    #@82
    .line 62
    add-int/lit8 v2, p1, 0x6

    #@84
    aget v2, p0, v2

    #@86
    int-to-long v2, v2

    #@87
    and-long/2addr v2, v6

    #@88
    add-int/lit8 v4, p3, 0x6

    #@8a
    aget v4, p2, v4

    #@8c
    int-to-long v4, v4

    #@8d
    and-long/2addr v4, v6

    #@8e
    add-long/2addr v2, v4

    #@8f
    add-long/2addr v0, v2

    #@90
    .line 63
    add-int/lit8 v2, p5, 0x6

    #@92
    long-to-int v3, v0

    #@93
    aput v3, p4, v2

    #@95
    .line 64
    ushr-long/2addr v0, v8

    #@96
    .line 65
    add-int/lit8 v2, p1, 0x7

    #@98
    aget v2, p0, v2

    #@9a
    int-to-long v2, v2

    #@9b
    and-long/2addr v2, v6

    #@9c
    add-int/lit8 v4, p3, 0x7

    #@9e
    aget v4, p2, v4

    #@a0
    int-to-long v4, v4

    #@a1
    and-long/2addr v4, v6

    #@a2
    add-long/2addr v2, v4

    #@a3
    add-long/2addr v0, v2

    #@a4
    .line 66
    add-int/lit8 v2, p5, 0x7

    #@a6
    long-to-int v3, v0

    #@a7
    aput v3, p4, v2

    #@a9
    .line 67
    ushr-long/2addr v0, v8

    #@aa
    .line 68
    long-to-int v2, v0

    #@ab
    return v2
.end method

.method public static add([I[I[I)I
    .locals 12
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    #@0
    .prologue
    const/4 v11, 0x2

    #@1
    const/4 v10, 0x1

    #@2
    const/4 v9, 0x0

    #@3
    const/16 v8, 0x20

    #@5
    const-wide v6, 0xffffffffL

    #@a
    .line 14
    aget v2, p0, v9

    #@c
    int-to-long v2, v2

    #@d
    and-long/2addr v2, v6

    #@e
    aget v4, p1, v9

    #@10
    int-to-long v4, v4

    #@11
    and-long/2addr v4, v6

    #@12
    add-long/2addr v2, v4

    #@13
    .line 13
    const-wide/16 v4, 0x0

    #@15
    .line 14
    add-long v0, v4, v2

    #@17
    .line 15
    .local v0, "c":J
    long-to-int v2, v0

    #@18
    aput v2, p2, v9

    #@1a
    .line 16
    ushr-long/2addr v0, v8

    #@1b
    .line 17
    aget v2, p0, v10

    #@1d
    int-to-long v2, v2

    #@1e
    and-long/2addr v2, v6

    #@1f
    aget v4, p1, v10

    #@21
    int-to-long v4, v4

    #@22
    and-long/2addr v4, v6

    #@23
    add-long/2addr v2, v4

    #@24
    add-long/2addr v0, v2

    #@25
    .line 18
    long-to-int v2, v0

    #@26
    aput v2, p2, v10

    #@28
    .line 19
    ushr-long/2addr v0, v8

    #@29
    .line 20
    aget v2, p0, v11

    #@2b
    int-to-long v2, v2

    #@2c
    and-long/2addr v2, v6

    #@2d
    aget v4, p1, v11

    #@2f
    int-to-long v4, v4

    #@30
    and-long/2addr v4, v6

    #@31
    add-long/2addr v2, v4

    #@32
    add-long/2addr v0, v2

    #@33
    .line 21
    long-to-int v2, v0

    #@34
    aput v2, p2, v11

    #@36
    .line 22
    ushr-long/2addr v0, v8

    #@37
    .line 23
    const/4 v2, 0x3

    #@38
    aget v2, p0, v2

    #@3a
    int-to-long v2, v2

    #@3b
    and-long/2addr v2, v6

    #@3c
    const/4 v4, 0x3

    #@3d
    aget v4, p1, v4

    #@3f
    int-to-long v4, v4

    #@40
    and-long/2addr v4, v6

    #@41
    add-long/2addr v2, v4

    #@42
    add-long/2addr v0, v2

    #@43
    .line 24
    long-to-int v2, v0

    #@44
    const/4 v3, 0x3

    #@45
    aput v2, p2, v3

    #@47
    .line 25
    ushr-long/2addr v0, v8

    #@48
    .line 26
    const/4 v2, 0x4

    #@49
    aget v2, p0, v2

    #@4b
    int-to-long v2, v2

    #@4c
    and-long/2addr v2, v6

    #@4d
    const/4 v4, 0x4

    #@4e
    aget v4, p1, v4

    #@50
    int-to-long v4, v4

    #@51
    and-long/2addr v4, v6

    #@52
    add-long/2addr v2, v4

    #@53
    add-long/2addr v0, v2

    #@54
    .line 27
    long-to-int v2, v0

    #@55
    const/4 v3, 0x4

    #@56
    aput v2, p2, v3

    #@58
    .line 28
    ushr-long/2addr v0, v8

    #@59
    .line 29
    const/4 v2, 0x5

    #@5a
    aget v2, p0, v2

    #@5c
    int-to-long v2, v2

    #@5d
    and-long/2addr v2, v6

    #@5e
    const/4 v4, 0x5

    #@5f
    aget v4, p1, v4

    #@61
    int-to-long v4, v4

    #@62
    and-long/2addr v4, v6

    #@63
    add-long/2addr v2, v4

    #@64
    add-long/2addr v0, v2

    #@65
    .line 30
    long-to-int v2, v0

    #@66
    const/4 v3, 0x5

    #@67
    aput v2, p2, v3

    #@69
    .line 31
    ushr-long/2addr v0, v8

    #@6a
    .line 32
    const/4 v2, 0x6

    #@6b
    aget v2, p0, v2

    #@6d
    int-to-long v2, v2

    #@6e
    and-long/2addr v2, v6

    #@6f
    const/4 v4, 0x6

    #@70
    aget v4, p1, v4

    #@72
    int-to-long v4, v4

    #@73
    and-long/2addr v4, v6

    #@74
    add-long/2addr v2, v4

    #@75
    add-long/2addr v0, v2

    #@76
    .line 33
    long-to-int v2, v0

    #@77
    const/4 v3, 0x6

    #@78
    aput v2, p2, v3

    #@7a
    .line 34
    ushr-long/2addr v0, v8

    #@7b
    .line 35
    const/4 v2, 0x7

    #@7c
    aget v2, p0, v2

    #@7e
    int-to-long v2, v2

    #@7f
    and-long/2addr v2, v6

    #@80
    const/4 v4, 0x7

    #@81
    aget v4, p1, v4

    #@83
    int-to-long v4, v4

    #@84
    and-long/2addr v4, v6

    #@85
    add-long/2addr v2, v4

    #@86
    add-long/2addr v0, v2

    #@87
    .line 36
    long-to-int v2, v0

    #@88
    const/4 v3, 0x7

    #@89
    aput v2, p2, v3

    #@8b
    .line 37
    ushr-long/2addr v0, v8

    #@8c
    .line 38
    long-to-int v2, v0

    #@8d
    return v2
.end method

.method public static addBothTo([II[II[II)I
    .locals 9
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    #@0
    .prologue
    const/16 v8, 0x20

    #@2
    const-wide v6, 0xffffffffL

    #@7
    .line 104
    add-int/lit8 v2, p1, 0x0

    #@9
    aget v2, p0, v2

    #@b
    int-to-long v2, v2

    #@c
    and-long/2addr v2, v6

    #@d
    add-int/lit8 v4, p3, 0x0

    #@f
    aget v4, p2, v4

    #@11
    int-to-long v4, v4

    #@12
    and-long/2addr v4, v6

    #@13
    add-long/2addr v2, v4

    #@14
    add-int/lit8 v4, p5, 0x0

    #@16
    aget v4, p4, v4

    #@18
    int-to-long v4, v4

    #@19
    and-long/2addr v4, v6

    #@1a
    add-long/2addr v2, v4

    #@1b
    .line 103
    const-wide/16 v4, 0x0

    #@1d
    .line 104
    add-long v0, v4, v2

    #@1f
    .line 105
    .local v0, "c":J
    add-int/lit8 v2, p5, 0x0

    #@21
    long-to-int v3, v0

    #@22
    aput v3, p4, v2

    #@24
    .line 106
    ushr-long/2addr v0, v8

    #@25
    .line 107
    add-int/lit8 v2, p1, 0x1

    #@27
    aget v2, p0, v2

    #@29
    int-to-long v2, v2

    #@2a
    and-long/2addr v2, v6

    #@2b
    add-int/lit8 v4, p3, 0x1

    #@2d
    aget v4, p2, v4

    #@2f
    int-to-long v4, v4

    #@30
    and-long/2addr v4, v6

    #@31
    add-long/2addr v2, v4

    #@32
    add-int/lit8 v4, p5, 0x1

    #@34
    aget v4, p4, v4

    #@36
    int-to-long v4, v4

    #@37
    and-long/2addr v4, v6

    #@38
    add-long/2addr v2, v4

    #@39
    add-long/2addr v0, v2

    #@3a
    .line 108
    add-int/lit8 v2, p5, 0x1

    #@3c
    long-to-int v3, v0

    #@3d
    aput v3, p4, v2

    #@3f
    .line 109
    ushr-long/2addr v0, v8

    #@40
    .line 110
    add-int/lit8 v2, p1, 0x2

    #@42
    aget v2, p0, v2

    #@44
    int-to-long v2, v2

    #@45
    and-long/2addr v2, v6

    #@46
    add-int/lit8 v4, p3, 0x2

    #@48
    aget v4, p2, v4

    #@4a
    int-to-long v4, v4

    #@4b
    and-long/2addr v4, v6

    #@4c
    add-long/2addr v2, v4

    #@4d
    add-int/lit8 v4, p5, 0x2

    #@4f
    aget v4, p4, v4

    #@51
    int-to-long v4, v4

    #@52
    and-long/2addr v4, v6

    #@53
    add-long/2addr v2, v4

    #@54
    add-long/2addr v0, v2

    #@55
    .line 111
    add-int/lit8 v2, p5, 0x2

    #@57
    long-to-int v3, v0

    #@58
    aput v3, p4, v2

    #@5a
    .line 112
    ushr-long/2addr v0, v8

    #@5b
    .line 113
    add-int/lit8 v2, p1, 0x3

    #@5d
    aget v2, p0, v2

    #@5f
    int-to-long v2, v2

    #@60
    and-long/2addr v2, v6

    #@61
    add-int/lit8 v4, p3, 0x3

    #@63
    aget v4, p2, v4

    #@65
    int-to-long v4, v4

    #@66
    and-long/2addr v4, v6

    #@67
    add-long/2addr v2, v4

    #@68
    add-int/lit8 v4, p5, 0x3

    #@6a
    aget v4, p4, v4

    #@6c
    int-to-long v4, v4

    #@6d
    and-long/2addr v4, v6

    #@6e
    add-long/2addr v2, v4

    #@6f
    add-long/2addr v0, v2

    #@70
    .line 114
    add-int/lit8 v2, p5, 0x3

    #@72
    long-to-int v3, v0

    #@73
    aput v3, p4, v2

    #@75
    .line 115
    ushr-long/2addr v0, v8

    #@76
    .line 116
    add-int/lit8 v2, p1, 0x4

    #@78
    aget v2, p0, v2

    #@7a
    int-to-long v2, v2

    #@7b
    and-long/2addr v2, v6

    #@7c
    add-int/lit8 v4, p3, 0x4

    #@7e
    aget v4, p2, v4

    #@80
    int-to-long v4, v4

    #@81
    and-long/2addr v4, v6

    #@82
    add-long/2addr v2, v4

    #@83
    add-int/lit8 v4, p5, 0x4

    #@85
    aget v4, p4, v4

    #@87
    int-to-long v4, v4

    #@88
    and-long/2addr v4, v6

    #@89
    add-long/2addr v2, v4

    #@8a
    add-long/2addr v0, v2

    #@8b
    .line 117
    add-int/lit8 v2, p5, 0x4

    #@8d
    long-to-int v3, v0

    #@8e
    aput v3, p4, v2

    #@90
    .line 118
    ushr-long/2addr v0, v8

    #@91
    .line 119
    add-int/lit8 v2, p1, 0x5

    #@93
    aget v2, p0, v2

    #@95
    int-to-long v2, v2

    #@96
    and-long/2addr v2, v6

    #@97
    add-int/lit8 v4, p3, 0x5

    #@99
    aget v4, p2, v4

    #@9b
    int-to-long v4, v4

    #@9c
    and-long/2addr v4, v6

    #@9d
    add-long/2addr v2, v4

    #@9e
    add-int/lit8 v4, p5, 0x5

    #@a0
    aget v4, p4, v4

    #@a2
    int-to-long v4, v4

    #@a3
    and-long/2addr v4, v6

    #@a4
    add-long/2addr v2, v4

    #@a5
    add-long/2addr v0, v2

    #@a6
    .line 120
    add-int/lit8 v2, p5, 0x5

    #@a8
    long-to-int v3, v0

    #@a9
    aput v3, p4, v2

    #@ab
    .line 121
    ushr-long/2addr v0, v8

    #@ac
    .line 122
    add-int/lit8 v2, p1, 0x6

    #@ae
    aget v2, p0, v2

    #@b0
    int-to-long v2, v2

    #@b1
    and-long/2addr v2, v6

    #@b2
    add-int/lit8 v4, p3, 0x6

    #@b4
    aget v4, p2, v4

    #@b6
    int-to-long v4, v4

    #@b7
    and-long/2addr v4, v6

    #@b8
    add-long/2addr v2, v4

    #@b9
    add-int/lit8 v4, p5, 0x6

    #@bb
    aget v4, p4, v4

    #@bd
    int-to-long v4, v4

    #@be
    and-long/2addr v4, v6

    #@bf
    add-long/2addr v2, v4

    #@c0
    add-long/2addr v0, v2

    #@c1
    .line 123
    add-int/lit8 v2, p5, 0x6

    #@c3
    long-to-int v3, v0

    #@c4
    aput v3, p4, v2

    #@c6
    .line 124
    ushr-long/2addr v0, v8

    #@c7
    .line 125
    add-int/lit8 v2, p1, 0x7

    #@c9
    aget v2, p0, v2

    #@cb
    int-to-long v2, v2

    #@cc
    and-long/2addr v2, v6

    #@cd
    add-int/lit8 v4, p3, 0x7

    #@cf
    aget v4, p2, v4

    #@d1
    int-to-long v4, v4

    #@d2
    and-long/2addr v4, v6

    #@d3
    add-long/2addr v2, v4

    #@d4
    add-int/lit8 v4, p5, 0x7

    #@d6
    aget v4, p4, v4

    #@d8
    int-to-long v4, v4

    #@d9
    and-long/2addr v4, v6

    #@da
    add-long/2addr v2, v4

    #@db
    add-long/2addr v0, v2

    #@dc
    .line 126
    add-int/lit8 v2, p5, 0x7

    #@de
    long-to-int v3, v0

    #@df
    aput v3, p4, v2

    #@e1
    .line 127
    ushr-long/2addr v0, v8

    #@e2
    .line 128
    long-to-int v2, v0

    #@e3
    return v2
.end method

.method public static addBothTo([I[I[I)I
    .locals 12
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    #@0
    .prologue
    const/4 v11, 0x2

    #@1
    const/4 v10, 0x1

    #@2
    const/4 v9, 0x0

    #@3
    const/16 v8, 0x20

    #@5
    const-wide v6, 0xffffffffL

    #@a
    .line 74
    aget v2, p0, v9

    #@c
    int-to-long v2, v2

    #@d
    and-long/2addr v2, v6

    #@e
    aget v4, p1, v9

    #@10
    int-to-long v4, v4

    #@11
    and-long/2addr v4, v6

    #@12
    add-long/2addr v2, v4

    #@13
    aget v4, p2, v9

    #@15
    int-to-long v4, v4

    #@16
    and-long/2addr v4, v6

    #@17
    add-long/2addr v2, v4

    #@18
    .line 73
    const-wide/16 v4, 0x0

    #@1a
    .line 74
    add-long v0, v4, v2

    #@1c
    .line 75
    .local v0, "c":J
    long-to-int v2, v0

    #@1d
    aput v2, p2, v9

    #@1f
    .line 76
    ushr-long/2addr v0, v8

    #@20
    .line 77
    aget v2, p0, v10

    #@22
    int-to-long v2, v2

    #@23
    and-long/2addr v2, v6

    #@24
    aget v4, p1, v10

    #@26
    int-to-long v4, v4

    #@27
    and-long/2addr v4, v6

    #@28
    add-long/2addr v2, v4

    #@29
    aget v4, p2, v10

    #@2b
    int-to-long v4, v4

    #@2c
    and-long/2addr v4, v6

    #@2d
    add-long/2addr v2, v4

    #@2e
    add-long/2addr v0, v2

    #@2f
    .line 78
    long-to-int v2, v0

    #@30
    aput v2, p2, v10

    #@32
    .line 79
    ushr-long/2addr v0, v8

    #@33
    .line 80
    aget v2, p0, v11

    #@35
    int-to-long v2, v2

    #@36
    and-long/2addr v2, v6

    #@37
    aget v4, p1, v11

    #@39
    int-to-long v4, v4

    #@3a
    and-long/2addr v4, v6

    #@3b
    add-long/2addr v2, v4

    #@3c
    aget v4, p2, v11

    #@3e
    int-to-long v4, v4

    #@3f
    and-long/2addr v4, v6

    #@40
    add-long/2addr v2, v4

    #@41
    add-long/2addr v0, v2

    #@42
    .line 81
    long-to-int v2, v0

    #@43
    aput v2, p2, v11

    #@45
    .line 82
    ushr-long/2addr v0, v8

    #@46
    .line 83
    const/4 v2, 0x3

    #@47
    aget v2, p0, v2

    #@49
    int-to-long v2, v2

    #@4a
    and-long/2addr v2, v6

    #@4b
    const/4 v4, 0x3

    #@4c
    aget v4, p1, v4

    #@4e
    int-to-long v4, v4

    #@4f
    and-long/2addr v4, v6

    #@50
    add-long/2addr v2, v4

    #@51
    const/4 v4, 0x3

    #@52
    aget v4, p2, v4

    #@54
    int-to-long v4, v4

    #@55
    and-long/2addr v4, v6

    #@56
    add-long/2addr v2, v4

    #@57
    add-long/2addr v0, v2

    #@58
    .line 84
    long-to-int v2, v0

    #@59
    const/4 v3, 0x3

    #@5a
    aput v2, p2, v3

    #@5c
    .line 85
    ushr-long/2addr v0, v8

    #@5d
    .line 86
    const/4 v2, 0x4

    #@5e
    aget v2, p0, v2

    #@60
    int-to-long v2, v2

    #@61
    and-long/2addr v2, v6

    #@62
    const/4 v4, 0x4

    #@63
    aget v4, p1, v4

    #@65
    int-to-long v4, v4

    #@66
    and-long/2addr v4, v6

    #@67
    add-long/2addr v2, v4

    #@68
    const/4 v4, 0x4

    #@69
    aget v4, p2, v4

    #@6b
    int-to-long v4, v4

    #@6c
    and-long/2addr v4, v6

    #@6d
    add-long/2addr v2, v4

    #@6e
    add-long/2addr v0, v2

    #@6f
    .line 87
    long-to-int v2, v0

    #@70
    const/4 v3, 0x4

    #@71
    aput v2, p2, v3

    #@73
    .line 88
    ushr-long/2addr v0, v8

    #@74
    .line 89
    const/4 v2, 0x5

    #@75
    aget v2, p0, v2

    #@77
    int-to-long v2, v2

    #@78
    and-long/2addr v2, v6

    #@79
    const/4 v4, 0x5

    #@7a
    aget v4, p1, v4

    #@7c
    int-to-long v4, v4

    #@7d
    and-long/2addr v4, v6

    #@7e
    add-long/2addr v2, v4

    #@7f
    const/4 v4, 0x5

    #@80
    aget v4, p2, v4

    #@82
    int-to-long v4, v4

    #@83
    and-long/2addr v4, v6

    #@84
    add-long/2addr v2, v4

    #@85
    add-long/2addr v0, v2

    #@86
    .line 90
    long-to-int v2, v0

    #@87
    const/4 v3, 0x5

    #@88
    aput v2, p2, v3

    #@8a
    .line 91
    ushr-long/2addr v0, v8

    #@8b
    .line 92
    const/4 v2, 0x6

    #@8c
    aget v2, p0, v2

    #@8e
    int-to-long v2, v2

    #@8f
    and-long/2addr v2, v6

    #@90
    const/4 v4, 0x6

    #@91
    aget v4, p1, v4

    #@93
    int-to-long v4, v4

    #@94
    and-long/2addr v4, v6

    #@95
    add-long/2addr v2, v4

    #@96
    const/4 v4, 0x6

    #@97
    aget v4, p2, v4

    #@99
    int-to-long v4, v4

    #@9a
    and-long/2addr v4, v6

    #@9b
    add-long/2addr v2, v4

    #@9c
    add-long/2addr v0, v2

    #@9d
    .line 93
    long-to-int v2, v0

    #@9e
    const/4 v3, 0x6

    #@9f
    aput v2, p2, v3

    #@a1
    .line 94
    ushr-long/2addr v0, v8

    #@a2
    .line 95
    const/4 v2, 0x7

    #@a3
    aget v2, p0, v2

    #@a5
    int-to-long v2, v2

    #@a6
    and-long/2addr v2, v6

    #@a7
    const/4 v4, 0x7

    #@a8
    aget v4, p1, v4

    #@aa
    int-to-long v4, v4

    #@ab
    and-long/2addr v4, v6

    #@ac
    add-long/2addr v2, v4

    #@ad
    const/4 v4, 0x7

    #@ae
    aget v4, p2, v4

    #@b0
    int-to-long v4, v4

    #@b1
    and-long/2addr v4, v6

    #@b2
    add-long/2addr v2, v4

    #@b3
    add-long/2addr v0, v2

    #@b4
    .line 96
    long-to-int v2, v0

    #@b5
    const/4 v3, 0x7

    #@b6
    aput v2, p2, v3

    #@b8
    .line 97
    ushr-long/2addr v0, v8

    #@b9
    .line 98
    long-to-int v2, v0

    #@ba
    return v2
.end method

.method public static addTo([II[III)I
    .locals 9
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .param p4, "cIn"    # I

    #@0
    .prologue
    const/16 v8, 0x20

    #@2
    const-wide v6, 0xffffffffL

    #@7
    .line 163
    int-to-long v2, p4

    #@8
    and-long v0, v2, v6

    #@a
    .line 164
    .local v0, "c":J
    add-int/lit8 v2, p1, 0x0

    #@c
    aget v2, p0, v2

    #@e
    int-to-long v2, v2

    #@f
    and-long/2addr v2, v6

    #@10
    add-int/lit8 v4, p3, 0x0

    #@12
    aget v4, p2, v4

    #@14
    int-to-long v4, v4

    #@15
    and-long/2addr v4, v6

    #@16
    add-long/2addr v2, v4

    #@17
    add-long/2addr v0, v2

    #@18
    .line 165
    add-int/lit8 v2, p3, 0x0

    #@1a
    long-to-int v3, v0

    #@1b
    aput v3, p2, v2

    #@1d
    .line 166
    ushr-long/2addr v0, v8

    #@1e
    .line 167
    add-int/lit8 v2, p1, 0x1

    #@20
    aget v2, p0, v2

    #@22
    int-to-long v2, v2

    #@23
    and-long/2addr v2, v6

    #@24
    add-int/lit8 v4, p3, 0x1

    #@26
    aget v4, p2, v4

    #@28
    int-to-long v4, v4

    #@29
    and-long/2addr v4, v6

    #@2a
    add-long/2addr v2, v4

    #@2b
    add-long/2addr v0, v2

    #@2c
    .line 168
    add-int/lit8 v2, p3, 0x1

    #@2e
    long-to-int v3, v0

    #@2f
    aput v3, p2, v2

    #@31
    .line 169
    ushr-long/2addr v0, v8

    #@32
    .line 170
    add-int/lit8 v2, p1, 0x2

    #@34
    aget v2, p0, v2

    #@36
    int-to-long v2, v2

    #@37
    and-long/2addr v2, v6

    #@38
    add-int/lit8 v4, p3, 0x2

    #@3a
    aget v4, p2, v4

    #@3c
    int-to-long v4, v4

    #@3d
    and-long/2addr v4, v6

    #@3e
    add-long/2addr v2, v4

    #@3f
    add-long/2addr v0, v2

    #@40
    .line 171
    add-int/lit8 v2, p3, 0x2

    #@42
    long-to-int v3, v0

    #@43
    aput v3, p2, v2

    #@45
    .line 172
    ushr-long/2addr v0, v8

    #@46
    .line 173
    add-int/lit8 v2, p1, 0x3

    #@48
    aget v2, p0, v2

    #@4a
    int-to-long v2, v2

    #@4b
    and-long/2addr v2, v6

    #@4c
    add-int/lit8 v4, p3, 0x3

    #@4e
    aget v4, p2, v4

    #@50
    int-to-long v4, v4

    #@51
    and-long/2addr v4, v6

    #@52
    add-long/2addr v2, v4

    #@53
    add-long/2addr v0, v2

    #@54
    .line 174
    add-int/lit8 v2, p3, 0x3

    #@56
    long-to-int v3, v0

    #@57
    aput v3, p2, v2

    #@59
    .line 175
    ushr-long/2addr v0, v8

    #@5a
    .line 176
    add-int/lit8 v2, p1, 0x4

    #@5c
    aget v2, p0, v2

    #@5e
    int-to-long v2, v2

    #@5f
    and-long/2addr v2, v6

    #@60
    add-int/lit8 v4, p3, 0x4

    #@62
    aget v4, p2, v4

    #@64
    int-to-long v4, v4

    #@65
    and-long/2addr v4, v6

    #@66
    add-long/2addr v2, v4

    #@67
    add-long/2addr v0, v2

    #@68
    .line 177
    add-int/lit8 v2, p3, 0x4

    #@6a
    long-to-int v3, v0

    #@6b
    aput v3, p2, v2

    #@6d
    .line 178
    ushr-long/2addr v0, v8

    #@6e
    .line 179
    add-int/lit8 v2, p1, 0x5

    #@70
    aget v2, p0, v2

    #@72
    int-to-long v2, v2

    #@73
    and-long/2addr v2, v6

    #@74
    add-int/lit8 v4, p3, 0x5

    #@76
    aget v4, p2, v4

    #@78
    int-to-long v4, v4

    #@79
    and-long/2addr v4, v6

    #@7a
    add-long/2addr v2, v4

    #@7b
    add-long/2addr v0, v2

    #@7c
    .line 180
    add-int/lit8 v2, p3, 0x5

    #@7e
    long-to-int v3, v0

    #@7f
    aput v3, p2, v2

    #@81
    .line 181
    ushr-long/2addr v0, v8

    #@82
    .line 182
    add-int/lit8 v2, p1, 0x6

    #@84
    aget v2, p0, v2

    #@86
    int-to-long v2, v2

    #@87
    and-long/2addr v2, v6

    #@88
    add-int/lit8 v4, p3, 0x6

    #@8a
    aget v4, p2, v4

    #@8c
    int-to-long v4, v4

    #@8d
    and-long/2addr v4, v6

    #@8e
    add-long/2addr v2, v4

    #@8f
    add-long/2addr v0, v2

    #@90
    .line 183
    add-int/lit8 v2, p3, 0x6

    #@92
    long-to-int v3, v0

    #@93
    aput v3, p2, v2

    #@95
    .line 184
    ushr-long/2addr v0, v8

    #@96
    .line 185
    add-int/lit8 v2, p1, 0x7

    #@98
    aget v2, p0, v2

    #@9a
    int-to-long v2, v2

    #@9b
    and-long/2addr v2, v6

    #@9c
    add-int/lit8 v4, p3, 0x7

    #@9e
    aget v4, p2, v4

    #@a0
    int-to-long v4, v4

    #@a1
    and-long/2addr v4, v6

    #@a2
    add-long/2addr v2, v4

    #@a3
    add-long/2addr v0, v2

    #@a4
    .line 186
    add-int/lit8 v2, p3, 0x7

    #@a6
    long-to-int v3, v0

    #@a7
    aput v3, p2, v2

    #@a9
    .line 187
    ushr-long/2addr v0, v8

    #@aa
    .line 188
    long-to-int v2, v0

    #@ab
    return v2
.end method

.method public static addTo([I[I)I
    .locals 12
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/4 v11, 0x2

    #@1
    const/4 v10, 0x1

    #@2
    const/4 v9, 0x0

    #@3
    const/16 v8, 0x20

    #@5
    const-wide v6, 0xffffffffL

    #@a
    .line 134
    aget v2, p0, v9

    #@c
    int-to-long v2, v2

    #@d
    and-long/2addr v2, v6

    #@e
    aget v4, p1, v9

    #@10
    int-to-long v4, v4

    #@11
    and-long/2addr v4, v6

    #@12
    add-long/2addr v2, v4

    #@13
    .line 133
    const-wide/16 v4, 0x0

    #@15
    .line 134
    add-long v0, v4, v2

    #@17
    .line 135
    .local v0, "c":J
    long-to-int v2, v0

    #@18
    aput v2, p1, v9

    #@1a
    .line 136
    ushr-long/2addr v0, v8

    #@1b
    .line 137
    aget v2, p0, v10

    #@1d
    int-to-long v2, v2

    #@1e
    and-long/2addr v2, v6

    #@1f
    aget v4, p1, v10

    #@21
    int-to-long v4, v4

    #@22
    and-long/2addr v4, v6

    #@23
    add-long/2addr v2, v4

    #@24
    add-long/2addr v0, v2

    #@25
    .line 138
    long-to-int v2, v0

    #@26
    aput v2, p1, v10

    #@28
    .line 139
    ushr-long/2addr v0, v8

    #@29
    .line 140
    aget v2, p0, v11

    #@2b
    int-to-long v2, v2

    #@2c
    and-long/2addr v2, v6

    #@2d
    aget v4, p1, v11

    #@2f
    int-to-long v4, v4

    #@30
    and-long/2addr v4, v6

    #@31
    add-long/2addr v2, v4

    #@32
    add-long/2addr v0, v2

    #@33
    .line 141
    long-to-int v2, v0

    #@34
    aput v2, p1, v11

    #@36
    .line 142
    ushr-long/2addr v0, v8

    #@37
    .line 143
    const/4 v2, 0x3

    #@38
    aget v2, p0, v2

    #@3a
    int-to-long v2, v2

    #@3b
    and-long/2addr v2, v6

    #@3c
    const/4 v4, 0x3

    #@3d
    aget v4, p1, v4

    #@3f
    int-to-long v4, v4

    #@40
    and-long/2addr v4, v6

    #@41
    add-long/2addr v2, v4

    #@42
    add-long/2addr v0, v2

    #@43
    .line 144
    long-to-int v2, v0

    #@44
    const/4 v3, 0x3

    #@45
    aput v2, p1, v3

    #@47
    .line 145
    ushr-long/2addr v0, v8

    #@48
    .line 146
    const/4 v2, 0x4

    #@49
    aget v2, p0, v2

    #@4b
    int-to-long v2, v2

    #@4c
    and-long/2addr v2, v6

    #@4d
    const/4 v4, 0x4

    #@4e
    aget v4, p1, v4

    #@50
    int-to-long v4, v4

    #@51
    and-long/2addr v4, v6

    #@52
    add-long/2addr v2, v4

    #@53
    add-long/2addr v0, v2

    #@54
    .line 147
    long-to-int v2, v0

    #@55
    const/4 v3, 0x4

    #@56
    aput v2, p1, v3

    #@58
    .line 148
    ushr-long/2addr v0, v8

    #@59
    .line 149
    const/4 v2, 0x5

    #@5a
    aget v2, p0, v2

    #@5c
    int-to-long v2, v2

    #@5d
    and-long/2addr v2, v6

    #@5e
    const/4 v4, 0x5

    #@5f
    aget v4, p1, v4

    #@61
    int-to-long v4, v4

    #@62
    and-long/2addr v4, v6

    #@63
    add-long/2addr v2, v4

    #@64
    add-long/2addr v0, v2

    #@65
    .line 150
    long-to-int v2, v0

    #@66
    const/4 v3, 0x5

    #@67
    aput v2, p1, v3

    #@69
    .line 151
    ushr-long/2addr v0, v8

    #@6a
    .line 152
    const/4 v2, 0x6

    #@6b
    aget v2, p0, v2

    #@6d
    int-to-long v2, v2

    #@6e
    and-long/2addr v2, v6

    #@6f
    const/4 v4, 0x6

    #@70
    aget v4, p1, v4

    #@72
    int-to-long v4, v4

    #@73
    and-long/2addr v4, v6

    #@74
    add-long/2addr v2, v4

    #@75
    add-long/2addr v0, v2

    #@76
    .line 153
    long-to-int v2, v0

    #@77
    const/4 v3, 0x6

    #@78
    aput v2, p1, v3

    #@7a
    .line 154
    ushr-long/2addr v0, v8

    #@7b
    .line 155
    const/4 v2, 0x7

    #@7c
    aget v2, p0, v2

    #@7e
    int-to-long v2, v2

    #@7f
    and-long/2addr v2, v6

    #@80
    const/4 v4, 0x7

    #@81
    aget v4, p1, v4

    #@83
    int-to-long v4, v4

    #@84
    and-long/2addr v4, v6

    #@85
    add-long/2addr v2, v4

    #@86
    add-long/2addr v0, v2

    #@87
    .line 156
    long-to-int v2, v0

    #@88
    const/4 v3, 0x7

    #@89
    aput v2, p1, v3

    #@8b
    .line 157
    ushr-long/2addr v0, v8

    #@8c
    .line 158
    long-to-int v2, v0

    #@8d
    return v2
.end method

.method public static addToEachOther([II[II)I
    .locals 9
    .param p0, "u"    # [I
    .param p1, "uOff"    # I
    .param p2, "v"    # [I
    .param p3, "vOff"    # I

    #@0
    .prologue
    const/16 v8, 0x20

    #@2
    const-wide v6, 0xffffffffL

    #@7
    .line 194
    add-int/lit8 v2, p1, 0x0

    #@9
    aget v2, p0, v2

    #@b
    int-to-long v2, v2

    #@c
    and-long/2addr v2, v6

    #@d
    add-int/lit8 v4, p3, 0x0

    #@f
    aget v4, p2, v4

    #@11
    int-to-long v4, v4

    #@12
    and-long/2addr v4, v6

    #@13
    add-long/2addr v2, v4

    #@14
    .line 193
    const-wide/16 v4, 0x0

    #@16
    .line 194
    add-long v0, v4, v2

    #@18
    .line 195
    .local v0, "c":J
    add-int/lit8 v2, p1, 0x0

    #@1a
    long-to-int v3, v0

    #@1b
    aput v3, p0, v2

    #@1d
    .line 196
    add-int/lit8 v2, p3, 0x0

    #@1f
    long-to-int v3, v0

    #@20
    aput v3, p2, v2

    #@22
    .line 197
    ushr-long/2addr v0, v8

    #@23
    .line 198
    add-int/lit8 v2, p1, 0x1

    #@25
    aget v2, p0, v2

    #@27
    int-to-long v2, v2

    #@28
    and-long/2addr v2, v6

    #@29
    add-int/lit8 v4, p3, 0x1

    #@2b
    aget v4, p2, v4

    #@2d
    int-to-long v4, v4

    #@2e
    and-long/2addr v4, v6

    #@2f
    add-long/2addr v2, v4

    #@30
    add-long/2addr v0, v2

    #@31
    .line 199
    add-int/lit8 v2, p1, 0x1

    #@33
    long-to-int v3, v0

    #@34
    aput v3, p0, v2

    #@36
    .line 200
    add-int/lit8 v2, p3, 0x1

    #@38
    long-to-int v3, v0

    #@39
    aput v3, p2, v2

    #@3b
    .line 201
    ushr-long/2addr v0, v8

    #@3c
    .line 202
    add-int/lit8 v2, p1, 0x2

    #@3e
    aget v2, p0, v2

    #@40
    int-to-long v2, v2

    #@41
    and-long/2addr v2, v6

    #@42
    add-int/lit8 v4, p3, 0x2

    #@44
    aget v4, p2, v4

    #@46
    int-to-long v4, v4

    #@47
    and-long/2addr v4, v6

    #@48
    add-long/2addr v2, v4

    #@49
    add-long/2addr v0, v2

    #@4a
    .line 203
    add-int/lit8 v2, p1, 0x2

    #@4c
    long-to-int v3, v0

    #@4d
    aput v3, p0, v2

    #@4f
    .line 204
    add-int/lit8 v2, p3, 0x2

    #@51
    long-to-int v3, v0

    #@52
    aput v3, p2, v2

    #@54
    .line 205
    ushr-long/2addr v0, v8

    #@55
    .line 206
    add-int/lit8 v2, p1, 0x3

    #@57
    aget v2, p0, v2

    #@59
    int-to-long v2, v2

    #@5a
    and-long/2addr v2, v6

    #@5b
    add-int/lit8 v4, p3, 0x3

    #@5d
    aget v4, p2, v4

    #@5f
    int-to-long v4, v4

    #@60
    and-long/2addr v4, v6

    #@61
    add-long/2addr v2, v4

    #@62
    add-long/2addr v0, v2

    #@63
    .line 207
    add-int/lit8 v2, p1, 0x3

    #@65
    long-to-int v3, v0

    #@66
    aput v3, p0, v2

    #@68
    .line 208
    add-int/lit8 v2, p3, 0x3

    #@6a
    long-to-int v3, v0

    #@6b
    aput v3, p2, v2

    #@6d
    .line 209
    ushr-long/2addr v0, v8

    #@6e
    .line 210
    add-int/lit8 v2, p1, 0x4

    #@70
    aget v2, p0, v2

    #@72
    int-to-long v2, v2

    #@73
    and-long/2addr v2, v6

    #@74
    add-int/lit8 v4, p3, 0x4

    #@76
    aget v4, p2, v4

    #@78
    int-to-long v4, v4

    #@79
    and-long/2addr v4, v6

    #@7a
    add-long/2addr v2, v4

    #@7b
    add-long/2addr v0, v2

    #@7c
    .line 211
    add-int/lit8 v2, p1, 0x4

    #@7e
    long-to-int v3, v0

    #@7f
    aput v3, p0, v2

    #@81
    .line 212
    add-int/lit8 v2, p3, 0x4

    #@83
    long-to-int v3, v0

    #@84
    aput v3, p2, v2

    #@86
    .line 213
    ushr-long/2addr v0, v8

    #@87
    .line 214
    add-int/lit8 v2, p1, 0x5

    #@89
    aget v2, p0, v2

    #@8b
    int-to-long v2, v2

    #@8c
    and-long/2addr v2, v6

    #@8d
    add-int/lit8 v4, p3, 0x5

    #@8f
    aget v4, p2, v4

    #@91
    int-to-long v4, v4

    #@92
    and-long/2addr v4, v6

    #@93
    add-long/2addr v2, v4

    #@94
    add-long/2addr v0, v2

    #@95
    .line 215
    add-int/lit8 v2, p1, 0x5

    #@97
    long-to-int v3, v0

    #@98
    aput v3, p0, v2

    #@9a
    .line 216
    add-int/lit8 v2, p3, 0x5

    #@9c
    long-to-int v3, v0

    #@9d
    aput v3, p2, v2

    #@9f
    .line 217
    ushr-long/2addr v0, v8

    #@a0
    .line 218
    add-int/lit8 v2, p1, 0x6

    #@a2
    aget v2, p0, v2

    #@a4
    int-to-long v2, v2

    #@a5
    and-long/2addr v2, v6

    #@a6
    add-int/lit8 v4, p3, 0x6

    #@a8
    aget v4, p2, v4

    #@aa
    int-to-long v4, v4

    #@ab
    and-long/2addr v4, v6

    #@ac
    add-long/2addr v2, v4

    #@ad
    add-long/2addr v0, v2

    #@ae
    .line 219
    add-int/lit8 v2, p1, 0x6

    #@b0
    long-to-int v3, v0

    #@b1
    aput v3, p0, v2

    #@b3
    .line 220
    add-int/lit8 v2, p3, 0x6

    #@b5
    long-to-int v3, v0

    #@b6
    aput v3, p2, v2

    #@b8
    .line 221
    ushr-long/2addr v0, v8

    #@b9
    .line 222
    add-int/lit8 v2, p1, 0x7

    #@bb
    aget v2, p0, v2

    #@bd
    int-to-long v2, v2

    #@be
    and-long/2addr v2, v6

    #@bf
    add-int/lit8 v4, p3, 0x7

    #@c1
    aget v4, p2, v4

    #@c3
    int-to-long v4, v4

    #@c4
    and-long/2addr v4, v6

    #@c5
    add-long/2addr v2, v4

    #@c6
    add-long/2addr v0, v2

    #@c7
    .line 223
    add-int/lit8 v2, p1, 0x7

    #@c9
    long-to-int v3, v0

    #@ca
    aput v3, p0, v2

    #@cc
    .line 224
    add-int/lit8 v2, p3, 0x7

    #@ce
    long-to-int v3, v0

    #@cf
    aput v3, p2, v2

    #@d1
    .line 225
    ushr-long/2addr v0, v8

    #@d2
    .line 226
    long-to-int v2, v0

    #@d3
    return v2
.end method

.method public static copy([I[I)V
    .locals 6
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/4 v5, 0x4

    #@1
    const/4 v4, 0x3

    #@2
    const/4 v3, 0x2

    #@3
    const/4 v2, 0x1

    #@4
    const/4 v1, 0x0

    #@5
    .line 231
    aget v0, p0, v1

    #@7
    aput v0, p1, v1

    #@9
    .line 232
    aget v0, p0, v2

    #@b
    aput v0, p1, v2

    #@d
    .line 233
    aget v0, p0, v3

    #@f
    aput v0, p1, v3

    #@11
    .line 234
    aget v0, p0, v4

    #@13
    aput v0, p1, v4

    #@15
    .line 235
    aget v0, p0, v5

    #@17
    aput v0, p1, v5

    #@19
    .line 236
    const/4 v0, 0x5

    #@1a
    aget v0, p0, v0

    #@1c
    const/4 v1, 0x5

    #@1d
    aput v0, p1, v1

    #@1f
    .line 237
    const/4 v0, 0x6

    #@20
    aget v0, p0, v0

    #@22
    const/4 v1, 0x6

    #@23
    aput v0, p1, v1

    #@25
    .line 238
    const/4 v0, 0x7

    #@26
    aget v0, p0, v0

    #@28
    const/4 v1, 0x7

    #@29
    aput v0, p1, v1

    #@2b
    .line 229
    return-void
.end method

.method public static copy64([J[J)V
    .locals 6
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 243
    aget-wide v0, p0, v2

    #@6
    aput-wide v0, p1, v2

    #@8
    .line 244
    aget-wide v0, p0, v3

    #@a
    aput-wide v0, p1, v3

    #@c
    .line 245
    aget-wide v0, p0, v4

    #@e
    aput-wide v0, p1, v4

    #@10
    .line 246
    aget-wide v0, p0, v5

    #@12
    aput-wide v0, p1, v5

    #@14
    .line 241
    return-void
.end method

.method public static create()[I
    .locals 1

    #@0
    .prologue
    .line 251
    const/16 v0, 0x8

    #@2
    new-array v0, v0, [I

    #@4
    return-object v0
.end method

.method public static create64()[J
    .locals 1

    #@0
    .prologue
    .line 256
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [J

    #@3
    return-object v0
.end method

.method public static createExt()[I
    .locals 1

    #@0
    .prologue
    .line 261
    const/16 v0, 0x10

    #@2
    new-array v0, v0, [I

    #@4
    return-object v0
.end method

.method public static createExt64()[J
    .locals 1

    #@0
    .prologue
    .line 266
    const/16 v0, 0x8

    #@2
    new-array v0, v0, [J

    #@4
    return-object v0
.end method

.method public static diff([II[II[II)Z
    .locals 7
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    #@0
    .prologue
    .line 271
    invoke-static {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([II[II)Z

    #@3
    move-result v6

    #@4
    .line 272
    .local v6, "pos":Z
    if-eqz v6, :cond_0

    #@6
    .line 274
    invoke-static/range {p0 .. p5}, Lcom/android/org/bouncycastle/math/raw/Nat256;->sub([II[II[II)I

    #@9
    .line 280
    :goto_0
    return v6

    #@a
    :cond_0
    move-object v0, p2

    #@b
    move v1, p3

    #@c
    move-object v2, p0

    #@d
    move v3, p1

    #@e
    move-object v4, p4

    #@f
    move v5, p5

    #@10
    .line 278
    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/raw/Nat256;->sub([II[II[II)I

    #@13
    goto :goto_0
.end method

.method public static eq([I[I)Z
    .locals 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 285
    const/4 v0, 0x7

    #@2
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@4
    .line 287
    aget v1, p0, v0

    #@6
    aget v2, p1, v0

    #@8
    if-eq v1, v2, :cond_0

    #@a
    .line 289
    return v3

    #@b
    .line 285
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@d
    goto :goto_0

    #@e
    .line 292
    :cond_1
    const/4 v1, 0x1

    #@f
    return v1
.end method

.method public static eq64([J[J)Z
    .locals 7
    .param p0, "x"    # [J
    .param p1, "y"    # [J

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 297
    const/4 v0, 0x3

    #@2
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@4
    .line 299
    aget-wide v2, p0, v0

    #@6
    aget-wide v4, p1, v0

    #@8
    cmp-long v1, v2, v4

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 301
    return v6

    #@d
    .line 297
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@f
    goto :goto_0

    #@10
    .line 304
    :cond_1
    const/4 v1, 0x1

    #@11
    return v1
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 5
    .param p0, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 309
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    #@3
    move-result v3

    #@4
    if-ltz v3, :cond_0

    #@6
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    #@9
    move-result v3

    #@a
    const/16 v4, 0x100

    #@c
    if-le v3, v4, :cond_1

    #@e
    .line 311
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@10
    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@13
    throw v3

    #@14
    .line 314
    :cond_1
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    #@17
    move-result-object v2

    #@18
    .line 315
    .local v2, "z":[I
    const/4 v0, 0x0

    #@19
    .line 316
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_2

    #@1f
    .line 318
    add-int/lit8 v1, v0, 0x1

    #@21
    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    #@24
    move-result v3

    #@25
    aput v3, v2, v0

    #@27
    .line 319
    const/16 v3, 0x20

    #@29
    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@2c
    move-result-object p0

    #@2d
    move v0, v1

    #@2e
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    #@2f
    .line 321
    :cond_2
    return-object v2
.end method

.method public static fromBigInteger64(Ljava/math/BigInteger;)[J
    .locals 6
    .param p0, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 326
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    #@3
    move-result v3

    #@4
    if-ltz v3, :cond_0

    #@6
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    #@9
    move-result v3

    #@a
    const/16 v4, 0x100

    #@c
    if-le v3, v4, :cond_1

    #@e
    .line 328
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@10
    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@13
    throw v3

    #@14
    .line 331
    :cond_1
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create64()[J

    #@17
    move-result-object v2

    #@18
    .line 332
    .local v2, "z":[J
    const/4 v0, 0x0

    #@19
    .line 333
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_2

    #@1f
    .line 335
    add-int/lit8 v1, v0, 0x1

    #@21
    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    #@24
    move-result-wide v4

    #@25
    aput-wide v4, v2, v0

    #@27
    .line 336
    const/16 v3, 0x40

    #@29
    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@2c
    move-result-object p0

    #@2d
    move v0, v1

    #@2e
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    #@2f
    .line 338
    :cond_2
    return-object v2
.end method

.method public static getBit([II)I
    .locals 4
    .param p0, "x"    # [I
    .param p1, "bit"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 343
    if-nez p1, :cond_0

    #@3
    .line 345
    aget v2, p0, v3

    #@5
    and-int/lit8 v2, v2, 0x1

    #@7
    return v2

    #@8
    .line 347
    :cond_0
    and-int/lit16 v2, p1, 0xff

    #@a
    if-eq v2, p1, :cond_1

    #@c
    .line 349
    return v3

    #@d
    .line 351
    :cond_1
    ushr-int/lit8 v1, p1, 0x5

    #@f
    .line 352
    .local v1, "w":I
    and-int/lit8 v0, p1, 0x1f

    #@11
    .line 353
    .local v0, "b":I
    aget v2, p0, v1

    #@13
    ushr-int/2addr v2, v0

    #@14
    and-int/lit8 v2, v2, 0x1

    #@16
    return v2
.end method

.method public static gte([II[II)Z
    .locals 7
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/high16 v4, -0x80000000

    #@4
    .line 372
    const/4 v0, 0x7

    #@5
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@7
    .line 374
    add-int v3, p1, v0

    #@9
    aget v3, p0, v3

    #@b
    xor-int v1, v3, v4

    #@d
    .line 375
    .local v1, "x_i":I
    add-int v3, p3, v0

    #@f
    aget v3, p2, v3

    #@11
    xor-int v2, v3, v4

    #@13
    .line 376
    .local v2, "y_i":I
    if-ge v1, v2, :cond_0

    #@15
    .line 377
    return v5

    #@16
    .line 378
    :cond_0
    if-le v1, v2, :cond_1

    #@18
    .line 379
    return v6

    #@19
    .line 372
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@1b
    goto :goto_0

    #@1c
    .line 381
    .end local v1    # "x_i":I
    .end local v2    # "y_i":I
    :cond_2
    return v6
.end method

.method public static gte([I[I)Z
    .locals 7
    .param p0, "x"    # [I
    .param p1, "y"    # [I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/high16 v4, -0x80000000

    #@4
    .line 358
    const/4 v0, 0x7

    #@5
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@7
    .line 360
    aget v3, p0, v0

    #@9
    xor-int v1, v3, v4

    #@b
    .line 361
    .local v1, "x_i":I
    aget v3, p1, v0

    #@d
    xor-int v2, v3, v4

    #@f
    .line 362
    .local v2, "y_i":I
    if-ge v1, v2, :cond_0

    #@11
    .line 363
    return v5

    #@12
    .line 364
    :cond_0
    if-le v1, v2, :cond_1

    #@14
    .line 365
    return v6

    #@15
    .line 358
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 367
    .end local v1    # "x_i":I
    .end local v2    # "y_i":I
    :cond_2
    return v6
.end method

.method public static isOne([I)Z
    .locals 4
    .param p0, "x"    # [I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 386
    aget v1, p0, v2

    #@4
    if-eq v1, v3, :cond_0

    #@6
    .line 388
    return v2

    #@7
    .line 390
    :cond_0
    const/4 v0, 0x1

    #@8
    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    #@a
    if-ge v0, v1, :cond_2

    #@c
    .line 392
    aget v1, p0, v0

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 394
    return v2

    #@11
    .line 390
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 397
    :cond_2
    return v3
.end method

.method public static isOne64([J)Z
    .locals 7
    .param p0, "x"    # [J

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 402
    aget-wide v2, p0, v6

    #@3
    const-wide/16 v4, 0x1

    #@5
    cmp-long v1, v2, v4

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 404
    return v6

    #@a
    .line 406
    :cond_0
    const/4 v0, 0x1

    #@b
    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    #@c
    if-ge v0, v1, :cond_2

    #@e
    .line 408
    aget-wide v2, p0, v0

    #@10
    const-wide/16 v4, 0x0

    #@12
    cmp-long v1, v2, v4

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 410
    return v6

    #@17
    .line 406
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 413
    :cond_2
    const/4 v1, 0x1

    #@1b
    return v1
.end method

.method public static isZero([I)Z
    .locals 3
    .param p0, "x"    # [I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 418
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 420
    aget v1, p0, v0

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 422
    return v2

    #@b
    .line 418
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 425
    :cond_1
    const/4 v1, 0x1

    #@f
    return v1
.end method

.method public static isZero64([J)Z
    .locals 6
    .param p0, "x"    # [J

    #@0
    .prologue
    .line 430
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    #@2
    if-ge v0, v1, :cond_1

    #@4
    .line 432
    aget-wide v2, p0, v0

    #@6
    const-wide/16 v4, 0x0

    #@8
    cmp-long v1, v2, v4

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 434
    const/4 v1, 0x0

    #@d
    return v1

    #@e
    .line 430
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 437
    :cond_1
    const/4 v1, 0x1

    #@12
    return v1
.end method

.method public static mul([II[II[II)V
    .locals 32
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "zz"    # [I
    .param p5, "zzOff"    # I

    #@0
    .prologue
    .line 513
    add-int/lit8 v5, p3, 0x0

    #@2
    aget v5, p2, v5

    #@4
    int-to-long v0, v5

    #@5
    move-wide/from16 v26, v0

    #@7
    const-wide v28, 0xffffffffL

    #@c
    and-long v10, v26, v28

    #@e
    .line 514
    .local v10, "y_0":J
    add-int/lit8 v5, p3, 0x1

    #@10
    aget v5, p2, v5

    #@12
    int-to-long v0, v5

    #@13
    move-wide/from16 v26, v0

    #@15
    const-wide v28, 0xffffffffL

    #@1a
    and-long v12, v26, v28

    #@1c
    .line 515
    .local v12, "y_1":J
    add-int/lit8 v5, p3, 0x2

    #@1e
    aget v5, p2, v5

    #@20
    int-to-long v0, v5

    #@21
    move-wide/from16 v26, v0

    #@23
    const-wide v28, 0xffffffffL

    #@28
    and-long v14, v26, v28

    #@2a
    .line 516
    .local v14, "y_2":J
    add-int/lit8 v5, p3, 0x3

    #@2c
    aget v5, p2, v5

    #@2e
    int-to-long v0, v5

    #@2f
    move-wide/from16 v26, v0

    #@31
    const-wide v28, 0xffffffffL

    #@36
    and-long v16, v26, v28

    #@38
    .line 517
    .local v16, "y_3":J
    add-int/lit8 v5, p3, 0x4

    #@3a
    aget v5, p2, v5

    #@3c
    int-to-long v0, v5

    #@3d
    move-wide/from16 v26, v0

    #@3f
    const-wide v28, 0xffffffffL

    #@44
    and-long v18, v26, v28

    #@46
    .line 518
    .local v18, "y_4":J
    add-int/lit8 v5, p3, 0x5

    #@48
    aget v5, p2, v5

    #@4a
    int-to-long v0, v5

    #@4b
    move-wide/from16 v26, v0

    #@4d
    const-wide v28, 0xffffffffL

    #@52
    and-long v20, v26, v28

    #@54
    .line 519
    .local v20, "y_5":J
    add-int/lit8 v5, p3, 0x6

    #@56
    aget v5, p2, v5

    #@58
    int-to-long v0, v5

    #@59
    move-wide/from16 v26, v0

    #@5b
    const-wide v28, 0xffffffffL

    #@60
    and-long v22, v26, v28

    #@62
    .line 520
    .local v22, "y_6":J
    add-int/lit8 v5, p3, 0x7

    #@64
    aget v5, p2, v5

    #@66
    int-to-long v0, v5

    #@67
    move-wide/from16 v26, v0

    #@69
    const-wide v28, 0xffffffffL

    #@6e
    and-long v24, v26, v28

    #@70
    .line 523
    .local v24, "y_7":J
    add-int/lit8 v5, p1, 0x0

    #@72
    aget v5, p0, v5

    #@74
    int-to-long v0, v5

    #@75
    move-wide/from16 v26, v0

    #@77
    const-wide v28, 0xffffffffL

    #@7c
    and-long v6, v26, v28

    #@7e
    .line 524
    .local v6, "x_0":J
    mul-long v26, v6, v10

    #@80
    .line 523
    const-wide/16 v28, 0x0

    #@82
    .line 524
    add-long v2, v28, v26

    #@84
    .line 525
    .local v2, "c":J
    add-int/lit8 v5, p5, 0x0

    #@86
    long-to-int v0, v2

    #@87
    move/from16 v26, v0

    #@89
    aput v26, p4, v5

    #@8b
    .line 526
    const/16 v5, 0x20

    #@8d
    ushr-long/2addr v2, v5

    #@8e
    .line 527
    mul-long v26, v6, v12

    #@90
    add-long v2, v2, v26

    #@92
    .line 528
    add-int/lit8 v5, p5, 0x1

    #@94
    long-to-int v0, v2

    #@95
    move/from16 v26, v0

    #@97
    aput v26, p4, v5

    #@99
    .line 529
    const/16 v5, 0x20

    #@9b
    ushr-long/2addr v2, v5

    #@9c
    .line 530
    mul-long v26, v6, v14

    #@9e
    add-long v2, v2, v26

    #@a0
    .line 531
    add-int/lit8 v5, p5, 0x2

    #@a2
    long-to-int v0, v2

    #@a3
    move/from16 v26, v0

    #@a5
    aput v26, p4, v5

    #@a7
    .line 532
    const/16 v5, 0x20

    #@a9
    ushr-long/2addr v2, v5

    #@aa
    .line 533
    mul-long v26, v6, v16

    #@ac
    add-long v2, v2, v26

    #@ae
    .line 534
    add-int/lit8 v5, p5, 0x3

    #@b0
    long-to-int v0, v2

    #@b1
    move/from16 v26, v0

    #@b3
    aput v26, p4, v5

    #@b5
    .line 535
    const/16 v5, 0x20

    #@b7
    ushr-long/2addr v2, v5

    #@b8
    .line 536
    mul-long v26, v6, v18

    #@ba
    add-long v2, v2, v26

    #@bc
    .line 537
    add-int/lit8 v5, p5, 0x4

    #@be
    long-to-int v0, v2

    #@bf
    move/from16 v26, v0

    #@c1
    aput v26, p4, v5

    #@c3
    .line 538
    const/16 v5, 0x20

    #@c5
    ushr-long/2addr v2, v5

    #@c6
    .line 539
    mul-long v26, v6, v20

    #@c8
    add-long v2, v2, v26

    #@ca
    .line 540
    add-int/lit8 v5, p5, 0x5

    #@cc
    long-to-int v0, v2

    #@cd
    move/from16 v26, v0

    #@cf
    aput v26, p4, v5

    #@d1
    .line 541
    const/16 v5, 0x20

    #@d3
    ushr-long/2addr v2, v5

    #@d4
    .line 542
    mul-long v26, v6, v22

    #@d6
    add-long v2, v2, v26

    #@d8
    .line 543
    add-int/lit8 v5, p5, 0x6

    #@da
    long-to-int v0, v2

    #@db
    move/from16 v26, v0

    #@dd
    aput v26, p4, v5

    #@df
    .line 544
    const/16 v5, 0x20

    #@e1
    ushr-long/2addr v2, v5

    #@e2
    .line 545
    mul-long v26, v6, v24

    #@e4
    add-long v2, v2, v26

    #@e6
    .line 546
    add-int/lit8 v5, p5, 0x7

    #@e8
    long-to-int v0, v2

    #@e9
    move/from16 v26, v0

    #@eb
    aput v26, p4, v5

    #@ed
    .line 547
    const/16 v5, 0x20

    #@ef
    ushr-long/2addr v2, v5

    #@f0
    .line 548
    add-int/lit8 v5, p5, 0x8

    #@f2
    long-to-int v0, v2

    #@f3
    move/from16 v26, v0

    #@f5
    aput v26, p4, v5

    #@f7
    .line 551
    const/4 v4, 0x1

    #@f8
    .local v4, "i":I
    :goto_0
    const/16 v5, 0x8

    #@fa
    if-ge v4, v5, :cond_0

    #@fc
    .line 553
    add-int/lit8 p5, p5, 0x1

    #@fe
    .line 554
    add-int v5, p1, v4

    #@100
    aget v5, p0, v5

    #@102
    int-to-long v0, v5

    #@103
    move-wide/from16 v26, v0

    #@105
    const-wide v28, 0xffffffffL

    #@10a
    and-long v8, v26, v28

    #@10c
    .line 555
    .local v8, "x_i":J
    mul-long v26, v8, v10

    #@10e
    add-int/lit8 v5, p5, 0x0

    #@110
    aget v5, p4, v5

    #@112
    int-to-long v0, v5

    #@113
    move-wide/from16 v28, v0

    #@115
    const-wide v30, 0xffffffffL

    #@11a
    and-long v28, v28, v30

    #@11c
    add-long v26, v26, v28

    #@11e
    .line 554
    const-wide/16 v28, 0x0

    #@120
    .line 555
    add-long v2, v28, v26

    #@122
    .line 556
    add-int/lit8 v5, p5, 0x0

    #@124
    long-to-int v0, v2

    #@125
    move/from16 v26, v0

    #@127
    aput v26, p4, v5

    #@129
    .line 557
    const/16 v5, 0x20

    #@12b
    ushr-long/2addr v2, v5

    #@12c
    .line 558
    mul-long v26, v8, v12

    #@12e
    add-int/lit8 v5, p5, 0x1

    #@130
    aget v5, p4, v5

    #@132
    int-to-long v0, v5

    #@133
    move-wide/from16 v28, v0

    #@135
    const-wide v30, 0xffffffffL

    #@13a
    and-long v28, v28, v30

    #@13c
    add-long v26, v26, v28

    #@13e
    add-long v2, v2, v26

    #@140
    .line 559
    add-int/lit8 v5, p5, 0x1

    #@142
    long-to-int v0, v2

    #@143
    move/from16 v26, v0

    #@145
    aput v26, p4, v5

    #@147
    .line 560
    const/16 v5, 0x20

    #@149
    ushr-long/2addr v2, v5

    #@14a
    .line 561
    mul-long v26, v8, v14

    #@14c
    add-int/lit8 v5, p5, 0x2

    #@14e
    aget v5, p4, v5

    #@150
    int-to-long v0, v5

    #@151
    move-wide/from16 v28, v0

    #@153
    const-wide v30, 0xffffffffL

    #@158
    and-long v28, v28, v30

    #@15a
    add-long v26, v26, v28

    #@15c
    add-long v2, v2, v26

    #@15e
    .line 562
    add-int/lit8 v5, p5, 0x2

    #@160
    long-to-int v0, v2

    #@161
    move/from16 v26, v0

    #@163
    aput v26, p4, v5

    #@165
    .line 563
    const/16 v5, 0x20

    #@167
    ushr-long/2addr v2, v5

    #@168
    .line 564
    mul-long v26, v8, v16

    #@16a
    add-int/lit8 v5, p5, 0x3

    #@16c
    aget v5, p4, v5

    #@16e
    int-to-long v0, v5

    #@16f
    move-wide/from16 v28, v0

    #@171
    const-wide v30, 0xffffffffL

    #@176
    and-long v28, v28, v30

    #@178
    add-long v26, v26, v28

    #@17a
    add-long v2, v2, v26

    #@17c
    .line 565
    add-int/lit8 v5, p5, 0x3

    #@17e
    long-to-int v0, v2

    #@17f
    move/from16 v26, v0

    #@181
    aput v26, p4, v5

    #@183
    .line 566
    const/16 v5, 0x20

    #@185
    ushr-long/2addr v2, v5

    #@186
    .line 567
    mul-long v26, v8, v18

    #@188
    add-int/lit8 v5, p5, 0x4

    #@18a
    aget v5, p4, v5

    #@18c
    int-to-long v0, v5

    #@18d
    move-wide/from16 v28, v0

    #@18f
    const-wide v30, 0xffffffffL

    #@194
    and-long v28, v28, v30

    #@196
    add-long v26, v26, v28

    #@198
    add-long v2, v2, v26

    #@19a
    .line 568
    add-int/lit8 v5, p5, 0x4

    #@19c
    long-to-int v0, v2

    #@19d
    move/from16 v26, v0

    #@19f
    aput v26, p4, v5

    #@1a1
    .line 569
    const/16 v5, 0x20

    #@1a3
    ushr-long/2addr v2, v5

    #@1a4
    .line 570
    mul-long v26, v8, v20

    #@1a6
    add-int/lit8 v5, p5, 0x5

    #@1a8
    aget v5, p4, v5

    #@1aa
    int-to-long v0, v5

    #@1ab
    move-wide/from16 v28, v0

    #@1ad
    const-wide v30, 0xffffffffL

    #@1b2
    and-long v28, v28, v30

    #@1b4
    add-long v26, v26, v28

    #@1b6
    add-long v2, v2, v26

    #@1b8
    .line 571
    add-int/lit8 v5, p5, 0x5

    #@1ba
    long-to-int v0, v2

    #@1bb
    move/from16 v26, v0

    #@1bd
    aput v26, p4, v5

    #@1bf
    .line 572
    const/16 v5, 0x20

    #@1c1
    ushr-long/2addr v2, v5

    #@1c2
    .line 573
    mul-long v26, v8, v22

    #@1c4
    add-int/lit8 v5, p5, 0x6

    #@1c6
    aget v5, p4, v5

    #@1c8
    int-to-long v0, v5

    #@1c9
    move-wide/from16 v28, v0

    #@1cb
    const-wide v30, 0xffffffffL

    #@1d0
    and-long v28, v28, v30

    #@1d2
    add-long v26, v26, v28

    #@1d4
    add-long v2, v2, v26

    #@1d6
    .line 574
    add-int/lit8 v5, p5, 0x6

    #@1d8
    long-to-int v0, v2

    #@1d9
    move/from16 v26, v0

    #@1db
    aput v26, p4, v5

    #@1dd
    .line 575
    const/16 v5, 0x20

    #@1df
    ushr-long/2addr v2, v5

    #@1e0
    .line 576
    mul-long v26, v8, v24

    #@1e2
    add-int/lit8 v5, p5, 0x7

    #@1e4
    aget v5, p4, v5

    #@1e6
    int-to-long v0, v5

    #@1e7
    move-wide/from16 v28, v0

    #@1e9
    const-wide v30, 0xffffffffL

    #@1ee
    and-long v28, v28, v30

    #@1f0
    add-long v26, v26, v28

    #@1f2
    add-long v2, v2, v26

    #@1f4
    .line 577
    add-int/lit8 v5, p5, 0x7

    #@1f6
    long-to-int v0, v2

    #@1f7
    move/from16 v26, v0

    #@1f9
    aput v26, p4, v5

    #@1fb
    .line 578
    const/16 v5, 0x20

    #@1fd
    ushr-long/2addr v2, v5

    #@1fe
    .line 579
    add-int/lit8 v5, p5, 0x8

    #@200
    long-to-int v0, v2

    #@201
    move/from16 v26, v0

    #@203
    aput v26, p4, v5

    #@205
    .line 551
    add-int/lit8 v4, v4, 0x1

    #@207
    goto/16 :goto_0

    #@209
    .line 511
    .end local v8    # "x_i":J
    :cond_0
    return-void
.end method

.method public static mul([I[I[I)V
    .locals 32
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    #@0
    .prologue
    .line 442
    const/4 v5, 0x0

    #@1
    aget v5, p1, v5

    #@3
    int-to-long v0, v5

    #@4
    move-wide/from16 v26, v0

    #@6
    const-wide v28, 0xffffffffL

    #@b
    and-long v10, v26, v28

    #@d
    .line 443
    .local v10, "y_0":J
    const/4 v5, 0x1

    #@e
    aget v5, p1, v5

    #@10
    int-to-long v0, v5

    #@11
    move-wide/from16 v26, v0

    #@13
    const-wide v28, 0xffffffffL

    #@18
    and-long v12, v26, v28

    #@1a
    .line 444
    .local v12, "y_1":J
    const/4 v5, 0x2

    #@1b
    aget v5, p1, v5

    #@1d
    int-to-long v0, v5

    #@1e
    move-wide/from16 v26, v0

    #@20
    const-wide v28, 0xffffffffL

    #@25
    and-long v14, v26, v28

    #@27
    .line 445
    .local v14, "y_2":J
    const/4 v5, 0x3

    #@28
    aget v5, p1, v5

    #@2a
    int-to-long v0, v5

    #@2b
    move-wide/from16 v26, v0

    #@2d
    const-wide v28, 0xffffffffL

    #@32
    and-long v16, v26, v28

    #@34
    .line 446
    .local v16, "y_3":J
    const/4 v5, 0x4

    #@35
    aget v5, p1, v5

    #@37
    int-to-long v0, v5

    #@38
    move-wide/from16 v26, v0

    #@3a
    const-wide v28, 0xffffffffL

    #@3f
    and-long v18, v26, v28

    #@41
    .line 447
    .local v18, "y_4":J
    const/4 v5, 0x5

    #@42
    aget v5, p1, v5

    #@44
    int-to-long v0, v5

    #@45
    move-wide/from16 v26, v0

    #@47
    const-wide v28, 0xffffffffL

    #@4c
    and-long v20, v26, v28

    #@4e
    .line 448
    .local v20, "y_5":J
    const/4 v5, 0x6

    #@4f
    aget v5, p1, v5

    #@51
    int-to-long v0, v5

    #@52
    move-wide/from16 v26, v0

    #@54
    const-wide v28, 0xffffffffL

    #@59
    and-long v22, v26, v28

    #@5b
    .line 449
    .local v22, "y_6":J
    const/4 v5, 0x7

    #@5c
    aget v5, p1, v5

    #@5e
    int-to-long v0, v5

    #@5f
    move-wide/from16 v26, v0

    #@61
    const-wide v28, 0xffffffffL

    #@66
    and-long v24, v26, v28

    #@68
    .line 452
    .local v24, "y_7":J
    const/4 v5, 0x0

    #@69
    aget v5, p0, v5

    #@6b
    int-to-long v0, v5

    #@6c
    move-wide/from16 v26, v0

    #@6e
    const-wide v28, 0xffffffffL

    #@73
    and-long v6, v26, v28

    #@75
    .line 453
    .local v6, "x_0":J
    mul-long v26, v6, v10

    #@77
    .line 452
    const-wide/16 v28, 0x0

    #@79
    .line 453
    add-long v2, v28, v26

    #@7b
    .line 454
    .local v2, "c":J
    long-to-int v5, v2

    #@7c
    const/16 v26, 0x0

    #@7e
    aput v5, p2, v26

    #@80
    .line 455
    const/16 v5, 0x20

    #@82
    ushr-long/2addr v2, v5

    #@83
    .line 456
    mul-long v26, v6, v12

    #@85
    add-long v2, v2, v26

    #@87
    .line 457
    long-to-int v5, v2

    #@88
    const/16 v26, 0x1

    #@8a
    aput v5, p2, v26

    #@8c
    .line 458
    const/16 v5, 0x20

    #@8e
    ushr-long/2addr v2, v5

    #@8f
    .line 459
    mul-long v26, v6, v14

    #@91
    add-long v2, v2, v26

    #@93
    .line 460
    long-to-int v5, v2

    #@94
    const/16 v26, 0x2

    #@96
    aput v5, p2, v26

    #@98
    .line 461
    const/16 v5, 0x20

    #@9a
    ushr-long/2addr v2, v5

    #@9b
    .line 462
    mul-long v26, v6, v16

    #@9d
    add-long v2, v2, v26

    #@9f
    .line 463
    long-to-int v5, v2

    #@a0
    const/16 v26, 0x3

    #@a2
    aput v5, p2, v26

    #@a4
    .line 464
    const/16 v5, 0x20

    #@a6
    ushr-long/2addr v2, v5

    #@a7
    .line 465
    mul-long v26, v6, v18

    #@a9
    add-long v2, v2, v26

    #@ab
    .line 466
    long-to-int v5, v2

    #@ac
    const/16 v26, 0x4

    #@ae
    aput v5, p2, v26

    #@b0
    .line 467
    const/16 v5, 0x20

    #@b2
    ushr-long/2addr v2, v5

    #@b3
    .line 468
    mul-long v26, v6, v20

    #@b5
    add-long v2, v2, v26

    #@b7
    .line 469
    long-to-int v5, v2

    #@b8
    const/16 v26, 0x5

    #@ba
    aput v5, p2, v26

    #@bc
    .line 470
    const/16 v5, 0x20

    #@be
    ushr-long/2addr v2, v5

    #@bf
    .line 471
    mul-long v26, v6, v22

    #@c1
    add-long v2, v2, v26

    #@c3
    .line 472
    long-to-int v5, v2

    #@c4
    const/16 v26, 0x6

    #@c6
    aput v5, p2, v26

    #@c8
    .line 473
    const/16 v5, 0x20

    #@ca
    ushr-long/2addr v2, v5

    #@cb
    .line 474
    mul-long v26, v6, v24

    #@cd
    add-long v2, v2, v26

    #@cf
    .line 475
    long-to-int v5, v2

    #@d0
    const/16 v26, 0x7

    #@d2
    aput v5, p2, v26

    #@d4
    .line 476
    const/16 v5, 0x20

    #@d6
    ushr-long/2addr v2, v5

    #@d7
    .line 477
    long-to-int v5, v2

    #@d8
    const/16 v26, 0x8

    #@da
    aput v5, p2, v26

    #@dc
    .line 480
    const/4 v4, 0x1

    #@dd
    .local v4, "i":I
    :goto_0
    const/16 v5, 0x8

    #@df
    if-ge v4, v5, :cond_0

    #@e1
    .line 482
    aget v5, p0, v4

    #@e3
    int-to-long v0, v5

    #@e4
    move-wide/from16 v26, v0

    #@e6
    const-wide v28, 0xffffffffL

    #@eb
    and-long v8, v26, v28

    #@ed
    .line 483
    .local v8, "x_i":J
    mul-long v26, v8, v10

    #@ef
    add-int/lit8 v5, v4, 0x0

    #@f1
    aget v5, p2, v5

    #@f3
    int-to-long v0, v5

    #@f4
    move-wide/from16 v28, v0

    #@f6
    const-wide v30, 0xffffffffL

    #@fb
    and-long v28, v28, v30

    #@fd
    add-long v26, v26, v28

    #@ff
    .line 482
    const-wide/16 v28, 0x0

    #@101
    .line 483
    add-long v2, v28, v26

    #@103
    .line 484
    add-int/lit8 v5, v4, 0x0

    #@105
    long-to-int v0, v2

    #@106
    move/from16 v26, v0

    #@108
    aput v26, p2, v5

    #@10a
    .line 485
    const/16 v5, 0x20

    #@10c
    ushr-long/2addr v2, v5

    #@10d
    .line 486
    mul-long v26, v8, v12

    #@10f
    add-int/lit8 v5, v4, 0x1

    #@111
    aget v5, p2, v5

    #@113
    int-to-long v0, v5

    #@114
    move-wide/from16 v28, v0

    #@116
    const-wide v30, 0xffffffffL

    #@11b
    and-long v28, v28, v30

    #@11d
    add-long v26, v26, v28

    #@11f
    add-long v2, v2, v26

    #@121
    .line 487
    add-int/lit8 v5, v4, 0x1

    #@123
    long-to-int v0, v2

    #@124
    move/from16 v26, v0

    #@126
    aput v26, p2, v5

    #@128
    .line 488
    const/16 v5, 0x20

    #@12a
    ushr-long/2addr v2, v5

    #@12b
    .line 489
    mul-long v26, v8, v14

    #@12d
    add-int/lit8 v5, v4, 0x2

    #@12f
    aget v5, p2, v5

    #@131
    int-to-long v0, v5

    #@132
    move-wide/from16 v28, v0

    #@134
    const-wide v30, 0xffffffffL

    #@139
    and-long v28, v28, v30

    #@13b
    add-long v26, v26, v28

    #@13d
    add-long v2, v2, v26

    #@13f
    .line 490
    add-int/lit8 v5, v4, 0x2

    #@141
    long-to-int v0, v2

    #@142
    move/from16 v26, v0

    #@144
    aput v26, p2, v5

    #@146
    .line 491
    const/16 v5, 0x20

    #@148
    ushr-long/2addr v2, v5

    #@149
    .line 492
    mul-long v26, v8, v16

    #@14b
    add-int/lit8 v5, v4, 0x3

    #@14d
    aget v5, p2, v5

    #@14f
    int-to-long v0, v5

    #@150
    move-wide/from16 v28, v0

    #@152
    const-wide v30, 0xffffffffL

    #@157
    and-long v28, v28, v30

    #@159
    add-long v26, v26, v28

    #@15b
    add-long v2, v2, v26

    #@15d
    .line 493
    add-int/lit8 v5, v4, 0x3

    #@15f
    long-to-int v0, v2

    #@160
    move/from16 v26, v0

    #@162
    aput v26, p2, v5

    #@164
    .line 494
    const/16 v5, 0x20

    #@166
    ushr-long/2addr v2, v5

    #@167
    .line 495
    mul-long v26, v8, v18

    #@169
    add-int/lit8 v5, v4, 0x4

    #@16b
    aget v5, p2, v5

    #@16d
    int-to-long v0, v5

    #@16e
    move-wide/from16 v28, v0

    #@170
    const-wide v30, 0xffffffffL

    #@175
    and-long v28, v28, v30

    #@177
    add-long v26, v26, v28

    #@179
    add-long v2, v2, v26

    #@17b
    .line 496
    add-int/lit8 v5, v4, 0x4

    #@17d
    long-to-int v0, v2

    #@17e
    move/from16 v26, v0

    #@180
    aput v26, p2, v5

    #@182
    .line 497
    const/16 v5, 0x20

    #@184
    ushr-long/2addr v2, v5

    #@185
    .line 498
    mul-long v26, v8, v20

    #@187
    add-int/lit8 v5, v4, 0x5

    #@189
    aget v5, p2, v5

    #@18b
    int-to-long v0, v5

    #@18c
    move-wide/from16 v28, v0

    #@18e
    const-wide v30, 0xffffffffL

    #@193
    and-long v28, v28, v30

    #@195
    add-long v26, v26, v28

    #@197
    add-long v2, v2, v26

    #@199
    .line 499
    add-int/lit8 v5, v4, 0x5

    #@19b
    long-to-int v0, v2

    #@19c
    move/from16 v26, v0

    #@19e
    aput v26, p2, v5

    #@1a0
    .line 500
    const/16 v5, 0x20

    #@1a2
    ushr-long/2addr v2, v5

    #@1a3
    .line 501
    mul-long v26, v8, v22

    #@1a5
    add-int/lit8 v5, v4, 0x6

    #@1a7
    aget v5, p2, v5

    #@1a9
    int-to-long v0, v5

    #@1aa
    move-wide/from16 v28, v0

    #@1ac
    const-wide v30, 0xffffffffL

    #@1b1
    and-long v28, v28, v30

    #@1b3
    add-long v26, v26, v28

    #@1b5
    add-long v2, v2, v26

    #@1b7
    .line 502
    add-int/lit8 v5, v4, 0x6

    #@1b9
    long-to-int v0, v2

    #@1ba
    move/from16 v26, v0

    #@1bc
    aput v26, p2, v5

    #@1be
    .line 503
    const/16 v5, 0x20

    #@1c0
    ushr-long/2addr v2, v5

    #@1c1
    .line 504
    mul-long v26, v8, v24

    #@1c3
    add-int/lit8 v5, v4, 0x7

    #@1c5
    aget v5, p2, v5

    #@1c7
    int-to-long v0, v5

    #@1c8
    move-wide/from16 v28, v0

    #@1ca
    const-wide v30, 0xffffffffL

    #@1cf
    and-long v28, v28, v30

    #@1d1
    add-long v26, v26, v28

    #@1d3
    add-long v2, v2, v26

    #@1d5
    .line 505
    add-int/lit8 v5, v4, 0x7

    #@1d7
    long-to-int v0, v2

    #@1d8
    move/from16 v26, v0

    #@1da
    aput v26, p2, v5

    #@1dc
    .line 506
    const/16 v5, 0x20

    #@1de
    ushr-long/2addr v2, v5

    #@1df
    .line 507
    add-int/lit8 v5, v4, 0x8

    #@1e1
    long-to-int v0, v2

    #@1e2
    move/from16 v26, v0

    #@1e4
    aput v26, p2, v5

    #@1e6
    .line 480
    add-int/lit8 v4, v4, 0x1

    #@1e8
    goto/16 :goto_0

    #@1ea
    .line 440
    .end local v8    # "x_i":J
    :cond_0
    return-void
.end method

.method public static mul33Add(I[II[II[II)J
    .locals 28
    .param p0, "w"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    #@0
    .prologue
    .line 680
    move/from16 v0, p0

    #@2
    int-to-long v0, v0

    #@3
    move-wide/from16 v22, v0

    #@5
    const-wide v24, 0xffffffffL

    #@a
    and-long v4, v22, v24

    #@c
    .line 681
    .local v4, "wVal":J
    add-int/lit8 v22, p2, 0x0

    #@e
    aget v22, p1, v22

    #@10
    move/from16 v0, v22

    #@12
    int-to-long v0, v0

    #@13
    move-wide/from16 v22, v0

    #@15
    const-wide v24, 0xffffffffL

    #@1a
    and-long v6, v22, v24

    #@1c
    .line 682
    .local v6, "x0":J
    mul-long v22, v4, v6

    #@1e
    add-int/lit8 v24, p4, 0x0

    #@20
    aget v24, p3, v24

    #@22
    move/from16 v0, v24

    #@24
    int-to-long v0, v0

    #@25
    move-wide/from16 v24, v0

    #@27
    const-wide v26, 0xffffffffL

    #@2c
    and-long v24, v24, v26

    #@2e
    add-long v22, v22, v24

    #@30
    .line 680
    const-wide/16 v24, 0x0

    #@32
    .line 682
    add-long v2, v24, v22

    #@34
    .line 683
    .local v2, "c":J
    add-int/lit8 v22, p6, 0x0

    #@36
    long-to-int v0, v2

    #@37
    move/from16 v23, v0

    #@39
    aput v23, p5, v22

    #@3b
    .line 684
    const/16 v22, 0x20

    #@3d
    ushr-long v2, v2, v22

    #@3f
    .line 685
    add-int/lit8 v22, p2, 0x1

    #@41
    aget v22, p1, v22

    #@43
    move/from16 v0, v22

    #@45
    int-to-long v0, v0

    #@46
    move-wide/from16 v22, v0

    #@48
    const-wide v24, 0xffffffffL

    #@4d
    and-long v8, v22, v24

    #@4f
    .line 686
    .local v8, "x1":J
    mul-long v22, v4, v8

    #@51
    add-long v22, v22, v6

    #@53
    add-int/lit8 v24, p4, 0x1

    #@55
    aget v24, p3, v24

    #@57
    move/from16 v0, v24

    #@59
    int-to-long v0, v0

    #@5a
    move-wide/from16 v24, v0

    #@5c
    const-wide v26, 0xffffffffL

    #@61
    and-long v24, v24, v26

    #@63
    add-long v22, v22, v24

    #@65
    add-long v2, v2, v22

    #@67
    .line 687
    add-int/lit8 v22, p6, 0x1

    #@69
    long-to-int v0, v2

    #@6a
    move/from16 v23, v0

    #@6c
    aput v23, p5, v22

    #@6e
    .line 688
    const/16 v22, 0x20

    #@70
    ushr-long v2, v2, v22

    #@72
    .line 689
    add-int/lit8 v22, p2, 0x2

    #@74
    aget v22, p1, v22

    #@76
    move/from16 v0, v22

    #@78
    int-to-long v0, v0

    #@79
    move-wide/from16 v22, v0

    #@7b
    const-wide v24, 0xffffffffL

    #@80
    and-long v10, v22, v24

    #@82
    .line 690
    .local v10, "x2":J
    mul-long v22, v4, v10

    #@84
    add-long v22, v22, v8

    #@86
    add-int/lit8 v24, p4, 0x2

    #@88
    aget v24, p3, v24

    #@8a
    move/from16 v0, v24

    #@8c
    int-to-long v0, v0

    #@8d
    move-wide/from16 v24, v0

    #@8f
    const-wide v26, 0xffffffffL

    #@94
    and-long v24, v24, v26

    #@96
    add-long v22, v22, v24

    #@98
    add-long v2, v2, v22

    #@9a
    .line 691
    add-int/lit8 v22, p6, 0x2

    #@9c
    long-to-int v0, v2

    #@9d
    move/from16 v23, v0

    #@9f
    aput v23, p5, v22

    #@a1
    .line 692
    const/16 v22, 0x20

    #@a3
    ushr-long v2, v2, v22

    #@a5
    .line 693
    add-int/lit8 v22, p2, 0x3

    #@a7
    aget v22, p1, v22

    #@a9
    move/from16 v0, v22

    #@ab
    int-to-long v0, v0

    #@ac
    move-wide/from16 v22, v0

    #@ae
    const-wide v24, 0xffffffffL

    #@b3
    and-long v12, v22, v24

    #@b5
    .line 694
    .local v12, "x3":J
    mul-long v22, v4, v12

    #@b7
    add-long v22, v22, v10

    #@b9
    add-int/lit8 v24, p4, 0x3

    #@bb
    aget v24, p3, v24

    #@bd
    move/from16 v0, v24

    #@bf
    int-to-long v0, v0

    #@c0
    move-wide/from16 v24, v0

    #@c2
    const-wide v26, 0xffffffffL

    #@c7
    and-long v24, v24, v26

    #@c9
    add-long v22, v22, v24

    #@cb
    add-long v2, v2, v22

    #@cd
    .line 695
    add-int/lit8 v22, p6, 0x3

    #@cf
    long-to-int v0, v2

    #@d0
    move/from16 v23, v0

    #@d2
    aput v23, p5, v22

    #@d4
    .line 696
    const/16 v22, 0x20

    #@d6
    ushr-long v2, v2, v22

    #@d8
    .line 697
    add-int/lit8 v22, p2, 0x4

    #@da
    aget v22, p1, v22

    #@dc
    move/from16 v0, v22

    #@de
    int-to-long v0, v0

    #@df
    move-wide/from16 v22, v0

    #@e1
    const-wide v24, 0xffffffffL

    #@e6
    and-long v14, v22, v24

    #@e8
    .line 698
    .local v14, "x4":J
    mul-long v22, v4, v14

    #@ea
    add-long v22, v22, v12

    #@ec
    add-int/lit8 v24, p4, 0x4

    #@ee
    aget v24, p3, v24

    #@f0
    move/from16 v0, v24

    #@f2
    int-to-long v0, v0

    #@f3
    move-wide/from16 v24, v0

    #@f5
    const-wide v26, 0xffffffffL

    #@fa
    and-long v24, v24, v26

    #@fc
    add-long v22, v22, v24

    #@fe
    add-long v2, v2, v22

    #@100
    .line 699
    add-int/lit8 v22, p6, 0x4

    #@102
    long-to-int v0, v2

    #@103
    move/from16 v23, v0

    #@105
    aput v23, p5, v22

    #@107
    .line 700
    const/16 v22, 0x20

    #@109
    ushr-long v2, v2, v22

    #@10b
    .line 701
    add-int/lit8 v22, p2, 0x5

    #@10d
    aget v22, p1, v22

    #@10f
    move/from16 v0, v22

    #@111
    int-to-long v0, v0

    #@112
    move-wide/from16 v22, v0

    #@114
    const-wide v24, 0xffffffffL

    #@119
    and-long v16, v22, v24

    #@11b
    .line 702
    .local v16, "x5":J
    mul-long v22, v4, v16

    #@11d
    add-long v22, v22, v14

    #@11f
    add-int/lit8 v24, p4, 0x5

    #@121
    aget v24, p3, v24

    #@123
    move/from16 v0, v24

    #@125
    int-to-long v0, v0

    #@126
    move-wide/from16 v24, v0

    #@128
    const-wide v26, 0xffffffffL

    #@12d
    and-long v24, v24, v26

    #@12f
    add-long v22, v22, v24

    #@131
    add-long v2, v2, v22

    #@133
    .line 703
    add-int/lit8 v22, p6, 0x5

    #@135
    long-to-int v0, v2

    #@136
    move/from16 v23, v0

    #@138
    aput v23, p5, v22

    #@13a
    .line 704
    const/16 v22, 0x20

    #@13c
    ushr-long v2, v2, v22

    #@13e
    .line 705
    add-int/lit8 v22, p2, 0x6

    #@140
    aget v22, p1, v22

    #@142
    move/from16 v0, v22

    #@144
    int-to-long v0, v0

    #@145
    move-wide/from16 v22, v0

    #@147
    const-wide v24, 0xffffffffL

    #@14c
    and-long v18, v22, v24

    #@14e
    .line 706
    .local v18, "x6":J
    mul-long v22, v4, v18

    #@150
    add-long v22, v22, v16

    #@152
    add-int/lit8 v24, p4, 0x6

    #@154
    aget v24, p3, v24

    #@156
    move/from16 v0, v24

    #@158
    int-to-long v0, v0

    #@159
    move-wide/from16 v24, v0

    #@15b
    const-wide v26, 0xffffffffL

    #@160
    and-long v24, v24, v26

    #@162
    add-long v22, v22, v24

    #@164
    add-long v2, v2, v22

    #@166
    .line 707
    add-int/lit8 v22, p6, 0x6

    #@168
    long-to-int v0, v2

    #@169
    move/from16 v23, v0

    #@16b
    aput v23, p5, v22

    #@16d
    .line 708
    const/16 v22, 0x20

    #@16f
    ushr-long v2, v2, v22

    #@171
    .line 709
    add-int/lit8 v22, p2, 0x7

    #@173
    aget v22, p1, v22

    #@175
    move/from16 v0, v22

    #@177
    int-to-long v0, v0

    #@178
    move-wide/from16 v22, v0

    #@17a
    const-wide v24, 0xffffffffL

    #@17f
    and-long v20, v22, v24

    #@181
    .line 710
    .local v20, "x7":J
    mul-long v22, v4, v20

    #@183
    add-long v22, v22, v18

    #@185
    add-int/lit8 v24, p4, 0x7

    #@187
    aget v24, p3, v24

    #@189
    move/from16 v0, v24

    #@18b
    int-to-long v0, v0

    #@18c
    move-wide/from16 v24, v0

    #@18e
    const-wide v26, 0xffffffffL

    #@193
    and-long v24, v24, v26

    #@195
    add-long v22, v22, v24

    #@197
    add-long v2, v2, v22

    #@199
    .line 711
    add-int/lit8 v22, p6, 0x7

    #@19b
    long-to-int v0, v2

    #@19c
    move/from16 v23, v0

    #@19e
    aput v23, p5, v22

    #@1a0
    .line 712
    const/16 v22, 0x20

    #@1a2
    ushr-long v2, v2, v22

    #@1a4
    .line 713
    add-long v2, v2, v20

    #@1a6
    .line 714
    return-wide v2
.end method

.method public static mul33DWordAdd(IJ[II)I
    .locals 17
    .param p0, "x"    # I
    .param p1, "y"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    #@0
    .prologue
    .line 812
    move/from16 v0, p0

    #@2
    int-to-long v10, v0

    #@3
    const-wide v12, 0xffffffffL

    #@8
    and-long v4, v10, v12

    #@a
    .line 813
    .local v4, "xVal":J
    const-wide v10, 0xffffffffL

    #@f
    and-long v6, p1, v10

    #@11
    .line 814
    .local v6, "y00":J
    mul-long v10, v4, v6

    #@13
    add-int/lit8 v12, p4, 0x0

    #@15
    aget v12, p3, v12

    #@17
    int-to-long v12, v12

    #@18
    const-wide v14, 0xffffffffL

    #@1d
    and-long/2addr v12, v14

    #@1e
    add-long/2addr v10, v12

    #@1f
    .line 812
    const-wide/16 v12, 0x0

    #@21
    .line 814
    add-long v2, v12, v10

    #@23
    .line 815
    .local v2, "c":J
    add-int/lit8 v10, p4, 0x0

    #@25
    long-to-int v11, v2

    #@26
    aput v11, p3, v10

    #@28
    .line 816
    const/16 v10, 0x20

    #@2a
    ushr-long/2addr v2, v10

    #@2b
    .line 817
    const/16 v10, 0x20

    #@2d
    ushr-long v8, p1, v10

    #@2f
    .line 818
    .local v8, "y01":J
    mul-long v10, v4, v8

    #@31
    add-long/2addr v10, v6

    #@32
    add-int/lit8 v12, p4, 0x1

    #@34
    aget v12, p3, v12

    #@36
    int-to-long v12, v12

    #@37
    const-wide v14, 0xffffffffL

    #@3c
    and-long/2addr v12, v14

    #@3d
    add-long/2addr v10, v12

    #@3e
    add-long/2addr v2, v10

    #@3f
    .line 819
    add-int/lit8 v10, p4, 0x1

    #@41
    long-to-int v11, v2

    #@42
    aput v11, p3, v10

    #@44
    .line 820
    const/16 v10, 0x20

    #@46
    ushr-long/2addr v2, v10

    #@47
    .line 821
    add-int/lit8 v10, p4, 0x2

    #@49
    aget v10, p3, v10

    #@4b
    int-to-long v10, v10

    #@4c
    const-wide v12, 0xffffffffL

    #@51
    and-long/2addr v10, v12

    #@52
    add-long/2addr v10, v8

    #@53
    add-long/2addr v2, v10

    #@54
    .line 822
    add-int/lit8 v10, p4, 0x2

    #@56
    long-to-int v11, v2

    #@57
    aput v11, p3, v10

    #@59
    .line 823
    const/16 v10, 0x20

    #@5b
    ushr-long/2addr v2, v10

    #@5c
    .line 824
    add-int/lit8 v10, p4, 0x3

    #@5e
    aget v10, p3, v10

    #@60
    int-to-long v10, v10

    #@61
    const-wide v12, 0xffffffffL

    #@66
    and-long/2addr v10, v12

    #@67
    add-long/2addr v2, v10

    #@68
    .line 825
    add-int/lit8 v10, p4, 0x3

    #@6a
    long-to-int v11, v2

    #@6b
    aput v11, p3, v10

    #@6d
    .line 826
    const/16 v10, 0x20

    #@6f
    ushr-long/2addr v2, v10

    #@70
    .line 827
    const-wide/16 v10, 0x0

    #@72
    cmp-long v10, v2, v10

    #@74
    if-nez v10, :cond_0

    #@76
    const/4 v10, 0x0

    #@77
    :goto_0
    return v10

    #@78
    :cond_0
    const/16 v10, 0x8

    #@7a
    const/4 v11, 0x4

    #@7b
    move-object/from16 v0, p3

    #@7d
    move/from16 v1, p4

    #@7f
    invoke-static {v10, v0, v1, v11}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    #@82
    move-result v10

    #@83
    goto :goto_0
.end method

.method public static mul33WordAdd(II[II)I
    .locals 12
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    #@0
    .prologue
    .line 835
    int-to-long v6, p0

    #@1
    const-wide v8, 0xffffffffL

    #@6
    and-long v2, v6, v8

    #@8
    .local v2, "xVal":J
    int-to-long v6, p1

    #@9
    const-wide v8, 0xffffffffL

    #@e
    and-long v4, v6, v8

    #@10
    .line 836
    .local v4, "yVal":J
    mul-long v6, v4, v2

    #@12
    add-int/lit8 v8, p3, 0x0

    #@14
    aget v8, p2, v8

    #@16
    int-to-long v8, v8

    #@17
    const-wide v10, 0xffffffffL

    #@1c
    and-long/2addr v8, v10

    #@1d
    add-long/2addr v6, v8

    #@1e
    .line 835
    const-wide/16 v8, 0x0

    #@20
    .line 836
    add-long v0, v8, v6

    #@22
    .line 837
    .local v0, "c":J
    add-int/lit8 v6, p3, 0x0

    #@24
    long-to-int v7, v0

    #@25
    aput v7, p2, v6

    #@27
    .line 838
    const/16 v6, 0x20

    #@29
    ushr-long/2addr v0, v6

    #@2a
    .line 839
    add-int/lit8 v6, p3, 0x1

    #@2c
    aget v6, p2, v6

    #@2e
    int-to-long v6, v6

    #@2f
    const-wide v8, 0xffffffffL

    #@34
    and-long/2addr v6, v8

    #@35
    add-long/2addr v6, v4

    #@36
    add-long/2addr v0, v6

    #@37
    .line 840
    add-int/lit8 v6, p3, 0x1

    #@39
    long-to-int v7, v0

    #@3a
    aput v7, p2, v6

    #@3c
    .line 841
    const/16 v6, 0x20

    #@3e
    ushr-long/2addr v0, v6

    #@3f
    .line 842
    add-int/lit8 v6, p3, 0x2

    #@41
    aget v6, p2, v6

    #@43
    int-to-long v6, v6

    #@44
    const-wide v8, 0xffffffffL

    #@49
    and-long/2addr v6, v8

    #@4a
    add-long/2addr v0, v6

    #@4b
    .line 843
    add-int/lit8 v6, p3, 0x2

    #@4d
    long-to-int v7, v0

    #@4e
    aput v7, p2, v6

    #@50
    .line 844
    const/16 v6, 0x20

    #@52
    ushr-long/2addr v0, v6

    #@53
    .line 845
    const-wide/16 v6, 0x0

    #@55
    cmp-long v6, v0, v6

    #@57
    if-nez v6, :cond_0

    #@59
    const/4 v6, 0x0

    #@5a
    :goto_0
    return v6

    #@5b
    :cond_0
    const/16 v6, 0x8

    #@5d
    const/4 v7, 0x3

    #@5e
    invoke-static {v6, p2, p3, v7}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    #@61
    move-result v6

    #@62
    goto :goto_0
.end method

.method public static mulAddTo([II[II[II)I
    .locals 32
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "zz"    # [I
    .param p5, "zzOff"    # I

    #@0
    .prologue
    .line 631
    add-int/lit8 v5, p3, 0x0

    #@2
    aget v5, p2, v5

    #@4
    int-to-long v0, v5

    #@5
    move-wide/from16 v26, v0

    #@7
    const-wide v28, 0xffffffffL

    #@c
    and-long v8, v26, v28

    #@e
    .line 632
    .local v8, "y_0":J
    add-int/lit8 v5, p3, 0x1

    #@10
    aget v5, p2, v5

    #@12
    int-to-long v0, v5

    #@13
    move-wide/from16 v26, v0

    #@15
    const-wide v28, 0xffffffffL

    #@1a
    and-long v10, v26, v28

    #@1c
    .line 633
    .local v10, "y_1":J
    add-int/lit8 v5, p3, 0x2

    #@1e
    aget v5, p2, v5

    #@20
    int-to-long v0, v5

    #@21
    move-wide/from16 v26, v0

    #@23
    const-wide v28, 0xffffffffL

    #@28
    and-long v12, v26, v28

    #@2a
    .line 634
    .local v12, "y_2":J
    add-int/lit8 v5, p3, 0x3

    #@2c
    aget v5, p2, v5

    #@2e
    int-to-long v0, v5

    #@2f
    move-wide/from16 v26, v0

    #@31
    const-wide v28, 0xffffffffL

    #@36
    and-long v14, v26, v28

    #@38
    .line 635
    .local v14, "y_3":J
    add-int/lit8 v5, p3, 0x4

    #@3a
    aget v5, p2, v5

    #@3c
    int-to-long v0, v5

    #@3d
    move-wide/from16 v26, v0

    #@3f
    const-wide v28, 0xffffffffL

    #@44
    and-long v16, v26, v28

    #@46
    .line 636
    .local v16, "y_4":J
    add-int/lit8 v5, p3, 0x5

    #@48
    aget v5, p2, v5

    #@4a
    int-to-long v0, v5

    #@4b
    move-wide/from16 v26, v0

    #@4d
    const-wide v28, 0xffffffffL

    #@52
    and-long v18, v26, v28

    #@54
    .line 637
    .local v18, "y_5":J
    add-int/lit8 v5, p3, 0x6

    #@56
    aget v5, p2, v5

    #@58
    int-to-long v0, v5

    #@59
    move-wide/from16 v26, v0

    #@5b
    const-wide v28, 0xffffffffL

    #@60
    and-long v20, v26, v28

    #@62
    .line 638
    .local v20, "y_6":J
    add-int/lit8 v5, p3, 0x7

    #@64
    aget v5, p2, v5

    #@66
    int-to-long v0, v5

    #@67
    move-wide/from16 v26, v0

    #@69
    const-wide v28, 0xffffffffL

    #@6e
    and-long v22, v26, v28

    #@70
    .line 640
    .local v22, "y_7":J
    const-wide/16 v24, 0x0

    #@72
    .line 641
    .local v24, "zc":J
    const/4 v4, 0x0

    #@73
    .local v4, "i":I
    :goto_0
    const/16 v5, 0x8

    #@75
    if-ge v4, v5, :cond_0

    #@77
    .line 643
    add-int v5, p1, v4

    #@79
    aget v5, p0, v5

    #@7b
    int-to-long v0, v5

    #@7c
    move-wide/from16 v26, v0

    #@7e
    const-wide v28, 0xffffffffL

    #@83
    and-long v6, v26, v28

    #@85
    .line 644
    .local v6, "x_i":J
    mul-long v26, v6, v8

    #@87
    add-int/lit8 v5, p5, 0x0

    #@89
    aget v5, p4, v5

    #@8b
    int-to-long v0, v5

    #@8c
    move-wide/from16 v28, v0

    #@8e
    const-wide v30, 0xffffffffL

    #@93
    and-long v28, v28, v30

    #@95
    add-long v26, v26, v28

    #@97
    .line 643
    const-wide/16 v28, 0x0

    #@99
    .line 644
    add-long v2, v28, v26

    #@9b
    .line 645
    .local v2, "c":J
    add-int/lit8 v5, p5, 0x0

    #@9d
    long-to-int v0, v2

    #@9e
    move/from16 v26, v0

    #@a0
    aput v26, p4, v5

    #@a2
    .line 646
    const/16 v5, 0x20

    #@a4
    ushr-long/2addr v2, v5

    #@a5
    .line 647
    mul-long v26, v6, v10

    #@a7
    add-int/lit8 v5, p5, 0x1

    #@a9
    aget v5, p4, v5

    #@ab
    int-to-long v0, v5

    #@ac
    move-wide/from16 v28, v0

    #@ae
    const-wide v30, 0xffffffffL

    #@b3
    and-long v28, v28, v30

    #@b5
    add-long v26, v26, v28

    #@b7
    add-long v2, v2, v26

    #@b9
    .line 648
    add-int/lit8 v5, p5, 0x1

    #@bb
    long-to-int v0, v2

    #@bc
    move/from16 v26, v0

    #@be
    aput v26, p4, v5

    #@c0
    .line 649
    const/16 v5, 0x20

    #@c2
    ushr-long/2addr v2, v5

    #@c3
    .line 650
    mul-long v26, v6, v12

    #@c5
    add-int/lit8 v5, p5, 0x2

    #@c7
    aget v5, p4, v5

    #@c9
    int-to-long v0, v5

    #@ca
    move-wide/from16 v28, v0

    #@cc
    const-wide v30, 0xffffffffL

    #@d1
    and-long v28, v28, v30

    #@d3
    add-long v26, v26, v28

    #@d5
    add-long v2, v2, v26

    #@d7
    .line 651
    add-int/lit8 v5, p5, 0x2

    #@d9
    long-to-int v0, v2

    #@da
    move/from16 v26, v0

    #@dc
    aput v26, p4, v5

    #@de
    .line 652
    const/16 v5, 0x20

    #@e0
    ushr-long/2addr v2, v5

    #@e1
    .line 653
    mul-long v26, v6, v14

    #@e3
    add-int/lit8 v5, p5, 0x3

    #@e5
    aget v5, p4, v5

    #@e7
    int-to-long v0, v5

    #@e8
    move-wide/from16 v28, v0

    #@ea
    const-wide v30, 0xffffffffL

    #@ef
    and-long v28, v28, v30

    #@f1
    add-long v26, v26, v28

    #@f3
    add-long v2, v2, v26

    #@f5
    .line 654
    add-int/lit8 v5, p5, 0x3

    #@f7
    long-to-int v0, v2

    #@f8
    move/from16 v26, v0

    #@fa
    aput v26, p4, v5

    #@fc
    .line 655
    const/16 v5, 0x20

    #@fe
    ushr-long/2addr v2, v5

    #@ff
    .line 656
    mul-long v26, v6, v16

    #@101
    add-int/lit8 v5, p5, 0x4

    #@103
    aget v5, p4, v5

    #@105
    int-to-long v0, v5

    #@106
    move-wide/from16 v28, v0

    #@108
    const-wide v30, 0xffffffffL

    #@10d
    and-long v28, v28, v30

    #@10f
    add-long v26, v26, v28

    #@111
    add-long v2, v2, v26

    #@113
    .line 657
    add-int/lit8 v5, p5, 0x4

    #@115
    long-to-int v0, v2

    #@116
    move/from16 v26, v0

    #@118
    aput v26, p4, v5

    #@11a
    .line 658
    const/16 v5, 0x20

    #@11c
    ushr-long/2addr v2, v5

    #@11d
    .line 659
    mul-long v26, v6, v18

    #@11f
    add-int/lit8 v5, p5, 0x5

    #@121
    aget v5, p4, v5

    #@123
    int-to-long v0, v5

    #@124
    move-wide/from16 v28, v0

    #@126
    const-wide v30, 0xffffffffL

    #@12b
    and-long v28, v28, v30

    #@12d
    add-long v26, v26, v28

    #@12f
    add-long v2, v2, v26

    #@131
    .line 660
    add-int/lit8 v5, p5, 0x5

    #@133
    long-to-int v0, v2

    #@134
    move/from16 v26, v0

    #@136
    aput v26, p4, v5

    #@138
    .line 661
    const/16 v5, 0x20

    #@13a
    ushr-long/2addr v2, v5

    #@13b
    .line 662
    mul-long v26, v6, v20

    #@13d
    add-int/lit8 v5, p5, 0x6

    #@13f
    aget v5, p4, v5

    #@141
    int-to-long v0, v5

    #@142
    move-wide/from16 v28, v0

    #@144
    const-wide v30, 0xffffffffL

    #@149
    and-long v28, v28, v30

    #@14b
    add-long v26, v26, v28

    #@14d
    add-long v2, v2, v26

    #@14f
    .line 663
    add-int/lit8 v5, p5, 0x6

    #@151
    long-to-int v0, v2

    #@152
    move/from16 v26, v0

    #@154
    aput v26, p4, v5

    #@156
    .line 664
    const/16 v5, 0x20

    #@158
    ushr-long/2addr v2, v5

    #@159
    .line 665
    mul-long v26, v6, v22

    #@15b
    add-int/lit8 v5, p5, 0x7

    #@15d
    aget v5, p4, v5

    #@15f
    int-to-long v0, v5

    #@160
    move-wide/from16 v28, v0

    #@162
    const-wide v30, 0xffffffffL

    #@167
    and-long v28, v28, v30

    #@169
    add-long v26, v26, v28

    #@16b
    add-long v2, v2, v26

    #@16d
    .line 666
    add-int/lit8 v5, p5, 0x7

    #@16f
    long-to-int v0, v2

    #@170
    move/from16 v26, v0

    #@172
    aput v26, p4, v5

    #@174
    .line 667
    const/16 v5, 0x20

    #@176
    ushr-long/2addr v2, v5

    #@177
    .line 668
    add-int/lit8 v5, p5, 0x8

    #@179
    aget v5, p4, v5

    #@17b
    int-to-long v0, v5

    #@17c
    move-wide/from16 v26, v0

    #@17e
    const-wide v28, 0xffffffffL

    #@183
    and-long v26, v26, v28

    #@185
    add-long v26, v26, v24

    #@187
    add-long v2, v2, v26

    #@189
    .line 669
    add-int/lit8 v5, p5, 0x8

    #@18b
    long-to-int v0, v2

    #@18c
    move/from16 v26, v0

    #@18e
    aput v26, p4, v5

    #@190
    .line 670
    const/16 v5, 0x20

    #@192
    ushr-long v24, v2, v5

    #@194
    .line 671
    add-int/lit8 p5, p5, 0x1

    #@196
    .line 641
    add-int/lit8 v4, v4, 0x1

    #@198
    goto/16 :goto_0

    #@19a
    .line 673
    .end local v2    # "c":J
    .end local v6    # "x_i":J
    :cond_0
    move-wide/from16 v0, v24

    #@19c
    long-to-int v5, v0

    #@19d
    return v5
.end method

.method public static mulAddTo([I[I[I)I
    .locals 32
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    #@0
    .prologue
    .line 585
    const/4 v5, 0x0

    #@1
    aget v5, p1, v5

    #@3
    int-to-long v0, v5

    #@4
    move-wide/from16 v26, v0

    #@6
    const-wide v28, 0xffffffffL

    #@b
    and-long v8, v26, v28

    #@d
    .line 586
    .local v8, "y_0":J
    const/4 v5, 0x1

    #@e
    aget v5, p1, v5

    #@10
    int-to-long v0, v5

    #@11
    move-wide/from16 v26, v0

    #@13
    const-wide v28, 0xffffffffL

    #@18
    and-long v10, v26, v28

    #@1a
    .line 587
    .local v10, "y_1":J
    const/4 v5, 0x2

    #@1b
    aget v5, p1, v5

    #@1d
    int-to-long v0, v5

    #@1e
    move-wide/from16 v26, v0

    #@20
    const-wide v28, 0xffffffffL

    #@25
    and-long v12, v26, v28

    #@27
    .line 588
    .local v12, "y_2":J
    const/4 v5, 0x3

    #@28
    aget v5, p1, v5

    #@2a
    int-to-long v0, v5

    #@2b
    move-wide/from16 v26, v0

    #@2d
    const-wide v28, 0xffffffffL

    #@32
    and-long v14, v26, v28

    #@34
    .line 589
    .local v14, "y_3":J
    const/4 v5, 0x4

    #@35
    aget v5, p1, v5

    #@37
    int-to-long v0, v5

    #@38
    move-wide/from16 v26, v0

    #@3a
    const-wide v28, 0xffffffffL

    #@3f
    and-long v16, v26, v28

    #@41
    .line 590
    .local v16, "y_4":J
    const/4 v5, 0x5

    #@42
    aget v5, p1, v5

    #@44
    int-to-long v0, v5

    #@45
    move-wide/from16 v26, v0

    #@47
    const-wide v28, 0xffffffffL

    #@4c
    and-long v18, v26, v28

    #@4e
    .line 591
    .local v18, "y_5":J
    const/4 v5, 0x6

    #@4f
    aget v5, p1, v5

    #@51
    int-to-long v0, v5

    #@52
    move-wide/from16 v26, v0

    #@54
    const-wide v28, 0xffffffffL

    #@59
    and-long v20, v26, v28

    #@5b
    .line 592
    .local v20, "y_6":J
    const/4 v5, 0x7

    #@5c
    aget v5, p1, v5

    #@5e
    int-to-long v0, v5

    #@5f
    move-wide/from16 v26, v0

    #@61
    const-wide v28, 0xffffffffL

    #@66
    and-long v22, v26, v28

    #@68
    .line 594
    .local v22, "y_7":J
    const-wide/16 v24, 0x0

    #@6a
    .line 595
    .local v24, "zc":J
    const/4 v4, 0x0

    #@6b
    .local v4, "i":I
    :goto_0
    const/16 v5, 0x8

    #@6d
    if-ge v4, v5, :cond_0

    #@6f
    .line 597
    aget v5, p0, v4

    #@71
    int-to-long v0, v5

    #@72
    move-wide/from16 v26, v0

    #@74
    const-wide v28, 0xffffffffL

    #@79
    and-long v6, v26, v28

    #@7b
    .line 598
    .local v6, "x_i":J
    mul-long v26, v6, v8

    #@7d
    add-int/lit8 v5, v4, 0x0

    #@7f
    aget v5, p2, v5

    #@81
    int-to-long v0, v5

    #@82
    move-wide/from16 v28, v0

    #@84
    const-wide v30, 0xffffffffL

    #@89
    and-long v28, v28, v30

    #@8b
    add-long v26, v26, v28

    #@8d
    .line 597
    const-wide/16 v28, 0x0

    #@8f
    .line 598
    add-long v2, v28, v26

    #@91
    .line 599
    .local v2, "c":J
    add-int/lit8 v5, v4, 0x0

    #@93
    long-to-int v0, v2

    #@94
    move/from16 v26, v0

    #@96
    aput v26, p2, v5

    #@98
    .line 600
    const/16 v5, 0x20

    #@9a
    ushr-long/2addr v2, v5

    #@9b
    .line 601
    mul-long v26, v6, v10

    #@9d
    add-int/lit8 v5, v4, 0x1

    #@9f
    aget v5, p2, v5

    #@a1
    int-to-long v0, v5

    #@a2
    move-wide/from16 v28, v0

    #@a4
    const-wide v30, 0xffffffffL

    #@a9
    and-long v28, v28, v30

    #@ab
    add-long v26, v26, v28

    #@ad
    add-long v2, v2, v26

    #@af
    .line 602
    add-int/lit8 v5, v4, 0x1

    #@b1
    long-to-int v0, v2

    #@b2
    move/from16 v26, v0

    #@b4
    aput v26, p2, v5

    #@b6
    .line 603
    const/16 v5, 0x20

    #@b8
    ushr-long/2addr v2, v5

    #@b9
    .line 604
    mul-long v26, v6, v12

    #@bb
    add-int/lit8 v5, v4, 0x2

    #@bd
    aget v5, p2, v5

    #@bf
    int-to-long v0, v5

    #@c0
    move-wide/from16 v28, v0

    #@c2
    const-wide v30, 0xffffffffL

    #@c7
    and-long v28, v28, v30

    #@c9
    add-long v26, v26, v28

    #@cb
    add-long v2, v2, v26

    #@cd
    .line 605
    add-int/lit8 v5, v4, 0x2

    #@cf
    long-to-int v0, v2

    #@d0
    move/from16 v26, v0

    #@d2
    aput v26, p2, v5

    #@d4
    .line 606
    const/16 v5, 0x20

    #@d6
    ushr-long/2addr v2, v5

    #@d7
    .line 607
    mul-long v26, v6, v14

    #@d9
    add-int/lit8 v5, v4, 0x3

    #@db
    aget v5, p2, v5

    #@dd
    int-to-long v0, v5

    #@de
    move-wide/from16 v28, v0

    #@e0
    const-wide v30, 0xffffffffL

    #@e5
    and-long v28, v28, v30

    #@e7
    add-long v26, v26, v28

    #@e9
    add-long v2, v2, v26

    #@eb
    .line 608
    add-int/lit8 v5, v4, 0x3

    #@ed
    long-to-int v0, v2

    #@ee
    move/from16 v26, v0

    #@f0
    aput v26, p2, v5

    #@f2
    .line 609
    const/16 v5, 0x20

    #@f4
    ushr-long/2addr v2, v5

    #@f5
    .line 610
    mul-long v26, v6, v16

    #@f7
    add-int/lit8 v5, v4, 0x4

    #@f9
    aget v5, p2, v5

    #@fb
    int-to-long v0, v5

    #@fc
    move-wide/from16 v28, v0

    #@fe
    const-wide v30, 0xffffffffL

    #@103
    and-long v28, v28, v30

    #@105
    add-long v26, v26, v28

    #@107
    add-long v2, v2, v26

    #@109
    .line 611
    add-int/lit8 v5, v4, 0x4

    #@10b
    long-to-int v0, v2

    #@10c
    move/from16 v26, v0

    #@10e
    aput v26, p2, v5

    #@110
    .line 612
    const/16 v5, 0x20

    #@112
    ushr-long/2addr v2, v5

    #@113
    .line 613
    mul-long v26, v6, v18

    #@115
    add-int/lit8 v5, v4, 0x5

    #@117
    aget v5, p2, v5

    #@119
    int-to-long v0, v5

    #@11a
    move-wide/from16 v28, v0

    #@11c
    const-wide v30, 0xffffffffL

    #@121
    and-long v28, v28, v30

    #@123
    add-long v26, v26, v28

    #@125
    add-long v2, v2, v26

    #@127
    .line 614
    add-int/lit8 v5, v4, 0x5

    #@129
    long-to-int v0, v2

    #@12a
    move/from16 v26, v0

    #@12c
    aput v26, p2, v5

    #@12e
    .line 615
    const/16 v5, 0x20

    #@130
    ushr-long/2addr v2, v5

    #@131
    .line 616
    mul-long v26, v6, v20

    #@133
    add-int/lit8 v5, v4, 0x6

    #@135
    aget v5, p2, v5

    #@137
    int-to-long v0, v5

    #@138
    move-wide/from16 v28, v0

    #@13a
    const-wide v30, 0xffffffffL

    #@13f
    and-long v28, v28, v30

    #@141
    add-long v26, v26, v28

    #@143
    add-long v2, v2, v26

    #@145
    .line 617
    add-int/lit8 v5, v4, 0x6

    #@147
    long-to-int v0, v2

    #@148
    move/from16 v26, v0

    #@14a
    aput v26, p2, v5

    #@14c
    .line 618
    const/16 v5, 0x20

    #@14e
    ushr-long/2addr v2, v5

    #@14f
    .line 619
    mul-long v26, v6, v22

    #@151
    add-int/lit8 v5, v4, 0x7

    #@153
    aget v5, p2, v5

    #@155
    int-to-long v0, v5

    #@156
    move-wide/from16 v28, v0

    #@158
    const-wide v30, 0xffffffffL

    #@15d
    and-long v28, v28, v30

    #@15f
    add-long v26, v26, v28

    #@161
    add-long v2, v2, v26

    #@163
    .line 620
    add-int/lit8 v5, v4, 0x7

    #@165
    long-to-int v0, v2

    #@166
    move/from16 v26, v0

    #@168
    aput v26, p2, v5

    #@16a
    .line 621
    const/16 v5, 0x20

    #@16c
    ushr-long/2addr v2, v5

    #@16d
    .line 622
    add-int/lit8 v5, v4, 0x8

    #@16f
    aget v5, p2, v5

    #@171
    int-to-long v0, v5

    #@172
    move-wide/from16 v26, v0

    #@174
    const-wide v28, 0xffffffffL

    #@179
    and-long v26, v26, v28

    #@17b
    add-long v26, v26, v24

    #@17d
    add-long v2, v2, v26

    #@17f
    .line 623
    add-int/lit8 v5, v4, 0x8

    #@181
    long-to-int v0, v2

    #@182
    move/from16 v26, v0

    #@184
    aput v26, p2, v5

    #@186
    .line 624
    const/16 v5, 0x20

    #@188
    ushr-long v24, v2, v5

    #@18a
    .line 595
    add-int/lit8 v4, v4, 0x1

    #@18c
    goto/16 :goto_0

    #@18e
    .line 626
    .end local v2    # "c":J
    .end local v6    # "x_i":J
    :cond_0
    move-wide/from16 v0, v24

    #@190
    long-to-int v5, v0

    #@191
    return v5
.end method

.method public static mulByWord(I[I)I
    .locals 14
    .param p0, "x"    # I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/4 v13, 0x2

    #@1
    const/4 v12, 0x1

    #@2
    const/4 v11, 0x0

    #@3
    const/16 v10, 0x20

    #@5
    const-wide v8, 0xffffffffL

    #@a
    .line 719
    int-to-long v4, p0

    #@b
    and-long v2, v4, v8

    #@d
    .line 720
    .local v2, "xVal":J
    aget v4, p1, v11

    #@f
    int-to-long v4, v4

    #@10
    and-long/2addr v4, v8

    #@11
    mul-long/2addr v4, v2

    #@12
    .line 719
    const-wide/16 v6, 0x0

    #@14
    .line 720
    add-long v0, v6, v4

    #@16
    .line 721
    .local v0, "c":J
    long-to-int v4, v0

    #@17
    aput v4, p1, v11

    #@19
    .line 722
    ushr-long/2addr v0, v10

    #@1a
    .line 723
    aget v4, p1, v12

    #@1c
    int-to-long v4, v4

    #@1d
    and-long/2addr v4, v8

    #@1e
    mul-long/2addr v4, v2

    #@1f
    add-long/2addr v0, v4

    #@20
    .line 724
    long-to-int v4, v0

    #@21
    aput v4, p1, v12

    #@23
    .line 725
    ushr-long/2addr v0, v10

    #@24
    .line 726
    aget v4, p1, v13

    #@26
    int-to-long v4, v4

    #@27
    and-long/2addr v4, v8

    #@28
    mul-long/2addr v4, v2

    #@29
    add-long/2addr v0, v4

    #@2a
    .line 727
    long-to-int v4, v0

    #@2b
    aput v4, p1, v13

    #@2d
    .line 728
    ushr-long/2addr v0, v10

    #@2e
    .line 729
    const/4 v4, 0x3

    #@2f
    aget v4, p1, v4

    #@31
    int-to-long v4, v4

    #@32
    and-long/2addr v4, v8

    #@33
    mul-long/2addr v4, v2

    #@34
    add-long/2addr v0, v4

    #@35
    .line 730
    long-to-int v4, v0

    #@36
    const/4 v5, 0x3

    #@37
    aput v4, p1, v5

    #@39
    .line 731
    ushr-long/2addr v0, v10

    #@3a
    .line 732
    const/4 v4, 0x4

    #@3b
    aget v4, p1, v4

    #@3d
    int-to-long v4, v4

    #@3e
    and-long/2addr v4, v8

    #@3f
    mul-long/2addr v4, v2

    #@40
    add-long/2addr v0, v4

    #@41
    .line 733
    long-to-int v4, v0

    #@42
    const/4 v5, 0x4

    #@43
    aput v4, p1, v5

    #@45
    .line 734
    ushr-long/2addr v0, v10

    #@46
    .line 735
    const/4 v4, 0x5

    #@47
    aget v4, p1, v4

    #@49
    int-to-long v4, v4

    #@4a
    and-long/2addr v4, v8

    #@4b
    mul-long/2addr v4, v2

    #@4c
    add-long/2addr v0, v4

    #@4d
    .line 736
    long-to-int v4, v0

    #@4e
    const/4 v5, 0x5

    #@4f
    aput v4, p1, v5

    #@51
    .line 737
    ushr-long/2addr v0, v10

    #@52
    .line 738
    const/4 v4, 0x6

    #@53
    aget v4, p1, v4

    #@55
    int-to-long v4, v4

    #@56
    and-long/2addr v4, v8

    #@57
    mul-long/2addr v4, v2

    #@58
    add-long/2addr v0, v4

    #@59
    .line 739
    long-to-int v4, v0

    #@5a
    const/4 v5, 0x6

    #@5b
    aput v4, p1, v5

    #@5d
    .line 740
    ushr-long/2addr v0, v10

    #@5e
    .line 741
    const/4 v4, 0x7

    #@5f
    aget v4, p1, v4

    #@61
    int-to-long v4, v4

    #@62
    and-long/2addr v4, v8

    #@63
    mul-long/2addr v4, v2

    #@64
    add-long/2addr v0, v4

    #@65
    .line 742
    long-to-int v4, v0

    #@66
    const/4 v5, 0x7

    #@67
    aput v4, p1, v5

    #@69
    .line 743
    ushr-long/2addr v0, v10

    #@6a
    .line 744
    long-to-int v4, v0

    #@6b
    return v4
.end method

.method public static mulByWordAddTo(I[I[I)I
    .locals 10
    .param p0, "x"    # I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    #@0
    .prologue
    .line 749
    int-to-long v4, p0

    #@1
    const-wide v6, 0xffffffffL

    #@6
    and-long v2, v4, v6

    #@8
    .line 750
    .local v2, "xVal":J
    const/4 v4, 0x0

    #@9
    aget v4, p2, v4

    #@b
    int-to-long v4, v4

    #@c
    const-wide v6, 0xffffffffL

    #@11
    and-long/2addr v4, v6

    #@12
    mul-long/2addr v4, v2

    #@13
    const/4 v6, 0x0

    #@14
    aget v6, p1, v6

    #@16
    int-to-long v6, v6

    #@17
    const-wide v8, 0xffffffffL

    #@1c
    and-long/2addr v6, v8

    #@1d
    add-long/2addr v4, v6

    #@1e
    .line 749
    const-wide/16 v6, 0x0

    #@20
    .line 750
    add-long v0, v6, v4

    #@22
    .line 751
    .local v0, "c":J
    long-to-int v4, v0

    #@23
    const/4 v5, 0x0

    #@24
    aput v4, p2, v5

    #@26
    .line 752
    const/16 v4, 0x20

    #@28
    ushr-long/2addr v0, v4

    #@29
    .line 753
    const/4 v4, 0x1

    #@2a
    aget v4, p2, v4

    #@2c
    int-to-long v4, v4

    #@2d
    const-wide v6, 0xffffffffL

    #@32
    and-long/2addr v4, v6

    #@33
    mul-long/2addr v4, v2

    #@34
    const/4 v6, 0x1

    #@35
    aget v6, p1, v6

    #@37
    int-to-long v6, v6

    #@38
    const-wide v8, 0xffffffffL

    #@3d
    and-long/2addr v6, v8

    #@3e
    add-long/2addr v4, v6

    #@3f
    add-long/2addr v0, v4

    #@40
    .line 754
    long-to-int v4, v0

    #@41
    const/4 v5, 0x1

    #@42
    aput v4, p2, v5

    #@44
    .line 755
    const/16 v4, 0x20

    #@46
    ushr-long/2addr v0, v4

    #@47
    .line 756
    const/4 v4, 0x2

    #@48
    aget v4, p2, v4

    #@4a
    int-to-long v4, v4

    #@4b
    const-wide v6, 0xffffffffL

    #@50
    and-long/2addr v4, v6

    #@51
    mul-long/2addr v4, v2

    #@52
    const/4 v6, 0x2

    #@53
    aget v6, p1, v6

    #@55
    int-to-long v6, v6

    #@56
    const-wide v8, 0xffffffffL

    #@5b
    and-long/2addr v6, v8

    #@5c
    add-long/2addr v4, v6

    #@5d
    add-long/2addr v0, v4

    #@5e
    .line 757
    long-to-int v4, v0

    #@5f
    const/4 v5, 0x2

    #@60
    aput v4, p2, v5

    #@62
    .line 758
    const/16 v4, 0x20

    #@64
    ushr-long/2addr v0, v4

    #@65
    .line 759
    const/4 v4, 0x3

    #@66
    aget v4, p2, v4

    #@68
    int-to-long v4, v4

    #@69
    const-wide v6, 0xffffffffL

    #@6e
    and-long/2addr v4, v6

    #@6f
    mul-long/2addr v4, v2

    #@70
    const/4 v6, 0x3

    #@71
    aget v6, p1, v6

    #@73
    int-to-long v6, v6

    #@74
    const-wide v8, 0xffffffffL

    #@79
    and-long/2addr v6, v8

    #@7a
    add-long/2addr v4, v6

    #@7b
    add-long/2addr v0, v4

    #@7c
    .line 760
    long-to-int v4, v0

    #@7d
    const/4 v5, 0x3

    #@7e
    aput v4, p2, v5

    #@80
    .line 761
    const/16 v4, 0x20

    #@82
    ushr-long/2addr v0, v4

    #@83
    .line 762
    const/4 v4, 0x4

    #@84
    aget v4, p2, v4

    #@86
    int-to-long v4, v4

    #@87
    const-wide v6, 0xffffffffL

    #@8c
    and-long/2addr v4, v6

    #@8d
    mul-long/2addr v4, v2

    #@8e
    const/4 v6, 0x4

    #@8f
    aget v6, p1, v6

    #@91
    int-to-long v6, v6

    #@92
    const-wide v8, 0xffffffffL

    #@97
    and-long/2addr v6, v8

    #@98
    add-long/2addr v4, v6

    #@99
    add-long/2addr v0, v4

    #@9a
    .line 763
    long-to-int v4, v0

    #@9b
    const/4 v5, 0x4

    #@9c
    aput v4, p2, v5

    #@9e
    .line 764
    const/16 v4, 0x20

    #@a0
    ushr-long/2addr v0, v4

    #@a1
    .line 765
    const/4 v4, 0x5

    #@a2
    aget v4, p2, v4

    #@a4
    int-to-long v4, v4

    #@a5
    const-wide v6, 0xffffffffL

    #@aa
    and-long/2addr v4, v6

    #@ab
    mul-long/2addr v4, v2

    #@ac
    const/4 v6, 0x5

    #@ad
    aget v6, p1, v6

    #@af
    int-to-long v6, v6

    #@b0
    const-wide v8, 0xffffffffL

    #@b5
    and-long/2addr v6, v8

    #@b6
    add-long/2addr v4, v6

    #@b7
    add-long/2addr v0, v4

    #@b8
    .line 766
    long-to-int v4, v0

    #@b9
    const/4 v5, 0x5

    #@ba
    aput v4, p2, v5

    #@bc
    .line 767
    const/16 v4, 0x20

    #@be
    ushr-long/2addr v0, v4

    #@bf
    .line 768
    const/4 v4, 0x6

    #@c0
    aget v4, p2, v4

    #@c2
    int-to-long v4, v4

    #@c3
    const-wide v6, 0xffffffffL

    #@c8
    and-long/2addr v4, v6

    #@c9
    mul-long/2addr v4, v2

    #@ca
    const/4 v6, 0x6

    #@cb
    aget v6, p1, v6

    #@cd
    int-to-long v6, v6

    #@ce
    const-wide v8, 0xffffffffL

    #@d3
    and-long/2addr v6, v8

    #@d4
    add-long/2addr v4, v6

    #@d5
    add-long/2addr v0, v4

    #@d6
    .line 769
    long-to-int v4, v0

    #@d7
    const/4 v5, 0x6

    #@d8
    aput v4, p2, v5

    #@da
    .line 770
    const/16 v4, 0x20

    #@dc
    ushr-long/2addr v0, v4

    #@dd
    .line 771
    const/4 v4, 0x7

    #@de
    aget v4, p2, v4

    #@e0
    int-to-long v4, v4

    #@e1
    const-wide v6, 0xffffffffL

    #@e6
    and-long/2addr v4, v6

    #@e7
    mul-long/2addr v4, v2

    #@e8
    const/4 v6, 0x7

    #@e9
    aget v6, p1, v6

    #@eb
    int-to-long v6, v6

    #@ec
    const-wide v8, 0xffffffffL

    #@f1
    and-long/2addr v6, v8

    #@f2
    add-long/2addr v4, v6

    #@f3
    add-long/2addr v0, v4

    #@f4
    .line 772
    long-to-int v4, v0

    #@f5
    const/4 v5, 0x7

    #@f6
    aput v4, p2, v5

    #@f8
    .line 773
    const/16 v4, 0x20

    #@fa
    ushr-long/2addr v0, v4

    #@fb
    .line 774
    long-to-int v4, v0

    #@fc
    return v4
.end method

.method public static mulWord(I[I[II)I
    .locals 10
    .param p0, "x"    # I
    .param p1, "y"    # [I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    #@0
    .prologue
    const-wide v8, 0xffffffffL

    #@5
    .line 866
    const-wide/16 v0, 0x0

    #@7
    .local v0, "c":J
    int-to-long v6, p0

    #@8
    and-long v4, v6, v8

    #@a
    .line 867
    .local v4, "xVal":J
    const/4 v2, 0x0

    #@b
    .line 870
    .local v2, "i":I
    :cond_0
    aget v3, p1, v2

    #@d
    int-to-long v6, v3

    #@e
    and-long/2addr v6, v8

    #@f
    mul-long/2addr v6, v4

    #@10
    add-long/2addr v0, v6

    #@11
    .line 871
    add-int v3, p3, v2

    #@13
    long-to-int v6, v0

    #@14
    aput v6, p2, v3

    #@16
    .line 872
    const/16 v3, 0x20

    #@18
    ushr-long/2addr v0, v3

    #@19
    .line 874
    add-int/lit8 v2, v2, 0x1

    #@1b
    const/16 v3, 0x8

    #@1d
    if-lt v2, v3, :cond_0

    #@1f
    .line 875
    long-to-int v3, v0

    #@20
    return v3
.end method

.method public static mulWordAddTo(I[II[II)I
    .locals 11
    .param p0, "x"    # I
    .param p1, "y"    # [I
    .param p2, "yOff"    # I
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    #@0
    .prologue
    const/16 v10, 0x20

    #@2
    const-wide v8, 0xffffffffL

    #@7
    .line 779
    int-to-long v4, p0

    #@8
    and-long v2, v4, v8

    #@a
    .line 780
    .local v2, "xVal":J
    add-int/lit8 v4, p2, 0x0

    #@c
    aget v4, p1, v4

    #@e
    int-to-long v4, v4

    #@f
    and-long/2addr v4, v8

    #@10
    mul-long/2addr v4, v2

    #@11
    add-int/lit8 v6, p4, 0x0

    #@13
    aget v6, p3, v6

    #@15
    int-to-long v6, v6

    #@16
    and-long/2addr v6, v8

    #@17
    add-long/2addr v4, v6

    #@18
    .line 779
    const-wide/16 v6, 0x0

    #@1a
    .line 780
    add-long v0, v6, v4

    #@1c
    .line 781
    .local v0, "c":J
    add-int/lit8 v4, p4, 0x0

    #@1e
    long-to-int v5, v0

    #@1f
    aput v5, p3, v4

    #@21
    .line 782
    ushr-long/2addr v0, v10

    #@22
    .line 783
    add-int/lit8 v4, p2, 0x1

    #@24
    aget v4, p1, v4

    #@26
    int-to-long v4, v4

    #@27
    and-long/2addr v4, v8

    #@28
    mul-long/2addr v4, v2

    #@29
    add-int/lit8 v6, p4, 0x1

    #@2b
    aget v6, p3, v6

    #@2d
    int-to-long v6, v6

    #@2e
    and-long/2addr v6, v8

    #@2f
    add-long/2addr v4, v6

    #@30
    add-long/2addr v0, v4

    #@31
    .line 784
    add-int/lit8 v4, p4, 0x1

    #@33
    long-to-int v5, v0

    #@34
    aput v5, p3, v4

    #@36
    .line 785
    ushr-long/2addr v0, v10

    #@37
    .line 786
    add-int/lit8 v4, p2, 0x2

    #@39
    aget v4, p1, v4

    #@3b
    int-to-long v4, v4

    #@3c
    and-long/2addr v4, v8

    #@3d
    mul-long/2addr v4, v2

    #@3e
    add-int/lit8 v6, p4, 0x2

    #@40
    aget v6, p3, v6

    #@42
    int-to-long v6, v6

    #@43
    and-long/2addr v6, v8

    #@44
    add-long/2addr v4, v6

    #@45
    add-long/2addr v0, v4

    #@46
    .line 787
    add-int/lit8 v4, p4, 0x2

    #@48
    long-to-int v5, v0

    #@49
    aput v5, p3, v4

    #@4b
    .line 788
    ushr-long/2addr v0, v10

    #@4c
    .line 789
    add-int/lit8 v4, p2, 0x3

    #@4e
    aget v4, p1, v4

    #@50
    int-to-long v4, v4

    #@51
    and-long/2addr v4, v8

    #@52
    mul-long/2addr v4, v2

    #@53
    add-int/lit8 v6, p4, 0x3

    #@55
    aget v6, p3, v6

    #@57
    int-to-long v6, v6

    #@58
    and-long/2addr v6, v8

    #@59
    add-long/2addr v4, v6

    #@5a
    add-long/2addr v0, v4

    #@5b
    .line 790
    add-int/lit8 v4, p4, 0x3

    #@5d
    long-to-int v5, v0

    #@5e
    aput v5, p3, v4

    #@60
    .line 791
    ushr-long/2addr v0, v10

    #@61
    .line 792
    add-int/lit8 v4, p2, 0x4

    #@63
    aget v4, p1, v4

    #@65
    int-to-long v4, v4

    #@66
    and-long/2addr v4, v8

    #@67
    mul-long/2addr v4, v2

    #@68
    add-int/lit8 v6, p4, 0x4

    #@6a
    aget v6, p3, v6

    #@6c
    int-to-long v6, v6

    #@6d
    and-long/2addr v6, v8

    #@6e
    add-long/2addr v4, v6

    #@6f
    add-long/2addr v0, v4

    #@70
    .line 793
    add-int/lit8 v4, p4, 0x4

    #@72
    long-to-int v5, v0

    #@73
    aput v5, p3, v4

    #@75
    .line 794
    ushr-long/2addr v0, v10

    #@76
    .line 795
    add-int/lit8 v4, p2, 0x5

    #@78
    aget v4, p1, v4

    #@7a
    int-to-long v4, v4

    #@7b
    and-long/2addr v4, v8

    #@7c
    mul-long/2addr v4, v2

    #@7d
    add-int/lit8 v6, p4, 0x5

    #@7f
    aget v6, p3, v6

    #@81
    int-to-long v6, v6

    #@82
    and-long/2addr v6, v8

    #@83
    add-long/2addr v4, v6

    #@84
    add-long/2addr v0, v4

    #@85
    .line 796
    add-int/lit8 v4, p4, 0x5

    #@87
    long-to-int v5, v0

    #@88
    aput v5, p3, v4

    #@8a
    .line 797
    ushr-long/2addr v0, v10

    #@8b
    .line 798
    add-int/lit8 v4, p2, 0x6

    #@8d
    aget v4, p1, v4

    #@8f
    int-to-long v4, v4

    #@90
    and-long/2addr v4, v8

    #@91
    mul-long/2addr v4, v2

    #@92
    add-int/lit8 v6, p4, 0x6

    #@94
    aget v6, p3, v6

    #@96
    int-to-long v6, v6

    #@97
    and-long/2addr v6, v8

    #@98
    add-long/2addr v4, v6

    #@99
    add-long/2addr v0, v4

    #@9a
    .line 799
    add-int/lit8 v4, p4, 0x6

    #@9c
    long-to-int v5, v0

    #@9d
    aput v5, p3, v4

    #@9f
    .line 800
    ushr-long/2addr v0, v10

    #@a0
    .line 801
    add-int/lit8 v4, p2, 0x7

    #@a2
    aget v4, p1, v4

    #@a4
    int-to-long v4, v4

    #@a5
    and-long/2addr v4, v8

    #@a6
    mul-long/2addr v4, v2

    #@a7
    add-int/lit8 v6, p4, 0x7

    #@a9
    aget v6, p3, v6

    #@ab
    int-to-long v6, v6

    #@ac
    and-long/2addr v6, v8

    #@ad
    add-long/2addr v4, v6

    #@ae
    add-long/2addr v0, v4

    #@af
    .line 802
    add-int/lit8 v4, p4, 0x7

    #@b1
    long-to-int v5, v0

    #@b2
    aput v5, p3, v4

    #@b4
    .line 803
    ushr-long/2addr v0, v10

    #@b5
    .line 804
    long-to-int v4, v0

    #@b6
    return v4
.end method

.method public static mulWordDwordAdd(IJ[II)I
    .locals 11
    .param p0, "x"    # I
    .param p1, "y"    # J
    .param p3, "z"    # [I
    .param p4, "zOff"    # I

    #@0
    .prologue
    .line 851
    int-to-long v4, p0

    #@1
    const-wide v6, 0xffffffffL

    #@6
    and-long v2, v4, v6

    #@8
    .line 852
    .local v2, "xVal":J
    const-wide v4, 0xffffffffL

    #@d
    and-long/2addr v4, p1

    #@e
    mul-long/2addr v4, v2

    #@f
    add-int/lit8 v6, p4, 0x0

    #@11
    aget v6, p3, v6

    #@13
    int-to-long v6, v6

    #@14
    const-wide v8, 0xffffffffL

    #@19
    and-long/2addr v6, v8

    #@1a
    add-long/2addr v4, v6

    #@1b
    .line 851
    const-wide/16 v6, 0x0

    #@1d
    .line 852
    add-long v0, v6, v4

    #@1f
    .line 853
    .local v0, "c":J
    add-int/lit8 v4, p4, 0x0

    #@21
    long-to-int v5, v0

    #@22
    aput v5, p3, v4

    #@24
    .line 854
    const/16 v4, 0x20

    #@26
    ushr-long/2addr v0, v4

    #@27
    .line 855
    const/16 v4, 0x20

    #@29
    ushr-long v4, p1, v4

    #@2b
    mul-long/2addr v4, v2

    #@2c
    add-int/lit8 v6, p4, 0x1

    #@2e
    aget v6, p3, v6

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
    .line 856
    add-int/lit8 v4, p4, 0x1

    #@3b
    long-to-int v5, v0

    #@3c
    aput v5, p3, v4

    #@3e
    .line 857
    const/16 v4, 0x20

    #@40
    ushr-long/2addr v0, v4

    #@41
    .line 858
    add-int/lit8 v4, p4, 0x2

    #@43
    aget v4, p3, v4

    #@45
    int-to-long v4, v4

    #@46
    const-wide v6, 0xffffffffL

    #@4b
    and-long/2addr v4, v6

    #@4c
    add-long/2addr v0, v4

    #@4d
    .line 859
    add-int/lit8 v4, p4, 0x2

    #@4f
    long-to-int v5, v0

    #@50
    aput v5, p3, v4

    #@52
    .line 860
    const/16 v4, 0x20

    #@54
    ushr-long/2addr v0, v4

    #@55
    .line 861
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
    const/16 v4, 0x8

    #@5f
    const/4 v5, 0x3

    #@60
    invoke-static {v4, p3, p4, v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    #@63
    move-result v4

    #@64
    goto :goto_0
.end method

.method public static square([II[II)V
    .locals 60
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "zz"    # [I
    .param p3, "zzOff"    # I

    #@0
    .prologue
    .line 1044
    add-int/lit8 v9, p1, 0x0

    #@2
    aget v9, p0, v9

    #@4
    int-to-long v0, v9

    #@5
    move-wide/from16 v56, v0

    #@7
    const-wide v58, 0xffffffffL

    #@c
    and-long v12, v56, v58

    #@e
    .line 1047
    .local v12, "x_0":J
    const/4 v2, 0x0

    #@f
    .line 1049
    .local v2, "c":I
    const/4 v3, 0x7

    #@10
    .local v3, "i":I
    const/16 v5, 0x10

    #@12
    .line 1052
    .local v5, "j":I
    :goto_0
    add-int/lit8 v4, v3, -0x1

    #@14
    .end local v3    # "i":I
    .local v4, "i":I
    add-int v9, p1, v3

    #@16
    aget v9, p0, v9

    #@18
    int-to-long v0, v9

    #@19
    move-wide/from16 v56, v0

    #@1b
    const-wide v58, 0xffffffffL

    #@20
    and-long v10, v56, v58

    #@22
    .line 1053
    .local v10, "xVal":J
    mul-long v6, v10, v10

    #@24
    .line 1054
    .local v6, "p":J
    add-int/lit8 v5, v5, -0x1

    #@26
    add-int v9, p3, v5

    #@28
    shl-int/lit8 v56, v2, 0x1f

    #@2a
    const/16 v57, 0x21

    #@2c
    ushr-long v58, v6, v57

    #@2e
    move-wide/from16 v0, v58

    #@30
    long-to-int v0, v0

    #@31
    move/from16 v57, v0

    #@33
    or-int v56, v56, v57

    #@35
    aput v56, p2, v9

    #@37
    .line 1055
    add-int/lit8 v5, v5, -0x1

    #@39
    add-int v9, p3, v5

    #@3b
    const/16 v56, 0x1

    #@3d
    ushr-long v56, v6, v56

    #@3f
    move-wide/from16 v0, v56

    #@41
    long-to-int v0, v0

    #@42
    move/from16 v56, v0

    #@44
    aput v56, p2, v9

    #@46
    .line 1056
    long-to-int v2, v6

    #@47
    .line 1058
    if-lez v4, :cond_0

    #@49
    move v3, v4

    #@4a
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    #@4b
    .line 1061
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_0
    mul-long v6, v12, v12

    #@4d
    .line 1062
    shl-int/lit8 v9, v2, 0x1f

    #@4f
    int-to-long v0, v9

    #@50
    move-wide/from16 v56, v0

    #@52
    const-wide v58, 0xffffffffL

    #@57
    and-long v56, v56, v58

    #@59
    const/16 v9, 0x21

    #@5b
    ushr-long v58, v6, v9

    #@5d
    or-long v28, v56, v58

    #@5f
    .line 1063
    .local v28, "zz_1":J
    add-int/lit8 v9, p3, 0x0

    #@61
    long-to-int v0, v6

    #@62
    move/from16 v56, v0

    #@64
    aput v56, p2, v9

    #@66
    .line 1064
    const/16 v9, 0x20

    #@68
    ushr-long v56, v6, v9

    #@6a
    move-wide/from16 v0, v56

    #@6c
    long-to-int v9, v0

    #@6d
    and-int/lit8 v2, v9, 0x1

    #@6f
    .line 1068
    add-int/lit8 v9, p1, 0x1

    #@71
    aget v9, p0, v9

    #@73
    int-to-long v0, v9

    #@74
    move-wide/from16 v56, v0

    #@76
    const-wide v58, 0xffffffffL

    #@7b
    and-long v14, v56, v58

    #@7d
    .line 1069
    .local v14, "x_1":J
    add-int/lit8 v9, p3, 0x2

    #@7f
    aget v9, p2, v9

    #@81
    int-to-long v0, v9

    #@82
    move-wide/from16 v56, v0

    #@84
    const-wide v58, 0xffffffffL

    #@89
    and-long v40, v56, v58

    #@8b
    .line 1072
    .local v40, "zz_2":J
    mul-long v56, v14, v12

    #@8d
    add-long v28, v28, v56

    #@8f
    .line 1073
    move-wide/from16 v0, v28

    #@91
    long-to-int v8, v0

    #@92
    .line 1074
    .local v8, "w":I
    add-int/lit8 v9, p3, 0x1

    #@94
    shl-int/lit8 v56, v8, 0x1

    #@96
    or-int v56, v56, v2

    #@98
    aput v56, p2, v9

    #@9a
    .line 1075
    ushr-int/lit8 v2, v8, 0x1f

    #@9c
    .line 1076
    const/16 v9, 0x20

    #@9e
    ushr-long v56, v28, v9

    #@a0
    add-long v40, v40, v56

    #@a2
    .line 1079
    add-int/lit8 v9, p1, 0x2

    #@a4
    aget v9, p0, v9

    #@a6
    int-to-long v0, v9

    #@a7
    move-wide/from16 v56, v0

    #@a9
    const-wide v58, 0xffffffffL

    #@ae
    and-long v16, v56, v58

    #@b0
    .line 1080
    .local v16, "x_2":J
    add-int/lit8 v9, p3, 0x3

    #@b2
    aget v9, p2, v9

    #@b4
    int-to-long v0, v9

    #@b5
    move-wide/from16 v56, v0

    #@b7
    const-wide v58, 0xffffffffL

    #@bc
    and-long v42, v56, v58

    #@be
    .line 1081
    .local v42, "zz_3":J
    add-int/lit8 v9, p3, 0x4

    #@c0
    aget v9, p2, v9

    #@c2
    int-to-long v0, v9

    #@c3
    move-wide/from16 v56, v0

    #@c5
    const-wide v58, 0xffffffffL

    #@ca
    and-long v44, v56, v58

    #@cc
    .line 1083
    .local v44, "zz_4":J
    mul-long v56, v16, v12

    #@ce
    add-long v40, v40, v56

    #@d0
    .line 1084
    move-wide/from16 v0, v40

    #@d2
    long-to-int v8, v0

    #@d3
    .line 1085
    add-int/lit8 v9, p3, 0x2

    #@d5
    shl-int/lit8 v56, v8, 0x1

    #@d7
    or-int v56, v56, v2

    #@d9
    aput v56, p2, v9

    #@db
    .line 1086
    ushr-int/lit8 v2, v8, 0x1f

    #@dd
    .line 1087
    const/16 v9, 0x20

    #@df
    ushr-long v56, v40, v9

    #@e1
    mul-long v58, v16, v14

    #@e3
    add-long v56, v56, v58

    #@e5
    add-long v42, v42, v56

    #@e7
    .line 1088
    const/16 v9, 0x20

    #@e9
    ushr-long v56, v42, v9

    #@eb
    add-long v44, v44, v56

    #@ed
    .line 1089
    const-wide v56, 0xffffffffL

    #@f2
    and-long v42, v42, v56

    #@f4
    .line 1092
    add-int/lit8 v9, p1, 0x3

    #@f6
    aget v9, p0, v9

    #@f8
    int-to-long v0, v9

    #@f9
    move-wide/from16 v56, v0

    #@fb
    const-wide v58, 0xffffffffL

    #@100
    and-long v18, v56, v58

    #@102
    .line 1093
    .local v18, "x_3":J
    add-int/lit8 v9, p3, 0x5

    #@104
    aget v9, p2, v9

    #@106
    int-to-long v0, v9

    #@107
    move-wide/from16 v56, v0

    #@109
    const-wide v58, 0xffffffffL

    #@10e
    and-long v46, v56, v58

    #@110
    .line 1094
    .local v46, "zz_5":J
    add-int/lit8 v9, p3, 0x6

    #@112
    aget v9, p2, v9

    #@114
    int-to-long v0, v9

    #@115
    move-wide/from16 v56, v0

    #@117
    const-wide v58, 0xffffffffL

    #@11c
    and-long v48, v56, v58

    #@11e
    .line 1096
    .local v48, "zz_6":J
    mul-long v56, v18, v12

    #@120
    add-long v42, v42, v56

    #@122
    .line 1097
    move-wide/from16 v0, v42

    #@124
    long-to-int v8, v0

    #@125
    .line 1098
    add-int/lit8 v9, p3, 0x3

    #@127
    shl-int/lit8 v56, v8, 0x1

    #@129
    or-int v56, v56, v2

    #@12b
    aput v56, p2, v9

    #@12d
    .line 1099
    ushr-int/lit8 v2, v8, 0x1f

    #@12f
    .line 1100
    const/16 v9, 0x20

    #@131
    ushr-long v56, v42, v9

    #@133
    mul-long v58, v18, v14

    #@135
    add-long v56, v56, v58

    #@137
    add-long v44, v44, v56

    #@139
    .line 1101
    const/16 v9, 0x20

    #@13b
    ushr-long v56, v44, v9

    #@13d
    mul-long v58, v18, v16

    #@13f
    add-long v56, v56, v58

    #@141
    add-long v46, v46, v56

    #@143
    .line 1102
    const-wide v56, 0xffffffffL

    #@148
    and-long v44, v44, v56

    #@14a
    .line 1103
    const/16 v9, 0x20

    #@14c
    ushr-long v56, v46, v9

    #@14e
    add-long v48, v48, v56

    #@150
    .line 1104
    const-wide v56, 0xffffffffL

    #@155
    and-long v46, v46, v56

    #@157
    .line 1107
    add-int/lit8 v9, p1, 0x4

    #@159
    aget v9, p0, v9

    #@15b
    int-to-long v0, v9

    #@15c
    move-wide/from16 v56, v0

    #@15e
    const-wide v58, 0xffffffffL

    #@163
    and-long v20, v56, v58

    #@165
    .line 1108
    .local v20, "x_4":J
    add-int/lit8 v9, p3, 0x7

    #@167
    aget v9, p2, v9

    #@169
    int-to-long v0, v9

    #@16a
    move-wide/from16 v56, v0

    #@16c
    const-wide v58, 0xffffffffL

    #@171
    and-long v50, v56, v58

    #@173
    .line 1109
    .local v50, "zz_7":J
    add-int/lit8 v9, p3, 0x8

    #@175
    aget v9, p2, v9

    #@177
    int-to-long v0, v9

    #@178
    move-wide/from16 v56, v0

    #@17a
    const-wide v58, 0xffffffffL

    #@17f
    and-long v52, v56, v58

    #@181
    .line 1111
    .local v52, "zz_8":J
    mul-long v56, v20, v12

    #@183
    add-long v44, v44, v56

    #@185
    .line 1112
    move-wide/from16 v0, v44

    #@187
    long-to-int v8, v0

    #@188
    .line 1113
    add-int/lit8 v9, p3, 0x4

    #@18a
    shl-int/lit8 v56, v8, 0x1

    #@18c
    or-int v56, v56, v2

    #@18e
    aput v56, p2, v9

    #@190
    .line 1114
    ushr-int/lit8 v2, v8, 0x1f

    #@192
    .line 1115
    const/16 v9, 0x20

    #@194
    ushr-long v56, v44, v9

    #@196
    mul-long v58, v20, v14

    #@198
    add-long v56, v56, v58

    #@19a
    add-long v46, v46, v56

    #@19c
    .line 1116
    const/16 v9, 0x20

    #@19e
    ushr-long v56, v46, v9

    #@1a0
    mul-long v58, v20, v16

    #@1a2
    add-long v56, v56, v58

    #@1a4
    add-long v48, v48, v56

    #@1a6
    .line 1117
    const-wide v56, 0xffffffffL

    #@1ab
    and-long v46, v46, v56

    #@1ad
    .line 1118
    const/16 v9, 0x20

    #@1af
    ushr-long v56, v48, v9

    #@1b1
    mul-long v58, v20, v18

    #@1b3
    add-long v56, v56, v58

    #@1b5
    add-long v50, v50, v56

    #@1b7
    .line 1119
    const-wide v56, 0xffffffffL

    #@1bc
    and-long v48, v48, v56

    #@1be
    .line 1120
    const/16 v9, 0x20

    #@1c0
    ushr-long v56, v50, v9

    #@1c2
    add-long v52, v52, v56

    #@1c4
    .line 1121
    const-wide v56, 0xffffffffL

    #@1c9
    and-long v50, v50, v56

    #@1cb
    .line 1124
    add-int/lit8 v9, p1, 0x5

    #@1cd
    aget v9, p0, v9

    #@1cf
    int-to-long v0, v9

    #@1d0
    move-wide/from16 v56, v0

    #@1d2
    const-wide v58, 0xffffffffL

    #@1d7
    and-long v22, v56, v58

    #@1d9
    .line 1125
    .local v22, "x_5":J
    add-int/lit8 v9, p3, 0x9

    #@1db
    aget v9, p2, v9

    #@1dd
    int-to-long v0, v9

    #@1de
    move-wide/from16 v56, v0

    #@1e0
    const-wide v58, 0xffffffffL

    #@1e5
    and-long v54, v56, v58

    #@1e7
    .line 1126
    .local v54, "zz_9":J
    add-int/lit8 v9, p3, 0xa

    #@1e9
    aget v9, p2, v9

    #@1eb
    int-to-long v0, v9

    #@1ec
    move-wide/from16 v56, v0

    #@1ee
    const-wide v58, 0xffffffffL

    #@1f3
    and-long v30, v56, v58

    #@1f5
    .line 1128
    .local v30, "zz_10":J
    mul-long v56, v22, v12

    #@1f7
    add-long v46, v46, v56

    #@1f9
    .line 1129
    move-wide/from16 v0, v46

    #@1fb
    long-to-int v8, v0

    #@1fc
    .line 1130
    add-int/lit8 v9, p3, 0x5

    #@1fe
    shl-int/lit8 v56, v8, 0x1

    #@200
    or-int v56, v56, v2

    #@202
    aput v56, p2, v9

    #@204
    .line 1131
    ushr-int/lit8 v2, v8, 0x1f

    #@206
    .line 1132
    const/16 v9, 0x20

    #@208
    ushr-long v56, v46, v9

    #@20a
    mul-long v58, v22, v14

    #@20c
    add-long v56, v56, v58

    #@20e
    add-long v48, v48, v56

    #@210
    .line 1133
    const/16 v9, 0x20

    #@212
    ushr-long v56, v48, v9

    #@214
    mul-long v58, v22, v16

    #@216
    add-long v56, v56, v58

    #@218
    add-long v50, v50, v56

    #@21a
    .line 1134
    const-wide v56, 0xffffffffL

    #@21f
    and-long v48, v48, v56

    #@221
    .line 1135
    const/16 v9, 0x20

    #@223
    ushr-long v56, v50, v9

    #@225
    mul-long v58, v22, v18

    #@227
    add-long v56, v56, v58

    #@229
    add-long v52, v52, v56

    #@22b
    .line 1136
    const-wide v56, 0xffffffffL

    #@230
    and-long v50, v50, v56

    #@232
    .line 1137
    const/16 v9, 0x20

    #@234
    ushr-long v56, v52, v9

    #@236
    mul-long v58, v22, v20

    #@238
    add-long v56, v56, v58

    #@23a
    add-long v54, v54, v56

    #@23c
    .line 1138
    const-wide v56, 0xffffffffL

    #@241
    and-long v52, v52, v56

    #@243
    .line 1139
    const/16 v9, 0x20

    #@245
    ushr-long v56, v54, v9

    #@247
    add-long v30, v30, v56

    #@249
    .line 1140
    const-wide v56, 0xffffffffL

    #@24e
    and-long v54, v54, v56

    #@250
    .line 1143
    add-int/lit8 v9, p1, 0x6

    #@252
    aget v9, p0, v9

    #@254
    int-to-long v0, v9

    #@255
    move-wide/from16 v56, v0

    #@257
    const-wide v58, 0xffffffffL

    #@25c
    and-long v24, v56, v58

    #@25e
    .line 1144
    .local v24, "x_6":J
    add-int/lit8 v9, p3, 0xb

    #@260
    aget v9, p2, v9

    #@262
    int-to-long v0, v9

    #@263
    move-wide/from16 v56, v0

    #@265
    const-wide v58, 0xffffffffL

    #@26a
    and-long v32, v56, v58

    #@26c
    .line 1145
    .local v32, "zz_11":J
    add-int/lit8 v9, p3, 0xc

    #@26e
    aget v9, p2, v9

    #@270
    int-to-long v0, v9

    #@271
    move-wide/from16 v56, v0

    #@273
    const-wide v58, 0xffffffffL

    #@278
    and-long v34, v56, v58

    #@27a
    .line 1147
    .local v34, "zz_12":J
    mul-long v56, v24, v12

    #@27c
    add-long v48, v48, v56

    #@27e
    .line 1148
    move-wide/from16 v0, v48

    #@280
    long-to-int v8, v0

    #@281
    .line 1149
    add-int/lit8 v9, p3, 0x6

    #@283
    shl-int/lit8 v56, v8, 0x1

    #@285
    or-int v56, v56, v2

    #@287
    aput v56, p2, v9

    #@289
    .line 1150
    ushr-int/lit8 v2, v8, 0x1f

    #@28b
    .line 1151
    const/16 v9, 0x20

    #@28d
    ushr-long v56, v48, v9

    #@28f
    mul-long v58, v24, v14

    #@291
    add-long v56, v56, v58

    #@293
    add-long v50, v50, v56

    #@295
    .line 1152
    const/16 v9, 0x20

    #@297
    ushr-long v56, v50, v9

    #@299
    mul-long v58, v24, v16

    #@29b
    add-long v56, v56, v58

    #@29d
    add-long v52, v52, v56

    #@29f
    .line 1153
    const-wide v56, 0xffffffffL

    #@2a4
    and-long v50, v50, v56

    #@2a6
    .line 1154
    const/16 v9, 0x20

    #@2a8
    ushr-long v56, v52, v9

    #@2aa
    mul-long v58, v24, v18

    #@2ac
    add-long v56, v56, v58

    #@2ae
    add-long v54, v54, v56

    #@2b0
    .line 1155
    const-wide v56, 0xffffffffL

    #@2b5
    and-long v52, v52, v56

    #@2b7
    .line 1156
    const/16 v9, 0x20

    #@2b9
    ushr-long v56, v54, v9

    #@2bb
    mul-long v58, v24, v20

    #@2bd
    add-long v56, v56, v58

    #@2bf
    add-long v30, v30, v56

    #@2c1
    .line 1157
    const-wide v56, 0xffffffffL

    #@2c6
    and-long v54, v54, v56

    #@2c8
    .line 1158
    const/16 v9, 0x20

    #@2ca
    ushr-long v56, v30, v9

    #@2cc
    mul-long v58, v24, v22

    #@2ce
    add-long v56, v56, v58

    #@2d0
    add-long v32, v32, v56

    #@2d2
    .line 1159
    const-wide v56, 0xffffffffL

    #@2d7
    and-long v30, v30, v56

    #@2d9
    .line 1160
    const/16 v9, 0x20

    #@2db
    ushr-long v56, v32, v9

    #@2dd
    add-long v34, v34, v56

    #@2df
    .line 1161
    const-wide v56, 0xffffffffL

    #@2e4
    and-long v32, v32, v56

    #@2e6
    .line 1164
    add-int/lit8 v9, p1, 0x7

    #@2e8
    aget v9, p0, v9

    #@2ea
    int-to-long v0, v9

    #@2eb
    move-wide/from16 v56, v0

    #@2ed
    const-wide v58, 0xffffffffL

    #@2f2
    and-long v26, v56, v58

    #@2f4
    .line 1165
    .local v26, "x_7":J
    add-int/lit8 v9, p3, 0xd

    #@2f6
    aget v9, p2, v9

    #@2f8
    int-to-long v0, v9

    #@2f9
    move-wide/from16 v56, v0

    #@2fb
    const-wide v58, 0xffffffffL

    #@300
    and-long v36, v56, v58

    #@302
    .line 1166
    .local v36, "zz_13":J
    add-int/lit8 v9, p3, 0xe

    #@304
    aget v9, p2, v9

    #@306
    int-to-long v0, v9

    #@307
    move-wide/from16 v56, v0

    #@309
    const-wide v58, 0xffffffffL

    #@30e
    and-long v38, v56, v58

    #@310
    .line 1168
    .local v38, "zz_14":J
    mul-long v56, v26, v12

    #@312
    add-long v50, v50, v56

    #@314
    .line 1169
    move-wide/from16 v0, v50

    #@316
    long-to-int v8, v0

    #@317
    .line 1170
    add-int/lit8 v9, p3, 0x7

    #@319
    shl-int/lit8 v56, v8, 0x1

    #@31b
    or-int v56, v56, v2

    #@31d
    aput v56, p2, v9

    #@31f
    .line 1171
    ushr-int/lit8 v2, v8, 0x1f

    #@321
    .line 1172
    const/16 v9, 0x20

    #@323
    ushr-long v56, v50, v9

    #@325
    mul-long v58, v26, v14

    #@327
    add-long v56, v56, v58

    #@329
    add-long v52, v52, v56

    #@32b
    .line 1173
    const/16 v9, 0x20

    #@32d
    ushr-long v56, v52, v9

    #@32f
    mul-long v58, v26, v16

    #@331
    add-long v56, v56, v58

    #@333
    add-long v54, v54, v56

    #@335
    .line 1174
    const/16 v9, 0x20

    #@337
    ushr-long v56, v54, v9

    #@339
    mul-long v58, v26, v18

    #@33b
    add-long v56, v56, v58

    #@33d
    add-long v30, v30, v56

    #@33f
    .line 1175
    const/16 v9, 0x20

    #@341
    ushr-long v56, v30, v9

    #@343
    mul-long v58, v26, v20

    #@345
    add-long v56, v56, v58

    #@347
    add-long v32, v32, v56

    #@349
    .line 1176
    const/16 v9, 0x20

    #@34b
    ushr-long v56, v32, v9

    #@34d
    mul-long v58, v26, v22

    #@34f
    add-long v56, v56, v58

    #@351
    add-long v34, v34, v56

    #@353
    .line 1177
    const/16 v9, 0x20

    #@355
    ushr-long v56, v34, v9

    #@357
    mul-long v58, v26, v24

    #@359
    add-long v56, v56, v58

    #@35b
    add-long v36, v36, v56

    #@35d
    .line 1178
    const/16 v9, 0x20

    #@35f
    ushr-long v56, v36, v9

    #@361
    add-long v38, v38, v56

    #@363
    .line 1181
    move-wide/from16 v0, v52

    #@365
    long-to-int v8, v0

    #@366
    .line 1182
    add-int/lit8 v9, p3, 0x8

    #@368
    shl-int/lit8 v56, v8, 0x1

    #@36a
    or-int v56, v56, v2

    #@36c
    aput v56, p2, v9

    #@36e
    .line 1183
    ushr-int/lit8 v2, v8, 0x1f

    #@370
    .line 1184
    move-wide/from16 v0, v54

    #@372
    long-to-int v8, v0

    #@373
    .line 1185
    add-int/lit8 v9, p3, 0x9

    #@375
    shl-int/lit8 v56, v8, 0x1

    #@377
    or-int v56, v56, v2

    #@379
    aput v56, p2, v9

    #@37b
    .line 1186
    ushr-int/lit8 v2, v8, 0x1f

    #@37d
    .line 1187
    move-wide/from16 v0, v30

    #@37f
    long-to-int v8, v0

    #@380
    .line 1188
    add-int/lit8 v9, p3, 0xa

    #@382
    shl-int/lit8 v56, v8, 0x1

    #@384
    or-int v56, v56, v2

    #@386
    aput v56, p2, v9

    #@388
    .line 1189
    ushr-int/lit8 v2, v8, 0x1f

    #@38a
    .line 1190
    move-wide/from16 v0, v32

    #@38c
    long-to-int v8, v0

    #@38d
    .line 1191
    add-int/lit8 v9, p3, 0xb

    #@38f
    shl-int/lit8 v56, v8, 0x1

    #@391
    or-int v56, v56, v2

    #@393
    aput v56, p2, v9

    #@395
    .line 1192
    ushr-int/lit8 v2, v8, 0x1f

    #@397
    .line 1193
    move-wide/from16 v0, v34

    #@399
    long-to-int v8, v0

    #@39a
    .line 1194
    add-int/lit8 v9, p3, 0xc

    #@39c
    shl-int/lit8 v56, v8, 0x1

    #@39e
    or-int v56, v56, v2

    #@3a0
    aput v56, p2, v9

    #@3a2
    .line 1195
    ushr-int/lit8 v2, v8, 0x1f

    #@3a4
    .line 1196
    move-wide/from16 v0, v36

    #@3a6
    long-to-int v8, v0

    #@3a7
    .line 1197
    add-int/lit8 v9, p3, 0xd

    #@3a9
    shl-int/lit8 v56, v8, 0x1

    #@3ab
    or-int v56, v56, v2

    #@3ad
    aput v56, p2, v9

    #@3af
    .line 1198
    ushr-int/lit8 v2, v8, 0x1f

    #@3b1
    .line 1199
    move-wide/from16 v0, v38

    #@3b3
    long-to-int v8, v0

    #@3b4
    .line 1200
    add-int/lit8 v9, p3, 0xe

    #@3b6
    shl-int/lit8 v56, v8, 0x1

    #@3b8
    or-int v56, v56, v2

    #@3ba
    aput v56, p2, v9

    #@3bc
    .line 1201
    ushr-int/lit8 v2, v8, 0x1f

    #@3be
    .line 1202
    add-int/lit8 v9, p3, 0xf

    #@3c0
    aget v9, p2, v9

    #@3c2
    const/16 v56, 0x20

    #@3c4
    shr-long v56, v38, v56

    #@3c6
    move-wide/from16 v0, v56

    #@3c8
    long-to-int v0, v0

    #@3c9
    move/from16 v56, v0

    #@3cb
    add-int v8, v9, v56

    #@3cd
    .line 1203
    add-int/lit8 v9, p3, 0xf

    #@3cf
    shl-int/lit8 v56, v8, 0x1

    #@3d1
    or-int v56, v56, v2

    #@3d3
    aput v56, p2, v9

    #@3d5
    .line 1042
    return-void
.end method

.method public static square([I[I)V
    .locals 60
    .param p0, "x"    # [I
    .param p1, "zz"    # [I

    #@0
    .prologue
    .line 880
    const/4 v9, 0x0

    #@1
    aget v9, p0, v9

    #@3
    int-to-long v0, v9

    #@4
    move-wide/from16 v56, v0

    #@6
    const-wide v58, 0xffffffffL

    #@b
    and-long v12, v56, v58

    #@d
    .line 883
    .local v12, "x_0":J
    const/4 v2, 0x0

    #@e
    .line 885
    .local v2, "c":I
    const/4 v3, 0x7

    #@f
    .local v3, "i":I
    const/16 v5, 0x10

    #@11
    .line 888
    .local v5, "j":I
    :goto_0
    add-int/lit8 v4, v3, -0x1

    #@13
    .end local v3    # "i":I
    .local v4, "i":I
    aget v9, p0, v3

    #@15
    int-to-long v0, v9

    #@16
    move-wide/from16 v56, v0

    #@18
    const-wide v58, 0xffffffffL

    #@1d
    and-long v10, v56, v58

    #@1f
    .line 889
    .local v10, "xVal":J
    mul-long v6, v10, v10

    #@21
    .line 890
    .local v6, "p":J
    add-int/lit8 v5, v5, -0x1

    #@23
    shl-int/lit8 v9, v2, 0x1f

    #@25
    const/16 v56, 0x21

    #@27
    ushr-long v56, v6, v56

    #@29
    move-wide/from16 v0, v56

    #@2b
    long-to-int v0, v0

    #@2c
    move/from16 v56, v0

    #@2e
    or-int v9, v9, v56

    #@30
    aput v9, p1, v5

    #@32
    .line 891
    add-int/lit8 v5, v5, -0x1

    #@34
    const/4 v9, 0x1

    #@35
    ushr-long v56, v6, v9

    #@37
    move-wide/from16 v0, v56

    #@39
    long-to-int v9, v0

    #@3a
    aput v9, p1, v5

    #@3c
    .line 892
    long-to-int v2, v6

    #@3d
    .line 894
    if-lez v4, :cond_0

    #@3f
    move v3, v4

    #@40
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    #@41
    .line 897
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_0
    mul-long v6, v12, v12

    #@43
    .line 898
    shl-int/lit8 v9, v2, 0x1f

    #@45
    int-to-long v0, v9

    #@46
    move-wide/from16 v56, v0

    #@48
    const-wide v58, 0xffffffffL

    #@4d
    and-long v56, v56, v58

    #@4f
    const/16 v9, 0x21

    #@51
    ushr-long v58, v6, v9

    #@53
    or-long v28, v56, v58

    #@55
    .line 899
    .local v28, "zz_1":J
    long-to-int v9, v6

    #@56
    const/16 v56, 0x0

    #@58
    aput v9, p1, v56

    #@5a
    .line 900
    const/16 v9, 0x20

    #@5c
    ushr-long v56, v6, v9

    #@5e
    move-wide/from16 v0, v56

    #@60
    long-to-int v9, v0

    #@61
    and-int/lit8 v2, v9, 0x1

    #@63
    .line 904
    const/4 v9, 0x1

    #@64
    aget v9, p0, v9

    #@66
    int-to-long v0, v9

    #@67
    move-wide/from16 v56, v0

    #@69
    const-wide v58, 0xffffffffL

    #@6e
    and-long v14, v56, v58

    #@70
    .line 905
    .local v14, "x_1":J
    const/4 v9, 0x2

    #@71
    aget v9, p1, v9

    #@73
    int-to-long v0, v9

    #@74
    move-wide/from16 v56, v0

    #@76
    const-wide v58, 0xffffffffL

    #@7b
    and-long v40, v56, v58

    #@7d
    .line 908
    .local v40, "zz_2":J
    mul-long v56, v14, v12

    #@7f
    add-long v28, v28, v56

    #@81
    .line 909
    move-wide/from16 v0, v28

    #@83
    long-to-int v8, v0

    #@84
    .line 910
    .local v8, "w":I
    shl-int/lit8 v9, v8, 0x1

    #@86
    or-int/2addr v9, v2

    #@87
    const/16 v56, 0x1

    #@89
    aput v9, p1, v56

    #@8b
    .line 911
    ushr-int/lit8 v2, v8, 0x1f

    #@8d
    .line 912
    const/16 v9, 0x20

    #@8f
    ushr-long v56, v28, v9

    #@91
    add-long v40, v40, v56

    #@93
    .line 915
    const/4 v9, 0x2

    #@94
    aget v9, p0, v9

    #@96
    int-to-long v0, v9

    #@97
    move-wide/from16 v56, v0

    #@99
    const-wide v58, 0xffffffffL

    #@9e
    and-long v16, v56, v58

    #@a0
    .line 916
    .local v16, "x_2":J
    const/4 v9, 0x3

    #@a1
    aget v9, p1, v9

    #@a3
    int-to-long v0, v9

    #@a4
    move-wide/from16 v56, v0

    #@a6
    const-wide v58, 0xffffffffL

    #@ab
    and-long v42, v56, v58

    #@ad
    .line 917
    .local v42, "zz_3":J
    const/4 v9, 0x4

    #@ae
    aget v9, p1, v9

    #@b0
    int-to-long v0, v9

    #@b1
    move-wide/from16 v56, v0

    #@b3
    const-wide v58, 0xffffffffL

    #@b8
    and-long v44, v56, v58

    #@ba
    .line 919
    .local v44, "zz_4":J
    mul-long v56, v16, v12

    #@bc
    add-long v40, v40, v56

    #@be
    .line 920
    move-wide/from16 v0, v40

    #@c0
    long-to-int v8, v0

    #@c1
    .line 921
    shl-int/lit8 v9, v8, 0x1

    #@c3
    or-int/2addr v9, v2

    #@c4
    const/16 v56, 0x2

    #@c6
    aput v9, p1, v56

    #@c8
    .line 922
    ushr-int/lit8 v2, v8, 0x1f

    #@ca
    .line 923
    const/16 v9, 0x20

    #@cc
    ushr-long v56, v40, v9

    #@ce
    mul-long v58, v16, v14

    #@d0
    add-long v56, v56, v58

    #@d2
    add-long v42, v42, v56

    #@d4
    .line 924
    const/16 v9, 0x20

    #@d6
    ushr-long v56, v42, v9

    #@d8
    add-long v44, v44, v56

    #@da
    .line 925
    const-wide v56, 0xffffffffL

    #@df
    and-long v42, v42, v56

    #@e1
    .line 928
    const/4 v9, 0x3

    #@e2
    aget v9, p0, v9

    #@e4
    int-to-long v0, v9

    #@e5
    move-wide/from16 v56, v0

    #@e7
    const-wide v58, 0xffffffffL

    #@ec
    and-long v18, v56, v58

    #@ee
    .line 929
    .local v18, "x_3":J
    const/4 v9, 0x5

    #@ef
    aget v9, p1, v9

    #@f1
    int-to-long v0, v9

    #@f2
    move-wide/from16 v56, v0

    #@f4
    const-wide v58, 0xffffffffL

    #@f9
    and-long v46, v56, v58

    #@fb
    .line 930
    .local v46, "zz_5":J
    const/4 v9, 0x6

    #@fc
    aget v9, p1, v9

    #@fe
    int-to-long v0, v9

    #@ff
    move-wide/from16 v56, v0

    #@101
    const-wide v58, 0xffffffffL

    #@106
    and-long v48, v56, v58

    #@108
    .line 932
    .local v48, "zz_6":J
    mul-long v56, v18, v12

    #@10a
    add-long v42, v42, v56

    #@10c
    .line 933
    move-wide/from16 v0, v42

    #@10e
    long-to-int v8, v0

    #@10f
    .line 934
    shl-int/lit8 v9, v8, 0x1

    #@111
    or-int/2addr v9, v2

    #@112
    const/16 v56, 0x3

    #@114
    aput v9, p1, v56

    #@116
    .line 935
    ushr-int/lit8 v2, v8, 0x1f

    #@118
    .line 936
    const/16 v9, 0x20

    #@11a
    ushr-long v56, v42, v9

    #@11c
    mul-long v58, v18, v14

    #@11e
    add-long v56, v56, v58

    #@120
    add-long v44, v44, v56

    #@122
    .line 937
    const/16 v9, 0x20

    #@124
    ushr-long v56, v44, v9

    #@126
    mul-long v58, v18, v16

    #@128
    add-long v56, v56, v58

    #@12a
    add-long v46, v46, v56

    #@12c
    .line 938
    const-wide v56, 0xffffffffL

    #@131
    and-long v44, v44, v56

    #@133
    .line 939
    const/16 v9, 0x20

    #@135
    ushr-long v56, v46, v9

    #@137
    add-long v48, v48, v56

    #@139
    .line 940
    const-wide v56, 0xffffffffL

    #@13e
    and-long v46, v46, v56

    #@140
    .line 943
    const/4 v9, 0x4

    #@141
    aget v9, p0, v9

    #@143
    int-to-long v0, v9

    #@144
    move-wide/from16 v56, v0

    #@146
    const-wide v58, 0xffffffffL

    #@14b
    and-long v20, v56, v58

    #@14d
    .line 944
    .local v20, "x_4":J
    const/4 v9, 0x7

    #@14e
    aget v9, p1, v9

    #@150
    int-to-long v0, v9

    #@151
    move-wide/from16 v56, v0

    #@153
    const-wide v58, 0xffffffffL

    #@158
    and-long v50, v56, v58

    #@15a
    .line 945
    .local v50, "zz_7":J
    const/16 v9, 0x8

    #@15c
    aget v9, p1, v9

    #@15e
    int-to-long v0, v9

    #@15f
    move-wide/from16 v56, v0

    #@161
    const-wide v58, 0xffffffffL

    #@166
    and-long v52, v56, v58

    #@168
    .line 947
    .local v52, "zz_8":J
    mul-long v56, v20, v12

    #@16a
    add-long v44, v44, v56

    #@16c
    .line 948
    move-wide/from16 v0, v44

    #@16e
    long-to-int v8, v0

    #@16f
    .line 949
    shl-int/lit8 v9, v8, 0x1

    #@171
    or-int/2addr v9, v2

    #@172
    const/16 v56, 0x4

    #@174
    aput v9, p1, v56

    #@176
    .line 950
    ushr-int/lit8 v2, v8, 0x1f

    #@178
    .line 951
    const/16 v9, 0x20

    #@17a
    ushr-long v56, v44, v9

    #@17c
    mul-long v58, v20, v14

    #@17e
    add-long v56, v56, v58

    #@180
    add-long v46, v46, v56

    #@182
    .line 952
    const/16 v9, 0x20

    #@184
    ushr-long v56, v46, v9

    #@186
    mul-long v58, v20, v16

    #@188
    add-long v56, v56, v58

    #@18a
    add-long v48, v48, v56

    #@18c
    .line 953
    const-wide v56, 0xffffffffL

    #@191
    and-long v46, v46, v56

    #@193
    .line 954
    const/16 v9, 0x20

    #@195
    ushr-long v56, v48, v9

    #@197
    mul-long v58, v20, v18

    #@199
    add-long v56, v56, v58

    #@19b
    add-long v50, v50, v56

    #@19d
    .line 955
    const-wide v56, 0xffffffffL

    #@1a2
    and-long v48, v48, v56

    #@1a4
    .line 956
    const/16 v9, 0x20

    #@1a6
    ushr-long v56, v50, v9

    #@1a8
    add-long v52, v52, v56

    #@1aa
    .line 957
    const-wide v56, 0xffffffffL

    #@1af
    and-long v50, v50, v56

    #@1b1
    .line 960
    const/4 v9, 0x5

    #@1b2
    aget v9, p0, v9

    #@1b4
    int-to-long v0, v9

    #@1b5
    move-wide/from16 v56, v0

    #@1b7
    const-wide v58, 0xffffffffL

    #@1bc
    and-long v22, v56, v58

    #@1be
    .line 961
    .local v22, "x_5":J
    const/16 v9, 0x9

    #@1c0
    aget v9, p1, v9

    #@1c2
    int-to-long v0, v9

    #@1c3
    move-wide/from16 v56, v0

    #@1c5
    const-wide v58, 0xffffffffL

    #@1ca
    and-long v54, v56, v58

    #@1cc
    .line 962
    .local v54, "zz_9":J
    const/16 v9, 0xa

    #@1ce
    aget v9, p1, v9

    #@1d0
    int-to-long v0, v9

    #@1d1
    move-wide/from16 v56, v0

    #@1d3
    const-wide v58, 0xffffffffL

    #@1d8
    and-long v30, v56, v58

    #@1da
    .line 964
    .local v30, "zz_10":J
    mul-long v56, v22, v12

    #@1dc
    add-long v46, v46, v56

    #@1de
    .line 965
    move-wide/from16 v0, v46

    #@1e0
    long-to-int v8, v0

    #@1e1
    .line 966
    shl-int/lit8 v9, v8, 0x1

    #@1e3
    or-int/2addr v9, v2

    #@1e4
    const/16 v56, 0x5

    #@1e6
    aput v9, p1, v56

    #@1e8
    .line 967
    ushr-int/lit8 v2, v8, 0x1f

    #@1ea
    .line 968
    const/16 v9, 0x20

    #@1ec
    ushr-long v56, v46, v9

    #@1ee
    mul-long v58, v22, v14

    #@1f0
    add-long v56, v56, v58

    #@1f2
    add-long v48, v48, v56

    #@1f4
    .line 969
    const/16 v9, 0x20

    #@1f6
    ushr-long v56, v48, v9

    #@1f8
    mul-long v58, v22, v16

    #@1fa
    add-long v56, v56, v58

    #@1fc
    add-long v50, v50, v56

    #@1fe
    .line 970
    const-wide v56, 0xffffffffL

    #@203
    and-long v48, v48, v56

    #@205
    .line 971
    const/16 v9, 0x20

    #@207
    ushr-long v56, v50, v9

    #@209
    mul-long v58, v22, v18

    #@20b
    add-long v56, v56, v58

    #@20d
    add-long v52, v52, v56

    #@20f
    .line 972
    const-wide v56, 0xffffffffL

    #@214
    and-long v50, v50, v56

    #@216
    .line 973
    const/16 v9, 0x20

    #@218
    ushr-long v56, v52, v9

    #@21a
    mul-long v58, v22, v20

    #@21c
    add-long v56, v56, v58

    #@21e
    add-long v54, v54, v56

    #@220
    .line 974
    const-wide v56, 0xffffffffL

    #@225
    and-long v52, v52, v56

    #@227
    .line 975
    const/16 v9, 0x20

    #@229
    ushr-long v56, v54, v9

    #@22b
    add-long v30, v30, v56

    #@22d
    .line 976
    const-wide v56, 0xffffffffL

    #@232
    and-long v54, v54, v56

    #@234
    .line 979
    const/4 v9, 0x6

    #@235
    aget v9, p0, v9

    #@237
    int-to-long v0, v9

    #@238
    move-wide/from16 v56, v0

    #@23a
    const-wide v58, 0xffffffffL

    #@23f
    and-long v24, v56, v58

    #@241
    .line 980
    .local v24, "x_6":J
    const/16 v9, 0xb

    #@243
    aget v9, p1, v9

    #@245
    int-to-long v0, v9

    #@246
    move-wide/from16 v56, v0

    #@248
    const-wide v58, 0xffffffffL

    #@24d
    and-long v32, v56, v58

    #@24f
    .line 981
    .local v32, "zz_11":J
    const/16 v9, 0xc

    #@251
    aget v9, p1, v9

    #@253
    int-to-long v0, v9

    #@254
    move-wide/from16 v56, v0

    #@256
    const-wide v58, 0xffffffffL

    #@25b
    and-long v34, v56, v58

    #@25d
    .line 983
    .local v34, "zz_12":J
    mul-long v56, v24, v12

    #@25f
    add-long v48, v48, v56

    #@261
    .line 984
    move-wide/from16 v0, v48

    #@263
    long-to-int v8, v0

    #@264
    .line 985
    shl-int/lit8 v9, v8, 0x1

    #@266
    or-int/2addr v9, v2

    #@267
    const/16 v56, 0x6

    #@269
    aput v9, p1, v56

    #@26b
    .line 986
    ushr-int/lit8 v2, v8, 0x1f

    #@26d
    .line 987
    const/16 v9, 0x20

    #@26f
    ushr-long v56, v48, v9

    #@271
    mul-long v58, v24, v14

    #@273
    add-long v56, v56, v58

    #@275
    add-long v50, v50, v56

    #@277
    .line 988
    const/16 v9, 0x20

    #@279
    ushr-long v56, v50, v9

    #@27b
    mul-long v58, v24, v16

    #@27d
    add-long v56, v56, v58

    #@27f
    add-long v52, v52, v56

    #@281
    .line 989
    const-wide v56, 0xffffffffL

    #@286
    and-long v50, v50, v56

    #@288
    .line 990
    const/16 v9, 0x20

    #@28a
    ushr-long v56, v52, v9

    #@28c
    mul-long v58, v24, v18

    #@28e
    add-long v56, v56, v58

    #@290
    add-long v54, v54, v56

    #@292
    .line 991
    const-wide v56, 0xffffffffL

    #@297
    and-long v52, v52, v56

    #@299
    .line 992
    const/16 v9, 0x20

    #@29b
    ushr-long v56, v54, v9

    #@29d
    mul-long v58, v24, v20

    #@29f
    add-long v56, v56, v58

    #@2a1
    add-long v30, v30, v56

    #@2a3
    .line 993
    const-wide v56, 0xffffffffL

    #@2a8
    and-long v54, v54, v56

    #@2aa
    .line 994
    const/16 v9, 0x20

    #@2ac
    ushr-long v56, v30, v9

    #@2ae
    mul-long v58, v24, v22

    #@2b0
    add-long v56, v56, v58

    #@2b2
    add-long v32, v32, v56

    #@2b4
    .line 995
    const-wide v56, 0xffffffffL

    #@2b9
    and-long v30, v30, v56

    #@2bb
    .line 996
    const/16 v9, 0x20

    #@2bd
    ushr-long v56, v32, v9

    #@2bf
    add-long v34, v34, v56

    #@2c1
    .line 997
    const-wide v56, 0xffffffffL

    #@2c6
    and-long v32, v32, v56

    #@2c8
    .line 1000
    const/4 v9, 0x7

    #@2c9
    aget v9, p0, v9

    #@2cb
    int-to-long v0, v9

    #@2cc
    move-wide/from16 v56, v0

    #@2ce
    const-wide v58, 0xffffffffL

    #@2d3
    and-long v26, v56, v58

    #@2d5
    .line 1001
    .local v26, "x_7":J
    const/16 v9, 0xd

    #@2d7
    aget v9, p1, v9

    #@2d9
    int-to-long v0, v9

    #@2da
    move-wide/from16 v56, v0

    #@2dc
    const-wide v58, 0xffffffffL

    #@2e1
    and-long v36, v56, v58

    #@2e3
    .line 1002
    .local v36, "zz_13":J
    const/16 v9, 0xe

    #@2e5
    aget v9, p1, v9

    #@2e7
    int-to-long v0, v9

    #@2e8
    move-wide/from16 v56, v0

    #@2ea
    const-wide v58, 0xffffffffL

    #@2ef
    and-long v38, v56, v58

    #@2f1
    .line 1004
    .local v38, "zz_14":J
    mul-long v56, v26, v12

    #@2f3
    add-long v50, v50, v56

    #@2f5
    .line 1005
    move-wide/from16 v0, v50

    #@2f7
    long-to-int v8, v0

    #@2f8
    .line 1006
    shl-int/lit8 v9, v8, 0x1

    #@2fa
    or-int/2addr v9, v2

    #@2fb
    const/16 v56, 0x7

    #@2fd
    aput v9, p1, v56

    #@2ff
    .line 1007
    ushr-int/lit8 v2, v8, 0x1f

    #@301
    .line 1008
    const/16 v9, 0x20

    #@303
    ushr-long v56, v50, v9

    #@305
    mul-long v58, v26, v14

    #@307
    add-long v56, v56, v58

    #@309
    add-long v52, v52, v56

    #@30b
    .line 1009
    const/16 v9, 0x20

    #@30d
    ushr-long v56, v52, v9

    #@30f
    mul-long v58, v26, v16

    #@311
    add-long v56, v56, v58

    #@313
    add-long v54, v54, v56

    #@315
    .line 1010
    const/16 v9, 0x20

    #@317
    ushr-long v56, v54, v9

    #@319
    mul-long v58, v26, v18

    #@31b
    add-long v56, v56, v58

    #@31d
    add-long v30, v30, v56

    #@31f
    .line 1011
    const/16 v9, 0x20

    #@321
    ushr-long v56, v30, v9

    #@323
    mul-long v58, v26, v20

    #@325
    add-long v56, v56, v58

    #@327
    add-long v32, v32, v56

    #@329
    .line 1012
    const/16 v9, 0x20

    #@32b
    ushr-long v56, v32, v9

    #@32d
    mul-long v58, v26, v22

    #@32f
    add-long v56, v56, v58

    #@331
    add-long v34, v34, v56

    #@333
    .line 1013
    const/16 v9, 0x20

    #@335
    ushr-long v56, v34, v9

    #@337
    mul-long v58, v26, v24

    #@339
    add-long v56, v56, v58

    #@33b
    add-long v36, v36, v56

    #@33d
    .line 1014
    const/16 v9, 0x20

    #@33f
    ushr-long v56, v36, v9

    #@341
    add-long v38, v38, v56

    #@343
    .line 1017
    move-wide/from16 v0, v52

    #@345
    long-to-int v8, v0

    #@346
    .line 1018
    shl-int/lit8 v9, v8, 0x1

    #@348
    or-int/2addr v9, v2

    #@349
    const/16 v56, 0x8

    #@34b
    aput v9, p1, v56

    #@34d
    .line 1019
    ushr-int/lit8 v2, v8, 0x1f

    #@34f
    .line 1020
    move-wide/from16 v0, v54

    #@351
    long-to-int v8, v0

    #@352
    .line 1021
    shl-int/lit8 v9, v8, 0x1

    #@354
    or-int/2addr v9, v2

    #@355
    const/16 v56, 0x9

    #@357
    aput v9, p1, v56

    #@359
    .line 1022
    ushr-int/lit8 v2, v8, 0x1f

    #@35b
    .line 1023
    move-wide/from16 v0, v30

    #@35d
    long-to-int v8, v0

    #@35e
    .line 1024
    shl-int/lit8 v9, v8, 0x1

    #@360
    or-int/2addr v9, v2

    #@361
    const/16 v56, 0xa

    #@363
    aput v9, p1, v56

    #@365
    .line 1025
    ushr-int/lit8 v2, v8, 0x1f

    #@367
    .line 1026
    move-wide/from16 v0, v32

    #@369
    long-to-int v8, v0

    #@36a
    .line 1027
    shl-int/lit8 v9, v8, 0x1

    #@36c
    or-int/2addr v9, v2

    #@36d
    const/16 v56, 0xb

    #@36f
    aput v9, p1, v56

    #@371
    .line 1028
    ushr-int/lit8 v2, v8, 0x1f

    #@373
    .line 1029
    move-wide/from16 v0, v34

    #@375
    long-to-int v8, v0

    #@376
    .line 1030
    shl-int/lit8 v9, v8, 0x1

    #@378
    or-int/2addr v9, v2

    #@379
    const/16 v56, 0xc

    #@37b
    aput v9, p1, v56

    #@37d
    .line 1031
    ushr-int/lit8 v2, v8, 0x1f

    #@37f
    .line 1032
    move-wide/from16 v0, v36

    #@381
    long-to-int v8, v0

    #@382
    .line 1033
    shl-int/lit8 v9, v8, 0x1

    #@384
    or-int/2addr v9, v2

    #@385
    const/16 v56, 0xd

    #@387
    aput v9, p1, v56

    #@389
    .line 1034
    ushr-int/lit8 v2, v8, 0x1f

    #@38b
    .line 1035
    move-wide/from16 v0, v38

    #@38d
    long-to-int v8, v0

    #@38e
    .line 1036
    shl-int/lit8 v9, v8, 0x1

    #@390
    or-int/2addr v9, v2

    #@391
    const/16 v56, 0xe

    #@393
    aput v9, p1, v56

    #@395
    .line 1037
    ushr-int/lit8 v2, v8, 0x1f

    #@397
    .line 1038
    const/16 v9, 0xf

    #@399
    aget v9, p1, v9

    #@39b
    const/16 v56, 0x20

    #@39d
    shr-long v56, v38, v56

    #@39f
    move-wide/from16 v0, v56

    #@3a1
    long-to-int v0, v0

    #@3a2
    move/from16 v56, v0

    #@3a4
    add-int v8, v9, v56

    #@3a6
    .line 1039
    shl-int/lit8 v9, v8, 0x1

    #@3a8
    or-int/2addr v9, v2

    #@3a9
    const/16 v56, 0xf

    #@3ab
    aput v9, p1, v56

    #@3ad
    .line 878
    return-void
.end method

.method public static sub([II[II[II)I
    .locals 9
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "z"    # [I
    .param p5, "zOff"    # I

    #@0
    .prologue
    const/16 v8, 0x20

    #@2
    const-wide v6, 0xffffffffL

    #@7
    .line 1239
    add-int/lit8 v2, p1, 0x0

    #@9
    aget v2, p0, v2

    #@b
    int-to-long v2, v2

    #@c
    and-long/2addr v2, v6

    #@d
    add-int/lit8 v4, p3, 0x0

    #@f
    aget v4, p2, v4

    #@11
    int-to-long v4, v4

    #@12
    and-long/2addr v4, v6

    #@13
    sub-long/2addr v2, v4

    #@14
    .line 1238
    const-wide/16 v4, 0x0

    #@16
    .line 1239
    add-long v0, v4, v2

    #@18
    .line 1240
    .local v0, "c":J
    add-int/lit8 v2, p5, 0x0

    #@1a
    long-to-int v3, v0

    #@1b
    aput v3, p4, v2

    #@1d
    .line 1241
    shr-long/2addr v0, v8

    #@1e
    .line 1242
    add-int/lit8 v2, p1, 0x1

    #@20
    aget v2, p0, v2

    #@22
    int-to-long v2, v2

    #@23
    and-long/2addr v2, v6

    #@24
    add-int/lit8 v4, p3, 0x1

    #@26
    aget v4, p2, v4

    #@28
    int-to-long v4, v4

    #@29
    and-long/2addr v4, v6

    #@2a
    sub-long/2addr v2, v4

    #@2b
    add-long/2addr v0, v2

    #@2c
    .line 1243
    add-int/lit8 v2, p5, 0x1

    #@2e
    long-to-int v3, v0

    #@2f
    aput v3, p4, v2

    #@31
    .line 1244
    shr-long/2addr v0, v8

    #@32
    .line 1245
    add-int/lit8 v2, p1, 0x2

    #@34
    aget v2, p0, v2

    #@36
    int-to-long v2, v2

    #@37
    and-long/2addr v2, v6

    #@38
    add-int/lit8 v4, p3, 0x2

    #@3a
    aget v4, p2, v4

    #@3c
    int-to-long v4, v4

    #@3d
    and-long/2addr v4, v6

    #@3e
    sub-long/2addr v2, v4

    #@3f
    add-long/2addr v0, v2

    #@40
    .line 1246
    add-int/lit8 v2, p5, 0x2

    #@42
    long-to-int v3, v0

    #@43
    aput v3, p4, v2

    #@45
    .line 1247
    shr-long/2addr v0, v8

    #@46
    .line 1248
    add-int/lit8 v2, p1, 0x3

    #@48
    aget v2, p0, v2

    #@4a
    int-to-long v2, v2

    #@4b
    and-long/2addr v2, v6

    #@4c
    add-int/lit8 v4, p3, 0x3

    #@4e
    aget v4, p2, v4

    #@50
    int-to-long v4, v4

    #@51
    and-long/2addr v4, v6

    #@52
    sub-long/2addr v2, v4

    #@53
    add-long/2addr v0, v2

    #@54
    .line 1249
    add-int/lit8 v2, p5, 0x3

    #@56
    long-to-int v3, v0

    #@57
    aput v3, p4, v2

    #@59
    .line 1250
    shr-long/2addr v0, v8

    #@5a
    .line 1251
    add-int/lit8 v2, p1, 0x4

    #@5c
    aget v2, p0, v2

    #@5e
    int-to-long v2, v2

    #@5f
    and-long/2addr v2, v6

    #@60
    add-int/lit8 v4, p3, 0x4

    #@62
    aget v4, p2, v4

    #@64
    int-to-long v4, v4

    #@65
    and-long/2addr v4, v6

    #@66
    sub-long/2addr v2, v4

    #@67
    add-long/2addr v0, v2

    #@68
    .line 1252
    add-int/lit8 v2, p5, 0x4

    #@6a
    long-to-int v3, v0

    #@6b
    aput v3, p4, v2

    #@6d
    .line 1253
    shr-long/2addr v0, v8

    #@6e
    .line 1254
    add-int/lit8 v2, p1, 0x5

    #@70
    aget v2, p0, v2

    #@72
    int-to-long v2, v2

    #@73
    and-long/2addr v2, v6

    #@74
    add-int/lit8 v4, p3, 0x5

    #@76
    aget v4, p2, v4

    #@78
    int-to-long v4, v4

    #@79
    and-long/2addr v4, v6

    #@7a
    sub-long/2addr v2, v4

    #@7b
    add-long/2addr v0, v2

    #@7c
    .line 1255
    add-int/lit8 v2, p5, 0x5

    #@7e
    long-to-int v3, v0

    #@7f
    aput v3, p4, v2

    #@81
    .line 1256
    shr-long/2addr v0, v8

    #@82
    .line 1257
    add-int/lit8 v2, p1, 0x6

    #@84
    aget v2, p0, v2

    #@86
    int-to-long v2, v2

    #@87
    and-long/2addr v2, v6

    #@88
    add-int/lit8 v4, p3, 0x6

    #@8a
    aget v4, p2, v4

    #@8c
    int-to-long v4, v4

    #@8d
    and-long/2addr v4, v6

    #@8e
    sub-long/2addr v2, v4

    #@8f
    add-long/2addr v0, v2

    #@90
    .line 1258
    add-int/lit8 v2, p5, 0x6

    #@92
    long-to-int v3, v0

    #@93
    aput v3, p4, v2

    #@95
    .line 1259
    shr-long/2addr v0, v8

    #@96
    .line 1260
    add-int/lit8 v2, p1, 0x7

    #@98
    aget v2, p0, v2

    #@9a
    int-to-long v2, v2

    #@9b
    and-long/2addr v2, v6

    #@9c
    add-int/lit8 v4, p3, 0x7

    #@9e
    aget v4, p2, v4

    #@a0
    int-to-long v4, v4

    #@a1
    and-long/2addr v4, v6

    #@a2
    sub-long/2addr v2, v4

    #@a3
    add-long/2addr v0, v2

    #@a4
    .line 1261
    add-int/lit8 v2, p5, 0x7

    #@a6
    long-to-int v3, v0

    #@a7
    aput v3, p4, v2

    #@a9
    .line 1262
    shr-long/2addr v0, v8

    #@aa
    .line 1263
    long-to-int v2, v0

    #@ab
    return v2
.end method

.method public static sub([I[I[I)I
    .locals 12
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    #@0
    .prologue
    const/4 v11, 0x2

    #@1
    const/4 v10, 0x1

    #@2
    const/4 v9, 0x0

    #@3
    const/16 v8, 0x20

    #@5
    const-wide v6, 0xffffffffL

    #@a
    .line 1209
    aget v2, p0, v9

    #@c
    int-to-long v2, v2

    #@d
    and-long/2addr v2, v6

    #@e
    aget v4, p1, v9

    #@10
    int-to-long v4, v4

    #@11
    and-long/2addr v4, v6

    #@12
    sub-long/2addr v2, v4

    #@13
    .line 1208
    const-wide/16 v4, 0x0

    #@15
    .line 1209
    add-long v0, v4, v2

    #@17
    .line 1210
    .local v0, "c":J
    long-to-int v2, v0

    #@18
    aput v2, p2, v9

    #@1a
    .line 1211
    shr-long/2addr v0, v8

    #@1b
    .line 1212
    aget v2, p0, v10

    #@1d
    int-to-long v2, v2

    #@1e
    and-long/2addr v2, v6

    #@1f
    aget v4, p1, v10

    #@21
    int-to-long v4, v4

    #@22
    and-long/2addr v4, v6

    #@23
    sub-long/2addr v2, v4

    #@24
    add-long/2addr v0, v2

    #@25
    .line 1213
    long-to-int v2, v0

    #@26
    aput v2, p2, v10

    #@28
    .line 1214
    shr-long/2addr v0, v8

    #@29
    .line 1215
    aget v2, p0, v11

    #@2b
    int-to-long v2, v2

    #@2c
    and-long/2addr v2, v6

    #@2d
    aget v4, p1, v11

    #@2f
    int-to-long v4, v4

    #@30
    and-long/2addr v4, v6

    #@31
    sub-long/2addr v2, v4

    #@32
    add-long/2addr v0, v2

    #@33
    .line 1216
    long-to-int v2, v0

    #@34
    aput v2, p2, v11

    #@36
    .line 1217
    shr-long/2addr v0, v8

    #@37
    .line 1218
    const/4 v2, 0x3

    #@38
    aget v2, p0, v2

    #@3a
    int-to-long v2, v2

    #@3b
    and-long/2addr v2, v6

    #@3c
    const/4 v4, 0x3

    #@3d
    aget v4, p1, v4

    #@3f
    int-to-long v4, v4

    #@40
    and-long/2addr v4, v6

    #@41
    sub-long/2addr v2, v4

    #@42
    add-long/2addr v0, v2

    #@43
    .line 1219
    long-to-int v2, v0

    #@44
    const/4 v3, 0x3

    #@45
    aput v2, p2, v3

    #@47
    .line 1220
    shr-long/2addr v0, v8

    #@48
    .line 1221
    const/4 v2, 0x4

    #@49
    aget v2, p0, v2

    #@4b
    int-to-long v2, v2

    #@4c
    and-long/2addr v2, v6

    #@4d
    const/4 v4, 0x4

    #@4e
    aget v4, p1, v4

    #@50
    int-to-long v4, v4

    #@51
    and-long/2addr v4, v6

    #@52
    sub-long/2addr v2, v4

    #@53
    add-long/2addr v0, v2

    #@54
    .line 1222
    long-to-int v2, v0

    #@55
    const/4 v3, 0x4

    #@56
    aput v2, p2, v3

    #@58
    .line 1223
    shr-long/2addr v0, v8

    #@59
    .line 1224
    const/4 v2, 0x5

    #@5a
    aget v2, p0, v2

    #@5c
    int-to-long v2, v2

    #@5d
    and-long/2addr v2, v6

    #@5e
    const/4 v4, 0x5

    #@5f
    aget v4, p1, v4

    #@61
    int-to-long v4, v4

    #@62
    and-long/2addr v4, v6

    #@63
    sub-long/2addr v2, v4

    #@64
    add-long/2addr v0, v2

    #@65
    .line 1225
    long-to-int v2, v0

    #@66
    const/4 v3, 0x5

    #@67
    aput v2, p2, v3

    #@69
    .line 1226
    shr-long/2addr v0, v8

    #@6a
    .line 1227
    const/4 v2, 0x6

    #@6b
    aget v2, p0, v2

    #@6d
    int-to-long v2, v2

    #@6e
    and-long/2addr v2, v6

    #@6f
    const/4 v4, 0x6

    #@70
    aget v4, p1, v4

    #@72
    int-to-long v4, v4

    #@73
    and-long/2addr v4, v6

    #@74
    sub-long/2addr v2, v4

    #@75
    add-long/2addr v0, v2

    #@76
    .line 1228
    long-to-int v2, v0

    #@77
    const/4 v3, 0x6

    #@78
    aput v2, p2, v3

    #@7a
    .line 1229
    shr-long/2addr v0, v8

    #@7b
    .line 1230
    const/4 v2, 0x7

    #@7c
    aget v2, p0, v2

    #@7e
    int-to-long v2, v2

    #@7f
    and-long/2addr v2, v6

    #@80
    const/4 v4, 0x7

    #@81
    aget v4, p1, v4

    #@83
    int-to-long v4, v4

    #@84
    and-long/2addr v4, v6

    #@85
    sub-long/2addr v2, v4

    #@86
    add-long/2addr v0, v2

    #@87
    .line 1231
    long-to-int v2, v0

    #@88
    const/4 v3, 0x7

    #@89
    aput v2, p2, v3

    #@8b
    .line 1232
    shr-long/2addr v0, v8

    #@8c
    .line 1233
    long-to-int v2, v0

    #@8d
    return v2
.end method

.method public static subBothFrom([I[I[I)I
    .locals 12
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    #@0
    .prologue
    const/4 v11, 0x2

    #@1
    const/4 v10, 0x1

    #@2
    const/4 v9, 0x0

    #@3
    const/16 v8, 0x20

    #@5
    const-wide v6, 0xffffffffL

    #@a
    .line 1269
    aget v2, p2, v9

    #@c
    int-to-long v2, v2

    #@d
    and-long/2addr v2, v6

    #@e
    aget v4, p0, v9

    #@10
    int-to-long v4, v4

    #@11
    and-long/2addr v4, v6

    #@12
    sub-long/2addr v2, v4

    #@13
    aget v4, p1, v9

    #@15
    int-to-long v4, v4

    #@16
    and-long/2addr v4, v6

    #@17
    sub-long/2addr v2, v4

    #@18
    .line 1268
    const-wide/16 v4, 0x0

    #@1a
    .line 1269
    add-long v0, v4, v2

    #@1c
    .line 1270
    .local v0, "c":J
    long-to-int v2, v0

    #@1d
    aput v2, p2, v9

    #@1f
    .line 1271
    shr-long/2addr v0, v8

    #@20
    .line 1272
    aget v2, p2, v10

    #@22
    int-to-long v2, v2

    #@23
    and-long/2addr v2, v6

    #@24
    aget v4, p0, v10

    #@26
    int-to-long v4, v4

    #@27
    and-long/2addr v4, v6

    #@28
    sub-long/2addr v2, v4

    #@29
    aget v4, p1, v10

    #@2b
    int-to-long v4, v4

    #@2c
    and-long/2addr v4, v6

    #@2d
    sub-long/2addr v2, v4

    #@2e
    add-long/2addr v0, v2

    #@2f
    .line 1273
    long-to-int v2, v0

    #@30
    aput v2, p2, v10

    #@32
    .line 1274
    shr-long/2addr v0, v8

    #@33
    .line 1275
    aget v2, p2, v11

    #@35
    int-to-long v2, v2

    #@36
    and-long/2addr v2, v6

    #@37
    aget v4, p0, v11

    #@39
    int-to-long v4, v4

    #@3a
    and-long/2addr v4, v6

    #@3b
    sub-long/2addr v2, v4

    #@3c
    aget v4, p1, v11

    #@3e
    int-to-long v4, v4

    #@3f
    and-long/2addr v4, v6

    #@40
    sub-long/2addr v2, v4

    #@41
    add-long/2addr v0, v2

    #@42
    .line 1276
    long-to-int v2, v0

    #@43
    aput v2, p2, v11

    #@45
    .line 1277
    shr-long/2addr v0, v8

    #@46
    .line 1278
    const/4 v2, 0x3

    #@47
    aget v2, p2, v2

    #@49
    int-to-long v2, v2

    #@4a
    and-long/2addr v2, v6

    #@4b
    const/4 v4, 0x3

    #@4c
    aget v4, p0, v4

    #@4e
    int-to-long v4, v4

    #@4f
    and-long/2addr v4, v6

    #@50
    sub-long/2addr v2, v4

    #@51
    const/4 v4, 0x3

    #@52
    aget v4, p1, v4

    #@54
    int-to-long v4, v4

    #@55
    and-long/2addr v4, v6

    #@56
    sub-long/2addr v2, v4

    #@57
    add-long/2addr v0, v2

    #@58
    .line 1279
    long-to-int v2, v0

    #@59
    const/4 v3, 0x3

    #@5a
    aput v2, p2, v3

    #@5c
    .line 1280
    shr-long/2addr v0, v8

    #@5d
    .line 1281
    const/4 v2, 0x4

    #@5e
    aget v2, p2, v2

    #@60
    int-to-long v2, v2

    #@61
    and-long/2addr v2, v6

    #@62
    const/4 v4, 0x4

    #@63
    aget v4, p0, v4

    #@65
    int-to-long v4, v4

    #@66
    and-long/2addr v4, v6

    #@67
    sub-long/2addr v2, v4

    #@68
    const/4 v4, 0x4

    #@69
    aget v4, p1, v4

    #@6b
    int-to-long v4, v4

    #@6c
    and-long/2addr v4, v6

    #@6d
    sub-long/2addr v2, v4

    #@6e
    add-long/2addr v0, v2

    #@6f
    .line 1282
    long-to-int v2, v0

    #@70
    const/4 v3, 0x4

    #@71
    aput v2, p2, v3

    #@73
    .line 1283
    shr-long/2addr v0, v8

    #@74
    .line 1284
    const/4 v2, 0x5

    #@75
    aget v2, p2, v2

    #@77
    int-to-long v2, v2

    #@78
    and-long/2addr v2, v6

    #@79
    const/4 v4, 0x5

    #@7a
    aget v4, p0, v4

    #@7c
    int-to-long v4, v4

    #@7d
    and-long/2addr v4, v6

    #@7e
    sub-long/2addr v2, v4

    #@7f
    const/4 v4, 0x5

    #@80
    aget v4, p1, v4

    #@82
    int-to-long v4, v4

    #@83
    and-long/2addr v4, v6

    #@84
    sub-long/2addr v2, v4

    #@85
    add-long/2addr v0, v2

    #@86
    .line 1285
    long-to-int v2, v0

    #@87
    const/4 v3, 0x5

    #@88
    aput v2, p2, v3

    #@8a
    .line 1286
    shr-long/2addr v0, v8

    #@8b
    .line 1287
    const/4 v2, 0x6

    #@8c
    aget v2, p2, v2

    #@8e
    int-to-long v2, v2

    #@8f
    and-long/2addr v2, v6

    #@90
    const/4 v4, 0x6

    #@91
    aget v4, p0, v4

    #@93
    int-to-long v4, v4

    #@94
    and-long/2addr v4, v6

    #@95
    sub-long/2addr v2, v4

    #@96
    const/4 v4, 0x6

    #@97
    aget v4, p1, v4

    #@99
    int-to-long v4, v4

    #@9a
    and-long/2addr v4, v6

    #@9b
    sub-long/2addr v2, v4

    #@9c
    add-long/2addr v0, v2

    #@9d
    .line 1288
    long-to-int v2, v0

    #@9e
    const/4 v3, 0x6

    #@9f
    aput v2, p2, v3

    #@a1
    .line 1289
    shr-long/2addr v0, v8

    #@a2
    .line 1290
    const/4 v2, 0x7

    #@a3
    aget v2, p2, v2

    #@a5
    int-to-long v2, v2

    #@a6
    and-long/2addr v2, v6

    #@a7
    const/4 v4, 0x7

    #@a8
    aget v4, p0, v4

    #@aa
    int-to-long v4, v4

    #@ab
    and-long/2addr v4, v6

    #@ac
    sub-long/2addr v2, v4

    #@ad
    const/4 v4, 0x7

    #@ae
    aget v4, p1, v4

    #@b0
    int-to-long v4, v4

    #@b1
    and-long/2addr v4, v6

    #@b2
    sub-long/2addr v2, v4

    #@b3
    add-long/2addr v0, v2

    #@b4
    .line 1291
    long-to-int v2, v0

    #@b5
    const/4 v3, 0x7

    #@b6
    aput v2, p2, v3

    #@b8
    .line 1292
    shr-long/2addr v0, v8

    #@b9
    .line 1293
    long-to-int v2, v0

    #@ba
    return v2
.end method

.method public static subFrom([II[II)I
    .locals 9
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I

    #@0
    .prologue
    const/16 v8, 0x20

    #@2
    const-wide v6, 0xffffffffL

    #@7
    .line 1329
    add-int/lit8 v2, p3, 0x0

    #@9
    aget v2, p2, v2

    #@b
    int-to-long v2, v2

    #@c
    and-long/2addr v2, v6

    #@d
    add-int/lit8 v4, p1, 0x0

    #@f
    aget v4, p0, v4

    #@11
    int-to-long v4, v4

    #@12
    and-long/2addr v4, v6

    #@13
    sub-long/2addr v2, v4

    #@14
    .line 1328
    const-wide/16 v4, 0x0

    #@16
    .line 1329
    add-long v0, v4, v2

    #@18
    .line 1330
    .local v0, "c":J
    add-int/lit8 v2, p3, 0x0

    #@1a
    long-to-int v3, v0

    #@1b
    aput v3, p2, v2

    #@1d
    .line 1331
    shr-long/2addr v0, v8

    #@1e
    .line 1332
    add-int/lit8 v2, p3, 0x1

    #@20
    aget v2, p2, v2

    #@22
    int-to-long v2, v2

    #@23
    and-long/2addr v2, v6

    #@24
    add-int/lit8 v4, p1, 0x1

    #@26
    aget v4, p0, v4

    #@28
    int-to-long v4, v4

    #@29
    and-long/2addr v4, v6

    #@2a
    sub-long/2addr v2, v4

    #@2b
    add-long/2addr v0, v2

    #@2c
    .line 1333
    add-int/lit8 v2, p3, 0x1

    #@2e
    long-to-int v3, v0

    #@2f
    aput v3, p2, v2

    #@31
    .line 1334
    shr-long/2addr v0, v8

    #@32
    .line 1335
    add-int/lit8 v2, p3, 0x2

    #@34
    aget v2, p2, v2

    #@36
    int-to-long v2, v2

    #@37
    and-long/2addr v2, v6

    #@38
    add-int/lit8 v4, p1, 0x2

    #@3a
    aget v4, p0, v4

    #@3c
    int-to-long v4, v4

    #@3d
    and-long/2addr v4, v6

    #@3e
    sub-long/2addr v2, v4

    #@3f
    add-long/2addr v0, v2

    #@40
    .line 1336
    add-int/lit8 v2, p3, 0x2

    #@42
    long-to-int v3, v0

    #@43
    aput v3, p2, v2

    #@45
    .line 1337
    shr-long/2addr v0, v8

    #@46
    .line 1338
    add-int/lit8 v2, p3, 0x3

    #@48
    aget v2, p2, v2

    #@4a
    int-to-long v2, v2

    #@4b
    and-long/2addr v2, v6

    #@4c
    add-int/lit8 v4, p1, 0x3

    #@4e
    aget v4, p0, v4

    #@50
    int-to-long v4, v4

    #@51
    and-long/2addr v4, v6

    #@52
    sub-long/2addr v2, v4

    #@53
    add-long/2addr v0, v2

    #@54
    .line 1339
    add-int/lit8 v2, p3, 0x3

    #@56
    long-to-int v3, v0

    #@57
    aput v3, p2, v2

    #@59
    .line 1340
    shr-long/2addr v0, v8

    #@5a
    .line 1341
    add-int/lit8 v2, p3, 0x4

    #@5c
    aget v2, p2, v2

    #@5e
    int-to-long v2, v2

    #@5f
    and-long/2addr v2, v6

    #@60
    add-int/lit8 v4, p1, 0x4

    #@62
    aget v4, p0, v4

    #@64
    int-to-long v4, v4

    #@65
    and-long/2addr v4, v6

    #@66
    sub-long/2addr v2, v4

    #@67
    add-long/2addr v0, v2

    #@68
    .line 1342
    add-int/lit8 v2, p3, 0x4

    #@6a
    long-to-int v3, v0

    #@6b
    aput v3, p2, v2

    #@6d
    .line 1343
    shr-long/2addr v0, v8

    #@6e
    .line 1344
    add-int/lit8 v2, p3, 0x5

    #@70
    aget v2, p2, v2

    #@72
    int-to-long v2, v2

    #@73
    and-long/2addr v2, v6

    #@74
    add-int/lit8 v4, p1, 0x5

    #@76
    aget v4, p0, v4

    #@78
    int-to-long v4, v4

    #@79
    and-long/2addr v4, v6

    #@7a
    sub-long/2addr v2, v4

    #@7b
    add-long/2addr v0, v2

    #@7c
    .line 1345
    add-int/lit8 v2, p3, 0x5

    #@7e
    long-to-int v3, v0

    #@7f
    aput v3, p2, v2

    #@81
    .line 1346
    shr-long/2addr v0, v8

    #@82
    .line 1347
    add-int/lit8 v2, p3, 0x6

    #@84
    aget v2, p2, v2

    #@86
    int-to-long v2, v2

    #@87
    and-long/2addr v2, v6

    #@88
    add-int/lit8 v4, p1, 0x6

    #@8a
    aget v4, p0, v4

    #@8c
    int-to-long v4, v4

    #@8d
    and-long/2addr v4, v6

    #@8e
    sub-long/2addr v2, v4

    #@8f
    add-long/2addr v0, v2

    #@90
    .line 1348
    add-int/lit8 v2, p3, 0x6

    #@92
    long-to-int v3, v0

    #@93
    aput v3, p2, v2

    #@95
    .line 1349
    shr-long/2addr v0, v8

    #@96
    .line 1350
    add-int/lit8 v2, p3, 0x7

    #@98
    aget v2, p2, v2

    #@9a
    int-to-long v2, v2

    #@9b
    and-long/2addr v2, v6

    #@9c
    add-int/lit8 v4, p1, 0x7

    #@9e
    aget v4, p0, v4

    #@a0
    int-to-long v4, v4

    #@a1
    and-long/2addr v4, v6

    #@a2
    sub-long/2addr v2, v4

    #@a3
    add-long/2addr v0, v2

    #@a4
    .line 1351
    add-int/lit8 v2, p3, 0x7

    #@a6
    long-to-int v3, v0

    #@a7
    aput v3, p2, v2

    #@a9
    .line 1352
    shr-long/2addr v0, v8

    #@aa
    .line 1353
    long-to-int v2, v0

    #@ab
    return v2
.end method

.method public static subFrom([I[I)I
    .locals 12
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    #@0
    .prologue
    const/4 v11, 0x2

    #@1
    const/4 v10, 0x1

    #@2
    const/4 v9, 0x0

    #@3
    const/16 v8, 0x20

    #@5
    const-wide v6, 0xffffffffL

    #@a
    .line 1299
    aget v2, p1, v9

    #@c
    int-to-long v2, v2

    #@d
    and-long/2addr v2, v6

    #@e
    aget v4, p0, v9

    #@10
    int-to-long v4, v4

    #@11
    and-long/2addr v4, v6

    #@12
    sub-long/2addr v2, v4

    #@13
    .line 1298
    const-wide/16 v4, 0x0

    #@15
    .line 1299
    add-long v0, v4, v2

    #@17
    .line 1300
    .local v0, "c":J
    long-to-int v2, v0

    #@18
    aput v2, p1, v9

    #@1a
    .line 1301
    shr-long/2addr v0, v8

    #@1b
    .line 1302
    aget v2, p1, v10

    #@1d
    int-to-long v2, v2

    #@1e
    and-long/2addr v2, v6

    #@1f
    aget v4, p0, v10

    #@21
    int-to-long v4, v4

    #@22
    and-long/2addr v4, v6

    #@23
    sub-long/2addr v2, v4

    #@24
    add-long/2addr v0, v2

    #@25
    .line 1303
    long-to-int v2, v0

    #@26
    aput v2, p1, v10

    #@28
    .line 1304
    shr-long/2addr v0, v8

    #@29
    .line 1305
    aget v2, p1, v11

    #@2b
    int-to-long v2, v2

    #@2c
    and-long/2addr v2, v6

    #@2d
    aget v4, p0, v11

    #@2f
    int-to-long v4, v4

    #@30
    and-long/2addr v4, v6

    #@31
    sub-long/2addr v2, v4

    #@32
    add-long/2addr v0, v2

    #@33
    .line 1306
    long-to-int v2, v0

    #@34
    aput v2, p1, v11

    #@36
    .line 1307
    shr-long/2addr v0, v8

    #@37
    .line 1308
    const/4 v2, 0x3

    #@38
    aget v2, p1, v2

    #@3a
    int-to-long v2, v2

    #@3b
    and-long/2addr v2, v6

    #@3c
    const/4 v4, 0x3

    #@3d
    aget v4, p0, v4

    #@3f
    int-to-long v4, v4

    #@40
    and-long/2addr v4, v6

    #@41
    sub-long/2addr v2, v4

    #@42
    add-long/2addr v0, v2

    #@43
    .line 1309
    long-to-int v2, v0

    #@44
    const/4 v3, 0x3

    #@45
    aput v2, p1, v3

    #@47
    .line 1310
    shr-long/2addr v0, v8

    #@48
    .line 1311
    const/4 v2, 0x4

    #@49
    aget v2, p1, v2

    #@4b
    int-to-long v2, v2

    #@4c
    and-long/2addr v2, v6

    #@4d
    const/4 v4, 0x4

    #@4e
    aget v4, p0, v4

    #@50
    int-to-long v4, v4

    #@51
    and-long/2addr v4, v6

    #@52
    sub-long/2addr v2, v4

    #@53
    add-long/2addr v0, v2

    #@54
    .line 1312
    long-to-int v2, v0

    #@55
    const/4 v3, 0x4

    #@56
    aput v2, p1, v3

    #@58
    .line 1313
    shr-long/2addr v0, v8

    #@59
    .line 1314
    const/4 v2, 0x5

    #@5a
    aget v2, p1, v2

    #@5c
    int-to-long v2, v2

    #@5d
    and-long/2addr v2, v6

    #@5e
    const/4 v4, 0x5

    #@5f
    aget v4, p0, v4

    #@61
    int-to-long v4, v4

    #@62
    and-long/2addr v4, v6

    #@63
    sub-long/2addr v2, v4

    #@64
    add-long/2addr v0, v2

    #@65
    .line 1315
    long-to-int v2, v0

    #@66
    const/4 v3, 0x5

    #@67
    aput v2, p1, v3

    #@69
    .line 1316
    shr-long/2addr v0, v8

    #@6a
    .line 1317
    const/4 v2, 0x6

    #@6b
    aget v2, p1, v2

    #@6d
    int-to-long v2, v2

    #@6e
    and-long/2addr v2, v6

    #@6f
    const/4 v4, 0x6

    #@70
    aget v4, p0, v4

    #@72
    int-to-long v4, v4

    #@73
    and-long/2addr v4, v6

    #@74
    sub-long/2addr v2, v4

    #@75
    add-long/2addr v0, v2

    #@76
    .line 1318
    long-to-int v2, v0

    #@77
    const/4 v3, 0x6

    #@78
    aput v2, p1, v3

    #@7a
    .line 1319
    shr-long/2addr v0, v8

    #@7b
    .line 1320
    const/4 v2, 0x7

    #@7c
    aget v2, p1, v2

    #@7e
    int-to-long v2, v2

    #@7f
    and-long/2addr v2, v6

    #@80
    const/4 v4, 0x7

    #@81
    aget v4, p0, v4

    #@83
    int-to-long v4, v4

    #@84
    and-long/2addr v4, v6

    #@85
    sub-long/2addr v2, v4

    #@86
    add-long/2addr v0, v2

    #@87
    .line 1321
    long-to-int v2, v0

    #@88
    const/4 v3, 0x7

    #@89
    aput v2, p1, v3

    #@8b
    .line 1322
    shr-long/2addr v0, v8

    #@8c
    .line 1323
    long-to-int v2, v0

    #@8d
    return v2
.end method

.method public static toBigInteger([I)Ljava/math/BigInteger;
    .locals 5
    .param p0, "x"    # [I

    #@0
    .prologue
    .line 1358
    const/16 v3, 0x20

    #@2
    new-array v0, v3, [B

    #@4
    .line 1359
    .local v0, "bs":[B
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    const/16 v3, 0x8

    #@7
    if-ge v1, v3, :cond_1

    #@9
    .line 1361
    aget v2, p0, v1

    #@b
    .line 1362
    .local v2, "x_i":I
    if-eqz v2, :cond_0

    #@d
    .line 1364
    rsub-int/lit8 v3, v1, 0x7

    #@f
    shl-int/lit8 v3, v3, 0x2

    #@11
    invoke-static {v2, v0, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@14
    .line 1359
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 1367
    .end local v2    # "x_i":I
    :cond_1
    new-instance v3, Ljava/math/BigInteger;

    #@19
    const/4 v4, 0x1

    #@1a
    invoke-direct {v3, v4, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    #@1d
    return-object v3
.end method

.method public static toBigInteger64([J)Ljava/math/BigInteger;
    .locals 6
    .param p0, "x"    # [J

    #@0
    .prologue
    .line 1372
    const/16 v4, 0x20

    #@2
    new-array v0, v4, [B

    #@4
    .line 1373
    .local v0, "bs":[B
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    const/4 v4, 0x4

    #@6
    if-ge v1, v4, :cond_1

    #@8
    .line 1375
    aget-wide v2, p0, v1

    #@a
    .line 1376
    .local v2, "x_i":J
    const-wide/16 v4, 0x0

    #@c
    cmp-long v4, v2, v4

    #@e
    if-eqz v4, :cond_0

    #@10
    .line 1378
    rsub-int/lit8 v4, v1, 0x3

    #@12
    shl-int/lit8 v4, v4, 0x3

    #@14
    invoke-static {v2, v3, v0, v4}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@17
    .line 1373
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 1381
    .end local v2    # "x_i":J
    :cond_1
    new-instance v4, Ljava/math/BigInteger;

    #@1c
    const/4 v5, 0x1

    #@1d
    invoke-direct {v4, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    #@20
    return-object v4
.end method

.method public static zero([I)V
    .locals 2
    .param p0, "z"    # [I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1386
    aput v1, p0, v1

    #@3
    .line 1387
    const/4 v0, 0x1

    #@4
    aput v1, p0, v0

    #@6
    .line 1388
    const/4 v0, 0x2

    #@7
    aput v1, p0, v0

    #@9
    .line 1389
    const/4 v0, 0x3

    #@a
    aput v1, p0, v0

    #@c
    .line 1390
    const/4 v0, 0x4

    #@d
    aput v1, p0, v0

    #@f
    .line 1391
    const/4 v0, 0x5

    #@10
    aput v1, p0, v0

    #@12
    .line 1392
    const/4 v0, 0x6

    #@13
    aput v1, p0, v0

    #@15
    .line 1393
    const/4 v0, 0x7

    #@16
    aput v1, p0, v0

    #@18
    .line 1384
    return-void
.end method
