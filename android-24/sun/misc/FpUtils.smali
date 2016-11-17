.class public Lsun/misc/FpUtils;
.super Ljava/lang/Object;
.source "FpUtils.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static twoToTheDoubleScaleDown:D

.field static twoToTheDoubleScaleUp:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const-class v0, Lsun/misc/FpUtils;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    #@b
    .line 129
    const/16 v0, 0x200

    #@d
    invoke-static {v0}, Lsun/misc/FpUtils;->powerOfTwoD(I)D

    #@10
    move-result-wide v0

    #@11
    sput-wide v0, Lsun/misc/FpUtils;->twoToTheDoubleScaleUp:D

    #@13
    .line 130
    const/16 v0, -0x200

    #@15
    invoke-static {v0}, Lsun/misc/FpUtils;->powerOfTwoD(I)D

    #@18
    move-result-wide v0

    #@19
    sput-wide v0, Lsun/misc/FpUtils;->twoToTheDoubleScaleDown:D

    #@1b
    .line 41
    return-void

    #@1c
    :cond_0
    const/4 v0, 0x1

    #@1d
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static copySign(DD)D
    .locals 2
    .param p0, "magnitude"    # D
    .param p2, "sign"    # D

    #@0
    .prologue
    .line 1052
    invoke-static {p2, p3}, Lsun/misc/FpUtils;->isNaN(D)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    #@8
    .end local p2    # "sign":D
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lsun/misc/FpUtils;->rawCopySign(DD)D

    #@b
    move-result-wide v0

    #@c
    return-wide v0
.end method

.method public static copySign(FF)F
    .locals 1
    .param p0, "magnitude"    # F
    .param p1, "sign"    # F

    #@0
    .prologue
    .line 1068
    invoke-static {p1}, Lsun/misc/FpUtils;->isNaN(F)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/high16 p1, 0x3f800000    # 1.0f

    #@8
    .end local p1    # "sign":F
    :cond_0
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->rawCopySign(FF)F

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public static getExponent(D)I
    .locals 4
    .param p0, "d"    # D

    #@0
    .prologue
    .line 147
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@3
    move-result-wide v0

    #@4
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@6
    and-long/2addr v0, v2

    #@7
    .line 148
    const/16 v2, 0x34

    #@9
    .line 147
    shr-long/2addr v0, v2

    #@a
    .line 148
    const-wide/16 v2, 0x3ff

    #@c
    .line 147
    sub-long/2addr v0, v2

    #@d
    long-to-int v0, v0

    #@e
    return v0
.end method

.method public static getExponent(F)I
    .locals 2
    .param p0, "f"    # F

    #@0
    .prologue
    .line 160
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@3
    move-result v0

    #@4
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    #@6
    and-int/2addr v0, v1

    #@7
    shr-int/lit8 v0, v0, 0x17

    #@9
    add-int/lit8 v0, v0, -0x7f

    #@b
    return v0
.end method

