.class public final Ljava/lang/Math;
.super Ljava/lang/Object;
.source "Math.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Math$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field public static final E:D = 2.718281828459045

.field public static final PI:D = 3.141592653589793

.field private static negativeZeroDoubleBits:J

.field private static negativeZeroFloatBits:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 1232
    const/high16 v0, -0x80000000

    #@2
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    #@5
    move-result v0

    #@6
    int-to-long v0, v0

    #@7
    sput-wide v0, Ljava/lang/Math;->negativeZeroFloatBits:J

    #@9
    .line 1233
    const-wide/high16 v0, -0x8000000000000000L

    #@b
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@e
    move-result-wide v0

    #@f
    sput-wide v0, Ljava/lang/Math;->negativeZeroDoubleBits:J

    #@11
    .line 89
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 94
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
    .line 1201
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
    .line 1182
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
    .line 1146
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
    .line 1163
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
    .locals 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    #@0
    .prologue
    .line 750
    add-int v0, p0, p1

    #@2
    .line 752
    .local v0, "r":I
    xor-int v1, p0, v0

    #@4
    xor-int v2, p1, v0

    #@6
    and-int/2addr v1, v2

    #@7
    if-gez v1, :cond_0

    #@9
    .line 753
    new-instance v1, Ljava/lang/ArithmeticException;

    #@b
    const-string/jumbo v2, "integer overflow"

    #@e
    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 755
    :cond_0
    return v0
.end method

.method public static addExact(JJ)J
    .locals 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    #@0
    .prologue
    .line 769
    add-long v0, p0, p2

    #@2
    .line 771
    .local v0, "r":J
    xor-long v2, p0, v0

    #@4
    xor-long v4, p2, v0

    #@6
    and-long/2addr v2, v4

    #@7
    const-wide/16 v4, 0x0

    #@9
    cmp-long v2, v2, v4

    #@b
    if-gez v2, :cond_0

    #@d
    .line 772
    new-instance v2, Ljava/lang/ArithmeticException;

    #@f
    const-string/jumbo v3, "long overflow"

    #@12
    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 774
    :cond_0
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

.method public static native ceil(D)D
.end method

.method public static copySign(DD)D
    .locals 2
    .param p0, "magnitude"    # D
    .param p2, "sign"    # D

    #@0
    .prologue
    .line 1656
    invoke-static {p0, p1, p2, p3}, Lsun/misc/FpUtils;->rawCopySign(DD)D

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
    .line 1675
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->rawCopySign(FF)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static native cos(D)D
.end method

.method public static native cosh(D)D
.end method

.method public static decrementExact(I)I
    .locals 2
    .param p0, "a"    # I

    #@0
    .prologue
    .line 905
    const/high16 v0, -0x80000000

    #@2
    if-ne p0, v0, :cond_0

    #@4
    .line 906
    new-instance v0, Ljava/lang/ArithmeticException;

    #@6
    const-string/jumbo v1, "integer overflow"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 909
    :cond_0
    add-int/lit8 v0, p0, -0x1

    #@f
    return v0
.end method

.method public static decrementExact(J)J
    .locals 2
    .param p0, "a"    # J

    #@0
    .prologue
    .line 922
    const-wide/high16 v0, -0x8000000000000000L

    #@2
    cmp-long v0, p0, v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 923
    new-instance v0, Ljava/lang/ArithmeticException;

    #@8
    const-string/jumbo v1, "long overflow"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 926
    :cond_0
    const-wide/16 v0, 0x1

    #@11
    sub-long v0, p0, v0

    #@13
    return-wide v0
.end method

.method public static native exp(D)D
.end method

.method public static native expm1(D)D
.end method

.method public static native floor(D)D
.end method

