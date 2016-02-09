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


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static native IEEEremainder(DD)D
.end method

.method public static abs(D)D
    .locals 4
    .param p0, "d"    # D

    #@0
    .prologue
    .line 60
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@3
    move-result-wide v0

    #@4
    const-wide v2, 0x7fffffffffffffffL

    #@9
    and-long/2addr v0, v2

    #@a
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@d
    move-result-wide v0

    #@e
    return-wide v0
.end method

.method public static abs(F)F
    .locals 2
    .param p0, "f"    # F

    #@0
    .prologue
    .line 75
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@3
    move-result v0

    #@4
    const v1, 0x7fffffff

    #@7
    and-int/2addr v0, v1

    #@8
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public static abs(I)I
    .locals 0
    .param p0, "i"    # I

    #@0
    .prologue
    .line 85
    if-ltz p0, :cond_0

    #@2
    .end local p0    # "i":I
    :goto_0
    return p0

    #@3
    .restart local p0    # "i":I
    :cond_0
    neg-int p0, p0

    #@4
    goto :goto_0
.end method

.method public static abs(J)J
    .locals 2
    .param p0, "l"    # J

    #@0
    .prologue
    .line 93
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p0, v0

    #@4
    if-ltz v0, :cond_0

    #@6
    .end local p0    # "l":J
    :goto_0
    return-wide p0

    #@7
    .restart local p0    # "l":J
    :cond_0
    neg-long p0, p0

    #@8
    goto :goto_0
.end method

.method public static native acos(D)D
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
    .locals 8
    .param p0, "magnitude"    # D
    .param p2, "sign"    # D

    #@0
    .prologue
    .line 1025
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@3
    move-result-wide v0

    #@4
    .line 1026
    .local v0, "magnitudeBits":J
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@7
    move-result-wide v2

    #@8
    .line 1027
    .local v2, "signBits":J
    const-wide v4, 0x7fffffffffffffffL

    #@d
    and-long/2addr v4, v0

    #@e
    const-wide/high16 v6, -0x8000000000000000L

    #@10
    and-long/2addr v6, v2

    #@11
    or-long v0, v4, v6

    #@13
    .line 1028
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@16
    move-result-wide v4

    #@17
    return-wide v4
.end method

.method public static copySign(FF)F
    .locals 4
    .param p0, "magnitude"    # F
    .param p1, "sign"    # F

    #@0
    .prologue
    .line 1038
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@3
    move-result v0

    #@4
    .line 1039
    .local v0, "magnitudeBits":I
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@7
    move-result v1

    #@8
    .line 1040
    .local v1, "signBits":I
    const v2, 0x7fffffff

    #@b
    and-int/2addr v2, v0

    #@c
    const/high16 v3, -0x80000000

    #@e
    and-int/2addr v3, v1

    #@f
    or-int v0, v2, v3

    #@11
    .line 1041
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@14
    move-result v2

    #@15
    return v2
.end method

.method public static native cos(D)D
.end method

.method public static native cosh(D)D
.end method

.method public static native exp(D)D
.end method

.method public static native expm1(D)D
.end method

.method public static native floor(D)D
.end method

.method public static getExponent(D)I
    .locals 6
    .param p0, "d"    # D

    #@0
    .prologue
    .line 1059
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@3
    move-result-wide v0

    #@4
    .line 1060
    .local v0, "bits":J
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@6
    and-long/2addr v2, v0

    #@7
    const/16 v4, 0x34

    #@9
    shr-long v0, v2, v4

    #@b
    .line 1061
    long-to-int v2, v0

    #@c
    add-int/lit16 v2, v2, -0x3ff

    #@e
    return v2
.end method

.method public static getExponent(F)I
    .locals 2
    .param p0, "f"    # F

    #@0
    .prologue
    .line 1049
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@3
    move-result v0

    #@4
    .line 1050
    .local v0, "bits":I
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    #@6
    and-int/2addr v1, v0

    #@7
    shr-int/lit8 v0, v1, 0x17

    #@9
    .line 1051
    add-int/lit8 v1, v0, -0x7f

    #@b
    return v1
.end method

.method public static native hypot(DD)D
.end method

.method public static native log(D)D
.end method

.method public static native log10(D)D
.end method

.method public static native log1p(D)D
.end method

.method public static max(DD)D
    .locals 4
    .param p0, "d1"    # D
    .param p2, "d2"    # D

    #@0
    .prologue
    .line 455
    cmpl-double v0, p0, p2

    #@2
    if-lez v0, :cond_0

    #@4
    .line 456
    return-wide p0

    #@5
    .line 458
    :cond_0
    cmpg-double v0, p0, p2

    #@7
    if-gez v0, :cond_1

    #@9
    .line 459
    return-wide p2

    #@a
    .line 462
    :cond_1
    cmpl-double v0, p0, p2

    #@c
    if-eqz v0, :cond_2

    #@e
    .line 463
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@10
    return-wide v0

    #@11
    .line 467
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@14
    move-result-wide v0

    #@15
    const-wide/16 v2, 0x0

    #@17
    cmp-long v0, v0, v2

    #@19
    if-eqz v0, :cond_3

    #@1b
    .line 468
    return-wide p2

    #@1c
    .line 470
    :cond_3
    const-wide/16 v0, 0x0

    #@1e
    return-wide v0