.method public static ilogb(D)I
    .locals 10
    .param p0, "d"    # D

    #@0
    .prologue
    const/16 v8, -0x3fe

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    .line 373
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->getExponent(D)I

    #@7
    move-result v0

    #@8
    .line 375
    .local v0, "exponent":I
    sparse-switch v0, :sswitch_data_0

    #@b
    .line 418
    sget-boolean v5, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    #@d
    if-nez v5, :cond_9

    #@f
    if-lt v0, v8, :cond_8

    #@11
    .line 419
    const/16 v5, 0x3ff

    #@13
    if-gt v0, v5, :cond_7

    #@15
    .line 418
    :goto_0
    if-nez v1, :cond_9

    #@17
    new-instance v1, Ljava/lang/AssertionError;

    #@19
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@1c
    throw v1

    #@1d
    .line 377
    :sswitch_0
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->isNaN(D)Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_0

    #@23
    .line 378
    const/high16 v1, 0x40000000    # 2.0f

    #@25
    return v1

    #@26
    .line 380
    :cond_0
    const/high16 v1, 0x10000000

    #@28
    return v1

    #@29
    .line 383
    :sswitch_1
    const-wide/16 v6, 0x0

    #@2b
    cmpl-double v5, p0, v6

    #@2d
    if-nez v5, :cond_1

    #@2f
    .line 384
    const/high16 v1, -0x10000000

    #@31
    return v1

    #@32
    .line 387
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@35
    move-result-wide v2

    #@36
    .line 398
    .local v2, "transducer":J
    const-wide v6, 0xfffffffffffffL

    #@3b
    and-long/2addr v2, v6

    #@3c
    .line 399
    sget-boolean v5, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    #@3e
    if-nez v5, :cond_3

    #@40
    const-wide/16 v6, 0x0

    #@42
    cmp-long v5, v2, v6

    #@44
    if-eqz v5, :cond_2

    #@46
    move v5, v1

    #@47
    :goto_1
    if-nez v5, :cond_3

    #@49
    new-instance v1, Ljava/lang/AssertionError;

    #@4b
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@4e
    throw v1

    #@4f
    :cond_2
    move v5, v4

    #@50
    goto :goto_1

    #@51
    .line 406
    :cond_3
    :goto_2
    const-wide/high16 v6, 0x10000000000000L

    #@53
    .line 405
    cmp-long v5, v2, v6

    #@55
    if-gez v5, :cond_4

    #@57
    .line 407
    const-wide/16 v6, 0x2

    #@59
    mul-long/2addr v2, v6

    #@5a
    .line 408
    add-int/lit8 v0, v0, -0x1

    #@5c
    goto :goto_2

    #@5d
    .line 410
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@5f
    .line 411
    sget-boolean v5, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    #@61
    if-nez v5, :cond_6

    #@63
    .line 412
    const/16 v5, -0x432

    #@65
    .line 411
    if-lt v0, v5, :cond_5

    #@67
    .line 413
    if-ge v0, v8, :cond_5

    #@69
    move v4, v1

    #@6a
    .line 411
    :cond_5
    if-nez v4, :cond_6

    #@6c
    new-instance v1, Ljava/lang/AssertionError;

    #@6e
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@71
    throw v1

    #@72
    .line 414
    :cond_6
    return v0

    #@73
    .end local v2    # "transducer":J
    :cond_7
    move v1, v4

    #@74
    .line 419
    goto :goto_0

    #@75
    :cond_8
    move v1, v4

    #@76
    .line 418
    goto :goto_0

    #@77
    .line 420
    :cond_9
    return v0

    #@78
    .line 375
    :sswitch_data_0
    .sparse-switch
        -0x3ff -> :sswitch_1
        0x400 -> :sswitch_0
    .end sparse-switch
.end method

