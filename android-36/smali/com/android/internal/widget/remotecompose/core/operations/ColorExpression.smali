.class public Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "ColorExpression.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field public static final blacklist ARGB_MODE:B = 0x5t

.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "ColorExpression"

.field public static final blacklist COLOR_COLOR_INTERPOLATE:B = 0x0t

.field public static final blacklist COLOR_ID_INTERPOLATE:B = 0x2t

.field public static final blacklist HSV_MODE:B = 0x4t

.field public static final blacklist IDARGB_MODE:B = 0x6t

.field public static final blacklist ID_COLOR_INTERPOLATE:B = 0x1t

.field public static final blacklist ID_ID_INTERPOLATE:B = 0x3t

.field private static final blacklist OP_CODE:I = 0x86


# instance fields
.field public blacklist mAlpha:I

.field private blacklist mArgbAlpha:F

.field private blacklist mArgbBlue:F

.field private blacklist mArgbGreen:F

.field private blacklist mArgbRed:F

.field public blacklist mColor1:I

.field public blacklist mColor2:I

.field public blacklist mHue:F

.field public blacklist mId:I

.field blacklist mMode:I

.field private blacklist mOutArgbAlpha:F

.field private blacklist mOutArgbBlue:F

.field private blacklist mOutArgbGreen:F

.field private blacklist mOutArgbRed:F

.field public blacklist mOutColor1:I

.field public blacklist mOutColor2:I

.field public blacklist mOutHue:F

.field public blacklist mOutSat:F

.field public blacklist mOutTween:F

.field public blacklist mOutValue:F

.field public blacklist mSat:F

.field public blacklist mTween:F

.field public blacklist mValue:F


# direct methods
.method public constructor blacklist <init>(IBFFFF)V
    .registers 10
    .param p1, "id"    # I
    .param p2, "mode"    # B
    .param p3, "alpha"    # F
    .param p4, "red"    # F
    .param p5, "green"    # F
    .param p6, "blue"    # F

    .line 177
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    .line 54
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    .line 55
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    .line 56
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    .line 57
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    .line 58
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    .line 59
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    .line 60
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mAlpha:I

    .line 62
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    .line 63
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    .line 64
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    .line 65
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbBlue:F

    .line 67
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbAlpha:F

    .line 68
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbRed:F

    .line 69
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbGreen:F

    .line 70
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbBlue:F

    .line 72
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutTween:F

    .line 178
    const/4 v0, 0x5

    if-ne p2, v0, :cond_40

    .line 181
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    .line 182
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    .line 183
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbAlpha:F

    .line 184
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbRed:F

    .line 185
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbGreen:F

    .line 186
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbBlue:F

    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbBlue:F

    .line 187
    return-void

    .line 179
    :cond_40
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(IBIFFF)V
    .registers 10
    .param p1, "id"    # I
    .param p2, "mode"    # B
    .param p3, "alpha"    # I
    .param p4, "hue"    # F
    .param p5, "sat"    # F
    .param p6, "value"    # F

    .line 126
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    .line 54
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    .line 55
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    .line 56
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    .line 57
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    .line 58
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    .line 59
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    .line 60
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mAlpha:I

    .line 62
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    .line 63
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    .line 64
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    .line 65
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbBlue:F

    .line 67
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbAlpha:F

    .line 68
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbRed:F

    .line 69
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbGreen:F

    .line 70
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbBlue:F

    .line 72
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutTween:F

    .line 127
    const/4 v0, 0x4

    if-ne p2, v0, :cond_4c

    .line 130
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    .line 131
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    .line 132
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mAlpha:I

    .line 133
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    .line 134
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    .line 135
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    .line 136
    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    .line 137
    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    .line 138
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    .line 139
    return-void

    .line 128
    :cond_4c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(IFFF)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "hue"    # F
    .param p3, "sat"    # F
    .param p4, "value"    # F

    .line 105
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    .line 54
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    .line 55
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    .line 56
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    .line 57
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    .line 58
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    .line 59
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    .line 60
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mAlpha:I

    .line 62
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    .line 63
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    .line 64
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    .line 65
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbBlue:F

    .line 67
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbAlpha:F

    .line 68
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbRed:F

    .line 69
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbGreen:F

    .line 70
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbBlue:F

    .line 72
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutTween:F

    .line 106
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    .line 107
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mAlpha:I

    .line 108
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    .line 109
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    .line 110
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    .line 111
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    .line 112
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    .line 113
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    .line 114
    return-void
.end method

