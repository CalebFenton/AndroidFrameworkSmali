.class public Landroid/widget/EdgeEffect;
.super Ljava/lang/Object;
.source "EdgeEffect.java"


# static fields
.field private static final ANGLE:D = 0.5235987755982988

.field private static final COS:F

.field private static final EPSILON:F = 0.001f

.field private static final MAX_ALPHA:F = 0.5f

.field private static final MAX_GLOW_SCALE:F = 2.0f

.field private static final MAX_VELOCITY:I = 0x2710

.field private static final MIN_VELOCITY:I = 0x64

.field private static final PULL_DECAY_TIME:I = 0x7d0

.field private static final PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 0.8f

.field private static final PULL_GLOW_BEGIN:F = 0.0f

.field private static final PULL_TIME:I = 0xa7

.field private static final RECEDE_TIME:I = 0x258

.field private static final SIN:F

.field private static final STATE_ABSORB:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_PULL_DECAY:I = 0x4

.field private static final STATE_RECEDE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EdgeEffect"

.field private static final VELOCITY_GLOW_FACTOR:I = 0x6


# instance fields
.field private mBaseGlowScale:F

.field private final mBounds:Landroid/graphics/Rect;

.field private mDisplacement:F

.field private mDuration:F

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPullDistance:F

.field private mRadius:F

.field private mStartTime:J

.field private mState:I

