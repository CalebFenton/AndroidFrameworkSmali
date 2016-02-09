.class final Landroid/support/v4/widget/SwipeProgressBar;
.super Ljava/lang/Object;
.source "SwipeProgressBar.java"


# static fields
.field private static final ANIMATION_DURATION_MS:I = 0x7d0

.field private static final COLOR1:I = -0x4d000000

.field private static final COLOR2:I = -0x80000000

.field private static final COLOR3:I = 0x4d000000

.field private static final COLOR4:I = 0x1a000000

.field private static final FINISH_ANIMATION_DURATION_MS:I = 0x3e8

.field private static final INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private final mClipRect:Landroid/graphics/RectF;

.field private mColor1:I

.field private mColor2:I

.field private mColor3:I

.field private mColor4:I

.field private mFinishTime:J

.field private final mPaint:Landroid/graphics/Paint;

.field private mParent:Landroid/view/View;

.field private mRunning:Z

.field private mStartTime:J

.field private mTriggerPercentage:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 52
    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    #@2
    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    #@5
    sput-object v0, Landroid/support/v4/widget/SwipeProgressBar;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    #@7
    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    new-instance v0, Landroid/graphics/Paint;

    #@5
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@8
    iput-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    #@a
    .line 55
    new-instance v0, Landroid/graphics/RectF;

    #@c
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@f
    iput-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mClipRect:Landroid/graphics/RectF;

    #@11
    .line 68
    new-instance v0, Landroid/graphics/Rect;

    #@13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@16
    iput-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    #@18
    .line 71
    iput-object p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    #@1a
    .line 72
    const/high16 v0, -0x4d000000

    #@1c
    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    #@1e
    .line 73
    const/high16 v0, -0x80000000

    #@20
    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    #@22
    .line 74
    const/high16 v0, 0x4d000000    # 1.34217728E8f

    #@24
    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    #@26
    .line 75
    const/high16 v0, 0x1a000000

    #@28
    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    #@2a
    .line 70
    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;FFIF)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cx"    # F
    .param p3, "cy"    # F
    .param p4, "color"    # I
    .param p5, "pct"    # F

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 258
    iget-object v1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    #@3
    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setColor(I)V

    #@6
    .line 259
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@9
    .line 260
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    #@c
    .line 261
    sget-object v1, Landroid/support/v4/widget/SwipeProgressBar;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    #@e
    invoke-interface {v1, p5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@11
    move-result v0

    #@12
    .line 262
    .local v0, "radiusScale":F
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    #@15
    .line 263
    iget-object v1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    #@17
    invoke-virtual {p1, v2, v2, p2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@1a
    .line 264
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@1d
    .line 257
    return-void
.end method

.method private drawTrigger(Landroid/graphics/Canvas;II)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cx"    # I
    .param p3, "cy"    # I

    #@0
    .prologue
    .line 244
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    #@2
    iget v1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    #@4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    #@7
    .line 245
    int-to-float v0, p2

    #@8
    int-to-float v1, p3

    #@9
    int-to-float v2, p2

    #@a
    iget v3, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    #@c
    mul-float/2addr v2, v3

    #@d
    iget-object v3, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    #@f
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@12
    .line 243
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;)V
    .locals 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 139
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    #@4
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    #@7
    move-result v24

    #@8
    .line 140
    .local v24, "width":I
    move-object/from16 v0, p0

    #@a
    iget-object v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    #@c
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    #@f
    move-result v17

    #@10
    .line 141
    .local v17, "height":I
    div-int/lit8 v9, v24, 0x2

    #@12
    .line 142
    .local v9, "cx":I
    div-int/lit8 v10, v17, 0x2

    #@14
    .line 143
    .local v10, "cy":I
    const/4 v11, 0x0

    #@15
    .line 144
    .local v11, "drawTriggerWhileFinishing":Z
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@18
    move-result v23

    #@19
    .line 145
    .local v23, "restoreCount":I
    move-object/from16 v0, p0

    #@1b
    iget-object v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    #@1d
    move-object/from16 v0, p1

    #@1f
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    #@22
    .line 147
    move-object/from16 v0, p0

    #@24
    iget-boolean v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    #@26
    if-nez v2, :cond_0

    #@28
    move-object/from16 v0, p0

    #@2a
    iget-wide v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    #@2c
    const-wide/16 v4, 0x0

    #@2e
    cmp-long v2, v2, v4

    #@30
    if-lez v2, :cond_e

    #@32
    .line 148
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@35
    move-result-wide v20

    #@36
    .line 149
    .local v20, "now":J
    move-object/from16 v0, p0

    #@38
    iget-wide v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    #@3a
    sub-long v2, v20, v2

    #@3c
    const-wide/16 v4, 0x7d0

    #@3e
    rem-long v12, v2, v4

    #@40
    .line 150
    .local v12, "elapsed":J
    move-object/from16 v0, p0

    #@42
    iget-wide v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    #@44
    sub-long v2, v20, v2

    #@46
    const-wide/16 v4, 0x7d0

    #@48
    div-long v18, v2, v4

    #@4a
    .line 151
    .local v18, "iterations":J
    long-to-float v2, v12

    #@4b
    const/high16 v3, 0x41a00000    # 20.0f

    #@4d
    div-float v22, v2, v3

    #@4f
    .line 155
    .local v22, "rawProgress":F
    move-object/from16 v0, p0

    #@51
    iget-boolean v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    #@53
    if-nez v2, :cond_2

    #@55
    .line 158
    move-object/from16 v0, p0

    #@57
    iget-wide v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    #@59
    sub-long v2, v20, v2

    #@5b
    const-wide/16 v4, 0x3e8

    #@5d
    cmp-long v2, v2, v4

    #@5f
    if-ltz v2, :cond_1

    #@61
    .line 159
    const-wide/16 v2, 0x0

    #@63
    move-object/from16 v0, p0

    #@65
    iput-wide v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    #@67
    .line 160
    return-void

    #@68
    .line 166
    :cond_1
    move-object/from16 v0, p0

    #@6a
    iget-wide v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    #@6c
    sub-long v2, v20, v2

    #@6e
    const-wide/16 v4, 0x3e8

    #@70
    rem-long v14, v2, v4

    #@72
    .line 167
    .local v14, "finishElapsed":J
    long-to-float v2, v14

    #@73
    const/high16 v3, 0x41200000    # 10.0f

    #@75
    div-float v16, v2, v3

    #@77
    .line 168
    .local v16, "finishProgress":F
    const/high16 v2, 0x42c80000    # 100.0f

    #@79
    div-float v7, v16, v2

    #@7b
    .line 170
    .local v7, "pct":F
    div-int/lit8 v2, v24, 0x2

    #@7d
    int-to-float v2, v2

    #@7e
    sget-object v3, Landroid/support/v4/widget/SwipeProgressBar;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    #@80
    invoke-interface {v3, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@83
    move-result v3

    #@84
    mul-float v8, v2, v3

    #@86
    .line 171
    .local v8, "clearRadius":F
    move-object/from16 v0, p0

    #@88
    iget-object v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mClipRect:Landroid/graphics/RectF;

    #@8a
    int-to-float v3, v9

    #@8b
    sub-float/2addr v3, v8

    #@8c
    const/4 v4, 0x0

    #@8d
    int-to-float v5, v9

    #@8e
    add-float/2addr v5, v8

    #@8f
    move/from16 v0, v17

    #@91
    int-to-float v6, v0

    #@92
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    #@95
    .line 172
    move-object/from16 v0, p0

    #@97
    iget-object v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mClipRect:Landroid/graphics/RectF;

    #@99
    const/4 v3, 0x0

    #@9a
    const/4 v4, 0x0

    #@9b
    move-object/from16 v0, p1

    #@9d
    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    #@a0
    .line 177
    const/4 v11, 0x1

    #@a1
    .line 181
    .end local v7    # "pct":F
    .end local v8    # "clearRadius":F
    .end local v14    # "finishElapsed":J
    .end local v16    # "finishProgress":F
    :cond_2
    const-wide/16 v2, 0x0

    #@a3
    cmp-long v2, v18, v2

    #@a5
    if-nez v2, :cond_a

    #@a7
    .line 182
    move-object/from16 v0, p0

    #@a9
    iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    #@ab
    move-object/from16 v0, p1

    #@ad
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    #@b0
    .line 201
    :goto_0
    const/4 v2, 0x0

    #@b1
    cmpl-float v2, v22, v2

    #@b3
    if-ltz v2, :cond_3

    #@b5
    const/high16 v2, 0x41c80000    # 25.0f

    #@b7
    cmpg-float v2, v22, v2

    #@b9
    if-gtz v2, :cond_3

    #@bb
    .line 202
    const/high16 v2, 0x41c80000    # 25.0f

    #@bd
    add-float v2, v2, v22

    #@bf
    const/high16 v3, 0x40000000    # 2.0f

    #@c1
    mul-float/2addr v2, v3

    #@c2
    const/high16 v3, 0x42c80000    # 100.0f

    #@c4
    div-float v7, v2, v3

    #@c6
    .line 203
    .restart local v7    # "pct":F
    int-to-float v4, v9

    #@c7
    int-to-float v5, v10

    #@c8
    move-object/from16 v0, p0

    #@ca
    iget v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    #@cc
    move-object/from16 v2, p0

    #@ce
    move-object/from16 v3, p1

    #@d0
    invoke-direct/range {v2 .. v7}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    #@d3
    .line 205
    .end local v7    # "pct":F
    :cond_3
    const/4 v2, 0x0

    #@d4
    cmpl-float v2, v22, v2

    #@d6
    if-ltz v2, :cond_4

    #@d8
    const/high16 v2, 0x42480000    # 50.0f

    #@da
    cmpg-float v2, v22, v2

    #@dc
    if-gtz v2, :cond_4

    #@de
    .line 206
    const/high16 v2, 0x40000000    # 2.0f

    #@e0
    mul-float v2, v2, v22

    #@e2
    const/high16 v3, 0x42c80000    # 100.0f

    #@e4
    div-float v7, v2, v3

    #@e6
    .line 207
    .restart local v7    # "pct":F
    int-to-float v4, v9

    #@e7
    int-to-float v5, v10

    #@e8
    move-object/from16 v0, p0

    #@ea
    iget v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    #@ec
    move-object/from16 v2, p0

    #@ee
    move-object/from16 v3, p1

    #@f0
    invoke-direct/range {v2 .. v7}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    #@f3
    .line 209
    .end local v7    # "pct":F
    :cond_4
    const/high16 v2, 0x41c80000    # 25.0f

    #@f5
    cmpl-float v2, v22, v2

    #@f7
    if-ltz v2, :cond_5

    #@f9
    const/high16 v2, 0x42960000    # 75.0f

    #@fb
    cmpg-float v2, v22, v2

    #@fd
    if-gtz v2, :cond_5

    #@ff
    .line 210
    const/high16 v2, 0x41c80000    # 25.0f

    #@101
    sub-float v2, v22, v2

    #@103
    const/high16 v3, 0x40000000    # 2.0f

    #@105
    mul-float/2addr v2, v3

    #@106
    const/high16 v3, 0x42c80000    # 100.0f

    #@108
    div-float v7, v2, v3

    #@10a
    .line 211
    .restart local v7    # "pct":F
    int-to-float v4, v9

    #@10b
    int-to-float v5, v10

    #@10c
    move-object/from16 v0, p0

    #@10e
    iget v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    #@110
    move-object/from16 v2, p0

    #@112
    move-object/from16 v3, p1

    #@114
    invoke-direct/range {v2 .. v7}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    #@117
    .line 213
    .end local v7    # "pct":F
    :cond_5
    const/high16 v2, 0x42480000    # 50.0f

    #@119
    cmpl-float v2, v22, v2

    #@11b
    if-ltz v2, :cond_6

    #@11d
    const/high16 v2, 0x42c80000    # 100.0f

    #@11f
    cmpg-float v2, v22, v2

    #@121
    if-gtz v2, :cond_6

    #@123
    .line 214
    const/high16 v2, 0x42480000    # 50.0f

    #@125
    sub-float v2, v22, v2

    #@127
    const/high16 v3, 0x40000000    # 2.0f

    #@129
    mul-float/2addr v2, v3

    #@12a
    const/high16 v3, 0x42c80000    # 100.0f

    #@12c
    div-float v7, v2, v3

    #@12e
    .line 215
    .restart local v7    # "pct":F
    int-to-float v4, v9

    #@12f
    int-to-float v5, v10

    #@130
    move-object/from16 v0, p0

    #@132
    iget v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    #@134
    move-object/from16 v2, p0

    #@136
    move-object/from16 v3, p1

    #@138
    invoke-direct/range {v2 .. v7}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    #@13b
    .line 217
    .end local v7    # "pct":F
    :cond_6
    const/high16 v2, 0x42960000    # 75.0f

    #@13d
    cmpl-float v2, v22, v2

    #@13f
    if-ltz v2, :cond_7

    #@141
    const/high16 v2, 0x42c80000    # 100.0f

    #@143
    cmpg-float v2, v22, v2

    #@145
    if-gtz v2, :cond_7

    #@147
    .line 218
    const/high16 v2, 0x42960000    # 75.0f

    #@149
    sub-float v2, v22, v2

    #@14b
    const/high16 v3, 0x40000000    # 2.0f

    #@14d
    mul-float/2addr v2, v3

    #@14e
    const/high16 v3, 0x42c80000    # 100.0f

    #@150
    div-float v7, v2, v3

    #@152
    .line 219
    .restart local v7    # "pct":F
    int-to-float v4, v9

    #@153
    int-to-float v5, v10

    #@154
    move-object/from16 v0, p0

    #@156
    iget v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    #@158
    move-object/from16 v2, p0

    #@15a
    move-object/from16 v3, p1

    #@15c
    invoke-direct/range {v2 .. v7}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    #@15f
    .line 221
    .end local v7    # "pct":F
    :cond_7
    move-object/from16 v0, p0

    #@161
    iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    #@163
    const/4 v3, 0x0

    #@164
    cmpl-float v2, v2, v3

    #@166
    if-lez v2, :cond_8

    #@168
    if-eqz v11, :cond_8

    #@16a
    .line 226
    move-object/from16 v0, p1

    #@16c
    move/from16 v1, v23

    #@16e
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@171
    .line 227
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@174
    move-result v23

    #@175
    .line 228
    move-object/from16 v0, p0

    #@177
    iget-object v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    #@179
    move-object/from16 v0, p1

    #@17b
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    #@17e
    .line 229
    move-object/from16 v0, p0

    #@180
    move-object/from16 v1, p1

    #@182
    invoke-direct {v0, v1, v9, v10}, Landroid/support/v4/widget/SwipeProgressBar;->drawTrigger(Landroid/graphics/Canvas;II)V

    #@185
    .line 233
    :cond_8
    move-object/from16 v0, p0

    #@187
    iget-object v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    #@189
    move-object/from16 v0, p0

    #@18b
    iget-object v3, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    #@18d
    iget v3, v3, Landroid/graphics/Rect;->left:I

    #@18f
    move-object/from16 v0, p0

    #@191
    iget-object v4, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    #@193
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@195
    move-object/from16 v0, p0

    #@197
    iget-object v5, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    #@199
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@19b
    move-object/from16 v0, p0

    #@19d
    iget-object v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    #@19f
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    #@1a1
    .line 232
    invoke-static {v2, v3, v4, v5, v6}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;IIII)V

    #@1a4
    .line 240
    .end local v12    # "elapsed":J
    .end local v18    # "iterations":J
    .end local v20    # "now":J
    .end local v22    # "rawProgress":F
    :cond_9
    :goto_1
    move-object/from16 v0, p1

    #@1a6
    move/from16 v1, v23

    #@1a8
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@1ab
    .line 138
    return-void

    #@1ac
    .line 184
    .restart local v12    # "elapsed":J
    .restart local v18    # "iterations":J
    .restart local v20    # "now":J
    .restart local v22    # "rawProgress":F
    :cond_a
    const/4 v2, 0x0

    #@1ad
    cmpl-float v2, v22, v2

    #@1af
    if-ltz v2, :cond_b

    #@1b1
    const/high16 v2, 0x41c80000    # 25.0f

    #@1b3
    cmpg-float v2, v22, v2

    #@1b5
    if-gez v2, :cond_b

    #@1b7
    .line 185
    move-object/from16 v0, p0

    #@1b9
    iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    #@1bb
    move-object/from16 v0, p1

    #@1bd
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    #@1c0
    goto/16 :goto_0

    #@1c2
    .line 186
    :cond_b
    const/high16 v2, 0x41c80000    # 25.0f

    #@1c4
    cmpl-float v2, v22, v2

    #@1c6
    if-ltz v2, :cond_c

    #@1c8
    const/high16 v2, 0x42480000    # 50.0f

    #@1ca
    cmpg-float v2, v22, v2

    #@1cc
    if-gez v2, :cond_c

    #@1ce
    .line 187
    move-object/from16 v0, p0

    #@1d0
    iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    #@1d2
    move-object/from16 v0, p1

    #@1d4
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    #@1d7
    goto/16 :goto_0

    #@1d9
    .line 188
    :cond_c
    const/high16 v2, 0x42480000    # 50.0f

    #@1db
    cmpl-float v2, v22, v2

    #@1dd
    if-ltz v2, :cond_d

    #@1df
    const/high16 v2, 0x42960000    # 75.0f

    #@1e1
    cmpg-float v2, v22, v2

    #@1e3
    if-gez v2, :cond_d

    #@1e5
    .line 189
    move-object/from16 v0, p0

    #@1e7
    iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    #@1e9
    move-object/from16 v0, p1

    #@1eb
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    #@1ee
    goto/16 :goto_0

    #@1f0
    .line 191
    :cond_d
    move-object/from16 v0, p0

    #@1f2
    iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    #@1f4
    move-object/from16 v0, p1

    #@1f6
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    #@1f9
    goto/16 :goto_0

    #@1fb
    .line 236
    .end local v12    # "elapsed":J
    .end local v18    # "iterations":J
    .end local v20    # "now":J
    .end local v22    # "rawProgress":F
    :cond_e
    move-object/from16 v0, p0

    #@1fd
    iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    #@1ff
    const/4 v3, 0x0

    #@200
    cmpl-float v2, v2, v3

    #@202
    if-lez v2, :cond_9

    #@204
    move-object/from16 v0, p0

    #@206
    iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    #@208
    float-to-double v2, v2

    #@209
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    #@20b
    cmpg-double v2, v2, v4

    #@20d
    if-gtz v2, :cond_9

    #@20f
    .line 237
    move-object/from16 v0, p0

    #@211
    move-object/from16 v1, p1

    #@213
    invoke-direct {v0, v1, v9, v10}, Landroid/support/v4/widget/SwipeProgressBar;->drawTrigger(Landroid/graphics/Canvas;II)V

    #@216
    goto :goto_1
.end method

.method isRunning()Z
    .locals 6

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 135
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    #@3
    if-nez v1, :cond_0

    #@5
    iget-wide v2, p0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    #@7
    const-wide/16 v4, 0x0

    #@9
    cmp-long v1, v2, v4

    #@b
    if-lez v1, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method setBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 271
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    #@2
    iput p1, v0, Landroid/graphics/Rect;->left:I

    #@4
    .line 272
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    #@6
    iput p2, v0, Landroid/graphics/Rect;->top:I

    #@8
    .line 273
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    #@a
    iput p3, v0, Landroid/graphics/Rect;->right:I

    #@c
    .line 274
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    #@e
    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    #@10
    .line 270
    return-void
.end method

.method setColorScheme(IIII)V
    .locals 0
    .param p1, "color1"    # I
    .param p2, "color2"    # I
    .param p3, "color3"    # I
    .param p4, "color4"    # I

    #@0
    .prologue
    .line 89
    iput p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    #@2
    .line 90
    iput p2, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    #@4
    .line 91
    iput p3, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    #@6
    .line 92
    iput p4, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    #@8
    .line 88
    return-void
.end method

.method setTriggerPercentage(F)V
    .locals 5
    .param p1, "triggerPercentage"    # F

    #@0
    .prologue
    .line 101
    iput p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    #@2
    .line 102
    const-wide/16 v0, 0x0

    #@4
    iput-wide v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    #@6
    .line 104
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    #@8
    iget-object v1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    #@a
    iget v1, v1, Landroid/graphics/Rect;->left:I

    #@c
    iget-object v2, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    #@e
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@10
    iget-object v3, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    #@12
    iget v3, v3, Landroid/graphics/Rect;->right:I

    #@14
    iget-object v4, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    #@16
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    #@18
    .line 103
    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;IIII)V

    #@1b
    .line 100
    return-void
.end method

.method start()V
    .locals 2

    #@0
    .prologue
    .line 111
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 112
    const/4 v0, 0x0

    #@5
    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    #@7
    .line 113
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@a
    move-result-wide v0

    #@b
    iput-wide v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    #@d
    .line 114
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    #@10
    .line 115
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    #@12
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    #@15
    .line 110
    :cond_0
    return-void
.end method

.method stop()V
    .locals 2

    #@0
    .prologue
    .line 123
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 124
    const/4 v0, 0x0

    #@5
    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    #@7
    .line 125
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@a
    move-result-wide v0

    #@b
    iput-wide v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    #@d
    .line 126
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    #@10
    .line 127
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    #@12
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    #@15
    .line 122
    :cond_0
    return-void
.end method
