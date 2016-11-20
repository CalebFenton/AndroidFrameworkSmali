.class public abstract Lcom/android/org/bouncycastle/math/raw/Nat224;
.super Ljava/lang/Object;
.source "Nat224.java"


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
    .line 41
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
    .line 40
    const-wide/16 v4, 0x0

    #@16
    .line 41
    add-long v0, v4, v2

    #@18
    .line 42
    .local v0, "c":J
    add-int/lit8 v2, p5, 0x0

    #@1a
    long-to-int v3, v0

    #@1b
    aput v3, p4, v2

    #@1d
    .line 43
    ushr-long/2addr v0, v8

    #@1e
    .line 44
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
    .line 45
    add-int/lit8 v2, p5, 0x1

    #@2e
    long-to-int v3, v0

    #@2f
    aput v3, p4, v2

    #@31
    .line 46
    ushr-long/2addr v0, v8

    #@32
    .line 47
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
    .line 48
    add-int/lit8 v2, p5, 0x2

    #@42
    long-to-int v3, v0

    #@43
    aput v3, p4, v2

    #@45
    .line 49
    ushr-long/2addr v0, v8

    #@46
    .line 50
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
    .line 51
    add-int/lit8 v2, p5, 0x3

    #@56
    long-to-int v3, v0

    #@57
    aput v3, p4, v2

    #@59
    .line 52
    ushr-long/2addr v0, v8

    #@5a
    .line 53
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
    .line 54
    add-int/lit8 v2, p5, 0x4

    #@6a
    long-to-int v3, v0

    #@6b
    aput v3, p4, v2

    #@6d
    .line 55
    ushr-long/2addr v0, v8

    #@6e
    .line 56
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
    .line 57
    add-int/lit8 v2, p5, 0x5

    #@7e
    long-to-int v3, v0

    #@7f
    aput v3, p4, v2

    #@81
    .line 58
    ushr-long/2addr v0, v8

    #@82
    .line 59
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
    .line 60
    add-int/lit8 v2, p5, 0x6

    #@92
    long-to-int v3, v0

    #@93
    aput v3, p4, v2

    #@95
    .line 61
    ushr-long/2addr v0, v8

    #@96
    .line 62
    long-to-int v2, v0

    #@97
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
    long-to-int v2, v0

    #@7c
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
    .line 95
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
    .line 94
    const-wide/16 v4, 0x0

    #@1d
    .line 95
    add-long v0, v4, v2

    #@1f
    .line 96
    .local v0, "c":J
    add-int/lit8 v2, p5, 0x0

    #@21
    long-to-int v3, v0

    #@22
    aput v3, p4, v2

    #@24
    .line 97
    ushr-long/2addr v0, v8

    #@25
    .line 98
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
    .line 99
    add-int/lit8 v2, p5, 0x1

    #@3c
    long-to-int v3, v0

    #@3d
    aput v3, p4, v2

    #@3f
    .line 100
    ushr-long/2addr v0, v8

    #@40
    .line 101
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
    .line 102
    add-int/lit8 v2, p5, 0x2

    #@57
    long-to-int v3, v0

    #@58
    aput v3, p4, v2

    #@5a
    .line 103
    ushr-long/2addr v0, v8

    #@5b
    .line 104
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
    .line 105
    add-int/lit8 v2, p5, 0x3

    #@72
    long-to-int v3, v0

    #@73
    aput v3, p4, v2

    #@75
    .line 106
    ushr-long/2addr v0, v8

    #@76
    .line 107
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
    .line 108
    add-int/lit8 v2, p5, 0x4

    #@8d
    long-to-int v3, v0

    #@8e
    aput v3, p4, v2

    #@90
    .line 109
    ushr-long/2addr v0, v8

    #@91
    .line 110
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
    .line 111
    add-int/lit8 v2, p5, 0x5

    #@a8
    long-to-int v3, v0

    #@a9
    aput v3, p4, v2

    #@ab
    .line 112
    ushr-long/2addr v0, v8

    #@ac
    .line 113
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
    .line 114
    add-int/lit8 v2, p5, 0x6

    #@c3
    long-to-int v3, v0

    #@c4
    aput v3, p4, v2

    #@c6
    .line 115
    ushr-long/2addr v0, v8

    #@c7
    .line 116
    long-to-int v2, v0

    #@c8
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
    .line 68
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
    .line 67
    const-wide/16 v4, 0x0

    #@1a
    .line 68
    add-long v0, v4, v2

    #@1c
    .line 69
    .local v0, "c":J
    long-to-int v2, v0

    #@1d
    aput v2, p2, v9

    #@1f
    .line 70
    ushr-long/2addr v0, v8

    #@20
    .line 71
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
    .line 72
    long-to-int v2, v0

    #@30
    aput v2, p2, v10

    #@32
    .line 73
    ushr-long/2addr v0, v8

    #@33
    .line 74
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
    .line 75
    long-to-int v2, v0

    #@43
    aput v2, p2, v11

    #@45
    .line 76
    ushr-long/2addr v0, v8

    #@46
    .line 77
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
    .line 78
    long-to-int v2, v0

    #@59
    const/4 v3, 0x3

    #@5a
    aput v2, p2, v3

    #@5c
    .line 79
    ushr-long/2addr v0, v8

    #@5d
    .line 80
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
    .line 81
    long-to-int v2, v0

    #@70
    const/4 v3, 0x4

    #@71
    aput v2, p2, v3

    #@73
    .line 82
    ushr-long/2addr v0, v8

    #@74
    .line 83
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
    .line 84
    long-to-int v2, v0

    #@87
    const/4 v3, 0x5

    #@88
    aput v2, p2, v3

    #@8a
    .line 85
    ushr-long/2addr v0, v8

    #@8b
    .line 86
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
    .line 87
    long-to-int v2, v0

    #@9e
    const/4 v3, 0x6

    #@9f
    aput v2, p2, v3

    #@a1
    .line 88
    ushr-long/2addr v0, v8

    #@a2
    .line 89
    long-to-int v2, v0

    #@a3
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
    .line 148
    int-to-long v2, p4

    #@8
    and-long v0, v2, v6

    #@a
    .line 149
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
    .line 150
    add-int/lit8 v2, p3, 0x0

    #@1a
    long-to-int v3, v0

    #@1b
    aput v3, p2, v2

    #@1d
    .line 151
    ushr-long/2addr v0, v8

    #@1e
    .line 152
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
    .line 153
    add-int/lit8 v2, p3, 0x1

    #@2e
    long-to-int v3, v0

    #@2f
    aput v3, p2, v2

    #@31
    .line 154
    ushr-long/2addr v0, v8

    #@32
    .line 155
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
    .line 156
    add-int/lit8 v2, p3, 0x2

    #@42
    long-to-int v3, v0

    #@43
    aput v3, p2, v2

    #@45
    .line 157
    ushr-long/2addr v0, v8

    #@46
    .line 158
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
    .line 159
    add-int/lit8 v2, p3, 0x3

    #@56
    long-to-int v3, v0

    #@57
    aput v3, p2, v2

    #@59
    .line 160
    ushr-long/2addr v0, v8

    #@5a
    .line 161
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
    .line 162
    add-int/lit8 v2, p3, 0x4

    #@6a
    long-to-int v3, v0

    #@6b
    aput v3, p2, v2

    #@6d
    .line 163
    ushr-long/2addr v0, v8

    #@6e
    .line 164
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
    .line 165
    add-int/lit8 v2, p3, 0x5

    #@7e
    long-to-int v3, v0

    #@7f
    aput v3, p2, v2

    #@81
    .line 166
    ushr-long/2addr v0, v8

    #@82
    .line 167
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
    .line 168
    add-int/lit8 v2, p3, 0x6

    #@92
    long-to-int v3, v0

    #@93
    aput v3, p2, v2

    #@95
    .line 169
    ushr-long/2addr v0, v8

    #@96
    .line 170
    long-to-int v2, v0

    #@97
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
    .line 122
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
    .line 121
    const-wide/16 v4, 0x0

    #@15
    .line 122
    add-long v0, v4, v2

    #@17
    .line 123
    .local v0, "c":J
    long-to-int v2, v0

    #@18
    aput v2, p1, v9

    #@1a
    .line 124
    ushr-long/2addr v0, v8

    #@1b
    .line 125
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
    .line 126
    long-to-int v2, v0

    #@26
    aput v2, p1, v10

    #@28
    .line 127
    ushr-long/2addr v0, v8

    #@29
    .line 128
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
    .line 129
    long-to-int v2, v0

    #@34
    aput v2, p1, v11

    #@36
    .line 130
    ushr-long/2addr v0, v8

    #@37
    .line 131
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
    .line 132
    long-to-int v2, v0

    #@44
    const/4 v3, 0x3

    #@45
    aput v2, p1, v3

    #@47
    .line 133
    ushr-long/2addr v0, v8

    #@48
    .line 134
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
    .line 135
    long-to-int v2, v0

    #@55
    const/4 v3, 0x4

    #@56
    aput v2, p1, v3

    #@58
    .line 136
    ushr-long/2addr v0, v8

    #@59
    .line 137
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
    .line 138
    long-to-int v2, v0

    #@66
    const/4 v3, 0x5

    #@67
    aput v2, p1, v3

    #@69
    .line 139
    ushr-long/2addr v0, v8

    #@6a
    .line 140
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
    .line 141
    long-to-int v2, v0

    #@77
    const/4 v3, 0x6

    #@78
    aput v2, p1, v3

    #@7a
    .line 142
    ushr-long/2addr v0, v8

    #@7b
    .line 143
    long-to-int v2, v0

    #@7c
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
    .line 176
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
    .line 175
    const-wide/16 v4, 0x0

    #@16
    .line 176
    add-long v0, v4, v2

    #@18
    .line 177
    .local v0, "c":J
    add-int/lit8 v2, p1, 0x0

    #@1a
    long-to-int v3, v0

    #@1b
    aput v3, p0, v2

    #@1d
    .line 178
    add-int/lit8 v2, p3, 0x0

    #@1f
    long-to-int v3, v0

    #@20
    aput v3, p2, v2

    #@22
    .line 179
    ushr-long/2addr v0, v8

    #@23
    .line 180
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
    .line 181
    add-int/lit8 v2, p1, 0x1

    #@33
    long-to-int v3, v0

    #@34
    aput v3, p0, v2

    #@36
    .line 182
    add-int/lit8 v2, p3, 0x1

    #@38
    long-to-int v3, v0

    #@39
    aput v3, p2, v2

    #@3b
    .line 183
    ushr-long/2addr v0, v8

    #@3c
    .line 184
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
    .line 185
    add-int/lit8 v2, p1, 0x2

    #@4c
    long-to-int v3, v0

    #@4d
    aput v3, p0, v2

    #@4f
    .line 186
    add-int/lit8 v2, p3, 0x2

    #@51
    long-to-int v3, v0

    #@52
    aput v3, p2, v2

    #@54
    .line 187
    ushr-long/2addr v0, v8

    #@55
    .line 188
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
    .line 189
    add-int/lit8 v2, p1, 0x3

    #@65
    long-to-int v3, v0

    #@66
    aput v3, p0, v2

    #@68
    .line 190
    add-int/lit8 v2, p3, 0x3

    #@6a
    long-to-int v3, v0

    #@6b
    aput v3, p2, v2

    #@6d
    .line 191
    ushr-long/2addr v0, v8

    #@6e
    .line 192
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
    .line 193
    add-int/lit8 v2, p1, 0x4

    #@7e
    long-to-int v3, v0

    #@7f
    aput v3, p0, v2

    #@81
    .line 194
    add-int/lit8 v2, p3, 0x4

    #@83
    long-to-int v3, v0

    #@84
    aput v3, p2, v2

    #@86
    .line 195
    ushr-long/2addr v0, v8

    #@87
    .line 196
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
    .line 197
    add-int/lit8 v2, p1, 0x5

    #@97
    long-to-int v3, v0

    #@98
    aput v3, p0, v2

    #@9a
    .line 198
    add-int/lit8 v2, p3, 0x5

    #@9c
    long-to-int v3, v0

    #@9d
    aput v3, p2, v2

    #@9f
    .line 199
    ushr-long/2addr v0, v8

    #@a0
    .line 200
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
    .line 201
    add-int/lit8 v2, p1, 0x6

    #@b0
    long-to-int v3, v0

    #@b1
    aput v3, p0, v2

    #@b3
    .line 202
    add-int/lit8 v2, p3, 0x6

    #@b5
    long-to-int v3, v0

    #@b6
    aput v3, p2, v2

    #@b8
    .line 203
    ushr-long/2addr v0, v8

    #@b9
    .line 204
    long-to-int v2, v0

    #@ba
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
    .line 209
    aget v0, p0, v1

    #@7
    aput v0, p1, v1

    #@9
    .line 210
    aget v0, p0, v2

    #@b
    aput v0, p1, v2

    #@d
    .line 211
    aget v0, p0, v3

    #@f
    aput v0, p1, v3

    #@11
    .line 212
    aget v0, p0, v4

    #@13
    aput v0, p1, v4

    #@15
    .line 213
    aget v0, p0, v5

    #@17
    aput v0, p1, v5

    #@19
    .line 214
    const/4 v0, 0x5

    #@1a
    aget v0, p0, v0

    #@1c
    const/4 v1, 0x5

    #@1d
    aput v0, p1, v1

    #@1f
    .line 215
    const/4 v0, 0x6

    #@20
    aget v0, p0, v0

    #@22
    const/4 v1, 0x6

    #@23
    aput v0, p1, v1

    #@25
    .line 207
    return-void
.end method