.method public constructor blacklist <init>(IIIIF)V
    .registers 8
    .param p1, "id"    # I
    .param p2, "mode"    # I
    .param p3, "color1"    # I
    .param p4, "color2"    # I
    .param p5, "tween"    # F

    .line 150
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    .line 54
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    .line 55
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    .line 56
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    .line 57
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    .line 58
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    .line 59
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    .line 60
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mAlpha:I

    .line 62
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    .line 63
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    .line 64
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    .line 65
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbBlue:F

    .line 67
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbAlpha:F

    .line 68
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbRed:F

    .line 69
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbGreen:F

    .line 70
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbBlue:F

    .line 72
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutTween:F

    .line 151
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    .line 152
    and-int/lit16 v0, p2, 0xff

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    .line 153
    shr-int/lit8 v0, p2, 0x10

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mAlpha:I

    .line 154
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4c

    .line 155
    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    .line 156
    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    .line 157
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    .line 159
    :cond_4c
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    .line 160
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    .line 161
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    .line 162
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutTween:F

    .line 163
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor1:I

    .line 164
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor2:I

    .line 165
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFF)V
    .registers 14
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "id"    # I
    .param p2, "alpha"    # F
    .param p3, "red"    # F
    .param p4, "green"    # F
    .param p5, "blue"    # F

    .line 411
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    goto :goto_9

    :cond_8
    const/4 v0, 0x5

    .line 412
    .local v0, "param1":I
    :goto_9
    nop

    .line 413
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    goto :goto_19

    :cond_15
    const/high16 v1, 0x44800000    # 1024.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    :goto_19
    shl-int/lit8 v1, v1, 0x10

    or-int v4, v0, v1

    .line 414
    .end local v0    # "param1":I
    .local v4, "param1":I
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    .line 415
    .local v5, "param2":I
    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    .line 416
    .local v6, "param3":I
    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    .line 417
    .local v7, "param4":I
    move-object v2, p0

    move v3, p1

    .end local p0    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .end local p1    # "id":I
    .local v2, "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .local v3, "id":I
    invoke-static/range {v2 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIII)V

    .line 418
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V
    .registers 12
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "id"    # I
    .param p2, "mode"    # I
    .param p3, "color1"    # I
    .param p4, "color2"    # I
    .param p5, "tween"    # F

    .line 396
    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p0    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .end local p1    # "id":I
    .end local p2    # "mode":I
    .end local p3    # "color1":I
    .end local p4    # "color2":I
    .local v0, "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .local v1, "id":I
    .local v2, "mode":I
    .local v3, "color1":I
    .local v4, "color2":I
    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIII)V

    .line 397
    return-void
.end method