.end method

.method public static max(FF)F
    .locals 1
    .param p0, "f1"    # F
    .param p1, "f2"    # F

    #@0
    .prologue
    .line 486
    cmpl-float v0, p0, p1

    #@2
    if-lez v0, :cond_0

    #@4
    .line 487
    return p0

    #@5
    .line 489
    :cond_0
    cmpg-float v0, p0, p1

    #@7
    if-gez v0, :cond_1

    #@9
    .line 490
    return p1

    #@a
    .line 493
    :cond_1
    cmpl-float v0, p0, p1

    #@c
    if-eqz v0, :cond_2

    #@e
    .line 494
    const/high16 v0, 0x7fc00000    # NaNf

    #@10
    return v0

    #@11
    .line 498
    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_3

    #@17
    .line 499
    return p1

    #@18
    .line 501
    :cond_3
    const/4 v0, 0x0

    #@19
    return v0
.end method

.method public static max(II)I
    .locals 0
    .param p0, "i1"    # I
    .param p1, "i2"    # I

    #@0
    .prologue
    .line 509
    if-le p0, p1, :cond_0

    #@2
    .end local p0    # "i1":I
    :goto_0
    return p0

    #@3
    .restart local p0    # "i1":I
    :cond_0
    move p0, p1

    #@4
    goto :goto_0
.end method

.method public static max(JJ)J
    .locals 2
    .param p0, "l1"    # J
    .param p2, "l2"    # J

    #@0
    .prologue
    .line 517
    cmp-long v0, p0, p2

    #@2
    if-lez v0, :cond_0

    #@4
    .end local p0    # "l1":J
    :goto_0
    return-wide p0

    #@5
    .restart local p0    # "l1":J
    :cond_0
    move-wide p0, p2

    #@6
    goto :goto_0
.end method

.method public static min(DD)D
    .locals 4
    .param p0, "d1"    # D
    .param p2, "d2"    # D

    #@0
    .prologue
    .line 533
    cmpl-double v0, p0, p2

    #@2
    if-lez v0, :cond_0

    #@4
    .line 534
    return-wide p2

    #@5
    .line 536
    :cond_0
    cmpg-double v0, p0, p2

    #@7
    if-gez v0, :cond_1

    #@9
    .line 537
    return-wide p0

    #@a
    .line 540
    :cond_1
    cmpl-double v0, p0, p2

    #@c
    if-eqz v0, :cond_2

    #@e
    .line 541
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@10
    return-wide v0

    #@11
    .line 545
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@14
    move-result-wide v0

    #@15
    const-wide/high16 v2, -0x8000000000000000L

    #@17
    cmp-long v0, v0, v2

    #@19
    if-nez v0, :cond_3

    #@1b
    .line 546
    const-wide/high16 v0, -0x8000000000000000L

    #@1d
    return-wide v0

    #@1e
    .line 548
    :cond_3
    return-wide p2
.end method

.method public static min(FF)F
    .locals 2
    .param p0, "f1"    # F
    .param p1, "f2"    # F

    #@0
    .prologue
    .line 564
    cmpl-float v0, p0, p1

    #@2
    if-lez v0, :cond_0

    #@4
    .line 565
    return p1

    #@5
    .line 567
    :cond_0
    cmpg-float v0, p0, p1

    #@7
    if-gez v0, :cond_1

    #@9
    .line 568
    return p0

    #@a
    .line 571
    :cond_1
    cmpl-float v0, p0, p1

    #@c
    if-eqz v0, :cond_2

    #@e
    .line 572
    const/high16 v0, 0x7fc00000    # NaNf

    #@10
    return v0

    #@11
    .line 576
    :cond_2
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@14
    move-result v0

    #@15
    const/high16 v1, -0x80000000

    #@17
    if-ne v0, v1, :cond_3

    #@19
    .line 577
    const/high16 v0, -0x80000000

    #@1b
    return v0

    #@1c
    .line 579
    :cond_3
    return p1
.end method

.method public static min(II)I
    .locals 0
    .param p0, "i1"    # I
    .param p1, "i2"    # I

    #@0
    .prologue
    .line 587
    if-ge p0, p1, :cond_0

    #@2
    .end local p0    # "i1":I
    :goto_0
    return p0

    #@3
    .restart local p0    # "i1":I
    :cond_0
    move p0, p1

    #@4
    goto :goto_0
.end method

.method public static min(JJ)J
    .locals 2
    .param p0, "l1"    # J
    .param p2, "l2"    # J

    #@0
    .prologue
    .line 595
    cmp-long v0, p0, p2

    #@2
    if-gez v0, :cond_0

    #@4
    .end local p0    # "l1":J
    :goto_0
    return-wide p0

    #@5
    .restart local p0    # "l1":J
    :cond_0
    move-wide p0, p2

    #@6
    goto :goto_0
.end method

