.class public Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "TouchExpression.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/ComponentData;
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/TouchListener;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "TouchExpression"

.field public static final blacklist MAX_EXPRESSION_SIZE:I = 0x20

.field private static final blacklist OP_CODE:I = 0x9d

.field public static final blacklist STOP_ABSOLUTE_POS:I = 0x6

.field public static final blacklist STOP_ENDS:I = 0x2

.field public static final blacklist STOP_GENTLY:I = 0x0

.field public static final blacklist STOP_INSTANTLY:I = 0x1

.field public static final blacklist STOP_NOTCHES_ABSOLUTE:I = 0x5

.field public static final blacklist STOP_NOTCHES_EVEN:I = 0x3

.field public static final blacklist STOP_NOTCHES_PERCENTS:I = 0x4


# instance fields
.field blacklist mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

.field private blacklist mCurrentValue:F

.field private blacklist mDefValue:F

.field blacklist mDownTouchValue:F

.field private blacklist mEasingToStop:Z

.field private blacklist mEasyTouch:Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;

.field blacklist mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

.field private blacklist mId:I

.field private blacklist mLastCalculatedValue:F

.field private blacklist mLastChange:F

.field blacklist mLastValue:F

.field blacklist mMax:F

.field blacklist mMaxAcceleration:F

.field blacklist mMaxTime:F

.field blacklist mMaxVelocity:F

.field blacklist mMin:F

.field blacklist mMode:I