.field private mTargetDisplacement:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const-wide v2, 0x3fe0c152382d7365L    # 0.5235987755982988

    #@5
    .line 77
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    #@8
    move-result-wide v0

    #@9
    double-to-float v0, v0

    #@a
    sput v0, Landroid/widget/EdgeEffect;->SIN:F

    #@c
    .line 78
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    #@f
    move-result-wide v0

    #@10
    double-to-float v0, v0

    #@11
    sput v0, Landroid/widget/EdgeEffect;->COS:F

    #@13
    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/high16 v3, 0x3f000000    # 0.5f

    #@3
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 103
    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    #@8
    .line 107
    new-instance v2, Landroid/graphics/Rect;

    #@a
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #@d
    iput-object v2, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    #@f
    .line 108
    new-instance v2, Landroid/graphics/Paint;

    #@11
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    #@14
    iput-object v2, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    #@16
    .line 111
    iput v3, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    #@18
    .line 112
    iput v3, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    #@1a
    .line 119
    iget-object v2, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    #@1c
    const/4 v3, 0x1

    #@1d
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@20
    .line 121
    sget-object v2, Lcom/android/internal/R$styleable;->EdgeEffect:[I

    #@22
    .line 120
    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@25
    move-result-object v0

    #@26
    .line 123
    .local v0, "a":Landroid/content/res/TypedArray;
    const v2, -0x99999a

    #@29
    .line 122
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    #@2c
    move-result v1

    #@2d
    .line 124
    .local v1, "themeColor":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@30
    .line 125
    iget-object v2, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    #@32
    const v3, 0xffffff

    #@35
    and-int/2addr v3, v1

    #@36
    const/high16 v4, 0x33000000

    #@38
    or-int/2addr v3, v4

    #@39
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    #@3c
    .line 126
    iget-object v2, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    #@3e
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@40
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@43
    .line 127
    iget-object v2, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    #@45
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    #@47
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    #@49
    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    #@4c
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    #@4f
    .line 128
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    #@51
    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    #@54
    iput-object v2, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    #@56
    .line 118
    return-void
.end method

.method private update()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x3

    #@1
    const/4 v7, 0x0

    #@2
    .line 357
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@5
    move-result-wide v2

    #@6
    .line 358
    .local v2, "time":J
    iget-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    #@8
    sub-long v4, v2, v4

    #@a
    long-to-float v4, v4

    #@b
    iget v5, p0, Landroid/widget/EdgeEffect;->mDuration:F

    #@d
    div-float/2addr v4, v5

    #@e
    const/high16 v5, 0x3f800000    # 1.0f

    #@10
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    #@13
    move-result v1

    #@14
    .line 360
    .local v1, "t":F
    iget-object v4, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    #@16
    invoke-interface {v4, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@19
    move-result v0

    #@1a
    .line 362
    .local v0, "interp":F
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    #@1c
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    #@1e
    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    #@20
    sub-float/2addr v5, v6

    #@21
    mul-float/2addr v5, v0

    #@22
    add-float/2addr v4, v5

    #@23
    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    #@25
    .line 363
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    #@27
    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    #@29
    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    #@2b
    sub-float/2addr v5, v6

    #@2c
    mul-float/2addr v5, v0

    #@2d
    add-float/2addr v4, v5

    #@2e
    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    #@30
    .line 364
    iget v4, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    #@32
    iget v5, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    #@34
    add-float/2addr v4, v5

    #@35
    const/high16 v5, 0x40000000    # 2.0f

    #@37
    div-float/2addr v4, v5

    #@38
    iput v4, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    #@3a
    .line 366
    const v4, 0x3f7fbe77    # 0.999f

    #@3d
    cmpl-float v4, v1, v4

    #@3f
    if-ltz v4, :cond_0

    #@41
    .line 367
    iget v4, p0, Landroid/widget/EdgeEffect;->mState:I

    #@43
    packed-switch v4, :pswitch_data_0

    #@46
    .line 356
    :cond_0
    :goto_0
    return-void

    #@47
    .line 369
    :pswitch_0
    iput v8, p0, Landroid/widget/EdgeEffect;->mState:I

    #@49
    .line 370
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@4c
    move-result-wide v4

    #@4d
    iput-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    #@4f
    .line 371
    const/high16 v4, 0x44160000    # 600.0f

    #@51
    iput v4, p0, Landroid/widget/EdgeEffect;->mDuration:F

    #@53
    .line 373
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    #@55
    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    #@57
    .line 374
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    #@59
    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    #@5b
    .line 377
    iput v7, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    #@5d
    .line 378
    iput v7, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    #@5f
    goto :goto_0

    #@60
    .line 381
    :pswitch_1
    const/4 v4, 0x4

    #@61
    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    #@63
    .line 382
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@66
    move-result-wide v4

    #@67
    iput-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    #@69
    .line 383
    const/high16 v4, 0x44fa0000    # 2000.0f

    #@6b
    iput v4, p0, Landroid/widget/EdgeEffect;->mDuration:F

    #@6d
    .line 385
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    #@6f
    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    #@71
    .line 386
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    #@73
    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    #@75
    .line 389
    iput v7, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    #@77
    .line 390
    iput v7, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    #@79
    goto :goto_0

    #@7a
    .line 393
    :pswitch_2
    iput v8, p0, Landroid/widget/EdgeEffect;->mState:I

    #@7c
    goto :goto_0

    #@7d
    .line 396
    :pswitch_3
    const/4 v4, 0x0

    #@7e
    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    #@80
    goto :goto_0

    #@81
    .line 367
    nop

    #@82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/high16 v8, 0x3f800000    # 1.0f

    #@3
    const/4 v9, 0x0

    #@4
    .line 320
    invoke-direct {p0}, Landroid/widget/EdgeEffect;->update()V

    #@7
    .line 322
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@a
    move-result v2

    #@b
    .line 324
    .local v2, "count":I
    iget-object v6, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    #@d
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    #@10
    move-result v6

    #@11
    int-to-float v0, v6

    #@12
    .line 325
    .local v0, "centerX":F
    iget-object v6, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    #@14
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    #@17
    move-result v6

    #@18
    int-to-float v6, v6

    #@19
    iget v7, p0, Landroid/widget/EdgeEffect;->mRadius:F

    #@1b
    sub-float v1, v6, v7

    #@1d
    .line 327
    .local v1, "centerY":F
    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    #@1f
    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    #@22
    move-result v6

    #@23
    iget v7, p0, Landroid/widget/EdgeEffect;->mBaseGlowScale:F

    #@25
    mul-float/2addr v6, v7

    #@26
    invoke-virtual {p1, v8, v6, v0, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    #@29
    .line 329
    iget v6, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    #@2b
    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    #@2e
    move-result v6

    #@2f
    invoke-static {v9, v6}, Ljava/lang/Math;->max(FF)F

    #@32
    move-result v6

    #@33
    const/high16 v7, 0x3f000000    # 0.5f

    #@35
    sub-float v3, v6, v7

    #@37
    .line 330
    .local v3, "displacement":F
    iget-object v6, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    #@39
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    #@3c
    move-result v6

    #@3d
    int-to-float v6, v6

    #@3e
    mul-float/2addr v6, v3

    #@3f
    const/high16 v7, 0x40000000    # 2.0f

    #@41
    div-float v5, v6, v7

    #@43
    .line 332
    .local v5, "translateX":F
    iget-object v6, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    #@45
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    #@48
    .line 333
    invoke-virtual {p1, v5, v9}, Landroid/graphics/Canvas;->translate(FF)V

    #@4b
    .line 334
    iget-object v6, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    #@4d
    iget v7, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    #@4f
    const/high16 v8, 0x437f0000    # 255.0f

    #@51
    mul-float/2addr v7, v8

    #@52
    float-to-int v7, v7

    #@53
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    #@56
    .line 335
    iget v6, p0, Landroid/widget/EdgeEffect;->mRadius:F

    #@58
    iget-object v7, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    #@5a
    invoke-virtual {p1, v0, v1, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@5d
    .line 336
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@60
    .line 338
    const/4 v4, 0x0

    #@61
    .line 339
    .local v4, "oneLastFrame":Z
    iget v6, p0, Landroid/widget/EdgeEffect;->mState:I

    #@63
    const/4 v7, 0x3

    #@64
    if-ne v6, v7, :cond_0

    #@66
    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    #@68
    cmpl-float v6, v6, v9

    #@6a
    if-nez v6, :cond_0

    #@6c
    .line 340
    iput v10, p0, Landroid/widget/EdgeEffect;->mState:I

    #@6e
    .line 341
    const/4 v4, 0x1

    #@6f
    .line 344
    :cond_0
    iget v6, p0, Landroid/widget/EdgeEffect;->mState:I

    #@71
    if-nez v6, :cond_1

    #@73
    .end local v4    # "oneLastFrame":Z
    :goto_0
    return v4

    #@74
    .restart local v4    # "oneLastFrame":Z
    :cond_1
    const/4 v4, 0x1

    #@75
    goto :goto_0
.end method

.method public finish()V
    .locals 1

    #@0
    .prologue
    .line 167
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    #@3
    .line 166
    return-void
.end method

.method public getColor()I
    .locals 1

    #@0
    .prologue
    .line 306
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMaxHeight()I
    .locals 2

    #@0
    .prologue
    .line 353
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@5
    move-result v0

    #@6
    int-to-float v0, v0

    #@7
    const/high16 v1, 0x40000000    # 2.0f

    #@9
    mul-float/2addr v0, v1

    #@a
    const/high16 v1, 0x3f000000    # 0.5f

    #@c
    add-float/2addr v0, v1

    #@d
    float-to-int v0, v0

    #@e
    return v0
.end method

.method public isFinished()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 159
    iget v1, p0, Landroid/widget/EdgeEffect;->mState:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public onAbsorb(I)V
    .locals 4
    .param p1, "velocity"    # I

    #@0
    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    #@2
    .line 268
    const/4 v0, 0x2

    #@3
    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    #@5
    .line 269
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    #@8
    move-result v0

    #@9
    const/16 v1, 0x64

    #@b
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@e
    move-result v0

    #@f
    const/16 v1, 0x2710

    #@11
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@14
    move-result p1

    #@15
    .line 271
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@18
    move-result-wide v0

    #@19
    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    #@1b
    .line 272
    int-to-float v0, p1

    #@1c
    const v1, 0x3ca3d70a    # 0.02f

    #@1f
    mul-float/2addr v0, v1

    #@20
    const v1, 0x3e19999a    # 0.15f

    #@23
    add-float/2addr v0, v1

    #@24
    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    #@26
    .line 276
    const v0, 0x3e99999a    # 0.3f

    #@29
    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    #@2b
    .line 277
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    #@2d
    const/4 v1, 0x0

    #@2e
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    #@31
    move-result v0

    #@32
    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    #@34
    .line 284
    div-int/lit8 v0, p1, 0x64

    #@36
    mul-int/2addr v0, p1

    #@37
    int-to-float v0, v0

    #@38
    const v1, 0x391d4952    # 1.5E-4f

    #@3b
    mul-float/2addr v0, v1

    #@3c
    const/high16 v1, 0x40000000    # 2.0f

    #@3e
    div-float/2addr v0, v1

    #@3f
    const v1, 0x3ccccccd    # 0.025f

    #@42
    add-float/2addr v0, v1

    #@43
    const/high16 v1, 0x3f800000    # 1.0f

    #@45
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    #@48
    move-result v0

    #@49
    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    #@4b
    .line 287
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    #@4d
    mul-int/lit8 v1, p1, 0x6

    #@4f
    int-to-float v1, v1

    #@50
    const v2, 0x3727c5ac    # 1.0E-5f

    #@53
    mul-float/2addr v1, v2

    #@54
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    #@57
    move-result v1

    #@58
    .line 286
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    #@5b
    move-result v0

    #@5c
    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    #@5e
    .line 288
    iput v3, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    #@60
    .line 267
    return-void
.end method

.method public onPull(F)V
    .locals 1
    .param p1, "deltaDistance"    # F

    #@0
    .prologue
    .line 184
    const/high16 v0, 0x3f000000    # 0.5f

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/widget/EdgeEffect;->onPull(FF)V

    #@5
    .line 183
    return-void
.end method

.method public onPull(FF)V
    .locals 10
    .param p1, "deltaDistance"    # F
    .param p2, "displacement"    # F

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    #@3
    const/4 v6, 0x0

    #@4
    .line 201
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@7
    move-result-wide v2

    #@8
    .line 202
    .local v2, "now":J
    iput p2, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    #@a
    .line 203
    iget v4, p0, Landroid/widget/EdgeEffect;->mState:I

    #@c
    const/4 v5, 0x4

    #@d
    if-ne v4, v5, :cond_0

    #@f
    iget-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    #@11
    sub-long v4, v2, v4

    #@13
    long-to-float v4, v4

    #@14
    iget v5, p0, Landroid/widget/EdgeEffect;->mDuration:F

    #@16
    cmpg-float v4, v4, v5

    #@18
    if-gez v4, :cond_0

    #@1a
    .line 204
    return-void

    #@1b
    .line 206
    :cond_0
    iget v4, p0, Landroid/widget/EdgeEffect;->mState:I

    #@1d
    if-eq v4, v7, :cond_1

    #@1f
    .line 207
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    #@21
    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    #@24
    move-result v4

    #@25
    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    #@27
    .line 209
    :cond_1
    iput v7, p0, Landroid/widget/EdgeEffect;->mState:I

    #@29
    .line 211
    iput-wide v2, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    #@2b
    .line 212
    const/high16 v4, 0x43270000    # 167.0f

    #@2d
    iput v4, p0, Landroid/widget/EdgeEffect;->mDuration:F

    #@2f
    .line 214
    iget v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    #@31
    add-float/2addr v4, p1

    #@32
    iput v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    #@34
    .line 216
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    #@37
    move-result v0

    #@38
    .line 218
    .local v0, "absdd":F
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    #@3a
    const v5, 0x3f4ccccd    # 0.8f

    #@3d
    mul-float/2addr v5, v0

    #@3e
    add-float/2addr v4, v5

    #@3f
    .line 217
    const/high16 v5, 0x3f000000    # 0.5f

    #@41
    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    #@44
    move-result v4

    #@45
    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    #@47
    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    #@49
    .line 220
    iget v4, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    #@4b
    cmpl-float v4, v4, v6

    #@4d
    if-nez v4, :cond_2

    #@4f
    .line 221
    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    #@51
    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    #@53
    .line 229
    :goto_0
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    #@55
    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    #@57
    .line 230
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    #@59
    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    #@5b
    .line 200
    return-void

    #@5c
    .line 223
    :cond_2
    const-wide/16 v4, 0x0

    #@5e
    .line 224
    iget v6, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    #@60
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    #@63
    move-result v6

    #@64
    iget-object v7, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    #@66
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    #@69
    move-result v7

    #@6a
    int-to-float v7, v7

    #@6b
    mul-float/2addr v6, v7

    #@6c
    float-to-double v6, v6

    #@6d
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    #@70
    move-result-wide v6

    #@71
    .line 223
    div-double v6, v8, v6

    #@73
    sub-double v6, v8, v6

    #@75
    .line 224
    const-wide v8, 0x3fd3333333333333L    # 0.3

    #@7a
    .line 223
    sub-double/2addr v6, v8

    #@7b
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    #@7e
    move-result-wide v4

    #@7f
    .line 224
    const-wide v6, 0x3fe6666666666666L    # 0.7

    #@84
    .line 223
    div-double/2addr v4, v6

    #@85
    double-to-float v1, v4

    #@86
    .line 226
    .local v1, "scale":F
    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    #@88
    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    #@8a
    goto :goto_0
.end method

.method public onRelease()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 240
    iput v2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    #@3
    .line 242
    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    #@5
    const/4 v1, 0x1

    #@6
    if-eq v0, v1, :cond_0

    #@8
    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    #@a
    const/4 v1, 0x4

    #@b
    if-eq v0, v1, :cond_0

    #@d
    .line 243
    return-void

    #@e
    .line 246
    :cond_0
    const/4 v0, 0x3

    #@f
    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    #@11
    .line 247
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    #@13
    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    #@15
    .line 248
    iget v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    #@17
    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    #@19
    .line 250
    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    #@1b
    .line 251
    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    #@1d
    .line 253
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@20
    move-result-wide v0

    #@21
    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    #@23
    .line 254
    const/high16 v0, 0x44160000    # 600.0f

    #@25
    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    #@27
    .line 239
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    #@0
    .prologue
    .line 297
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    #@5
    .line 296
    return-void
.end method

.method public setSize(II)V
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    #@2
    const/high16 v9, 0x3f400000    # 0.75f

    #@4
    .line 138
    int-to-float v7, p1

    #@5
    mul-float/2addr v7, v9

    #@6
    sget v8, Landroid/widget/EdgeEffect;->SIN:F

    #@8
    div-float v4, v7, v8

    #@a
    .line 139
    .local v4, "r":F
    sget v7, Landroid/widget/EdgeEffect;->COS:F

    #@c
    mul-float v5, v7, v4

    #@e
    .line 140
    .local v5, "y":F
    sub-float v0, v4, v5

    #@10
    .line 141
    .local v0, "h":F
    int-to-float v7, p2

    #@11
    mul-float/2addr v7, v9

    #@12
    sget v8, Landroid/widget/EdgeEffect;->SIN:F

    #@14
    div-float v2, v7, v8

    #@16
    .line 142
    .local v2, "or":F
    sget v7, Landroid/widget/EdgeEffect;->COS:F

    #@18
    mul-float v3, v7, v2

    #@1a
    .line 143
    .local v3, "oy":F
    sub-float v1, v2, v3

    #@1c
    .line 145
    .local v1, "oh":F
    iput v4, p0, Landroid/widget/EdgeEffect;->mRadius:F

    #@1e
    .line 146
    const/4 v7, 0x0

    #@1f
    cmpl-float v7, v0, v7

    #@21
    if-lez v7, :cond_0

    #@23
    div-float v7, v1, v0

    #@25
    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    #@28
    move-result v6

    #@29
    :cond_0
    iput v6, p0, Landroid/widget/EdgeEffect;->mBaseGlowScale:F

    #@2b
    .line 148
    iget-object v6, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    #@2d
    iget-object v7, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    #@2f
    iget v7, v7, Landroid/graphics/Rect;->left:I

    #@31
    iget-object v8, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    #@33
    iget v8, v8, Landroid/graphics/Rect;->top:I

    #@35
    int-to-float v9, p2

    #@36
    invoke-static {v9, v0}, Ljava/lang/Math;->min(FF)F

    #@39
    move-result v9

    #@3a
    float-to-int v9, v9

    #@3b
    invoke-virtual {v6, v7, v8, p1, v9}, Landroid/graphics/Rect;->set(IIII)V

    #@3e
    .line 137
    return-void
.end method
