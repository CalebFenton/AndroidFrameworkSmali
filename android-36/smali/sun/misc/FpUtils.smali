.class public Lsun/misc/FpUtils;
.super Ljava/lang/Object;
.source "FpUtils.java"


# static fields
.field static final synthetic greylist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 41
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist copySign(DD)D
    .registers 6
    .param p0, "magnitude"    # D
    .param p2, "sign"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 807
    invoke-static {p0, p1, p2, p3}, Ljava/lang/StrictMath;->copySign(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist copySign(FF)F
    .registers 3
    .param p0, "magnitude"    # F
    .param p1, "sign"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 825
    invoke-static {p0, p1}, Ljava/lang/StrictMath;->copySign(FF)F

    move-result v0

    return v0
.end method

.method public static blacklist getExponent(D)I
    .registers 3
    .param p0, "d"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 140
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    return v0
.end method

.method public static blacklist getExponent(F)I
    .registers 2
    .param p0, "f"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 149
    invoke-static {p0}, Ljava/lang/Math;->getExponent(F)I

    move-result v0

    return v0
.end method

.method public static blacklist ilogb(D)I
    .registers 7
    .param p0, "d"    # D

    .line 342
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->getExponent(D)I

    move-result v0

    .line 344
    .local v0, "exponent":I
    sparse-switch v0, :sswitch_data_3a

    .line 387
    goto :goto_38

    .line 346
    :sswitch_8
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 347
    const/high16 v1, 0x40000000    # 2.0f

    return v1

    .line 349
    :cond_11
    const/high16 v1, 0x10000000

    return v1

    .line 352
    :sswitch_14
    const-wide/16 v1, 0x0

    cmpl-double v1, p0, v1

    if-nez v1, :cond_1d

    .line 353
    const/high16 v1, -0x10000000

    return v1

    .line 356
    :cond_1d
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    .line 367
    .local v1, "transducer":J
    const-wide v3, 0xfffffffffffffL

    and-long/2addr v1, v3

    .line 368
    nop

    .line 374
    :goto_28
    const-wide/high16 v3, 0x10000000000000L

    cmp-long v3, v1, v3

    if-gez v3, :cond_34

    .line 376
    const-wide/16 v3, 0x2

    mul-long/2addr v1, v3

    .line 377
    add-int/lit8 v0, v0, -0x1

    goto :goto_28

    .line 379
    :cond_34
    add-int/lit8 v0, v0, 0x1

    .line 380
    nop

    .line 383
    return v0

    .line 389
    .end local v1    # "transducer":J
    :goto_38
    return v0

    nop

    :sswitch_data_3a
    .sparse-switch
        -0x3ff -> :sswitch_14
        0x400 -> :sswitch_8
    .end sparse-switch
.end method

.method public static blacklist ilogb(F)I
    .registers 4
    .param p0, "f"    # F

    .line 412
    invoke-static {p0}, Lsun/misc/FpUtils;->getExponent(F)I

    move-result v0

    .line 414
    .local v0, "exponent":I
    sparse-switch v0, :sswitch_data_34

    .line 457
    goto :goto_32

    .line 416
    :sswitch_8
    invoke-static {p0}, Lsun/misc/FpUtils;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 417
    const/high16 v1, 0x40000000    # 2.0f

    return v1

    .line 419
    :cond_11
    const/high16 v1, 0x10000000

    return v1

    .line 422
    :sswitch_14
    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-nez v1, :cond_1c

    .line 423
    const/high16 v1, -0x10000000

    return v1

    .line 426
    :cond_1c
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 437
    .local v1, "transducer":I
    const v2, 0x7fffff

    and-int/2addr v1, v2

    .line 438
    nop

    .line 444
    :goto_25
    const/high16 v2, 0x800000

    if-ge v1, v2, :cond_2e

    .line 446
    mul-int/lit8 v1, v1, 0x2

    .line 447
    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    .line 449
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    .line 450
    nop

    .line 453
    return v0

    .line 459
    .end local v1    # "transducer":I
    :goto_32
    return v0

    nop

    :sswitch_data_34
    .sparse-switch
        -0x7f -> :sswitch_14
        0x80 -> :sswitch_8
    .end sparse-switch
.end method

.method public static blacklist isFinite(D)Z
    .registers 3
    .param p0, "d"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 209
    invoke-static {p0, p1}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    return v0
.end method

.method public static blacklist isFinite(F)Z
    .registers 2
    .param p0, "f"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    invoke-static {p0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    return v0
.end method

.method public static blacklist isInfinite(D)Z
    .registers 3
    .param p0, "d"    # D

    .line 240
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    return v0
.end method

.method public static blacklist isInfinite(F)Z
    .registers 2
    .param p0, "f"    # F

    .line 256
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    return v0
.end method

.method public static blacklist isNaN(D)Z
    .registers 3
    .param p0, "d"    # D

    .line 272
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    return v0
.end method

.method public static blacklist isNaN(F)Z
    .registers 2
    .param p0, "f"    # F

    .line 288
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    return v0
.end method

.method public static blacklist isUnordered(DD)Z
    .registers 5
    .param p0, "arg1"    # D
    .param p2, "arg2"    # D

    .line 304
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p2, p3}, Lsun/misc/FpUtils;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static blacklist isUnordered(FF)Z
    .registers 3
    .param p0, "arg1"    # F
    .param p1, "arg2"    # F

    .line 320
    invoke-static {p0}, Lsun/misc/FpUtils;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p1}, Lsun/misc/FpUtils;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static blacklist nextAfter(DD)D
    .registers 6
    .param p0, "start"    # D
    .param p2, "direction"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 618
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->nextAfter(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist nextAfter(FD)F
    .registers 4
    .param p0, "start"    # F
    .param p1, "direction"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 664
    invoke-static {p0, p1, p2}, Ljava/lang/Math;->nextAfter(FD)F

    move-result v0

    return v0
.end method

.method public static blacklist nextDown(D)D
    .registers 4
    .param p0, "d"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 757
    invoke-static {p0, p1}, Ljava/lang/Math;->nextDown(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist nextDown(F)D
    .registers 3
    .param p0, "f"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 788
    invoke-static {p0}, Ljava/lang/Math;->nextDown(F)F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public static blacklist nextUp(D)D
    .registers 4
    .param p0, "d"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 695
    invoke-static {p0, p1}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist nextUp(F)F
    .registers 2
    .param p0, "f"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 726
    invoke-static {p0}, Ljava/lang/Math;->nextUp(F)F

    move-result v0

    return v0
.end method

.method public static greylist rawCopySign(DD)D
    .registers 6
    .param p0, "magnitude"    # D
    .param p2, "sign"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 171
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist rawCopySign(FF)F
    .registers 3
    .param p0, "magnitude"    # F
    .param p1, "sign"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 192
    invoke-static {p0, p1}, Ljava/lang/Math;->copySign(FF)F

    move-result v0

    return v0
.end method

.method public static blacklist scalb(DI)D
    .registers 5
    .param p0, "d"    # D
    .param p2, "scale_factor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 534
    invoke-static {p0, p1, p2}, Ljava/lang/Math;->scalb(DI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist scalb(FI)F
    .registers 3
    .param p0, "f"    # F
    .param p1, "scale_factor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 572
    invoke-static {p0, p1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    return v0
.end method

.method public static blacklist signum(D)D
    .registers 4
    .param p0, "d"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 906
    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist signum(F)F
    .registers 2
    .param p0, "f"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 929
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    return v0
.end method

.method public static blacklist ulp(D)D
    .registers 4
    .param p0, "d"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 854
    invoke-static {p0, p1}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist ulp(F)F
    .registers 2
    .param p0, "f"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 883
    invoke-static {p0}, Ljava/lang/Math;->ulp(F)F

    move-result v0

    return v0
.end method