.method private static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIII)V
    .registers 7
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "id"    # I
    .param p2, "param1"    # I
    .param p3, "param2"    # I
    .param p4, "param3"    # I
    .param p5, "param4"    # I

    .line 422
    const/16 v0, 0x86

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 423
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 424
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 425
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 426
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 427
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 428
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 6
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 488
    const/16 v0, 0x86

    const-string v1, "ColorExpression"

    const-string v2, "Expressions Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 489
    const-string v1, "A Color defined by an expression"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 490
    const/4 v1, 0x0

    const-string v2, "id"

    const-string v3, "Id of the color"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 491
    const-string v2, "mode"

    const-string v3, "The use of the next 3 fields"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 492
    const-string v2, "COLOR_COLOR_INTERPOLATE"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 493
    const-string v2, "COLOR_ID_INTERPOLATE"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 494
    const-string v2, "ID_COLOR_INTERPOLATE"

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 495
    const-string v2, "ID_ID_INTERPOLATE"

    const/4 v4, 0x3

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 496
    const-string v2, "HSV"

    const/4 v4, 0x4

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 497
    const-string v2, "color1"

    const-string v4, "32 bit ARGB color"

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 498
    const-string v2, "color2"

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 499
    const-string/jumbo v1, "tween"

    invoke-virtual {v0, v3, v1, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 500
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 381
    const/16 v0, 0x86

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 372
    const-string v0, "ColorExpression"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 15
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

    .line 437
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 438
    .local v1, "id":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v7

    .line 439
    .local v7, "param1":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v8

    .line 440
    .local v8, "param2":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v9

    .line 441
    .local v9, "param3":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v10

    .line 442
    .local v10, "param4":I
    and-int/lit16 v11, v7, 0xff

    .line 447
    .local v11, "mode":I
    const/high16 v0, 0x44800000    # 1024.0f

    packed-switch v11, :pswitch_data_a4

    .line 478
    move v2, v11

    .end local v11    # "mode":I
    .local v2, "mode":I
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid mode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    .end local v2    # "mode":I
    .restart local v11    # "mode":I
    :pswitch_35
    shr-int/lit8 v0, v7, 0x10

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v3

    .line 450
    .local v3, "alpha":F
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    .line 451
    .local v4, "red":F
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    .line 452
    .local v5, "green":F
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    .line 453
    .local v6, "blue":F
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v2, 0x5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IBFFFF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    move v3, v8

    move v4, v9

    move v2, v11

    goto :goto_a2

    .line 456
    .end local v3    # "alpha":F
    .end local v4    # "red":F
    .end local v5    # "green":F
    .end local v6    # "blue":F
    :pswitch_54
    shr-int/lit8 v2, v7, 0x10

    int-to-float v2, v2

    div-float v3, v2, v0

    .line 457
    .restart local v3    # "alpha":F
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    .line 458
    .restart local v4    # "red":F
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    .line 459
    .restart local v5    # "green":F
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    .line 460
    .restart local v6    # "blue":F
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v2, 0x5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IBFFFF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    move v3, v8

    move v4, v9

    move v2, v11

    goto :goto_a2

    .line 463
    .end local v3    # "alpha":F
    .end local v4    # "red":F
    .end local v5    # "green":F
    .end local v6    # "blue":F
    :pswitch_72
    shr-int/lit8 v2, v7, 0x10

    int-to-float v2, v2

    div-float v12, v2, v0

    .line 464
    .local v12, "alpha":F
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    .line 465
    .local v4, "hue":F
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    .line 466
    .local v5, "sat":F
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    .line 467
    .local v6, "value":F
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    shr-int/lit8 v3, v7, 0x10

    const/4 v2, 0x4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IBIFFF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    move v3, v8

    move v4, v9

    move v2, v11

    goto :goto_a2

    .line 473
    .end local v4    # "hue":F
    .end local v5    # "sat":F
    .end local v6    # "value":F
    .end local v12    # "alpha":F
    :pswitch_92
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    .line 475
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    move v3, v8

    move v4, v9

    move v2, v11

    .end local v8    # "param2":I
    .end local v9    # "param3":I
    .end local v11    # "mode":I
    .restart local v2    # "mode":I
    .local v3, "param2":I
    .local v4, "param3":I
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IIIIF)V

    .line 473
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    nop

    .line 480
    :goto_a2
    return-void

    nop

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_92
        :pswitch_92
        :pswitch_92
        :pswitch_92
        :pswitch_72
        :pswitch_54
        :pswitch_35
    .end packed-switch
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 7
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 269
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1e

    .line 270
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mAlpha:I

    shl-int/lit8 v1, v1, 0x18

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    .line 271
    invoke-static {v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->hsvToRgb(FFF)I

    move-result v2

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 270
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadColor(II)V

    .line 272
    return-void

    .line 274
    :cond_1e
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_35

    .line 275
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbAlpha:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbRed:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbGreen:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbBlue:F

    .line 276
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->toARGB(FFFF)I

    move-result v1

    .line 275
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadColor(II)V

    .line 277
    return-void

    .line 279
    :cond_35
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutTween:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_54

    .line 280
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4c

    .line 281
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor1:I

    .line 283
    :cond_4c
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor1:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadColor(II)V

    goto :goto_7e

    .line 285
    :cond_54
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_61

    .line 286
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor1:I

    .line 288
    :cond_61
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6f

    .line 289
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor2:I

    .line 292
    :cond_6f
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor1:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor2:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutTween:F

    invoke-static {v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->interpolateColor(IIF)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadColor(II)V

    .line 294
    :goto_7e
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "indent"    # Ljava/lang/String;

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 4
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 229
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_39

    .line 230
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 231
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 233
    :cond_16
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 234
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 236
    :cond_27
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 237
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 239
    :cond_38
    return-void

    .line 241
    :cond_39
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_83

    .line 242
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 243
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 245
    :cond_4f
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 246
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 248
    :cond_60
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 249
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 251
    :cond_71
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbBlue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 252
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbBlue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 254
    :cond_82
    return-void

    .line 256
    :cond_83
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 257
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 259
    :cond_94
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9f

    .line 260
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 262
    :cond_9f
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_aa

    .line 263
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 265
    :cond_aa
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 6
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 510
    const-string v0, "ColorExpression"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 511
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const-string v1, "mode"

    packed-switch v0, :pswitch_data_92

    .line 536
    const-string v0, "NONE"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    goto :goto_90

    .line 529
    :pswitch_1e
    const-string v0, "ARGB"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 530
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbAlpha:F

    const-string v2, "a"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 531
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbRed:F

    const-string/jumbo v2, "r"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 532
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbGreen:F

    const-string v2, "g"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 533
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbBlue:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbBlue:F

    const-string v2, "b"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 534
    goto :goto_90

    .line 522
    :pswitch_49
    const-string v0, "HSV"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 523
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    const-string v2, "hue"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 524
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    const-string/jumbo v2, "sat"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 525
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    const-string/jumbo v2, "val"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 526
    goto :goto_90

    .line 516
    :pswitch_6c
    const-string v0, "TWEEN"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 517
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor1:I

    int-to-float v1, v1

    const-string/jumbo v2, "startColor"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 518
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor2:I

    int-to-float v1, v1

    const-string v3, "endColor"

    invoke-interface {p1, v3, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 519
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutTween:F

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 520
    nop

    .line 538
    :goto_90
    return-void

    nop

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_49
        :pswitch_1e
        :pswitch_1e
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 9

    .line 327
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x4

    const-string v2, ")"

    const-string v3, "ColorExpression["

    const-string v4, ", "

    if-ne v0, v1, :cond_4f

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = hsv ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    .line 331
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    .line 333
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    .line 335
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    return-object v0

    .line 338
    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ColorExpression toString"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->log(Ljava/lang/String;)V

    .line 339
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_ca

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = rgb ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    .line 343
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    .line 345
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    .line 347
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    .line 349
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    return-object v0

    .line 352
    :cond_ca
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const-string v5, "]"

    const-string v6, "["

    if-ne v0, v1, :cond_ec

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f2

    :cond_ec
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->colorInt(I)Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "c1":Ljava/lang/String;
    :goto_f2
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v7, 0x2

    and-int/2addr v1, v7

    if-ne v1, v7, :cond_110

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_116

    :cond_110
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->colorInt(I)Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, "c2":Ljava/lang/String;
    :goto_116
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] = tween("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    .line 361
    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 354
    return-object v2
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 4
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 191
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_41

    .line 192
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 193
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutHue:F

    .line 195
    :cond_19
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 196
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutSat:F

    .line 198
    :cond_2d
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 199
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    .line 202
    :cond_41
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_96

    .line 203
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 204
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbAlpha:F

    .line 206
    :cond_5a
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 207
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbRed:F

    .line 209
    :cond_6e
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 210
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbGreen:F

    .line 212
    :cond_82
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbBlue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 213
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbBlue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutArgbBlue:F

    .line 216
    :cond_96
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 217
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutTween:F

    .line 219
    :cond_aa
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_b8

    .line 220
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor1:I

    .line 222
    :cond_b8
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_c6

    .line 223
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutColor2:I

    .line 225
    :cond_c6
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 15
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 299
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    packed-switch v0, :pswitch_data_58

    .line 320
    move-object v7, p1

    .end local p1    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .local v7, "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Invalid mode "

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 301
    .end local v7    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .restart local p1    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    :pswitch_e
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbAlpha:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbRed:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbGreen:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mArgbBlue:F

    move-object v1, p1

    .end local p1    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .local v1, "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    invoke-static/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFF)V

    .line 302
    move-object v7, v1

    .end local v1    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .restart local v7    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    goto :goto_56

    .line 305
    .end local v7    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .restart local p1    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    :pswitch_1e
    move-object v7, p1

    .end local p1    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .restart local v7    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mValue:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mOutValue:F

    .line 306
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mHue:F

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    .line 307
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mSat:F

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    .line 308
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mAlpha:I

    shl-int/lit8 v0, v0, 0x10

    or-int v9, p1, v0

    .line 309
    .local v9, "mode":I
    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    iget v11, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    iget v12, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    invoke-static/range {v7 .. v12}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V

    .line 311
    goto :goto_56

    .line 316
    .end local v7    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .end local v9    # "mode":I
    .restart local p1    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    :pswitch_47
    move-object v7, p1

    .end local p1    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .restart local v7    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    iget v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mMode:I

    iget v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor1:I

    iget v11, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mColor2:I

    iget v12, p0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mTween:F

    invoke-static/range {v7 .. v12}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V

    .line 318
    nop

    .line 322
    :goto_56
    return-void

    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_1e
        :pswitch_e
    .end packed-switch
.end method
