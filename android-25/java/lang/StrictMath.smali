.class public final Ljava/lang/StrictMath;
.super Ljava/lang/Object;
.source "StrictMath.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final E:D = 2.718281828459045

.field public static final PI:D = 3.141592653589793

.field private static negativeZeroDoubleBits:J

.field private static negativeZeroFloatBits:J

.field private static randomNumberGenerator:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const-class v0, Ljava/lang/StrictMath;

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
    sput-boolean v0, Ljava/lang/StrictMath;->-assertionsDisabled:Z

    #@b
    .line 1004
    const/high16 v0, -0x80000000

    #@d
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@10
    move-result v0

    #@11
    int-to-long v0, v0

    #@12
    sput-wide v0, Ljava/lang/StrictMath;->negativeZeroFloatBits:J

    #@14
    .line 1005
    const-wide/high16 v0, -0x8000000000000000L

    #@16
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@19
    move-result-wide v0

    #@1a
    sput-wide v0, Ljava/lang/StrictMath;->negativeZeroDoubleBits:J

    #@1c
    .line 65
    return-void

    #@1d
    :cond_0
    const/4 v0, 0x1

    #@1e
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static native IEEEremainder(DD)D
.end method

.method public static abs(D)D
    .locals 4
    .param p0, "a"    # D

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 972
    cmpg-double v0, p0, v2

    #@4
    if-gtz v0, :cond_0

    #@6
    sub-double p0, v2, p0

    #@8
    .end local p0    # "a":D
    :cond_0
    return-wide p0
.end method

.method public static abs(F)F
    .locals 2
    .param p0, "a"    # F

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 953
    cmpg-float v0, p0, v1

    #@3
    if-gtz v0, :cond_0

    #@5
    sub-float p0, v1, p0

    #@7
    .end local p0    # "a":F
    :cond_0
    return p0
.end method

.method public static abs(I)I
    .locals 0
    .param p0, "a"    # I

    #@0
    .prologue
    .line 917
    if-gez p0, :cond_0

    #@2
    neg-int p0, p0

    #@3
    .end local p0    # "a":I
    :cond_0
    return p0
.end method

.method public static abs(J)J
    .locals 2
    .param p0, "a"    # J

    #@0
    .prologue
    .line 934
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p0, v0

    #@4
    if-gez v0, :cond_0

    #@6
    neg-long p0, p0

    #@7
    .end local p0    # "a":J
    :cond_0
    return-wide p0
.end method

.method public static native acos(D)D
.end method

