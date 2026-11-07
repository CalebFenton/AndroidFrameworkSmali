.class public final Ljava/lang/Math;
.super Ljava/lang/Object;
.source "Math.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Math$RandomNumberGeneratorHolder;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist DEGREES_TO_RADIANS:D = 0.017453292519943295

.field public static final whitelist test-api E:D = 2.718281828459045

.field public static final whitelist test-api PI:D = 3.141592653589793

.field private static final blacklist RADIANS_TO_DEGREES:D = 57.29577951308232

.field public static final whitelist test-api TAU:D = 6.283185307179586

.field private static final greylist-max-o negativeZeroDoubleBits:J

.field private static final greylist-max-o negativeZeroFloatBits:J

.field static greylist-max-o twoToTheDoubleScaleDown:D

.field static greylist-max-o twoToTheDoubleScaleUp:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 134
    nop

    .line 2185
    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Ljava/lang/Math;->negativeZeroFloatBits:J

    .line 2186
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sput-wide v0, Ljava/lang/Math;->negativeZeroDoubleBits:J

    .line 3625
    const/16 v0, 0x200

    invoke-static {v0}, Ljava/lang/Math;->powerOfTwoD(I)D

    move-result-wide v0

    sput-wide v0, Ljava/lang/Math;->twoToTheDoubleScaleUp:D

    .line 3626
    const/16 v0, -0x200

    invoke-static {v0}, Ljava/lang/Math;->powerOfTwoD(I)D

    move-result-wide v0

    sput-wide v0, Ljava/lang/Math;->twoToTheDoubleScaleDown:D

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native whitelist test-api IEEEremainder(DD)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist test-api abs(D)D
    .registers 6
    .param p0, "a"    # D

    .line 2152
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api abs(F)F
    .registers 3
    .param p0, "a"    # F

    .line 2126
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static whitelist test-api abs(I)I
    .registers 2
    .param p0, "a"    # I

    .line 2028
    if-gez p0, :cond_4

    neg-int v0, p0

    goto :goto_5

    :cond_4
    move v0, p0

    :goto_5
    return v0
.end method

.method public static whitelist test-api abs(J)J
    .registers 4
    .param p0, "a"    # J

    .line 2074
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_8

    neg-long v0, p0

    goto :goto_9

    :cond_8
    move-wide v0, p0

    :goto_9
    return-wide v0
.end method

.method public static whitelist test-api absExact(I)I
    .registers 3
    .param p0, "a"    # I

    .line 2050
    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_9

    .line 2054
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0

    .line 2051
    :cond_9
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Overflow to represent absolute value of Integer.MIN_VALUE"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api absExact(J)J
    .registers 4
    .param p0, "a"    # J

    .line 2096
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_b

    .line 2100
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0

    .line 2097
    :cond_b
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Overflow to represent absolute value of Long.MIN_VALUE"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native whitelist test-api acos(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist test-api addExact(II)I
    .registers 5
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 1056
    add-int v0, p0, p1

    .line 1058
    .local v0, "r":I
    xor-int v1, p0, v0

    xor-int v2, p1, v0

    and-int/2addr v1, v2

    if-ltz v1, :cond_a

    .line 1061
    return v0

    .line 1059
    :cond_a
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "integer overflow"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api addExact(JJ)J
    .registers 10
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 1076
    add-long v0, p0, p2

    .line 1078
    .local v0, "r":J
    xor-long v2, p0, v0

    xor-long v4, p2, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_e

    .line 1081
    return-wide v0

    .line 1079
    :cond_e
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "long overflow"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
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