.method public static nextAfter(DD)D
    .locals 4
    .param p0, "start"    # D
    .param p2, "direction"    # D

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 1069
    cmpl-double v0, p0, v2

    #@4
    if-nez v0, :cond_0

    #@6
    cmpl-double v0, p2, v2

    #@8
    if-nez v0, :cond_0

    #@a
    .line 1070
    return-wide p2

    #@b
    .line 1072
    :cond_0
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->nextafter(DD)D

    #@e
    move-result-wide v0

    #@f
    return-wide v0
.end method

.method public static nextAfter(FD)F
    .locals 9
    .param p0, "start"    # F
    .param p1, "direction"    # D

    #@0
    .prologue
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    #@3
    const/4 v7, 0x1

    #@4
    const v2, -0x800001

    #@7
    const v6, -0x7fffffff

    #@a
    const/4 v0, 0x0

    #@b
    .line 1080
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    #@e
    move-result v3

    #@f
    if-nez v3, :cond_0

    #@11
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_1

    #@17
    .line 1081
    :cond_0
    const/high16 v0, 0x7fc00000    # NaNf

    #@19
    return v0

    #@1a
    .line 1083
    :cond_1
    cmpl-float v3, p0, v0

    #@1c
    if-nez v3, :cond_2

    #@1e
    const-wide/16 v4, 0x0

    #@20
    cmpl-double v3, p1, v4

    #@22
    if-nez v3, :cond_2

    #@24
    .line 1084
    double-to-float v0, p1

    #@25
    return v0

    #@26
    .line 1086
    :cond_2
    cmpl-float v3, p0, v7

    #@28
    if-nez v3, :cond_4

    #@2a
    float-to-double v4, p0

    #@2b
    cmpg-double v3, p1, v4

    #@2d
    if-gez v3, :cond_4

    #@2f
    .line 1088
    :cond_3
    cmpl-float v1, p0, v0

    #@31
    if-lez v1, :cond_6

    #@33
    :goto_0
    return v0

    #@34
    .line 1087
    :cond_4
    cmpl-float v3, p0, v6

    #@36
    if-nez v3, :cond_5

    #@38
    float-to-double v4, p0

    #@39
    cmpl-double v3, p1, v4

    #@3b
    if-gtz v3, :cond_3

    #@3d
    .line 1090
    :cond_5
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    #@40
    move-result v3

    #@41
    if-eqz v3, :cond_8

    #@43
    float-to-double v4, p0

    #@44
    cmpl-double v3, p1, v4

    #@46
    if-eqz v3, :cond_8

    #@48
    .line 1091
    cmpl-float v0, p0, v0

    #@4a
    if-lez v0, :cond_7

    #@4c
    move v0, v1

    #@4d
    :goto_1
    return v0

    #@4e
    .line 1088
    :cond_6
    const/high16 v0, -0x80000000

    #@50
    goto :goto_0

    #@51
    :cond_7
    move v0, v2

    #@52
    .line 1091
    goto :goto_1

    #@53
    .line 1093
    :cond_8
    cmpl-float v1, p0, v1

    #@55
    if-nez v1, :cond_a

    #@57
    float-to-double v4, p0

    #@58
    cmpl-double v1, p1, v4

    #@5a
    if-lez v1, :cond_a

    #@5c
    .line 1095
    :cond_9
    cmpl-float v0, p0, v0

    #@5e
    if-lez v0, :cond_c

    #@60
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    #@62
    :goto_2
    return v0

    #@63
    .line 1094
    :cond_a
    cmpl-float v1, p0, v2

    #@65
    if-nez v1, :cond_b

    #@67
    float-to-double v2, p0

    #@68
    cmpg-double v1, p1, v2

    #@6a
    if-ltz v1, :cond_9

    #@6c
    .line 1098
    :cond_b
    float-to-double v2, p0

    #@6d
    cmpl-double v1, p1, v2

    #@6f
    if-lez v1, :cond_f

    #@71
    .line 1099
    cmpl-float v1, p0, v0

    #@73
    if-lez v1, :cond_d

    #@75
    .line 1100
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    #@78
    move-result v0

    #@79
    add-int/lit8 v0, v0, 0x1

    #@7b
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@7e
    move-result v0

    #@7f
    return v0

    #@80
    .line 1096
    :cond_c
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    #@82
    goto :goto_2

    #@83
    .line 1102
    :cond_d
    cmpg-float v0, p0, v0

    #@85
    if-gez v0, :cond_e

    #@87
    .line 1103
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    #@8a
    move-result v0

    #@8b
    add-int/lit8 v0, v0, -0x1

    #@8d
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@90
    move-result v0

    #@91
    return v0

    #@92
    .line 1105
    :cond_e
    return v7

    #@93
    .line 1107
    :cond_f
    float-to-double v2, p0

    #@94
    cmpg-double v1, p1, v2

    #@96
    if-gez v1, :cond_12

    #@98
    .line 1108
    cmpl-float v1, p0, v0

    #@9a
    if-lez v1, :cond_10

    #@9c
    .line 1109
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    #@9f
    move-result v0

    #@a0
    add-int/lit8 v0, v0, -0x1

    #@a2
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@a5
    move-result v0

    #@a6
    return v0

    #@a7
    .line 1111
    :cond_10
    cmpg-float v0, p0, v0

    #@a9
    if-gez v0, :cond_11

    #@ab
    .line 1112
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    #@ae
    move-result v0

    #@af
    add-int/lit8 v0, v0, 0x1

    #@b1
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@b4
    move-result v0

    #@b5
    return v0

    #@b6
    .line 1114
    :cond_11
    return v6

    #@b7
    .line 1116
    :cond_12
    double-to-float v0, p1

    #@b8
    return v0