.method public static ilogb(F)I
    .locals 6
    .param p0, "f"    # F

    #@0
    .prologue
    const/16 v5, -0x7e

    #@2
    const/4 v2, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 443
    invoke-static {p0}, Lsun/misc/FpUtils;->getExponent(F)I

    #@7
    move-result v0

    #@8
    .line 445
    .local v0, "exponent":I
    sparse-switch v0, :sswitch_data_0

    #@b
    .line 488
    sget-boolean v4, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    #@d
    if-nez v4, :cond_9

    #@f
    if-lt v0, v5, :cond_8

    #@11
    .line 489
    const/16 v4, 0x7f

    #@13
    if-gt v0, v4, :cond_7

    #@15
    .line 488
    :goto_0
    if-nez v2, :cond_9

    #@17
    new-instance v2, Ljava/lang/AssertionError;

    #@19
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@1c
    throw v2

    #@1d
    .line 447
    :sswitch_0
    invoke-static {p0}, Lsun/misc/FpUtils;->isNaN(F)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_0

    #@23
    .line 448
    const/high16 v2, 0x40000000    # 2.0f

    #@25
    return v2

    #@26
    .line 450
    :cond_0
    const/high16 v2, 0x10000000

    #@28
    return v2

    #@29
    .line 453
    :sswitch_1
    const/4 v4, 0x0

    #@2a
    cmpl-float v4, p0, v4

    #@2c
    if-nez v4, :cond_1

    #@2e
    .line 454
    const/high16 v2, -0x10000000

    #@30
    return v2

    #@31
    .line 457
    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@34
    move-result v1

    #@35
    .line 468
    .local v1, "transducer":I
    const v4, 0x7fffff

    #@38
    and-int/2addr v1, v4

    #@39
    .line 469
    sget-boolean v4, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    #@3b
    if-nez v4, :cond_3

    #@3d
    if-eqz v1, :cond_2

    #@3f
    move v4, v2

    #@40
    :goto_1
    if-nez v4, :cond_3

    #@42
    new-instance v2, Ljava/lang/AssertionError;

    #@44
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@47
    throw v2

    #@48
    :cond_2
    move v4, v3

    #@49
    goto :goto_1

    #@4a
    .line 476
    :cond_3
    :goto_2
    const/high16 v4, 0x800000

    #@4c
    .line 475
    if-ge v1, v4, :cond_4

    #@4e
    .line 477
    mul-int/lit8 v1, v1, 0x2

    #@50
    .line 478
    add-int/lit8 v0, v0, -0x1

    #@52
    goto :goto_2

    #@53
    .line 480
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@55
    .line 481
    sget-boolean v4, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    #@57
    if-nez v4, :cond_6

    #@59
    .line 482
    const/16 v4, -0x95

    #@5b
    .line 481
    if-lt v0, v4, :cond_5

    #@5d
    .line 483
    if-ge v0, v5, :cond_5

    #@5f
    move v3, v2

    #@60
    .line 481
    :cond_5
    if-nez v3, :cond_6

    #@62
    new-instance v2, Ljava/lang/AssertionError;

    #@64
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@67
    throw v2

    #@68
    .line 484
    :cond_6
    return v0

    #@69
    .end local v1    # "transducer":I
    :cond_7
    move v2, v3

    #@6a
    .line 489
    goto :goto_0

    #@6b
    :cond_8
    move v2, v3

    #@6c
    .line 488
    goto :goto_0

    #@6d
    .line 490
    :cond_9
    return v0

    #@6e
    .line 445
    :sswitch_data_0
    .sparse-switch
        -0x7f -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isFinite(D)Z
    .locals 4
    .param p0, "d"    # D

    #@0
    .prologue
    .line 242
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    #@3
    move-result-wide v0

    #@4
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    #@9
    cmpg-double v0, v0, v2

    #@b
    if-gtz v0, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public static isFinite(F)Z
    .locals 2
    .param p0, "f"    # F

    #@0
    .prologue
    .line 255
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    #@3
    move-result v0

    #@4
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    #@7
    cmpg-float v0, v0, v1

    #@9
    if-gtz v0, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public static isInfinite(D)Z
    .locals 2
    .param p0, "d"    # D

    #@0
    .prologue
    .line 271
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isInfinite(F)Z
    .locals 1
    .param p0, "f"    # F

    #@0
    .prologue
    .line 287
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isNaN(D)Z
    .locals 2
    .param p0, "d"    # D

    #@0
    .prologue
    .line 303
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isNaN(F)Z
    .locals 1
    .param p0, "f"    # F

    #@0
    .prologue
    .line 319
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static isUnordered(DD)Z
    .locals 2
    .param p0, "arg1"    # D
    .param p2, "arg2"    # D

    #@0
    .prologue
    .line 335
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->isNaN(D)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-static {p2, p3}, Lsun/misc/FpUtils;->isNaN(D)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method public static isUnordered(FF)Z
    .locals 1
    .param p0, "arg1"    # F
    .param p1, "arg2"    # F

    #@0
    .prologue
    .line 351
    invoke-static {p0}, Lsun/misc/FpUtils;->isNaN(F)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-static {p1}, Lsun/misc/FpUtils;->isNaN(F)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method public static nextAfter(DD)D
    .locals 8
    .param p0, "start"    # D
    .param p2, "direction"    # D

    #@0
    .prologue
    const-wide/16 v2, 0x1

    #@2
    const-wide/16 v6, 0x0

    #@4
    .line 747
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->isNaN(D)Z

    #@7
    move-result v4

    #@8
    if-nez v4, :cond_0

    #@a
    invoke-static {p2, p3}, Lsun/misc/FpUtils;->isNaN(D)Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_1

    #@10
    .line 749
    :cond_0
    add-double v2, p0, p2

    #@12
    return-wide v2

    #@13
    .line 750
    :cond_1
    cmpl-double v4, p0, p2

    #@15
    if-nez v4, :cond_2

    #@17
    .line 751
    return-wide p2

    #@18
    .line 755
    :cond_2
    const-wide/16 v4, 0x0

    #@1a
    add-double/2addr v4, p0

    #@1b
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@1e
    move-result-wide v0

    #@1f
    .line 769
    .local v0, "transducer":J
    cmpl-double v4, p2, p0

    #@21
    if-lez v4, :cond_4

    #@23
    .line 770
    cmp-long v4, v0, v6

    #@25
    if-ltz v4, :cond_3

    #@27
    :goto_0
    add-long/2addr v0, v2

    #@28
    .line 790
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@2b
    move-result-wide v2

    #@2c
    return-wide v2

    #@2d
    .line 770
    :cond_3
    const-wide/16 v2, -0x1

    #@2f
    goto :goto_0

    #@30
    .line 772
    :cond_4
    sget-boolean v4, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    #@32
    if-nez v4, :cond_6

    #@34
    cmpg-double v4, p2, p0

    #@36
    if-gez v4, :cond_5

    #@38
    const/4 v4, 0x1

    #@39
    :goto_2
    if-nez v4, :cond_6

    #@3b
    new-instance v2, Ljava/lang/AssertionError;

    #@3d
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@40
    throw v2

    #@41
    :cond_5
    const/4 v4, 0x0

    #@42
    goto :goto_2

    #@43
    .line 773
    :cond_6
    cmp-long v4, v0, v6

    #@45
    if-lez v4, :cond_7

    #@47
    .line 774
    sub-long/2addr v0, v2

    #@48
    goto :goto_1

    #@49
    .line 776
    :cond_7
    cmp-long v4, v0, v6

    #@4b
    if-gez v4, :cond_8

    #@4d
    .line 777
    add-long/2addr v0, v2

    #@4e
    goto :goto_1

    #@4f
    .line 787
    :cond_8
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    #@54
    goto :goto_1
