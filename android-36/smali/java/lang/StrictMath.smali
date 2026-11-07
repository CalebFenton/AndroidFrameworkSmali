.class public final Ljava/lang/StrictMath;
.super Ljava/lang/Object;
.source "StrictMath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/StrictMath$RandomNumberGeneratorHolder;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist DEGREES_TO_RADIANS:D = 0.017453292519943295

.field public static final whitelist test-api E:D = 2.718281828459045

.field public static final whitelist test-api PI:D = 3.141592653589793

.field private static final blacklist RADIANS_TO_DEGREES:D = 57.29577951308232

.field public static final whitelist test-api TAU:D = 6.283185307179586


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 109
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native whitelist test-api IEEEremainder(DD)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist test-api abs(D)D
    .registers 4
    .param p0, "a"    # D

    .line 1733
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api abs(F)F
    .registers 2
    .param p0, "a"    # F

    .line 1709
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public static whitelist test-api abs(I)I
    .registers 2
    .param p0, "a"    # I

    .line 1620
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api abs(J)J
    .registers 4
    .param p0, "a"    # J

    .line 1662
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api absExact(I)I
    .registers 2
    .param p0, "a"    # I

    .line 1643
    invoke-static {p0}, Ljava/lang/Math;->absExact(I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api absExact(J)J
    .registers 4
    .param p0, "a"    # J

    .line 1685
    invoke-static {p0, p1}, Ljava/lang/Math;->absExact(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static native whitelist test-api acos(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist test-api addExact(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 878
    invoke-static {p0, p1}, Ljava/lang/Math;->addExact(II)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api addExact(JJ)J
    .registers 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 893
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static native whitelist test-api asin(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist test-api atan(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist test-api atan2(DD)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist test-api cbrt(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist test-api ceil(D)D
    .registers 10
    .param p0, "a"    # D

    .line 476
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, -0x8000000000000000L

    move-wide v0, p0

    .end local p0    # "a":D
    .local v0, "a":D
    invoke-static/range {v0 .. v7}, Ljava/lang/StrictMath;->floorOrCeil(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static whitelist test-api ceilDiv(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 1469
    invoke-static {p0, p1}, Ljava/lang/Math;->ceilDiv(II)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api ceilDiv(JI)J
    .registers 5
    .param p0, "x"    # J
    .param p2, "y"    # I

    .line 1493
    invoke-static {p0, p1, p2}, Ljava/lang/Math;->ceilDiv(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api ceilDiv(JJ)J
    .registers 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 1517
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->ceilDiv(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api ceilDivExact(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 1112
    invoke-static {p0, p1}, Ljava/lang/Math;->ceilDivExact(II)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api ceilDivExact(JJ)J
    .registers 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 1142
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->ceilDivExact(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api ceilMod(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 1545
    invoke-static {p0, p1}, Ljava/lang/Math;->ceilMod(II)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api ceilMod(JI)I
    .registers 4
    .param p0, "x"    # J
    .param p2, "y"    # I

    .line 1573
    invoke-static {p0, p1, p2}, Ljava/lang/Math;->ceilMod(JI)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api ceilMod(JJ)J
    .registers 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 1601
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->ceilMod(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api clamp(DDD)D
    .registers 8
    .param p0, "value"    # D
    .param p2, "min"    # D
    .param p4, "max"    # D

    .line 1932
    invoke-static/range {p0 .. p5}, Ljava/lang/Math;->clamp(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api clamp(FFF)F
    .registers 4
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 1956
    invoke-static {p0, p1, p2}, Ljava/lang/Math;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method public static whitelist test-api clamp(JII)I
    .registers 5
    .param p0, "value"    # J
    .param p2, "min"    # I
    .param p3, "max"    # I

    .line 1890
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->clamp(JII)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api clamp(JJJ)J
    .registers 8
    .param p0, "value"    # J
    .param p2, "min"    # J
    .param p4, "max"    # J

    .line 1908
    invoke-static/range {p0 .. p5}, Ljava/lang/Math;->clamp(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api copySign(DD)D
    .registers 6
    .param p0, "magnitude"    # D
    .param p2, "sign"    # D

    .line 2372
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_a

    :cond_9
    move-wide v0, p2

    :goto_a
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api copySign(FF)F
    .registers 3
    .param p0, "magnitude"    # F
    .param p1, "sign"    # F

    .line 2388
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_9

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_9
    move v0, p1

    :goto_a
    invoke-static {p0, v0}, Ljava/lang/Math;->copySign(FF)F

    move-result v0

    return v0
.end method

.method public static native whitelist test-api cos(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist test-api cosh(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist test-api decrementExact(I)I
    .registers 2
    .param p0, "a"    # I

    .line 1187
    invoke-static {p0}, Ljava/lang/Math;->decrementExact(I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api decrementExact(J)J
    .registers 4
    .param p0, "a"    # J

    .line 1202
    invoke-static {p0, p1}, Ljava/lang/Math;->decrementExact(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api divideExact(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 995
    invoke-static {p0, p1}, Ljava/lang/Math;->divideExact(II)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api divideExact(JJ)J
    .registers 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 1022
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->divideExact(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static native whitelist test-api exp(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist test-api expm1(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist test-api floor(D)D
    .registers 10
    .param p0, "a"    # D

    .line 495
    const-wide/16 v4, 0x0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    move-wide v0, p0

    .end local p0    # "a":D
    .local v0, "a":D
    invoke-static/range {v0 .. v7}, Ljava/lang/StrictMath;->floorOrCeil(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static whitelist test-api floorDiv(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 1313
    invoke-static {p0, p1}, Ljava/lang/Math;->floorDiv(II)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api floorDiv(JI)J
    .registers 5
    .param p0, "x"    # J
    .param p2, "y"    # I

    .line 1337
    invoke-static {p0, p1, p2}, Ljava/lang/Math;->floorDiv(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api floorDiv(JJ)J
    .registers 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 1361
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api floorDivExact(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 1052
    invoke-static {p0, p1}, Ljava/lang/Math;->floorDivExact(II)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api floorDivExact(JJ)J
    .registers 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 1082
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->floorDivExact(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api floorMod(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 1389
    invoke-static {p0, p1}, Ljava/lang/Math;->floorMod(II)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api floorMod(JI)I
    .registers 4
    .param p0, "x"    # J
    .param p2, "y"    # I

    .line 1417
    invoke-static {p0, p1, p2}, Ljava/lang/Math;->floorMod(JI)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api floorMod(JJ)J
    .registers 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 1445
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static greylist-max-o floorOrCeil(DDDD)D
    .registers 19
    .param p0, "a"    # D
    .param p2, "negativeBoundary"    # D
    .param p4, "positiveBoundary"    # D
    .param p6, "sign"    # D

    .line 510
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    .line 512
    .local v0, "exponent":I
    const-wide/16 v1, 0x0

    if-gez v0, :cond_16

    .line 518
    cmpl-double v3, p0, v1

    if-nez v3, :cond_e

    move-wide v1, p0

    goto :goto_15

    .line 519
    :cond_e
    cmpg-double v1, p0, v1

    if-gez v1, :cond_14

    move-wide v1, p2

    goto :goto_15

    :cond_14
    move-wide v1, p4

    .line 518
    :goto_15
    return-wide v1

    .line 520
    :cond_16
    const/16 v3, 0x34

    if-lt v0, v3, :cond_1b

    .line 524
    return-wide p0

    .line 528
    :cond_1b
    nop

    .line 530
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v3

    .line 531
    .local v3, "doppel":J
    const-wide v5, 0xfffffffffffffL

    shr-long/2addr v5, v0

    .line 533
    .local v5, "mask":J
    and-long v7, v5, v3

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_2f

    .line 534
    return-wide p0

    .line 536
    :cond_2f
    not-long v7, v5

    and-long/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v7

    .line 537
    .local v7, "result":D
    mul-double v9, p6, p0

    cmpl-double v1, v9, v1

    if-lez v1, :cond_3d

    .line 538
    add-double v7, v7, p6

    .line 539
    :cond_3d
    return-wide v7
.end method

.method public static whitelist test-api fma(DDD)D
    .registers 8
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .line 2010
    invoke-static/range {p0 .. p5}, Ljava/lang/Math;->fma(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api fma(FFF)F
    .registers 4
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .line 2064
    invoke-static {p0, p1, p2}, Ljava/lang/Math;->fma(FFF)F

    move-result v0

    return v0
.end method

.method public static whitelist test-api getExponent(D)I
    .registers 3
    .param p0, "d"    # D

    .line 2423
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api getExponent(F)I
    .registers 2
    .param p0, "f"    # F

    .line 2405
    invoke-static {p0}, Ljava/lang/Math;->getExponent(F)I

    move-result v0

    return v0
.end method

.method public static native whitelist test-api hypot(DD)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist test-api incrementExact(I)I
    .registers 2
    .param p0, "a"    # I

    .line 1157
    invoke-static {p0}, Ljava/lang/Math;->incrementExact(I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api incrementExact(J)J
    .registers 4
    .param p0, "a"    # J

    .line 1172
    invoke-static {p0, p1}, Ljava/lang/Math;->incrementExact(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static native whitelist test-api log(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist test-api log10(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist test-api log1p(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist test-api max(DD)D
    .registers 6
    .param p0, "a"    # D
    .param p2, "b"    # D

    .line 1800
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api max(FF)F
    .registers 3
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 1781
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static whitelist test-api max(II)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 1748
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api max(JJ)J
    .registers 6
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 1762
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api min(DD)D
    .registers 6
    .param p0, "a"    # D
    .param p2, "b"    # D

    .line 1867
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api min(FF)F
    .registers 3
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 1848
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static whitelist test-api min(II)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 1815
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api min(JJ)J
    .registers 6
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 1829
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api multiplyExact(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 938
    invoke-static {p0, p1}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api multiplyExact(JI)J
    .registers 5
    .param p0, "x"    # J
    .param p2, "y"    # I

    .line 953
    invoke-static {p0, p1, p2}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api multiplyExact(JJ)J
    .registers 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 968
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api multiplyFull(II)J
    .registers 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 1259
    invoke-static {p0, p1}, Ljava/lang/Math;->multiplyFull(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api multiplyHigh(JJ)J
    .registers 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 1274
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->multiplyHigh(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api negateExact(I)I
    .registers 2
    .param p0, "a"    # I

    .line 1217
    invoke-static {p0}, Ljava/lang/Math;->negateExact(I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api negateExact(J)J
    .registers 4
    .param p0, "a"    # J

    .line 1232
    invoke-static {p0, p1}, Ljava/lang/Math;->negateExact(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api nextAfter(DD)D
    .registers 6
    .param p0, "start"    # D
    .param p2, "direction"    # D

    .line 2466
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->nextAfter(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api nextAfter(FD)F
    .registers 4
    .param p0, "start"    # F
    .param p1, "direction"    # D

    .line 2508
    invoke-static {p0, p1, p2}, Ljava/lang/Math;->nextAfter(FD)F

    move-result v0

    return v0
.end method

.method public static whitelist test-api nextDown(D)D
    .registers 4
    .param p0, "d"    # D

    .line 2595
    invoke-static {p0, p1}, Ljava/lang/Math;->nextDown(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api nextDown(F)F
    .registers 2
    .param p0, "f"    # F

    .line 2624
    invoke-static {p0}, Ljava/lang/Math;->nextDown(F)F

    move-result v0

    return v0
.end method

.method public static whitelist test-api nextUp(D)D
    .registers 4
    .param p0, "d"    # D

    .line 2537
    invoke-static {p0, p1}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api nextUp(F)F
    .registers 2
    .param p0, "f"    # F

    .line 2566
    invoke-static {p0}, Ljava/lang/Math;->nextUp(F)F

    move-result v0

    return v0
.end method

.method public static native whitelist test-api pow(DD)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist test-api random()D
    .registers 2

    .line 863
    sget-object v0, Ljava/lang/StrictMath$RandomNumberGeneratorHolder;->randomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api rint(D)D
    .registers 8
    .param p0, "a"    # D

    .line 572
    const-wide/high16 v0, 0x4330000000000000L    # 4.503599627370496E15

    .line 573
    .local v0, "twoToThe52":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v2

    .line 574
    .local v2, "sign":D
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 576
    cmpg-double v4, p0, v0

    if-gez v4, :cond_14

    .line 577
    add-double v4, v0, p0

    sub-double p0, v4, v0

    .line 580
    :cond_14
    mul-double v4, v2, p0

    return-wide v4
.end method

.method public static whitelist test-api round(F)I
    .registers 2
    .param p0, "a"    # F

    .line 808
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api round(D)J
    .registers 4
    .param p0, "a"    # D

    .line 832
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api scalb(DI)D
    .registers 5
    .param p0, "d"    # D
    .param p2, "scaleFactor"    # I

    .line 2655
    invoke-static {p0, p1, p2}, Ljava/lang/Math;->scalb(DI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api scalb(FI)F
    .registers 3
    .param p0, "f"    # F
    .param p1, "scaleFactor"    # I

    .line 2686
    invoke-static {p0, p1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    return v0
.end method

.method public static whitelist test-api signum(D)D
    .registers 4
    .param p0, "d"    # D

    .line 2139
    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api signum(F)F
    .registers 2
    .param p0, "f"    # F

    .line 2160
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    return v0
.end method

.method public static native whitelist test-api sin(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist test-api sinh(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist test-api sqrt(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist test-api subtractExact(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 908
    invoke-static {p0, p1}, Ljava/lang/Math;->subtractExact(II)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api subtractExact(JJ)J
    .registers 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 923
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static native whitelist test-api tan(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist test-api tanh(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist test-api toDegrees(D)D
    .registers 4
    .param p0, "angrad"    # D

    .line 292
    const-wide v0, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public static whitelist test-api toIntExact(J)I
    .registers 3
    .param p0, "value"    # J

    .line 1246
    invoke-static {p0, p1}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api toRadians(D)D
    .registers 4
    .param p0, "angdeg"    # D

    .line 275
    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public static whitelist test-api ulp(D)D
    .registers 4
    .param p0, "d"    # D

    .line 2091
    invoke-static {p0, p1}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api ulp(F)F
    .registers 2
    .param p0, "f"    # F

    .line 2118
    invoke-static {p0}, Ljava/lang/Math;->ulp(F)F

    move-result v0

    return v0
.end method

.method public static whitelist test-api unsignedMultiplyHigh(JJ)J
    .registers 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 1289
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->unsignedMultiplyHigh(JJ)J

    move-result-wide v0

    return-wide v0
.end method