.end method

.method public static nextUp(D)D
    .locals 8
    .param p0, "d"    # D

    #@0
    .prologue
    const-wide/16 v6, 0x1

    #@2
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@4
    const-wide/16 v2, 0x0

    #@6
    .line 1124
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1125
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@e
    return-wide v0

    #@f
    .line 1127
    :cond_0
    cmpl-double v0, p0, v4

    #@11
    if-nez v0, :cond_1

    #@13
    .line 1128
    return-wide v4

    #@14
    .line 1130
    :cond_1
    cmpl-double v0, p0, v2

    #@16
    if-nez v0, :cond_2

    #@18
    .line 1131
    const-wide/16 v0, 0x1

    #@1a
    return-wide v0

    #@1b
    .line 1132
    :cond_2
    cmpl-double v0, p0, v2

    #@1d
    if-lez v0, :cond_3

    #@1f
    .line 1133
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@22
    move-result-wide v0

    #@23
    add-long/2addr v0, v6

    #@24
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@27
    move-result-wide v0

    #@28
    return-wide v0

    #@29
    .line 1135
    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@2c
    move-result-wide v0

    #@2d
    sub-long/2addr v0, v6

    #@2e
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@31
    move-result-wide v0

    #@32
    return-wide v0
.end method

.method public static nextUp(F)F
    .locals 3
    .param p0, "f"    # F

    #@0
    .prologue
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    #@2
    const/4 v1, 0x0

    #@3
    .line 1144
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1145
    const/high16 v0, 0x7fc00000    # NaNf

    #@b
    return v0

    #@c
    .line 1147
    :cond_0
    cmpl-float v0, p0, v2

    #@e
    if-nez v0, :cond_1

    #@10
    .line 1148
    return v2

    #@11
    .line 1150
    :cond_1
    cmpl-float v0, p0, v1

    #@13
    if-nez v0, :cond_2

    #@15
    .line 1151
    const/4 v0, 0x1

    #@16
    return v0

    #@17
    .line 1152
    :cond_2
    cmpl-float v0, p0, v1

    #@19
    if-lez v0, :cond_3

    #@1b
    .line 1153
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    #@1e
    move-result v0

    #@1f
    add-int/lit8 v0, v0, 0x1

    #@21
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@24
    move-result v0

    #@25
    return v0

    #@26
    .line 1155
    :cond_3
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    #@29
    move-result v0

    #@2a
    add-int/lit8 v0, v0, -0x1

    #@2c
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@2f
    move-result v0

    #@30
    return v0
.end method

.method private static native nextafter(DD)D
.end method

.method public static native pow(DD)D
.end method

.method public static random()D
    .locals 2

    #@0
    .prologue
    .line 881
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
    .line 898
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
    .locals 2
    .param p0, "f"    # F

    #@0
    .prologue
    .line 704
    cmpl-float v0, p0, p0

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 705
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 707
    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    #@8
    add-float/2addr v0, p0

    #@9
    float-to-double v0, v0

    #@a
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    #@d
    move-result-wide v0

    #@e
    double-to-int v0, v0

    #@f
    return v0
.end method

.method public static round(D)J
    .locals 2
    .param p0, "d"    # D

    #@0
    .prologue
    .line 677
    cmpl-double v0, p0, p0

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 678
    const-wide/16 v0, 0x0

    #@6
    return-wide v0

    #@7
    .line 680
    :cond_0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    #@9
    add-double/2addr v0, p0

    #@a
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    #@d
    move-result-wide v0

    #@e
    double-to-long v0, v0

    #@f
    return-wide v0
.end method