.field blacklist mNotches:[F

.field private blacklist mOutDefValue:F

.field blacklist mOutMax:F

.field blacklist mOutMin:F

.field blacklist mOutStopSpec:[F

.field private blacklist mPreCalcValue:[F

.field blacklist mScrBottom:F

.field blacklist mScrLeft:F

.field blacklist mScrRight:F

.field blacklist mScrTop:F

.field public blacklist mSrcExp:[F

.field blacklist mStopMode:I

.field blacklist mStopSpec:[F

.field private blacklist mTouchDown:Z

.field blacklist mTouchEffects:I

.field private blacklist mTouchUpTime:F

.field blacklist mUnmodified:Z

.field blacklist mValue:F

.field blacklist mValueAtDown:F

.field blacklist mVelocityId:F

.field blacklist mWrapMode:Z


# direct methods
.method public constructor blacklist <init>(I[FFFFIFI[F[F)V
    .registers 16
    .param p1, "id"    # I
    .param p2, "exp"    # [F
    .param p3, "defValue"    # F
    .param p4, "min"    # F
    .param p5, "max"    # F
    .param p6, "touchEffects"    # I
    .param p7, "velocityId"    # F
    .param p8, "stopMode"    # I
    .param p9, "stopSpec"    # [F
    .param p10, "easingSpec"    # [F

    .line 133
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMode:I

    .line 58
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMax:F

    .line 59
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMin:F

    .line 60
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    .line 61
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    .line 62
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mValue:F

    .line 63
    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mUnmodified:Z

    .line 65
    const/high16 v3, 0x7fc00000    # Float.NaN

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mLastChange:F

    .line 66
    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mLastCalculatedValue:F

    .line 67
    new-instance v4, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    invoke-direct {v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;-><init>()V

    iput-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    .line 72
    new-instance v4, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;

    invoke-direct {v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;-><init>()V

    iput-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mEasyTouch:Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;

    .line 73
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mEasingToStop:Z

    .line 74
    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchUpTime:F

    .line 75
    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mCurrentValue:F

    .line 76
    iput-boolean v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchDown:Z

    .line 77
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMaxTime:F

    .line 78
    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMaxAcceleration:F

    .line 79
    const/high16 v1, 0x40e00000    # 7.0f

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMaxVelocity:F

    .line 80
    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopMode:I

    .line 81
    iput-boolean v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mWrapMode:Z

    .line 319
    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mLastValue:F

    .line 134
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mId:I

    .line 135
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    .line 136
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mDefValue:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutDefValue:F

    .line 137
    const/4 v1, 0x6

    if-ne v1, p8, :cond_4f

    move v1, v0

    goto :goto_50

    :cond_4f
    move v1, v4

    :goto_50
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMode:I

    .line 138
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMax:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    .line 139
    if-eqz p9, :cond_5f

    .line 140
    array-length v1, p9

    invoke-static {p9, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutStopSpec:[F

    .line 142
    :cond_5f
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchEffects:I

    .line 143
    iput p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mVelocityId:F

    .line 144
    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-static {p4}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    if-nez v1, :cond_72

    .line 145
    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mWrapMode:Z

    goto :goto_76

    .line 147
    :cond_72
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMin:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    .line 149
    :goto_76
    iput p8, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopMode:I

    .line 150
    iput-object p9, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    .line 151
    if-eqz p10, :cond_96

    .line 152
    array-length v1, p10

    const/4 v2, 0x4

    if-lt v1, v2, :cond_96

    .line 153
    aget v1, p10, v4

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-nez v1, :cond_96

    .line 154
    aget v0, p10, v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMaxTime:F

    .line 155
    const/4 v0, 0x2

    aget v0, p10, v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMaxAcceleration:F

    .line 156
    const/4 v0, 0x3

    aget v0, p10, v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMaxVelocity:F

    .line 160
    :cond_96
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI[FI[F[F)V
    .registers 14
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "id"    # I
    .param p2, "value"    # F
    .param p3, "min"    # F
    .param p4, "max"    # F
    .param p5, "velocityId"    # F
    .param p6, "touchEffects"    # I
    .param p7, "exp"    # [F
    .param p8, "touchMode"    # I
    .param p9, "touchSpec"    # [F
    .param p10, "easingSpec"    # [F

    .line 600
    const/16 v0, 0x9d

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 601
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 602
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 603
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 604
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 605
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 606
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 607
    array-length v0, p7

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 608
    array-length v0, p7

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v0, :cond_27

    aget v2, p7, v1

    .line 609
    .local v2, "v":F
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 608
    .end local v2    # "v":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 611
    :cond_27
    const/4 v0, 0x0

    .line 612
    .local v0, "len":I
    if-eqz p9, :cond_2b

    .line 613
    array-length v0, p9

    .line 615
    :cond_2b
    shl-int/lit8 v1, p8, 0x10

    or-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 616
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_32
    if-ge v1, v0, :cond_3c

    .line 617
    aget v2, p9, v1

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 616
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 620
    .end local v1    # "i":I
    :cond_3c
    if-eqz p10, :cond_40

    .line 621
    array-length v0, p10

    goto :goto_41

    .line 623
    :cond_40
    const/4 v0, 0x0

    .line 625
    :goto_41
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 626
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_45
    if-ge v1, v0, :cond_4f

    .line 627
    aget v2, p10, v1

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 626
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 629
    .end local v1    # "i":I
    :cond_4f
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 8
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 688
    const/16 v0, 0x9d

    const-string v1, "TouchExpression"

    const-string v2, "Expressions Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 689
    const-string v1, "A Float expression"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 690
    const/4 v1, 0x0

    const-string v2, "id"

    const-string v3, "The id of the Color"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 691
    const/16 v2, 0x9

    const-string v3, "expression_length"

    const-string v4, "expression length"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 692
    const-string v4, "animation_length"

    const-string v5, "animation description length"

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 693
    const/16 v2, 0xa

    const-string v5, "expression"

    const-string v6, "Sequence of Floats representing and expression"

    invoke-virtual {v0, v2, v5, v3, v6}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 698
    const-string v3, "AnimationSpec"

    const-string v5, "Sequence of Floats representing animation curve"

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 703
    const/4 v3, 0x1

    const-string v4, "duration"

    const-string v5, "> time in sec"

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 704
    const-string v4, "bits"

    const-string v5, "> WRAP|INITALVALUE | TYPE "

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 705
    const-string/jumbo v1, "spec"

    const-string v4, "> [SPEC PARAMETERS] "

    invoke-virtual {v0, v2, v1, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 706
    const-string v1, "initialValue"

    const-string v2, "> [Initial value] "

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 707
    const-string/jumbo v1, "wrapValue"

    const-string v2, "> [Wrap value] "

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 708
    return-void
.end method

.method private blacklist getStopPosition(FF)F
    .registers 13
    .param p1, "pos"    # F
    .param p2, "slope"    # F

    .line 255
    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p2, v0

    add-float/2addr v1, p1

    .line 256
    .local v1, "target":F
    iget-boolean v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mWrapMode:Z

    if-eqz v2, :cond_12

    .line 257
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->wrap(F)F

    move-result p1

    .line 258
    div-float v2, p2, v0

    add-float/2addr v2, p1

    move p1, v2

    .end local v1    # "target":F
    .local v2, "target":F
    goto :goto_1e

    .line 260
    .end local v2    # "target":F
    .restart local v1    # "target":F
    :cond_12
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 262
    .end local v1    # "target":F
    .restart local v2    # "target":F
    :goto_1e
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    array-length v1, v1

    new-array v1, v1, [F

    .line 263
    .local v1, "positions":[F
    iget-boolean v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mWrapMode:Z

    if-eqz v3, :cond_29

    const/4 v3, 0x0

    goto :goto_2b

    :cond_29
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    .line 265
    .local v3, "min":F
    :goto_2b
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopMode:I

    packed-switch v4, :pswitch_data_c2

    .line 306
    return v2

    .line 293
    :pswitch_31
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    .line 294
    .end local v1    # "positions":[F
    .local v0, "positions":[F
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    .line 295
    .local v1, "minPos":F
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    sub-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 296
    .local v4, "minPosDist":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3d
    array-length v6, v0

    if-ge v5, v6, :cond_51

    .line 297
    aget v6, v0, v5

    sub-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 298
    .local v6, "dist":F
    cmpl-float v7, v4, v6

    if-lez v7, :cond_4e

    .line 299
    move v4, v6

    .line 300
    aget v1, v0, v5

    .line 296
    .end local v6    # "dist":F
    :cond_4e
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    .line 303
    .end local v5    # "i":I
    :cond_51
    return v1

    .line 280
    .end local v0    # "positions":[F
    .end local v4    # "minPosDist":F
    .local v1, "positions":[F
    :pswitch_52
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    array-length v0, v0

    new-array v0, v0, [F

    .line 281
    .end local v1    # "positions":[F
    .restart local v0    # "positions":[F
    move v1, v3

    .line 282
    .local v1, "minPos":F
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    sub-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 283
    .restart local v4    # "minPosDist":F
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_60
    array-length v6, v0

    if-ge v5, v6, :cond_7f

    .line 284
    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    aget v7, v7, v5

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    iget v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 285
    .local v6, "p":F
    sub-float v7, v6, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 286
    .local v7, "dist":F
    cmpl-float v8, v4, v7

    if-lez v8, :cond_7c

    .line 287
    move v4, v7

    .line 288
    move v1, v6

    .line 283
    .end local v6    # "p":F
    .end local v7    # "dist":F
    :cond_7c
    add-int/lit8 v5, v5, 0x1

    goto :goto_60

    .line 291
    .end local v5    # "i":I
    :cond_7f
    return v1

    .line 271
    .end local v0    # "positions":[F
    .end local v4    # "minPosDist":F
    .local v1, "positions":[F
    :pswitch_80
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutStopSpec:[F

    const/4 v4, 0x0

    aget v0, v0, v4

    float-to-int v0, v0

    .line 272
    .local v0, "evenSpacing":I
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutStopSpec:[F

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_91

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutStopSpec:[F

    aget v4, v4, v5

    goto :goto_93

    :cond_91
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    .line 273
    .local v4, "notchMax":F
    :goto_93
    sub-float v5, v4, v3

    int-to-float v6, v0

    div-float/2addr v5, v6

    .line 274
    .local v5, "step":F
    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    sub-float v6, v2, v6

    div-float/2addr v6, v5

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    add-float/2addr v6, v3

    .line 275
    .local v6, "notch":F
    iget-boolean v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mWrapMode:Z

    if-nez v7, :cond_b1

    .line 276
    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v7, v3}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 278
    :cond_b1
    return v6

    .line 267
    .end local v0    # "evenSpacing":I
    .end local v4    # "notchMax":F
    .end local v5    # "step":F
    .end local v6    # "notch":F
    :pswitch_b2
    add-float v4, p1, p2

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    add-float/2addr v5, v3

    div-float/2addr v5, v0

    cmpl-float v0, v4, v5

    if-lez v0, :cond_bf

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    goto :goto_c0

    :cond_bf
    move v0, v3

    :goto_c0
    return v0

    .line 269
    :pswitch_c1
    return p1

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_c1
        :pswitch_b2
        :pswitch_80
        :pswitch_52
        :pswitch_31
    .end packed-switch
.end method

.method public static blacklist id()I
    .registers 1

    .line 570
    const/16 v0, 0x9d

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 561
    const-string v0, "TouchExpression"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 19
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 638
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 639
    .local v1, "id":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v3

    .line 640
    .local v3, "startValue":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v4

    .line 641
    .local v4, "min":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v5

    .line 642
    .local v5, "max":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v7

    .line 643
    .local v7, "velocityId":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v6

    .line 644
    .local v6, "touchEffects":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v11

    .line 645
    .local v11, "len":I
    const v0, 0xffff

    and-int v12, v11, v0

    .line 646
    .local v12, "valueLen":I
    const/16 v2, 0x20

    if-gt v12, v2, :cond_70

    .line 649
    new-array v2, v12, [F

    .line 650
    .local v2, "exp":[F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_28
    array-length v9, v2

    if-ge v8, v9, :cond_34

    .line 651
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v9

    aput v9, v2, v8

    .line 650
    add-int/lit8 v8, v8, 0x1

    goto :goto_28

    .line 653
    .end local v8    # "i":I
    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v13

    .line 654
    .local v13, "stopLogic":I
    and-int v14, v13, v0

    .line 655
    .local v14, "stopLen":I
    shr-int/lit8 v8, v13, 0x10

    .line 657
    .local v8, "stopMode":I
    new-array v9, v14, [F

    .line 658
    .local v9, "stopsData":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3f
    array-length v10, v9

    if-ge v0, v10, :cond_4b

    .line 659
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v10

    aput v10, v9, v0

    .line 658
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 661
    .end local v0    # "i":I
    :cond_4b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v15

    .line 663
    .local v15, "easingLen":I
    new-array v10, v15, [F

    .line 664
    .local v10, "easingData":[F
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_52
    move/from16 v16, v1

    .end local v1    # "id":I
    .local v16, "id":I
    array-length v1, v10

    if-ge v0, v1, :cond_62

    .line 665
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v1

    aput v1, v10, v0

    .line 664
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v16

    goto :goto_52

    .line 668
    .end local v0    # "i":I
    :cond_62
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    move/from16 v1, v16

    .end local v16    # "id":I
    .restart local v1    # "id":I
    invoke-direct/range {v0 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;-><init>(I[FFFFIFI[F[F)V

    move-object v1, v0

    move-object/from16 v0, p1

    .end local v1    # "id":I
    .restart local v16    # "id":I
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    return-void

    .line 647
    .end local v2    # "exp":[F
    .end local v8    # "stopMode":I
    .end local v9    # "stopsData":[F
    .end local v10    # "easingData":[F
    .end local v13    # "stopLogic":I
    .end local v14    # "stopLen":I
    .end local v15    # "easingLen":I
    .end local v16    # "id":I
    .restart local v1    # "id":I
    :cond_70
    move/from16 v16, v1

    .end local v1    # "id":I
    .restart local v16    # "id":I
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Float expression to long"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist updateBounds()V
    .registers 7

    .line 387
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 388
    .local v0, "comp":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    if-eqz v0, :cond_35

    .line 389
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v1

    .line 390
    .local v1, "x":F
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v2

    .line 391
    .local v2, "y":F
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v3

    .line 392
    .local v3, "w":F
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v4

    .line 393
    .local v4, "h":F
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v0

    .line 394
    :goto_18
    if-eqz v0, :cond_29

    .line 395
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v5

    add-float/2addr v1, v5

    .line 396
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v5

    add-float/2addr v2, v5

    .line 397
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v0

    goto :goto_18

    .line 399
    :cond_29
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mScrLeft:F

    .line 400
    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mScrTop:F

    .line 401
    add-float v5, v3, v1

    iput v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mScrRight:F

    .line 402
    add-float v5, v4, v2

    iput v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mScrBottom:F

    .line 404
    .end local v1    # "x":F
    .end local v2    # "y":F
    .end local v3    # "w":F
    .end local v4    # "h":F
    :cond_35
    return-void
.end method

.method private blacklist wrap(F)F
    .registers 3
    .param p1, "pos"    # F

    .line 244
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mWrapMode:Z

    if-nez v0, :cond_5

    .line 245
    return p1

    .line 247
    :cond_5
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    rem-float/2addr p1, v0

    .line 248
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_10

    .line 249
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    add-float/2addr p1, v0

    .line 251
    :cond_10
    return p1
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 6
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 408
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->updateBounds()V

    .line 409
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mUnmodified:Z

    if-eqz v0, :cond_17

    .line 410
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutDefValue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mCurrentValue:F

    .line 411
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mCurrentValue:F

    invoke-direct {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->wrap(F)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 412
    return-void

    .line 414
    :cond_17
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mEasingToStop:Z

    if-eqz v0, :cond_58

    .line 415
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getAnimationTime()F

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchUpTime:F

    sub-float/2addr v0, v1

    .line 416
    .local v0, "time":F
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mEasyTouch:Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->getPos(F)F

    move-result v1

    .line 417
    .local v1, "value":F
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mCurrentValue:F

    .line 418
    iget-boolean v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mWrapMode:Z

    if-eqz v2, :cond_33

    .line 419
    invoke-direct {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->wrap(F)F

    move-result v1

    goto :goto_3f

    .line 421
    :cond_33
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 423
    :goto_3f
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mId:I

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 424
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mEasyTouch:Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->getDuration()F

    move-result v2

    cmpg-float v2, v2, v0

    if-gez v2, :cond_51

    .line 425
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mEasingToStop:Z

    .line 427
    :cond_51
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->crossNotchCheck(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 428
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->needsRepaint()V

    .line 429
    return-void

    .line 431
    .end local v0    # "time":F
    .end local v1    # "value":F
    :cond_58
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchDown:Z

    if-eqz v0, :cond_8e

    .line 432
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    .line 433
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getCollectionsAccess()Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval(Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;[FI)F

    move-result v0

    .line 434
    .local v0, "value":F
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMode:I

    if-nez v1, :cond_77

    .line 435
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mValueAtDown:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mDownTouchValue:F

    sub-float v2, v0, v2

    add-float v0, v1, v2

    .line 437
    :cond_77
    iget-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mWrapMode:Z

    if-eqz v1, :cond_80

    .line 438
    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->wrap(F)F

    move-result v0

    goto :goto_8c

    .line 440
    :cond_80
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 442
    :goto_8c
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mCurrentValue:F

    .line 444
    .end local v0    # "value":F
    :cond_8e
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->crossNotchCheck(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 445
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mCurrentValue:F

    invoke-direct {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->wrap(F)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 446
    return-void
.end method

.method blacklist crossNotchCheck(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 12
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 322
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mLastValue:F

    .line 323
    .local v0, "prev":F
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mCurrentValue:F

    .line 324
    .local v1, "next":F
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mLastValue:F

    .line 326
    iget-boolean v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mWrapMode:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_d

    move v2, v3

    goto :goto_f

    :cond_d
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    .line 327
    .local v2, "min":F
    :goto_f
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    .line 329
    .local v4, "max":F
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopMode:I

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_92

    goto/16 :goto_90

    .line 354
    :pswitch_19
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1a
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    array-length v6, v6

    if-ge v5, v6, :cond_32

    .line 355
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    aget v6, v6, v5

    .line 356
    .local v6, "p":F
    sub-float v7, v0, v6

    sub-float v8, v1, v6

    mul-float/2addr v7, v8

    cmpg-float v7, v7, v3

    if-gez v7, :cond_2f

    .line 357
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->haptic(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 354
    .end local v6    # "p":F
    :cond_2f
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 360
    .end local v5    # "i":I
    :cond_32
    goto :goto_90

    .line 346
    :pswitch_33
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_34
    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    array-length v6, v6

    if-ge v5, v6, :cond_55

    .line 347
    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    aget v7, v7, v5

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    iget v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 348
    .restart local v6    # "p":F
    sub-float v7, v0, v6

    sub-float v8, v1, v6

    mul-float/2addr v7, v8

    cmpg-float v7, v7, v3

    if-gez v7, :cond_52

    .line 349
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->haptic(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 346
    .end local v6    # "p":F
    :cond_52
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 352
    .end local v5    # "i":I
    :cond_55
    goto :goto_90

    .line 339
    :pswitch_56
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    aget v3, v3, v6

    float-to-int v3, v3

    .line 340
    .local v3, "evenSpacing":I
    sub-float v5, v4, v2

    int-to-float v6, v3

    div-float/2addr v5, v6

    .line 341
    .local v5, "step":F
    sub-float v6, v0, v2

    div-float/2addr v6, v5

    float-to-int v6, v6

    sub-float v7, v1, v2

    div-float/2addr v7, v5

    float-to-int v7, v7

    if-eq v6, v7, :cond_90

    .line 342
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->haptic(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    goto :goto_90

    .line 331
    .end local v3    # "evenSpacing":I
    .end local v5    # "step":F
    :pswitch_6d
    sub-float v5, v2, v0

    sub-float v7, v4, v0

    mul-float/2addr v5, v7

    cmpg-float v5, v5, v3

    const/4 v7, 0x1

    if-gez v5, :cond_79

    move v5, v7

    goto :goto_7a

    :cond_79
    move v5, v6

    :goto_7a
    sub-float v8, v2, v1

    sub-float v9, v4, v1

    mul-float/2addr v8, v9

    cmpg-float v3, v8, v3

    if-gez v3, :cond_84

    move v6, v7

    :cond_84
    xor-int v3, v5, v6

    if-eqz v3, :cond_90

    .line 332
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->haptic(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    goto :goto_90

    .line 336
    :pswitch_8c
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->haptic(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 337
    nop

    .line 363
    :cond_90
    :goto_90
    return-void

    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_8c
        :pswitch_6d
        :pswitch_56
        :pswitch_33
        :pswitch_19
    .end packed-switch
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist haptic(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 311
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchEffects:I

    and-int/lit16 v0, v0, 0xff

    .line 312
    .local v0, "touch":I
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchEffects:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    .line 313
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchEffects:I

    and-int/lit16 v1, v1, 0x7fff

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getInteger(I)I

    move-result v0

    .line 316
    :cond_14
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->hapticEffect(I)V

    .line 317
    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 8
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 217
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMax:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 218
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMax:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 220
    :cond_11
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMin:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 221
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMin:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 223
    :cond_22
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mDefValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 224
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mDefValue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 226
    :cond_33
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-nez v0, :cond_3a

    .line 227
    invoke-virtual {p1, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->addTouchListener(Lcom/android/internal/widget/remotecompose/core/TouchListener;)V

    .line 229
    :cond_3a
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_3f
    if-ge v3, v1, :cond_5f

    aget v4, v0, v3

    .line 230
    .local v4, "v":F
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 231
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v5

    if-nez v5, :cond_5c

    .line 232
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v5

    if-nez v5, :cond_5c

    .line 233
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v5

    invoke-virtual {p1, v5, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 229
    .end local v4    # "v":F
    :cond_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 236
    :cond_5f
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    array-length v1, v0

    :goto_62
    if-ge v2, v1, :cond_76

    aget v3, v0, v2

    .line 237
    .local v3, "v":F
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 238
    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v4

    invoke-virtual {p1, v4, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 236
    .end local v3    # "v":F
    :cond_73
    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    .line 241
    :cond_76
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 6
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 718
    nop

    .line 719
    const-string v0, "TouchExpression"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mId:I

    .line 720
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mDefValue:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutDefValue:F

    .line 721
    const-string v3, "defValue"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMin:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    .line 722
    const-string v3, "min"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMax:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    .line 723
    const-string v3, "max"

    invoke-interface {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMode:I

    .line 724
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mode"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    .line 725
    const-string/jumbo v2, "srcExp"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addFloatExpressionSrc(Ljava/lang/String;[F)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 726
    return-void
.end method

.method public blacklist setComponent(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V
    .registers 4
    .param p1, "component"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 376
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 377
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v0, :cond_12

    .line 379
    :try_start_6
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getRoot()Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    move-result-object v0

    .line 380
    .local v0, "root":Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->setHasTouchListeners(Z)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_11

    .line 382
    .end local v0    # "root":Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;
    goto :goto_12

    .line 381
    :catch_11
    move-exception v0

    .line 384
    :cond_12
    :goto_12
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 530
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 531
    .local v0, "labels":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    array-length v2, v2

    if-ge v1, v2, :cond_3b

    .line 532
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    aget v3, v3, v1

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idStringFromNan(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 531
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 536
    .end local v1    # "i":I
    :cond_3b
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    const-string v2, ")"

    const-string v3, "] = ("

    const-string v4, "TouchExpression["

    if-nez v1, :cond_6b

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    .line 541
    invoke-static {v3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([F[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 537
    return-object v1

    .line 544
    :cond_6b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    .line 548
    invoke-static {v3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([F[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 544
    return-object v1
.end method

.method public blacklist touchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V
    .registers 8
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 453
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mScrLeft:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_42

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mScrRight:F

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_42

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mScrTop:F

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_42

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mScrBottom:F

    cmpg-float v0, p3, v0

    if-lez v0, :cond_19

    goto :goto_42

    .line 457
    :cond_19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mEasingToStop:Z

    .line 458
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchDown:Z

    .line 459
    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mUnmodified:Z

    .line 460
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMode:I

    if-nez v0, :cond_3e

    .line 461
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mValueAtDown:F

    .line 462
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    .line 463
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getCollectionsAccess()Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval(Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;[FI)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mDownTouchValue:F

    .line 465
    :cond_3e
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->needsRepaint()V

    .line 466
    return-void

    .line 454
    :cond_42
    :goto_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NOT IN WINDOW "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mScrLeft:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mScrTop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->log(Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method public blacklist touchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V
    .registers 5
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 505
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchDown:Z

    if-nez v0, :cond_5

    .line 506
    return-void

    .line 508
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 509
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->needsRepaint()V

    .line 510
    return-void
.end method

.method public blacklist touchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FFFF)V
    .registers 19
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "dx"    # F
    .param p5, "dy"    # F

    .line 471
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchDown:Z

    if-nez v0, :cond_5

    .line 472
    return-void

    .line 474
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchDown:Z

    .line 475
    const v0, 0x38d1b717    # 1.0E-4f

    .line 476
    .local v0, "dt":F
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 477
    return-void

    .line 479
    :cond_11
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getCollectionsAccess()Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    array-length v5, v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval(Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;[FI)F

    move-result v1

    .line 480
    .local v1, "v":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    array-length v4, v4

    if-ge v3, v4, :cond_53

    .line 481
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    aget v4, v4, v3

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 482
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    aget v4, v4, v3

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v4

    .line 483
    .local v4, "id":I
    const/16 v5, 0xd

    if-ne v4, v5, :cond_44

    .line 484
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    mul-float v6, p4, v0

    add-float/2addr v6, p2

    aput v6, v5, v3

    goto :goto_50

    .line 485
    :cond_44
    const/16 v5, 0xe

    if-ne v4, v5, :cond_50

    .line 486
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    mul-float v6, p5, v0

    add-float v6, p3, v6

    aput v6, v5, v3

    .line 480
    .end local v4    # "id":I
    :cond_50
    :goto_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 490
    .end local v3    # "i":I
    :cond_53
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getCollectionsAccess()Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    array-length v6, v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval(Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;[FI)F

    move-result v3

    .line 491
    .local v3, "vdt":F
    sub-float v4, v3, v1

    div-float v8, v4, v0

    .line 492
    .local v8, "slope":F
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mId:I

    invoke-virtual {p1, v4}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v6

    .line 494
    .local v6, "value":F
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getAnimationTime()F

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchUpTime:F

    .line 496
    invoke-direct {p0, v6, v8}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->getStopPosition(FF)F

    move-result v7

    .line 497
    .local v7, "dest":F
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMaxTime:F

    sub-float v5, v7, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMaxVelocity:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v5, v9

    div-float/2addr v4, v5

    invoke-static {v9, v4}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 498
    .local v9, "time":F
    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mEasyTouch:Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;

    iget v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMaxAcceleration:F

    iget v11, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMaxVelocity:F

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->config(FFFFFFLcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;)V

    .line 499
    iput-boolean v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mEasingToStop:Z

    .line 500
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->needsRepaint()V

    .line 501
    return-void
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 8
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 164
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    array-length v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    array-length v1, v1

    if-eq v0, v1, :cond_13

    .line 165
    :cond_c
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    .line 167
    :cond_13
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutStopSpec:[F

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutStopSpec:[F

    array-length v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    array-length v1, v1

    if-eq v0, v1, :cond_26

    .line 168
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutStopSpec:[F

    .line 170
    :cond_26
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMax:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 171
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMax:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    .line 173
    :cond_3a
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMin:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 174
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMin:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    .line 176
    :cond_4e
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mDefValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 177
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mDefValue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutDefValue:F

    .line 180
    :cond_62
    const/4 v0, 0x0

    .line 181
    .local v0, "value_changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_64
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    array-length v2, v2

    if-ge v1, v2, :cond_97

    .line 182
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    aget v2, v2, v1

    .line 183
    .local v2, "v":F
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 184
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v3

    if-nez v3, :cond_8c

    .line 185
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v3

    if-nez v3, :cond_8c

    .line 186
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v3

    .line 188
    .local v3, "newValue":F
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    aput v3, v4, v1

    .line 190
    .end local v3    # "newValue":F
    goto :goto_94

    .line 191
    :cond_8c
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    aget v4, v4, v1

    aput v4, v3, v1

    .line 181
    .end local v2    # "v":F
    :goto_94
    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    .line 194
    .end local v1    # "i":I
    :cond_97
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_98
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    array-length v2, v2

    if-ge v1, v2, :cond_bb

    .line 195
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    aget v2, v2, v1

    .line 196
    .restart local v2    # "v":F
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 197
    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v3

    .line 198
    .restart local v3    # "newValue":F
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutStopSpec:[F

    aput v3, v4, v1

    .line 199
    .end local v3    # "newValue":F
    goto :goto_b8

    .line 200
    :cond_b4
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutStopSpec:[F

    aput v2, v3, v1

    .line 194
    .end local v2    # "v":F
    :goto_b8
    add-int/lit8 v1, v1, 0x1

    goto :goto_98

    .line 203
    .end local v1    # "i":I
    :cond_bb
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mLastCalculatedValue:F

    .line 204
    .local v1, "v":F
    if-eqz v0, :cond_dd

    .line 205
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    array-length v4, v4

    const/4 v5, 0x0

    new-array v5, v5, [F

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval([FI[F)F

    move-result v1

    .line 206
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mLastCalculatedValue:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_dc

    .line 207
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getAnimationTime()F

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mLastChange:F

    .line 208
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mLastCalculatedValue:F

    goto :goto_dd

    .line 210
    :cond_dc
    const/4 v0, 0x0

    .line 213
    :cond_dd
    :goto_dd
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 13
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 514
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mValue:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMin:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMax:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mVelocityId:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchEffects:I

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopMode:I

    iget-object v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mNotches:[F

    const/4 v10, 0x0

    move-object v0, p1

    .end local p1    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .local v0, "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    invoke-static/range {v0 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI[FI[F[F)V

    .line 526
    return-void
.end method