.end method

.method public static nextAfter(FD)F
    .locals 7
    .param p0, "start"    # F
    .param p1, "direction"    # D

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 847
    invoke-static {p0}, Lsun/misc/FpUtils;->isNaN(F)Z

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_0

    #@8
    invoke-static {p1, p2}, Lsun/misc/FpUtils;->isNaN(D)Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_1

    #@e
    .line 849
    :cond_0
    double-to-float v1, p1

    #@f
    add-float/2addr v1, p0

    #@10
    return v1

    #@11
    .line 850
    :cond_1
    float-to-double v4, p0

    #@12
    cmpl-double v3, v4, p1

    #@14
    if-nez v3, :cond_2

    #@16
    .line 851
    double-to-float v1, p1

    #@17
    return v1

    #@18
    .line 855
    :cond_2
    const/4 v3, 0x0

    #@19
    add-float/2addr v3, p0

    #@1a
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@1d
    move-result v0

    #@1e
    .line 869
    .local v0, "transducer":I
    float-to-double v4, p0

    #@1f
    cmpl-double v3, p1, v4

    #@21
    if-lez v3, :cond_4

    #@23
    .line 870
    if-ltz v0, :cond_3

    #@25
    :goto_0
    add-int/2addr v0, v1

    #@26
    .line 890
    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@29
    move-result v1

    #@2a
    return v1

    #@2b
    .line 870
    :cond_3
    const/4 v1, -0x1

    #@2c
    goto :goto_0

    #@2d
    .line 872
    :cond_4
    sget-boolean v3, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    #@2f
    if-nez v3, :cond_6

    #@31
    float-to-double v4, p0

    #@32
    cmpg-double v3, p1, v4

    #@34
    if-gez v3, :cond_5

    #@36
    :goto_2
    if-nez v1, :cond_6

    #@38
    new-instance v1, Ljava/lang/AssertionError;

    #@3a
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@3d
    throw v1

    #@3e
    :cond_5
    move v1, v2

    #@3f
    goto :goto_2

    #@40
    .line 873
    :cond_6
    if-lez v0, :cond_7

    #@42
    .line 874
    add-int/lit8 v0, v0, -0x1

    #@44
    goto :goto_1

    #@45
    .line 876
    :cond_7
    if-gez v0, :cond_8

    #@47
    .line 877
    add-int/lit8 v0, v0, 0x1

    #@49
    goto :goto_1

    #@4a
    .line 887
    :cond_8
    const v0, -0x7fffffff

    #@4d
    goto :goto_1