.method public static scalb(DI)D
    .locals 20
    .param p0, "d"    # D
    .param p2, "scaleFactor"    # I

    #@0
    .prologue
    .line 1164
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z

    #@3
    move-result v13

    #@4
    if-nez v13, :cond_0

    #@6
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isInfinite(D)Z

    #@9
    move-result v13

    #@a
    if-nez v13, :cond_0

    #@c
    const-wide/16 v14, 0x0

    #@e
    cmpl-double v13, p0, v14

    #@10
    if-nez v13, :cond_1

    #@12
    .line 1165
    :cond_0
    return-wide p0

    #@13
    .line 1168
    :cond_1
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@16
    move-result-wide v2

    #@17
    .line 1170
    .local v2, "bits":J
    const-wide/high16 v14, -0x8000000000000000L

    #@19
    and-long v10, v2, v14

    #@1b
    .line 1172
    .local v10, "sign":J
    const-wide/high16 v14, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@1d
    and-long/2addr v14, v2

    #@1e
    const/16 v13, 0x34

    #@20
    shr-long/2addr v14, v13

    #@21
    .line 1173
    const-wide/16 v16, 0x3ff

    #@23
    .line 1172
    sub-long v14, v14, v16

    #@25
    .line 1173
    move/from16 v0, p2

    #@27
    int-to-long v0, v0

    #@28
    move-wide/from16 v16, v0

    #@2a
    .line 1172
    add-long v6, v14, v16

    #@2c
    .line 1176
    .local v6, "factor":J
    const-wide v14, 0x7fffffffffffffffL

    #@31
    and-long/2addr v14, v2

    #@32
    invoke-static {v14, v15}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    #@35
    move-result v13

    #@36
    add-int/lit8 v12, v13, -0xc

    #@38
    .line 1178
    .local v12, "subNormalFactor":I
    if-gez v12, :cond_2

    #@3a
    .line 1180
    const/4 v12, 0x0

    #@3b
    .line 1184
    :goto_0
    const-wide/16 v14, 0x3ff

    #@3d
    cmp-long v13, v6, v14

    #@3f
    if-lez v13, :cond_4

    #@41
    .line 1185
    const-wide/16 v14, 0x0

    #@43
    cmpl-double v13, p0, v14

    #@45
    if-lez v13, :cond_3

    #@47
    const-wide/high16 v14, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@49
    :goto_1
    return-wide v14

    #@4a
    .line 1182
    :cond_2
    int-to-long v14, v12

    #@4b
    sub-long/2addr v6, v14

    #@4c
    goto :goto_0

    #@4d
    .line 1185
    :cond_3
    const-wide/high16 v14, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@4f
    goto :goto_1

    #@50
    .line 1190
    :cond_4
    const-wide/16 v14, -0x3ff

    #@52
    cmp-long v13, v6, v14

    #@54
    if-gtz v13, :cond_6

    #@56
    .line 1192
    const-wide/16 v14, 0x3ff

    #@58
    add-long/2addr v14, v6

    #@59
    int-to-long v0, v12

    #@5a
    move-wide/from16 v16, v0

    #@5c
    add-long v4, v14, v16

    #@5e
    .line 1193
    .local v4, "digits":J
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    #@61
    move-result-wide v14

    #@62
    const-wide/high16 v16, 0x10000000000000L

    #@64
    cmpg-double v13, v14, v16

    #@66
    if-gez v13, :cond_5

    #@68
    .line 1195
    const-wide v14, 0xfffffffffffffL

    #@6d
    and-long/2addr v14, v2

    #@6e
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->shiftLongBits(JJ)J

    #@71
    move-result-wide v8

    #@72
    .line 1211
    .end local v4    # "digits":J
    .local v8, "result":J
    :goto_2
    or-long v14, v8, v10

    #@74
    invoke-static {v14, v15}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@77
    move-result-wide v14

    #@78
    return-wide v14

    #@79
    .line 1198
    .end local v8    # "result":J
    .restart local v4    # "digits":J
    :cond_5
    const-wide v14, 0xfffffffffffffL

    #@7e
    and-long/2addr v14, v2

    #@7f
    const-wide/high16 v16, 0x10000000000000L

    #@81
    or-long v14, v14, v16

    #@83
    const-wide/16 v16, 0x1

    #@85
    sub-long v16, v4, v16

    #@87
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->shiftLongBits(JJ)J

    #@8a
    move-result-wide v8

    #@8b
    .restart local v8    # "result":J
    goto :goto_2

    #@8c
    .line 1201
    .end local v4    # "digits":J
    .end local v8    # "result":J
    :cond_6
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    #@8f
    move-result-wide v14

    #@90
    const-wide/high16 v16, 0x10000000000000L

    #@92
    cmpl-double v13, v14, v16

    #@94
    if-ltz v13, :cond_7

    #@96
    .line 1203
    const-wide/16 v14, 0x3ff

    #@98
    add-long/2addr v14, v6

    #@99
    const/16 v13, 0x34

    #@9b
    shl-long/2addr v14, v13

    #@9c
    .line 1204
    const-wide v16, 0xfffffffffffffL

    #@a1
    and-long v16, v16, v2

    #@a3
    .line 1203
    or-long v8, v14, v16

    #@a5
    .restart local v8    # "result":J
    goto :goto_2

    #@a6
    .line 1207
    .end local v8    # "result":J
    :cond_7
    const-wide/16 v14, 0x3ff

    #@a8
    add-long/2addr v14, v6

    #@a9
    const/16 v13, 0x34

    #@ab
    shl-long/2addr v14, v13

    #@ac
    .line 1208
    add-int/lit8 v13, v12, 0x1

    #@ae
    shl-long v16, v2, v13

    #@b0
    const-wide v18, 0xfffffffffffffL

    #@b5
    and-long v16, v16, v18

    #@b7
    .line 1207
    or-long v8, v14, v16

    #@b9
    .restart local v8    # "result":J
    goto :goto_2
.end method