.method public static addExact(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I

    #@0
    .prologue
    .line 710
    invoke-static {p0, p1}, Ljava/lang/Math;->addExact(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static addExact(JJ)J
    .locals 2
    .param p0, "x"    # J
    .param p2, "y"    # J

    #@0
    .prologue
    .line 725
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->addExact(JJ)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public static native asin(D)D
.end method

.method public static native atan(D)D
.end method

.method public static native atan2(DD)D
.end method

.method public static native cbrt(D)D
.end method

.method public static ceil(D)D
    .locals 8
    .param p0, "a"    # D

    #@0
    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    #@2
    .line 321
    const-wide/high16 v2, -0x8000000000000000L

    #@4
    move-wide v0, p0

    #@5
    move-wide v6, v4

    #@6
    invoke-static/range {v0 .. v7}, Ljava/lang/StrictMath;->floorOrCeil(DDDD)D

    #@9
    move-result-wide v0

    #@a
    return-wide v0
.end method

.method public static copySign(DD)D
    .locals 2
    .param p0, "magnitude"    # D
    .param p2, "sign"    # D

    #@0
    .prologue
    .line 1410
    invoke-static {p0, p1, p2, p3}, Lsun/misc/FpUtils;->copySign(DD)D

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public static copySign(FF)F
    .locals 1
    .param p0, "magnitude"    # F
    .param p1, "sign"    # F

    #@0
    .prologue
    .line 1426
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->copySign(FF)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static native cos(D)D
.end method

.method public static native cosh(D)D
.end method

.method public static native exp(D)D
.end method

.method public static native expm1(D)D
.end method

.method public static floor(D)D
    .locals 8
    .param p0, "a"    # D

    #@0
    .prologue
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    #@2
    .line 340
    const-wide/16 v4, 0x0

    #@4
    move-wide v0, p0

    #@5
    move-wide v6, v2

    #@6
    invoke-static/range {v0 .. v7}, Ljava/lang/StrictMath;->floorOrCeil(DDDD)D

    #@9
    move-result-wide v0

    #@a
    return-wide v0
.end method

.method public static floorDiv(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I

    #@0
    .prologue
    .line 823
    invoke-static {p0, p1}, Ljava/lang/Math;->floorDiv(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static floorDiv(JJ)J
    .locals 2
    .param p0, "x"    # J
    .param p2, "y"    # J

    #@0
    .prologue
    .line 847
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->floorDiv(JJ)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public static floorMod(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I

    #@0
    .prologue
    .line 874
    invoke-static {p0, p1}, Ljava/lang/Math;->floorMod(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static floorMod(JJ)J
    .locals 2
    .param p0, "x"    # J
    .param p2, "y"    # J

    #@0
    .prologue
    .line 900
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->floorMod(JJ)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method private static floorOrCeil(DDDD)D
    .locals 12
    .param p0, "a"    # D
    .param p2, "negativeBoundary"    # D
    .param p4, "positiveBoundary"    # D
    .param p6, "sign"    # D

    #@0
    .prologue
    .line 355
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    #@3
    move-result v2

    #@4
    .line 357
    .local v2, "exponent":I
    if-gez v2, :cond_2

    #@6
    .line 363
    const-wide/16 v8, 0x0

    #@8
    cmpl-double v3, p0, v8

    #@a
    if-nez v3, :cond_0

    #@c
    .end local p0    # "a":D
    :goto_0
    return-wide p0

    #@d
    .line 364
    .restart local p0    # "a":D
    :cond_0
    const-wide/16 v8, 0x0

    #@f
    cmpg-double v3, p0, v8

    #@11
    if-gez v3, :cond_1

    #@13
    move-wide p0, p2

    #@14
    goto :goto_0

    #@15
    :cond_1
    move-wide/from16 p0, p4

    #@17
    goto :goto_0

    #@18
    .line 365
    :cond_2
    const/16 v3, 0x34

    #@1a
    if-lt v2, v3, :cond_3

    #@1c
    .line 369
    return-wide p0

    #@1d
    .line 373
    :cond_3
    sget-boolean v3, Ljava/lang/StrictMath;->-assertionsDisabled:Z

    #@1f
    if-nez v3, :cond_5

    #@21
    if-ltz v2, :cond_4

    #@23
    const/16 v3, 0x33

    #@25
    if-gt v2, v3, :cond_4

    #@27
    const/4 v3, 0x1

    #@28
    :goto_1
    if-nez v3, :cond_5

    #@2a
    new-instance v3, Ljava/lang/AssertionError;

    #@2c
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@2f
    throw v3

    #@30
    :cond_4
    const/4 v3, 0x0

    #@31
    goto :goto_1

    #@32
    .line 375
    :cond_5
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@35
    move-result-wide v0

    #@36
    .line 376
    .local v0, "doppel":J
    const-wide v8, 0xfffffffffffffL

    #@3b
    shr-long v4, v8, v2

    #@3d
    .line 378
    .local v4, "mask":J
    and-long v8, v4, v0

    #@3f
    const-wide/16 v10, 0x0

    #@41
    cmp-long v3, v8, v10

    #@43
    if-nez v3, :cond_6

    #@45
    .line 379
    return-wide p0

    #@46
    .line 381
    :cond_6
    not-long v8, v4

    #@47
    and-long/2addr v8, v0

    #@48
    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@4b
    move-result-wide v6

    #@4c
    .line 382
    .local v6, "result":D
    mul-double v8, p6, p0

    #@4e
    const-wide/16 v10, 0x0

    #@50
    cmpl-double v3, v8, v10

    #@52
    if-lez v3, :cond_7

    #@54
    .line 383
    add-double v6, v6, p6

    #@56
    .line 384
    :cond_7
    return-wide v6
.end method

.method public static getExponent(D)I
    .locals 2
    .param p0, "d"    # D

    #@0
    .prologue
    .line 1459
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->getExponent(D)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static getExponent(F)I
    .locals 1
    .param p0, "f"    # F

    #@0
    .prologue
    .line 1442
    invoke-static {p0}, Lsun/misc/FpUtils;->getExponent(F)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static native hypot(DD)D
.end method

.method private static declared-synchronized initRNG()Ljava/util/Random;
    .locals 3

    #@0
    .prologue
    const-class v2, Ljava/lang/StrictMath;

    #@2
    monitor-enter v2

    #@3
    .line 665
    :try_start_0
    sget-object v0, Ljava/lang/StrictMath;->randomNumberGenerator:Ljava/util/Random;

    #@5
    .line 666
    .local v0, "rnd":Ljava/util/Random;
    if-nez v0, :cond_0

    #@7
    new-instance v0, Ljava/util/Random;

    #@9
    .end local v0    # "rnd":Ljava/util/Random;
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    #@c
    sput-object v0, Ljava/lang/StrictMath;->randomNumberGenerator:Ljava/util/Random;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    monitor-exit v2

    #@f
    return-object v0

    #@10
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v2

    #@12
    throw v1
.end method

.method public static native log(D)D
.end method

.method public static native log10(D)D
.end method

.method public static native log1p(D)D
.end method

.method public static max(DD)D
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 1048
    cmpl-double v0, p0, p0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1049
    return-wide p0

    #@7
    .line 1050
    :cond_0
    cmpl-double v0, p0, v2

    #@9
    if-nez v0, :cond_1

    #@b
    .line 1051
    cmpl-double v0, p2, v2

    #@d
    if-nez v0, :cond_1

    #@f
    .line 1052
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@12
    move-result-wide v0

    #@13
    sget-wide v2, Ljava/lang/StrictMath;->negativeZeroDoubleBits:J

    #@15
    cmp-long v0, v0, v2

    #@17
    if-nez v0, :cond_1

    #@19
    .line 1054
    return-wide p2

    #@1a
    .line 1056
    :cond_1
    cmpl-double v0, p0, p2

    #@1c
    if-ltz v0, :cond_2

    #@1e
    .end local p0    # "a":D
    :goto_0
    return-wide p0

    #@1f
    .restart local p0    # "a":D
    :cond_2
    move-wide p0, p2

    #@20
    goto :goto_0
.end method

.method public static max(FF)F
    .locals 4
    .param p0, "a"    # F
    .param p1, "b"    # F

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1022
    cmpl-float v0, p0, p0

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1023
    return p0

    #@6
    .line 1024
    :cond_0
    cmpl-float v0, p0, v1

    #@8
    if-nez v0, :cond_1

    #@a
    .line 1025
    cmpl-float v0, p1, v1

    #@c
    if-nez v0, :cond_1

    #@e
    .line 1026
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@11
    move-result v0

    #@12
    int-to-long v0, v0

    #@13
    sget-wide v2, Ljava/lang/StrictMath;->negativeZeroFloatBits:J

    #@15
    cmp-long v0, v0, v2

    #@17
    if-nez v0, :cond_1

    #@19
    .line 1028
    return p1

    #@1a
    .line 1030
    :cond_1
    cmpl-float v0, p0, p1

    #@1c
    if-ltz v0, :cond_2

    #@1e
    .end local p0    # "a":F
    :goto_0
    return p0

    #@1f
    .restart local p0    # "a":F
    :cond_2
    move p0, p1

    #@20
    goto :goto_0
.end method

.method public static max(II)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I

    #@0
    .prologue
    .line 986
    if-lt p0, p1, :cond_0

    #@2
    .end local p0    # "a":I
    :goto_0
    return p0

    #@3
    .restart local p0    # "a":I
    :cond_0
    move p0, p1

    #@4
    goto :goto_0
.end method

.method public static max(JJ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J

    #@0
    .prologue
    .line 1000
    cmp-long v0, p0, p2

    #@2
    if-ltz v0, :cond_0

    #@4
    .end local p0    # "a":J
    :goto_0
    return-wide p0

    #@5
    .restart local p0    # "a":J
    :cond_0
    move-wide p0, p2

    #@6
    goto :goto_0
.end method

.method public static min(DD)D
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 1128
    cmpl-double v0, p0, p0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1129
    return-wide p0

    #@7
    .line 1130
    :cond_0
    cmpl-double v0, p0, v2

    #@9
    if-nez v0, :cond_1

    #@b
    .line 1131
    cmpl-double v0, p2, v2

    #@d
    if-nez v0, :cond_1

    #@f
    .line 1132
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@12
    move-result-wide v0

    #@13
    sget-wide v2, Ljava/lang/StrictMath;->negativeZeroDoubleBits:J

    #@15
    cmp-long v0, v0, v2

    #@17
    if-nez v0, :cond_1

    #@19
    .line 1134
    return-wide p2

    #@1a
    .line 1136
    :cond_1
    cmpg-double v0, p0, p2

    #@1c
    if-gtz v0, :cond_2

    #@1e
    .end local p0    # "a":D
    :goto_0
    return-wide p0

    #@1f
    .restart local p0    # "a":D
    :cond_2
    move-wide p0, p2

    #@20
    goto :goto_0
.end method

.method public static min(FF)F
    .locals 4
    .param p0, "a"    # F
    .param p1, "b"    # F

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1102
    cmpl-float v0, p0, p0

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1103
    return p0

    #@6
    .line 1104
    :cond_0
    cmpl-float v0, p0, v1

    #@8
    if-nez v0, :cond_1

    #@a
    .line 1105
    cmpl-float v0, p1, v1

    #@c
    if-nez v0, :cond_1

    #@e
    .line 1106
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@11
    move-result v0

    #@12
    int-to-long v0, v0

    #@13
    sget-wide v2, Ljava/lang/StrictMath;->negativeZeroFloatBits:J

    #@15
    cmp-long v0, v0, v2

    #@17
    if-nez v0, :cond_1

    #@19
    .line 1108
    return p1

    #@1a
    .line 1110
    :cond_1
    cmpg-float v0, p0, p1

    #@1c
    if-gtz v0, :cond_2

    #@1e
    .end local p0    # "a":F
    :goto_0
    return p0

    #@1f
    .restart local p0    # "a":F
    :cond_2
    move p0, p1

    #@20
    goto :goto_0
.end method

.method public static min(II)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I

    #@0
    .prologue
    .line 1070
    if-gt p0, p1, :cond_0

    #@2
    .end local p0    # "a":I
    :goto_0
    return p0

    #@3
    .restart local p0    # "a":I
    :cond_0
    move p0, p1

    #@4
    goto :goto_0
.end method

.method public static min(JJ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J

    #@0
    .prologue
    .line 1084
    cmp-long v0, p0, p2

    #@2
    if-gtz v0, :cond_0

    #@4
    .end local p0    # "a":J
    :goto_0
    return-wide p0

    #@5
    .restart local p0    # "a":J
    :cond_0
    move-wide p0, p2

    #@6
    goto :goto_0
.end method

.method public static multiplyExact(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I

    #@0
    .prologue
    .line 770
    invoke-static {p0, p1}, Ljava/lang/Math;->multiplyExact(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static multiplyExact(JJ)J
    .locals 2
    .param p0, "x"    # J
    .param p2, "y"    # J

    #@0
    .prologue
    .line 785
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->multiplyExact(JJ)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public static nextAfter(DD)D
    .locals 2
    .param p0, "start"    # D
    .param p2, "direction"    # D

    #@0
    .prologue
    .line 1502
    invoke-static {p0, p1, p2, p3}, Lsun/misc/FpUtils;->nextAfter(DD)D

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public static nextAfter(FD)F
    .locals 1
    .param p0, "start"    # F
    .param p1, "direction"    # D

    #@0
    .prologue
    .line 1544
    invoke-static {p0, p1, p2}, Lsun/misc/FpUtils;->nextAfter(FD)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static nextDown(D)D
    .locals 2
    .param p0, "d"    # D

    #@0
    .prologue
    .line 1631
    invoke-static {p0, p1}, Ljava/lang/Math;->nextDown(D)D

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public static nextDown(F)F
    .locals 1
    .param p0, "f"    # F

    #@0
    .prologue
    .line 1660
    invoke-static {p0}, Ljava/lang/Math;->nextDown(F)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static nextUp(D)D
    .locals 2
    .param p0, "d"    # D

    #@0
    .prologue
    .line 1573
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->nextUp(D)D

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public static nextUp(F)F
    .locals 1
    .param p0, "f"    # F

    #@0
    .prologue
    .line 1602
    invoke-static {p0}, Lsun/misc/FpUtils;->nextUp(F)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static native pow(DD)D
.end method

.method public static random()D
    .locals 4

    #@0
    .prologue
    .line 693
    sget-object v0, Ljava/lang/StrictMath;->randomNumberGenerator:Ljava/util/Random;

    #@2
    .line 694
    .local v0, "rnd":Ljava/util/Random;
    if-nez v0, :cond_0

    #@4
    invoke-static {}, Ljava/lang/StrictMath;->initRNG()Ljava/util/Random;

    #@7
    move-result-object v0

    #@8
    .line 695
    :cond_0
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    #@b
    move-result-wide v2

    #@c
    return-wide v2
.end method

.method public static rint(D)D
    .locals 6
    .param p0, "a"    # D

    #@0
    .prologue
    const-wide/high16 v4, 0x4330000000000000L    # 4.503599627370496E15

    #@2
    .line 431
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@4
    invoke-static {v2, v3, p0, p1}, Lsun/misc/FpUtils;->rawCopySign(DD)D

    #@7
    move-result-wide v0

    #@8
    .line 432
    .local v0, "sign":D
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    #@b
    move-result-wide p0

    #@c
    .line 434
    cmpg-double v2, p0, v4

    #@e
    if-gez v2, :cond_0

    #@10
    .line 435
    add-double v2, v4, p0

    #@12
    sub-double p0, v2, v4

    #@14
    .line 438
    :cond_0
    mul-double v2, v0, p0

    #@16
    return-wide v2
.end method

.method public static round(F)I
    .locals 1
    .param p0, "a"    # F

    #@0
    .prologue
    .line 635
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static round(D)J
    .locals 2
    .param p0, "a"    # D

    #@0
    .prologue
    .line 659
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public static scalb(DI)D
    .locals 2
    .param p0, "d"    # D
    .param p2, "scaleFactor"    # I

    #@0
    .prologue
    .line 1694
    invoke-static {p0, p1, p2}, Lsun/misc/FpUtils;->scalb(DI)D

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public static scalb(FI)F
    .locals 1
    .param p0, "f"    # F
    .param p1, "scaleFactor"    # I

    #@0
    .prologue
    .line 1728
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->scalb(FI)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static signum(D)D
    .locals 2
    .param p0, "d"    # D

    #@0
    .prologue
    .line 1211
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->signum(D)D

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public static signum(F)F
    .locals 1
    .param p0, "f"    # F

    #@0
    .prologue
    .line 1232
    invoke-static {p0}, Lsun/misc/FpUtils;->signum(F)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static native sin(D)D
.end method

.method public static native sinh(D)D
.end method

.method public static native sqrt(D)D
.end method

.method public static subtractExact(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I

    #@0
    .prologue
    .line 740
    invoke-static {p0, p1}, Ljava/lang/Math;->subtractExact(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static subtractExact(JJ)J
    .locals 2
    .param p0, "x"    # J
    .param p2, "y"    # J

    #@0
    .prologue
    .line 755
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->subtractExact(JJ)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public static native tan(D)D
.end method

.method public static native tanh(D)D
.end method

.method public static strictfp toDegrees(D)D
    .locals 4
    .param p0, "angrad"    # D

    #@0
    .prologue
    .line 180
    const-wide v0, 0x4066800000000000L    # 180.0

    #@5
    mul-double/2addr v0, p0

    #@6
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    #@b
    div-double/2addr v0, v2

    #@c
    return-wide v0
.end method

.method public static toIntExact(J)I
    .locals 2
    .param p0, "value"    # J

    #@0
    .prologue
    .line 799
    invoke-static {p0, p1}, Ljava/lang/Math;->toIntExact(J)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static strictfp toRadians(D)D
    .locals 4
    .param p0, "angdeg"    # D

    #@0
    .prologue
    .line 165
    const-wide v0, 0x4066800000000000L    # 180.0

    #@5
    div-double v0, p0, v0

    #@7
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    #@c
    mul-double/2addr v0, v2

    #@d
    return-wide v0
.end method

.method public static ulp(D)D
    .locals 2
    .param p0, "d"    # D

    #@0
    .prologue
    .line 1163
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->ulp(D)D

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public static ulp(F)F
    .locals 1
    .param p0, "f"    # F

    #@0
    .prologue
    .line 1190
    invoke-static {p0}, Lsun/misc/FpUtils;->ulp(F)F

    #@3
    move-result v0

    #@4
    return v0
.end method