.method public static create()[I
    .locals 1

    #@0
    .prologue
    .line 220
    const/4 v0, 0x7

    #@1
    new-array v0, v0, [I

    #@3
    return-object v0
.end method

.method public static createExt()[I
    .locals 1

    #@0
    .prologue
    .line 225
    const/16 v0, 0xe

    #@2
    new-array v0, v0, [I

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
    .line 230
    invoke-static {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/raw/Nat224;->gte([II[II)Z

    #@3
    move-result v6

    #@4
    .line 231
    .local v6, "pos":Z
    if-eqz v6, :cond_0

    #@6
    .line 233
    invoke-static/range {p0 .. p5}, Lcom/android/org/bouncycastle/math/raw/Nat224;->sub([II[II[II)I

    #@9
    .line 239
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
    .line 237
    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/raw/Nat224;->sub([II[II[II)I

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
    .line 244
    const/4 v0, 0x6

    #@2
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@4
    .line 246
    aget v1, p0, v0

    #@6
    aget v2, p1, v0

    #@8
    if-eq v1, v2, :cond_0

    #@a
    .line 248
    return v3

    #@b
    .line 244
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@d
    goto :goto_0

    #@e
    .line 251
    :cond_1
    const/4 v1, 0x1

    #@f
    return v1
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 5
    .param p0, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 256
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
    const/16 v4, 0xe0

    #@c
    if-le v3, v4, :cond_1

    #@e
    .line 258
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@10
    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@13
    throw v3

    #@14
    .line 261
    :cond_1
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    #@17
    move-result-object v2

    #@18
    .line 262
    .local v2, "z":[I
    const/4 v0, 0x0

    #@19
    .line 263
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_2

    #@1f
    .line 265
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
    .line 266
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
    .line 268
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
    .line 273
    if-nez p1, :cond_0

    #@3
    .line 275
    aget v2, p0, v3

    #@5
    and-int/lit8 v2, v2, 0x1

    #@7
    return v2

    #@8
    .line 277
    :cond_0
    shr-int/lit8 v1, p1, 0x5

    #@a
    .line 278
    .local v1, "w":I
    if-ltz v1, :cond_1

    #@c
    const/4 v2, 0x7

    #@d
    if-lt v1, v2, :cond_2

    #@f
    .line 280
    :cond_1
    return v3

    #@10
    .line 282
    :cond_2
    and-int/lit8 v0, p1, 0x1f

    #@12
    .line 283
    .local v0, "b":I
    aget v2, p0, v1

    #@14
    ushr-int/2addr v2, v0

    #@15
    and-int/lit8 v2, v2, 0x1

    #@17
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
    .line 302
    const/4 v0, 0x6

    #@5
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@7
    .line 304
    add-int v3, p1, v0

    #@9
    aget v3, p0, v3

    #@b
    xor-int v1, v3, v4

    #@d
    .line 305
    .local v1, "x_i":I
    add-int v3, p3, v0

    #@f
    aget v3, p2, v3

    #@11
    xor-int v2, v3, v4

    #@13
    .line 306
    .local v2, "y_i":I
    if-ge v1, v2, :cond_0

    #@15
    .line 307
    return v5

    #@16
    .line 308
    :cond_0
    if-le v1, v2, :cond_1

    #@18
    .line 309
    return v6

    #@19
    .line 302
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@1b
    goto :goto_0

    #@1c
    .line 311
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
    .line 288
    const/4 v0, 0x6

    #@5
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@7
    .line 290
    aget v3, p0, v0

    #@9
    xor-int v1, v3, v4

    #@b
    .line 291
    .local v1, "x_i":I
    aget v3, p1, v0

    #@d
    xor-int v2, v3, v4

    #@f
    .line 292
    .local v2, "y_i":I
    if-ge v1, v2, :cond_0

    #@11
    .line 293
    return v5

    #@12
    .line 294
    :cond_0
    if-le v1, v2, :cond_1

    #@14
    .line 295
    return v6

    #@15
    .line 288
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 297
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
    .line 316
    aget v1, p0, v2

    #@4
    if-eq v1, v3, :cond_0

    #@6
    .line 318
    return v2

    #@7
    .line 320
    :cond_0
    const/4 v0, 0x1

    #@8
    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    #@9
    if-ge v0, v1, :cond_2

    #@b
    .line 322
    aget v1, p0, v0

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 324
    return v2

    #@10
    .line 320
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 327
    :cond_2
    return v3
.end method

.method public static isZero([I)Z
    .locals 3
    .param p0, "x"    # [I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 332
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    #@3
    if-ge v0, v1, :cond_1

    #@5
    .line 334
    aget v1, p0, v0

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 336
    return v2

    #@a
    .line 332
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@c
    goto :goto_0

    #@d
    .line 339
    :cond_1
    const/4 v1, 0x1

    #@e
    return v1
.end method

.method public static mul([II[II[II)V
    .locals 30
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "zz"    # [I
    .param p5, "zzOff"    # I

    #@0
    .prologue
    .line 408
    add-int/lit8 v5, p3, 0x0

    #@2
    aget v5, p2, v5

    #@4
    int-to-long v0, v5

    #@5
    move-wide/from16 v24, v0

    #@7
    const-wide v26, 0xffffffffL

    #@c
    and-long v10, v24, v26

    #@e
    .line 409
    .local v10, "y_0":J
    add-int/lit8 v5, p3, 0x1

    #@10
    aget v5, p2, v5

    #@12
    int-to-long v0, v5

    #@13
    move-wide/from16 v24, v0

    #@15
    const-wide v26, 0xffffffffL

    #@1a
    and-long v12, v24, v26

    #@1c
    .line 410
    .local v12, "y_1":J
    add-int/lit8 v5, p3, 0x2

    #@1e
    aget v5, p2, v5

    #@20
    int-to-long v0, v5

    #@21
    move-wide/from16 v24, v0

    #@23
    const-wide v26, 0xffffffffL

    #@28
    and-long v14, v24, v26

    #@2a
    .line 411
    .local v14, "y_2":J
    add-int/lit8 v5, p3, 0x3

    #@2c
    aget v5, p2, v5

    #@2e
    int-to-long v0, v5

    #@2f
    move-wide/from16 v24, v0

    #@31
    const-wide v26, 0xffffffffL

    #@36
    and-long v16, v24, v26

    #@38
    .line 412
    .local v16, "y_3":J
    add-int/lit8 v5, p3, 0x4

    #@3a
    aget v5, p2, v5

    #@3c
    int-to-long v0, v5

    #@3d
    move-wide/from16 v24, v0

    #@3f
    const-wide v26, 0xffffffffL

    #@44
    and-long v18, v24, v26

    #@46
    .line 413
    .local v18, "y_4":J
    add-int/lit8 v5, p3, 0x5

    #@48
    aget v5, p2, v5

    #@4a
    int-to-long v0, v5

    #@4b
    move-wide/from16 v24, v0

    #@4d
    const-wide v26, 0xffffffffL

    #@52
    and-long v20, v24, v26

    #@54
    .line 414
    .local v20, "y_5":J
    add-int/lit8 v5, p3, 0x6

    #@56
    aget v5, p2, v5

    #@58
    int-to-long v0, v5

    #@59
    move-wide/from16 v24, v0

    #@5b
    const-wide v26, 0xffffffffL

    #@60
    and-long v22, v24, v26

    #@62
    .line 417
    .local v22, "y_6":J
    add-int/lit8 v5, p1, 0x0

    #@64
    aget v5, p0, v5

    #@66
    int-to-long v0, v5

    #@67
    move-wide/from16 v24, v0

    #@69
    const-wide v26, 0xffffffffL

    #@6e
    and-long v6, v24, v26

    #@70
    .line 418
    .local v6, "x_0":J
    mul-long v24, v6, v10

    #@72
    .line 417
    const-wide/16 v26, 0x0

    #@74
    .line 418
    add-long v2, v26, v24

    #@76
    .line 419
    .local v2, "c":J
    add-int/lit8 v5, p5, 0x0

    #@78
    long-to-int v0, v2

    #@79
    move/from16 v24, v0

    #@7b
    aput v24, p4, v5

    #@7d
    .line 420
    const/16 v5, 0x20

    #@7f
    ushr-long/2addr v2, v5

    #@80
    .line 421
    mul-long v24, v6, v12

    #@82
    add-long v2, v2, v24

    #@84
    .line 422
    add-int/lit8 v5, p5, 0x1

    #@86
    long-to-int v0, v2

    #@87
    move/from16 v24, v0

    #@89
    aput v24, p4, v5

    #@8b
    .line 423
    const/16 v5, 0x20

    #@8d
    ushr-long/2addr v2, v5

    #@8e
    .line 424
    mul-long v24, v6, v14

    #@90
    add-long v2, v2, v24

    #@92
    .line 425
    add-int/lit8 v5, p5, 0x2

    #@94
    long-to-int v0, v2

    #@95
    move/from16 v24, v0

    #@97
    aput v24, p4, v5

    #@99
    .line 426
    const/16 v5, 0x20

    #@9b
    ushr-long/2addr v2, v5

    #@9c
    .line 427
    mul-long v24, v6, v16

    #@9e
    add-long v2, v2, v24

    #@a0
    .line 428
    add-int/lit8 v5, p5, 0x3

    #@a2
    long-to-int v0, v2

    #@a3
    move/from16 v24, v0

    #@a5
    aput v24, p4, v5

    #@a7
    .line 429
    const/16 v5, 0x20

    #@a9
    ushr-long/2addr v2, v5

    #@aa
    .line 430
    mul-long v24, v6, v18

    #@ac
    add-long v2, v2, v24

    #@ae
    .line 431
    add-int/lit8 v5, p5, 0x4

    #@b0
    long-to-int v0, v2

    #@b1
    move/from16 v24, v0

    #@b3
    aput v24, p4, v5

    #@b5
    .line 432
    const/16 v5, 0x20

    #@b7
    ushr-long/2addr v2, v5

    #@b8
    .line 433
    mul-long v24, v6, v20

    #@ba
    add-long v2, v2, v24

    #@bc
    .line 434
    add-int/lit8 v5, p5, 0x5

    #@be
    long-to-int v0, v2

    #@bf
    move/from16 v24, v0

    #@c1
    aput v24, p4, v5

    #@c3
    .line 435
    const/16 v5, 0x20

    #@c5
    ushr-long/2addr v2, v5

    #@c6
    .line 436
    mul-long v24, v6, v22

    #@c8
    add-long v2, v2, v24

    #@ca
    .line 437
    add-int/lit8 v5, p5, 0x6

    #@cc
    long-to-int v0, v2

    #@cd
    move/from16 v24, v0

    #@cf
    aput v24, p4, v5

    #@d1
    .line 438
    const/16 v5, 0x20

    #@d3
    ushr-long/2addr v2, v5

    #@d4
    .line 439
    add-int/lit8 v5, p5, 0x7

    #@d6
    long-to-int v0, v2

    #@d7
    move/from16 v24, v0

    #@d9
    aput v24, p4, v5

    #@db
    .line 442
    const/4 v4, 0x1

    #@dc
    .local v4, "i":I
    :goto_0
    const/4 v5, 0x7

    #@dd
    if-ge v4, v5, :cond_0

    #@df
    .line 444
    add-int/lit8 p5, p5, 0x1

    #@e1
    .line 445
    add-int v5, p1, v4

    #@e3
    aget v5, p0, v5

    #@e5
    int-to-long v0, v5

    #@e6
    move-wide/from16 v24, v0

    #@e8
    const-wide v26, 0xffffffffL

    #@ed
    and-long v8, v24, v26

    #@ef
    .line 446
    .local v8, "x_i":J
    mul-long v24, v8, v10

    #@f1
    add-int/lit8 v5, p5, 0x0

    #@f3
    aget v5, p4, v5

    #@f5
    int-to-long v0, v5

    #@f6
    move-wide/from16 v26, v0

    #@f8
    const-wide v28, 0xffffffffL

    #@fd
    and-long v26, v26, v28

    #@ff
    add-long v24, v24, v26

    #@101
    .line 445
    const-wide/16 v26, 0x0

    #@103
    .line 446
    add-long v2, v26, v24

    #@105
    .line 447
    add-int/lit8 v5, p5, 0x0

    #@107
    long-to-int v0, v2

    #@108
    move/from16 v24, v0

    #@10a
    aput v24, p4, v5

    #@10c
    .line 448
    const/16 v5, 0x20

    #@10e
    ushr-long/2addr v2, v5

    #@10f
    .line 449
    mul-long v24, v8, v12

    #@111
    add-int/lit8 v5, p5, 0x1

    #@113
    aget v5, p4, v5

    #@115
    int-to-long v0, v5

    #@116
    move-wide/from16 v26, v0

    #@118
    const-wide v28, 0xffffffffL

    #@11d
    and-long v26, v26, v28

    #@11f
    add-long v24, v24, v26

    #@121
    add-long v2, v2, v24

    #@123
    .line 450
    add-int/lit8 v5, p5, 0x1

    #@125
    long-to-int v0, v2

    #@126
    move/from16 v24, v0

    #@128
    aput v24, p4, v5

    #@12a
    .line 451
    const/16 v5, 0x20

    #@12c
    ushr-long/2addr v2, v5

    #@12d
    .line 452
    mul-long v24, v8, v14

    #@12f
    add-int/lit8 v5, p5, 0x2

    #@131
    aget v5, p4, v5

    #@133
    int-to-long v0, v5

    #@134
    move-wide/from16 v26, v0

    #@136
    const-wide v28, 0xffffffffL

    #@13b
    and-long v26, v26, v28

    #@13d
    add-long v24, v24, v26

    #@13f
    add-long v2, v2, v24

    #@141
    .line 453
    add-int/lit8 v5, p5, 0x2

    #@143
    long-to-int v0, v2

    #@144
    move/from16 v24, v0

    #@146
    aput v24, p4, v5

    #@148
    .line 454
    const/16 v5, 0x20

    #@14a
    ushr-long/2addr v2, v5

    #@14b
    .line 455
    mul-long v24, v8, v16

    #@14d
    add-int/lit8 v5, p5, 0x3

    #@14f
    aget v5, p4, v5

    #@151
    int-to-long v0, v5

    #@152
    move-wide/from16 v26, v0

    #@154
    const-wide v28, 0xffffffffL

    #@159
    and-long v26, v26, v28

    #@15b
    add-long v24, v24, v26

    #@15d
    add-long v2, v2, v24

    #@15f
    .line 456
    add-int/lit8 v5, p5, 0x3

    #@161
    long-to-int v0, v2

    #@162
    move/from16 v24, v0

    #@164
    aput v24, p4, v5

    #@166
    .line 457
    const/16 v5, 0x20

    #@168
    ushr-long/2addr v2, v5

    #@169
    .line 458
    mul-long v24, v8, v18

    #@16b
    add-int/lit8 v5, p5, 0x4

    #@16d
    aget v5, p4, v5

    #@16f
    int-to-long v0, v5

    #@170
    move-wide/from16 v26, v0

    #@172
    const-wide v28, 0xffffffffL

    #@177
    and-long v26, v26, v28

    #@179
    add-long v24, v24, v26

    #@17b
    add-long v2, v2, v24

    #@17d
    .line 459
    add-int/lit8 v5, p5, 0x4

    #@17f
    long-to-int v0, v2

    #@180
    move/from16 v24, v0

    #@182
    aput v24, p4, v5

    #@184
    .line 460
    const/16 v5, 0x20

    #@186
    ushr-long/2addr v2, v5

    #@187
    .line 461
    mul-long v24, v8, v20

    #@189
    add-int/lit8 v5, p5, 0x5

    #@18b
    aget v5, p4, v5

    #@18d
    int-to-long v0, v5

    #@18e
    move-wide/from16 v26, v0

    #@190
    const-wide v28, 0xffffffffL

    #@195
    and-long v26, v26, v28

    #@197
    add-long v24, v24, v26

    #@199
    add-long v2, v2, v24

    #@19b
    .line 462
    add-int/lit8 v5, p5, 0x5

    #@19d
    long-to-int v0, v2

    #@19e
    move/from16 v24, v0

    #@1a0
    aput v24, p4, v5

    #@1a2
    .line 463
    const/16 v5, 0x20

    #@1a4
    ushr-long/2addr v2, v5

    #@1a5
    .line 464
    mul-long v24, v8, v22

    #@1a7
    add-int/lit8 v5, p5, 0x6

    #@1a9
    aget v5, p4, v5

    #@1ab
    int-to-long v0, v5

    #@1ac
    move-wide/from16 v26, v0

    #@1ae
    const-wide v28, 0xffffffffL

    #@1b3
    and-long v26, v26, v28

    #@1b5
    add-long v24, v24, v26

    #@1b7
    add-long v2, v2, v24

    #@1b9
    .line 465
    add-int/lit8 v5, p5, 0x6

    #@1bb
    long-to-int v0, v2

    #@1bc
    move/from16 v24, v0

    #@1be
    aput v24, p4, v5

    #@1c0
    .line 466
    const/16 v5, 0x20

    #@1c2
    ushr-long/2addr v2, v5

    #@1c3
    .line 467
    add-int/lit8 v5, p5, 0x7

    #@1c5
    long-to-int v0, v2

    #@1c6
    move/from16 v24, v0

    #@1c8
    aput v24, p4, v5

    #@1ca
    .line 442
    add-int/lit8 v4, v4, 0x1

    #@1cc
    goto/16 :goto_0

    #@1ce
    .line 406
    .end local v8    # "x_i":J
    :cond_0
    return-void
.end method

.method public static mul([I[I[I)V
    .locals 30
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    #@0
    .prologue
    .line 344
    const/4 v5, 0x0

    #@1
    aget v5, p1, v5

    #@3
    int-to-long v0, v5

    #@4
    move-wide/from16 v24, v0

    #@6
    const-wide v26, 0xffffffffL

    #@b
    and-long v10, v24, v26

    #@d
    .line 345
    .local v10, "y_0":J
    const/4 v5, 0x1

    #@e
    aget v5, p1, v5

    #@10
    int-to-long v0, v5

    #@11
    move-wide/from16 v24, v0

    #@13
    const-wide v26, 0xffffffffL

    #@18
    and-long v12, v24, v26

    #@1a
    .line 346
    .local v12, "y_1":J
    const/4 v5, 0x2

    #@1b
    aget v5, p1, v5

    #@1d
    int-to-long v0, v5

    #@1e
    move-wide/from16 v24, v0

    #@20
    const-wide v26, 0xffffffffL

    #@25
    and-long v14, v24, v26

    #@27
    .line 347
    .local v14, "y_2":J
    const/4 v5, 0x3

    #@28
    aget v5, p1, v5

    #@2a
    int-to-long v0, v5

    #@2b
    move-wide/from16 v24, v0

    #@2d
    const-wide v26, 0xffffffffL

    #@32
    and-long v16, v24, v26

    #@34
    .line 348
    .local v16, "y_3":J
    const/4 v5, 0x4

    #@35
    aget v5, p1, v5

    #@37
    int-to-long v0, v5

    #@38
    move-wide/from16 v24, v0

    #@3a
    const-wide v26, 0xffffffffL

    #@3f
    and-long v18, v24, v26

    #@41
    .line 349
    .local v18, "y_4":J
    const/4 v5, 0x5

    #@42
    aget v5, p1, v5

    #@44
    int-to-long v0, v5

    #@45
    move-wide/from16 v24, v0

    #@47
    const-wide v26, 0xffffffffL

    #@4c
    and-long v20, v24, v26

    #@4e
    .line 350
    .local v20, "y_5":J
    const/4 v5, 0x6

    #@4f
    aget v5, p1, v5

    #@51
    int-to-long v0, v5

    #@52
    move-wide/from16 v24, v0

    #@54
    const-wide v26, 0xffffffffL

    #@59
    and-long v22, v24, v26

    #@5b
    .line 353
    .local v22, "y_6":J
    const/4 v5, 0x0

    #@5c
    aget v5, p0, v5

    #@5e
    int-to-long v0, v5

    #@5f
    move-wide/from16 v24, v0

    #@61
    const-wide v26, 0xffffffffL

    #@66
    and-long v6, v24, v26

    #@68
    .line 354
    .local v6, "x_0":J
    mul-long v24, v6, v10

    #@6a
    .line 353
    const-wide/16 v26, 0x0

    #@6c
    .line 354
    add-long v2, v26, v24

    #@6e
    .line 355
    .local v2, "c":J
    long-to-int v5, v2

    #@6f
    const/16 v24, 0x0

    #@71
    aput v5, p2, v24

    #@73
    .line 356
    const/16 v5, 0x20

    #@75
    ushr-long/2addr v2, v5

    #@76
    .line 357
    mul-long v24, v6, v12

    #@78
    add-long v2, v2, v24

    #@7a
    .line 358
    long-to-int v5, v2

    #@7b
    const/16 v24, 0x1

    #@7d
    aput v5, p2, v24

    #@7f
    .line 359
    const/16 v5, 0x20

    #@81
    ushr-long/2addr v2, v5

    #@82
    .line 360
    mul-long v24, v6, v14

    #@84
    add-long v2, v2, v24

    #@86
    .line 361
    long-to-int v5, v2

    #@87
    const/16 v24, 0x2

    #@89
    aput v5, p2, v24

    #@8b
    .line 362
    const/16 v5, 0x20

    #@8d
    ushr-long/2addr v2, v5

    #@8e
    .line 363
    mul-long v24, v6, v16

    #@90
    add-long v2, v2, v24

    #@92
    .line 364
    long-to-int v5, v2

    #@93
    const/16 v24, 0x3

    #@95
    aput v5, p2, v24

    #@97
    .line 365
    const/16 v5, 0x20

    #@99
    ushr-long/2addr v2, v5

    #@9a
    .line 366
    mul-long v24, v6, v18

    #@9c
    add-long v2, v2, v24

    #@9e
    .line 367
    long-to-int v5, v2

    #@9f
    const/16 v24, 0x4

    #@a1
    aput v5, p2, v24

    #@a3
    .line 368
    const/16 v5, 0x20

    #@a5
    ushr-long/2addr v2, v5

    #@a6
    .line 369
    mul-long v24, v6, v20

    #@a8
    add-long v2, v2, v24

    #@aa
    .line 370
    long-to-int v5, v2

    #@ab
    const/16 v24, 0x5

    #@ad
    aput v5, p2, v24

    #@af
    .line 371
    const/16 v5, 0x20

    #@b1
    ushr-long/2addr v2, v5

    #@b2
    .line 372
    mul-long v24, v6, v22

    #@b4
    add-long v2, v2, v24

    #@b6
    .line 373
    long-to-int v5, v2

    #@b7
    const/16 v24, 0x6

    #@b9
    aput v5, p2, v24

    #@bb
    .line 374
    const/16 v5, 0x20

    #@bd
    ushr-long/2addr v2, v5

    #@be
    .line 375
    long-to-int v5, v2

    #@bf
    const/16 v24, 0x7

    #@c1
    aput v5, p2, v24

    #@c3
    .line 378
    const/4 v4, 0x1

    #@c4
    .local v4, "i":I
    :goto_0
    const/4 v5, 0x7

    #@c5
    if-ge v4, v5, :cond_0

    #@c7
    .line 380
    aget v5, p0, v4

    #@c9
    int-to-long v0, v5

    #@ca
    move-wide/from16 v24, v0

    #@cc
    const-wide v26, 0xffffffffL

    #@d1
    and-long v8, v24, v26

    #@d3
    .line 381
    .local v8, "x_i":J
    mul-long v24, v8, v10

    #@d5
    add-int/lit8 v5, v4, 0x0

    #@d7
    aget v5, p2, v5

    #@d9
    int-to-long v0, v5

    #@da
    move-wide/from16 v26, v0

    #@dc
    const-wide v28, 0xffffffffL

    #@e1
    and-long v26, v26, v28

    #@e3
    add-long v24, v24, v26

    #@e5
    .line 380
    const-wide/16 v26, 0x0

    #@e7
    .line 381
    add-long v2, v26, v24

    #@e9
    .line 382
    add-int/lit8 v5, v4, 0x0

    #@eb
    long-to-int v0, v2

    #@ec
    move/from16 v24, v0

    #@ee
    aput v24, p2, v5

    #@f0
    .line 383
    const/16 v5, 0x20

    #@f2
    ushr-long/2addr v2, v5

    #@f3
    .line 384
    mul-long v24, v8, v12

    #@f5
    add-int/lit8 v5, v4, 0x1

    #@f7
    aget v5, p2, v5

    #@f9
    int-to-long v0, v5

    #@fa
    move-wide/from16 v26, v0

    #@fc
    const-wide v28, 0xffffffffL

    #@101
    and-long v26, v26, v28

    #@103
    add-long v24, v24, v26

    #@105
    add-long v2, v2, v24

    #@107
    .line 385
    add-int/lit8 v5, v4, 0x1

    #@109
    long-to-int v0, v2

    #@10a
    move/from16 v24, v0

    #@10c
    aput v24, p2, v5

    #@10e
    .line 386
    const/16 v5, 0x20

    #@110
    ushr-long/2addr v2, v5

    #@111
    .line 387
    mul-long v24, v8, v14

    #@113
    add-int/lit8 v5, v4, 0x2

    #@115
    aget v5, p2, v5

    #@117
    int-to-long v0, v5

    #@118
    move-wide/from16 v26, v0

    #@11a
    const-wide v28, 0xffffffffL

    #@11f
    and-long v26, v26, v28

    #@121
    add-long v24, v24, v26

    #@123
    add-long v2, v2, v24

    #@125
    .line 388
    add-int/lit8 v5, v4, 0x2

    #@127
    long-to-int v0, v2

    #@128
    move/from16 v24, v0

    #@12a
    aput v24, p2, v5

    #@12c
    .line 389
    const/16 v5, 0x20

    #@12e
    ushr-long/2addr v2, v5

    #@12f
    .line 390
    mul-long v24, v8, v16

    #@131
    add-int/lit8 v5, v4, 0x3

    #@133
    aget v5, p2, v5

    #@135
    int-to-long v0, v5

    #@136
    move-wide/from16 v26, v0

    #@138
    const-wide v28, 0xffffffffL

    #@13d
    and-long v26, v26, v28

    #@13f
    add-long v24, v24, v26

    #@141
    add-long v2, v2, v24

    #@143
    .line 391
    add-int/lit8 v5, v4, 0x3

    #@145
    long-to-int v0, v2

    #@146
    move/from16 v24, v0

    #@148
    aput v24, p2, v5

    #@14a
    .line 392
    const/16 v5, 0x20

    #@14c
    ushr-long/2addr v2, v5

    #@14d
    .line 393
    mul-long v24, v8, v18

    #@14f
    add-int/lit8 v5, v4, 0x4

    #@151
    aget v5, p2, v5

    #@153
    int-to-long v0, v5

    #@154
    move-wide/from16 v26, v0

    #@156
    const-wide v28, 0xffffffffL

    #@15b
    and-long v26, v26, v28

    #@15d
    add-long v24, v24, v26

    #@15f
    add-long v2, v2, v24

    #@161
    .line 394
    add-int/lit8 v5, v4, 0x4

    #@163
    long-to-int v0, v2

    #@164
    move/from16 v24, v0

    #@166
    aput v24, p2, v5

    #@168
    .line 395
    const/16 v5, 0x20

    #@16a
    ushr-long/2addr v2, v5

    #@16b
    .line 396
    mul-long v24, v8, v20

    #@16d
    add-int/lit8 v5, v4, 0x5

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
    add-long v24, v24, v26

    #@17d
    add-long v2, v2, v24

    #@17f
    .line 397
    add-int/lit8 v5, v4, 0x5

    #@181
    long-to-int v0, v2

    #@182
    move/from16 v24, v0

    #@184
    aput v24, p2, v5

    #@186
    .line 398
    const/16 v5, 0x20

    #@188
    ushr-long/2addr v2, v5

    #@189
    .line 399
    mul-long v24, v8, v22

    #@18b
    add-int/lit8 v5, v4, 0x6

    #@18d
    aget v5, p2, v5

    #@18f
    int-to-long v0, v5

    #@190
    move-wide/from16 v26, v0

    #@192
    const-wide v28, 0xffffffffL

    #@197
    and-long v26, v26, v28

    #@199
    add-long v24, v24, v26

    #@19b
    add-long v2, v2, v24

    #@19d
    .line 400
    add-int/lit8 v5, v4, 0x6

    #@19f
    long-to-int v0, v2

    #@1a0
    move/from16 v24, v0

    #@1a2
    aput v24, p2, v5

    #@1a4
    .line 401
    const/16 v5, 0x20

    #@1a6
    ushr-long/2addr v2, v5

    #@1a7
    .line 402
    add-int/lit8 v5, v4, 0x7

    #@1a9
    long-to-int v0, v2

    #@1aa
    move/from16 v24, v0

    #@1ac
    aput v24, p2, v5

    #@1ae
    .line 378
    add-int/lit8 v4, v4, 0x1

    #@1b0
    goto/16 :goto_0

    #@1b2
    .line 342
    .end local v8    # "x_i":J
    :cond_0
    return-void
.end method

.method public static mul33Add(I[II[II[II)J
    .locals 26
    .param p0, "w"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    #@0
    .prologue
    .line 560
    move/from16 v0, p0

    #@2
    int-to-long v0, v0

    #@3
    move-wide/from16 v20, v0

    #@5
    const-wide v22, 0xffffffffL

    #@a
    and-long v4, v20, v22

    #@c
    .line 561
    .local v4, "wVal":J
    add-int/lit8 v20, p2, 0x0

    #@e
    aget v20, p1, v20

    #@10
    move/from16 v0, v20

    #@12
    int-to-long v0, v0

    #@13
    move-wide/from16 v20, v0

    #@15
    const-wide v22, 0xffffffffL

    #@1a
    and-long v6, v20, v22

    #@1c
    .line 562
    .local v6, "x0":J
    mul-long v20, v4, v6

    #@1e
    add-int/lit8 v22, p4, 0x0

    #@20
    aget v22, p3, v22

    #@22
    move/from16 v0, v22

    #@24
    int-to-long v0, v0

    #@25
    move-wide/from16 v22, v0

    #@27
    const-wide v24, 0xffffffffL

    #@2c
    and-long v22, v22, v24

    #@2e
    add-long v20, v20, v22

    #@30
    .line 560
    const-wide/16 v22, 0x0

    #@32
    .line 562
    add-long v2, v22, v20

    #@34
    .line 563
    .local v2, "c":J
    add-int/lit8 v20, p6, 0x0

    #@36
    long-to-int v0, v2

    #@37
    move/from16 v21, v0

    #@39
    aput v21, p5, v20

    #@3b
    .line 564
    const/16 v20, 0x20

    #@3d
    ushr-long v2, v2, v20

    #@3f
    .line 565
    add-int/lit8 v20, p2, 0x1

    #@41
    aget v20, p1, v20

    #@43
    move/from16 v0, v20

    #@45
    int-to-long v0, v0

    #@46
    move-wide/from16 v20, v0

    #@48
    const-wide v22, 0xffffffffL

    #@4d
    and-long v8, v20, v22

    #@4f
    .line 566
    .local v8, "x1":J
    mul-long v20, v4, v8

    #@51
    add-long v20, v20, v6

    #@53
    add-int/lit8 v22, p4, 0x1

    #@55
    aget v22, p3, v22

    #@57
    move/from16 v0, v22

    #@59
    int-to-long v0, v0

    #@5a
    move-wide/from16 v22, v0

    #@5c
    const-wide v24, 0xffffffffL

    #@61
    and-long v22, v22, v24

    #@63
    add-long v20, v20, v22

    #@65
    add-long v2, v2, v20

    #@67
    .line 567
    add-int/lit8 v20, p6, 0x1

    #@69
    long-to-int v0, v2

    #@6a
    move/from16 v21, v0

    #@6c
    aput v21, p5, v20

    #@6e
    .line 568
    const/16 v20, 0x20

    #@70
    ushr-long v2, v2, v20

    #@72
    .line 569
    add-int/lit8 v20, p2, 0x2

    #@74
    aget v20, p1, v20

    #@76
    move/from16 v0, v20

    #@78
    int-to-long v0, v0

    #@79
    move-wide/from16 v20, v0

    #@7b
    const-wide v22, 0xffffffffL

    #@80
    and-long v10, v20, v22

    #@82
    .line 570
    .local v10, "x2":J
    mul-long v20, v4, v10

    #@84
    add-long v20, v20, v8

    #@86
    add-int/lit8 v22, p4, 0x2

    #@88
    aget v22, p3, v22

    #@8a
    move/from16 v0, v22

    #@8c
    int-to-long v0, v0

    #@8d
    move-wide/from16 v22, v0

    #@8f
    const-wide v24, 0xffffffffL

    #@94
    and-long v22, v22, v24

    #@96
    add-long v20, v20, v22

    #@98
    add-long v2, v2, v20

    #@9a
    .line 571
    add-int/lit8 v20, p6, 0x2

    #@9c
    long-to-int v0, v2

    #@9d
    move/from16 v21, v0

    #@9f
    aput v21, p5, v20

    #@a1
    .line 572
    const/16 v20, 0x20

    #@a3
    ushr-long v2, v2, v20

    #@a5
    .line 573
    add-int/lit8 v20, p2, 0x3

    #@a7
    aget v20, p1, v20

    #@a9
    move/from16 v0, v20

    #@ab
    int-to-long v0, v0

    #@ac
    move-wide/from16 v20, v0

    #@ae
    const-wide v22, 0xffffffffL

    #@b3
    and-long v12, v20, v22

    #@b5
    .line 574
    .local v12, "x3":J
    mul-long v20, v4, v12

    #@b7
    add-long v20, v20, v10

    #@b9
    add-int/lit8 v22, p4, 0x3

    #@bb
    aget v22, p3, v22

    #@bd
    move/from16 v0, v22

    #@bf
    int-to-long v0, v0

    #@c0
    move-wide/from16 v22, v0

    #@c2
    const-wide v24, 0xffffffffL

    #@c7
    and-long v22, v22, v24

    #@c9
    add-long v20, v20, v22

    #@cb
    add-long v2, v2, v20

    #@cd
    .line 575
    add-int/lit8 v20, p6, 0x3

    #@cf
    long-to-int v0, v2

    #@d0
    move/from16 v21, v0

    #@d2
    aput v21, p5, v20

    #@d4
    .line 576
    const/16 v20, 0x20

    #@d6
    ushr-long v2, v2, v20

    #@d8
    .line 577
    add-int/lit8 v20, p2, 0x4

    #@da
    aget v20, p1, v20

    #@dc
    move/from16 v0, v20

    #@de
    int-to-long v0, v0

    #@df
    move-wide/from16 v20, v0

    #@e1
    const-wide v22, 0xffffffffL

    #@e6
    and-long v14, v20, v22

    #@e8
    .line 578
    .local v14, "x4":J
    mul-long v20, v4, v14

    #@ea
    add-long v20, v20, v12

    #@ec
    add-int/lit8 v22, p4, 0x4

    #@ee
    aget v22, p3, v22

    #@f0
    move/from16 v0, v22

    #@f2
    int-to-long v0, v0

    #@f3
    move-wide/from16 v22, v0

    #@f5
    const-wide v24, 0xffffffffL

    #@fa
    and-long v22, v22, v24

    #@fc
    add-long v20, v20, v22

    #@fe
    add-long v2, v2, v20

    #@100
    .line 579
    add-int/lit8 v20, p6, 0x4

    #@102
    long-to-int v0, v2

    #@103
    move/from16 v21, v0

    #@105
    aput v21, p5, v20

    #@107
    .line 580
    const/16 v20, 0x20

    #@109
    ushr-long v2, v2, v20

    #@10b
    .line 581
    add-int/lit8 v20, p2, 0x5

    #@10d
    aget v20, p1, v20

    #@10f
    move/from16 v0, v20

    #@111
    int-to-long v0, v0

    #@112
    move-wide/from16 v20, v0

    #@114
    const-wide v22, 0xffffffffL

    #@119
    and-long v16, v20, v22

    #@11b
    .line 582
    .local v16, "x5":J
    mul-long v20, v4, v16

    #@11d
    add-long v20, v20, v14

    #@11f
    add-int/lit8 v22, p4, 0x5

    #@121
    aget v22, p3, v22

    #@123
    move/from16 v0, v22

    #@125
    int-to-long v0, v0

    #@126
    move-wide/from16 v22, v0

    #@128
    const-wide v24, 0xffffffffL

    #@12d
    and-long v22, v22, v24

    #@12f
    add-long v20, v20, v22

    #@131
    add-long v2, v2, v20

    #@133
    .line 583
    add-int/lit8 v20, p6, 0x5

    #@135
    long-to-int v0, v2

    #@136
    move/from16 v21, v0

    #@138
    aput v21, p5, v20

    #@13a
    .line 584
    const/16 v20, 0x20

    #@13c
    ushr-long v2, v2, v20

    #@13e
    .line 585
    add-int/lit8 v20, p2, 0x6

    #@140
    aget v20, p1, v20

    #@142
    move/from16 v0, v20

    #@144
    int-to-long v0, v0

    #@145
    move-wide/from16 v20, v0

    #@147
    const-wide v22, 0xffffffffL

    #@14c
    and-long v18, v20, v22

    #@14e
    .line 586
    .local v18, "x6":J
    mul-long v20, v4, v18

    #@150
    add-long v20, v20, v16

    #@152
    add-int/lit8 v22, p4, 0x6

    #@154
    aget v22, p3, v22

    #@156
    move/from16 v0, v22

    #@158
    int-to-long v0, v0

    #@159
    move-wide/from16 v22, v0

    #@15b
    const-wide v24, 0xffffffffL

    #@160
    and-long v22, v22, v24

    #@162
    add-long v20, v20, v22

    #@164
    add-long v2, v2, v20

    #@166
    .line 587
    add-int/lit8 v20, p6, 0x6

    #@168
    long-to-int v0, v2

    #@169
    move/from16 v21, v0

    #@16b
    aput v21, p5, v20

    #@16d
    .line 588
    const/16 v20, 0x20

    #@16f
    ushr-long v2, v2, v20

    #@171
    .line 589
    add-long v2, v2, v18

    #@173
    .line 590
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
    .line 679
    move/from16 v0, p0

    #@2
    int-to-long v10, v0

    #@3
    const-wide v12, 0xffffffffL

    #@8
    and-long v4, v10, v12

    #@a
    .line 680
    .local v4, "xVal":J
    const-wide v10, 0xffffffffL

    #@f
    and-long v6, p1, v10

    #@11
    .line 681
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
    .line 679
    const-wide/16 v12, 0x0

    #@21
    .line 681
    add-long v2, v12, v10

    #@23
    .line 682
    .local v2, "c":J
    add-int/lit8 v10, p4, 0x0

    #@25
    long-to-int v11, v2

    #@26
    aput v11, p3, v10

    #@28
    .line 683
    const/16 v10, 0x20

    #@2a
    ushr-long/2addr v2, v10

    #@2b
    .line 684
    const/16 v10, 0x20

    #@2d
    ushr-long v8, p1, v10

    #@2f
    .line 685
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
    .line 686
    add-int/lit8 v10, p4, 0x1

    #@41
    long-to-int v11, v2

    #@42
    aput v11, p3, v10

    #@44
    .line 687
    const/16 v10, 0x20

    #@46
    ushr-long/2addr v2, v10

    #@47
    .line 688
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
    .line 689
    add-int/lit8 v10, p4, 0x2

    #@56
    long-to-int v11, v2

    #@57
    aput v11, p3, v10

    #@59
    .line 690
    const/16 v10, 0x20

    #@5b
    ushr-long/2addr v2, v10

    #@5c
    .line 691
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
    .line 692
    add-int/lit8 v10, p4, 0x3

    #@6a
    long-to-int v11, v2

    #@6b
    aput v11, p3, v10

    #@6d
    .line 693
    const/16 v10, 0x20

    #@6f
    ushr-long/2addr v2, v10

    #@70
    .line 694
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
    const/4 v10, 0x7

    #@79
    const/4 v11, 0x4

    #@7a
    move-object/from16 v0, p3

    #@7c
    move/from16 v1, p4

    #@7e
    invoke-static {v10, v0, v1, v11}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    #@81
    move-result v10

    #@82
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
    .line 702
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
    .line 703
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
    .line 702
    const-wide/16 v8, 0x0

    #@20
    .line 703
    add-long v0, v8, v6

    #@22
    .line 704
    .local v0, "c":J
    add-int/lit8 v6, p3, 0x0

    #@24
    long-to-int v7, v0

    #@25
    aput v7, p2, v6

    #@27
    .line 705
    const/16 v6, 0x20

    #@29
    ushr-long/2addr v0, v6

    #@2a
    .line 706
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
    .line 707
    add-int/lit8 v6, p3, 0x1

    #@39
    long-to-int v7, v0

    #@3a
    aput v7, p2, v6

    #@3c
    .line 708
    const/16 v6, 0x20

    #@3e
    ushr-long/2addr v0, v6

    #@3f
    .line 709
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
    .line 710
    add-int/lit8 v6, p3, 0x2

    #@4d
    long-to-int v7, v0

    #@4e
    aput v7, p2, v6

    #@50
    .line 711
    const/16 v6, 0x20

    #@52
    ushr-long/2addr v0, v6

    #@53
    .line 712
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
    const/4 v6, 0x7

    #@5c
    const/4 v7, 0x3

    #@5d
    invoke-static {v6, p2, p3, v7}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    #@60
    move-result v6

    #@61
    goto :goto_0
.end method

.method public static mulAddTo([II[II[II)I
    .locals 30
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "zz"    # [I
    .param p5, "zzOff"    # I

    #@0
    .prologue
    .line 515
    add-int/lit8 v5, p3, 0x0

    #@2
    aget v5, p2, v5

    #@4
    int-to-long v0, v5

    #@5
    move-wide/from16 v24, v0

    #@7
    const-wide v26, 0xffffffffL

    #@c
    and-long v8, v24, v26

    #@e
    .line 516
    .local v8, "y_0":J
    add-int/lit8 v5, p3, 0x1

    #@10
    aget v5, p2, v5

    #@12
    int-to-long v0, v5

    #@13
    move-wide/from16 v24, v0

    #@15
    const-wide v26, 0xffffffffL

    #@1a
    and-long v10, v24, v26

    #@1c
    .line 517
    .local v10, "y_1":J
    add-int/lit8 v5, p3, 0x2

    #@1e
    aget v5, p2, v5

    #@20
    int-to-long v0, v5

    #@21
    move-wide/from16 v24, v0

    #@23
    const-wide v26, 0xffffffffL

    #@28
    and-long v12, v24, v26

    #@2a
    .line 518
    .local v12, "y_2":J
    add-int/lit8 v5, p3, 0x3

    #@2c
    aget v5, p2, v5

    #@2e
    int-to-long v0, v5

    #@2f
    move-wide/from16 v24, v0

    #@31
    const-wide v26, 0xffffffffL

    #@36
    and-long v14, v24, v26

    #@38
    .line 519
    .local v14, "y_3":J
    add-int/lit8 v5, p3, 0x4

    #@3a
    aget v5, p2, v5

    #@3c
    int-to-long v0, v5

    #@3d
    move-wide/from16 v24, v0

    #@3f
    const-wide v26, 0xffffffffL

    #@44
    and-long v16, v24, v26

    #@46
    .line 520
    .local v16, "y_4":J
    add-int/lit8 v5, p3, 0x5

    #@48
    aget v5, p2, v5

    #@4a
    int-to-long v0, v5

    #@4b
    move-wide/from16 v24, v0

    #@4d
    const-wide v26, 0xffffffffL

    #@52
    and-long v18, v24, v26

    #@54
    .line 521
    .local v18, "y_5":J
    add-int/lit8 v5, p3, 0x6

    #@56
    aget v5, p2, v5

    #@58
    int-to-long v0, v5

    #@59
    move-wide/from16 v24, v0

    #@5b
    const-wide v26, 0xffffffffL

    #@60
    and-long v20, v24, v26

    #@62
    .line 523
    .local v20, "y_6":J
    const-wide/16 v22, 0x0

    #@64
    .line 524
    .local v22, "zc":J
    const/4 v4, 0x0

    #@65
    .local v4, "i":I
    :goto_0
    const/4 v5, 0x7

    #@66
    if-ge v4, v5, :cond_0

    #@68
    .line 526
    add-int v5, p1, v4

    #@6a
    aget v5, p0, v5

    #@6c
    int-to-long v0, v5

    #@6d
    move-wide/from16 v24, v0

    #@6f
    const-wide v26, 0xffffffffL

    #@74
    and-long v6, v24, v26

    #@76
    .line 527
    .local v6, "x_i":J
    mul-long v24, v6, v8

    #@78
    add-int/lit8 v5, p5, 0x0

    #@7a
    aget v5, p4, v5

    #@7c
    int-to-long v0, v5

    #@7d
    move-wide/from16 v26, v0

    #@7f
    const-wide v28, 0xffffffffL

    #@84
    and-long v26, v26, v28

    #@86
    add-long v24, v24, v26

    #@88
    .line 526
    const-wide/16 v26, 0x0

    #@8a
    .line 527
    add-long v2, v26, v24

    #@8c
    .line 528
    .local v2, "c":J
    add-int/lit8 v5, p5, 0x0

    #@8e
    long-to-int v0, v2

    #@8f
    move/from16 v24, v0

    #@91
    aput v24, p4, v5

    #@93
    .line 529
    const/16 v5, 0x20

    #@95
    ushr-long/2addr v2, v5

    #@96
    .line 530
    mul-long v24, v6, v10

    #@98
    add-int/lit8 v5, p5, 0x1

    #@9a
    aget v5, p4, v5

    #@9c
    int-to-long v0, v5

    #@9d
    move-wide/from16 v26, v0

    #@9f
    const-wide v28, 0xffffffffL

    #@a4
    and-long v26, v26, v28

    #@a6
    add-long v24, v24, v26

    #@a8
    add-long v2, v2, v24

    #@aa
    .line 531
    add-int/lit8 v5, p5, 0x1

    #@ac
    long-to-int v0, v2

    #@ad
    move/from16 v24, v0

    #@af
    aput v24, p4, v5

    #@b1
    .line 532
    const/16 v5, 0x20

    #@b3
    ushr-long/2addr v2, v5

    #@b4
    .line 533
    mul-long v24, v6, v12

    #@b6
    add-int/lit8 v5, p5, 0x2

    #@b8
    aget v5, p4, v5

    #@ba
    int-to-long v0, v5

    #@bb
    move-wide/from16 v26, v0

    #@bd
    const-wide v28, 0xffffffffL

    #@c2
    and-long v26, v26, v28

    #@c4
    add-long v24, v24, v26

    #@c6
    add-long v2, v2, v24

    #@c8
    .line 534
    add-int/lit8 v5, p5, 0x2

    #@ca
    long-to-int v0, v2

    #@cb
    move/from16 v24, v0

    #@cd
    aput v24, p4, v5

    #@cf
    .line 535
    const/16 v5, 0x20

    #@d1
    ushr-long/2addr v2, v5

    #@d2
    .line 536
    mul-long v24, v6, v14

    #@d4
    add-int/lit8 v5, p5, 0x3

    #@d6
    aget v5, p4, v5

    #@d8
    int-to-long v0, v5

    #@d9
    move-wide/from16 v26, v0

    #@db
    const-wide v28, 0xffffffffL

    #@e0
    and-long v26, v26, v28

    #@e2
    add-long v24, v24, v26

    #@e4
    add-long v2, v2, v24

    #@e6
    .line 537
    add-int/lit8 v5, p5, 0x3

    #@e8
    long-to-int v0, v2

    #@e9
    move/from16 v24, v0

    #@eb
    aput v24, p4, v5

    #@ed
    .line 538
    const/16 v5, 0x20

    #@ef
    ushr-long/2addr v2, v5

    #@f0
    .line 539
    mul-long v24, v6, v16

    #@f2
    add-int/lit8 v5, p5, 0x4

    #@f4
    aget v5, p4, v5

    #@f6
    int-to-long v0, v5

    #@f7
    move-wide/from16 v26, v0

    #@f9
    const-wide v28, 0xffffffffL

    #@fe
    and-long v26, v26, v28

    #@100
    add-long v24, v24, v26

    #@102
    add-long v2, v2, v24

    #@104
    .line 540
    add-int/lit8 v5, p5, 0x4

    #@106
    long-to-int v0, v2

    #@107
    move/from16 v24, v0

    #@109
    aput v24, p4, v5

    #@10b
    .line 541
    const/16 v5, 0x20

    #@10d
    ushr-long/2addr v2, v5

    #@10e
    .line 542
    mul-long v24, v6, v18

    #@110
    add-int/lit8 v5, p5, 0x5

    #@112
    aget v5, p4, v5

    #@114
    int-to-long v0, v5

    #@115
    move-wide/from16 v26, v0

    #@117
    const-wide v28, 0xffffffffL

    #@11c
    and-long v26, v26, v28

    #@11e
    add-long v24, v24, v26

    #@120
    add-long v2, v2, v24

    #@122
    .line 543
    add-int/lit8 v5, p5, 0x5

    #@124
    long-to-int v0, v2

    #@125
    move/from16 v24, v0

    #@127
    aput v24, p4, v5

    #@129
    .line 544
    const/16 v5, 0x20

    #@12b
    ushr-long/2addr v2, v5

    #@12c
    .line 545
    mul-long v24, v6, v20

    #@12e
    add-int/lit8 v5, p5, 0x6

    #@130
    aget v5, p4, v5

    #@132
    int-to-long v0, v5

    #@133
    move-wide/from16 v26, v0

    #@135
    const-wide v28, 0xffffffffL

    #@13a
    and-long v26, v26, v28

    #@13c
    add-long v24, v24, v26

    #@13e
    add-long v2, v2, v24

    #@140
    .line 546
    add-int/lit8 v5, p5, 0x6

    #@142
    long-to-int v0, v2

    #@143
    move/from16 v24, v0

    #@145
    aput v24, p4, v5

    #@147
    .line 547
    const/16 v5, 0x20

    #@149
    ushr-long/2addr v2, v5

    #@14a
    .line 548
    add-int/lit8 v5, p5, 0x7

    #@14c
    aget v5, p4, v5

    #@14e
    int-to-long v0, v5

    #@14f
    move-wide/from16 v24, v0

    #@151
    const-wide v26, 0xffffffffL

    #@156
    and-long v24, v24, v26

    #@158
    add-long v24, v24, v22

    #@15a
    add-long v2, v2, v24

    #@15c
    .line 549
    add-int/lit8 v5, p5, 0x7

    #@15e
    long-to-int v0, v2

    #@15f
    move/from16 v24, v0

    #@161
    aput v24, p4, v5

    #@163
    .line 550
    const/16 v5, 0x20

    #@165
    ushr-long v22, v2, v5

    #@167
    .line 551
    add-int/lit8 p5, p5, 0x1

    #@169
    .line 524
    add-int/lit8 v4, v4, 0x1

    #@16b
    goto/16 :goto_0

    #@16d
    .line 553
    .end local v2    # "c":J
    .end local v6    # "x_i":J
    :cond_0
    move-wide/from16 v0, v22

    #@16f
    long-to-int v5, v0

    #@170
    return v5
.end method

.method public static mulAddTo([I[I[I)I
    .locals 30
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    #@0
    .prologue
    .line 473
    const/4 v5, 0x0

    #@1
    aget v5, p1, v5

    #@3
    int-to-long v0, v5

    #@4
    move-wide/from16 v24, v0

    #@6
    const-wide v26, 0xffffffffL

    #@b
    and-long v8, v24, v26

    #@d
    .line 474
    .local v8, "y_0":J
    const/4 v5, 0x1

    #@e
    aget v5, p1, v5

    #@10
    int-to-long v0, v5

    #@11
    move-wide/from16 v24, v0

    #@13
    const-wide v26, 0xffffffffL

    #@18
    and-long v10, v24, v26

    #@1a
    .line 475
    .local v10, "y_1":J
    const/4 v5, 0x2

    #@1b
    aget v5, p1, v5

    #@1d
    int-to-long v0, v5

    #@1e
    move-wide/from16 v24, v0

    #@20
    const-wide v26, 0xffffffffL

    #@25
    and-long v12, v24, v26

    #@27
    .line 476
    .local v12, "y_2":J
    const/4 v5, 0x3

    #@28
    aget v5, p1, v5

    #@2a
    int-to-long v0, v5

    #@2b
    move-wide/from16 v24, v0

    #@2d
    const-wide v26, 0xffffffffL

    #@32
    and-long v14, v24, v26

    #@34
    .line 477
    .local v14, "y_3":J
    const/4 v5, 0x4

    #@35
    aget v5, p1, v5

    #@37
    int-to-long v0, v5

    #@38
    move-wide/from16 v24, v0

    #@3a
    const-wide v26, 0xffffffffL

    #@3f
    and-long v16, v24, v26

    #@41
    .line 478
    .local v16, "y_4":J
    const/4 v5, 0x5

    #@42
    aget v5, p1, v5

    #@44
    int-to-long v0, v5

    #@45
    move-wide/from16 v24, v0

    #@47
    const-wide v26, 0xffffffffL

    #@4c
    and-long v18, v24, v26

    #@4e
    .line 479
    .local v18, "y_5":J
    const/4 v5, 0x6

    #@4f
    aget v5, p1, v5

    #@51
    int-to-long v0, v5

    #@52
    move-wide/from16 v24, v0

    #@54
    const-wide v26, 0xffffffffL

    #@59
    and-long v20, v24, v26

    #@5b
    .line 481
    .local v20, "y_6":J
    const-wide/16 v22, 0x0

    #@5d
    .line 482
    .local v22, "zc":J
    const/4 v4, 0x0

    #@5e
    .local v4, "i":I
    :goto_0
    const/4 v5, 0x7

    #@5f
    if-ge v4, v5, :cond_0

    #@61
    .line 484
    aget v5, p0, v4

    #@63
    int-to-long v0, v5

    #@64
    move-wide/from16 v24, v0

    #@66
    const-wide v26, 0xffffffffL

    #@6b
    and-long v6, v24, v26

    #@6d
    .line 485
    .local v6, "x_i":J
    mul-long v24, v6, v8

    #@6f
    add-int/lit8 v5, v4, 0x0

    #@71
    aget v5, p2, v5

    #@73
    int-to-long v0, v5

    #@74
    move-wide/from16 v26, v0

    #@76
    const-wide v28, 0xffffffffL

    #@7b
    and-long v26, v26, v28

    #@7d
    add-long v24, v24, v26

    #@7f
    .line 484
    const-wide/16 v26, 0x0

    #@81
    .line 485
    add-long v2, v26, v24

    #@83
    .line 486
    .local v2, "c":J
    add-int/lit8 v5, v4, 0x0

    #@85
    long-to-int v0, v2

    #@86
    move/from16 v24, v0

    #@88
    aput v24, p2, v5

    #@8a
    .line 487
    const/16 v5, 0x20

    #@8c
    ushr-long/2addr v2, v5

    #@8d
    .line 488
    mul-long v24, v6, v10

    #@8f
    add-int/lit8 v5, v4, 0x1

    #@91
    aget v5, p2, v5

    #@93
    int-to-long v0, v5

    #@94
    move-wide/from16 v26, v0

    #@96
    const-wide v28, 0xffffffffL

    #@9b
    and-long v26, v26, v28

    #@9d
    add-long v24, v24, v26

    #@9f
    add-long v2, v2, v24

    #@a1
    .line 489
    add-int/lit8 v5, v4, 0x1

    #@a3
    long-to-int v0, v2

    #@a4
    move/from16 v24, v0

    #@a6
    aput v24, p2, v5

    #@a8
    .line 490
    const/16 v5, 0x20

    #@aa
    ushr-long/2addr v2, v5

    #@ab
    .line 491
    mul-long v24, v6, v12

    #@ad
    add-int/lit8 v5, v4, 0x2

    #@af
    aget v5, p2, v5

    #@b1
    int-to-long v0, v5

    #@b2
    move-wide/from16 v26, v0

    #@b4
    const-wide v28, 0xffffffffL

    #@b9
    and-long v26, v26, v28

    #@bb
    add-long v24, v24, v26

    #@bd
    add-long v2, v2, v24

    #@bf
    .line 492
    add-int/lit8 v5, v4, 0x2

    #@c1
    long-to-int v0, v2

    #@c2
    move/from16 v24, v0

    #@c4
    aput v24, p2, v5

    #@c6
    .line 493
    const/16 v5, 0x20

    #@c8
    ushr-long/2addr v2, v5

    #@c9
    .line 494
    mul-long v24, v6, v14

    #@cb
    add-int/lit8 v5, v4, 0x3

    #@cd
    aget v5, p2, v5

    #@cf
    int-to-long v0, v5

    #@d0
    move-wide/from16 v26, v0

    #@d2
    const-wide v28, 0xffffffffL

    #@d7
    and-long v26, v26, v28

    #@d9
    add-long v24, v24, v26

    #@db
    add-long v2, v2, v24

    #@dd
    .line 495
    add-int/lit8 v5, v4, 0x3

    #@df
    long-to-int v0, v2

    #@e0
    move/from16 v24, v0

    #@e2
    aput v24, p2, v5

    #@e4
    .line 496
    const/16 v5, 0x20

    #@e6
    ushr-long/2addr v2, v5

    #@e7
    .line 497
    mul-long v24, v6, v16

    #@e9
    add-int/lit8 v5, v4, 0x4

    #@eb
    aget v5, p2, v5

    #@ed
    int-to-long v0, v5

    #@ee
    move-wide/from16 v26, v0

    #@f0
    const-wide v28, 0xffffffffL

    #@f5
    and-long v26, v26, v28

    #@f7
    add-long v24, v24, v26

    #@f9
    add-long v2, v2, v24

    #@fb
    .line 498
    add-int/lit8 v5, v4, 0x4

    #@fd
    long-to-int v0, v2

    #@fe
    move/from16 v24, v0

    #@100
    aput v24, p2, v5

    #@102
    .line 499
    const/16 v5, 0x20

    #@104
    ushr-long/2addr v2, v5

    #@105
    .line 500
    mul-long v24, v6, v18

    #@107
    add-int/lit8 v5, v4, 0x5

    #@109
    aget v5, p2, v5

    #@10b
    int-to-long v0, v5

    #@10c
    move-wide/from16 v26, v0

    #@10e
    const-wide v28, 0xffffffffL

    #@113
    and-long v26, v26, v28

    #@115
    add-long v24, v24, v26

    #@117
    add-long v2, v2, v24

    #@119
    .line 501
    add-int/lit8 v5, v4, 0x5

    #@11b
    long-to-int v0, v2

    #@11c
    move/from16 v24, v0

    #@11e
    aput v24, p2, v5

    #@120
    .line 502
    const/16 v5, 0x20

    #@122
    ushr-long/2addr v2, v5

    #@123
    .line 503
    mul-long v24, v6, v20

    #@125
    add-int/lit8 v5, v4, 0x6

    #@127
    aget v5, p2, v5

    #@129
    int-to-long v0, v5

    #@12a
    move-wide/from16 v26, v0

    #@12c
    const-wide v28, 0xffffffffL

    #@131
    and-long v26, v26, v28

    #@133
    add-long v24, v24, v26

    #@135
    add-long v2, v2, v24

    #@137
    .line 504
    add-int/lit8 v5, v4, 0x6

    #@139
    long-to-int v0, v2

    #@13a
    move/from16 v24, v0

    #@13c
    aput v24, p2, v5

    #@13e
    .line 505
    const/16 v5, 0x20

    #@140
    ushr-long/2addr v2, v5

    #@141
    .line 506
    add-int/lit8 v5, v4, 0x7

    #@143
    aget v5, p2, v5

    #@145
    int-to-long v0, v5

    #@146
    move-wide/from16 v24, v0

    #@148
    const-wide v26, 0xffffffffL

    #@14d
    and-long v24, v24, v26

    #@14f
    add-long v24, v24, v22

    #@151
    add-long v2, v2, v24

    #@153
    .line 507
    add-int/lit8 v5, v4, 0x7

    #@155
    long-to-int v0, v2

    #@156
    move/from16 v24, v0

    #@158
    aput v24, p2, v5

    #@15a
    .line 508
    const/16 v5, 0x20

    #@15c
    ushr-long v22, v2, v5

    #@15e
    .line 482
    add-int/lit8 v4, v4, 0x1

    #@160
    goto/16 :goto_0

    #@162
    .line 510
    .end local v2    # "c":J
    .end local v6    # "x_i":J
    :cond_0
    move-wide/from16 v0, v22

    #@164
    long-to-int v5, v0

    #@165
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
    .line 595
    int-to-long v4, p0

    #@b
    and-long v2, v4, v8

    #@d
    .line 596
    .local v2, "xVal":J
    aget v4, p1, v11

    #@f
    int-to-long v4, v4

    #@10
    and-long/2addr v4, v8

    #@11
    mul-long/2addr v4, v2

    #@12
    .line 595
    const-wide/16 v6, 0x0

    #@14
    .line 596
    add-long v0, v6, v4

    #@16
    .line 597
    .local v0, "c":J
    long-to-int v4, v0

    #@17
    aput v4, p1, v11

    #@19
    .line 598
    ushr-long/2addr v0, v10

    #@1a
    .line 599
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
    .line 600
    long-to-int v4, v0

    #@21
    aput v4, p1, v12

    #@23
    .line 601
    ushr-long/2addr v0, v10

    #@24
    .line 602
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
    .line 603
    long-to-int v4, v0

    #@2b
    aput v4, p1, v13

    #@2d
    .line 604
    ushr-long/2addr v0, v10

    #@2e
    .line 605
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
    .line 606
    long-to-int v4, v0

    #@36
    const/4 v5, 0x3

    #@37
    aput v4, p1, v5

    #@39
    .line 607
    ushr-long/2addr v0, v10

    #@3a
    .line 608
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
    .line 609
    long-to-int v4, v0

    #@42
    const/4 v5, 0x4

    #@43
    aput v4, p1, v5

    #@45
    .line 610
    ushr-long/2addr v0, v10

    #@46
    .line 611
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
    .line 612
    long-to-int v4, v0

    #@4e
    const/4 v5, 0x5

    #@4f
    aput v4, p1, v5

    #@51
    .line 613
    ushr-long/2addr v0, v10

    #@52
    .line 614
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
    .line 615
    long-to-int v4, v0

    #@5a
    const/4 v5, 0x6

    #@5b
    aput v4, p1, v5

    #@5d
    .line 616
    ushr-long/2addr v0, v10

    #@5e
    .line 617
    long-to-int v4, v0

    #@5f
    return v4
.end method

.method public static mulByWordAddTo(I[I[I)I
    .locals 10
    .param p0, "x"    # I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    #@0
    .prologue
    .line 622
    int-to-long v4, p0

    #@1
    const-wide v6, 0xffffffffL

    #@6
    and-long v2, v4, v6

    #@8
    .line 623
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
    .line 622
    const-wide/16 v6, 0x0

    #@20
    .line 623
    add-long v0, v6, v4

    #@22
    .line 624
    .local v0, "c":J
    long-to-int v4, v0

    #@23
    const/4 v5, 0x0

    #@24
    aput v4, p2, v5

    #@26
    .line 625
    const/16 v4, 0x20

    #@28
    ushr-long/2addr v0, v4

    #@29
    .line 626
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
    .line 627
    long-to-int v4, v0

    #@41
    const/4 v5, 0x1

    #@42
    aput v4, p2, v5

    #@44
    .line 628
    const/16 v4, 0x20

    #@46
    ushr-long/2addr v0, v4

    #@47
    .line 629
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
    .line 630
    long-to-int v4, v0

    #@5f
    const/4 v5, 0x2

    #@60
    aput v4, p2, v5

    #@62
    .line 631
    const/16 v4, 0x20

    #@64
    ushr-long/2addr v0, v4

    #@65
    .line 632
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
    .line 633
    long-to-int v4, v0

    #@7d
    const/4 v5, 0x3

    #@7e
    aput v4, p2, v5

    #@80
    .line 634
    const/16 v4, 0x20

    #@82
    ushr-long/2addr v0, v4

    #@83
    .line 635
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
    .line 636
    long-to-int v4, v0

    #@9b
    const/4 v5, 0x4

    #@9c
    aput v4, p2, v5

    #@9e
    .line 637
    const/16 v4, 0x20

    #@a0
    ushr-long/2addr v0, v4

    #@a1
    .line 638
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
    .line 639
    long-to-int v4, v0

    #@b9
    const/4 v5, 0x5

    #@ba
    aput v4, p2, v5

    #@bc
    .line 640
    const/16 v4, 0x20

    #@be
    ushr-long/2addr v0, v4

    #@bf
    .line 641
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
    .line 642
    long-to-int v4, v0

    #@d7
    const/4 v5, 0x6

    #@d8
    aput v4, p2, v5

    #@da
    .line 643
    const/16 v4, 0x20

    #@dc
    ushr-long/2addr v0, v4

    #@dd
    .line 644
    long-to-int v4, v0

    #@de
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
    .line 733
    const-wide/16 v0, 0x0

    #@7
    .local v0, "c":J
    int-to-long v6, p0

    #@8
    and-long v4, v6, v8

    #@a
    .line 734
    .local v4, "xVal":J
    const/4 v2, 0x0

    #@b
    .line 737
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
    .line 738
    add-int v3, p3, v2

    #@13
    long-to-int v6, v0

    #@14
    aput v6, p2, v3

    #@16
    .line 739
    const/16 v3, 0x20

    #@18
    ushr-long/2addr v0, v3

    #@19
    .line 741
    add-int/lit8 v2, v2, 0x1

    #@1b
    const/4 v3, 0x7

    #@1c
    if-lt v2, v3, :cond_0

    #@1e
    .line 742
    long-to-int v3, v0

    #@1f
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
    .line 649
    int-to-long v4, p0

    #@8
    and-long v2, v4, v8

    #@a
    .line 650
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
    .line 649
    const-wide/16 v6, 0x0

    #@1a
    .line 650
    add-long v0, v6, v4

    #@1c
    .line 651
    .local v0, "c":J
    add-int/lit8 v4, p4, 0x0

    #@1e
    long-to-int v5, v0

    #@1f
    aput v5, p3, v4

    #@21
    .line 652
    ushr-long/2addr v0, v10

    #@22
    .line 653
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
    .line 654
    add-int/lit8 v4, p4, 0x1

    #@33
    long-to-int v5, v0

    #@34
    aput v5, p3, v4

    #@36
    .line 655
    ushr-long/2addr v0, v10

    #@37
    .line 656
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
    .line 657
    add-int/lit8 v4, p4, 0x2

    #@48
    long-to-int v5, v0

    #@49
    aput v5, p3, v4

    #@4b
    .line 658
    ushr-long/2addr v0, v10

    #@4c
    .line 659
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
    .line 660
    add-int/lit8 v4, p4, 0x3

    #@5d
    long-to-int v5, v0

    #@5e
    aput v5, p3, v4

    #@60
    .line 661
    ushr-long/2addr v0, v10

    #@61
    .line 662
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
    .line 663
    add-int/lit8 v4, p4, 0x4

    #@72
    long-to-int v5, v0

    #@73
    aput v5, p3, v4

    #@75
    .line 664
    ushr-long/2addr v0, v10

    #@76
    .line 665
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
    .line 666
    add-int/lit8 v4, p4, 0x5

    #@87
    long-to-int v5, v0

    #@88
    aput v5, p3, v4

    #@8a
    .line 667
    ushr-long/2addr v0, v10

    #@8b
    .line 668
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
    .line 669
    add-int/lit8 v4, p4, 0x6

    #@9c
    long-to-int v5, v0

    #@9d
    aput v5, p3, v4

    #@9f
    .line 670
    ushr-long/2addr v0, v10

    #@a0
    .line 671
    long-to-int v4, v0

    #@a1
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
    .line 718
    int-to-long v4, p0

    #@1
    const-wide v6, 0xffffffffL

    #@6
    and-long v2, v4, v6

    #@8
    .line 719
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
    .line 718
    const-wide/16 v6, 0x0

    #@1d
    .line 719
    add-long v0, v6, v4

    #@1f
    .line 720
    .local v0, "c":J
    add-int/lit8 v4, p4, 0x0

    #@21
    long-to-int v5, v0

    #@22
    aput v5, p3, v4

    #@24
    .line 721
    const/16 v4, 0x20

    #@26
    ushr-long/2addr v0, v4

    #@27
    .line 722
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
    .line 723
    add-int/lit8 v4, p4, 0x1

    #@3b
    long-to-int v5, v0

    #@3c
    aput v5, p3, v4

    #@3e
    .line 724
    const/16 v4, 0x20

    #@40
    ushr-long/2addr v0, v4

    #@41
    .line 725
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
    .line 726
    add-int/lit8 v4, p4, 0x2

    #@4f
    long-to-int v5, v0

    #@50
    aput v5, p3, v4

    #@52
    .line 727
    const/16 v4, 0x20

    #@54
    ushr-long/2addr v0, v4

    #@55
    .line 728
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
    const/4 v4, 0x7

    #@5e
    const/4 v5, 0x3

    #@5f
    invoke-static {v4, p3, p4, v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[III)I

    #@62
    move-result v4

    #@63
    goto :goto_0
.end method

.method public static square([II[II)V
    .locals 54
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "zz"    # [I
    .param p3, "zzOff"    # I

    #@0
    .prologue
    .line 886
    add-int/lit8 v9, p1, 0x0

    #@2
    aget v9, p0, v9

    #@4
    int-to-long v0, v9

    #@5
    move-wide/from16 v50, v0

    #@7
    const-wide v52, 0xffffffffL

    #@c
    and-long v12, v50, v52

    #@e
    .line 889
    .local v12, "x_0":J
    const/4 v2, 0x0

    #@f
    .line 891
    .local v2, "c":I
    const/4 v3, 0x6

    #@10
    .local v3, "i":I
    const/16 v5, 0xe

    #@12
    .line 894
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
    move-wide/from16 v50, v0

    #@1b
    const-wide v52, 0xffffffffL

    #@20
    and-long v10, v50, v52

    #@22
    .line 895
    .local v10, "xVal":J
    mul-long v6, v10, v10

    #@24
    .line 896
    .local v6, "p":J
    add-int/lit8 v5, v5, -0x1

    #@26
    add-int v9, p3, v5

    #@28
    shl-int/lit8 v50, v2, 0x1f

    #@2a
    const/16 v51, 0x21

    #@2c
    ushr-long v52, v6, v51

    #@2e
    move-wide/from16 v0, v52

    #@30
    long-to-int v0, v0

    #@31
    move/from16 v51, v0

    #@33
    or-int v50, v50, v51

    #@35
    aput v50, p2, v9

    #@37
    .line 897
    add-int/lit8 v5, v5, -0x1

    #@39
    add-int v9, p3, v5

    #@3b
    const/16 v50, 0x1

    #@3d
    ushr-long v50, v6, v50

    #@3f
    move-wide/from16 v0, v50

    #@41
    long-to-int v0, v0

    #@42
    move/from16 v50, v0

    #@44
    aput v50, p2, v9

    #@46
    .line 898
    long-to-int v2, v6

    #@47
    .line 900
    if-lez v4, :cond_0

    #@49
    move v3, v4

    #@4a
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    #@4b
    .line 903
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_0
    mul-long v6, v12, v12

    #@4d
    .line 904
    shl-int/lit8 v9, v2, 0x1f

    #@4f
    int-to-long v0, v9

    #@50
    move-wide/from16 v50, v0

    #@52
    const-wide v52, 0xffffffffL

    #@57
    and-long v50, v50, v52

    #@59
    const/16 v9, 0x21

    #@5b
    ushr-long v52, v6, v9

    #@5d
    or-long v26, v50, v52

    #@5f
    .line 905
    .local v26, "zz_1":J
    add-int/lit8 v9, p3, 0x0

    #@61
    long-to-int v0, v6

    #@62
    move/from16 v50, v0

    #@64
    aput v50, p2, v9

    #@66
    .line 906
    const/16 v9, 0x20

    #@68
    ushr-long v50, v6, v9

    #@6a
    move-wide/from16 v0, v50

    #@6c
    long-to-int v9, v0

    #@6d
    and-int/lit8 v2, v9, 0x1

    #@6f
    .line 910
    add-int/lit8 v9, p1, 0x1

    #@71
    aget v9, p0, v9

    #@73
    int-to-long v0, v9

    #@74
    move-wide/from16 v50, v0

    #@76
    const-wide v52, 0xffffffffL

    #@7b
    and-long v14, v50, v52

    #@7d
    .line 911
    .local v14, "x_1":J
    add-int/lit8 v9, p3, 0x2

    #@7f
    aget v9, p2, v9

    #@81
    int-to-long v0, v9

    #@82
    move-wide/from16 v50, v0

    #@84
    const-wide v52, 0xffffffffL

    #@89
    and-long v34, v50, v52

    #@8b
    .line 914
    .local v34, "zz_2":J
    mul-long v50, v14, v12

    #@8d
    add-long v26, v26, v50

    #@8f
    .line 915
    move-wide/from16 v0, v26

    #@91
    long-to-int v8, v0

    #@92
    .line 916
    .local v8, "w":I
    add-int/lit8 v9, p3, 0x1

    #@94
    shl-int/lit8 v50, v8, 0x1

    #@96
    or-int v50, v50, v2

    #@98
    aput v50, p2, v9

    #@9a
    .line 917
    ushr-int/lit8 v2, v8, 0x1f

    #@9c
    .line 918
    const/16 v9, 0x20

    #@9e
    ushr-long v50, v26, v9

    #@a0
    add-long v34, v34, v50

    #@a2
    .line 921
    add-int/lit8 v9, p1, 0x2

    #@a4
    aget v9, p0, v9

    #@a6
    int-to-long v0, v9

    #@a7
    move-wide/from16 v50, v0

    #@a9
    const-wide v52, 0xffffffffL

    #@ae
    and-long v16, v50, v52

    #@b0
    .line 922
    .local v16, "x_2":J
    add-int/lit8 v9, p3, 0x3

    #@b2
    aget v9, p2, v9

    #@b4
    int-to-long v0, v9

    #@b5
    move-wide/from16 v50, v0

    #@b7
    const-wide v52, 0xffffffffL

    #@bc
    and-long v36, v50, v52

    #@be
    .line 923
    .local v36, "zz_3":J
    add-int/lit8 v9, p3, 0x4

    #@c0
    aget v9, p2, v9

    #@c2
    int-to-long v0, v9

    #@c3
    move-wide/from16 v50, v0

    #@c5
    const-wide v52, 0xffffffffL

    #@ca
    and-long v38, v50, v52

    #@cc
    .line 925
    .local v38, "zz_4":J
    mul-long v50, v16, v12

    #@ce
    add-long v34, v34, v50

    #@d0
    .line 926
    move-wide/from16 v0, v34

    #@d2
    long-to-int v8, v0

    #@d3
    .line 927
    add-int/lit8 v9, p3, 0x2

    #@d5
    shl-int/lit8 v50, v8, 0x1

    #@d7
    or-int v50, v50, v2

    #@d9
    aput v50, p2, v9

    #@db
    .line 928
    ushr-int/lit8 v2, v8, 0x1f

    #@dd
    .line 929
    const/16 v9, 0x20

    #@df
    ushr-long v50, v34, v9

    #@e1
    mul-long v52, v16, v14

    #@e3
    add-long v50, v50, v52

    #@e5
    add-long v36, v36, v50

    #@e7
    .line 930
    const/16 v9, 0x20

    #@e9
    ushr-long v50, v36, v9

    #@eb
    add-long v38, v38, v50

    #@ed
    .line 931
    const-wide v50, 0xffffffffL

    #@f2
    and-long v36, v36, v50

    #@f4
    .line 934
    add-int/lit8 v9, p1, 0x3

    #@f6
    aget v9, p0, v9

    #@f8
    int-to-long v0, v9

    #@f9
    move-wide/from16 v50, v0

    #@fb
    const-wide v52, 0xffffffffL

    #@100
    and-long v18, v50, v52

    #@102
    .line 935
    .local v18, "x_3":J
    add-int/lit8 v9, p3, 0x5

    #@104
    aget v9, p2, v9

    #@106
    int-to-long v0, v9

    #@107
    move-wide/from16 v50, v0

    #@109
    const-wide v52, 0xffffffffL

    #@10e
    and-long v40, v50, v52

    #@110
    .line 936
    .local v40, "zz_5":J
    add-int/lit8 v9, p3, 0x6

    #@112
    aget v9, p2, v9

    #@114
    int-to-long v0, v9

    #@115
    move-wide/from16 v50, v0

    #@117
    const-wide v52, 0xffffffffL

    #@11c
    and-long v42, v50, v52

    #@11e
    .line 938
    .local v42, "zz_6":J
    mul-long v50, v18, v12

    #@120
    add-long v36, v36, v50

    #@122
    .line 939
    move-wide/from16 v0, v36

    #@124
    long-to-int v8, v0

    #@125
    .line 940
    add-int/lit8 v9, p3, 0x3

    #@127
    shl-int/lit8 v50, v8, 0x1

    #@129
    or-int v50, v50, v2

    #@12b
    aput v50, p2, v9

    #@12d
    .line 941
    ushr-int/lit8 v2, v8, 0x1f

    #@12f
    .line 942
    const/16 v9, 0x20

    #@131
    ushr-long v50, v36, v9

    #@133
    mul-long v52, v18, v14

    #@135
    add-long v50, v50, v52

    #@137
    add-long v38, v38, v50

    #@139
    .line 943
    const/16 v9, 0x20

    #@13b
    ushr-long v50, v38, v9

    #@13d
    mul-long v52, v18, v16

    #@13f
    add-long v50, v50, v52

    #@141
    add-long v40, v40, v50

    #@143
    .line 944
    const-wide v50, 0xffffffffL

    #@148
    and-long v38, v38, v50

    #@14a
    .line 945
    const/16 v9, 0x20

    #@14c
    ushr-long v50, v40, v9

    #@14e
    add-long v42, v42, v50

    #@150
    .line 946
    const-wide v50, 0xffffffffL

    #@155
    and-long v40, v40, v50

    #@157
    .line 949
    add-int/lit8 v9, p1, 0x4

    #@159
    aget v9, p0, v9

    #@15b
    int-to-long v0, v9

    #@15c
    move-wide/from16 v50, v0

    #@15e
    const-wide v52, 0xffffffffL

    #@163
    and-long v20, v50, v52

    #@165
    .line 950
    .local v20, "x_4":J
    add-int/lit8 v9, p3, 0x7

    #@167
    aget v9, p2, v9

    #@169
    int-to-long v0, v9

    #@16a
    move-wide/from16 v50, v0

    #@16c
    const-wide v52, 0xffffffffL

    #@171
    and-long v44, v50, v52

    #@173
    .line 951
    .local v44, "zz_7":J
    add-int/lit8 v9, p3, 0x8

    #@175
    aget v9, p2, v9

    #@177
    int-to-long v0, v9

    #@178
    move-wide/from16 v50, v0

    #@17a
    const-wide v52, 0xffffffffL

    #@17f
    and-long v46, v50, v52

    #@181
    .line 953
    .local v46, "zz_8":J
    mul-long v50, v20, v12

    #@183
    add-long v38, v38, v50

    #@185
    .line 954
    move-wide/from16 v0, v38

    #@187
    long-to-int v8, v0

    #@188
    .line 955
    add-int/lit8 v9, p3, 0x4

    #@18a
    shl-int/lit8 v50, v8, 0x1

    #@18c
    or-int v50, v50, v2

    #@18e
    aput v50, p2, v9

    #@190
    .line 956
    ushr-int/lit8 v2, v8, 0x1f

    #@192
    .line 957
    const/16 v9, 0x20

    #@194
    ushr-long v50, v38, v9

    #@196
    mul-long v52, v20, v14

    #@198
    add-long v50, v50, v52

    #@19a
    add-long v40, v40, v50

    #@19c
    .line 958
    const/16 v9, 0x20

    #@19e
    ushr-long v50, v40, v9

    #@1a0
    mul-long v52, v20, v16

    #@1a2
    add-long v50, v50, v52

    #@1a4
    add-long v42, v42, v50

    #@1a6
    .line 959
    const-wide v50, 0xffffffffL

    #@1ab
    and-long v40, v40, v50

    #@1ad
    .line 960
    const/16 v9, 0x20

    #@1af
    ushr-long v50, v42, v9

    #@1b1
    mul-long v52, v20, v18

    #@1b3
    add-long v50, v50, v52

    #@1b5
    add-long v44, v44, v50

    #@1b7
    .line 961
    const-wide v50, 0xffffffffL

    #@1bc
    and-long v42, v42, v50

    #@1be
    .line 962
    const/16 v9, 0x20

    #@1c0
    ushr-long v50, v44, v9

    #@1c2
    add-long v46, v46, v50

    #@1c4
    .line 963
    const-wide v50, 0xffffffffL

    #@1c9
    and-long v44, v44, v50

    #@1cb
    .line 966
    add-int/lit8 v9, p1, 0x5

    #@1cd
    aget v9, p0, v9

    #@1cf
    int-to-long v0, v9

    #@1d0
    move-wide/from16 v50, v0

    #@1d2
    const-wide v52, 0xffffffffL

    #@1d7
    and-long v22, v50, v52

    #@1d9
    .line 967
    .local v22, "x_5":J
    add-int/lit8 v9, p3, 0x9

    #@1db
    aget v9, p2, v9

    #@1dd
    int-to-long v0, v9

    #@1de
    move-wide/from16 v50, v0

    #@1e0
    const-wide v52, 0xffffffffL

    #@1e5
    and-long v48, v50, v52

    #@1e7
    .line 968
    .local v48, "zz_9":J
    add-int/lit8 v9, p3, 0xa

    #@1e9
    aget v9, p2, v9

    #@1eb
    int-to-long v0, v9

    #@1ec
    move-wide/from16 v50, v0

    #@1ee
    const-wide v52, 0xffffffffL

    #@1f3
    and-long v28, v50, v52

    #@1f5
    .line 970
    .local v28, "zz_10":J
    mul-long v50, v22, v12

    #@1f7
    add-long v40, v40, v50

    #@1f9
    .line 971
    move-wide/from16 v0, v40

    #@1fb
    long-to-int v8, v0

    #@1fc
    .line 972
    add-int/lit8 v9, p3, 0x5

    #@1fe
    shl-int/lit8 v50, v8, 0x1

    #@200
    or-int v50, v50, v2

    #@202
    aput v50, p2, v9

    #@204
    .line 973
    ushr-int/lit8 v2, v8, 0x1f

    #@206
    .line 974
    const/16 v9, 0x20

    #@208
    ushr-long v50, v40, v9

    #@20a
    mul-long v52, v22, v14

    #@20c
    add-long v50, v50, v52

    #@20e
    add-long v42, v42, v50

    #@210
    .line 975
    const/16 v9, 0x20

    #@212
    ushr-long v50, v42, v9

    #@214
    mul-long v52, v22, v16

    #@216
    add-long v50, v50, v52

    #@218
    add-long v44, v44, v50

    #@21a
    .line 976
    const-wide v50, 0xffffffffL

    #@21f
    and-long v42, v42, v50

    #@221
    .line 977
    const/16 v9, 0x20

    #@223
    ushr-long v50, v44, v9

    #@225
    mul-long v52, v22, v18

    #@227
    add-long v50, v50, v52

    #@229
    add-long v46, v46, v50

    #@22b
    .line 978
    const-wide v50, 0xffffffffL

    #@230
    and-long v44, v44, v50

    #@232
    .line 979
    const/16 v9, 0x20

    #@234
    ushr-long v50, v46, v9

    #@236
    mul-long v52, v22, v20

    #@238
    add-long v50, v50, v52

    #@23a
    add-long v48, v48, v50

    #@23c
    .line 980
    const-wide v50, 0xffffffffL

    #@241
    and-long v46, v46, v50

    #@243
    .line 981
    const/16 v9, 0x20

    #@245
    ushr-long v50, v48, v9

    #@247
    add-long v28, v28, v50

    #@249
    .line 982
    const-wide v50, 0xffffffffL

    #@24e
    and-long v48, v48, v50

    #@250
    .line 985
    add-int/lit8 v9, p1, 0x6

    #@252
    aget v9, p0, v9

    #@254
    int-to-long v0, v9

    #@255
    move-wide/from16 v50, v0

    #@257
    const-wide v52, 0xffffffffL

    #@25c
    and-long v24, v50, v52

    #@25e
    .line 986
    .local v24, "x_6":J
    add-int/lit8 v9, p3, 0xb

    #@260
    aget v9, p2, v9

    #@262
    int-to-long v0, v9

    #@263
    move-wide/from16 v50, v0

    #@265
    const-wide v52, 0xffffffffL

    #@26a
    and-long v30, v50, v52

    #@26c
    .line 987
    .local v30, "zz_11":J
    add-int/lit8 v9, p3, 0xc

    #@26e
    aget v9, p2, v9

    #@270
    int-to-long v0, v9

    #@271
    move-wide/from16 v50, v0

    #@273
    const-wide v52, 0xffffffffL

    #@278
    and-long v32, v50, v52

    #@27a
    .line 989
    .local v32, "zz_12":J
    mul-long v50, v24, v12

    #@27c
    add-long v42, v42, v50

    #@27e
    .line 990
    move-wide/from16 v0, v42

    #@280
    long-to-int v8, v0

    #@281
    .line 991
    add-int/lit8 v9, p3, 0x6

    #@283
    shl-int/lit8 v50, v8, 0x1

    #@285
    or-int v50, v50, v2

    #@287
    aput v50, p2, v9

    #@289
    .line 992
    ushr-int/lit8 v2, v8, 0x1f

    #@28b
    .line 993
    const/16 v9, 0x20

    #@28d
    ushr-long v50, v42, v9

    #@28f
    mul-long v52, v24, v14

    #@291
    add-long v50, v50, v52

    #@293
    add-long v44, v44, v50

    #@295
    .line 994
    const/16 v9, 0x20

    #@297
    ushr-long v50, v44, v9

    #@299
    mul-long v52, v24, v16

    #@29b
    add-long v50, v50, v52

    #@29d
    add-long v46, v46, v50

    #@29f
    .line 995
    const/16 v9, 0x20

    #@2a1
    ushr-long v50, v46, v9

    #@2a3
    mul-long v52, v24, v18

    #@2a5
    add-long v50, v50, v52

    #@2a7
    add-long v48, v48, v50

    #@2a9
    .line 996
    const/16 v9, 0x20

    #@2ab
    ushr-long v50, v48, v9

    #@2ad
    mul-long v52, v24, v20

    #@2af
    add-long v50, v50, v52

    #@2b1
    add-long v28, v28, v50

    #@2b3
    .line 997
    const/16 v9, 0x20

    #@2b5
    ushr-long v50, v28, v9

    #@2b7
    mul-long v52, v24, v22

    #@2b9
    add-long v50, v50, v52

    #@2bb
    add-long v30, v30, v50

    #@2bd
    .line 998
    const/16 v9, 0x20

    #@2bf
    ushr-long v50, v30, v9

    #@2c1
    add-long v32, v32, v50

    #@2c3
    .line 1001
    move-wide/from16 v0, v44

    #@2c5
    long-to-int v8, v0

    #@2c6
    .line 1002
    add-int/lit8 v9, p3, 0x7

    #@2c8
    shl-int/lit8 v50, v8, 0x1

    #@2ca
    or-int v50, v50, v2

    #@2cc
    aput v50, p2, v9

    #@2ce
    .line 1003
    ushr-int/lit8 v2, v8, 0x1f

    #@2d0
    .line 1004
    move-wide/from16 v0, v46

    #@2d2
    long-to-int v8, v0

    #@2d3
    .line 1005
    add-int/lit8 v9, p3, 0x8

    #@2d5
    shl-int/lit8 v50, v8, 0x1

    #@2d7
    or-int v50, v50, v2

    #@2d9
    aput v50, p2, v9

    #@2db
    .line 1006
    ushr-int/lit8 v2, v8, 0x1f

    #@2dd
    .line 1007
    move-wide/from16 v0, v48

    #@2df
    long-to-int v8, v0

    #@2e0
    .line 1008
    add-int/lit8 v9, p3, 0x9

    #@2e2
    shl-int/lit8 v50, v8, 0x1

    #@2e4
    or-int v50, v50, v2

    #@2e6
    aput v50, p2, v9

    #@2e8
    .line 1009
    ushr-int/lit8 v2, v8, 0x1f

    #@2ea
    .line 1010
    move-wide/from16 v0, v28

    #@2ec
    long-to-int v8, v0

    #@2ed
    .line 1011
    add-int/lit8 v9, p3, 0xa

    #@2ef
    shl-int/lit8 v50, v8, 0x1

    #@2f1
    or-int v50, v50, v2

    #@2f3
    aput v50, p2, v9

    #@2f5
    .line 1012
    ushr-int/lit8 v2, v8, 0x1f

    #@2f7
    .line 1013
    move-wide/from16 v0, v30

    #@2f9
    long-to-int v8, v0

    #@2fa
    .line 1014
    add-int/lit8 v9, p3, 0xb

    #@2fc
    shl-int/lit8 v50, v8, 0x1

    #@2fe
    or-int v50, v50, v2

    #@300
    aput v50, p2, v9

    #@302
    .line 1015
    ushr-int/lit8 v2, v8, 0x1f

    #@304
    .line 1016
    move-wide/from16 v0, v32

    #@306
    long-to-int v8, v0

    #@307
    .line 1017
    add-int/lit8 v9, p3, 0xc

    #@309
    shl-int/lit8 v50, v8, 0x1

    #@30b
    or-int v50, v50, v2

    #@30d
    aput v50, p2, v9

    #@30f
    .line 1018
    ushr-int/lit8 v2, v8, 0x1f

    #@311
    .line 1019
    add-int/lit8 v9, p3, 0xd

    #@313
    aget v9, p2, v9

    #@315
    const/16 v50, 0x20

    #@317
    shr-long v50, v32, v50

    #@319
    move-wide/from16 v0, v50

    #@31b
    long-to-int v0, v0

    #@31c
    move/from16 v50, v0

    #@31e
    add-int v8, v9, v50

    #@320
    .line 1020
    add-int/lit8 v9, p3, 0xd

    #@322
    shl-int/lit8 v50, v8, 0x1

    #@324
    or-int v50, v50, v2

    #@326
    aput v50, p2, v9

    #@328
    .line 884
    return-void
.end method

.method public static square([I[I)V
    .locals 54
    .param p0, "x"    # [I
    .param p1, "zz"    # [I

    #@0
    .prologue
    .line 747
    const/4 v9, 0x0

    #@1
    aget v9, p0, v9

    #@3
    int-to-long v0, v9

    #@4
    move-wide/from16 v50, v0

    #@6
    const-wide v52, 0xffffffffL

    #@b
    and-long v12, v50, v52

    #@d
    .line 750
    .local v12, "x_0":J
    const/4 v2, 0x0

    #@e
    .line 752
    .local v2, "c":I
    const/4 v3, 0x6

    #@f
    .local v3, "i":I
    const/16 v5, 0xe

    #@11
    .line 755
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
    move-wide/from16 v50, v0

    #@18
    const-wide v52, 0xffffffffL

    #@1d
    and-long v10, v50, v52

    #@1f
    .line 756
    .local v10, "xVal":J
    mul-long v6, v10, v10

    #@21
    .line 757
    .local v6, "p":J
    add-int/lit8 v5, v5, -0x1

    #@23
    shl-int/lit8 v9, v2, 0x1f

    #@25
    const/16 v50, 0x21

    #@27
    ushr-long v50, v6, v50

    #@29
    move-wide/from16 v0, v50

    #@2b
    long-to-int v0, v0

    #@2c
    move/from16 v50, v0

    #@2e
    or-int v9, v9, v50

    #@30
    aput v9, p1, v5

    #@32
    .line 758
    add-int/lit8 v5, v5, -0x1

    #@34
    const/4 v9, 0x1

    #@35
    ushr-long v50, v6, v9

    #@37
    move-wide/from16 v0, v50

    #@39
    long-to-int v9, v0

    #@3a
    aput v9, p1, v5

    #@3c
    .line 759
    long-to-int v2, v6

    #@3d
    .line 761
    if-lez v4, :cond_0

    #@3f
    move v3, v4

    #@40
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    #@41
    .line 764
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_0
    mul-long v6, v12, v12

    #@43
    .line 765
    shl-int/lit8 v9, v2, 0x1f

    #@45
    int-to-long v0, v9

    #@46
    move-wide/from16 v50, v0

    #@48
    const-wide v52, 0xffffffffL

    #@4d
    and-long v50, v50, v52

    #@4f
    const/16 v9, 0x21

    #@51
    ushr-long v52, v6, v9

    #@53
    or-long v26, v50, v52

    #@55
    .line 766
    .local v26, "zz_1":J
    long-to-int v9, v6

    #@56
    const/16 v50, 0x0

    #@58
    aput v9, p1, v50

    #@5a
    .line 767
    const/16 v9, 0x20

    #@5c
    ushr-long v50, v6, v9

    #@5e
    move-wide/from16 v0, v50

    #@60
    long-to-int v9, v0

    #@61
    and-int/lit8 v2, v9, 0x1

    #@63
    .line 771
    const/4 v9, 0x1

    #@64
    aget v9, p0, v9

    #@66
    int-to-long v0, v9

    #@67
    move-wide/from16 v50, v0

    #@69
    const-wide v52, 0xffffffffL

    #@6e
    and-long v14, v50, v52

    #@70
    .line 772
    .local v14, "x_1":J
    const/4 v9, 0x2

    #@71
    aget v9, p1, v9

    #@73
    int-to-long v0, v9

    #@74
    move-wide/from16 v50, v0

    #@76
    const-wide v52, 0xffffffffL

    #@7b
    and-long v34, v50, v52

    #@7d
    .line 775
    .local v34, "zz_2":J
    mul-long v50, v14, v12

    #@7f
    add-long v26, v26, v50

    #@81
    .line 776
    move-wide/from16 v0, v26

    #@83
    long-to-int v8, v0

    #@84
    .line 777
    .local v8, "w":I
    shl-int/lit8 v9, v8, 0x1

    #@86
    or-int/2addr v9, v2

    #@87
    const/16 v50, 0x1

    #@89
    aput v9, p1, v50

    #@8b
    .line 778
    ushr-int/lit8 v2, v8, 0x1f

    #@8d
    .line 779
    const/16 v9, 0x20

    #@8f
    ushr-long v50, v26, v9

    #@91
    add-long v34, v34, v50

    #@93
    .line 782
    const/4 v9, 0x2

    #@94
    aget v9, p0, v9

    #@96
    int-to-long v0, v9

    #@97
    move-wide/from16 v50, v0

    #@99
    const-wide v52, 0xffffffffL

    #@9e
    and-long v16, v50, v52

    #@a0
    .line 783
    .local v16, "x_2":J
    const/4 v9, 0x3

    #@a1
    aget v9, p1, v9

    #@a3
    int-to-long v0, v9

    #@a4
    move-wide/from16 v50, v0

    #@a6
    const-wide v52, 0xffffffffL

    #@ab
    and-long v36, v50, v52

    #@ad
    .line 784
    .local v36, "zz_3":J
    const/4 v9, 0x4

    #@ae
    aget v9, p1, v9

    #@b0
    int-to-long v0, v9

    #@b1
    move-wide/from16 v50, v0

    #@b3
    const-wide v52, 0xffffffffL

    #@b8
    and-long v38, v50, v52

    #@ba
    .line 786
    .local v38, "zz_4":J
    mul-long v50, v16, v12

    #@bc
    add-long v34, v34, v50

    #@be
    .line 787
    move-wide/from16 v0, v34

    #@c0
    long-to-int v8, v0

    #@c1
    .line 788
    shl-int/lit8 v9, v8, 0x1

    #@c3
    or-int/2addr v9, v2

    #@c4
    const/16 v50, 0x2

    #@c6
    aput v9, p1, v50

    #@c8
    .line 789
    ushr-int/lit8 v2, v8, 0x1f

    #@ca
    .line 790
    const/16 v9, 0x20

    #@cc
    ushr-long v50, v34, v9

    #@ce
    mul-long v52, v16, v14

    #@d0
    add-long v50, v50, v52

    #@d2
    add-long v36, v36, v50

    #@d4
    .line 791
    const/16 v9, 0x20

    #@d6
    ushr-long v50, v36, v9

    #@d8
    add-long v38, v38, v50

    #@da
    .line 792
    const-wide v50, 0xffffffffL

    #@df
    and-long v36, v36, v50

    #@e1
    .line 795
    const/4 v9, 0x3

    #@e2
    aget v9, p0, v9

    #@e4
    int-to-long v0, v9

    #@e5
    move-wide/from16 v50, v0

    #@e7
    const-wide v52, 0xffffffffL

    #@ec
    and-long v18, v50, v52

    #@ee
    .line 796
    .local v18, "x_3":J
    const/4 v9, 0x5

    #@ef
    aget v9, p1, v9

    #@f1
    int-to-long v0, v9

    #@f2
    move-wide/from16 v50, v0

    #@f4
    const-wide v52, 0xffffffffL

    #@f9
    and-long v40, v50, v52

    #@fb
    .line 797
    .local v40, "zz_5":J
    const/4 v9, 0x6

    #@fc
    aget v9, p1, v9

    #@fe
    int-to-long v0, v9

    #@ff
    move-wide/from16 v50, v0

    #@101
    const-wide v52, 0xffffffffL

    #@106
    and-long v42, v50, v52

    #@108
    .line 799
    .local v42, "zz_6":J
    mul-long v50, v18, v12

    #@10a
    add-long v36, v36, v50

    #@10c
    .line 800
    move-wide/from16 v0, v36

    #@10e
    long-to-int v8, v0

    #@10f
    .line 801
    shl-int/lit8 v9, v8, 0x1

    #@111
    or-int/2addr v9, v2

    #@112
    const/16 v50, 0x3

    #@114
    aput v9, p1, v50

    #@116
    .line 802
    ushr-int/lit8 v2, v8, 0x1f

    #@118
    .line 803
    const/16 v9, 0x20

    #@11a
    ushr-long v50, v36, v9

    #@11c
    mul-long v52, v18, v14

    #@11e
    add-long v50, v50, v52

    #@120
    add-long v38, v38, v50

    #@122
    .line 804
    const/16 v9, 0x20

    #@124
    ushr-long v50, v38, v9

    #@126
    mul-long v52, v18, v16

    #@128
    add-long v50, v50, v52

    #@12a
    add-long v40, v40, v50

    #@12c
    .line 805
    const-wide v50, 0xffffffffL

    #@131
    and-long v38, v38, v50

    #@133
    .line 806
    const/16 v9, 0x20

    #@135
    ushr-long v50, v40, v9

    #@137
    add-long v42, v42, v50

    #@139
    .line 807
    const-wide v50, 0xffffffffL

    #@13e
    and-long v40, v40, v50

    #@140
    .line 810
    const/4 v9, 0x4

    #@141
    aget v9, p0, v9

    #@143
    int-to-long v0, v9

    #@144
    move-wide/from16 v50, v0

    #@146
    const-wide v52, 0xffffffffL

    #@14b
    and-long v20, v50, v52

    #@14d
    .line 811
    .local v20, "x_4":J
    const/4 v9, 0x7

    #@14e
    aget v9, p1, v9

    #@150
    int-to-long v0, v9

    #@151
    move-wide/from16 v50, v0

    #@153
    const-wide v52, 0xffffffffL

    #@158
    and-long v44, v50, v52

    #@15a
    .line 812
    .local v44, "zz_7":J
    const/16 v9, 0x8

    #@15c
    aget v9, p1, v9

    #@15e
    int-to-long v0, v9

    #@15f
    move-wide/from16 v50, v0

    #@161
    const-wide v52, 0xffffffffL

    #@166
    and-long v46, v50, v52

    #@168
    .line 814
    .local v46, "zz_8":J
    mul-long v50, v20, v12

    #@16a
    add-long v38, v38, v50

    #@16c
    .line 815
    move-wide/from16 v0, v38

    #@16e
    long-to-int v8, v0

    #@16f
    .line 816
    shl-int/lit8 v9, v8, 0x1

    #@171
    or-int/2addr v9, v2

    #@172
    const/16 v50, 0x4

    #@174
    aput v9, p1, v50

    #@176
    .line 817
    ushr-int/lit8 v2, v8, 0x1f

    #@178
    .line 818
    const/16 v9, 0x20

    #@17a
    ushr-long v50, v38, v9

    #@17c
    mul-long v52, v20, v14

    #@17e
    add-long v50, v50, v52

    #@180
    add-long v40, v40, v50

    #@182
    .line 819
    const/16 v9, 0x20

    #@184
    ushr-long v50, v40, v9

    #@186
    mul-long v52, v20, v16

    #@188
    add-long v50, v50, v52

    #@18a
    add-long v42, v42, v50

    #@18c
    .line 820
    const-wide v50, 0xffffffffL

    #@191
    and-long v40, v40, v50

    #@193
    .line 821
    const/16 v9, 0x20

    #@195
    ushr-long v50, v42, v9

    #@197
    mul-long v52, v20, v18

    #@199
    add-long v50, v50, v52

    #@19b
    add-long v44, v44, v50

    #@19d
    .line 822
    const-wide v50, 0xffffffffL

    #@1a2
    and-long v42, v42, v50

    #@1a4
    .line 823
    const/16 v9, 0x20

    #@1a6
    ushr-long v50, v44, v9

    #@1a8
    add-long v46, v46, v50

    #@1aa
    .line 824
    const-wide v50, 0xffffffffL

    #@1af
    and-long v44, v44, v50

    #@1b1
    .line 827
    const/4 v9, 0x5

    #@1b2
    aget v9, p0, v9

    #@1b4
    int-to-long v0, v9

    #@1b5
    move-wide/from16 v50, v0

    #@1b7
    const-wide v52, 0xffffffffL

    #@1bc
    and-long v22, v50, v52

    #@1be
    .line 828
    .local v22, "x_5":J
    const/16 v9, 0x9

    #@1c0
    aget v9, p1, v9

    #@1c2
    int-to-long v0, v9

    #@1c3
    move-wide/from16 v50, v0

    #@1c5
    const-wide v52, 0xffffffffL

    #@1ca
    and-long v48, v50, v52

    #@1cc
    .line 829
    .local v48, "zz_9":J
    const/16 v9, 0xa

    #@1ce
    aget v9, p1, v9

    #@1d0
    int-to-long v0, v9

    #@1d1
    move-wide/from16 v50, v0

    #@1d3
    const-wide v52, 0xffffffffL

    #@1d8
    and-long v28, v50, v52

    #@1da
    .line 831
    .local v28, "zz_10":J
    mul-long v50, v22, v12

    #@1dc
    add-long v40, v40, v50

    #@1de
    .line 832
    move-wide/from16 v0, v40

    #@1e0
    long-to-int v8, v0

    #@1e1
    .line 833
    shl-int/lit8 v9, v8, 0x1

    #@1e3
    or-int/2addr v9, v2

    #@1e4
    const/16 v50, 0x5

    #@1e6
    aput v9, p1, v50

    #@1e8
    .line 834
    ushr-int/lit8 v2, v8, 0x1f

    #@1ea
    .line 835
    const/16 v9, 0x20

    #@1ec
    ushr-long v50, v40, v9

    #@1ee
    mul-long v52, v22, v14

    #@1f0
    add-long v50, v50, v52

    #@1f2
    add-long v42, v42, v50

    #@1f4
    .line 836
    const/16 v9, 0x20

    #@1f6
    ushr-long v50, v42, v9

    #@1f8
    mul-long v52, v22, v16

    #@1fa
    add-long v50, v50, v52

    #@1fc
    add-long v44, v44, v50

    #@1fe
    .line 837
    const-wide v50, 0xffffffffL

    #@203
    and-long v42, v42, v50

    #@205
    .line 838
    const/16 v9, 0x20

    #@207
    ushr-long v50, v44, v9

    #@209
    mul-long v52, v22, v18

    #@20b
    add-long v50, v50, v52

    #@20d
    add-long v46, v46, v50

    #@20f
    .line 839
    const-wide v50, 0xffffffffL

    #@214
    and-long v44, v44, v50

    #@216
    .line 840
    const/16 v9, 0x20

    #@218
    ushr-long v50, v46, v9

    #@21a
    mul-long v52, v22, v20

    #@21c
    add-long v50, v50, v52

    #@21e
    add-long v48, v48, v50

    #@220
    .line 841
    const-wide v50, 0xffffffffL

    #@225
    and-long v46, v46, v50

    #@227
    .line 842
    const/16 v9, 0x20

    #@229
    ushr-long v50, v48, v9

    #@22b
    add-long v28, v28, v50

    #@22d
    .line 843
    const-wide v50, 0xffffffffL

    #@232
    and-long v48, v48, v50

    #@234
    .line 846
    const/4 v9, 0x6

    #@235
    aget v9, p0, v9

    #@237
    int-to-long v0, v9

    #@238
    move-wide/from16 v50, v0

    #@23a
    const-wide v52, 0xffffffffL

    #@23f
    and-long v24, v50, v52

    #@241
    .line 847
    .local v24, "x_6":J
    const/16 v9, 0xb

    #@243
    aget v9, p1, v9

    #@245
    int-to-long v0, v9

    #@246
    move-wide/from16 v50, v0

    #@248
    const-wide v52, 0xffffffffL

    #@24d
    and-long v30, v50, v52

    #@24f
    .line 848
    .local v30, "zz_11":J
    const/16 v9, 0xc

    #@251
    aget v9, p1, v9

    #@253
    int-to-long v0, v9

    #@254
    move-wide/from16 v50, v0

    #@256
    const-wide v52, 0xffffffffL

    #@25b
    and-long v32, v50, v52

    #@25d
    .line 850
    .local v32, "zz_12":J
    mul-long v50, v24, v12

    #@25f
    add-long v42, v42, v50

    #@261
    .line 851
    move-wide/from16 v0, v42

    #@263
    long-to-int v8, v0

    #@264
    .line 852
    shl-int/lit8 v9, v8, 0x1

    #@266
    or-int/2addr v9, v2

    #@267
    const/16 v50, 0x6

    #@269
    aput v9, p1, v50

    #@26b
    .line 853
    ushr-int/lit8 v2, v8, 0x1f

    #@26d
    .line 854
    const/16 v9, 0x20

    #@26f
    ushr-long v50, v42, v9

    #@271
    mul-long v52, v24, v14

    #@273
    add-long v50, v50, v52

    #@275
    add-long v44, v44, v50

    #@277
    .line 855
    const/16 v9, 0x20

    #@279
    ushr-long v50, v44, v9

    #@27b
    mul-long v52, v24, v16

    #@27d
    add-long v50, v50, v52

    #@27f
    add-long v46, v46, v50

    #@281
    .line 856
    const/16 v9, 0x20

    #@283
    ushr-long v50, v46, v9

    #@285
    mul-long v52, v24, v18

    #@287
    add-long v50, v50, v52

    #@289
    add-long v48, v48, v50

    #@28b
    .line 857
    const/16 v9, 0x20

    #@28d
    ushr-long v50, v48, v9

    #@28f
    mul-long v52, v24, v20

    #@291
    add-long v50, v50, v52

    #@293
    add-long v28, v28, v50

    #@295
    .line 858
    const/16 v9, 0x20

    #@297
    ushr-long v50, v28, v9

    #@299
    mul-long v52, v24, v22

    #@29b
    add-long v50, v50, v52

    #@29d
    add-long v30, v30, v50

    #@29f
    .line 859
    const/16 v9, 0x20

    #@2a1
    ushr-long v50, v30, v9

    #@2a3
    add-long v32, v32, v50

    #@2a5
    .line 862
    move-wide/from16 v0, v44

    #@2a7
    long-to-int v8, v0

    #@2a8
    .line 863
    shl-int/lit8 v9, v8, 0x1

    #@2aa
    or-int/2addr v9, v2

    #@2ab
    const/16 v50, 0x7

    #@2ad
    aput v9, p1, v50

    #@2af
    .line 864
    ushr-int/lit8 v2, v8, 0x1f

    #@2b1
    .line 865
    move-wide/from16 v0, v46

    #@2b3
    long-to-int v8, v0

    #@2b4
    .line 866
    shl-int/lit8 v9, v8, 0x1

    #@2b6
    or-int/2addr v9, v2

    #@2b7
    const/16 v50, 0x8

    #@2b9
    aput v9, p1, v50

    #@2bb
    .line 867
    ushr-int/lit8 v2, v8, 0x1f

    #@2bd
    .line 868
    move-wide/from16 v0, v48

    #@2bf
    long-to-int v8, v0

    #@2c0
    .line 869
    shl-int/lit8 v9, v8, 0x1

    #@2c2
    or-int/2addr v9, v2

    #@2c3
    const/16 v50, 0x9

    #@2c5
    aput v9, p1, v50

    #@2c7
    .line 870
    ushr-int/lit8 v2, v8, 0x1f

    #@2c9
    .line 871
    move-wide/from16 v0, v28

    #@2cb
    long-to-int v8, v0

    #@2cc
    .line 872
    shl-int/lit8 v9, v8, 0x1

    #@2ce
    or-int/2addr v9, v2

    #@2cf
    const/16 v50, 0xa

    #@2d1
    aput v9, p1, v50

    #@2d3
    .line 873
    ushr-int/lit8 v2, v8, 0x1f

    #@2d5
    .line 874
    move-wide/from16 v0, v30

    #@2d7
    long-to-int v8, v0

    #@2d8
    .line 875
    shl-int/lit8 v9, v8, 0x1

    #@2da
    or-int/2addr v9, v2

    #@2db
    const/16 v50, 0xb

    #@2dd
    aput v9, p1, v50

    #@2df
    .line 876
    ushr-int/lit8 v2, v8, 0x1f

    #@2e1
    .line 877
    move-wide/from16 v0, v32

    #@2e3
    long-to-int v8, v0

    #@2e4
    .line 878
    shl-int/lit8 v9, v8, 0x1

    #@2e6
    or-int/2addr v9, v2

    #@2e7
    const/16 v50, 0xc

    #@2e9
    aput v9, p1, v50

    #@2eb
    .line 879
    ushr-int/lit8 v2, v8, 0x1f

    #@2ed
    .line 880
    const/16 v9, 0xd

    #@2ef
    aget v9, p1, v9

    #@2f1
    const/16 v50, 0x20

    #@2f3
    shr-long v50, v32, v50

    #@2f5
    move-wide/from16 v0, v50

    #@2f7
    long-to-int v0, v0

    #@2f8
    move/from16 v50, v0

    #@2fa
    add-int v8, v9, v50

    #@2fc
    .line 881
    shl-int/lit8 v9, v8, 0x1

    #@2fe
    or-int/2addr v9, v2

    #@2ff
    const/16 v50, 0xd

    #@301
    aput v9, p1, v50

    #@303
    .line 745
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
    .line 1053
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
    .line 1052
    const-wide/16 v4, 0x0

    #@16
    .line 1053
    add-long v0, v4, v2

    #@18
    .line 1054
    .local v0, "c":J
    add-int/lit8 v2, p5, 0x0

    #@1a
    long-to-int v3, v0

    #@1b
    aput v3, p4, v2

    #@1d
    .line 1055
    shr-long/2addr v0, v8

    #@1e
    .line 1056
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
    .line 1057
    add-int/lit8 v2, p5, 0x1

    #@2e
    long-to-int v3, v0

    #@2f
    aput v3, p4, v2

    #@31
    .line 1058
    shr-long/2addr v0, v8

    #@32
    .line 1059
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
    .line 1060
    add-int/lit8 v2, p5, 0x2

    #@42
    long-to-int v3, v0

    #@43
    aput v3, p4, v2

    #@45
    .line 1061
    shr-long/2addr v0, v8

    #@46
    .line 1062
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
    .line 1063
    add-int/lit8 v2, p5, 0x3

    #@56
    long-to-int v3, v0

    #@57
    aput v3, p4, v2

    #@59
    .line 1064
    shr-long/2addr v0, v8

    #@5a
    .line 1065
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
    .line 1066
    add-int/lit8 v2, p5, 0x4

    #@6a
    long-to-int v3, v0

    #@6b
    aput v3, p4, v2

    #@6d
    .line 1067
    shr-long/2addr v0, v8

    #@6e
    .line 1068
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
    .line 1069
    add-int/lit8 v2, p5, 0x5

    #@7e
    long-to-int v3, v0

    #@7f
    aput v3, p4, v2

    #@81
    .line 1070
    shr-long/2addr v0, v8

    #@82
    .line 1071
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
    .line 1072
    add-int/lit8 v2, p5, 0x6

    #@92
    long-to-int v3, v0

    #@93
    aput v3, p4, v2

    #@95
    .line 1073
    shr-long/2addr v0, v8

    #@96
    .line 1074
    long-to-int v2, v0

    #@97
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
    .line 1026
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
    .line 1025
    const-wide/16 v4, 0x0

    #@15
    .line 1026
    add-long v0, v4, v2

    #@17
    .line 1027
    .local v0, "c":J
    long-to-int v2, v0

    #@18
    aput v2, p2, v9

    #@1a
    .line 1028
    shr-long/2addr v0, v8

    #@1b
    .line 1029
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
    .line 1030
    long-to-int v2, v0

    #@26
    aput v2, p2, v10

    #@28
    .line 1031
    shr-long/2addr v0, v8

    #@29
    .line 1032
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
    .line 1033
    long-to-int v2, v0

    #@34
    aput v2, p2, v11

    #@36
    .line 1034
    shr-long/2addr v0, v8

    #@37
    .line 1035
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
    .line 1036
    long-to-int v2, v0

    #@44
    const/4 v3, 0x3

    #@45
    aput v2, p2, v3

    #@47
    .line 1037
    shr-long/2addr v0, v8

    #@48
    .line 1038
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
    .line 1039
    long-to-int v2, v0

    #@55
    const/4 v3, 0x4

    #@56
    aput v2, p2, v3

    #@58
    .line 1040
    shr-long/2addr v0, v8

    #@59
    .line 1041
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
    .line 1042
    long-to-int v2, v0

    #@66
    const/4 v3, 0x5

    #@67
    aput v2, p2, v3

    #@69
    .line 1043
    shr-long/2addr v0, v8

    #@6a
    .line 1044
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
    .line 1045
    long-to-int v2, v0

    #@77
    const/4 v3, 0x6

    #@78
    aput v2, p2, v3

    #@7a
    .line 1046
    shr-long/2addr v0, v8

    #@7b
    .line 1047
    long-to-int v2, v0

    #@7c
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
    .line 1080
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
    .line 1079
    const-wide/16 v4, 0x0

    #@1a
    .line 1080
    add-long v0, v4, v2

    #@1c
    .line 1081
    .local v0, "c":J
    long-to-int v2, v0

    #@1d
    aput v2, p2, v9

    #@1f
    .line 1082
    shr-long/2addr v0, v8

    #@20
    .line 1083
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
    .line 1084
    long-to-int v2, v0

    #@30
    aput v2, p2, v10

    #@32
    .line 1085
    shr-long/2addr v0, v8

    #@33
    .line 1086
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
    .line 1087
    long-to-int v2, v0

    #@43
    aput v2, p2, v11

    #@45
    .line 1088
    shr-long/2addr v0, v8

    #@46
    .line 1089
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
    .line 1090
    long-to-int v2, v0

    #@59
    const/4 v3, 0x3

    #@5a
    aput v2, p2, v3

    #@5c
    .line 1091
    shr-long/2addr v0, v8

    #@5d
    .line 1092
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
    .line 1093
    long-to-int v2, v0

    #@70
    const/4 v3, 0x4

    #@71
    aput v2, p2, v3

    #@73
    .line 1094
    shr-long/2addr v0, v8

    #@74
    .line 1095
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
    .line 1096
    long-to-int v2, v0

    #@87
    const/4 v3, 0x5

    #@88
    aput v2, p2, v3

    #@8a
    .line 1097
    shr-long/2addr v0, v8

    #@8b
    .line 1098
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
    .line 1099
    long-to-int v2, v0

    #@9e
    const/4 v3, 0x6

    #@9f
    aput v2, p2, v3

    #@a1
    .line 1100
    shr-long/2addr v0, v8

    #@a2
    .line 1101
    long-to-int v2, v0

    #@a3
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
    .line 1134
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
    .line 1133
    const-wide/16 v4, 0x0

    #@16
    .line 1134
    add-long v0, v4, v2

    #@18
    .line 1135
    .local v0, "c":J
    add-int/lit8 v2, p3, 0x0

    #@1a
    long-to-int v3, v0

    #@1b
    aput v3, p2, v2

    #@1d
    .line 1136
    shr-long/2addr v0, v8

    #@1e
    .line 1137
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
    .line 1138
    add-int/lit8 v2, p3, 0x1

    #@2e
    long-to-int v3, v0

    #@2f
    aput v3, p2, v2

    #@31
    .line 1139
    shr-long/2addr v0, v8

    #@32
    .line 1140
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
    .line 1141
    add-int/lit8 v2, p3, 0x2

    #@42
    long-to-int v3, v0

    #@43
    aput v3, p2, v2

    #@45
    .line 1142
    shr-long/2addr v0, v8

    #@46
    .line 1143
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
    .line 1144
    add-int/lit8 v2, p3, 0x3

    #@56
    long-to-int v3, v0

    #@57
    aput v3, p2, v2

    #@59
    .line 1145
    shr-long/2addr v0, v8

    #@5a
    .line 1146
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
    .line 1147
    add-int/lit8 v2, p3, 0x4

    #@6a
    long-to-int v3, v0

    #@6b
    aput v3, p2, v2

    #@6d
    .line 1148
    shr-long/2addr v0, v8

    #@6e
    .line 1149
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
    .line 1150
    add-int/lit8 v2, p3, 0x5

    #@7e
    long-to-int v3, v0

    #@7f
    aput v3, p2, v2

    #@81
    .line 1151
    shr-long/2addr v0, v8

    #@82
    .line 1152
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
    .line 1153
    add-int/lit8 v2, p3, 0x6

    #@92
    long-to-int v3, v0

    #@93
    aput v3, p2, v2

    #@95
    .line 1154
    shr-long/2addr v0, v8

    #@96
    .line 1155
    long-to-int v2, v0

    #@97
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
    .line 1107
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
    .line 1106
    const-wide/16 v4, 0x0

    #@15
    .line 1107
    add-long v0, v4, v2

    #@17
    .line 1108
    .local v0, "c":J
    long-to-int v2, v0

    #@18
    aput v2, p1, v9

    #@1a
    .line 1109
    shr-long/2addr v0, v8

    #@1b
    .line 1110
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
    .line 1111
    long-to-int v2, v0

    #@26
    aput v2, p1, v10

    #@28
    .line 1112
    shr-long/2addr v0, v8

    #@29
    .line 1113
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
    .line 1114
    long-to-int v2, v0

    #@34
    aput v2, p1, v11

    #@36
    .line 1115
    shr-long/2addr v0, v8

    #@37
    .line 1116
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
    .line 1117
    long-to-int v2, v0

    #@44
    const/4 v3, 0x3

    #@45
    aput v2, p1, v3

    #@47
    .line 1118
    shr-long/2addr v0, v8

    #@48
    .line 1119
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
    .line 1120
    long-to-int v2, v0

    #@55
    const/4 v3, 0x4

    #@56
    aput v2, p1, v3

    #@58
    .line 1121
    shr-long/2addr v0, v8

    #@59
    .line 1122
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
    .line 1123
    long-to-int v2, v0

    #@66
    const/4 v3, 0x5

    #@67
    aput v2, p1, v3

    #@69
    .line 1124
    shr-long/2addr v0, v8

    #@6a
    .line 1125
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
    .line 1126
    long-to-int v2, v0

    #@77
    const/4 v3, 0x6

    #@78
    aput v2, p1, v3

    #@7a
    .line 1127
    shr-long/2addr v0, v8

    #@7b
    .line 1128
    long-to-int v2, v0

    #@7c
    return v2
.end method

.method public static toBigInteger([I)Ljava/math/BigInteger;
    .locals 5
    .param p0, "x"    # [I

    #@0
    .prologue
    .line 1160
    const/16 v3, 0x1c

    #@2
    new-array v0, v3, [B

    #@4
    .line 1161
    .local v0, "bs":[B
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    const/4 v3, 0x7

    #@6
    if-ge v1, v3, :cond_1

    #@8
    .line 1163
    aget v2, p0, v1

    #@a
    .line 1164
    .local v2, "x_i":I
    if-eqz v2, :cond_0

    #@c
    .line 1166
    rsub-int/lit8 v3, v1, 0x6

    #@e
    shl-int/lit8 v3, v3, 0x2

    #@10
    invoke-static {v2, v0, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@13
    .line 1161
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1169
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

.method public static zero([I)V
    .locals 2
    .param p0, "z"    # [I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1174
    aput v1, p0, v1

    #@3
    .line 1175
    const/4 v0, 0x1

    #@4
    aput v1, p0, v0

    #@6
    .line 1176
    const/4 v0, 0x2

    #@7
    aput v1, p0, v0

    #@9
    .line 1177
    const/4 v0, 0x3

    #@a
    aput v1, p0, v0

    #@c
    .line 1178
    const/4 v0, 0x4

    #@d
    aput v1, p0, v0

    #@f
    .line 1179
    const/4 v0, 0x5

    #@10
    aput v1, p0, v0

    #@12
    .line 1180
    const/4 v0, 0x6

    #@13
    aput v1, p0, v0

    #@15
    .line 1172
    return-void
.end method