.method public static scalb(FI)F
    .locals 10
    .param p0, "d"    # F
    .param p1, "scaleFactor"    # I

    #@0
    .prologue
    const/high16 v9, 0x800000

    #@2
    const/4 v7, 0x0

    #@3
    const v8, 0x7fffff

    #@6
    .line 1219
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    #@9
    move-result v6

    #@a
    if-nez v6, :cond_0

    #@c
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    #@f
    move-result v6

    #@10
    if-nez v6, :cond_0

    #@12
    cmpl-float v6, p0, v7

    #@14
    if-nez v6, :cond_1

    #@16
    .line 1220
    :cond_0
    return p0

    #@17
    .line 1222
    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    #@1a
    move-result v0

    #@1b
    .line 1223
    .local v0, "bits":I
    const/high16 v6, -0x80000000

    #@1d
    and-int v4, v0, v6

    #@1f
    .line 1224
    .local v4, "sign":I
    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    #@21
    and-int/2addr v6, v0

    #@22
    shr-int/lit8 v6, v6, 0x17

    #@24
    add-int/lit8 v6, v6, -0x7f

    #@26
    add-int v2, v6, p1

    #@28
    .line 1227
    .local v2, "factor":I
    const v6, 0x7fffffff

    #@2b
    and-int/2addr v6, v0

    #@2c
    invoke-static {v6}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    #@2f
    move-result v6

    #@30
    add-int/lit8 v5, v6, -0x9

    #@32
    .line 1229
    .local v5, "subNormalFactor":I
    if-gez v5, :cond_2

    #@34
    .line 1231
    const/4 v5, 0x0

    #@35
    .line 1235
    :goto_0
    const/16 v6, 0x7f

    #@37
    if-le v2, v6, :cond_4

    #@39
    .line 1236
    cmpl-float v6, p0, v7

    #@3b
    if-lez v6, :cond_3

    #@3d
    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    #@3f
    :goto_1
    return v6

    #@40
    .line 1233
    :cond_2
    sub-int/2addr v2, v5

    #@41
    goto :goto_0

    #@42
    .line 1236
    :cond_3
    const/high16 v6, -0x800000    # Float.NEGATIVE_INFINITY

    #@44
    goto :goto_1

    #@45
    .line 1241
    :cond_4
    const/16 v6, -0x7f

    #@47
    if-gt v2, v6, :cond_6

    #@49
    .line 1243
    add-int/lit8 v6, v2, 0x7f

    #@4b
    add-int v1, v6, v5

    #@4d
    .line 1244
    .local v1, "digits":I
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    #@50
    move-result v6

    #@51
    cmpg-float v6, v6, v9

    #@53
    if-gez v6, :cond_5

    #@55
    .line 1246
    and-int v6, v0, v8

    #@57
    invoke-static {v6, v1}, Ljava/lang/Math;->shiftIntBits(II)I

    #@5a
    move-result v3

    #@5b
    .line 1262
    .end local v1    # "digits":I
    .local v3, "result":I
    :goto_2
    or-int v6, v3, v4

    #@5d
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@60
    move-result v6

    #@61
    return v6

    #@62
    .line 1249
    .end local v3    # "result":I
    .restart local v1    # "digits":I
    :cond_5
    and-int v6, v0, v8

    #@64
    const/high16 v7, 0x800000

    #@66
    or-int/2addr v6, v7

    #@67
    add-int/lit8 v7, v1, -0x1

    #@69
    invoke-static {v6, v7}, Ljava/lang/Math;->shiftIntBits(II)I

    #@6c
    move-result v3

    #@6d
    .restart local v3    # "result":I
    goto :goto_2

    #@6e
    .line 1252
    .end local v1    # "digits":I
    .end local v3    # "result":I
    :cond_6
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    #@71
    move-result v6

    #@72
    cmpl-float v6, v6, v9

    #@74
    if-ltz v6, :cond_7

    #@76
    .line 1254
    add-int/lit8 v6, v2, 0x7f

    #@78
    shl-int/lit8 v6, v6, 0x17

    #@7a
    .line 1255
    and-int v7, v0, v8

    #@7c
    .line 1254
    or-int v3, v6, v7

    #@7e
    .restart local v3    # "result":I
    goto :goto_2

    #@7f
    .line 1258
    .end local v3    # "result":I
    :cond_7
    add-int/lit8 v6, v2, 0x7f

    #@81
    shl-int/lit8 v6, v6, 0x17

    #@83
    .line 1259
    add-int/lit8 v7, v5, 0x1

    #@85
    shl-int v7, v0, v7

    #@87
    and-int/2addr v7, v8

    #@88
    .line 1258
    or-int v3, v6, v7

    #@8a
    .restart local v3    # "result":I
    goto :goto_2
.end method

.method public static setRandomSeedInternal(J)V
    .locals 2
    .param p0, "seed"    # J

    #@0
    .prologue
    .line 891
    invoke-static {}, Ljava/lang/Math$NoImagePreloadHolder;->-get0()Ljava/util/Random;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0, p1}, Ljava/util/Random;->setSeed(J)V

    #@7
    .line 890
    return-void
.end method

