.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;
.super Ljava/lang/Object;
.source "ImageScaling.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist SCALE_CROP:I = 0x5

.field public static final blacklist SCALE_FILL_BOUNDS:I = 0x6

.field public static final blacklist SCALE_FILL_HEIGHT:I = 0x3

.field public static final blacklist SCALE_FILL_WIDTH:I = 0x2

.field public static final blacklist SCALE_FIT:I = 0x4

.field public static final blacklist SCALE_FIXED_SCALE:I = 0x7

.field public static final blacklist SCALE_INSIDE:I = 0x1

.field public static final blacklist SCALE_NONE:I


# instance fields
.field private blacklist mDstBottom:F

.field private blacklist mDstLeft:F

.field private blacklist mDstRight:F

.field private blacklist mDstTop:F

.field public blacklist mFinalDstBottom:F

.field public blacklist mFinalDstLeft:F

.field public blacklist mFinalDstRight:F

.field public blacklist mFinalDstTop:F

.field private blacklist mScaleFactor:F

.field private blacklist mScaleType:I

.field private blacklist mSrcBottom:F

.field private blacklist mSrcLeft:F

.field private blacklist mSrcRight:F

.field private blacklist mSrcTop:F


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(FFFFFFFFIF)V
    .registers 11
    .param p1, "srcLeft"    # F
    .param p2, "srcTop"    # F
    .param p3, "srcRight"    # F
    .param p4, "srcBottom"    # F
    .param p5, "dstLeft"    # F
    .param p6, "dstTop"    # F
    .param p7, "dstRight"    # F
    .param p8, "dstBottom"    # F
    .param p9, "type"    # I
    .param p10, "scale"    # F

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcLeft:F

    .line 67
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcTop:F

    .line 68
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcRight:F

    .line 69
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcBottom:F

    .line 70
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstLeft:F

    .line 71
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstTop:F

    .line 72
    iput p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstRight:F

    .line 73
    iput p8, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstBottom:F

    .line 74
    iput p9, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mScaleType:I

    .line 75
    iput p10, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mScaleFactor:F

    .line 76
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->adjustDrawToType()V

    .line 77
    return-void
.end method

