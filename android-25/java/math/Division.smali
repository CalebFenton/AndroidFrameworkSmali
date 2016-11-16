.class Ljava/math/Division;
.super Ljava/lang/Object;
.source "Division.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static divideArrayByInt([I[III)I
    .locals 22
    .param p0, "quotient"    # [I
    .param p1, "dividend"    # [I
    .param p2, "dividendLength"    # I
    .param p3, "divisor"    # I

    #@0
    .prologue
    .line 52
    const-wide/16 v12, 0x0

    #@2
    .line 53
    .local v12, "rem":J
    move/from16 v0, p3

    #@4
    int-to-long v0, v0

    #@5
    move-wide/from16 v16, v0

    #@7
    const-wide v18, 0xffffffffL

    #@c
    and-long v4, v16, v18

    #@e
    .line 55
    .local v4, "bLong":J
    add-int/lit8 v8, p2, -0x1

    #@10
    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_4

    #@12
    .line 56
    const/16 v9, 0x20

    #@14
    shl-long v16, v12, v9

    #@16
    aget v9, p1, v8

    #@18
    int-to-long v0, v9

    #@19
    move-wide/from16 v18, v0

    #@1b
    const-wide v20, 0xffffffffL

    #@20
    and-long v18, v18, v20

    #@22
    or-long v14, v16, v18

    #@24
    .line 58
    .local v14, "temp":J
    const-wide/16 v16, 0x0

    #@26
    cmp-long v9, v14, v16

    #@28
    if-ltz v9, :cond_1

    #@2a
    .line 59
    div-long v10, v14, v4

    #@2c
    .line 60
    .local v10, "quot":J
    rem-long v12, v14, v4

    #@2e
    .line 87
    :cond_0
    :goto_1
    const-wide v16, 0xffffffffL

    #@33
    and-long v16, v16, v10

    #@35
    move-wide/from16 v0, v16

    #@37
    long-to-int v9, v0

    #@38
    aput v9, p0, v8

    #@3a
    .line 55
    add-int/lit8 v8, v8, -0x1

    #@3c
    goto :goto_0

    #@3d
    .line 66
    .end local v10    # "quot":J
    :cond_1
    const/4 v9, 0x1

    #@3e
    ushr-long v2, v14, v9

    #@40
    .line 67
    .local v2, "aPos":J
    ushr-int/lit8 v9, p3, 0x1

    #@42
    int-to-long v6, v9

    #@43
    .line 68
    .local v6, "bPos":J
    div-long v10, v2, v6

    #@45
    .line 69
    .restart local v10    # "quot":J
    rem-long v12, v2, v6

    #@47
    .line 71
    const/4 v9, 0x1

    #@48
    shl-long v16, v12, v9

    #@4a
    const-wide/16 v18, 0x1

    #@4c
    and-long v18, v18, v14

    #@4e
    add-long v12, v16, v18

    #@50
    .line 72
    and-int/lit8 v9, p3, 0x1

    #@52
    if-eqz v9, :cond_0

    #@54
    .line 74
    cmp-long v9, v10, v12

    #@56
    if-gtz v9, :cond_2

    #@58
    .line 75
    sub-long/2addr v12, v10

    #@59
    goto :goto_1

    #@5a
    .line 77
    :cond_2
    sub-long v16, v10, v12

    #@5c
    cmp-long v9, v16, v4

    #@5e
    if-gtz v9, :cond_3

    #@60
    .line 78
    sub-long v16, v4, v10

    #@62
    add-long v12, v12, v16

    #@64
    .line 79
    const-wide/16 v16, 0x1

    #@66
    sub-long v10, v10, v16

    #@68
    goto :goto_1

    #@69
    .line 81
    :cond_3
    const/4 v9, 0x1

    #@6a
    shl-long v16, v4, v9

    #@6c
    sub-long v16, v16, v10

    #@6e
    add-long v12, v12, v16

    #@70
    .line 82
    const-wide/16 v16, 0x2

    #@72
    sub-long v10, v10, v16

    #@74
    goto :goto_1

    #@75
    .line 89
    .end local v2    # "aPos":J
    .end local v6    # "bPos":J
    .end local v10    # "quot":J
    .end local v14    # "temp":J
    :cond_4
    long-to-int v9, v12

    #@76
    return v9
.end method