.method private static shiftIntBits(II)I
    .locals 7
    .param p0, "bits"    # I
    .param p1, "digits"    # I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1268
    if-lez p1, :cond_0

    #@4
    .line 1269
    shl-int v3, p0, p1

    #@6
    return v3

    #@7
    .line 1272
    :cond_0
    neg-int v0, p1

    #@8
    .line 1273
    .local v0, "absDigits":I
    const v3, 0x7fffffff

    #@b
    and-int/2addr v3, p0

    #@c
    invoke-static {v3}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    #@f
    move-result v3

    #@10
    rsub-int/lit8 v4, v0, 0x20

    #@12
    if-le v3, v4, :cond_1

    #@14
    .line 1274
    return v5

    #@15
    .line 1276
    :cond_1
    shr-int v2, p0, v0

    #@17
    .line 1277
    .local v2, "ret":I
    add-int/lit8 v3, v0, -0x1

    #@19
    shr-int v3, p0, v3

    #@1b
    and-int/lit8 v3, v3, 0x1

    #@1d
    if-ne v3, v6, :cond_4

    #@1f
    const/4 v1, 0x1

    #@20
    .line 1278
    .local v1, "halfBit":Z
    :goto_0
    if-eqz v1, :cond_3

    #@22
    .line 1279
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    #@25
    move-result v3

    #@26
    add-int/lit8 v4, v0, -0x1

    #@28
    if-ge v3, v4, :cond_2

    #@2a
    .line 1280
    add-int/lit8 v2, v2, 0x1

    #@2c
    .line 1282
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    #@2f
    move-result v3

    #@30
    add-int/lit8 v4, v0, -0x1

    #@32
    if-ne v3, v4, :cond_3

    #@34
    .line 1283
    and-int/lit8 v3, v2, 0x1

    #@36
    if-ne v3, v6, :cond_3

    #@38
    .line 1284
    add-int/lit8 v2, v2, 0x1

    #@3a
    .line 1288
    :cond_3
    return v2

    #@3b
    .line 1277
    .end local v1    # "halfBit":Z
    :cond_4
    const/4 v1, 0x0

    #@3c
    .restart local v1    # "halfBit":Z
    goto :goto_0
.end method

.method private static shiftLongBits(JJ)J
    .locals 10
    .param p0, "bits"    # J
    .param p2, "digits"    # J

    #@0
    .prologue
    .line 1294
    const-wide/16 v6, 0x0

    #@2
    cmp-long v3, p2, v6

    #@4
    if-lez v3, :cond_0

    #@6
    .line 1295
    long-to-int v3, p2

    #@7
    shl-long v6, p0, v3

    #@9
    return-wide v6

    #@a
    .line 1298
    :cond_0
    neg-long v0, p2

    #@b
    .line 1299
    .local v0, "absDigits":J
    const-wide v6, 0x7fffffffffffffffL

    #@10
    and-long/2addr v6, p0

    #@11
    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    #@14
    move-result v3

    #@15
    int-to-long v6, v3

    #@16
    const-wide/16 v8, 0x40

    #@18
    sub-long/2addr v8, v0

    #@19
    cmp-long v3, v6, v8

    #@1b
    if-lez v3, :cond_1

    #@1d
    .line 1300
    const-wide/16 v6, 0x0

    #@1f
    return-wide v6

    #@20
    .line 1302
    :cond_1
    long-to-int v3, v0

    #@21
    shr-long v4, p0, v3

    #@23
    .line 1303
    .local v4, "ret":J
    const-wide/16 v6, 0x1

    #@25
    sub-long v6, v0, v6

    #@27
    long-to-int v3, v6

    #@28
    shr-long v6, p0, v3

    #@2a
    const-wide/16 v8, 0x1

    #@2c
    and-long/2addr v6, v8

    #@2d
    const-wide/16 v8, 0x1

    #@2f
    cmp-long v3, v6, v8

    #@31
    if-nez v3, :cond_4

    #@33
    const/4 v2, 0x1

    #@34
    .line 1304
    .local v2, "halfBit":Z
    :goto_0
    if-eqz v2, :cond_3

    #@36
    .line 1307
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    #@39
    move-result v3

    #@3a
    int-to-long v6, v3

    #@3b
    const-wide/16 v8, 0x1

    #@3d
    sub-long v8, v0, v8

    #@3f
    cmp-long v3, v6, v8

    #@41
    if-gez v3, :cond_2

    #@43
    .line 1308
    const-wide/16 v6, 0x1

    #@45
    add-long/2addr v4, v6

    #@46
    .line 1310
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    #@49
    move-result v3

    #@4a
    int-to-long v6, v3

    #@4b
    const-wide/16 v8, 0x1

    #@4d
    sub-long v8, v0, v8

    #@4f
    cmp-long v3, v6, v8

    #@51
    if-nez v3, :cond_3

    #@53
    .line 1311
    const-wide/16 v6, 0x1

    #@55
    and-long/2addr v6, v4

    #@56
    const-wide/16 v8, 0x1

    #@58
    cmp-long v3, v6, v8

    #@5a
    if-nez v3, :cond_3

    #@5c
    .line 1312
    const-wide/16 v6, 0x1

    #@5e
    add-long/2addr v4, v6

    #@5f
    .line 1316
    :cond_3
    return-wide v4

    #@60
    .line 1303
    .end local v2    # "halfBit":Z
    :cond_4
    const/4 v2, 0x0

    #@61
    .restart local v2    # "halfBit":Z
    goto :goto_0
.end method