.end method

.method public static nextDown(D)D
    .locals 6
    .param p0, "d"    # D

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 990
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->isNaN(D)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@a
    cmpl-double v0, p0, v0

    #@c
    if-nez v0, :cond_1

    #@e
    .line 991
    :cond_0
    return-wide p0

    #@f
    .line 993
    :cond_1
    cmpl-double v0, p0, v4

    #@11
    if-nez v0, :cond_2

    #@13
    .line 994
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    #@18
    return-wide v0

    #@19
    .line 996
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@1c
    move-result-wide v2

    #@1d
    .line 997
    cmpl-double v0, p0, v4

    #@1f
    if-lez v0, :cond_3

    #@21
    const-wide/16 v0, -0x1

    #@23
    .line 996
    :goto_0
    add-long/2addr v0, v2

    #@24
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@27
    move-result-wide v0

    #@28
    return-wide v0

    #@29
    .line 997
    :cond_3
    const-wide/16 v0, 0x1

    #@2b
    goto :goto_0
.end method

.method public static nextDown(F)D
    .locals 3
    .param p0, "f"    # F

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1027
    invoke-static {p0}, Lsun/misc/FpUtils;->isNaN(F)Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    #@9
    cmpl-float v0, p0, v0

    #@b
    if-nez v0, :cond_1

    #@d
    .line 1028
    :cond_0
    float-to-double v0, p0

    #@e
    return-wide v0

    #@f
    .line 1030
    :cond_1
    cmpl-float v0, p0, v2

    #@11
    if-nez v0, :cond_2

    #@13
    .line 1031
    const-wide/high16 v0, -0x4960000000000000L    # -1.401298464324817E-45

    #@15
    return-wide v0

    #@16
    .line 1033
    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@19
    move-result v1

    #@1a
    .line 1034
    cmpl-float v0, p0, v2

    #@1c
    if-lez v0, :cond_3

    #@1e
    const/4 v0, -0x1

    #@1f
    .line 1033
    :goto_0
    add-int/2addr v0, v1

    #@20
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@23
    move-result v0

    #@24
    float-to-double v0, v0

    #@25
    return-wide v0

    #@26
    .line 1034
    :cond_3
    const/4 v0, 0x1

    #@27
    goto :goto_0
.end method

.method public static nextUp(D)D
    .locals 6
    .param p0, "d"    # D

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 920
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->isNaN(D)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@a
    cmpl-double v0, p0, v0

    #@c
    if-nez v0, :cond_1

    #@e
    .line 921
    :cond_0
    return-wide p0

    #@f
    .line 923
    :cond_1
    add-double/2addr p0, v4

    #@10
    .line 924
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@13
    move-result-wide v2

    #@14
    .line 925
    cmpl-double v0, p0, v4

    #@16
    if-ltz v0, :cond_2

    #@18
    const-wide/16 v0, 0x1

    #@1a
    .line 924
    :goto_0
    add-long/2addr v0, v2

    #@1b
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@1e
    move-result-wide v0

    #@1f
    return-wide v0

    #@20
    .line 925
    :cond_2
    const-wide/16 v0, -0x1

    #@22
    goto :goto_0
.end method