.method public static floorDiv(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I

    #@0
    .prologue
    .line 1015
    div-int v0, p0, p1

    #@2
    .line 1017
    .local v0, "r":I
    xor-int v1, p0, p1

    #@4
    if-gez v1, :cond_0

    #@6
    mul-int v1, v0, p1

    #@8
    if-eq v1, p0, :cond_0

    #@a
    .line 1018
    add-int/lit8 v0, v0, -0x1

    #@c
    .line 1020
    :cond_0
    return v0
.end method

.method public static floorDiv(JJ)J
    .locals 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    #@0
    .prologue
    .line 1049
    div-long v0, p0, p2

    #@2
    .line 1051
    .local v0, "r":J
    xor-long v2, p0, p2

    #@4
    const-wide/16 v4, 0x0

    #@6
    cmp-long v2, v2, v4

    #@8
    if-gez v2, :cond_0

    #@a
    mul-long v2, v0, p2

    #@c
    cmp-long v2, v2, p0

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 1052
    const-wide/16 v2, 0x1

    #@12
    sub-long/2addr v0, v2

    #@13
    .line 1054
    :cond_0
    return-wide v0
.end method

.method public static floorMod(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I

    #@0
    .prologue
    .line 1102
    invoke-static {p0, p1}, Ljava/lang/Math;->floorDiv(II)I

    #@3
    move-result v1

    #@4
    mul-int/2addr v1, p1

    #@5
    sub-int v0, p0, v1

    #@7
    .line 1103
    .local v0, "r":I
    return v0
.end method

.method public static floorMod(JJ)J
    .locals 2
    .param p0, "x"    # J
    .param p2, "y"    # J

    #@0
    .prologue
    .line 1129
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->floorDiv(JJ)J

    #@3
    move-result-wide v0

    #@4
    mul-long/2addr v0, p2

    #@5
    sub-long v0, p0, v0

    #@7
    return-wide v0
.end method

.method public static getExponent(D)I
    .locals 2
    .param p0, "d"    # D

    #@0
    .prologue
    .line 1711
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
    .line 1693
    invoke-static {p0}, Lsun/misc/FpUtils;->getExponent(F)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static native hypot(DD)D
.end method

.method public static incrementExact(I)I
    .locals 2
    .param p0, "a"    # I

    #@0
    .prologue
    .line 871
    const v0, 0x7fffffff

    #@3
    if-ne p0, v0, :cond_0

    #@5
    .line 872
    new-instance v0, Ljava/lang/ArithmeticException;

    #@7
    const-string/jumbo v1, "integer overflow"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 875
    :cond_0
    add-int/lit8 v0, p0, 0x1

    #@10
    return v0
.end method

.method public static incrementExact(J)J
    .locals 2
    .param p0, "a"    # J

    #@0
    .prologue
    .line 888
    const-wide v0, 0x7fffffffffffffffL

    #@5
    cmp-long v0, p0, v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 889
    new-instance v0, Ljava/lang/ArithmeticException;

    #@b
    const-string/jumbo v1, "long overflow"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 892
    :cond_0
    const-wide/16 v0, 0x1

    #@14
    add-long/2addr v0, p0

    #@15
    return-wide v0
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
    .line 1273
    cmpl-double v0, p0, p0

    #@4
    if-eqz v0, :cond_0

    #@6
    return-wide p0

    #@7
    .line 1274
    :cond_0
    cmpl-double v0, p0, v2

    #@9
    if-nez v0, :cond_1

    #@b
    cmpl-double v0, p2, v2

    #@d
    if-nez v0, :cond_1

    #@f
    .line 1275
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@12
    move-result-wide v0

    #@13
    sget-wide v2, Ljava/lang/Math;->negativeZeroDoubleBits:J

    #@15
    cmp-long v0, v0, v2

    #@17
    if-nez v0, :cond_1

    #@19
    .line 1276
    return-wide p2

    #@1a
    .line 1278
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
    .line 1250
    cmpl-float v0, p0, p0

    #@3
    if-eqz v0, :cond_0

    #@5
    return p0

    #@6
    .line 1251
    :cond_0
    cmpl-float v0, p0, v1

    #@8
    if-nez v0, :cond_1

    #@a
    cmpl-float v0, p1, v1

    #@c
    if-nez v0, :cond_1

    #@e
    .line 1252
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    #@11
    move-result v0

    #@12
    int-to-long v0, v0

    #@13
    sget-wide v2, Ljava/lang/Math;->negativeZeroFloatBits:J

    #@15
    cmp-long v0, v0, v2

    #@17
    if-nez v0, :cond_1

    #@19
    .line 1253
    return p1

    #@1a
    .line 1255
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
    .line 1215
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
    .line 1229
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
    .line 1347
    cmpl-double v0, p0, p0

    #@4
    if-eqz v0, :cond_0

    #@6
    return-wide p0

    #@7
    .line 1348
    :cond_0
    cmpl-double v0, p0, v2

    #@9
    if-nez v0, :cond_1

    #@b
    cmpl-double v0, p2, v2

    #@d
    if-nez v0, :cond_1

    #@f
    .line 1349
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@12
    move-result-wide v0

    #@13
    sget-wide v2, Ljava/lang/Math;->negativeZeroDoubleBits:J

    #@15
    cmp-long v0, v0, v2

    #@17
    if-nez v0, :cond_1

    #@19
    .line 1350
    return-wide p2

    #@1a
    .line 1352
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
    .line 1324
    cmpl-float v0, p0, p0

    #@3
    if-eqz v0, :cond_0

    #@5
    return p0

    #@6
    .line 1325
    :cond_0
    cmpl-float v0, p0, v1

    #@8
    if-nez v0, :cond_1

    #@a
    cmpl-float v0, p1, v1

    #@c
    if-nez v0, :cond_1

    #@e
    .line 1326
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@11
    move-result v0

    #@12
    int-to-long v0, v0

    #@13
    sget-wide v2, Ljava/lang/Math;->negativeZeroFloatBits:J

    #@15
    cmp-long v0, v0, v2

    #@17
    if-nez v0, :cond_1

    #@19
    .line 1327
    return p1

    #@1a
    .line 1329
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
    .line 1292
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
    .line 1306
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
    .locals 6
    .param p0, "x"    # I
    .param p1, "y"    # I

    #@0
    .prologue
    .line 828
    int-to-long v2, p0

    #@1
    int-to-long v4, p1

    #@2
    mul-long v0, v2, v4

    #@4
    .line 829
    .local v0, "r":J
    long-to-int v2, v0

    #@5
    int-to-long v2, v2

    #@6
    cmp-long v2, v2, v0

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 830
    new-instance v2, Ljava/lang/ArithmeticException;

    #@c
    const-string/jumbo v3, "integer overflow"

    #@f
    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@12
    throw v2

    #@13
    .line 832
    :cond_0
    long-to-int v2, v0

    #@14
    return v2
.end method

.method public static multiplyExact(JJ)J
    .locals 12
    .param p0, "x"    # J
    .param p2, "y"    # J

    #@0
    .prologue
    const-wide/16 v10, 0x0

    #@2
    .line 846
    mul-long v4, p0, p2

    #@4
    .line 847
    .local v4, "r":J
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    #@7
    move-result-wide v0

    #@8
    .line 848
    .local v0, "ax":J
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    #@b
    move-result-wide v2

    #@c
    .line 849
    .local v2, "ay":J
    or-long v6, v0, v2

    #@e
    const/16 v8, 0x1f

    #@10
    ushr-long/2addr v6, v8

    #@11
    cmp-long v6, v6, v10

    #@13
    if-eqz v6, :cond_2

    #@15
    .line 853
    cmp-long v6, p2, v10

    #@17
    if-eqz v6, :cond_1

    #@19
    div-long v6, v4, p2

    #@1b
    cmp-long v6, v6, p0

    #@1d
    if-eqz v6, :cond_1

    #@1f
    .line 855
    :cond_0
    new-instance v6, Ljava/lang/ArithmeticException;

    #@21
    const-string/jumbo v7, "long overflow"

    #@24
    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@27
    throw v6

    #@28
    .line 854
    :cond_1
    const-wide/high16 v6, -0x8000000000000000L

    #@2a
    cmp-long v6, p0, v6

    #@2c
    if-nez v6, :cond_2

    #@2e
    const-wide/16 v6, -0x1

    #@30
    cmp-long v6, p2, v6

    #@32
    if-eqz v6, :cond_0

    #@34
    .line 858
    :cond_2
    return-wide v4
.end method

.method public static negateExact(I)I
    .locals 2
    .param p0, "a"    # I

    #@0
    .prologue
    .line 939
    const/high16 v0, -0x80000000

    #@2
    if-ne p0, v0, :cond_0

    #@4
    .line 940
    new-instance v0, Ljava/lang/ArithmeticException;

    #@6
    const-string/jumbo v1, "integer overflow"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 943
    :cond_0
    neg-int v0, p0

    #@e
    return v0
.end method

.method public static negateExact(J)J
    .locals 2
    .param p0, "a"    # J

    #@0
    .prologue
    .line 956
    const-wide/high16 v0, -0x8000000000000000L

    #@2
    cmp-long v0, p0, v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 957
    new-instance v0, Ljava/lang/ArithmeticException;

    #@8
    const-string/jumbo v1, "long overflow"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 960
    :cond_0
    neg-long v0, p0

    #@10
    return-wide v0
.end method

.method public static nextAfter(DD)D
    .locals 2
    .param p0, "start"    # D
    .param p2, "direction"    # D

    #@0
    .prologue
    .line 1755
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
    .line 1798
    invoke-static {p0, p1, p2}, Lsun/misc/FpUtils;->nextAfter(FD)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static nextDown(D)D
    .locals 6
    .param p0, "d"    # D

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 1884
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

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
    .line 1885
    :cond_0
    return-wide p0

    #@f
    .line 1887
    :cond_1
    cmpl-double v0, p0, v4

    #@11
    if-nez v0, :cond_2

    #@13
    .line 1888
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    #@18
    return-wide v0

    #@19
    .line 1890
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@1c
    move-result-wide v2

    #@1d
    .line 1891
    cmpl-double v0, p0, v4

    #@1f
    if-lez v0, :cond_3

    #@21
    const-wide/16 v0, -0x1

    #@23
    .line 1890
    :goto_0
    add-long/2addr v0, v2

    #@24
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@27
    move-result-wide v0

    #@28
    return-wide v0

    #@29
    .line 1891
    :cond_3
    const-wide/16 v0, 0x1

    #@2b
    goto :goto_0
.end method

.method public static nextDown(F)F
    .locals 3
    .param p0, "f"    # F

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1921
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

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
    .line 1922
    :cond_0
    return p0

    #@e
    .line 1924
    :cond_1
    cmpl-float v0, p0, v2

    #@10
    if-nez v0, :cond_2

    #@12
    .line 1925
    const v0, -0x7fffffff

    #@15
    return v0

    #@16
    .line 1927
    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@19
    move-result v1

    #@1a
    .line 1928
    cmpl-float v0, p0, v2

    #@1c
    if-lez v0, :cond_3

    #@1e
    const/4 v0, -0x1

    #@1f
    .line 1927
    :goto_0
    add-int/2addr v0, v1

    #@20
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@23
    move-result v0

    #@24
    return v0

    #@25
    .line 1928
    :cond_3
    const/4 v0, 0x1

    #@26
    goto :goto_0
.end method

.method public static nextUp(D)D
    .locals 2
    .param p0, "d"    # D

    #@0
    .prologue
    .line 1827
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
    .line 1856
    invoke-static {p0}, Lsun/misc/FpUtils;->nextUp(F)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static native pow(DD)D
.end method

.method public static random()D
    .locals 2

    #@0
    .prologue
    .line 719
    invoke-static {}, Ljava/lang/Math$NoImagePreloadHolder;->-get0()Ljava/util/Random;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public static randomIntInternal()I
    .locals 1

    #@0
    .prologue
    .line 736
    invoke-static {}, Ljava/lang/Math$NoImagePreloadHolder;->-get0()Ljava/util/Random;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static native rint(D)D
.end method

.method public static round(F)I
    .locals 6
    .param p0, "a"    # F

    #@0
    .prologue
    .line 614
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@3
    move-result v1

    #@4
    .line 615
    .local v1, "intBits":I
    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    #@6
    and-int/2addr v4, v1

    #@7
    shr-int/lit8 v0, v4, 0x17

    #@9
    .line 617
    .local v0, "biasedExp":I
    rsub-int v3, v0, 0x95

    #@b
    .line 619
    .local v3, "shift":I
    and-int/lit8 v4, v3, -0x20

    #@d
    if-nez v4, :cond_1

    #@f
    .line 621
    const v4, 0x7fffff

    #@12
    and-int/2addr v4, v1

    #@13
    .line 622
    const/high16 v5, 0x800000

    #@15
    .line 621
    or-int v2, v4, v5

    #@17
    .line 623
    .local v2, "r":I
    if-gez v1, :cond_0

    #@19
    .line 624
    neg-int v2, v2

    #@1a
    .line 632
    :cond_0
    shr-int v4, v2, v3

    #@1c
    add-int/lit8 v4, v4, 0x1

    #@1e
    shr-int/lit8 v4, v4, 0x1

    #@20
    return v4

    #@21
    .line 638
    .end local v2    # "r":I
    :cond_1
    float-to-int v4, p0

    #@22
    return v4
.end method

.method public static round(D)J
    .locals 14
    .param p0, "a"    # D

    #@0
    .prologue
    const-wide/16 v12, 0x0

    #@2
    .line 663
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@5
    move-result-wide v2

    #@6
    .line 664
    .local v2, "longBits":J
    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@8
    and-long/2addr v8, v2

    #@9
    .line 665
    const/16 v10, 0x34

    #@b
    .line 664
    shr-long v0, v8, v10

    #@d
    .line 666
    .local v0, "biasedExp":J
    const-wide/16 v8, 0x432

    #@f
    sub-long v6, v8, v0

    #@11
    .line 668
    .local v6, "shift":J
    const-wide/16 v8, -0x40

    #@13
    and-long/2addr v8, v6

    #@14
    cmp-long v8, v8, v12

    #@16
    if-nez v8, :cond_1

    #@18
    .line 670
    const-wide v8, 0xfffffffffffffL

    #@1d
    and-long/2addr v8, v2

    #@1e
    .line 671
    const-wide/high16 v10, 0x10000000000000L

    #@20
    .line 670
    or-long v4, v8, v10

    #@22
    .line 672
    .local v4, "r":J
    cmp-long v8, v2, v12

    #@24
    if-gez v8, :cond_0

    #@26
    .line 673
    neg-long v4, v4

    #@27
    .line 681
    :cond_0
    long-to-int v8, v6

    #@28
    shr-long v8, v4, v8

    #@2a
    const-wide/16 v10, 0x1

    #@2c
    add-long/2addr v8, v10

    #@2d
    const/4 v10, 0x1

    #@2e
    shr-long/2addr v8, v10

    #@2f
    return-wide v8

    #@30
    .line 687
    .end local v4    # "r":J
    :cond_1
    double-to-long v8, p0

    #@31
    return-wide v8
.end method

.method public static scalb(DI)D
    .locals 2
    .param p0, "d"    # D
    .param p2, "scaleFactor"    # I

    #@0
    .prologue
    .line 1963
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
    .line 1997
    invoke-static {p0, p1}, Lsun/misc/FpUtils;->scalb(FI)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static setRandomSeedInternal(J)V
    .locals 2
    .param p0, "seed"    # J

    #@0
    .prologue
    .line 729
    invoke-static {}, Ljava/lang/Math$NoImagePreloadHolder;->-get0()Ljava/util/Random;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0, p1}, Ljava/util/Random;->setSeed(J)V

    #@7
    .line 728
    return-void
.end method

.method public static signum(D)D
    .locals 2
    .param p0, "d"    # D

    #@0
    .prologue
    .line 1427
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
    .line 1448
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
    .locals 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    #@0
    .prologue
    .line 788
    sub-int v0, p0, p1

    #@2
    .line 791
    .local v0, "r":I
    xor-int v1, p0, p1

    #@4
    xor-int v2, p0, v0

    #@6
    and-int/2addr v1, v2

    #@7
    if-gez v1, :cond_0

    #@9
    .line 792
    new-instance v1, Ljava/lang/ArithmeticException;

    #@b
    const-string/jumbo v2, "integer overflow"

    #@e
    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 794
    :cond_0
    return v0
.end method

.method public static subtractExact(JJ)J
    .locals 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    #@0
    .prologue
    .line 808
    sub-long v0, p0, p2

    #@2
    .line 811
    .local v0, "r":J
    xor-long v2, p0, p2

    #@4
    xor-long v4, p0, v0

    #@6
    and-long/2addr v2, v4

    #@7
    const-wide/16 v4, 0x0

    #@9
    cmp-long v2, v2, v4

    #@b
    if-gez v2, :cond_0

    #@d
    .line 812
    new-instance v2, Ljava/lang/ArithmeticException;

    #@f
    const-string/jumbo v3, "long overflow"

    #@12
    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 814
    :cond_0
    return-wide v0
.end method

.method public static native tan(D)D
.end method

.method public static native tanh(D)D
.end method

.method public static toDegrees(D)D
    .locals 4
    .param p0, "angrad"    # D

    #@0
    .prologue
    .line 224
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
    .line 973
    long-to-int v0, p0

    #@1
    int-to-long v0, v0

    #@2
    cmp-long v0, v0, p0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 974
    new-instance v0, Ljava/lang/ArithmeticException;

    #@8
    const-string/jumbo v1, "integer overflow"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 976
    :cond_0
    long-to-int v0, p0

    #@10
    return v0
.end method

.method public static toRadians(D)D
    .locals 4
    .param p0, "angdeg"    # D

    #@0
    .prologue
    .line 208
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
    .line 1379
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
    .line 1406
    invoke-static {p0}, Lsun/misc/FpUtils;->ulp(F)F

    #@3
    move-result v0

    #@4
    return v0
.end method