.method public static signum(D)D
    .locals 6
    .param p0, "d"    # D

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 730
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 731
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    #@a
    return-wide v2

    #@b
    .line 733
    :cond_0
    move-wide v0, p0

    #@c
    .line 734
    .local v0, "sig":D
    cmpl-double v2, p0, v4

    #@e
    if-lez v2, :cond_2

    #@10
    .line 735
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    #@12
    .line 739
    :cond_1
    :goto_0
    return-wide v0

    #@13
    .line 736
    :cond_2
    cmpg-double v2, p0, v4

    #@15
    if-gez v2, :cond_1

    #@17
    .line 737
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    #@19
    goto :goto_0
.end method

.method public static signum(F)F
    .locals 3
    .param p0, "f"    # F

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 762
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 763
    const/high16 v1, 0x7fc00000    # NaNf

    #@9
    return v1

    #@a
    .line 765
    :cond_0
    move v0, p0

    #@b
    .line 766
    .local v0, "sig":F
    cmpl-float v1, p0, v2

    #@d
    if-lez v1, :cond_2

    #@f
    .line 767
    const/high16 v0, 0x3f800000    # 1.0f

    #@11
    .line 771
    :cond_1
    :goto_0
    return v0

    #@12
    .line 768
    :cond_2
    cmpg-float v1, p0, v2

    #@14
    if-gez v1, :cond_1

    #@16
    .line 769
    const/high16 v0, -0x40800000    # -1.0f

    #@18
    goto :goto_0
.end method

.method public static native sin(D)D
.end method

.method public static native sinh(D)D
.end method

.method public static native sqrt(D)D
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
    .line 940
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

.method public static toRadians(D)D
    .locals 4
    .param p0, "angdeg"    # D

    #@0
    .prologue
    .line 919
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
    .locals 4
    .param p0, "d"    # D

    #@0
    .prologue
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    #@5
    .line 964
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 965
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@d
    return-wide v0

    #@e
    .line 966
    :cond_0
    cmpl-double v0, p0, v2

    #@10
    if-eqz v0, :cond_1

    #@12
    const-wide v0, -0x10000000000001L

    #@17
    cmpl-double v0, p0, v0

    #@19
    if-nez v0, :cond_2

    #@1b
    .line 967
    :cond_1
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    #@1d
    const-wide v2, 0x408e580000000000L    # 971.0

    #@22
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    #@25
    move-result-wide v0

    #@26
    return-wide v0

    #@27
    .line 969
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    #@2a
    move-result-wide p0

    #@2b
    .line 970
    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->nextafter(DD)D

    #@2e
    move-result-wide v0

    #@2f
    sub-double/2addr v0, p0

    #@30
    return-wide v0
.end method

.method public static ulp(F)F
    .locals 6
    .param p0, "f"    # F

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    #@4
    const/4 v3, 0x0

    #@5
    .line 996
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 997
    const/high16 v2, 0x7fc00000    # NaNf

    #@d
    return v2

    #@e
    .line 998
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_1

    #@14
    .line 999
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    #@16
    return v2

    #@17
    .line 1000
    :cond_1
    cmpl-float v4, p0, v5

    #@19
    if-eqz v4, :cond_2

    #@1b
    const v4, -0x800001

    #@1e
    cmpl-float v4, p0, v4

    #@20
    if-nez v4, :cond_3

    #@22
    .line 1001
    :cond_2
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    #@24
    const-wide/high16 v4, 0x405a000000000000L    # 104.0

    #@26
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    #@29
    move-result-wide v2

    #@2a
    double-to-float v2, v2

    #@2b
    return v2

    #@2c
    .line 1004
    :cond_3
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    #@2f
    move-result p0

    #@30
    .line 1005
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@33
    move-result v0

    #@34
    .line 1006
    .local v0, "hx":I
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@37
    move-result v1

    #@38
    .line 1007
    .local v1, "hy":I
    const v4, 0x7fffffff

    #@3b
    and-int/2addr v4, v0

    #@3c
    if-nez v4, :cond_4

    #@3e
    .line 1008
    const/high16 v2, -0x80000000

    #@40
    and-int/2addr v2, v1

    #@41
    or-int/lit8 v2, v2, 0x1

    #@43
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@46
    move-result v2

    #@47
    return v2

    #@48
    .line 1010
    :cond_4
    if-lez v0, :cond_5

    #@4a
    move v4, v2

    #@4b
    :goto_0
    if-le v0, v1, :cond_6

    #@4d
    :goto_1
    xor-int/2addr v2, v4

    #@4e
    if-eqz v2, :cond_7

    #@50
    .line 1011
    add-int/lit8 v0, v0, 0x1

    #@52
    .line 1015
    :goto_2
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@55
    move-result v2

    #@56
    sub-float/2addr v2, p0

    #@57
    return v2

    #@58
    :cond_5
    move v4, v3

    #@59
    .line 1010
    goto :goto_0

    #@5a
    :cond_6
    move v2, v3

    #@5b
    goto :goto_1

    #@5c
    .line 1013
    :cond_7
    add-int/lit8 v0, v0, -0x1

    #@5e
    goto :goto_2
.end method
