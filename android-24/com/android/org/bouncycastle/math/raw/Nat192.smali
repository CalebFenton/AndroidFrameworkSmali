.class public abstract Lcom/android/org/bouncycastle/math/raw/Nat192;
.super Ljava/lang/Object;
.source "Nat192.java"


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
    long-to-int v2, v0

    #@6b
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
    .line 38
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
    .line 37
    const-wide/16 v4, 0x0

    #@1a
    .line 38
    add-long v0, v4, v2

    #@1c
    .line 39
    .local v0, "c":J
    long-to-int v2, v0

    #@1d
    aput v2, p2, v9

    #@1f
    .line 40
    ushr-long/2addr v0, v8

    #@20
    .line 41
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
    .line 42
    long-to-int v2, v0

    #@30
    aput v2, p2, v10

    #@32
    .line 43
    ushr-long/2addr v0, v8

    #@33
    .line 44
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
    .line 45
    long-to-int v2, v0

    #@43
    aput v2, p2, v11

    #@45
    .line 46
    ushr-long/2addr v0, v8

    #@46
    .line 47
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
    .line 48
    long-to-int v2, v0

    #@59
    const/4 v3, 0x3

    #@5a
    aput v2, p2, v3

    #@5c
    .line 49
    ushr-long/2addr v0, v8

    #@5d
    .line 50
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
    .line 51
    long-to-int v2, v0

    #@70
    const/4 v3, 0x4

    #@71
    aput v2, p2, v3

    #@73
    .line 52
    ushr-long/2addr v0, v8

    #@74
    .line 53
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
    .line 54
    long-to-int v2, v0

    #@87
    const/4 v3, 0x5

    #@88
    aput v2, p2, v3

    #@8a
    .line 55
    ushr-long/2addr v0, v8

    #@8b
    .line 56
    long-to-int v2, v0

    #@8c
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
    .line 85
    int-to-long v2, p4

    #@8
    and-long v0, v2, v6

    #@a
    .line 86
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
    .line 87
    add-int/lit8 v2, p3, 0x0

    #@1a
    long-to-int v3, v0

    #@1b
    aput v3, p2, v2

    #@1d
    .line 88
    ushr-long/2addr v0, v8

    #@1e
    .line 89
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
    .line 90
    add-int/lit8 v2, p3, 0x1

    #@2e
    long-to-int v3, v0

    #@2f
    aput v3, p2, v2

    #@31
    .line 91
    ushr-long/2addr v0, v8

    #@32
    .line 92
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
    .line 93
    add-int/lit8 v2, p3, 0x2

    #@42
    long-to-int v3, v0

    #@43
    aput v3, p2, v2

    #@45
    .line 94
    ushr-long/2addr v0, v8

    #@46
    .line 95
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
    .line 96
    add-int/lit8 v2, p3, 0x3

    #@56
    long-to-int v3, v0

    #@57
    aput v3, p2, v2

    #@59
    .line 97
    ushr-long/2addr v0, v8

    #@5a
    .line 98
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
    .line 99
    add-int/lit8 v2, p3, 0x4

    #@6a
    long-to-int v3, v0

    #@6b
    aput v3, p2, v2

    #@6d
    .line 100
    ushr-long/2addr v0, v8

    #@6e
    .line 101
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
    .line 102
    add-int/lit8 v2, p3, 0x5

    #@7e
    long-to-int v3, v0

    #@7f
    aput v3, p2, v2

    #@81
    .line 103
    ushr-long/2addr v0, v8

    #@82
    .line 104
    long-to-int v2, v0

    #@83
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
    .line 62
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
    .line 61
    const-wide/16 v4, 0x0

    #@15
    .line 62
    add-long v0, v4, v2

    #@17
    .line 63
    .local v0, "c":J
    long-to-int v2, v0

    #@18
    aput v2, p1, v9

    #@1a
    .line 64
    ushr-long/2addr v0, v8

    #@1b
    .line 65
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
    .line 66
    long-to-int v2, v0

    #@26
    aput v2, p1, v10

    #@28
    .line 67
    ushr-long/2addr v0, v8

    #@29
    .line 68
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
    .line 69
    long-to-int v2, v0

    #@34
    aput v2, p1, v11

    #@36
    .line 70
    ushr-long/2addr v0, v8

    #@37
    .line 71
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
    .line 72
    long-to-int v2, v0

    #@44
    const/4 v3, 0x3

    #@45
    aput v2, p1, v3

    #@47
    .line 73
    ushr-long/2addr v0, v8

    #@48
    .line 74
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
    .line 75
    long-to-int v2, v0

    #@55
    const/4 v3, 0x4

    #@56
    aput v2, p1, v3

    #@58
    .line 76
    ushr-long/2addr v0, v8

    #@59
    .line 77
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
    .line 78
    long-to-int v2, v0

    #@66
    const/4 v3, 0x5

    #@67
    aput v2, p1, v3

    #@69
    .line 79
    ushr-long/2addr v0, v8

    #@6a
    .line 80
    long-to-int v2, v0

    #@6b
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
    .line 110
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
    .line 109
    const-wide/16 v4, 0x0

    #@16
    .line 110
    add-long v0, v4, v2

    #@18
    .line 111
    .local v0, "c":J
    add-int/lit8 v2, p1, 0x0

    #@1a
    long-to-int v3, v0

    #@1b
    aput v3, p0, v2

    #@1d
    .line 112
    add-int/lit8 v2, p3, 0x0

    #@1f
    long-to-int v3, v0

    #@20
    aput v3, p2, v2

    #@22
    .line 113
    ushr-long/2addr v0, v8

    #@23
    .line 114
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
    .line 115
    add-int/lit8 v2, p1, 0x1

    #@33
    long-to-int v3, v0

    #@34
    aput v3, p0, v2

    #@36
    .line 116
    add-int/lit8 v2, p3, 0x1

    #@38
    long-to-int v3, v0

    #@39
    aput v3, p2, v2

    #@3b
    .line 117
    ushr-long/2addr v0, v8

    #@3c
    .line 118
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
    .line 119
    add-int/lit8 v2, p1, 0x2

    #@4c
    long-to-int v3, v0

    #@4d
    aput v3, p0, v2

    #@4f
    .line 120
    add-int/lit8 v2, p3, 0x2

    #@51
    long-to-int v3, v0

    #@52
    aput v3, p2, v2

    #@54
    .line 121
    ushr-long/2addr v0, v8

    #@55
    .line 122
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
    .line 123
    add-int/lit8 v2, p1, 0x3

    #@65
    long-to-int v3, v0

    #@66
    aput v3, p0, v2

    #@68
    .line 124
    add-int/lit8 v2, p3, 0x3

    #@6a
    long-to-int v3, v0

    #@6b
    aput v3, p2, v2

    #@6d
    .line 125
    ushr-long/2addr v0, v8

    #@6e
    .line 126
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
    .line 127
    add-int/lit8 v2, p1, 0x4

    #@7e
    long-to-int v3, v0

    #@7f
    aput v3, p0, v2

    #@81
    .line 128
    add-int/lit8 v2, p3, 0x4

    #@83
    long-to-int v3, v0

    #@84
    aput v3, p2, v2

    #@86
    .line 129
    ushr-long/2addr v0, v8

    #@87
    .line 130
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
    .line 131
    add-int/lit8 v2, p1, 0x5

    #@97
    long-to-int v3, v0

    #@98
    aput v3, p0, v2

    #@9a
    .line 132
    add-int/lit8 v2, p3, 0x5

    #@9c
    long-to-int v3, v0

    #@9d
    aput v3, p2, v2

    #@9f
    .line 133
    ushr-long/2addr v0, v8

    #@a0
    .line 134
    long-to-int v2, v0

    #@a1
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
    .line 139
    aget v0, p0, v1

    #@7
    aput v0, p1, v1

    #@9
    .line 140
    aget v0, p0, v2

    #@b
    aput v0, p1, v2

    #@d
    .line 141
    aget v0, p0, v3

    #@f
    aput v0, p1, v3

    #@11
    .line 142
    aget v0, p0, v4

    #@13
    aput v0, p1, v4

    #@15
    .line 143
    aget v0, p0, v5

    #@17
    aput v0, p1, v5

    #@19
    .line 144
    const/4 v0, 0x5

    #@1a
    aget v0, p0, v0

    #@1c
    const/4 v1, 0x5

    #@1d
    aput v0, p1, v1

    #@1f
    .line 137
    return-void
.end method

