.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;
.super Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;
.source "FloatAnimation.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# instance fields
.field private blacklist mDirectionalSnap:I

.field private blacklist mDuration:F

.field blacklist mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

.field private blacklist mInitialValue:F

.field blacklist mOffset:F

.field private blacklist mPropagate:Z

.field blacklist mSpec:[F

.field private blacklist mTargetValue:F

.field private blacklist mWrap:F


# direct methods
.method public constructor blacklist <init>(IF[FFF)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "duration"    # F
    .param p3, "description"    # [F
    .param p4, "initialValue"    # F
    .param p5, "wrap"    # F

    .line 84
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;-><init>()V

    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDuration:F

    .line 34
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    .line 35
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    .line 36
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDirectionalSnap:I

    .line 39
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mOffset:F

    .line 40
    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mPropagate:Z

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mType:I

    .line 86
    invoke-static {p2, p1, p3, p4, p5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->packToFloatArray(FI[FFF)[F

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setAnimationDescription([F)V

    .line 87
    return-void
.end method

.method public varargs constructor blacklist <init>([F)V
    .registers 4
    .param p1, "description"    # [F

    .line 65
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;-><init>()V

    .line 33
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDuration:F

    .line 34
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    .line 35
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    .line 36
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDirectionalSnap:I

    .line 39
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mOffset:F

    .line 40
    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mPropagate:Z

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mType:I

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setAnimationDescription([F)V

    .line 68
    return-void
.end method

.method private blacklist create(I[FII)V
    .registers 10
    .param p1, "type"    # I
    .param p2, "params"    # [F
    .param p3, "offset"    # I
    .param p4, "len"    # I

    .line 278
    packed-switch p1, :pswitch_data_3e

    :pswitch_3
    goto :goto_3c

    .line 299
    :pswitch_4
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/ElasticOutCurve;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/ElasticOutCurve;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    .line 300
    goto :goto_3c

    .line 296
    :pswitch_c
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/BounceCurve;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/BounceCurve;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    .line 297
    goto :goto_3c

    .line 302
    :pswitch_14
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/StepCurve;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/StepCurve;-><init>([FII)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    goto :goto_3c

    .line 288
    :pswitch_1c
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;

    add-int/lit8 v1, p3, 0x0

    aget v1, p2, v1

    add-int/lit8 v2, p3, 0x1

    aget v2, p2, v2

    add-int/lit8 v3, p3, 0x2

    aget v3, p2, v3

    add-int/lit8 v4, p3, 0x3

    aget v4, p2, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    .line 294
    goto :goto_3c

    .line 285
    :pswitch_34
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/CubicEasing;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    .line 286
    nop

    .line 305
    :goto_3c
    return-void

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1c
        :pswitch_14
        :pswitch_c
        :pswitch_4
    .end packed-switch
.end method

.method public static blacklist packToFloatArray(FI[FFF)[F
    .registers 15
    .param p0, "duration"    # F
    .param p1, "type"    # I
    .param p2, "spec"    # [F
    .param p3, "initialValue"    # F
    .param p4, "wrap"    # F

    .line 100
    const/4 v0, 0x0

    .line 102
    .local v0, "count":I
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_9

    .line 103
    add-int/lit8 v0, v0, 0x1

    .line 105
    :cond_9
    if-eqz p2, :cond_d

    .line 107
    add-int/lit8 v0, v0, 0x1

    .line 109
    :cond_d
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_13

    if-eq p1, v2, :cond_1b

    .line 110
    :cond_13
    add-int/lit8 v0, v0, 0x1

    .line 111
    if-nez p2, :cond_19

    move v3, v1

    goto :goto_1a

    :cond_19
    array-length v3, p2

    :goto_1a
    add-int/2addr v0, v3

    .line 114
    :cond_1b
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_23

    .line 115
    add-int/lit8 v0, v0, 0x1

    .line 117
    :cond_23
    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 118
    add-int/lit8 v0, v0, 0x1

    .line 120
    :cond_2b
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p0, v3

    if-nez v3, :cond_33

    if-lez v0, :cond_35

    .line 121
    :cond_33
    add-int/lit8 v0, v0, 0x1

    .line 123
    :cond_35
    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_43

    .line 124
    :cond_41
    add-int/lit8 v0, v0, 0x1

    .line 126
    :cond_43
    new-array v3, v0, [F

    .line 127
    .local v3, "ret":[F
    const/4 v4, 0x0

    .line 128
    .local v4, "pos":I
    if-nez p2, :cond_4a

    move v5, v1

    goto :goto_4b

    :cond_4a
    array-length v5, p2

    .line 130
    .local v5, "specLen":I
    :goto_4b
    array-length v6, v3

    if-lez v6, :cond_53

    .line 131
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "pos":I
    .local v6, "pos":I
    aput p0, v3, v4

    move v4, v6

    .line 133
    .end local v6    # "pos":I
    .restart local v4    # "pos":I
    :cond_53
    array-length v6, v3

    if-le v6, v2, :cond_75

    .line 134
    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    xor-int/2addr v2, v6

    .line 135
    .local v2, "wrapBit":I
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_63

    move v6, v1

    goto :goto_64

    :cond_63
    const/4 v6, 0x2

    .line 136
    .local v6, "initBit":I
    :goto_64
    or-int v7, v2, v6

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v7, p1

    .line 137
    .local v7, "bits":I
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "pos":I
    .local v8, "pos":I
    shl-int/lit8 v9, v5, 0x10

    or-int/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    aput v9, v3, v4

    move v4, v8

    .line 140
    .end local v2    # "wrapBit":I
    .end local v6    # "initBit":I
    .end local v7    # "bits":I
    .end local v8    # "pos":I
    .restart local v4    # "pos":I
    :cond_75
    if-lez v5, :cond_7d

    .line 141
    array-length v2, p2

    invoke-static {p2, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    array-length v1, p2

    add-int/2addr v4, v1

    .line 144
    :cond_7d
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_88

    .line 145
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "pos":I
    .local v1, "pos":I
    aput p3, v3, v4

    move v4, v1

    .line 147
    .end local v1    # "pos":I
    .restart local v4    # "pos":I
    :cond_88
    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_90

    .line 148
    aput p4, v3, v4

    .line 150
    :cond_90
    return-object v3
.end method

.method private blacklist setScaleOffset()V
    .registers 2

    .line 389
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_15

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_15

    .line 392
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mOffset:F

    goto :goto_18

    .line 395
    :cond_15
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mOffset:F

    .line 397
    :goto_18
    return-void
.end method

.method public static blacklist unpackAnimationToString([F)Ljava/lang/String;
    .registers 16
    .param p0, "description"    # [F

    .line 160
    move-object v0, p0

    .line 161
    .local v0, "mSpec":[F
    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_8

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_8
    aget v1, v0, v2

    .line 162
    .local v1, "mDuration":F
    :goto_a
    const/4 v3, 0x0

    .line 163
    .local v3, "len":I
    const/4 v4, 0x0

    .line 164
    .local v4, "type":I
    const/high16 v5, 0x7fc00000    # Float.NaN

    .line 165
    .local v5, "wrapValue":F
    const/high16 v6, 0x7fc00000    # Float.NaN

    .line 166
    .local v6, "initialValue":F
    const/4 v7, 0x0

    .line 167
    .local v7, "directionalSnap":I
    const/4 v8, 0x0

    .line 168
    .local v8, "propagate":Z
    array-length v9, v0

    const/4 v10, 0x1

    if-le v9, v10, :cond_4e

    .line 169
    aget v9, v0, v10

    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    .line 170
    .local v9, "num_type":I
    and-int/lit16 v4, v9, 0xff

    .line 171
    shr-int/lit8 v11, v9, 0x8

    and-int/2addr v11, v10

    if-lez v11, :cond_25

    move v11, v10

    goto :goto_26

    :cond_25
    move v11, v2

    .line 172
    .local v11, "wrap":Z
    :goto_26
    shr-int/lit8 v12, v9, 0x8

    and-int/lit8 v12, v12, 0x2

    if-lez v12, :cond_2e

    move v12, v10

    goto :goto_2f

    :cond_2e
    move v12, v2

    .line 173
    .local v12, "init":Z
    :goto_2f
    shr-int/lit8 v13, v9, 0xa

    and-int/lit8 v7, v13, 0x3

    .line 174
    shr-int/lit8 v13, v9, 0xc

    and-int/2addr v13, v10

    if-lez v13, :cond_39

    move v2, v10

    :cond_39
    move v8, v2

    .line 175
    shr-int/lit8 v2, v9, 0x10

    const v10, 0xffff

    and-int v3, v2, v10

    .line 176
    add-int/lit8 v2, v3, 0x2

    .line 177
    .local v2, "off":I
    if-eqz v12, :cond_4a

    .line 178
    add-int/lit8 v10, v2, 0x1

    .end local v2    # "off":I
    .local v10, "off":I
    aget v6, v0, v2

    move v2, v10

    .line 180
    .end local v10    # "off":I
    .restart local v2    # "off":I
    :cond_4a
    if-eqz v11, :cond_4e

    .line 181
    aget v5, v0, v2

    .line 184
    .end local v2    # "off":I
    .end local v9    # "num_type":I
    .end local v11    # "wrap":Z
    .end local v12    # "init":Z
    :cond_4e
    move-object v2, p0

    .line 185
    .local v2, "params":[F
    const/4 v9, 0x2

    .line 187
    .local v9, "offset":I
    const-string v10, ""

    .line 188
    .local v10, "typeStr":Ljava/lang/String;
    const-string v11, " "

    packed-switch v4, :pswitch_data_190

    :pswitch_57
    goto/16 :goto_112

    .line 220
    :pswitch_59
    const-string v10, "EASE_OUT_ELASTIC"

    .line 221
    goto/16 :goto_112

    .line 216
    :pswitch_5d
    const-string v10, "EASE_OUT_BOUNCE"

    .line 218
    goto/16 :goto_112

    .line 223
    :pswitch_61
    const-string v10, "SPLINE_CUSTOM ("

    .line 224
    move v12, v9

    .local v12, "i":I
    :goto_64
    add-int v13, v9, v3

    if-ge v12, v13, :cond_82

    .line 225
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget v14, v2, v12

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 224
    add-int/lit8 v12, v12, 0x1

    goto :goto_64

    .line 227
    .end local v12    # "i":I
    :cond_82
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_112

    .line 209
    :pswitch_97
    const-string v10, "CUBIC_CUSTOM ("

    .line 210
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v9, 0x0

    aget v13, v2, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 211
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v9, 0x1

    aget v13, v2, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 212
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v9, 0x2

    aget v13, v2, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 213
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v9, 0x3

    aget v13, v2, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " )"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 214
    goto :goto_112

    .line 205
    :pswitch_100
    const-string v10, "CUBIC_OVERSHOOT"

    .line 207
    goto :goto_112

    .line 202
    :pswitch_103
    const-string v10, "CUBIC_ANTICIPATE"

    .line 203
    goto :goto_112

    .line 199
    :pswitch_106
    const-string v10, "CUBIC_LINEAR"

    .line 200
    goto :goto_112

    .line 196
    :pswitch_109
    const-string v10, "CUBIC_DECELERATE"

    .line 197
    goto :goto_112

    .line 193
    :pswitch_10c
    const-string v10, "CUBIC_ACCELERATE"

    .line 194
    goto :goto_112

    .line 190
    :pswitch_10f
    const-string v10, "CUBIC_STANDARD"

    .line 191
    nop

    .line 231
    :goto_112
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 232
    .local v11, "str":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-nez v12, :cond_144

    .line 233
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " init ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 235
    :cond_144
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-nez v12, :cond_161

    .line 236
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " wrap ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 238
    :cond_161
    if-eqz v7, :cond_17a

    .line 239
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " directionalSnap="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 241
    :cond_17a
    if-eqz v8, :cond_18f

    .line 242
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " propagate"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 244
    :cond_18f
    return-object v11

    :pswitch_data_190
    .packed-switch 0x1
        :pswitch_10f
        :pswitch_10c
        :pswitch_109
        :pswitch_106
        :pswitch_103
        :pswitch_100
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_97
        :pswitch_61
        :pswitch_5d
        :pswitch_59
    .end packed-switch
.end method

.method private static blacklist wrap(FF)F
    .registers 3
    .param p0, "wrap"    # F
    .param p1, "value"    # F

    .line 332
    rem-float/2addr p1, p0

    .line 333
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_7

    .line 334
    add-float/2addr p1, p0

    .line 336
    :cond_7
    return p1
.end method


# virtual methods
.method public blacklist get(F)F
    .registers 5
    .param p1, "t"    # F

    .line 402
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDirectionalSnap:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_14

    .line 403
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    .line 404
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    return v0

    .line 406
    :cond_14
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDirectionalSnap:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_28

    .line 407
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    .line 408
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    return v0

    .line 410
    :cond_28
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDuration:F

    div-float v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;->get(F)F

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    add-float/2addr v0, v1

    return v0
.end method

.method public blacklist getDiff(F)F
    .registers 5
    .param p1, "t"    # F

    .line 416
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDuration:F

    div-float v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;->getDiff(F)F

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public blacklist getDuration()F
    .registers 2

    .line 313
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDuration:F

    return v0
.end method

.method public blacklist getInitialValue()F
    .registers 2

    .line 432
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    return v0
.end method

.method public blacklist getTargetValue()F
    .registers 2

    .line 385
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    return v0
.end method

.method public blacklist isPropagate()Z
    .registers 2

    .line 423
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mPropagate:Z

    return v0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 437
    nop

    .line 438
    const-string v0, "FloatAnimation"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    .line 439
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "initialValue"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    .line 440
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "targetValue"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDuration:F

    .line 441
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "duration"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mEasingCurve:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;

    .line 442
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "easing"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 443
    return-void
.end method

.method public blacklist setAnimationDescription([F)V
    .registers 12
    .param p1, "description"    # [F

    .line 253
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mSpec:[F

    .line 254
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mSpec:[F

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_f

    :cond_b
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mSpec:[F

    aget v0, v0, v1

    :goto_f
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDuration:F

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "len":I
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mSpec:[F

    array-length v2, v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-le v2, v4, :cond_5f

    .line 257
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mSpec:[F

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    .line 258
    .local v2, "num_type":I
    and-int/lit16 v5, v2, 0xff

    iput v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mType:I

    .line 259
    shr-int/lit8 v5, v2, 0x8

    and-int/2addr v5, v4

    if-lez v5, :cond_2c

    move v5, v4

    goto :goto_2d

    :cond_2c
    move v5, v1

    .line 260
    .local v5, "wrap":Z
    :goto_2d
    shr-int/lit8 v6, v2, 0x8

    and-int/2addr v6, v3

    if-lez v6, :cond_34

    move v6, v4

    goto :goto_35

    :cond_34
    move v6, v1

    .line 261
    .local v6, "init":Z
    :goto_35
    shr-int/lit8 v7, v2, 0xa

    and-int/lit8 v7, v7, 0x3

    .line 262
    .local v7, "directional":I
    shr-int/lit8 v8, v2, 0xc

    and-int/2addr v8, v4

    if-lez v8, :cond_3f

    move v1, v4

    .line 263
    .local v1, "propagate":Z
    :cond_3f
    shr-int/lit8 v4, v2, 0x10

    const v8, 0xffff

    and-int v0, v4, v8

    .line 264
    add-int/lit8 v4, v0, 0x2

    .line 265
    .local v4, "off":I
    if-eqz v6, :cond_53

    .line 266
    iget-object v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mSpec:[F

    add-int/lit8 v9, v4, 0x1

    .end local v4    # "off":I
    .local v9, "off":I
    aget v4, v8, v4

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    move v4, v9

    .line 268
    .end local v9    # "off":I
    .restart local v4    # "off":I
    :cond_53
    if-eqz v5, :cond_5b

    .line 269
    iget-object v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mSpec:[F

    aget v8, v8, v4

    iput v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    .line 271
    :cond_5b
    iput v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDirectionalSnap:I

    .line 272
    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mPropagate:Z

    .line 274
    .end local v1    # "propagate":Z
    .end local v2    # "num_type":I
    .end local v4    # "off":I
    .end local v5    # "wrap":Z
    .end local v6    # "init":Z
    .end local v7    # "directional":I
    :cond_5f
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mType:I

    invoke-direct {p0, v1, p1, v3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->create(I[FII)V

    .line 275
    return-void
.end method

.method public blacklist setInitialValue(F)V
    .registers 3
    .param p1, "value"    # F

    .line 323
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 324
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    goto :goto_11

    .line 326
    :cond_b
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    rem-float v0, p1, v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    .line 328
    :goto_11
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setScaleOffset()V

    .line 329
    return-void
.end method

.method public blacklist setTargetValue(F)V
    .registers 6
    .param p1, "value"    # F

    .line 355
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    .line 356
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 357
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    invoke-static {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->wrap(FF)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    .line 358
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    invoke-static {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->wrap(FF)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    .line 359
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 360
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    .line 363
    :cond_2a
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->wrapDistance(FFF)F

    move-result v0

    .line 364
    .local v0, "dist":F
    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_49

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_49

    .line 365
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    goto :goto_7a

    .line 366
    :cond_49
    cmpg-float v1, v0, v1

    if-gez v1, :cond_7a

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDirectionalSnap:I

    if-eqz v1, :cond_7a

    .line 367
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDirectionalSnap:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_62

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_62

    .line 368
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    .line 370
    :cond_62
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mDirectionalSnap:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_73

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_73

    .line 371
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    .line 373
    :cond_73
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    .line 376
    .end local v0    # "dist":F
    :cond_7a
    :goto_7a
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->setScaleOffset()V

    .line 377
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "str":Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_37

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mInitialValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    :cond_37
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_58

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mTargetValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    :cond_58
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_79

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  % "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->mWrap:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    :cond_79
    return-object v0
.end method

.method blacklist wrapDistance(FFF)F
    .registers 7
    .param p1, "wrap"    # F
    .param p2, "from"    # F
    .param p3, "to"    # F

    .line 340
    sub-float v0, p3, p2

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    .line 341
    .local v0, "delta":F
    neg-float v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpg-float v1, v0, v1

    if-gez v1, :cond_f

    .line 342
    add-float/2addr v0, p1

    goto :goto_16

    .line 343
    :cond_f
    div-float v1, p1, v2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_16

    .line 344
    sub-float/2addr v0, p1

    .line 346
    :cond_16
    :goto_16
    return v0
.end method