.method private blacklist adjustDrawToType()V
    .registers 13

    .line 133
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcRight:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcLeft:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 134
    .local v0, "sw":I
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcBottom:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcTop:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 135
    .local v1, "sh":I
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstRight:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstLeft:F

    sub-float/2addr v2, v3

    .line 136
    .local v2, "width":F
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstBottom:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstTop:F

    sub-float/2addr v3, v4

    .line 137
    .local v3, "height":F
    float-to-int v4, v2

    .line 138
    .local v4, "dw":I
    float-to-int v5, v3

    .line 139
    .local v5, "dh":I
    const/4 v6, 0x0

    .line 140
    .local v6, "dLeft":I
    move v7, v4

    .line 141
    .local v7, "dRight":I
    const/4 v8, 0x0

    .line 142
    .local v8, "dTop":I
    move v9, v5

    .line 147
    .local v9, "dBottom":I
    if-eqz v1, :cond_f0

    if-nez v0, :cond_22

    goto/16 :goto_f0

    .line 148
    :cond_22
    iget v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mScaleType:I

    packed-switch v10, :pswitch_data_f2

    goto/16 :goto_d7

    .line 213
    :pswitch_29
    int-to-float v10, v1

    iget v11, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mScaleFactor:F

    mul-float/2addr v10, v11

    float-to-int v5, v10

    .line 214
    int-to-float v10, v0

    iget v11, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mScaleFactor:F

    mul-float/2addr v10, v11

    float-to-int v4, v10

    .line 215
    float-to-int v10, v3

    sub-int/2addr v10, v5

    div-int/lit8 v8, v10, 0x2

    .line 216
    add-int v9, v5, v8

    .line 217
    float-to-int v10, v2

    sub-int/2addr v10, v4

    div-int/lit8 v6, v10, 0x2

    .line 218
    add-int v7, v4, v6

    goto/16 :goto_d7

    .line 211
    :pswitch_41
    goto/16 :goto_d7

    .line 199
    :pswitch_43
    int-to-float v10, v0

    mul-float/2addr v10, v3

    int-to-float v11, v1

    mul-float/2addr v11, v2

    cmpg-float v10, v10, v11

    if-gez v10, :cond_57

    .line 200
    mul-int v10, v4, v1

    div-int v5, v10, v0

    .line 201
    float-to-int v10, v3

    sub-int/2addr v10, v5

    div-int/lit8 v8, v10, 0x2

    .line 202
    add-int v9, v5, v8

    goto/16 :goto_d7

    .line 204
    :cond_57
    mul-int v10, v5, v0

    div-int v4, v10, v1

    .line 205
    float-to-int v10, v2

    sub-int/2addr v10, v4

    div-int/lit8 v6, v10, 0x2

    .line 206
    add-int v7, v4, v6

    .line 208
    goto/16 :goto_d7

    .line 188
    :pswitch_63
    int-to-float v10, v0

    mul-float/2addr v10, v3

    int-to-float v11, v1

    mul-float/2addr v11, v2

    cmpl-float v10, v10, v11

    if-lez v10, :cond_76

    .line 189
    mul-int v10, v4, v1

    div-int v5, v10, v0

    .line 190
    float-to-int v10, v3

    sub-int/2addr v10, v5

    div-int/lit8 v8, v10, 0x2

    .line 191
    add-int v9, v5, v8

    goto :goto_d7

    .line 193
    :cond_76
    mul-int v10, v5, v0

    div-int v4, v10, v1

    .line 194
    float-to-int v10, v2

    sub-int/2addr v10, v4

    div-int/lit8 v6, v10, 0x2

    .line 195
    add-int v7, v4, v6

    .line 197
    goto :goto_d7

    .line 180
    :pswitch_81
    mul-int v10, v5, v0

    div-int v4, v10, v1

    .line 182
    float-to-int v10, v3

    sub-int/2addr v10, v5

    div-int/lit8 v8, v10, 0x2

    .line 183
    add-int v9, v5, v8

    .line 184
    float-to-int v10, v2

    sub-int/2addr v10, v4

    div-int/lit8 v6, v10, 0x2

    .line 185
    add-int v7, v4, v6

    .line 186
    goto :goto_d7

    .line 172
    :pswitch_92
    mul-int v10, v4, v1

    div-int v5, v10, v0

    .line 174
    float-to-int v10, v3

    sub-int/2addr v10, v5

    div-int/lit8 v8, v10, 0x2

    .line 175
    add-int v9, v5, v8

    .line 176
    float-to-int v10, v2

    sub-int/2addr v10, v4

    div-int/lit8 v6, v10, 0x2

    .line 177
    add-int v7, v4, v6

    .line 178
    goto :goto_d7

    .line 158
    :pswitch_a3
    if-le v5, v1, :cond_aa

    if-le v4, v0, :cond_aa

    .line 159
    move v5, v1

    .line 160
    move v4, v0

    goto :goto_bb

    .line 161
    :cond_aa
    int-to-float v10, v0

    mul-float/2addr v10, v3

    int-to-float v11, v1

    mul-float/2addr v11, v2

    cmpl-float v10, v10, v11

    if-lez v10, :cond_b7

    .line 162
    mul-int v10, v4, v1

    div-int v5, v10, v0

    goto :goto_bb

    .line 164
    :cond_b7
    mul-int v10, v5, v0

    div-int v4, v10, v1

    .line 166
    :goto_bb
    float-to-int v10, v3

    sub-int/2addr v10, v5

    div-int/lit8 v8, v10, 0x2

    .line 167
    add-int v9, v5, v8

    .line 168
    float-to-int v10, v2

    sub-int/2addr v10, v4

    div-int/lit8 v6, v10, 0x2

    .line 169
    add-int v7, v4, v6

    .line 170
    goto :goto_d7

    .line 150
    :pswitch_c8
    move v5, v1

    .line 151
    move v4, v0

    .line 152
    float-to-int v10, v3

    sub-int/2addr v10, v5

    div-int/lit8 v8, v10, 0x2

    .line 153
    add-int v9, v5, v8

    .line 154
    float-to-int v10, v2

    sub-int/2addr v10, v4

    div-int/lit8 v6, v10, 0x2

    .line 155
    add-int v7, v4, v6

    .line 156
    nop

    .line 222
    :goto_d7
    int-to-float v10, v7

    iget v11, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstLeft:F

    add-float/2addr v10, v11

    iput v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstRight:F

    .line 223
    int-to-float v10, v6

    iget v11, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstLeft:F

    add-float/2addr v10, v11

    iput v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstLeft:F

    .line 224
    int-to-float v10, v9

    iget v11, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstTop:F

    add-float/2addr v10, v11

    iput v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstBottom:F

    .line 225
    int-to-float v10, v8

    iget v11, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstTop:F

    add-float/2addr v10, v11

    iput v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mFinalDstTop:F

    .line 230
    return-void

    .line 147
    :cond_f0
    :goto_f0
    return-void

    nop

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_c8
        :pswitch_a3
        :pswitch_92
        :pswitch_81
        :pswitch_63
        :pswitch_43
        :pswitch_41
        :pswitch_29
    .end packed-switch
.end method

.method static blacklist str(F)Ljava/lang/String;
    .registers 3
    .param p0, "v"    # F

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    float-to-int v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist typeToString(I)Ljava/lang/String;
    .registers 9
    .param p0, "type"    # I

    .line 240
    const-string v6, "fill_bounds"

    const-string v7, "fixed_scale"

    const-string v0, "none"

    const-string v1, "inside"

    const-string v2, "fill_width"

    const-string v3, "fill_height"

    const-string v4, "fit"

    const-string v5, "crop"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "typeString":[Ljava/lang/String;
    aget-object v1, v0, p0

    return-object v1
.end method


# virtual methods
.method blacklist print(Ljava/lang/String;FFFF)V
    .registers 10
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F

    .line 125
    move-object v0, p1

    .line 126
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->str(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->str(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->str(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->str(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-float v2, p4, p2

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->str(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-float v2, p5, p3

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->str(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->log(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public blacklist setup(FFFFFFFFIF)V
    .registers 11
    .param p1, "srcLeft"    # F
    .param p2, "srcTop"    # F
    .param p3, "srcRight"    # F
    .param p4, "srcBottom"    # F
    .param p5, "dstLeft"    # F
    .param p6, "dstTop"    # F
    .param p7, "dstRight"    # F
    .param p8, "dstBottom"    # F
    .param p9, "type"    # I
    .param p10, "scale"    # F

    .line 105
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcLeft:F

    .line 106
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcTop:F

    .line 107
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcRight:F

    .line 108
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mSrcBottom:F

    .line 109
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstLeft:F

    .line 110
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstTop:F

    .line 111
    iput p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstRight:F

    .line 112
    iput p8, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mDstBottom:F

    .line 113
    iput p9, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mScaleType:I

    .line 114
    iput p10, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->mScaleFactor:F

    .line 115
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/ImageScaling;->adjustDrawToType()V

    .line 116
    return-void
.end method