.method public static copy64([J[J)V
    .locals 5
    .param p0, "x"    # [J
    .param p1, "z"    # [J

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 149
    aget-wide v0, p0, v2

    #@5
    aput-wide v0, p1, v2

    #@7
    .line 150
    aget-wide v0, p0, v3

    #@9
    aput-wide v0, p1, v3

    #@b
    .line 151
    aget-wide v0, p0, v4

    #@d
    aput-wide v0, p1, v4

    #@f
    .line 147
    return-void
.end method

.method public static create()[I
    .locals 1

    #@0
    .prologue
    .line 156
    const/4 v0, 0x6

    #@1
    new-array v0, v0, [I

    #@3
    return-object v0
.end method

.method public static create64()[J
    .locals 1

    #@0
    .prologue
    .line 161
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [J

    #@3
    return-object v0
.end method

.method public static createExt()[I
    .locals 1

    #@0
    .prologue
    .line 166
    const/16 v0, 0xc

    #@2
    new-array v0, v0, [I

    #@4
    return-object v0
.end method

.method public static createExt64()[J
    .locals 1

    #@0
    .prologue
    .line 171
    const/4 v0, 0x6

    #@1
    new-array v0, v0, [J

    #@3
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
    .line 176
    invoke-static {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/raw/Nat192;->gte([II[II)Z

    #@3
    move-result v6

    #@4
    .line 177
    .local v6, "pos":Z
    if-eqz v6, :cond_0

    #@6
    .line 179
    invoke-static/range {p0 .. p5}, Lcom/android/org/bouncycastle/math/raw/Nat192;->sub([II[II[II)I

    #@9
    .line 185
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
    .line 183
    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/raw/Nat192;->sub([II[II[II)I

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
    .line 190
    const/4 v0, 0x5

    #@2
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@4
    .line 192
    aget v1, p0, v0

    #@6
    aget v2, p1, v0

    #@8
    if-eq v1, v2, :cond_0

    #@a
    .line 194
    return v3

    #@b
    .line 190
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@d
    goto :goto_0

    #@e
    .line 197
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
    .line 202
    const/4 v0, 0x2

    #@2
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@4
    .line 204
    aget-wide v2, p0, v0

    #@6
    aget-wide v4, p1, v0

    #@8
    cmp-long v1, v2, v4

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 206
    return v6

    #@d
    .line 202
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@f
    goto :goto_0

    #@10
    .line 209
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
    .line 214
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
    const/16 v4, 0xc0

    #@c
    if-le v3, v4, :cond_1

    #@e
    .line 216
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@10
    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@13
    throw v3

    #@14
    .line 219
    :cond_1
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    #@17
    move-result-object v2

    #@18
    .line 220
    .local v2, "z":[I
    const/4 v0, 0x0

    #@19
    .line 221
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_2

    #@1f
    .line 223
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
    .line 224
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
    .line 226
    :cond_2
    return-object v2
.end method

.method public static fromBigInteger64(Ljava/math/BigInteger;)[J
    .locals 6
    .param p0, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 231
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
    const/16 v4, 0xc0

    #@c
    if-le v3, v4, :cond_1

    #@e
    .line 233
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@10
    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@13
    throw v3

    #@14
    .line 236
    :cond_1
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create64()[J

    #@17
    move-result-object v2

    #@18
    .line 237
    .local v2, "z":[J
    const/4 v0, 0x0

    #@19
    .line 238
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_2

    #@1f
    .line 240
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
    .line 241
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
    .line 243
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
    .line 248
    if-nez p1, :cond_0

    #@3
    .line 250
    aget v2, p0, v3

    #@5
    and-int/lit8 v2, v2, 0x1

    #@7
    return v2

    #@8
    .line 252
    :cond_0
    shr-int/lit8 v1, p1, 0x5

    #@a
    .line 253
    .local v1, "w":I
    if-ltz v1, :cond_1

    #@c
    const/4 v2, 0x6

    #@d
    if-lt v1, v2, :cond_2

    #@f
    .line 255
    :cond_1
    return v3

    #@10
    .line 257
    :cond_2
    and-int/lit8 v0, p1, 0x1f

    #@12
    .line 258
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
    .line 277
    const/4 v0, 0x5

    #@5
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@7
    .line 279
    add-int v3, p1, v0

    #@9
    aget v3, p0, v3

    #@b
    xor-int v1, v3, v4

    #@d
    .line 280
    .local v1, "x_i":I
    add-int v3, p3, v0

    #@f
    aget v3, p2, v3

    #@11
    xor-int v2, v3, v4

    #@13
    .line 281
    .local v2, "y_i":I
    if-ge v1, v2, :cond_0

    #@15
    .line 282
    return v5

    #@16
    .line 283
    :cond_0
    if-le v1, v2, :cond_1

    #@18
    .line 284
    return v6

    #@19
    .line 277
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@1b
    goto :goto_0

    #@1c
    .line 286
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
    .line 263
    const/4 v0, 0x5

    #@5
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@7
    .line 265
    aget v3, p0, v0

    #@9
    xor-int v1, v3, v4

    #@b
    .line 266
    .local v1, "x_i":I
    aget v3, p1, v0

    #@d
    xor-int v2, v3, v4

    #@f
    .line 267
    .local v2, "y_i":I
    if-ge v1, v2, :cond_0

    #@11
    .line 268
    return v5

    #@12
    .line 269
    :cond_0
    if-le v1, v2, :cond_1

    #@14
    .line 270
    return v6

    #@15
    .line 263
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 272
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
    .line 291
    aget v1, p0, v2

    #@4
    if-eq v1, v3, :cond_0

    #@6
    .line 293
    return v2

    #@7
    .line 295
    :cond_0
    const/4 v0, 0x1

    #@8
    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    #@9
    if-ge v0, v1, :cond_2

    #@b
    .line 297
    aget v1, p0, v0

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 299
    return v2

    #@10
    .line 295
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 302
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
    .line 307
    aget-wide v2, p0, v6

    #@3
    const-wide/16 v4, 0x1

    #@5
    cmp-long v1, v2, v4

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 309
    return v6

    #@a
    .line 311
    :cond_0
    const/4 v0, 0x1

    #@b
    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    #@c
    if-ge v0, v1, :cond_2

    #@e
    .line 313
    aget-wide v2, p0, v0

    #@10
    const-wide/16 v4, 0x0

    #@12
    cmp-long v1, v2, v4

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 315
    return v6

    #@17
    .line 311
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 318
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
    .line 323
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    #@3
    if-ge v0, v1, :cond_1

    #@5
    .line 325
    aget v1, p0, v0

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 327
    return v2

    #@a
    .line 323
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@c
    goto :goto_0

    #@d
    .line 330
    :cond_1
    const/4 v1, 0x1

    #@e
    return v1
.end method

.method public static isZero64([J)Z
    .locals 6
    .param p0, "x"    # [J

    #@0
    .prologue
    .line 335
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    #@2
    if-ge v0, v1, :cond_1

    #@4
    .line 337
    aget-wide v2, p0, v0

    #@6
    const-wide/16 v4, 0x0

    #@8
    cmp-long v1, v2, v4

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 339
    const/4 v1, 0x0

    #@d
    return v1

    #@e
    .line 335
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 342
    :cond_1
    const/4 v1, 0x1

    #@12
    return v1
.end method

.method public static mul([II[II[II)V
    .locals 28
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "zz"    # [I
    .param p5, "zzOff"    # I

    #@0
    .prologue
    .line 404
    add-int/lit8 v5, p3, 0x0

    #@2
    aget v5, p2, v5

    #@4
    int-to-long v0, v5

    #@5
    move-wide/from16 v22, v0

    #@7
    const-wide v24, 0xffffffffL

    #@c
    and-long v10, v22, v24

    #@e
    .line 405
    .local v10, "y_0":J
    add-int/lit8 v5, p3, 0x1

    #@10
    aget v5, p2, v5

    #@12
    int-to-long v0, v5

    #@13
    move-wide/from16 v22, v0

    #@15
    const-wide v24, 0xffffffffL

    #@1a
    and-long v12, v22, v24

    #@1c
    .line 406
    .local v12, "y_1":J
    add-int/lit8 v5, p3, 0x2

    #@1e
    aget v5, p2, v5

    #@20
    int-to-long v0, v5

    #@21
    move-wide/from16 v22, v0

    #@23
    const-wide v24, 0xffffffffL

    #@28
    and-long v14, v22, v24

    #@2a
    .line 407
    .local v14, "y_2":J
    add-int/lit8 v5, p3, 0x3

    #@2c
    aget v5, p2, v5

    #@2e
    int-to-long v0, v5

    #@2f
    move-wide/from16 v22, v0

    #@31
    const-wide v24, 0xffffffffL

    #@36
    and-long v16, v22, v24

    #@38
    .line 408
    .local v16, "y_3":J
    add-int/lit8 v5, p3, 0x4

    #@3a
    aget v5, p2, v5

    #@3c
    int-to-long v0, v5

    #@3d
    move-wide/from16 v22, v0

    #@3f
    const-wide v24, 0xffffffffL

    #@44
    and-long v18, v22, v24

    #@46
    .line 409
    .local v18, "y_4":J
    add-int/lit8 v5, p3, 0x5

    #@48
    aget v5, p2, v5

    #@4a
    int-to-long v0, v5

    #@4b
    move-wide/from16 v22, v0

    #@4d
    const-wide v24, 0xffffffffL

    #@52
    and-long v20, v22, v24

    #@54
    .line 412
    .local v20, "y_5":J
    add-int/lit8 v5, p1, 0x0

    #@56
    aget v5, p0, v5

    #@58
    int-to-long v0, v5

    #@59
    move-wide/from16 v22, v0

    #@5b
    const-wide v24, 0xffffffffL

    #@60
    and-long v6, v22, v24

    #@62
    .line 413
    .local v6, "x_0":J
    mul-long v22, v6, v10

    #@64
    .line 412
    const-wide/16 v24, 0x0

    #@66
    .line 413
    add-long v2, v24, v22

    #@68
    .line 414
    .local v2, "c":J
    add-int/lit8 v5, p5, 0x0

    #@6a
    long-to-int v0, v2

    #@6b
    move/from16 v22, v0

    #@6d
    aput v22, p4, v5

    #@6f
    .line 415
    const/16 v5, 0x20

    #@71
    ushr-long/2addr v2, v5

    #@72
    .line 416
    mul-long v22, v6, v12

    #@74
    add-long v2, v2, v22

    #@76
    .line 417
    add-int/lit8 v5, p5, 0x1

    #@78
    long-to-int v0, v2

    #@79
    move/from16 v22, v0

    #@7b
    aput v22, p4, v5

    #@7d
    .line 418
    const/16 v5, 0x20

    #@7f
    ushr-long/2addr v2, v5

    #@80
    .line 419
    mul-long v22, v6, v14

    #@82
    add-long v2, v2, v22

    #@84
    .line 420
    add-int/lit8 v5, p5, 0x2

    #@86
    long-to-int v0, v2

    #@87
    move/from16 v22, v0

    #@89
    aput v22, p4, v5

    #@8b
    .line 421
    const/16 v5, 0x20

    #@8d
    ushr-long/2addr v2, v5

    #@8e
    .line 422
    mul-long v22, v6, v16

    #@90
    add-long v2, v2, v22

    #@92
    .line 423
    add-int/lit8 v5, p5, 0x3

    #@94
    long-to-int v0, v2

    #@95
    move/from16 v22, v0

    #@97
    aput v22, p4, v5

    #@99
    .line 424
    const/16 v5, 0x20

    #@9b
    ushr-long/2addr v2, v5

    #@9c
    .line 425
    mul-long v22, v6, v18

    #@9e
    add-long v2, v2, v22

    #@a0
    .line 426
    add-int/lit8 v5, p5, 0x4

    #@a2
    long-to-int v0, v2

    #@a3
    move/from16 v22, v0

    #@a5
    aput v22, p4, v5

    #@a7
    .line 427
    const/16 v5, 0x20

    #@a9
    ushr-long/2addr v2, v5

    #@aa
    .line 428
    mul-long v22, v6, v20

    #@ac
    add-long v2, v2, v22

    #@ae
    .line 429
    add-int/lit8 v5, p5, 0x5

    #@b0
    long-to-int v0, v2

    #@b1
    move/from16 v22, v0

    #@b3
    aput v22, p4, v5

    #@b5
    .line 430
    const/16 v5, 0x20

    #@b7
    ushr-long/2addr v2, v5

    #@b8
    .line 431
    add-int/lit8 v5, p5, 0x6

    #@ba
    long-to-int v0, v2

    #@bb
    move/from16 v22, v0

    #@bd
    aput v22, p4, v5

    #@bf
    .line 434
    const/4 v4, 0x1

    #@c0
    .local v4, "i":I
    :goto_0
    const/4 v5, 0x6

    #@c1
    if-ge v4, v5, :cond_0

    #@c3
    .line 436
    add-int/lit8 p5, p5, 0x1

    #@c5
    .line 437
    add-int v5, p1, v4

    #@c7
    aget v5, p0, v5

    #@c9
    int-to-long v0, v5

    #@ca
    move-wide/from16 v22, v0

    #@cc
    const-wide v24, 0xffffffffL

    #@d1
    and-long v8, v22, v24

    #@d3
    .line 438
    .local v8, "x_i":J
    mul-long v22, v8, v10

    #@d5
    add-int/lit8 v5, p5, 0x0

    #@d7
    aget v5, p4, v5

    #@d9
    int-to-long v0, v5

    #@da
    move-wide/from16 v24, v0

    #@dc
    const-wide v26, 0xffffffffL

    #@e1
    and-long v24, v24, v26

    #@e3
    add-long v22, v22, v24

    #@e5
    .line 437
    const-wide/16 v24, 0x0

    #@e7
    .line 438
    add-long v2, v24, v22

    #@e9
    .line 439
    add-int/lit8 v5, p5, 0x0

    #@eb
    long-to-int v0, v2

    #@ec
    move/from16 v22, v0

    #@ee
    aput v22, p4, v5

    #@f0
    .line 440
    const/16 v5, 0x20

    #@f2
    ushr-long/2addr v2, v5

    #@f3
    .line 441
    mul-long v22, v8, v12

    #@f5
    add-int/lit8 v5, p5, 0x1

    #@f7
    aget v5, p4, v5

    #@f9
    int-to-long v0, v5

    #@fa
    move-wide/from16 v24, v0

    #@fc
    const-wide v26, 0xffffffffL

    #@101
    and-long v24, v24, v26

    #@103
    add-long v22, v22, v24

    #@105
    add-long v2, v2, v22

    #@107
    .line 442
    add-int/lit8 v5, p5, 0x1

    #@109
    long-to-int v0, v2

    #@10a
    move/from16 v22, v0

    #@10c
    aput v22, p4, v5

    #@10e
    .line 443
    const/16 v5, 0x20

    #@110
    ushr-long/2addr v2, v5

    #@111
    .line 444
    mul-long v22, v8, v14

    #@113
    add-int/lit8 v5, p5, 0x2

    #@115
    aget v5, p4, v5

    #@117
    int-to-long v0, v5

    #@118
    move-wide/from16 v24, v0

    #@11a
    const-wide v26, 0xffffffffL

    #@11f
    and-long v24, v24, v26

    #@121
    add-long v22, v22, v24

    #@123
    add-long v2, v2, v22

    #@125
    .line 445
    add-int/lit8 v5, p5, 0x2

    #@127
    long-to-int v0, v2

    #@128
    move/from16 v22, v0

    #@12a
    aput v22, p4, v5

    #@12c
    .line 446
    const/16 v5, 0x20

    #@12e
    ushr-long/2addr v2, v5

    #@12f
    .line 447
    mul-long v22, v8, v16

    #@131
    add-int/lit8 v5, p5, 0x3

    #@133
    aget v5, p4, v5

    #@135
    int-to-long v0, v5

    #@136
    move-wide/from16 v24, v0

    #@138
    const-wide v26, 0xffffffffL

    #@13d
    and-long v24, v24, v26

    #@13f
    add-long v22, v22, v24

    #@141
    add-long v2, v2, v22

    #@143
    .line 448
    add-int/lit8 v5, p5, 0x3

    #@145
    long-to-int v0, v2

    #@146
    move/from16 v22, v0

    #@148
    aput v22, p4, v5

    #@14a
    .line 449
    const/16 v5, 0x20

    #@14c
    ushr-long/2addr v2, v5

    #@14d
    .line 450
    mul-long v22, v8, v18

    #@14f
    add-int/lit8 v5, p5, 0x4

    #@151
    aget v5, p4, v5

    #@153
    int-to-long v0, v5

    #@154
    move-wide/from16 v24, v0

    #@156
    const-wide v26, 0xffffffffL

    #@15b
    and-long v24, v24, v26

    #@15d
    add-long v22, v22, v24

    #@15f
    add-long v2, v2, v22

    #@161
    .line 451
    add-int/lit8 v5, p5, 0x4

    #@163
    long-to-int v0, v2

    #@164
    move/from16 v22, v0

    #@166
    aput v22, p4, v5

    #@168
    .line 452
    const/16 v5, 0x20

    #@16a
    ushr-long/2addr v2, v5

    #@16b
    .line 453
    mul-long v22, v8, v20

    #@16d
    add-int/lit8 v5, p5, 0x5

    #@16f
    aget v5, p4, v5

    #@171
    int-to-long v0, v5

    #@172
    move-wide/from16 v24, v0

    #@174
    const-wide v26, 0xffffffffL

    #@179
    and-long v24, v24, v26

    #@17b
    add-long v22, v22, v24

    #@17d
    add-long v2, v2, v22

    #@17f
    .line 454
    add-int/lit8 v5, p5, 0x5

    #@181
    long-to-int v0, v2

    #@182
    move/from16 v22, v0

    #@184
    aput v22, p4, v5

    #@186
    .line 455
    const/16 v5, 0x20

    #@188
    ushr-long/2addr v2, v5

    #@189
    .line 456
    add-int/lit8 v5, p5, 0x6

    #@18b
    long-to-int v0, v2

    #@18c
    move/from16 v22, v0

    #@18e
    aput v22, p4, v5

    #@190
    .line 434
    add-int/lit8 v4, v4, 0x1

    #@192
    goto/16 :goto_0

    #@194
    .line 402
    .end local v8    # "x_i":J
    :cond_0
    return-void
.end method

.method public static mul([I[I[I)V
    .locals 28
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    #@0
    .prologue
    .line 347
    const/4 v5, 0x0

    #@1
    aget v5, p1, v5

    #@3
    int-to-long v0, v5

    #@4
    move-wide/from16 v22, v0

    #@6
    const-wide v24, 0xffffffffL

    #@b
    and-long v10, v22, v24

    #@d
    .line 348
    .local v10, "y_0":J
    const/4 v5, 0x1

    #@e
    aget v5, p1, v5

    #@10
    int-to-long v0, v5

    #@11
    move-wide/from16 v22, v0

    #@13
    const-wide v24, 0xffffffffL

    #@18
    and-long v12, v22, v24

    #@1a
    .line 349
    .local v12, "y_1":J
    const/4 v5, 0x2

    #@1b
    aget v5, p1, v5

    #@1d
    int-to-long v0, v5

    #@1e
    move-wide/from16 v22, v0

    #@20
    const-wide v24, 0xffffffffL

    #@25
    and-long v14, v22, v24

    #@27
    .line 350
    .local v14, "y_2":J
    const/4 v5, 0x3

    #@28
    aget v5, p1, v5

    #@2a
    int-to-long v0, v5

    #@2b
    move-wide/from16 v22, v0

    #@2d
    const-wide v24, 0xffffffffL

    #@32
    and-long v16, v22, v24

    #@34
    .line 351
    .local v16, "y_3":J
    const/4 v5, 0x4

    #@35
    aget v5, p1, v5

    #@37
    int-to-long v0, v5

    #@38
    move-wide/from16 v22, v0

    #@3a
    const-wide v24, 0xffffffffL

    #@3f
    and-long v18, v22, v24

    #@41
    .line 352
    .local v18, "y_4":J
    const/4 v5, 0x5

    #@42
    aget v5, p1, v5

    #@44
    int-to-long v0, v5

    #@45
    move-wide/from16 v22, v0

    #@47
    const-wide v24, 0xffffffffL

    #@4c
    and-long v20, v22, v24

    #@4e
    .line 355
    .local v20, "y_5":J
    const/4 v5, 0x0

    #@4f
    aget v5, p0, v5

    #@51
    int-to-long v0, v5

    #@52
    move-wide/from16 v22, v0

    #@54
    const-wide v24, 0xffffffffL

    #@59
    and-long v6, v22, v24

    #@5b
    .line 356
    .local v6, "x_0":J
    mul-long v22, v6, v10

    #@5d
    .line 355
    const-wide/16 v24, 0x0

    #@5f
    .line 356
    add-long v2, v24, v22

    #@61
    .line 357
    .local v2, "c":J
    long-to-int v5, v2

    #@62
    const/16 v22, 0x0

    #@64
    aput v5, p2, v22

    #@66
    .line 358
    const/16 v5, 0x20

    #@68
    ushr-long/2addr v2, v5

    #@69
    .line 359
    mul-long v22, v6, v12

    #@6b
    add-long v2, v2, v22

    #@6d
    .line 360
    long-to-int v5, v2

    #@6e
    const/16 v22, 0x1

    #@70
    aput v5, p2, v22

    #@72
    .line 361
    const/16 v5, 0x20

    #@74
    ushr-long/2addr v2, v5

    #@75
    .line 362
    mul-long v22, v6, v14

    #@77
    add-long v2, v2, v22

    #@79
    .line 363
    long-to-int v5, v2

    #@7a
    const/16 v22, 0x2

    #@7c
    aput v5, p2, v22

    #@7e
    .line 364
    const/16 v5, 0x20

    #@80
    ushr-long/2addr v2, v5

    #@81
    .line 365
    mul-long v22, v6, v16

    #@83
    add-long v2, v2, v22

    #@85
    .line 366
    long-to-int v5, v2

    #@86
    const/16 v22, 0x3

    #@88
    aput v5, p2, v22

    #@8a
    .line 367
    const/16 v5, 0x20

    #@8c
    ushr-long/2addr v2, v5

    #@8d
    .line 368
    mul-long v22, v6, v18

    #@8f
    add-long v2, v2, v22

    #@91
    .line 369
    long-to-int v5, v2

    #@92
    const/16 v22, 0x4

    #@94
    aput v5, p2, v22

    #@96
    .line 370
    const/16 v5, 0x20

    #@98
    ushr-long/2addr v2, v5

    #@99
    .line 371
    mul-long v22, v6, v20

    #@9b
    add-long v2, v2, v22

    #@9d
    .line 372
    long-to-int v5, v2

    #@9e
    const/16 v22, 0x5

    #@a0
    aput v5, p2, v22

    #@a2
    .line 373
    const/16 v5, 0x20

    #@a4
    ushr-long/2addr v2, v5

    #@a5
    .line 374
    long-to-int v5, v2

    #@a6
    const/16 v22, 0x6

    #@a8
    aput v5, p2, v22

    #@aa
    .line 377
    const/4 v4, 0x1

    #@ab
    .local v4, "i":I
    :goto_0
    const/4 v5, 0x6

    #@ac
    if-ge v4, v5, :cond_0

    #@ae
    .line 379
    aget v5, p0, v4

    #@b0
    int-to-long v0, v5

    #@b1
    move-wide/from16 v22, v0

    #@b3
    const-wide v24, 0xffffffffL

    #@b8
    and-long v8, v22, v24

    #@ba
    .line 380
    .local v8, "x_i":J
    mul-long v22, v8, v10

    #@bc
    add-int/lit8 v5, v4, 0x0

    #@be
    aget v5, p2, v5

    #@c0
    int-to-long v0, v5

    #@c1
    move-wide/from16 v24, v0

    #@c3
    const-wide v26, 0xffffffffL

    #@c8
    and-long v24, v24, v26

    #@ca
    add-long v22, v22, v24

    #@cc
    .line 379
    const-wide/16 v24, 0x0

    #@ce
    .line 380
    add-long v2, v24, v22

    #@d0
    .line 381
    add-int/lit8 v5, v4, 0x0

    #@d2
    long-to-int v0, v2

    #@d3
    move/from16 v22, v0

    #@d5
    aput v22, p2, v5

    #@d7
    .line 382
    const/16 v5, 0x20

    #@d9
    ushr-long/2addr v2, v5

    #@da
    .line 383
    mul-long v22, v8, v12

    #@dc
    add-int/lit8 v5, v4, 0x1

    #@de
    aget v5, p2, v5

    #@e0
    int-to-long v0, v5

    #@e1
    move-wide/from16 v24, v0

    #@e3
    const-wide v26, 0xffffffffL

    #@e8
    and-long v24, v24, v26

    #@ea
    add-long v22, v22, v24

    #@ec
    add-long v2, v2, v22

    #@ee
    .line 384
    add-int/lit8 v5, v4, 0x1

    #@f0
    long-to-int v0, v2

    #@f1
    move/from16 v22, v0

    #@f3
    aput v22, p2, v5

    #@f5
    .line 385
    const/16 v5, 0x20

    #@f7
    ushr-long/2addr v2, v5

    #@f8
    .line 386
    mul-long v22, v8, v14

    #@fa
    add-int/lit8 v5, v4, 0x2

    #@fc
    aget v5, p2, v5

    #@fe
    int-to-long v0, v5

    #@ff
    move-wide/from16 v24, v0

    #@101
    const-wide v26, 0xffffffffL

    #@106
    and-long v24, v24, v26

    #@108
    add-long v22, v22, v24

    #@10a
    add-long v2, v2, v22

    #@10c
    .line 387
    add-int/lit8 v5, v4, 0x2

    #@10e
    long-to-int v0, v2

    #@10f
    move/from16 v22, v0

    #@111
    aput v22, p2, v5

    #@113
    .line 388
    const/16 v5, 0x20

    #@115
    ushr-long/2addr v2, v5

    #@116
    .line 389
    mul-long v22, v8, v16

    #@118
    add-int/lit8 v5, v4, 0x3

    #@11a
    aget v5, p2, v5

    #@11c
    int-to-long v0, v5

    #@11d
    move-wide/from16 v24, v0

    #@11f
    const-wide v26, 0xffffffffL

    #@124
    and-long v24, v24, v26

    #@126
    add-long v22, v22, v24

    #@128
    add-long v2, v2, v22

    #@12a
    .line 390
    add-int/lit8 v5, v4, 0x3

    #@12c
    long-to-int v0, v2

    #@12d
    move/from16 v22, v0

    #@12f
    aput v22, p2, v5

    #@131
    .line 391
    const/16 v5, 0x20

    #@133
    ushr-long/2addr v2, v5

    #@134
    .line 392
    mul-long v22, v8, v18

    #@136
    add-int/lit8 v5, v4, 0x4

    #@138
    aget v5, p2, v5

    #@13a
    int-to-long v0, v5

    #@13b
    move-wide/from16 v24, v0

    #@13d
    const-wide v26, 0xffffffffL

    #@142
    and-long v24, v24, v26

    #@144
    add-long v22, v22, v24

    #@146
    add-long v2, v2, v22

    #@148
    .line 393
    add-int/lit8 v5, v4, 0x4

    #@14a
    long-to-int v0, v2

    #@14b
    move/from16 v22, v0

    #@14d
    aput v22, p2, v5

    #@14f
    .line 394
    const/16 v5, 0x20

    #@151
    ushr-long/2addr v2, v5

    #@152
    .line 395
    mul-long v22, v8, v20

    #@154
    add-int/lit8 v5, v4, 0x5

    #@156
    aget v5, p2, v5

    #@158
    int-to-long v0, v5

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
    .line 396
    add-int/lit8 v5, v4, 0x5

    #@168
    long-to-int v0, v2

    #@169
    move/from16 v22, v0

    #@16b
    aput v22, p2, v5

    #@16d
    .line 397
    const/16 v5, 0x20

    #@16f
    ushr-long/2addr v2, v5

    #@170
    .line 398
    add-int/lit8 v5, v4, 0x6

    #@172
    long-to-int v0, v2

    #@173
    move/from16 v22, v0

    #@175
    aput v22, p2, v5

    #@177
    .line 377
    add-int/lit8 v4, v4, 0x1

    #@179
    goto/16 :goto_0

    #@17b
    .line 345
    .end local v8    # "x_i":J
    :cond_0
    return-void
.end method

.method public static mul33Add(I[II[II[II)J
    .locals 24
    .param p0, "w"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "y"    # [I
    .param p4, "yOff"    # I
    .param p5, "z"    # [I
    .param p6, "zOff"    # I

    #@0
    .prologue
    .line 541
    move/from16 v0, p0

    #@2
    int-to-long v0, v0

    #@3
    move-wide/from16 v18, v0

    #@5
    const-wide v20, 0xffffffffL

    #@a
    and-long v4, v18, v20

    #@c
    .line 542
    .local v4, "wVal":J
    add-int/lit8 v18, p2, 0x0

    #@e
    aget v18, p1, v18

    #@10
    move/from16 v0, v18

    #@12
    int-to-long v0, v0

    #@13
    move-wide/from16 v18, v0

    #@15
    const-wide v20, 0xffffffffL

    #@1a
    and-long v6, v18, v20

    #@1c
    .line 543
    .local v6, "x0":J
    mul-long v18, v4, v6

    #@1e
    add-int/lit8 v20, p4, 0x0

    #@20
    aget v20, p3, v20

    #@22
    move/from16 v0, v20

    #@24
    int-to-long v0, v0

    #@25
    move-wide/from16 v20, v0

    #@27
    const-wide v22, 0xffffffffL

    #@2c
    and-long v20, v20, v22

    #@2e
    add-long v18, v18, v20

    #@30
    .line 541
    const-wide/16 v20, 0x0

    #@32
    .line 543
    add-long v2, v20, v18

    #@34
    .line 544
    .local v2, "c":J
    add-int/lit8 v18, p6, 0x0

    #@36
    long-to-int v0, v2

    #@37
    move/from16 v19, v0

    #@39
    aput v19, p5, v18

    #@3b
    .line 545
    const/16 v18, 0x20

    #@3d
    ushr-long v2, v2, v18

    #@3f
    .line 546
    add-int/lit8 v18, p2, 0x1

    #@41
    aget v18, p1, v18

    #@43
    move/from16 v0, v18

    #@45
    int-to-long v0, v0

    #@46
    move-wide/from16 v18, v0

    #@48
    const-wide v20, 0xffffffffL

    #@4d
    and-long v8, v18, v20

    #@4f
    .line 547
    .local v8, "x1":J
    mul-long v18, v4, v8

    #@51
    add-long v18, v18, v6

    #@53
    add-int/lit8 v20, p4, 0x1

    #@55
    aget v20, p3, v20

    #@57
    move/from16 v0, v20

    #@59
    int-to-long v0, v0

    #@5a
    move-wide/from16 v20, v0

    #@5c
    const-wide v22, 0xffffffffL

    #@61
    and-long v20, v20, v22

    #@63
    add-long v18, v18, v20

    #@65
    add-long v2, v2, v18

    #@67
    .line 548
    add-int/lit8 v18, p6, 0x1

    #@69
    long-to-int v0, v2

    #@6a
    move/from16 v19, v0

    #@6c
    aput v19, p5, v18

    #@6e
    .line 549
    const/16 v18, 0x20

    #@70
    ushr-long v2, v2, v18

    #@72
    .line 550
    add-int/lit8 v18, p2, 0x2

    #@74
    aget v18, p1, v18

    #@76
    move/from16 v0, v18

    #@78
    int-to-long v0, v0

    #@79
    move-wide/from16 v18, v0

    #@7b
    const-wide v20, 0xffffffffL

    #@80
    and-long v10, v18, v20

    #@82
    .line 551
    .local v10, "x2":J
    mul-long v18, v4, v10

    #@84
    add-long v18, v18, v8

    #@86
    add-int/lit8 v20, p4, 0x2

    #@88
    aget v20, p3, v20

    #@8a
    move/from16 v0, v20

    #@8c
    int-to-long v0, v0

    #@8d
    move-wide/from16 v20, v0

    #@8f
    const-wide v22, 0xffffffffL

    #@94
    and-long v20, v20, v22

    #@96
    add-long v18, v18, v20

    #@98
    add-long v2, v2, v18

    #@9a
    .line 552
    add-int/lit8 v18, p6, 0x2

    #@9c
    long-to-int v0, v2

    #@9d
    move/from16 v19, v0

    #@9f
    aput v19, p5, v18

    #@a1
    .line 553
    const/16 v18, 0x20

    #@a3
    ushr-long v2, v2, v18

    #@a5
    .line 554
    add-int/lit8 v18, p2, 0x3

    #@a7
    aget v18, p1, v18

    #@a9
    move/from16 v0, v18

    #@ab
    int-to-long v0, v0

    #@ac
    move-wide/from16 v18, v0

    #@ae
    const-wide v20, 0xffffffffL

    #@b3
    and-long v12, v18, v20

    #@b5
    .line 555
    .local v12, "x3":J
    mul-long v18, v4, v12

    #@b7
    add-long v18, v18, v10

    #@b9
    add-int/lit8 v20, p4, 0x3

    #@bb
    aget v20, p3, v20

    #@bd
    move/from16 v0, v20

    #@bf
    int-to-long v0, v0

    #@c0
    move-wide/from16 v20, v0

    #@c2
    const-wide v22, 0xffffffffL

    #@c7
    and-long v20, v20, v22

    #@c9
    add-long v18, v18, v20

    #@cb
    add-long v2, v2, v18

    #@cd
    .line 556
    add-int/lit8 v18, p6, 0x3

    #@cf
    long-to-int v0, v2

    #@d0
    move/from16 v19, v0

    #@d2
    aput v19, p5, v18

    #@d4
    .line 557
    const/16 v18, 0x20

    #@d6
    ushr-long v2, v2, v18

    #@d8
    .line 558
    add-int/lit8 v18, p2, 0x4

    #@da
    aget v18, p1, v18

    #@dc
    move/from16 v0, v18

    #@de
    int-to-long v0, v0

    #@df
    move-wide/from16 v18, v0

    #@e1
    const-wide v20, 0xffffffffL

    #@e6
    and-long v14, v18, v20

    #@e8
    .line 559
    .local v14, "x4":J
    mul-long v18, v4, v14

    #@ea
    add-long v18, v18, v12

    #@ec
    add-int/lit8 v20, p4, 0x4

    #@ee
    aget v20, p3, v20

    #@f0
    move/from16 v0, v20

    #@f2
    int-to-long v0, v0

    #@f3
    move-wide/from16 v20, v0

    #@f5
    const-wide v22, 0xffffffffL

    #@fa
    and-long v20, v20, v22

    #@fc
    add-long v18, v18, v20

    #@fe
    add-long v2, v2, v18

    #@100
    .line 560
    add-int/lit8 v18, p6, 0x4

    #@102
    long-to-int v0, v2

    #@103
    move/from16 v19, v0

    #@105
    aput v19, p5, v18

    #@107
    .line 561
    const/16 v18, 0x20

    #@109
    ushr-long v2, v2, v18

    #@10b
    .line 562
    add-int/lit8 v18, p2, 0x5

    #@10d
    aget v18, p1, v18

    #@10f
    move/from16 v0, v18

    #@111
    int-to-long v0, v0

    #@112
    move-wide/from16 v18, v0

    #@114
    const-wide v20, 0xffffffffL

    #@119
    and-long v16, v18, v20

    #@11b
    .line 563
    .local v16, "x5":J
    mul-long v18, v4, v16

    #@11d
    add-long v18, v18, v14

    #@11f
    add-int/lit8 v20, p4, 0x5

    #@121
    aget v20, p3, v20

    #@123
    move/from16 v0, v20

    #@125
    int-to-long v0, v0

    #@126
    move-wide/from16 v20, v0

    #@128
    const-wide v22, 0xffffffffL

    #@12d
    and-long v20, v20, v22

    #@12f
    add-long v18, v18, v20

    #@131
    add-long v2, v2, v18

    #@133
    .line 564
    add-int/lit8 v18, p6, 0x5

    #@135
    long-to-int v0, v2

    #@136
    move/from16 v19, v0

    #@138
    aput v19, p5, v18

    #@13a
    .line 565
    const/16 v18, 0x20

    #@13c
    ushr-long v2, v2, v18

    #@13e
    .line 566
    add-long v2, v2, v16

    #@140
    .line 567
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
    .line 601
    move/from16 v0, p0

    #@2
    int-to-long v10, v0

    #@3
    const-wide v12, 0xffffffffL

    #@8
    and-long v4, v10, v12

    #@a
    .line 602
    .local v4, "xVal":J
    const-wide v10, 0xffffffffL

    #@f
    and-long v6, p1, v10

    #@11
    .line 603
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
    .line 601
    const-wide/16 v12, 0x0

    #@21
    .line 603
    add-long v2, v12, v10

    #@23
    .line 604
    .local v2, "c":J
    add-int/lit8 v10, p4, 0x0

    #@25
    long-to-int v11, v2

    #@26
    aput v11, p3, v10

    #@28
    .line 605
    const/16 v10, 0x20

    #@2a
    ushr-long/2addr v2, v10

    #@2b
    .line 606
    const/16 v10, 0x20

    #@2d
    ushr-long v8, p1, v10

    #@2f
    .line 607
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
    .line 608
    add-int/lit8 v10, p4, 0x1

    #@41
    long-to-int v11, v2

    #@42
    aput v11, p3, v10

    #@44
    .line 609
    const/16 v10, 0x20

    #@46
    ushr-long/2addr v2, v10

    #@47
    .line 610
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
    .line 611
    add-int/lit8 v10, p4, 0x2

    #@56
    long-to-int v11, v2

    #@57
    aput v11, p3, v10

    #@59
    .line 612
    const/16 v10, 0x20

    #@5b
    ushr-long/2addr v2, v10

    #@5c
    .line 613
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
    .line 614
    add-int/lit8 v10, p4, 0x3

    #@6a
    long-to-int v11, v2

    #@6b
    aput v11, p3, v10

    #@6d
    .line 615
    const/16 v10, 0x20

    #@6f
    ushr-long/2addr v2, v10

    #@70
    .line 616
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
    const/4 v10, 0x6

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
    .line 624
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
    .line 625
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
    .line 624
    const-wide/16 v8, 0x0

    #@20
    .line 625
    add-long v0, v8, v6

    #@22
    .line 626
    .local v0, "c":J
    add-int/lit8 v6, p3, 0x0

    #@24
    long-to-int v7, v0

    #@25
    aput v7, p2, v6

    #@27
    .line 627
    const/16 v6, 0x20

    #@29
    ushr-long/2addr v0, v6

    #@2a
    .line 628
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
    .line 629
    add-int/lit8 v6, p3, 0x1

    #@39
    long-to-int v7, v0

    #@3a
    aput v7, p2, v6

    #@3c
    .line 630
    const/16 v6, 0x20

    #@3e
    ushr-long/2addr v0, v6

    #@3f
    .line 631
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
    .line 632
    add-int/lit8 v6, p3, 0x2

    #@4d
    long-to-int v7, v0

    #@4e
    aput v7, p2, v6

    #@50
    .line 633
    const/16 v6, 0x20

    #@52
    ushr-long/2addr v0, v6

    #@53
    .line 634
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
    const/4 v6, 0x6

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
    .locals 28
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "y"    # [I
    .param p3, "yOff"    # I
    .param p4, "zz"    # [I
    .param p5, "zzOff"    # I

    #@0
    .prologue
    .line 500
    add-int/lit8 v5, p3, 0x0

    #@2
    aget v5, p2, v5

    #@4
    int-to-long v0, v5

    #@5
    move-wide/from16 v22, v0

    #@7
    const-wide v24, 0xffffffffL

    #@c
    and-long v8, v22, v24

    #@e
    .line 501
    .local v8, "y_0":J
    add-int/lit8 v5, p3, 0x1

    #@10
    aget v5, p2, v5

    #@12
    int-to-long v0, v5

    #@13
    move-wide/from16 v22, v0

    #@15
    const-wide v24, 0xffffffffL

    #@1a
    and-long v10, v22, v24

    #@1c
    .line 502
    .local v10, "y_1":J
    add-int/lit8 v5, p3, 0x2

    #@1e
    aget v5, p2, v5

    #@20
    int-to-long v0, v5

    #@21
    move-wide/from16 v22, v0

    #@23
    const-wide v24, 0xffffffffL

    #@28
    and-long v12, v22, v24

    #@2a
    .line 503
    .local v12, "y_2":J
    add-int/lit8 v5, p3, 0x3

    #@2c
    aget v5, p2, v5

    #@2e
    int-to-long v0, v5

    #@2f
    move-wide/from16 v22, v0

    #@31
    const-wide v24, 0xffffffffL

    #@36
    and-long v14, v22, v24

    #@38
    .line 504
    .local v14, "y_3":J
    add-int/lit8 v5, p3, 0x4

    #@3a
    aget v5, p2, v5

    #@3c
    int-to-long v0, v5

    #@3d
    move-wide/from16 v22, v0

    #@3f
    const-wide v24, 0xffffffffL

    #@44
    and-long v16, v22, v24

    #@46
    .line 505
    .local v16, "y_4":J
    add-int/lit8 v5, p3, 0x5

    #@48
    aget v5, p2, v5

    #@4a
    int-to-long v0, v5

    #@4b
    move-wide/from16 v22, v0

    #@4d
    const-wide v24, 0xffffffffL

    #@52
    and-long v18, v22, v24

    #@54
    .line 507
    .local v18, "y_5":J
    const-wide/16 v20, 0x0

    #@56
    .line 508
    .local v20, "zc":J
    const/4 v4, 0x0

    #@57
    .local v4, "i":I
    :goto_0
    const/4 v5, 0x6

    #@58
    if-ge v4, v5, :cond_0

    #@5a
    .line 510
    add-int v5, p1, v4

    #@5c
    aget v5, p0, v5

    #@5e
    int-to-long v0, v5

    #@5f
    move-wide/from16 v22, v0

    #@61
    const-wide v24, 0xffffffffL

    #@66
    and-long v6, v22, v24

    #@68
    .line 511
    .local v6, "x_i":J
    mul-long v22, v6, v8

    #@6a
    add-int/lit8 v5, p5, 0x0

    #@6c
    aget v5, p4, v5

    #@6e
    int-to-long v0, v5

    #@6f
    move-wide/from16 v24, v0

    #@71
    const-wide v26, 0xffffffffL

    #@76
    and-long v24, v24, v26

    #@78
    add-long v22, v22, v24

    #@7a
    .line 510
    const-wide/16 v24, 0x0

    #@7c
    .line 511
    add-long v2, v24, v22

    #@7e
    .line 512
    .local v2, "c":J
    add-int/lit8 v5, p5, 0x0

    #@80
    long-to-int v0, v2

    #@81
    move/from16 v22, v0

    #@83
    aput v22, p4, v5

    #@85
    .line 513
    const/16 v5, 0x20

    #@87
    ushr-long/2addr v2, v5

    #@88
    .line 514
    mul-long v22, v6, v10

    #@8a
    add-int/lit8 v5, p5, 0x1

    #@8c
    aget v5, p4, v5

    #@8e
    int-to-long v0, v5

    #@8f
    move-wide/from16 v24, v0

    #@91
    const-wide v26, 0xffffffffL

    #@96
    and-long v24, v24, v26

    #@98
    add-long v22, v22, v24

    #@9a
    add-long v2, v2, v22

    #@9c
    .line 515
    add-int/lit8 v5, p5, 0x1

    #@9e
    long-to-int v0, v2

    #@9f
    move/from16 v22, v0

    #@a1
    aput v22, p4, v5

    #@a3
    .line 516
    const/16 v5, 0x20

    #@a5
    ushr-long/2addr v2, v5

    #@a6
    .line 517
    mul-long v22, v6, v12

    #@a8
    add-int/lit8 v5, p5, 0x2

    #@aa
    aget v5, p4, v5

    #@ac
    int-to-long v0, v5

    #@ad
    move-wide/from16 v24, v0

    #@af
    const-wide v26, 0xffffffffL

    #@b4
    and-long v24, v24, v26

    #@b6
    add-long v22, v22, v24

    #@b8
    add-long v2, v2, v22

    #@ba
    .line 518
    add-int/lit8 v5, p5, 0x2

    #@bc
    long-to-int v0, v2

    #@bd
    move/from16 v22, v0

    #@bf
    aput v22, p4, v5

    #@c1
    .line 519
    const/16 v5, 0x20

    #@c3
    ushr-long/2addr v2, v5

    #@c4
    .line 520
    mul-long v22, v6, v14

    #@c6
    add-int/lit8 v5, p5, 0x3

    #@c8
    aget v5, p4, v5

    #@ca
    int-to-long v0, v5

    #@cb
    move-wide/from16 v24, v0

    #@cd
    const-wide v26, 0xffffffffL

    #@d2
    and-long v24, v24, v26

    #@d4
    add-long v22, v22, v24

    #@d6
    add-long v2, v2, v22

    #@d8
    .line 521
    add-int/lit8 v5, p5, 0x3

    #@da
    long-to-int v0, v2

    #@db
    move/from16 v22, v0

    #@dd
    aput v22, p4, v5

    #@df
    .line 522
    const/16 v5, 0x20

    #@e1
    ushr-long/2addr v2, v5

    #@e2
    .line 523
    mul-long v22, v6, v16

    #@e4
    add-int/lit8 v5, p5, 0x4

    #@e6
    aget v5, p4, v5

    #@e8
    int-to-long v0, v5

    #@e9
    move-wide/from16 v24, v0

    #@eb
    const-wide v26, 0xffffffffL

    #@f0
    and-long v24, v24, v26

    #@f2
    add-long v22, v22, v24

    #@f4
    add-long v2, v2, v22

    #@f6
    .line 524
    add-int/lit8 v5, p5, 0x4

    #@f8
    long-to-int v0, v2

    #@f9
    move/from16 v22, v0

    #@fb
    aput v22, p4, v5

    #@fd
    .line 525
    const/16 v5, 0x20

    #@ff
    ushr-long/2addr v2, v5

    #@100
    .line 526
    mul-long v22, v6, v18

    #@102
    add-int/lit8 v5, p5, 0x5

    #@104
    aget v5, p4, v5

    #@106
    int-to-long v0, v5

    #@107
    move-wide/from16 v24, v0

    #@109
    const-wide v26, 0xffffffffL

    #@10e
    and-long v24, v24, v26

    #@110
    add-long v22, v22, v24

    #@112
    add-long v2, v2, v22

    #@114
    .line 527
    add-int/lit8 v5, p5, 0x5

    #@116
    long-to-int v0, v2

    #@117
    move/from16 v22, v0

    #@119
    aput v22, p4, v5

    #@11b
    .line 528
    const/16 v5, 0x20

    #@11d
    ushr-long/2addr v2, v5

    #@11e
    .line 529
    add-int/lit8 v5, p5, 0x6

    #@120
    aget v5, p4, v5

    #@122
    int-to-long v0, v5

    #@123
    move-wide/from16 v22, v0

    #@125
    const-wide v24, 0xffffffffL

    #@12a
    and-long v22, v22, v24

    #@12c
    add-long v22, v22, v20

    #@12e
    add-long v2, v2, v22

    #@130
    .line 530
    add-int/lit8 v5, p5, 0x6

    #@132
    long-to-int v0, v2

    #@133
    move/from16 v22, v0

    #@135
    aput v22, p4, v5

    #@137
    .line 531
    const/16 v5, 0x20

    #@139
    ushr-long v20, v2, v5

    #@13b
    .line 532
    add-int/lit8 p5, p5, 0x1

    #@13d
    .line 508
    add-int/lit8 v4, v4, 0x1

    #@13f
    goto/16 :goto_0

    #@141
    .line 534
    .end local v2    # "c":J
    .end local v6    # "x_i":J
    :cond_0
    move-wide/from16 v0, v20

    #@143
    long-to-int v5, v0

    #@144
    return v5
.end method

.method public static mulAddTo([I[I[I)I
    .locals 28
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    #@0
    .prologue
    .line 462
    const/4 v5, 0x0

    #@1
    aget v5, p1, v5

    #@3
    int-to-long v0, v5

    #@4
    move-wide/from16 v22, v0

    #@6
    const-wide v24, 0xffffffffL

    #@b
    and-long v8, v22, v24

    #@d
    .line 463
    .local v8, "y_0":J
    const/4 v5, 0x1

    #@e
    aget v5, p1, v5

    #@10
    int-to-long v0, v5

    #@11
    move-wide/from16 v22, v0

    #@13
    const-wide v24, 0xffffffffL

    #@18
    and-long v10, v22, v24

    #@1a
    .line 464
    .local v10, "y_1":J
    const/4 v5, 0x2

    #@1b
    aget v5, p1, v5

    #@1d
    int-to-long v0, v5

    #@1e
    move-wide/from16 v22, v0

    #@20
    const-wide v24, 0xffffffffL

    #@25
    and-long v12, v22, v24

    #@27
    .line 465
    .local v12, "y_2":J
    const/4 v5, 0x3

    #@28
    aget v5, p1, v5

    #@2a
    int-to-long v0, v5

    #@2b
    move-wide/from16 v22, v0

    #@2d
    const-wide v24, 0xffffffffL

    #@32
    and-long v14, v22, v24

    #@34
    .line 466
    .local v14, "y_3":J
    const/4 v5, 0x4

    #@35
    aget v5, p1, v5

    #@37
    int-to-long v0, v5

    #@38
    move-wide/from16 v22, v0

    #@3a
    const-wide v24, 0xffffffffL

    #@3f
    and-long v16, v22, v24

    #@41
    .line 467
    .local v16, "y_4":J
    const/4 v5, 0x5

    #@42
    aget v5, p1, v5

    #@44
    int-to-long v0, v5

    #@45
    move-wide/from16 v22, v0

    #@47
    const-wide v24, 0xffffffffL

    #@4c
    and-long v18, v22, v24

    #@4e
    .line 469
    .local v18, "y_5":J
    const-wide/16 v20, 0x0

    #@50
    .line 470
    .local v20, "zc":J
    const/4 v4, 0x0

    #@51
    .local v4, "i":I
    :goto_0
    const/4 v5, 0x6

    #@52
    if-ge v4, v5, :cond_0

    #@54
    .line 472
    aget v5, p0, v4

    #@56
    int-to-long v0, v5

    #@57
    move-wide/from16 v22, v0

    #@59
    const-wide v24, 0xffffffffL

    #@5e
    and-long v6, v22, v24

    #@60
    .line 473
    .local v6, "x_i":J
    mul-long v22, v6, v8

    #@62
    add-int/lit8 v5, v4, 0x0

    #@64
    aget v5, p2, v5

    #@66
    int-to-long v0, v5

    #@67
    move-wide/from16 v24, v0

    #@69
    const-wide v26, 0xffffffffL

    #@6e
    and-long v24, v24, v26

    #@70
    add-long v22, v22, v24

    #@72
    .line 472
    const-wide/16 v24, 0x0

    #@74
    .line 473
    add-long v2, v24, v22

    #@76
    .line 474
    .local v2, "c":J
    add-int/lit8 v5, v4, 0x0

    #@78
    long-to-int v0, v2

    #@79
    move/from16 v22, v0

    #@7b
    aput v22, p2, v5

    #@7d
    .line 475
    const/16 v5, 0x20

    #@7f
    ushr-long/2addr v2, v5

    #@80
    .line 476
    mul-long v22, v6, v10

    #@82
    add-int/lit8 v5, v4, 0x1

    #@84
    aget v5, p2, v5

    #@86
    int-to-long v0, v5

    #@87
    move-wide/from16 v24, v0

    #@89
    const-wide v26, 0xffffffffL

    #@8e
    and-long v24, v24, v26

    #@90
    add-long v22, v22, v24

    #@92
    add-long v2, v2, v22

    #@94
    .line 477
    add-int/lit8 v5, v4, 0x1

    #@96
    long-to-int v0, v2

    #@97
    move/from16 v22, v0

    #@99
    aput v22, p2, v5

    #@9b
    .line 478
    const/16 v5, 0x20

    #@9d
    ushr-long/2addr v2, v5

    #@9e
    .line 479
    mul-long v22, v6, v12

    #@a0
    add-int/lit8 v5, v4, 0x2

    #@a2
    aget v5, p2, v5

    #@a4
    int-to-long v0, v5

    #@a5
    move-wide/from16 v24, v0

    #@a7
    const-wide v26, 0xffffffffL

    #@ac
    and-long v24, v24, v26

    #@ae
    add-long v22, v22, v24

    #@b0
    add-long v2, v2, v22

    #@b2
    .line 480
    add-int/lit8 v5, v4, 0x2

    #@b4
    long-to-int v0, v2

    #@b5
    move/from16 v22, v0

    #@b7
    aput v22, p2, v5

    #@b9
    .line 481
    const/16 v5, 0x20

    #@bb
    ushr-long/2addr v2, v5

    #@bc
    .line 482
    mul-long v22, v6, v14

    #@be
    add-int/lit8 v5, v4, 0x3

    #@c0
    aget v5, p2, v5

    #@c2
    int-to-long v0, v5

    #@c3
    move-wide/from16 v24, v0

    #@c5
    const-wide v26, 0xffffffffL

    #@ca
    and-long v24, v24, v26

    #@cc
    add-long v22, v22, v24

    #@ce
    add-long v2, v2, v22

    #@d0
    .line 483
    add-int/lit8 v5, v4, 0x3

    #@d2
    long-to-int v0, v2

    #@d3
    move/from16 v22, v0

    #@d5
    aput v22, p2, v5

    #@d7
    .line 484
    const/16 v5, 0x20

    #@d9
    ushr-long/2addr v2, v5

    #@da
    .line 485
    mul-long v22, v6, v16

    #@dc
    add-int/lit8 v5, v4, 0x4

    #@de
    aget v5, p2, v5

    #@e0
    int-to-long v0, v5

    #@e1
    move-wide/from16 v24, v0

    #@e3
    const-wide v26, 0xffffffffL

    #@e8
    and-long v24, v24, v26

    #@ea
    add-long v22, v22, v24

    #@ec
    add-long v2, v2, v22

    #@ee
    .line 486
    add-int/lit8 v5, v4, 0x4

    #@f0
    long-to-int v0, v2

    #@f1
    move/from16 v22, v0

    #@f3
    aput v22, p2, v5

    #@f5
    .line 487
    const/16 v5, 0x20

    #@f7
    ushr-long/2addr v2, v5

    #@f8
    .line 488
    mul-long v22, v6, v18

    #@fa
    add-int/lit8 v5, v4, 0x5

    #@fc
    aget v5, p2, v5

    #@fe
    int-to-long v0, v5

    #@ff
    move-wide/from16 v24, v0

    #@101
    const-wide v26, 0xffffffffL

    #@106
    and-long v24, v24, v26

    #@108
    add-long v22, v22, v24

    #@10a
    add-long v2, v2, v22

    #@10c
    .line 489
    add-int/lit8 v5, v4, 0x5

    #@10e
    long-to-int v0, v2

    #@10f
    move/from16 v22, v0

    #@111
    aput v22, p2, v5

    #@113
    .line 490
    const/16 v5, 0x20

    #@115
    ushr-long/2addr v2, v5

    #@116
    .line 491
    add-int/lit8 v5, v4, 0x6

    #@118
    aget v5, p2, v5

    #@11a
    int-to-long v0, v5

    #@11b
    move-wide/from16 v22, v0

    #@11d
    const-wide v24, 0xffffffffL

    #@122
    and-long v22, v22, v24

    #@124
    add-long v22, v22, v20

    #@126
    add-long v2, v2, v22

    #@128
    .line 492
    add-int/lit8 v5, v4, 0x6

    #@12a
    long-to-int v0, v2

    #@12b
    move/from16 v22, v0

    #@12d
    aput v22, p2, v5

    #@12f
    .line 493
    const/16 v5, 0x20

    #@131
    ushr-long v20, v2, v5

    #@133
    .line 470
    add-int/lit8 v4, v4, 0x1

    #@135
    goto/16 :goto_0

    #@137
    .line 495
    .end local v2    # "c":J
    .end local v6    # "x_i":J
    :cond_0
    move-wide/from16 v0, v20

    #@139
    long-to-int v5, v0

    #@13a
    return v5
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
    .line 655
    const-wide/16 v0, 0x0

    #@7
    .local v0, "c":J
    int-to-long v6, p0

    #@8
    and-long v4, v6, v8

    #@a
    .line 656
    .local v4, "xVal":J
    const/4 v2, 0x0

    #@b
    .line 659
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
    .line 660
    add-int v3, p3, v2

    #@13
    long-to-int v6, v0

    #@14
    aput v6, p2, v3

    #@16
    .line 661
    const/16 v3, 0x20

    #@18
    ushr-long/2addr v0, v3

    #@19
    .line 663
    add-int/lit8 v2, v2, 0x1

    #@1b
    const/4 v3, 0x6

    #@1c
    if-lt v2, v3, :cond_0

    #@1e
    .line 664
    long-to-int v3, v0

    #@1f
    return v3
.end method

.method public static mulWordAddExt(I[II[II)I
    .locals 11
    .param p0, "x"    # I
    .param p1, "yy"    # [I
    .param p2, "yyOff"    # I
    .param p3, "zz"    # [I
    .param p4, "zzOff"    # I

    #@0
    .prologue
    const/16 v10, 0x20

    #@2
    const-wide v8, 0xffffffffL

    #@7
    .line 574
    int-to-long v4, p0

    #@8
    and-long v2, v4, v8

    #@a
    .line 575
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
    .line 574
    const-wide/16 v6, 0x0

    #@1a
    .line 575
    add-long v0, v6, v4

    #@1c
    .line 576
    .local v0, "c":J
    add-int/lit8 v4, p4, 0x0

    #@1e
    long-to-int v5, v0

    #@1f
    aput v5, p3, v4

    #@21
    .line 577
    ushr-long/2addr v0, v10

    #@22
    .line 578
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
    .line 579
    add-int/lit8 v4, p4, 0x1

    #@33
    long-to-int v5, v0

    #@34
    aput v5, p3, v4

    #@36
    .line 580
    ushr-long/2addr v0, v10

    #@37
    .line 581
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
    .line 582
    add-int/lit8 v4, p4, 0x2

    #@48
    long-to-int v5, v0

    #@49
    aput v5, p3, v4

    #@4b
    .line 583
    ushr-long/2addr v0, v10

    #@4c
    .line 584
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
    .line 585
    add-int/lit8 v4, p4, 0x3

    #@5d
    long-to-int v5, v0

    #@5e
    aput v5, p3, v4

    #@60
    .line 586
    ushr-long/2addr v0, v10

    #@61
    .line 587
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
    .line 588
    add-int/lit8 v4, p4, 0x4

    #@72
    long-to-int v5, v0

    #@73
    aput v5, p3, v4

    #@75
    .line 589
    ushr-long/2addr v0, v10

    #@76
    .line 590
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
    .line 591
    add-int/lit8 v4, p4, 0x5

    #@87
    long-to-int v5, v0

    #@88
    aput v5, p3, v4

    #@8a
    .line 592
    ushr-long/2addr v0, v10

    #@8b
    .line 593
    long-to-int v4, v0

    #@8c
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
    .line 640
    int-to-long v4, p0

    #@1
    const-wide v6, 0xffffffffL

    #@6
    and-long v2, v4, v6

    #@8
    .line 641
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
    .line 640
    const-wide/16 v6, 0x0

    #@1d
    .line 641
    add-long v0, v6, v4

    #@1f
    .line 642
    .local v0, "c":J
    add-int/lit8 v4, p4, 0x0

    #@21
    long-to-int v5, v0

    #@22
    aput v5, p3, v4

    #@24
    .line 643
    const/16 v4, 0x20

    #@26
    ushr-long/2addr v0, v4

    #@27
    .line 644
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
    .line 645
    add-int/lit8 v4, p4, 0x1

    #@3b
    long-to-int v5, v0

    #@3c
    aput v5, p3, v4

    #@3e
    .line 646
    const/16 v4, 0x20

    #@40
    ushr-long/2addr v0, v4

    #@41
    .line 647
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
    .line 648
    add-int/lit8 v4, p4, 0x2

    #@4f
    long-to-int v5, v0

    #@50
    aput v5, p3, v4

    #@52
    .line 649
    const/16 v4, 0x20

    #@54
    ushr-long/2addr v0, v4

    #@55
    .line 650
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
    const/4 v4, 0x6

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
    .locals 48
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "zz"    # [I
    .param p3, "zzOff"    # I

    #@0
    .prologue
    .line 785
    add-int/lit8 v9, p1, 0x0

    #@2
    aget v9, p0, v9

    #@4
    int-to-long v0, v9

    #@5
    move-wide/from16 v44, v0

    #@7
    const-wide v46, 0xffffffffL

    #@c
    and-long v12, v44, v46

    #@e
    .line 788
    .local v12, "x_0":J
    const/4 v2, 0x0

    #@f
    .line 790
    .local v2, "c":I
    const/4 v3, 0x5

    #@10
    .local v3, "i":I
    const/16 v5, 0xc

    #@12
    .line 793
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
    move-wide/from16 v44, v0

    #@1b
    const-wide v46, 0xffffffffL

    #@20
    and-long v10, v44, v46

    #@22
    .line 794
    .local v10, "xVal":J
    mul-long v6, v10, v10

    #@24
    .line 795
    .local v6, "p":J
    add-int/lit8 v5, v5, -0x1

    #@26
    add-int v9, p3, v5

    #@28
    shl-int/lit8 v44, v2, 0x1f

    #@2a
    const/16 v45, 0x21

    #@2c
    ushr-long v46, v6, v45

    #@2e
    move-wide/from16 v0, v46

    #@30
    long-to-int v0, v0

    #@31
    move/from16 v45, v0

    #@33
    or-int v44, v44, v45

    #@35
    aput v44, p2, v9

    #@37
    .line 796
    add-int/lit8 v5, v5, -0x1

    #@39
    add-int v9, p3, v5

    #@3b
    const/16 v44, 0x1

    #@3d
    ushr-long v44, v6, v44

    #@3f
    move-wide/from16 v0, v44

    #@41
    long-to-int v0, v0

    #@42
    move/from16 v44, v0

    #@44
    aput v44, p2, v9

    #@46
    .line 797
    long-to-int v2, v6

    #@47
    .line 799
    if-lez v4, :cond_0

    #@49
    move v3, v4

    #@4a
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    #@4b
    .line 802
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_0
    mul-long v6, v12, v12

    #@4d
    .line 803
    shl-int/lit8 v9, v2, 0x1f

    #@4f
    int-to-long v0, v9

    #@50
    move-wide/from16 v44, v0

    #@52
    const-wide v46, 0xffffffffL

    #@57
    and-long v44, v44, v46

    #@59
    const/16 v9, 0x21

    #@5b
    ushr-long v46, v6, v9

    #@5d
    or-long v24, v44, v46

    #@5f
    .line 804
    .local v24, "zz_1":J
    add-int/lit8 v9, p3, 0x0

    #@61
    long-to-int v0, v6

    #@62
    move/from16 v44, v0

    #@64
    aput v44, p2, v9

    #@66
    .line 805
    const/16 v9, 0x20

    #@68
    ushr-long v44, v6, v9

    #@6a
    move-wide/from16 v0, v44

    #@6c
    long-to-int v9, v0

    #@6d
    and-int/lit8 v2, v9, 0x1

    #@6f
    .line 809
    add-int/lit8 v9, p1, 0x1

    #@71
    aget v9, p0, v9

    #@73
    int-to-long v0, v9

    #@74
    move-wide/from16 v44, v0

    #@76
    const-wide v46, 0xffffffffL

    #@7b
    and-long v14, v44, v46

    #@7d
    .line 810
    .local v14, "x_1":J
    add-int/lit8 v9, p3, 0x2

    #@7f
    aget v9, p2, v9

    #@81
    int-to-long v0, v9

    #@82
    move-wide/from16 v44, v0

    #@84
    const-wide v46, 0xffffffffL

    #@89
    and-long v28, v44, v46

    #@8b
    .line 813
    .local v28, "zz_2":J
    mul-long v44, v14, v12

    #@8d
    add-long v24, v24, v44

    #@8f
    .line 814
    move-wide/from16 v0, v24

    #@91
    long-to-int v8, v0

    #@92
    .line 815
    .local v8, "w":I
    add-int/lit8 v9, p3, 0x1

    #@94
    shl-int/lit8 v44, v8, 0x1

    #@96
    or-int v44, v44, v2

    #@98
    aput v44, p2, v9

    #@9a
    .line 816
    ushr-int/lit8 v2, v8, 0x1f

    #@9c
    .line 817
    const/16 v9, 0x20

    #@9e
    ushr-long v44, v24, v9

    #@a0
    add-long v28, v28, v44

    #@a2
    .line 820
    add-int/lit8 v9, p1, 0x2

    #@a4
    aget v9, p0, v9

    #@a6
    int-to-long v0, v9

    #@a7
    move-wide/from16 v44, v0

    #@a9
    const-wide v46, 0xffffffffL

    #@ae
    and-long v16, v44, v46

    #@b0
    .line 821
    .local v16, "x_2":J
    add-int/lit8 v9, p3, 0x3

    #@b2
    aget v9, p2, v9

    #@b4
    int-to-long v0, v9

    #@b5
    move-wide/from16 v44, v0

    #@b7
    const-wide v46, 0xffffffffL

    #@bc
    and-long v30, v44, v46

    #@be
    .line 822
    .local v30, "zz_3":J
    add-int/lit8 v9, p3, 0x4

    #@c0
    aget v9, p2, v9

    #@c2
    int-to-long v0, v9

    #@c3
    move-wide/from16 v44, v0

    #@c5
    const-wide v46, 0xffffffffL

    #@ca
    and-long v32, v44, v46

    #@cc
    .line 824
    .local v32, "zz_4":J
    mul-long v44, v16, v12

    #@ce
    add-long v28, v28, v44

    #@d0
    .line 825
    move-wide/from16 v0, v28

    #@d2
    long-to-int v8, v0

    #@d3
    .line 826
    add-int/lit8 v9, p3, 0x2

    #@d5
    shl-int/lit8 v44, v8, 0x1

    #@d7
    or-int v44, v44, v2

    #@d9
    aput v44, p2, v9

    #@db
    .line 827
    ushr-int/lit8 v2, v8, 0x1f

    #@dd
    .line 828
    const/16 v9, 0x20

    #@df
    ushr-long v44, v28, v9

    #@e1
    mul-long v46, v16, v14

    #@e3
    add-long v44, v44, v46

    #@e5
    add-long v30, v30, v44

    #@e7
    .line 829
    const/16 v9, 0x20

    #@e9
    ushr-long v44, v30, v9

    #@eb
    add-long v32, v32, v44

    #@ed
    .line 830
    const-wide v44, 0xffffffffL

    #@f2
    and-long v30, v30, v44

    #@f4
    .line 833
    add-int/lit8 v9, p1, 0x3

    #@f6
    aget v9, p0, v9

    #@f8
    int-to-long v0, v9

    #@f9
    move-wide/from16 v44, v0

    #@fb
    const-wide v46, 0xffffffffL

    #@100
    and-long v18, v44, v46

    #@102
    .line 834
    .local v18, "x_3":J
    add-int/lit8 v9, p3, 0x5

    #@104
    aget v9, p2, v9

    #@106
    int-to-long v0, v9

    #@107
    move-wide/from16 v44, v0

    #@109
    const-wide v46, 0xffffffffL

    #@10e
    and-long v34, v44, v46

    #@110
    .line 835
    .local v34, "zz_5":J
    add-int/lit8 v9, p3, 0x6

    #@112
    aget v9, p2, v9

    #@114
    int-to-long v0, v9

    #@115
    move-wide/from16 v44, v0

    #@117
    const-wide v46, 0xffffffffL

    #@11c
    and-long v36, v44, v46

    #@11e
    .line 837
    .local v36, "zz_6":J
    mul-long v44, v18, v12

    #@120
    add-long v30, v30, v44

    #@122
    .line 838
    move-wide/from16 v0, v30

    #@124
    long-to-int v8, v0

    #@125
    .line 839
    add-int/lit8 v9, p3, 0x3

    #@127
    shl-int/lit8 v44, v8, 0x1

    #@129
    or-int v44, v44, v2

    #@12b
    aput v44, p2, v9

    #@12d
    .line 840
    ushr-int/lit8 v2, v8, 0x1f

    #@12f
    .line 841
    const/16 v9, 0x20

    #@131
    ushr-long v44, v30, v9

    #@133
    mul-long v46, v18, v14

    #@135
    add-long v44, v44, v46

    #@137
    add-long v32, v32, v44

    #@139
    .line 842
    const/16 v9, 0x20

    #@13b
    ushr-long v44, v32, v9

    #@13d
    mul-long v46, v18, v16

    #@13f
    add-long v44, v44, v46

    #@141
    add-long v34, v34, v44

    #@143
    .line 843
    const-wide v44, 0xffffffffL

    #@148
    and-long v32, v32, v44

    #@14a
    .line 844
    const/16 v9, 0x20

    #@14c
    ushr-long v44, v34, v9

    #@14e
    add-long v36, v36, v44

    #@150
    .line 845
    const-wide v44, 0xffffffffL

    #@155
    and-long v34, v34, v44

    #@157
    .line 848
    add-int/lit8 v9, p1, 0x4

    #@159
    aget v9, p0, v9

    #@15b
    int-to-long v0, v9

    #@15c
    move-wide/from16 v44, v0

    #@15e
    const-wide v46, 0xffffffffL

    #@163
    and-long v20, v44, v46

    #@165
    .line 849
    .local v20, "x_4":J
    add-int/lit8 v9, p3, 0x7

    #@167
    aget v9, p2, v9

    #@169
    int-to-long v0, v9

    #@16a
    move-wide/from16 v44, v0

    #@16c
    const-wide v46, 0xffffffffL

    #@171
    and-long v38, v44, v46

    #@173
    .line 850
    .local v38, "zz_7":J
    add-int/lit8 v9, p3, 0x8

    #@175
    aget v9, p2, v9

    #@177
    int-to-long v0, v9

    #@178
    move-wide/from16 v44, v0

    #@17a
    const-wide v46, 0xffffffffL

    #@17f
    and-long v40, v44, v46

    #@181
    .line 852
    .local v40, "zz_8":J
    mul-long v44, v20, v12

    #@183
    add-long v32, v32, v44

    #@185
    .line 853
    move-wide/from16 v0, v32

    #@187
    long-to-int v8, v0

    #@188
    .line 854
    add-int/lit8 v9, p3, 0x4

    #@18a
    shl-int/lit8 v44, v8, 0x1

    #@18c
    or-int v44, v44, v2

    #@18e
    aput v44, p2, v9

    #@190
    .line 855
    ushr-int/lit8 v2, v8, 0x1f

    #@192
    .line 856
    const/16 v9, 0x20

    #@194
    ushr-long v44, v32, v9

    #@196
    mul-long v46, v20, v14

    #@198
    add-long v44, v44, v46

    #@19a
    add-long v34, v34, v44

    #@19c
    .line 857
    const/16 v9, 0x20

    #@19e
    ushr-long v44, v34, v9

    #@1a0
    mul-long v46, v20, v16

    #@1a2
    add-long v44, v44, v46

    #@1a4
    add-long v36, v36, v44

    #@1a6
    .line 858
    const-wide v44, 0xffffffffL

    #@1ab
    and-long v34, v34, v44

    #@1ad
    .line 859
    const/16 v9, 0x20

    #@1af
    ushr-long v44, v36, v9

    #@1b1
    mul-long v46, v20, v18

    #@1b3
    add-long v44, v44, v46

    #@1b5
    add-long v38, v38, v44

    #@1b7
    .line 860
    const-wide v44, 0xffffffffL

    #@1bc
    and-long v36, v36, v44

    #@1be
    .line 861
    const/16 v9, 0x20

    #@1c0
    ushr-long v44, v38, v9

    #@1c2
    add-long v40, v40, v44

    #@1c4
    .line 862
    const-wide v44, 0xffffffffL

    #@1c9
    and-long v38, v38, v44

    #@1cb
    .line 865
    add-int/lit8 v9, p1, 0x5

    #@1cd
    aget v9, p0, v9

    #@1cf
    int-to-long v0, v9

    #@1d0
    move-wide/from16 v44, v0

    #@1d2
    const-wide v46, 0xffffffffL

    #@1d7
    and-long v22, v44, v46

    #@1d9
    .line 866
    .local v22, "x_5":J
    add-int/lit8 v9, p3, 0x9

    #@1db
    aget v9, p2, v9

    #@1dd
    int-to-long v0, v9

    #@1de
    move-wide/from16 v44, v0

    #@1e0
    const-wide v46, 0xffffffffL

    #@1e5
    and-long v42, v44, v46

    #@1e7
    .line 867
    .local v42, "zz_9":J
    add-int/lit8 v9, p3, 0xa

    #@1e9
    aget v9, p2, v9

    #@1eb
    int-to-long v0, v9

    #@1ec
    move-wide/from16 v44, v0

    #@1ee
    const-wide v46, 0xffffffffL

    #@1f3
    and-long v26, v44, v46

    #@1f5
    .line 869
    .local v26, "zz_10":J
    mul-long v44, v22, v12

    #@1f7
    add-long v34, v34, v44

    #@1f9
    .line 870
    move-wide/from16 v0, v34

    #@1fb
    long-to-int v8, v0

    #@1fc
    .line 871
    add-int/lit8 v9, p3, 0x5

    #@1fe
    shl-int/lit8 v44, v8, 0x1

    #@200
    or-int v44, v44, v2

    #@202
    aput v44, p2, v9

    #@204
    .line 872
    ushr-int/lit8 v2, v8, 0x1f

    #@206
    .line 873
    const/16 v9, 0x20

    #@208
    ushr-long v44, v34, v9

    #@20a
    mul-long v46, v22, v14

    #@20c
    add-long v44, v44, v46

    #@20e
    add-long v36, v36, v44

    #@210
    .line 874
    const/16 v9, 0x20

    #@212
    ushr-long v44, v36, v9

    #@214
    mul-long v46, v22, v16

    #@216
    add-long v44, v44, v46

    #@218
    add-long v38, v38, v44

    #@21a
    .line 875
    const/16 v9, 0x20

    #@21c
    ushr-long v44, v38, v9

    #@21e
    mul-long v46, v22, v18

    #@220
    add-long v44, v44, v46

    #@222
    add-long v40, v40, v44

    #@224
    .line 876
    const/16 v9, 0x20

    #@226
    ushr-long v44, v40, v9

    #@228
    mul-long v46, v22, v20

    #@22a
    add-long v44, v44, v46

    #@22c
    add-long v42, v42, v44

    #@22e
    .line 877
    const/16 v9, 0x20

    #@230
    ushr-long v44, v42, v9

    #@232
    add-long v26, v26, v44

    #@234
    .line 880
    move-wide/from16 v0, v36

    #@236
    long-to-int v8, v0

    #@237
    .line 881
    add-int/lit8 v9, p3, 0x6

    #@239
    shl-int/lit8 v44, v8, 0x1

    #@23b
    or-int v44, v44, v2

    #@23d
    aput v44, p2, v9

    #@23f
    .line 882
    ushr-int/lit8 v2, v8, 0x1f

    #@241
    .line 883
    move-wide/from16 v0, v38

    #@243
    long-to-int v8, v0

    #@244
    .line 884
    add-int/lit8 v9, p3, 0x7

    #@246
    shl-int/lit8 v44, v8, 0x1

    #@248
    or-int v44, v44, v2

    #@24a
    aput v44, p2, v9

    #@24c
    .line 885
    ushr-int/lit8 v2, v8, 0x1f

    #@24e
    .line 886
    move-wide/from16 v0, v40

    #@250
    long-to-int v8, v0

    #@251
    .line 887
    add-int/lit8 v9, p3, 0x8

    #@253
    shl-int/lit8 v44, v8, 0x1

    #@255
    or-int v44, v44, v2

    #@257
    aput v44, p2, v9

    #@259
    .line 888
    ushr-int/lit8 v2, v8, 0x1f

    #@25b
    .line 889
    move-wide/from16 v0, v42

    #@25d
    long-to-int v8, v0

    #@25e
    .line 890
    add-int/lit8 v9, p3, 0x9

    #@260
    shl-int/lit8 v44, v8, 0x1

    #@262
    or-int v44, v44, v2

    #@264
    aput v44, p2, v9

    #@266
    .line 891
    ushr-int/lit8 v2, v8, 0x1f

    #@268
    .line 892
    move-wide/from16 v0, v26

    #@26a
    long-to-int v8, v0

    #@26b
    .line 893
    add-int/lit8 v9, p3, 0xa

    #@26d
    shl-int/lit8 v44, v8, 0x1

    #@26f
    or-int v44, v44, v2

    #@271
    aput v44, p2, v9

    #@273
    .line 894
    ushr-int/lit8 v2, v8, 0x1f

    #@275
    .line 895
    add-int/lit8 v9, p3, 0xb

    #@277
    aget v9, p2, v9

    #@279
    const/16 v44, 0x20

    #@27b
    shr-long v44, v26, v44

    #@27d
    move-wide/from16 v0, v44

    #@27f
    long-to-int v0, v0

    #@280
    move/from16 v44, v0

    #@282
    add-int v8, v9, v44

    #@284
    .line 896
    add-int/lit8 v9, p3, 0xb

    #@286
    shl-int/lit8 v44, v8, 0x1

    #@288
    or-int v44, v44, v2

    #@28a
    aput v44, p2, v9

    #@28c
    .line 783
    return-void
.end method

.method public static square([I[I)V
    .locals 48
    .param p0, "x"    # [I
    .param p1, "zz"    # [I

    #@0
    .prologue
    .line 669
    const/4 v9, 0x0

    #@1
    aget v9, p0, v9

    #@3
    int-to-long v0, v9

    #@4
    move-wide/from16 v44, v0

    #@6
    const-wide v46, 0xffffffffL

    #@b
    and-long v12, v44, v46

    #@d
    .line 672
    .local v12, "x_0":J
    const/4 v2, 0x0

    #@e
    .line 674
    .local v2, "c":I
    const/4 v3, 0x5

    #@f
    .local v3, "i":I
    const/16 v5, 0xc

    #@11
    .line 677
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
    move-wide/from16 v44, v0

    #@18
    const-wide v46, 0xffffffffL

    #@1d
    and-long v10, v44, v46

    #@1f
    .line 678
    .local v10, "xVal":J
    mul-long v6, v10, v10

    #@21
    .line 679
    .local v6, "p":J
    add-int/lit8 v5, v5, -0x1

    #@23
    shl-int/lit8 v9, v2, 0x1f

    #@25
    const/16 v44, 0x21

    #@27
    ushr-long v44, v6, v44

    #@29
    move-wide/from16 v0, v44

    #@2b
    long-to-int v0, v0

    #@2c
    move/from16 v44, v0

    #@2e
    or-int v9, v9, v44

    #@30
    aput v9, p1, v5

    #@32
    .line 680
    add-int/lit8 v5, v5, -0x1

    #@34
    const/4 v9, 0x1

    #@35
    ushr-long v44, v6, v9

    #@37
    move-wide/from16 v0, v44

    #@39
    long-to-int v9, v0

    #@3a
    aput v9, p1, v5

    #@3c
    .line 681
    long-to-int v2, v6

    #@3d
    .line 683
    if-lez v4, :cond_0

    #@3f
    move v3, v4

    #@40
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    #@41
    .line 686
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_0
    mul-long v6, v12, v12

    #@43
    .line 687
    shl-int/lit8 v9, v2, 0x1f

    #@45
    int-to-long v0, v9

    #@46
    move-wide/from16 v44, v0

    #@48
    const-wide v46, 0xffffffffL

    #@4d
    and-long v44, v44, v46

    #@4f
    const/16 v9, 0x21

    #@51
    ushr-long v46, v6, v9

    #@53
    or-long v24, v44, v46

    #@55
    .line 688
    .local v24, "zz_1":J
    long-to-int v9, v6

    #@56
    const/16 v44, 0x0

    #@58
    aput v9, p1, v44

    #@5a
    .line 689
    const/16 v9, 0x20

    #@5c
    ushr-long v44, v6, v9

    #@5e
    move-wide/from16 v0, v44

    #@60
    long-to-int v9, v0

    #@61
    and-int/lit8 v2, v9, 0x1

    #@63
    .line 693
    const/4 v9, 0x1

    #@64
    aget v9, p0, v9

    #@66
    int-to-long v0, v9

    #@67
    move-wide/from16 v44, v0

    #@69
    const-wide v46, 0xffffffffL

    #@6e
    and-long v14, v44, v46

    #@70
    .line 694
    .local v14, "x_1":J
    const/4 v9, 0x2

    #@71
    aget v9, p1, v9

    #@73
    int-to-long v0, v9

    #@74
    move-wide/from16 v44, v0

    #@76
    const-wide v46, 0xffffffffL

    #@7b
    and-long v28, v44, v46

    #@7d
    .line 697
    .local v28, "zz_2":J
    mul-long v44, v14, v12

    #@7f
    add-long v24, v24, v44

    #@81
    .line 698
    move-wide/from16 v0, v24

    #@83
    long-to-int v8, v0

    #@84
    .line 699
    .local v8, "w":I
    shl-int/lit8 v9, v8, 0x1

    #@86
    or-int/2addr v9, v2

    #@87
    const/16 v44, 0x1

    #@89
    aput v9, p1, v44

    #@8b
    .line 700
    ushr-int/lit8 v2, v8, 0x1f

    #@8d
    .line 701
    const/16 v9, 0x20

    #@8f
    ushr-long v44, v24, v9

    #@91
    add-long v28, v28, v44

    #@93
    .line 704
    const/4 v9, 0x2

    #@94
    aget v9, p0, v9

    #@96
    int-to-long v0, v9

    #@97
    move-wide/from16 v44, v0

    #@99
    const-wide v46, 0xffffffffL

    #@9e
    and-long v16, v44, v46

    #@a0
    .line 705
    .local v16, "x_2":J
    const/4 v9, 0x3

    #@a1
    aget v9, p1, v9

    #@a3
    int-to-long v0, v9

    #@a4
    move-wide/from16 v44, v0

    #@a6
    const-wide v46, 0xffffffffL

    #@ab
    and-long v30, v44, v46

    #@ad
    .line 706
    .local v30, "zz_3":J
    const/4 v9, 0x4

    #@ae
    aget v9, p1, v9

    #@b0
    int-to-long v0, v9

    #@b1
    move-wide/from16 v44, v0

    #@b3
    const-wide v46, 0xffffffffL

    #@b8
    and-long v32, v44, v46

    #@ba
    .line 708
    .local v32, "zz_4":J
    mul-long v44, v16, v12

    #@bc
    add-long v28, v28, v44

    #@be
    .line 709
    move-wide/from16 v0, v28

    #@c0
    long-to-int v8, v0

    #@c1
    .line 710
    shl-int/lit8 v9, v8, 0x1

    #@c3
    or-int/2addr v9, v2

    #@c4
    const/16 v44, 0x2

    #@c6
    aput v9, p1, v44

    #@c8
    .line 711
    ushr-int/lit8 v2, v8, 0x1f

    #@ca
    .line 712
    const/16 v9, 0x20

    #@cc
    ushr-long v44, v28, v9

    #@ce
    mul-long v46, v16, v14

    #@d0
    add-long v44, v44, v46

    #@d2
    add-long v30, v30, v44

    #@d4
    .line 713
    const/16 v9, 0x20

    #@d6
    ushr-long v44, v30, v9

    #@d8
    add-long v32, v32, v44

    #@da
    .line 714
    const-wide v44, 0xffffffffL

    #@df
    and-long v30, v30, v44

    #@e1
    .line 717
    const/4 v9, 0x3

    #@e2
    aget v9, p0, v9

    #@e4
    int-to-long v0, v9

    #@e5
    move-wide/from16 v44, v0

    #@e7
    const-wide v46, 0xffffffffL

    #@ec
    and-long v18, v44, v46

    #@ee
    .line 718
    .local v18, "x_3":J
    const/4 v9, 0x5

    #@ef
    aget v9, p1, v9

    #@f1
    int-to-long v0, v9

    #@f2
    move-wide/from16 v44, v0

    #@f4
    const-wide v46, 0xffffffffL

    #@f9
    and-long v34, v44, v46

    #@fb
    .line 719
    .local v34, "zz_5":J
    const/4 v9, 0x6

    #@fc
    aget v9, p1, v9

    #@fe
    int-to-long v0, v9

    #@ff
    move-wide/from16 v44, v0

    #@101
    const-wide v46, 0xffffffffL

    #@106
    and-long v36, v44, v46

    #@108
    .line 721
    .local v36, "zz_6":J
    mul-long v44, v18, v12

    #@10a
    add-long v30, v30, v44

    #@10c
    .line 722
    move-wide/from16 v0, v30

    #@10e
    long-to-int v8, v0

    #@10f
    .line 723
    shl-int/lit8 v9, v8, 0x1

    #@111
    or-int/2addr v9, v2

    #@112
    const/16 v44, 0x3

    #@114
    aput v9, p1, v44

    #@116
    .line 724
    ushr-int/lit8 v2, v8, 0x1f

    #@118
    .line 725
    const/16 v9, 0x20

    #@11a
    ushr-long v44, v30, v9

    #@11c
    mul-long v46, v18, v14

    #@11e
    add-long v44, v44, v46

    #@120
    add-long v32, v32, v44

    #@122
    .line 726
    const/16 v9, 0x20

    #@124
    ushr-long v44, v32, v9

    #@126
    mul-long v46, v18, v16

    #@128
    add-long v44, v44, v46

    #@12a
    add-long v34, v34, v44

    #@12c
    .line 727
    const-wide v44, 0xffffffffL

    #@131
    and-long v32, v32, v44

    #@133
    .line 728
    const/16 v9, 0x20

    #@135
    ushr-long v44, v34, v9

    #@137
    add-long v36, v36, v44

    #@139
    .line 729
    const-wide v44, 0xffffffffL

    #@13e
    and-long v34, v34, v44

    #@140
    .line 732
    const/4 v9, 0x4

    #@141
    aget v9, p0, v9

    #@143
    int-to-long v0, v9

    #@144
    move-wide/from16 v44, v0

    #@146
    const-wide v46, 0xffffffffL

    #@14b
    and-long v20, v44, v46

    #@14d
    .line 733
    .local v20, "x_4":J
    const/4 v9, 0x7

    #@14e
    aget v9, p1, v9

    #@150
    int-to-long v0, v9

    #@151
    move-wide/from16 v44, v0

    #@153
    const-wide v46, 0xffffffffL

    #@158
    and-long v38, v44, v46

    #@15a
    .line 734
    .local v38, "zz_7":J
    const/16 v9, 0x8

    #@15c
    aget v9, p1, v9

    #@15e
    int-to-long v0, v9

    #@15f
    move-wide/from16 v44, v0

    #@161
    const-wide v46, 0xffffffffL

    #@166
    and-long v40, v44, v46

    #@168
    .line 736
    .local v40, "zz_8":J
    mul-long v44, v20, v12

    #@16a
    add-long v32, v32, v44

    #@16c
    .line 737
    move-wide/from16 v0, v32

    #@16e
    long-to-int v8, v0

    #@16f
    .line 738
    shl-int/lit8 v9, v8, 0x1

    #@171
    or-int/2addr v9, v2

    #@172
    const/16 v44, 0x4

    #@174
    aput v9, p1, v44

    #@176
    .line 739
    ushr-int/lit8 v2, v8, 0x1f

    #@178
    .line 740
    const/16 v9, 0x20

    #@17a
    ushr-long v44, v32, v9

    #@17c
    mul-long v46, v20, v14

    #@17e
    add-long v44, v44, v46

    #@180
    add-long v34, v34, v44

    #@182
    .line 741
    const/16 v9, 0x20

    #@184
    ushr-long v44, v34, v9

    #@186
    mul-long v46, v20, v16

    #@188
    add-long v44, v44, v46

    #@18a
    add-long v36, v36, v44

    #@18c
    .line 742
    const-wide v44, 0xffffffffL

    #@191
    and-long v34, v34, v44

    #@193
    .line 743
    const/16 v9, 0x20

    #@195
    ushr-long v44, v36, v9

    #@197
    mul-long v46, v20, v18

    #@199
    add-long v44, v44, v46

    #@19b
    add-long v38, v38, v44

    #@19d
    .line 744
    const-wide v44, 0xffffffffL

    #@1a2
    and-long v36, v36, v44

    #@1a4
    .line 745
    const/16 v9, 0x20

    #@1a6
    ushr-long v44, v38, v9

    #@1a8
    add-long v40, v40, v44

    #@1aa
    .line 746
    const-wide v44, 0xffffffffL

    #@1af
    and-long v38, v38, v44

    #@1b1
    .line 749
    const/4 v9, 0x5

    #@1b2
    aget v9, p0, v9

    #@1b4
    int-to-long v0, v9

    #@1b5
    move-wide/from16 v44, v0

    #@1b7
    const-wide v46, 0xffffffffL

    #@1bc
    and-long v22, v44, v46

    #@1be
    .line 750
    .local v22, "x_5":J
    const/16 v9, 0x9

    #@1c0
    aget v9, p1, v9

    #@1c2
    int-to-long v0, v9

    #@1c3
    move-wide/from16 v44, v0

    #@1c5
    const-wide v46, 0xffffffffL

    #@1ca
    and-long v42, v44, v46

    #@1cc
    .line 751
    .local v42, "zz_9":J
    const/16 v9, 0xa

    #@1ce
    aget v9, p1, v9

    #@1d0
    int-to-long v0, v9

    #@1d1
    move-wide/from16 v44, v0

    #@1d3
    const-wide v46, 0xffffffffL

    #@1d8
    and-long v26, v44, v46

    #@1da
    .line 753
    .local v26, "zz_10":J
    mul-long v44, v22, v12

    #@1dc
    add-long v34, v34, v44

    #@1de
    .line 754
    move-wide/from16 v0, v34

    #@1e0
    long-to-int v8, v0

    #@1e1
    .line 755
    shl-int/lit8 v9, v8, 0x1

    #@1e3
    or-int/2addr v9, v2

    #@1e4
    const/16 v44, 0x5

    #@1e6
    aput v9, p1, v44

    #@1e8
    .line 756
    ushr-int/lit8 v2, v8, 0x1f

    #@1ea
    .line 757
    const/16 v9, 0x20

    #@1ec
    ushr-long v44, v34, v9

    #@1ee
    mul-long v46, v22, v14

    #@1f0
    add-long v44, v44, v46

    #@1f2
    add-long v36, v36, v44

    #@1f4
    .line 758
    const/16 v9, 0x20

    #@1f6
    ushr-long v44, v36, v9

    #@1f8
    mul-long v46, v22, v16

    #@1fa
    add-long v44, v44, v46

    #@1fc
    add-long v38, v38, v44

    #@1fe
    .line 759
    const/16 v9, 0x20

    #@200
    ushr-long v44, v38, v9

    #@202
    mul-long v46, v22, v18

    #@204
    add-long v44, v44, v46

    #@206
    add-long v40, v40, v44

    #@208
    .line 760
    const/16 v9, 0x20

    #@20a
    ushr-long v44, v40, v9

    #@20c
    mul-long v46, v22, v20

    #@20e
    add-long v44, v44, v46

    #@210
    add-long v42, v42, v44

    #@212
    .line 761
    const/16 v9, 0x20

    #@214
    ushr-long v44, v42, v9

    #@216
    add-long v26, v26, v44

    #@218
    .line 764
    move-wide/from16 v0, v36

    #@21a
    long-to-int v8, v0

    #@21b
    .line 765
    shl-int/lit8 v9, v8, 0x1

    #@21d
    or-int/2addr v9, v2

    #@21e
    const/16 v44, 0x6

    #@220
    aput v9, p1, v44

    #@222
    .line 766
    ushr-int/lit8 v2, v8, 0x1f

    #@224
    .line 767
    move-wide/from16 v0, v38

    #@226
    long-to-int v8, v0

    #@227
    .line 768
    shl-int/lit8 v9, v8, 0x1

    #@229
    or-int/2addr v9, v2

    #@22a
    const/16 v44, 0x7

    #@22c
    aput v9, p1, v44

    #@22e
    .line 769
    ushr-int/lit8 v2, v8, 0x1f

    #@230
    .line 770
    move-wide/from16 v0, v40

    #@232
    long-to-int v8, v0

    #@233
    .line 771
    shl-int/lit8 v9, v8, 0x1

    #@235
    or-int/2addr v9, v2

    #@236
    const/16 v44, 0x8

    #@238
    aput v9, p1, v44

    #@23a
    .line 772
    ushr-int/lit8 v2, v8, 0x1f

    #@23c
    .line 773
    move-wide/from16 v0, v42

    #@23e
    long-to-int v8, v0

    #@23f
    .line 774
    shl-int/lit8 v9, v8, 0x1

    #@241
    or-int/2addr v9, v2

    #@242
    const/16 v44, 0x9

    #@244
    aput v9, p1, v44

    #@246
    .line 775
    ushr-int/lit8 v2, v8, 0x1f

    #@248
    .line 776
    move-wide/from16 v0, v26

    #@24a
    long-to-int v8, v0

    #@24b
    .line 777
    shl-int/lit8 v9, v8, 0x1

    #@24d
    or-int/2addr v9, v2

    #@24e
    const/16 v44, 0xa

    #@250
    aput v9, p1, v44

    #@252
    .line 778
    ushr-int/lit8 v2, v8, 0x1f

    #@254
    .line 779
    const/16 v9, 0xb

    #@256
    aget v9, p1, v9

    #@258
    const/16 v44, 0x20

    #@25a
    shr-long v44, v26, v44

    #@25c
    move-wide/from16 v0, v44

    #@25e
    long-to-int v0, v0

    #@25f
    move/from16 v44, v0

    #@261
    add-int v8, v9, v44

    #@263
    .line 780
    shl-int/lit8 v9, v8, 0x1

    #@265
    or-int/2addr v9, v2

    #@266
    const/16 v44, 0xb

    #@268
    aput v9, p1, v44

    #@26a
    .line 667
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
    .line 926
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
    .line 925
    const-wide/16 v4, 0x0

    #@16
    .line 926
    add-long v0, v4, v2

    #@18
    .line 927
    .local v0, "c":J
    add-int/lit8 v2, p5, 0x0

    #@1a
    long-to-int v3, v0

    #@1b
    aput v3, p4, v2

    #@1d
    .line 928
    shr-long/2addr v0, v8

    #@1e
    .line 929
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
    .line 930
    add-int/lit8 v2, p5, 0x1

    #@2e
    long-to-int v3, v0

    #@2f
    aput v3, p4, v2

    #@31
    .line 931
    shr-long/2addr v0, v8

    #@32
    .line 932
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
    .line 933
    add-int/lit8 v2, p5, 0x2

    #@42
    long-to-int v3, v0

    #@43
    aput v3, p4, v2

    #@45
    .line 934
    shr-long/2addr v0, v8

    #@46
    .line 935
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
    .line 936
    add-int/lit8 v2, p5, 0x3

    #@56
    long-to-int v3, v0

    #@57
    aput v3, p4, v2

    #@59
    .line 937
    shr-long/2addr v0, v8

    #@5a
    .line 938
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
    .line 939
    add-int/lit8 v2, p5, 0x4

    #@6a
    long-to-int v3, v0

    #@6b
    aput v3, p4, v2

    #@6d
    .line 940
    shr-long/2addr v0, v8

    #@6e
    .line 941
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
    .line 942
    add-int/lit8 v2, p5, 0x5

    #@7e
    long-to-int v3, v0

    #@7f
    aput v3, p4, v2

    #@81
    .line 943
    shr-long/2addr v0, v8

    #@82
    .line 944
    long-to-int v2, v0

    #@83
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
    .line 902
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
    .line 901
    const-wide/16 v4, 0x0

    #@15
    .line 902
    add-long v0, v4, v2

    #@17
    .line 903
    .local v0, "c":J
    long-to-int v2, v0

    #@18
    aput v2, p2, v9

    #@1a
    .line 904
    shr-long/2addr v0, v8

    #@1b
    .line 905
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
    .line 906
    long-to-int v2, v0

    #@26
    aput v2, p2, v10

    #@28
    .line 907
    shr-long/2addr v0, v8

    #@29
    .line 908
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
    .line 909
    long-to-int v2, v0

    #@34
    aput v2, p2, v11

    #@36
    .line 910
    shr-long/2addr v0, v8

    #@37
    .line 911
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
    .line 912
    long-to-int v2, v0

    #@44
    const/4 v3, 0x3

    #@45
    aput v2, p2, v3

    #@47
    .line 913
    shr-long/2addr v0, v8

    #@48
    .line 914
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
    .line 915
    long-to-int v2, v0

    #@55
    const/4 v3, 0x4

    #@56
    aput v2, p2, v3

    #@58
    .line 916
    shr-long/2addr v0, v8

    #@59
    .line 917
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
    .line 918
    long-to-int v2, v0

    #@66
    const/4 v3, 0x5

    #@67
    aput v2, p2, v3

    #@69
    .line 919
    shr-long/2addr v0, v8

    #@6a
    .line 920
    long-to-int v2, v0

    #@6b
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
    .line 950
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
    .line 949
    const-wide/16 v4, 0x0

    #@1a
    .line 950
    add-long v0, v4, v2

    #@1c
    .line 951
    .local v0, "c":J
    long-to-int v2, v0

    #@1d
    aput v2, p2, v9

    #@1f
    .line 952
    shr-long/2addr v0, v8

    #@20
    .line 953
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
    .line 954
    long-to-int v2, v0

    #@30
    aput v2, p2, v10

    #@32
    .line 955
    shr-long/2addr v0, v8

    #@33
    .line 956
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
    .line 957
    long-to-int v2, v0

    #@43
    aput v2, p2, v11

    #@45
    .line 958
    shr-long/2addr v0, v8

    #@46
    .line 959
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
    .line 960
    long-to-int v2, v0

    #@59
    const/4 v3, 0x3

    #@5a
    aput v2, p2, v3

    #@5c
    .line 961
    shr-long/2addr v0, v8

    #@5d
    .line 962
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
    .line 963
    long-to-int v2, v0

    #@70
    const/4 v3, 0x4

    #@71
    aput v2, p2, v3

    #@73
    .line 964
    shr-long/2addr v0, v8

    #@74
    .line 965
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
    .line 966
    long-to-int v2, v0

    #@87
    const/4 v3, 0x5

    #@88
    aput v2, p2, v3

    #@8a
    .line 967
    shr-long/2addr v0, v8

    #@8b
    .line 968
    long-to-int v2, v0

    #@8c
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
    .line 998
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
    .line 997
    const-wide/16 v4, 0x0

    #@16
    .line 998
    add-long v0, v4, v2

    #@18
    .line 999
    .local v0, "c":J
    add-int/lit8 v2, p3, 0x0

    #@1a
    long-to-int v3, v0

    #@1b
    aput v3, p2, v2

    #@1d
    .line 1000
    shr-long/2addr v0, v8

    #@1e
    .line 1001
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
    .line 1002
    add-int/lit8 v2, p3, 0x1

    #@2e
    long-to-int v3, v0

    #@2f
    aput v3, p2, v2

    #@31
    .line 1003
    shr-long/2addr v0, v8

    #@32
    .line 1004
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
    .line 1005
    add-int/lit8 v2, p3, 0x2

    #@42
    long-to-int v3, v0

    #@43
    aput v3, p2, v2

    #@45
    .line 1006
    shr-long/2addr v0, v8

    #@46
    .line 1007
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
    .line 1008
    add-int/lit8 v2, p3, 0x3

    #@56
    long-to-int v3, v0

    #@57
    aput v3, p2, v2

    #@59
    .line 1009
    shr-long/2addr v0, v8

    #@5a
    .line 1010
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
    .line 1011
    add-int/lit8 v2, p3, 0x4

    #@6a
    long-to-int v3, v0

    #@6b
    aput v3, p2, v2

    #@6d
    .line 1012
    shr-long/2addr v0, v8

    #@6e
    .line 1013
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
    .line 1014
    add-int/lit8 v2, p3, 0x5

    #@7e
    long-to-int v3, v0

    #@7f
    aput v3, p2, v2

    #@81
    .line 1015
    shr-long/2addr v0, v8

    #@82
    .line 1016
    long-to-int v2, v0

    #@83
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
    .line 974
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
    .line 973
    const-wide/16 v4, 0x0

    #@15
    .line 974
    add-long v0, v4, v2

    #@17
    .line 975
    .local v0, "c":J
    long-to-int v2, v0

    #@18
    aput v2, p1, v9

    #@1a
    .line 976
    shr-long/2addr v0, v8

    #@1b
    .line 977
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
    .line 978
    long-to-int v2, v0

    #@26
    aput v2, p1, v10

    #@28
    .line 979
    shr-long/2addr v0, v8

    #@29
    .line 980
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
    .line 981
    long-to-int v2, v0

    #@34
    aput v2, p1, v11

    #@36
    .line 982
    shr-long/2addr v0, v8

    #@37
    .line 983
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
    .line 984
    long-to-int v2, v0

    #@44
    const/4 v3, 0x3

    #@45
    aput v2, p1, v3

    #@47
    .line 985
    shr-long/2addr v0, v8

    #@48
    .line 986
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
    .line 987
    long-to-int v2, v0

    #@55
    const/4 v3, 0x4

    #@56
    aput v2, p1, v3

    #@58
    .line 988
    shr-long/2addr v0, v8

    #@59
    .line 989
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
    .line 990
    long-to-int v2, v0

    #@66
    const/4 v3, 0x5

    #@67
    aput v2, p1, v3

    #@69
    .line 991
    shr-long/2addr v0, v8

    #@6a
    .line 992
    long-to-int v2, v0

    #@6b
    return v2
.end method

.method public static toBigInteger([I)Ljava/math/BigInteger;
    .locals 5
    .param p0, "x"    # [I

    #@0
    .prologue
    .line 1021
    const/16 v3, 0x18

    #@2
    new-array v0, v3, [B

    #@4
    .line 1022
    .local v0, "bs":[B
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    const/4 v3, 0x6

    #@6
    if-ge v1, v3, :cond_1

    #@8
    .line 1024
    aget v2, p0, v1

    #@a
    .line 1025
    .local v2, "x_i":I
    if-eqz v2, :cond_0

    #@c
    .line 1027
    rsub-int/lit8 v3, v1, 0x5

    #@e
    shl-int/lit8 v3, v3, 0x2

    #@10
    invoke-static {v2, v0, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@13
    .line 1022
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1030
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

.method public static toBigInteger64([J)Ljava/math/BigInteger;
    .locals 6
    .param p0, "x"    # [J

    #@0
    .prologue
    .line 1035
    const/16 v4, 0x18

    #@2
    new-array v0, v4, [B

    #@4
    .line 1036
    .local v0, "bs":[B
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    const/4 v4, 0x3

    #@6
    if-ge v1, v4, :cond_1

    #@8
    .line 1038
    aget-wide v2, p0, v1

    #@a
    .line 1039
    .local v2, "x_i":J
    const-wide/16 v4, 0x0

    #@c
    cmp-long v4, v2, v4

    #@e
    if-eqz v4, :cond_0

    #@10
    .line 1041
    rsub-int/lit8 v4, v1, 0x2

    #@12
    shl-int/lit8 v4, v4, 0x3

    #@14
    invoke-static {v2, v3, v0, v4}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@17
    .line 1036
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 1044
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
    .line 1049
    aput v1, p0, v1

    #@3
    .line 1050
    const/4 v0, 0x1

    #@4
    aput v1, p0, v0

    #@6
    .line 1051
    const/4 v0, 0x2

    #@7
    aput v1, p0, v0

    #@9
    .line 1052
    const/4 v0, 0x3

    #@a
    aput v1, p0, v0

    #@c
    .line 1053
    const/4 v0, 0x4

    #@d
    aput v1, p0, v0

    #@f
    .line 1054
    const/4 v0, 0x5

    #@10
    aput v1, p0, v0

    #@12
    .line 1047
    return-void
.end method