.method public static nextUp(F)F
    .locals 3
    .param p0, "f"    # F

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 955
    invoke-static {p0}, Lsun/misc/FpUtils;->isNaN(F)Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    #@9
    cmpl-float v0, p0, v0

    #@b
    if-nez v0, :cond_1

    #@d
    .line 956
    :cond_0
    return p0

    #@e
    .line 958
    :cond_1
    add-float/2addr p0, v2

    #@f
    .line 959
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@12
    move-result v1

    #@13
    .line 960
    cmpl-float v0, p0, v2

    #@15
    if-ltz v0, :cond_2

    #@17
    const/4 v0, 0x1

    #@18
    .line 959
    :goto_0
    add-int/2addr v0, v1

    #@19
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@1c
    move-result v0

    #@1d
    return v0

    #@1e
    .line 960
    :cond_2
    const/4 v0, -0x1

    #@1f
    goto :goto_0
.end method

.method static powerOfTwoD(I)D
    .locals 4
    .param p0, "n"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 168
    sget-boolean v1, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    #@3
    if-nez v1, :cond_1

    #@5
    const/16 v1, -0x3fe

    #@7
    if-lt p0, v1, :cond_0

    #@9
    const/16 v1, 0x3ff

    #@b
    if-gt p0, v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    if-nez v0, :cond_1

    #@10
    new-instance v0, Ljava/lang/AssertionError;

    #@12
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@15
    throw v0

    #@16
    .line 169
    :cond_1
    int-to-long v0, p0

    #@17
    const-wide/16 v2, 0x3ff

    #@19
    add-long/2addr v0, v2

    #@1a
    .line 170
    const/16 v2, 0x34

    #@1c
    .line 169
    shl-long/2addr v0, v2

    #@1d
    .line 171
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@1f
    .line 169
    and-long/2addr v0, v2

    #@20
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@23
    move-result-wide v0

    #@24
    return-wide v0
.end method

.method static powerOfTwoF(I)F
    .locals 2
    .param p0, "n"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 178
    sget-boolean v1, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    #@3
    if-nez v1, :cond_1

    #@5
    const/16 v1, -0x7e

    #@7
    if-lt p0, v1, :cond_0

    #@9
    const/16 v1, 0x7f

    #@b
    if-gt p0, v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    if-nez v0, :cond_1

    #@10
    new-instance v0, Ljava/lang/AssertionError;

    #@12
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@15
    throw v0

    #@16
    .line 179
    :cond_1
    add-int/lit8 v0, p0, 0x7f

    #@18
    shl-int/lit8 v0, v0, 0x17

    #@1a
    .line 181
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    #@1c
    .line 179
    and-int/2addr v0, v1

    #@1d
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@20
    move-result v0

    #@21
    return v0
.end method

.method public static rawCopySign(DD)D
    .locals 6
    .param p0, "magnitude"    # D
    .param p2, "sign"    # D

    #@0
    .prologue
    .line 200
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@3
    move-result-wide v0

    #@4
    .line 201
    const-wide/high16 v2, -0x8000000000000000L

    #@6
    .line 200
    and-long/2addr v0, v2

    #@7
    .line 202
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@a
    move-result-wide v2

    #@b
    .line 203
    const-wide v4, 0x7fffffffffffffffL

    #@10
    .line 202
    and-long/2addr v2, v4

    #@11
    .line 200
    or-long/2addr v0, v2

    #@12
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@15
    move-result-wide v0

    #@16
    return-wide v0
.end method

.method public static rawCopySign(FF)F
    .locals 3
    .param p0, "magnitude"    # F
    .param p1, "sign"    # F

    #@0
    .prologue
    .line 223
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@3
    move-result v0

    #@4
    .line 224
    const/high16 v1, -0x80000000

    #@6
    .line 223
    and-int/2addr v0, v1

    #@7
    .line 225
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@a
    move-result v1

    #@b
    .line 226
    const v2, 0x7fffffff

    #@e
    .line 225
    and-int/2addr v1, v2

    #@f
    .line 223
    or-int/2addr v0, v1

    #@10
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@13
    move-result v0

    #@14
    return v0
.end method