.method public static native whitelist test-api ceil(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist test-api ceilDiv(II)I
    .registers 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 1834
    div-int v0, p0, p1

    .line 1836
    .local v0, "q":I
    xor-int v1, p0, p1

    if-ltz v1, :cond_d

    mul-int v1, v0, p1

    if-eq v1, p0, :cond_d

    .line 1837
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 1839
    :cond_d
    return v0
.end method

.method public static whitelist test-api ceilDiv(JI)J
    .registers 5
    .param p0, "x"    # J
    .param p2, "y"    # I

    .line 1868
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->ceilDiv(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api ceilDiv(JJ)J
    .registers 10
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 1897
    div-long v0, p0, p2

    .line 1899
    .local v0, "q":J
    xor-long v2, p0, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_14

    mul-long v2, v0, p2

    cmp-long v2, v2, p0

    if-eqz v2, :cond_14

    .line 1900
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    return-wide v2

    .line 1902
    :cond_14
    return-wide v0
.end method

.method public static whitelist test-api ceilDivExact(II)I
    .registers 5
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 1346
    div-int v0, p0, p1

    .line 1347
    .local v0, "q":I
    and-int v1, p0, p1

    and-int/2addr v1, v0

    if-ltz v1, :cond_13

    .line 1349
    xor-int v1, p0, p1

    if-ltz v1, :cond_12

    mul-int v1, v0, p1

    if-eq v1, p0, :cond_12

    .line 1350
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 1352
    :cond_12
    return v0

    .line 1354
    :cond_13
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "integer overflow"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api ceilDivExact(JJ)J
    .registers 10
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 1383
    div-long v0, p0, p2

    .line 1384
    .local v0, "q":J
    and-long v2, p0, p2

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1c

    .line 1386
    xor-long v2, p0, p2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1b

    mul-long v2, v0, p2

    cmp-long v2, v2, p0

    if-eqz v2, :cond_1b

    .line 1387
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    return-wide v2

    .line 1389
    :cond_1b
    return-wide v0

    .line 1391
    :cond_1c
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "long overflow"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static whitelist test-api ceilMod(II)I
    .registers 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 1945
    rem-int v0, p0, p1

    .line 1947
    .local v0, "r":I
    xor-int v1, p0, p1

    if-ltz v1, :cond_b

    if-eqz v0, :cond_b

    .line 1948
    sub-int v1, v0, p1

    return v1

    .line 1950
    :cond_b
    return v0
.end method

.method public static whitelist test-api ceilMod(JI)I
    .registers 5
    .param p0, "x"    # J
    .param p2, "y"    # I

    .line 1977
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->ceilMod(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static whitelist test-api ceilMod(JJ)J
    .registers 10
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 2003
    rem-long v0, p0, p2

    .line 2005
    .local v0, "r":J
    xor-long v2, p0, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_11

    cmp-long v2, v0, v4

    if-eqz v2, :cond_11

    .line 2006
    sub-long v2, v0, p2

    return-wide v2

    .line 2008
    :cond_11
    return-wide v0
.end method

.method public static whitelist test-api clamp(DDD)D
    .registers 9
    .param p0, "value"    # D
    .param p2, "min"    # D
    .param p4, "max"    # D

    .line 2413
    cmpg-double v0, p2, p4

    if-ltz v0, :cond_44

    .line 2414
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 2417
    invoke-static {p4, p5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_34

    .line 2420
    invoke-static {p2, p3, p4, p5}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-gtz v0, :cond_17

    goto :goto_44

    .line 2421
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2418
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "max is NaN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2415
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "min is NaN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2426
    :cond_44
    :goto_44
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api clamp(FFF)F
    .registers 6
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 2454
    cmpg-float v0, p1, p2

    if-ltz v0, :cond_44

    .line 2455
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 2458
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_34

    .line 2461
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_17

    goto :goto_44

    .line 2462
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2459
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "max is NaN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2456
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "min is NaN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2467
    :cond_44
    :goto_44
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static whitelist test-api clamp(JII)I
    .registers 8
    .param p0, "value"    # J
    .param p2, "min"    # I
    .param p3, "max"    # I

    .line 2361
    if-gt p2, p3, :cond_e

    .line 2364
    int-to-long v0, p3

    int-to-long v2, p2

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 2362
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api clamp(JJJ)J
    .registers 9
    .param p0, "value"    # J
    .param p2, "min"    # J
    .param p4, "max"    # J

    .line 2382
    cmp-long v0, p2, p4

    if-gtz v0, :cond_d

    .line 2385
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 2383
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api copySign(DD)D
    .registers 10
    .param p0, "magnitude"    # D
    .param p2, "sign"    # D

    .line 3068
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v0, v2

    .line 3070
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 3068
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api copySign(FF)F
    .registers 5
    .param p0, "magnitude"    # F
    .param p1, "sign"    # F

    .line 3096
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    .line 3098
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 3096
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

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
    .registers 3
    .param p0, "a"    # I

    .line 1444
    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_7

    .line 1448
    add-int/lit8 v0, p0, -0x1

    return v0

    .line 1445
    :cond_7
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api decrementExact(J)J
    .registers 4
    .param p0, "a"    # J

    .line 1463
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_b

    .line 1467
    const-wide/16 v0, 0x1

    sub-long v0, p0, v0

    return-wide v0

    .line 1464
    :cond_b
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "long overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api divideExact(II)I
    .registers 5
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 1209
    div-int v0, p0, p1

    .line 1210
    .local v0, "q":I
    and-int v1, p0, p1

    and-int/2addr v1, v0

    if-ltz v1, :cond_8

    .line 1211
    return v0

    .line 1213
    :cond_8
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "integer overflow"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api divideExact(JJ)J
    .registers 10
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 1239
    div-long v0, p0, p2

    .line 1240
    .local v0, "q":J
    and-long v2, p0, p2

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_c

    .line 1241
    return-wide v0

    .line 1243
    :cond_c
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "long overflow"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static native whitelist test-api exp(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist test-api expm1(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist test-api floor(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist test-api floorDiv(II)I
    .registers 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 1620
    div-int v0, p0, p1

    .line 1622
    .local v0, "q":I
    xor-int v1, p0, p1

    if-gez v1, :cond_d

    mul-int v1, v0, p1

    if-eq v1, p0, :cond_d

    .line 1623
    add-int/lit8 v1, v0, -0x1

    return v1

    .line 1625
    :cond_d
    return v0
.end method

.method public static whitelist test-api floorDiv(JI)J
    .registers 5
    .param p0, "x"    # J
    .param p2, "y"    # I

    .line 1654
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api floorDiv(JJ)J
    .registers 10
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 1683
    div-long v0, p0, p2

    .line 1685
    .local v0, "q":J
    xor-long v2, p0, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_15

    mul-long v2, v0, p2

    cmp-long v2, v2, p0

    if-eqz v2, :cond_15

    .line 1686
    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    return-wide v2

    .line 1688
    :cond_15
    return-wide v0
.end method

.method public static whitelist test-api floorDivExact(II)I
    .registers 5
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 1272
    div-int v0, p0, p1

    .line 1273
    .local v0, "q":I
    and-int v1, p0, p1

    and-int/2addr v1, v0

    if-ltz v1, :cond_13

    .line 1275
    xor-int v1, p0, p1

    if-gez v1, :cond_12

    mul-int v1, v0, p1

    if-eq v1, p0, :cond_12

    .line 1276
    add-int/lit8 v1, v0, -0x1

    return v1

    .line 1278
    :cond_12
    return v0

    .line 1280
    :cond_13
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "integer overflow"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api floorDivExact(JJ)J
    .registers 10
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 1309
    div-long v0, p0, p2

    .line 1310
    .local v0, "q":J
    and-long v2, p0, p2

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1d

    .line 1312
    xor-long v2, p0, p2

    cmp-long v2, v2, v4

    if-gez v2, :cond_1c

    mul-long v2, v0, p2

    cmp-long v2, v2, p0

    if-eqz v2, :cond_1c

    .line 1313
    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    return-wide v2

    .line 1315
    :cond_1c
    return-wide v0

    .line 1317
    :cond_1d
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "long overflow"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static whitelist test-api floorMod(II)I
    .registers 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 1731
    rem-int v0, p0, p1

    .line 1733
    .local v0, "r":I
    xor-int v1, p0, p1

    if-gez v1, :cond_b

    if-eqz v0, :cond_b

    .line 1734
    add-int v1, v0, p1

    return v1

    .line 1736
    :cond_b
    return v0
.end method

.method public static whitelist test-api floorMod(JI)I
    .registers 5
    .param p0, "x"    # J
    .param p2, "y"    # I

    .line 1763
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static whitelist test-api floorMod(JJ)J
    .registers 10
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 1789
    rem-long v0, p0, p2

    .line 1791
    .local v0, "r":J
    xor-long v2, p0, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_11

    cmp-long v2, v0, v4

    if-eqz v2, :cond_11

    .line 1792
    add-long v2, v0, p2

    return-wide v2

    .line 1794
    :cond_11
    return-wide v0
.end method

.method public static whitelist test-api fma(DDD)D
    .registers 14
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .line 2534
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    if-nez v0, :cond_7b

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_7b

    invoke-static {p4, p5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_7b

    .line 2537
    :cond_15
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    .line 2538
    .local v0, "infiniteA":Z
    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    .line 2539
    .local v3, "infiniteB":Z
    invoke-static {p4, p5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    .line 2542
    .local v4, "infiniteC":Z
    const-wide/16 v5, 0x0

    if-nez v0, :cond_5c

    if-nez v3, :cond_5c

    if-eqz v4, :cond_2a

    goto :goto_5c

    .line 2562
    :cond_2a
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 2563
    .local v1, "product":Ljava/math/BigDecimal;
    cmpl-double v2, p4, v5

    if-nez v2, :cond_4e

    .line 2569
    cmpl-double v2, p0, v5

    if-eqz v2, :cond_4a

    cmpl-double v2, p2, v5

    if-nez v2, :cond_45

    goto :goto_4a

    .line 2578
    :cond_45
    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v5

    return-wide v5

    .line 2570
    :cond_4a
    :goto_4a
    mul-double v5, p0, p2

    add-double/2addr v5, p4

    return-wide v5

    .line 2581
    :cond_4e
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, p4, p5}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v5

    return-wide v5

    .line 2543
    .end local v1    # "product":Ljava/math/BigDecimal;
    :cond_5c
    :goto_5c
    if-eqz v0, :cond_62

    cmpl-double v7, p2, v5

    if-eqz v7, :cond_68

    :cond_62
    if-eqz v3, :cond_69

    cmpl-double v5, p0, v5

    if-nez v5, :cond_69

    .line 2545
    :cond_68
    return-wide v1

    .line 2550
    :cond_69
    mul-double v1, p0, p2

    .line 2551
    .local v1, "product":D
    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-eqz v5, :cond_77

    if-nez v0, :cond_77

    if-nez v3, :cond_77

    .line 2554
    nop

    .line 2555
    return-wide p4

    .line 2557
    :cond_77
    add-double v5, v1, p4

    .line 2558
    .local v5, "result":D
    nop

    .line 2559
    return-wide v5

    .line 2535
    .end local v0    # "infiniteA":Z
    .end local v1    # "product":D
    .end local v3    # "infiniteB":Z
    .end local v4    # "infiniteC":Z
    .end local v5    # "result":D
    :cond_7b
    :goto_7b
    return-wide v1
.end method

.method public static whitelist test-api fma(FFF)F
    .registers 10
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .line 2639
    invoke-static {p0}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-static {p2}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2640
    float-to-double v0, p0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_36

    float-to-double v0, p1

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1f

    goto :goto_36

    .line 2643
    :cond_1f
    new-instance v0, Ljava/math/BigDecimal;

    float-to-double v1, p0

    float-to-double v3, p1

    mul-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v1, Ljava/math/BigDecimal;

    float-to-double v2, p2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 2644
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 2645
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    .line 2643
    return v0

    .line 2641
    :cond_36
    :goto_36
    mul-float v0, p0, p1

    add-float/2addr v0, p2

    return v0

    .line 2652
    :cond_3a
    float-to-double v1, p0

    float-to-double v3, p1

    float-to-double v5, p2

    invoke-static/range {v1 .. v6}, Ljava/lang/Math;->fma(DDD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static whitelist test-api getExponent(D)I
    .registers 6
    .param p0, "d"    # D

    .line 3155
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v0, v2

    const/16 v2, 0x34

    shr-long/2addr v0, v2

    const-wide/16 v2, 0x3ff

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static whitelist test-api getExponent(F)I
    .registers 3
    .param p0, "f"    # F

    .line 3127
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x17

    add-int/lit8 v0, v0, -0x7f

    return v0
.end method

.method public static native whitelist test-api hypot(DD)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist test-api incrementExact(I)I
    .registers 3
    .param p0, "a"    # I

    .line 1406
    const v0, 0x7fffffff

    if-eq p0, v0, :cond_8

    .line 1410
    add-int/lit8 v0, p0, 0x1

    return v0

    .line 1407
    :cond_8
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api incrementExact(J)J
    .registers 4
    .param p0, "a"    # J

    .line 1425
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-eqz v0, :cond_d

    .line 1429
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    return-wide v0

    .line 1426
    :cond_d
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "long overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .registers 8
    .param p0, "a"    # D
    .param p2, "b"    # D

    .line 2239
    cmpl-double v0, p0, p0

    if-eqz v0, :cond_5

    .line 2240
    return-wide p0

    .line 2241
    :cond_5
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_1a

    cmpl-double v0, p2, v0

    if-nez v0, :cond_1a

    .line 2243
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sget-wide v2, Ljava/lang/Math;->negativeZeroDoubleBits:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    .line 2245
    return-wide p2

    .line 2247
    :cond_1a
    cmpl-double v0, p0, p2

    if-ltz v0, :cond_20

    move-wide v0, p0

    goto :goto_21

    :cond_20
    move-wide v0, p2

    :goto_21
    return-wide v0
.end method

.method public static whitelist test-api max(FF)F
    .registers 6
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 2208
    cmpl-float v0, p0, p0

    if-eqz v0, :cond_5

    .line 2209
    return p0

    .line 2210
    :cond_5
    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-nez v1, :cond_1a

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1a

    .line 2212
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    sget-wide v2, Ljava/lang/Math;->negativeZeroFloatBits:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    .line 2214
    return p1

    .line 2216
    :cond_1a
    cmpl-float v0, p0, p1

    if-ltz v0, :cond_20

    move v0, p0

    goto :goto_21

    :cond_20
    move v0, p1

    :goto_21
    return v0
.end method

.method public static whitelist test-api max(II)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 2167
    if-lt p0, p1, :cond_4

    move v0, p0

    goto :goto_5

    :cond_4
    move v0, p1

    :goto_5
    return v0
.end method

.method public static whitelist test-api max(JJ)J
    .registers 6
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 2181
    cmp-long v0, p0, p2

    if-ltz v0, :cond_6

    move-wide v0, p0

    goto :goto_7

    :cond_6
    move-wide v0, p2

    :goto_7
    return-wide v0
.end method

.method public static whitelist test-api min(DD)D
    .registers 8
    .param p0, "a"    # D
    .param p2, "b"    # D

    .line 2330
    cmpl-double v0, p0, p0

    if-eqz v0, :cond_5

    .line 2331
    return-wide p0

    .line 2332
    :cond_5
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_1a

    cmpl-double v0, p2, v0

    if-nez v0, :cond_1a

    .line 2334
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sget-wide v2, Ljava/lang/Math;->negativeZeroDoubleBits:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    .line 2336
    return-wide p2

    .line 2338
    :cond_1a
    cmpg-double v0, p0, p2

    if-gtz v0, :cond_20

    move-wide v0, p0

    goto :goto_21

    :cond_20
    move-wide v0, p2

    :goto_21
    return-wide v0
.end method

.method public static whitelist test-api min(FF)F
    .registers 6
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 2299
    cmpl-float v0, p0, p0

    if-eqz v0, :cond_5

    .line 2300
    return p0

    .line 2301
    :cond_5
    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-nez v1, :cond_1a

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1a

    .line 2303
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    sget-wide v2, Ljava/lang/Math;->negativeZeroFloatBits:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    .line 2305
    return p1

    .line 2307
    :cond_1a
    cmpg-float v0, p0, p1

    if-gtz v0, :cond_20

    move v0, p0

    goto :goto_21

    :cond_20
    move v0, p1

    :goto_21
    return v0
.end method

.method public static whitelist test-api min(II)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 2262
    if-gt p0, p1, :cond_4

    move v0, p0

    goto :goto_5

    :cond_4
    move v0, p1

    :goto_5
    return v0
.end method

.method public static whitelist test-api min(JJ)J
    .registers 6
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 2276
    cmp-long v0, p0, p2

    if-gtz v0, :cond_6

    move-wide v0, p0

    goto :goto_7

    :cond_6
    move-wide v0, p2

    :goto_7
    return-wide v0
.end method

.method public static whitelist test-api multiplyExact(II)I
    .registers 6
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 1138
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    .line 1139
    .local v0, "r":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_b

    .line 1142
    long-to-int v2, v0

    return v2

    .line 1140
    :cond_b
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "integer overflow"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static whitelist test-api multiplyExact(JI)J
    .registers 5
    .param p0, "x"    # J
    .param p2, "y"    # I

    .line 1156
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api multiplyExact(JJ)J
    .registers 14
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 1171
    mul-long v0, p0, p2

    .line 1172
    .local v0, "r":J
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 1173
    .local v2, "ax":J
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 1174
    .local v4, "ay":J
    or-long v6, v2, v4

    const/16 v8, 0x1f

    ushr-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_34

    .line 1178
    cmp-long v6, p2, v8

    if-eqz v6, :cond_1f

    div-long v6, v0, p2

    cmp-long v6, v6, p0

    if-nez v6, :cond_2c

    :cond_1f
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, p0, v6

    if-nez v6, :cond_34

    const-wide/16 v6, -0x1

    cmp-long v6, p2, v6

    if-eqz v6, :cond_2c

    goto :goto_34

    .line 1180
    :cond_2c
    new-instance v6, Ljava/lang/ArithmeticException;

    const-string v7, "long overflow"

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1183
    :cond_34
    :goto_34
    return-wide v0
.end method

.method public static whitelist test-api multiplyFull(II)J
    .registers 6
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 1533
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static whitelist test-api multiplyHigh(JJ)J
    .registers 25
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 1550
    const/16 v0, 0x20

    shr-long v1, p0, v0

    .line 1551
    .local v1, "x1":J
    const-wide v3, 0xffffffffL

    and-long v5, p0, v3

    .line 1552
    .local v5, "x2":J
    shr-long v7, p2, v0

    .line 1553
    .local v7, "y1":J
    and-long v9, p2, v3

    .line 1555
    .local v9, "y2":J
    mul-long v11, v5, v9

    .line 1556
    .local v11, "z2":J
    mul-long v13, v1, v9

    ushr-long v15, v11, v0

    add-long/2addr v13, v15

    .line 1557
    .local v13, "t":J
    and-long/2addr v3, v13

    .line 1558
    .local v3, "z1":J
    shr-long v15, v13, v0

    .line 1559
    .local v15, "z0":J
    mul-long v17, v5, v7

    add-long v3, v3, v17

    .line 1561
    mul-long v17, v1, v7

    add-long v17, v17, v15

    shr-long v19, v3, v0

    add-long v17, v17, v19

    return-wide v17
.end method

.method public static whitelist test-api negateExact(I)I
    .registers 3
    .param p0, "a"    # I

    .line 1482
    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_6

    .line 1486
    neg-int v0, p0

    return v0

    .line 1483
    :cond_6
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api negateExact(J)J
    .registers 4
    .param p0, "a"    # J

    .line 1501
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_8

    .line 1505
    neg-long v0, p0

    return-wide v0

    .line 1502
    :cond_8
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "long overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api nextAfter(DD)D
    .registers 13
    .param p0, "start"    # D
    .param p2, "direction"    # D

    .line 3225
    cmpl-double v0, p0, p2

    const-wide/16 v1, 0x1

    const-wide/16 v3, -0x1

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    if-lez v0, :cond_25

    .line 3226
    cmpl-double v0, p0, v7

    if-eqz v0, :cond_1f

    .line 3227
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v7

    .line 3228
    .local v7, "transducer":J
    cmp-long v0, v7, v5

    if-lez v0, :cond_19

    move-wide v1, v3

    :cond_19
    add-long/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0

    .line 3230
    .end local v7    # "transducer":J
    :cond_1f
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 3232
    :cond_25
    cmpg-double v0, p0, p2

    if-gez v0, :cond_3a

    .line 3235
    add-double/2addr v7, p0

    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v7

    .line 3236
    .restart local v7    # "transducer":J
    cmp-long v0, v7, v5

    if-ltz v0, :cond_33

    goto :goto_34

    :cond_33
    move-wide v1, v3

    :goto_34
    add-long/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0

    .line 3237
    .end local v7    # "transducer":J
    :cond_3a
    cmpl-double v0, p0, p2

    if-nez v0, :cond_3f

    .line 3238
    return-wide p2

    .line 3240
    :cond_3f
    add-double v0, p0, p2

    return-wide v0
.end method

.method public static whitelist test-api nextAfter(FD)F
    .registers 9
    .param p0, "start"    # F
    .param p1, "direction"    # D

    .line 3309
    float-to-double v0, p0

    cmpl-double v0, v0, p1

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-lez v0, :cond_1d

    .line 3310
    cmpl-float v0, p0, v3

    if-eqz v0, :cond_19

    .line 3311
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 3312
    .local v0, "transducer":I
    if-lez v0, :cond_13

    move v1, v2

    :cond_13
    add-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1

    .line 3314
    .end local v0    # "transducer":I
    :cond_19
    const v0, -0x7fffffff

    return v0

    .line 3316
    :cond_1d
    float-to-double v4, p0

    cmpg-double v0, v4, p1

    if-gez v0, :cond_31

    .line 3319
    add-float/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 3320
    .restart local v0    # "transducer":I
    if-ltz v0, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v2

    :goto_2b
    add-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1

    .line 3321
    .end local v0    # "transducer":I
    :cond_31
    float-to-double v0, p0

    cmpl-double v0, v0, p1

    if-nez v0, :cond_38

    .line 3322
    double-to-float v0, p1

    return v0

    .line 3324
    :cond_38
    double-to-float v0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public static whitelist test-api nextDown(D)D
    .registers 6
    .param p0, "d"    # D

    .line 3435
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2c

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_d

    goto :goto_2c

    .line 3438
    :cond_d
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_19

    .line 3439
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 3441
    :cond_19
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 3442
    cmpl-double v0, p0, v0

    if-lez v0, :cond_24

    const-wide/16 v0, -0x1

    goto :goto_26

    :cond_24
    const-wide/16 v0, 0x1

    :goto_26
    add-long/2addr v2, v0

    .line 3441
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0

    .line 3436
    :cond_2c
    :goto_2c
    return-wide p0
.end method

.method public static whitelist test-api nextDown(F)F
    .registers 3
    .param p0, "f"    # F

    .line 3475
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_27

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_d

    goto :goto_27

    .line 3478
    :cond_d
    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-nez v1, :cond_16

    .line 3479
    const v0, -0x7fffffff

    return v0

    .line 3481
    :cond_16
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 3482
    cmpl-float v0, p0, v0

    if-lez v0, :cond_20

    const/4 v0, -0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x1

    :goto_21
    add-int/2addr v1, v0

    .line 3481
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0

    .line 3476
    :cond_27
    :goto_27
    return p0
.end method

.method public static whitelist test-api nextUp(D)D
    .registers 6
    .param p0, "d"    # D

    .line 3358
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1e

    .line 3360
    const-wide/16 v0, 0x0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 3361
    .local v0, "transducer":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_16

    const-wide/16 v2, 0x1

    goto :goto_18

    :cond_16
    const-wide/16 v2, -0x1

    :goto_18
    add-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2

    .line 3363
    .end local v0    # "transducer":J
    :cond_1e
    return-wide p0
.end method

.method public static whitelist test-api nextUp(F)F
    .registers 3
    .param p0, "f"    # F

    .line 3397
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpg-float v0, p0, v0

    if-gez v0, :cond_17

    .line 3399
    const/4 v0, 0x0

    add-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 3400
    .local v0, "transducer":I
    if-ltz v0, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, -0x1

    :goto_11
    add-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1

    .line 3402
    .end local v0    # "transducer":I
    :cond_17
    return p0
.end method

.method public static native whitelist test-api pow(DD)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method static greylist-max-o powerOfTwoD(I)D
    .registers 5
    .param p0, "n"    # I

    .line 3632
    nop

    .line 3633
    int-to-long v0, p0

    const-wide/16 v2, 0x3ff

    add-long/2addr v0, v2

    const/16 v2, 0x34

    shl-long/2addr v0, v2

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method static greylist-max-o powerOfTwoF(I)F
    .registers 3
    .param p0, "n"    # I

    .line 3642
    nop

    .line 3643
    add-int/lit8 v0, p0, 0x7f

    shl-int/lit8 v0, v0, 0x17

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static whitelist test-api random()D
    .registers 2

    .line 1013
    sget-object v0, Ljava/lang/Math$RandomNumberGeneratorHolder;->randomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist-max-o randomIntInternal()I
    .registers 1

    .line 1033
    sget-object v0, Ljava/lang/Math$RandomNumberGeneratorHolder;->randomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public static greylist-max-o randomLongInternal()J
    .registers 2

    .line 1041
    sget-object v0, Ljava/lang/Math$RandomNumberGeneratorHolder;->randomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static native whitelist test-api rint(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist test-api round(F)I
    .registers 6
    .param p0, "a"    # F

    .line 896
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 897
    .local v0, "intBits":I
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    and-int/2addr v1, v0

    shr-int/lit8 v1, v1, 0x17

    .line 899
    .local v1, "biasedExp":I
    rsub-int v2, v1, 0x95

    .line 901
    .local v2, "shift":I
    and-int/lit8 v3, v2, -0x20

    if-nez v3, :cond_20

    .line 903
    const v3, 0x7fffff

    and-int/2addr v3, v0

    const/high16 v4, 0x800000

    or-int/2addr v3, v4

    .line 905
    .local v3, "r":I
    if-gez v0, :cond_19

    .line 906
    neg-int v3, v3

    .line 914
    :cond_19
    shr-int v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    shr-int/lit8 v4, v4, 0x1

    return v4

    .line 920
    .end local v3    # "r":I
    :cond_20
    float-to-int v3, p0

    return v3
.end method

.method public static whitelist test-api round(D)J
    .registers 14
    .param p0, "a"    # D

    .line 946
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 947
    .local v0, "longBits":J
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v2, v0

    const/16 v4, 0x34

    shr-long/2addr v2, v4

    .line 949
    .local v2, "biasedExp":J
    const-wide/16 v4, 0x432

    sub-long/2addr v4, v2

    .line 951
    .local v4, "shift":J
    const-wide/16 v6, -0x40

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2d

    .line 953
    const-wide v6, 0xfffffffffffffL

    and-long/2addr v6, v0

    const-wide/high16 v10, 0x10000000000000L

    or-long/2addr v6, v10

    .line 955
    .local v6, "r":J
    cmp-long v8, v0, v8

    if-gez v8, :cond_24

    .line 956
    neg-long v6, v6

    .line 964
    :cond_24
    long-to-int v8, v4

    shr-long v8, v6, v8

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    const/4 v10, 0x1

    shr-long/2addr v8, v10

    return-wide v8

    .line 970
    .end local v6    # "r":J
    :cond_2d
    double-to-long v6, p0

    return-wide v6
.end method

.method public static whitelist test-api scalb(DI)D
    .registers 12
    .param p0, "d"    # D
    .param p2, "scaleFactor"    # I

    .line 3539
    const/16 v0, 0x833

    .line 3541
    .local v0, "MAX_SCALE":I
    const/4 v1, 0x0

    .line 3542
    .local v1, "exp_adjust":I
    const/4 v2, 0x0

    .line 3543
    .local v2, "scale_increment":I
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    .line 3547
    .local v3, "exp_delta":D
    if-gez p2, :cond_13

    .line 3548
    const/16 v5, -0x833

    invoke-static {p2, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 3549
    const/16 v2, -0x200

    .line 3550
    sget-wide v3, Ljava/lang/Math;->twoToTheDoubleScaleDown:D

    goto :goto_1d

    .line 3553
    :cond_13
    const/16 v5, 0x833

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 3554
    const/16 v2, 0x200

    .line 3555
    sget-wide v3, Ljava/lang/Math;->twoToTheDoubleScaleUp:D

    .line 3560
    :goto_1d
    shr-int/lit8 v5, p2, 0x8

    ushr-int/lit8 v5, v5, 0x17

    .line 3561
    .local v5, "t":I
    add-int v6, p2, v5

    and-int/lit16 v6, v6, 0x1ff

    sub-int/2addr v6, v5

    .line 3563
    .end local v1    # "exp_adjust":I
    .local v6, "exp_adjust":I
    invoke-static {v6}, Ljava/lang/Math;->powerOfTwoD(I)D

    move-result-wide v7

    mul-double/2addr p0, v7

    .line 3564
    sub-int/2addr p2, v6

    .line 3566
    :goto_2c
    if-eqz p2, :cond_31

    .line 3567
    mul-double/2addr p0, v3

    .line 3568
    sub-int/2addr p2, v2

    goto :goto_2c

    .line 3570
    :cond_31
    return-wide p0
.end method

.method public static whitelist test-api scalb(FI)F
    .registers 7
    .param p0, "f"    # F
    .param p1, "scaleFactor"    # I

    .line 3608
    const/16 v0, 0x116

    .line 3612
    .local v0, "MAX_SCALE":I
    const/16 v1, 0x116

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, -0x116

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3621
    float-to-double v1, p0

    invoke-static {p1}, Ljava/lang/Math;->powerOfTwoD(I)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-float v1, v1

    return v1
.end method

.method public static greylist-max-o setRandomSeedInternal(J)V
    .registers 3
    .param p0, "seed"    # J

    .line 1025
    sget-object v0, Ljava/lang/Math$RandomNumberGeneratorHolder;->randomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v0, p0, p1}, Ljava/util/Random;->setSeed(J)V

    .line 1026
    return-void
.end method

.method public static whitelist test-api signum(D)D
    .registers 6
    .param p0, "d"    # D

    .line 2771
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_1c

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1c

    .line 2774
    :cond_d
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0

    .line 2772
    :cond_1c
    :goto_1c
    return-wide p0
.end method

.method public static whitelist test-api signum(F)F
    .registers 3
    .param p0, "f"    # F

    .line 2801
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_1b

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_1b

    .line 2804
    :cond_c
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0

    .line 2802
    :cond_1b
    :goto_1b
    return p0
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
    .registers 5
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 1096
    sub-int v0, p0, p1

    .line 1099
    .local v0, "r":I
    xor-int v1, p0, p1

    xor-int v2, p0, v0

    and-int/2addr v1, v2

    if-ltz v1, :cond_a

    .line 1102
    return v0

    .line 1100
    :cond_a
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "integer overflow"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api subtractExact(JJ)J
    .registers 10
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 1117
    sub-long v0, p0, p2

    .line 1120
    .local v0, "r":J
    xor-long v2, p0, p2

    xor-long v4, p0, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_e

    .line 1123
    return-wide v0

    .line 1121
    :cond_e
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "long overflow"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
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

    .line 356
    const-wide v0, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public static whitelist test-api toIntExact(J)I
    .registers 4
    .param p0, "value"    # J

    .line 1518
    long-to-int v0, p0

    int-to-long v0, v0

    cmp-long v0, v0, p0

    if-nez v0, :cond_8

    .line 1521
    long-to-int v0, p0

    return v0

    .line 1519
    :cond_8
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api toRadians(D)D
    .registers 4
    .param p0, "angdeg"    # D

    .line 340
    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public static whitelist test-api ulp(D)D
    .registers 6
    .param p0, "d"    # D

    .line 2680
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    .line 2682
    .local v0, "exp":I
    sparse-switch v0, :sswitch_data_26

    .line 2686
    goto :goto_10

    .line 2683
    :sswitch_8
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    goto :goto_25

    .line 2684
    :sswitch_d
    const-wide/16 v1, 0x1

    goto :goto_25

    .line 2689
    :goto_10
    add-int/lit8 v0, v0, -0x34

    .line 2690
    const/16 v1, -0x3fe

    if-lt v0, v1, :cond_1b

    .line 2691
    invoke-static {v0}, Ljava/lang/Math;->powerOfTwoD(I)D

    move-result-wide v1

    goto :goto_25

    .line 2696
    :cond_1b
    add-int/lit16 v1, v0, 0x432

    const-wide/16 v2, 0x1

    shl-long v1, v2, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    .line 2682
    :goto_25
    return-wide v1

    :sswitch_data_26
    .sparse-switch
        -0x3ff -> :sswitch_d
        0x400 -> :sswitch_8
    .end sparse-switch
.end method

.method public static whitelist test-api ulp(F)F
    .registers 4
    .param p0, "f"    # F

    .line 2727
    invoke-static {p0}, Ljava/lang/Math;->getExponent(F)I

    move-result v0

    .line 2729
    .local v0, "exp":I
    sparse-switch v0, :sswitch_data_24

    .line 2733
    goto :goto_f

    .line 2730
    :sswitch_8
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    goto :goto_23

    .line 2731
    :sswitch_d
    const/4 v1, 0x1

    goto :goto_23

    .line 2736
    :goto_f
    add-int/lit8 v0, v0, -0x17

    .line 2737
    const/16 v1, -0x7e

    if-lt v0, v1, :cond_1a

    .line 2738
    invoke-static {v0}, Ljava/lang/Math;->powerOfTwoF(I)F

    move-result v1

    goto :goto_23

    .line 2743
    :cond_1a
    add-int/lit16 v1, v0, 0x95

    const/4 v2, 0x1

    shl-int v1, v2, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 2729
    :goto_23
    return v1

    :sswitch_data_24
    .sparse-switch
        -0x7f -> :sswitch_d
        0x80 -> :sswitch_8
    .end sparse-switch
.end method

.method public static whitelist test-api unsignedMultiplyHigh(JJ)J
    .registers 9
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 1577
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->multiplyHigh(JJ)J

    move-result-wide v0

    .line 1578
    .local v0, "result":J
    const/16 v2, 0x3f

    shr-long v3, p0, v2

    and-long/2addr v3, p2

    add-long/2addr v0, v3

    .line 1579
    shr-long v2, p2, v2

    and-long/2addr v2, p0

    add-long/2addr v0, v2

    .line 1580
    return-wide v0
.end method
