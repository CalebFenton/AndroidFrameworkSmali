.class public Landroid/content/res/FontScaleConverterImpl;
.super Ljava/lang/Object;
.source "FontScaleConverterImpl.java"

# interfaces
.implements Landroid/content/res/FontScaleConverter;


# instance fields
.field public final blacklist mFromSpValues:[F

.field public final blacklist mToDpValues:[F


# direct methods
.method public constructor blacklist <init>([F[F)V
    .registers 5
    .param p1, "fromSp"    # [F
    .param p2, "toDp"    # [F

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_f

    array-length v0, p1

    if-eqz v0, :cond_f

    .line 66
    iput-object p1, p0, Landroid/content/res/FontScaleConverterImpl;->mFromSpValues:[F

    .line 67
    iput-object p2, p0, Landroid/content/res/FontScaleConverterImpl;->mToDpValues:[F

    .line 68
    return-void

    .line 63
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array lengths must match and be nonzero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist lookupAndInterpolate(F[F[F)F
    .registers 12
    .param p0, "sourceValue"    # F
    .param p1, "sourceValues"    # [F
    .param p2, "targetValues"    # [F

    .line 95
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 97
    .local v0, "sourceValuePositive":F
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 100
    .local v1, "sign":F
    invoke-static {p1, v0}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v2

    .line 101
    .local v2, "index":I
    if-ltz v2, :cond_12

    .line 103
    aget v3, p2, v2

    mul-float/2addr v3, v1

    return v3

    .line 106
    :cond_12
    add-int/lit8 v3, v2, 0x1

    neg-int v3, v3

    add-int/lit8 v3, v3, -0x1

    .line 113
    .local v3, "lowerIndex":I
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_31

    .line 115
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    aget v4, p1, v4

    .line 116
    .local v4, "startSp":F
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    aget v5, p2, v5

    .line 118
    .local v5, "startDp":F
    const/4 v6, 0x0

    cmpl-float v7, v4, v6

    if-nez v7, :cond_2c

    return v6

    .line 120
    :cond_2c
    div-float v6, v5, v4

    .line 121
    .local v6, "scalingFactor":F
    mul-float v7, p0, v6

    return v7

    .line 122
    .end local v4    # "startSp":F
    .end local v5    # "startDp":F
    .end local v6    # "scalingFactor":F
    :cond_31
    const/4 v4, -0x1

    if-ne v3, v4, :cond_3c

    .line 124
    const/4 v4, 0x0

    .line 125
    .restart local v4    # "startSp":F
    const/4 v5, 0x0

    .line 126
    .restart local v5    # "startDp":F
    const/4 v6, 0x0

    aget v7, p1, v6

    .line 127
    .local v7, "endSp":F
    aget v6, p2, v6

    .local v6, "endDp":F
    goto :goto_48

    .line 129
    .end local v4    # "startSp":F
    .end local v5    # "startDp":F
    .end local v6    # "endDp":F
    .end local v7    # "endSp":F
    :cond_3c
    aget v4, p1, v3

    .line 130
    .restart local v4    # "startSp":F
    add-int/lit8 v5, v3, 0x1

    aget v7, p1, v5

    .line 131
    .restart local v7    # "endSp":F
    aget v5, p2, v3

    .line 132
    .restart local v5    # "startDp":F
    add-int/lit8 v6, v3, 0x1

    aget v6, p2, v6

    .line 135
    .restart local v6    # "endDp":F
    :goto_48
    nop

    .line 136
    invoke-static {v5, v6, v4, v7, v0}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v8

    mul-float/2addr v8, v1

    .line 135
    return v8
.end method


# virtual methods
.method public whitelist convertDpToSp(F)F
    .registers 4
    .param p1, "dp"    # F

    .line 77
    iget-object v0, p0, Landroid/content/res/FontScaleConverterImpl;->mToDpValues:[F

    iget-object v1, p0, Landroid/content/res/FontScaleConverterImpl;->mFromSpValues:[F

    invoke-static {p1, v0, v1}, Landroid/content/res/FontScaleConverterImpl;->lookupAndInterpolate(F[F[F)F

    move-result v0

    return v0
.end method

.method public whitelist convertSpToDp(F)F
    .registers 4
    .param p1, "sp"    # F

    .line 87
    iget-object v0, p0, Landroid/content/res/FontScaleConverterImpl;->mFromSpValues:[F

    iget-object v1, p0, Landroid/content/res/FontScaleConverterImpl;->mToDpValues:[F

    invoke-static {p1, v0, v1}, Landroid/content/res/FontScaleConverterImpl;->lookupAndInterpolate(F[F[F)F

    move-result v0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 142
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 143
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 144
    :cond_8
    instance-of v2, p1, Landroid/content/res/FontScaleConverterImpl;

    if-nez v2, :cond_d

    return v1

    .line 145
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/content/res/FontScaleConverterImpl;

    .line 146
    .local v2, "that":Landroid/content/res/FontScaleConverterImpl;
    iget-object v3, p0, Landroid/content/res/FontScaleConverterImpl;->mFromSpValues:[F

    iget-object v4, v2, Landroid/content/res/FontScaleConverterImpl;->mFromSpValues:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_25

    iget-object v3, p0, Landroid/content/res/FontScaleConverterImpl;->mToDpValues:[F

    iget-object v4, v2, Landroid/content/res/FontScaleConverterImpl;->mToDpValues:[F

    .line 147
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    .line 146
    :goto_26
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 152
    iget-object v0, p0, Landroid/content/res/FontScaleConverterImpl;->mFromSpValues:[F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    .line 153
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/res/FontScaleConverterImpl;->mToDpValues:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v1, v2

    .line 154
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FontScaleConverter{fromSpValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/FontScaleConverterImpl;->mFromSpValues:[F

    .line 161
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", toDpValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/FontScaleConverterImpl;->mToDpValues:[F

    .line 163
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    return-object v0
.end method