.method public static scalb(DI)D
    .locals 8
    .param p0, "d"    # D
    .param p2, "scale_factor"    # I

    #@0
    .prologue
    .line 605
    const/16 v0, 0x833

    #@2
    .line 607
    .local v0, "MAX_SCALE":I
    const/4 v1, 0x0

    #@3
    .line 608
    .local v1, "exp_adjust":I
    const/4 v4, 0x0

    #@4
    .line 609
    .local v4, "scale_increment":I
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    #@6
    .line 613
    .local v2, "exp_delta":D
    if-gez p2, :cond_0

    #@8
    .line 614
    const/16 v6, -0x833

    #@a
    invoke-static {p2, v6}, Ljava/lang/Math;->max(II)I

    #@d
    move-result p2

    #@e
    .line 615
    const/16 v4, -0x200

    #@10
    .line 616
    sget-wide v2, Lsun/misc/FpUtils;->twoToTheDoubleScaleDown:D

    #@12
    .line 626
    :goto_0
    shr-int/lit8 v6, p2, 0x8

    #@14
    ushr-int/lit8 v5, v6, 0x17

    #@16
    .line 627
    .local v5, "t":I
    add-int v6, p2, v5

    #@18
    and-int/lit16 v6, v6, 0x1ff

    #@1a
    sub-int v1, v6, v5

    #@1c
    .line 629
    invoke-static {v1}, Lsun/misc/FpUtils;->powerOfTwoD(I)D

    #@1f
    move-result-wide v6

    #@20
    mul-double/2addr p0, v6

    #@21
    .line 630
    sub-int/2addr p2, v1

    #@22
    .line 632
    :goto_1
    if-eqz p2, :cond_1

    #@24
    .line 633
    mul-double/2addr p0, v2

    #@25
    .line 634
    sub-int/2addr p2, v4

    #@26
    goto :goto_1

    #@27
    .line 619
    .end local v5    # "t":I
    :cond_0
    const/16 v6, 0x833

    #@29
    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    #@2c
    move-result p2

    #@2d
    .line 620
    const/16 v4, 0x200

    #@2f
    .line 621
    sget-wide v2, Lsun/misc/FpUtils;->twoToTheDoubleScaleUp:D

    #@31
    goto :goto_0

    #@32
    .line 636
    .restart local v5    # "t":I
    :cond_1
    return-wide p0
.end method

.method public static scalb(FI)F
    .locals 6
    .param p0, "f"    # F
    .param p1, "scale_factor"    # I

    #@0
    .prologue
    .line 676
    const/16 v0, 0x116

    #@2
    .line 680
    .local v0, "MAX_SCALE":I
    const/16 v1, 0x116

    #@4
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    #@7
    move-result v1

    #@8
    const/16 v2, -0x116

    #@a
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@d
    move-result p1

    #@e
    .line 691
    float-to-double v2, p0

    #@f
    invoke-static {p1}, Lsun/misc/FpUtils;->powerOfTwoD(I)D

    #@12
    move-result-wide v4

    #@13
    mul-double/2addr v2, v4

    #@14
    double-to-float v1, v2

    #@15
    return v1
.end method

.method public static signum(D)D
    .locals 2
    .param p0, "d"    # D

    #@0
    .prologue
    .line 1191
    const-wide/16 v0, 0x0

    #@2
    cmpl-double v0, p0, v0

    #@4
    if-eqz v0, :cond_0

    #@6
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->isNaN(D)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .end local p0    # "d":D
    :cond_0
    :goto_0
    return-wide p0

    #@d
    .restart local p0    # "d":D
    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    #@f
    invoke-static {v0, v1, p0, p1}, Lsun/misc/FpUtils;->copySign(DD)D

    #@12
    move-result-wide p0

    #@13
    goto :goto_0
.end method

.method public static signum(F)F
    .locals 1
    .param p0, "f"    # F

    #@0
    .prologue
    .line 1212
    const/4 v0, 0x0

    #@1
    cmpl-float v0, p0, v0

    #@3
    if-eqz v0, :cond_0

    #@5
    invoke-static {p0}, Lsun/misc/FpUtils;->isNaN(F)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_1

    #@b
    .end local p0    # "f":F
    :cond_0
    :goto_0
    return p0

    #@c
    .restart local p0    # "f":F
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    #@e
    invoke-static {v0, p0}, Lsun/misc/FpUtils;->copySign(FF)F

    #@11
    move-result p0

    #@12
    goto :goto_0
.end method

.method public static ulp(D)D
    .locals 4
    .param p0, "d"    # D

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/16 v3, -0x3fe

    #@3
    .line 1095
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->getExponent(D)I

    #@6
    move-result v0

    #@7
    .line 1097
    .local v0, "exp":I
    sparse-switch v0, :sswitch_data_0

    #@a
    .line 1105
    sget-boolean v2, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    #@c
    if-nez v2, :cond_1

    #@e
    const/16 v2, 0x3ff

    #@10
    if-gt v0, v2, :cond_0

    #@12
    if-lt v0, v3, :cond_0

    #@14
    const/4 v1, 0x1

    #@15
    :cond_0
    if-nez v1, :cond_1

    #@17
    new-instance v1, Ljava/lang/AssertionError;

    #@19
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@1c
    throw v1

    #@1d
    .line 1099
    :sswitch_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    #@20
    move-result-wide v2

    #@21
    return-wide v2

    #@22
    .line 1102
    :sswitch_1
    const-wide/16 v2, 0x1

    #@24
    return-wide v2

    #@25
    .line 1108
    :cond_1
    add-int/lit8 v0, v0, -0x34

    #@27
    .line 1109
    if-lt v0, v3, :cond_2

    #@29
    .line 1110
    invoke-static {v0}, Lsun/misc/FpUtils;->powerOfTwoD(I)D

    #@2c
    move-result-wide v2

    #@2d
    return-wide v2

    #@2e
    .line 1117
    :cond_2
    add-int/lit16 v1, v0, 0x432

    #@30
    .line 1116
    const-wide/16 v2, 0x1

    #@32
    shl-long/2addr v2, v1

    #@33
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@36
    move-result-wide v2

    #@37
    return-wide v2

    #@38
    .line 1097
    :sswitch_data_0
    .sparse-switch
        -0x3ff -> :sswitch_1
        0x400 -> :sswitch_0
    .end sparse-switch
.end method

.method public static ulp(F)F
    .locals 5
    .param p0, "f"    # F

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/16 v4, -0x7e

    #@4
    .line 1146
    invoke-static {p0}, Lsun/misc/FpUtils;->getExponent(F)I

    #@7
    move-result v0

    #@8
    .line 1148
    .local v0, "exp":I
    sparse-switch v0, :sswitch_data_0

    #@b
    .line 1156
    sget-boolean v3, Lsun/misc/FpUtils;->-assertionsDisabled:Z

    #@d
    if-nez v3, :cond_1

    #@f
    const/16 v3, 0x7f

    #@11
    if-gt v0, v3, :cond_0

    #@13
    if-lt v0, v4, :cond_0

    #@15
    move v1, v2

    #@16
    :cond_0
    if-nez v1, :cond_1

    #@18
    new-instance v1, Ljava/lang/AssertionError;

    #@1a
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@1d
    throw v1

    #@1e
    .line 1150
    :sswitch_0
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    #@21
    move-result v1

    #@22
    return v1

    #@23
    .line 1153
    :sswitch_1
    const/4 v1, 0x1

    #@24
    return v1

    #@25
    .line 1159
    :cond_1
    add-int/lit8 v0, v0, -0x17

    #@27
    .line 1160
    if-lt v0, v4, :cond_2

    #@29
    .line 1161
    invoke-static {v0}, Lsun/misc/FpUtils;->powerOfTwoF(I)F

    #@2c
    move-result v1

    #@2d
    return v1

    #@2e
    .line 1168
    :cond_2
    add-int/lit16 v1, v0, 0x95

    #@30
    .line 1167
    shl-int v1, v2, v1

    #@32
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@35
    move-result v1

    #@36
    return v1

    #@37
    .line 1148
    nop

    #@38
    :sswitch_data_0
    .sparse-switch
        -0x7f -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method
