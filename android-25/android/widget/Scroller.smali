.class public Landroid/widget/Scroller;
.super Ljava/lang/Object;
.source "Scroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Scroller$ViscousFluidInterpolator;
    }
.end annotation


# static fields
.field private static DECELERATION_RATE:F = 0.0f

.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final END_TENSION:F = 1.0f

.field private static final FLING_MODE:I = 0x1

.field private static final INFLEXION:F = 0.35f

.field private static final NB_SAMPLES:I = 0x64

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SCROLL_MODE:I = 0x0

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static final START_TENSION:F = 0.5f


# instance fields
.field private mCurrVelocity:F

.field private mCurrX:I

.field private mCurrY:I

.field private mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDistance:I

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mFlywheel:Z

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private mPhysicalCoeff:F

.field private final mPpi:F

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 16

    #@0
    .prologue
    .line 97
    const-wide v12, 0x3fe8f5c28f5c28f6L    # 0.78

    #@5
    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    #@8
    move-result-wide v12

    #@9
    const-wide v14, 0x3feccccccccccccdL    # 0.9

    #@e
    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    #@11
    move-result-wide v14

    #@12
    div-double/2addr v12, v14

    #@13
    double-to-float v11, v12

    #@14
    sput v11, Landroid/widget/Scroller;->DECELERATION_RATE:F

    #@16
    .line 105
    const/16 v11, 0x65

    #@18
    new-array v11, v11, [F

    #@1a
    sput-object v11, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    #@1c
    .line 106
    const/16 v11, 0x65

    #@1e
    new-array v11, v11, [F

    #@20
    sput-object v11, Landroid/widget/Scroller;->SPLINE_TIME:[F

    #@22
    .line 115
    const/4 v7, 0x0

    #@23
    .line 116
    .local v7, "x_min":F
    const/4 v10, 0x0

    #@24
    .line 117
    .local v10, "y_min":F
    const/4 v3, 0x0

    #@25
    .local v3, "i":I
    :goto_0
    const/16 v11, 0x64

    #@27
    if-ge v3, v11, :cond_4

    #@29
    .line 118
    int-to-float v11, v3

    #@2a
    const/high16 v12, 0x42c80000    # 100.0f

    #@2c
    div-float v0, v11, v12

    #@2e
    .line 120
    .local v0, "alpha":F
    const/high16 v6, 0x3f800000    # 1.0f

    #@30
    .line 123
    .local v6, "x_max":F
    :goto_1
    sub-float v11, v6, v7

    #@32
    const/high16 v12, 0x40000000    # 2.0f

    #@34
    div-float/2addr v11, v12

    #@35
    add-float v5, v7, v11

    #@37
    .line 124
    .local v5, "x":F
    const/high16 v11, 0x40400000    # 3.0f

    #@39
    mul-float/2addr v11, v5

    #@3a
    const/high16 v12, 0x3f800000    # 1.0f

    #@3c
    sub-float/2addr v12, v5

    #@3d
    mul-float v1, v11, v12

    #@3f
    .line 125
    .local v1, "coef":F
    const/high16 v11, 0x3f800000    # 1.0f

    #@41
    sub-float/2addr v11, v5

    #@42
    const v12, 0x3e333333    # 0.175f

    #@45
    mul-float/2addr v11, v12

    #@46
    const v12, 0x3eb33334    # 0.35000002f

    #@49
    mul-float/2addr v12, v5

    #@4a
    add-float/2addr v11, v12

    #@4b
    mul-float/2addr v11, v1

    #@4c
    mul-float v12, v5, v5

    #@4e
    mul-float/2addr v12, v5

    #@4f
    add-float v4, v11, v12

    #@51
    .line 126
    .local v4, "tx":F
    sub-float v11, v4, v0

    #@53
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    #@56
    move-result v11

    #@57
    float-to-double v12, v11

    #@58
    const-wide v14, 0x3ee4f8b588e368f1L    # 1.0E-5

    #@5d
    cmpg-double v11, v12, v14

    #@5f
    if-gez v11, :cond_0

    #@61
    .line 130
    sget-object v11, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    #@63
    const/high16 v12, 0x3f800000    # 1.0f

    #@65
    sub-float/2addr v12, v5

    #@66
    const/high16 v13, 0x3f000000    # 0.5f

    #@68
    mul-float/2addr v12, v13

    #@69
    add-float/2addr v12, v5

    #@6a
    mul-float/2addr v12, v1

    #@6b
    mul-float v13, v5, v5

    #@6d
    mul-float/2addr v13, v5

    #@6e
    add-float/2addr v12, v13

    #@6f
    aput v12, v11, v3

    #@71
    .line 132
    const/high16 v9, 0x3f800000    # 1.0f

    #@73
    .line 135
    .local v9, "y_max":F
    :goto_2
    sub-float v11, v9, v10

    #@75
    const/high16 v12, 0x40000000    # 2.0f

    #@77
    div-float/2addr v11, v12

    #@78
    add-float v8, v10, v11

    #@7a
    .line 136
    .local v8, "y":F
    const/high16 v11, 0x40400000    # 3.0f

    #@7c
    mul-float/2addr v11, v8

    #@7d
    const/high16 v12, 0x3f800000    # 1.0f

    #@7f
    sub-float/2addr v12, v8

    #@80
    mul-float v1, v11, v12

    #@82
    .line 137
    const/high16 v11, 0x3f800000    # 1.0f

    #@84
    sub-float/2addr v11, v8

    #@85
    const/high16 v12, 0x3f000000    # 0.5f

    #@87
    mul-float/2addr v11, v12

    #@88
    add-float/2addr v11, v8

    #@89
    mul-float/2addr v11, v1

    #@8a
    mul-float v12, v8, v8

    #@8c
    mul-float/2addr v12, v8

    #@8d
    add-float v2, v11, v12

    #@8f
    .line 138
    .local v2, "dy":F
    sub-float v11, v2, v0

    #@91
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    #@94
    move-result v11

    #@95
    float-to-double v12, v11

    #@96
    const-wide v14, 0x3ee4f8b588e368f1L    # 1.0E-5

    #@9b
    cmpg-double v11, v12, v14

    #@9d
    if-gez v11, :cond_2

    #@9f
    .line 142
    sget-object v11, Landroid/widget/Scroller;->SPLINE_TIME:[F

    #@a1
    const/high16 v12, 0x3f800000    # 1.0f

    #@a3
    sub-float/2addr v12, v8

    #@a4
    const v13, 0x3e333333    # 0.175f

    #@a7
    mul-float/2addr v12, v13

    #@a8
    const v13, 0x3eb33334    # 0.35000002f

    #@ab
    mul-float/2addr v13, v8

    #@ac
    add-float/2addr v12, v13

    #@ad
    mul-float/2addr v12, v1

    #@ae
    mul-float v13, v8, v8

    #@b0
    mul-float/2addr v13, v8

    #@b1
    add-float/2addr v12, v13

    #@b2
    aput v12, v11, v3

    #@b4
    .line 117
    add-int/lit8 v3, v3, 0x1

    #@b6
    goto/16 :goto_0

    #@b8
    .line 127
    .end local v2    # "dy":F
    .end local v8    # "y":F
    .end local v9    # "y_max":F
    :cond_0
    cmpl-float v11, v4, v0

    #@ba
    if-lez v11, :cond_1

    #@bc
    move v6, v5

    #@bd
    goto/16 :goto_1

    #@bf
    .line 128
    :cond_1
    move v7, v5

    #@c0
    goto/16 :goto_1

    #@c2
    .line 139
    .restart local v2    # "dy":F
    .restart local v8    # "y":F
    .restart local v9    # "y_max":F
    :cond_2
    cmpl-float v11, v2, v0

    #@c4
    if-lez v11, :cond_3

    #@c6
    move v9, v8

    #@c7
    goto :goto_2

    #@c8
    .line 140
    :cond_3
    move v10, v8

    #@c9
    goto :goto_2

    #@ca
    .line 144
    .end local v0    # "alpha":F
    .end local v1    # "coef":F
    .end local v2    # "dy":F
    .end local v4    # "tx":F
    .end local v5    # "x":F
    .end local v6    # "x_max":F
    .end local v8    # "y":F
    .end local v9    # "y_max":F
    :cond_4
    sget-object v11, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    #@cc
    sget-object v12, Landroid/widget/Scroller;->SPLINE_TIME:[F

    #@ce
    const/high16 v13, 0x3f800000    # 1.0f

    #@d0
    const/16 v14, 0x64

    #@d2
    aput v13, v12, v14

    #@d4
    const/high16 v12, 0x3f800000    # 1.0f

    #@d6
    const/16 v13, 0x64

    #@d8
    aput v12, v11, v13

    #@da
    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 151
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    #@4
    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    #@0
    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@3
    move-result-object v0

    #@4
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@6
    const/16 v1, 0xb

    #@8
    if-lt v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    .line 160
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    #@e
    .line 159
    return-void

    #@f
    .line 161
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "flywheel"    # Z

    #@0
    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 91
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/widget/Scroller;->mFlingFriction:F

    #@9
    .line 170
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    #@c
    .line 171
    if-nez p2, :cond_0

    #@e
    .line 172
    new-instance v0, Landroid/widget/Scroller$ViscousFluidInterpolator;

    #@10
    invoke-direct {v0}, Landroid/widget/Scroller$ViscousFluidInterpolator;-><init>()V

    #@13
    iput-object v0, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    #@15
    .line 176
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@1c
    move-result-object v0

    #@1d
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    #@1f
    const/high16 v1, 0x43200000    # 160.0f

    #@21
    mul-float/2addr v0, v1

    #@22
    iput v0, p0, Landroid/widget/Scroller;->mPpi:F

    #@24
    .line 177
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    #@27
    move-result v0

    #@28
    invoke-direct {p0, v0}, Landroid/widget/Scroller;->computeDeceleration(F)F

    #@2b
    move-result v0

    #@2c
    iput v0, p0, Landroid/widget/Scroller;->mDeceleration:F

    #@2e
    .line 178
    iput-boolean p3, p0, Landroid/widget/Scroller;->mFlywheel:Z

    #@30
    .line 180
    const v0, 0x3f570a3d    # 0.84f

    #@33
    invoke-direct {p0, v0}, Landroid/widget/Scroller;->computeDeceleration(F)F

    #@36
    move-result v0

    #@37
    iput v0, p0, Landroid/widget/Scroller;->mPhysicalCoeff:F

    #@39
    .line 169
    return-void

    #@3a
    .line 174
    :cond_0
    iput-object p2, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    #@3c
    goto :goto_0
.end method

.method private computeDeceleration(F)F
    .locals 2
    .param p1, "friction"    # F

    #@0
    .prologue
    .line 198
    iget v0, p0, Landroid/widget/Scroller;->mPpi:F

    #@2
    .line 196
    const v1, 0x43c10b3d

    #@5
    mul-float/2addr v0, v1

    #@6
    mul-float/2addr v0, p1

    #@7
    return v0
.end method

.method private getSplineDeceleration(F)D
    .locals 3
    .param p1, "velocity"    # F

    #@0
    .prologue
    .line 475
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    #@3
    move-result v0

    #@4
    const v1, 0x3eb33333    # 0.35f

    #@7
    mul-float/2addr v0, v1

    #@8
    iget v1, p0, Landroid/widget/Scroller;->mFlingFriction:F

    #@a
    iget v2, p0, Landroid/widget/Scroller;->mPhysicalCoeff:F

    #@c
    mul-float/2addr v1, v2

    #@d
    div-float/2addr v0, v1

    #@e
    float-to-double v0, v0

    #@f
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    #@12
    move-result-wide v0

    #@13
    return-wide v0
.end method

.method private getSplineFlingDistance(F)D
    .locals 8
    .param p1, "velocity"    # F

    #@0
    .prologue
    .line 485
    invoke-direct {p0, p1}, Landroid/widget/Scroller;->getSplineDeceleration(F)D

    #@3
    move-result-wide v2

    #@4
    .line 486
    .local v2, "l":D
    sget v4, Landroid/widget/Scroller;->DECELERATION_RATE:F

    #@6
    float-to-double v4, v4

    #@7
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    #@9
    sub-double v0, v4, v6

    #@b
    .line 487
    .local v0, "decelMinusOne":D
    iget v4, p0, Landroid/widget/Scroller;->mFlingFriction:F

    #@d
    iget v5, p0, Landroid/widget/Scroller;->mPhysicalCoeff:F

    #@f
    mul-float/2addr v4, v5

    #@10
    float-to-double v4, v4

    #@11
    sget v6, Landroid/widget/Scroller;->DECELERATION_RATE:F

    #@13
    float-to-double v6, v6

    #@14
    div-double/2addr v6, v0

    #@15
    mul-double/2addr v6, v2

    #@16
    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    #@19
    move-result-wide v6

    #@1a
    mul-double/2addr v4, v6

    #@1b
    return-wide v4
.end method

.method private getSplineFlingDuration(F)I
    .locals 8
    .param p1, "velocity"    # F

    #@0
    .prologue
    .line 479
    invoke-direct {p0, p1}, Landroid/widget/Scroller;->getSplineDeceleration(F)D

    #@3
    move-result-wide v2

    #@4
    .line 480
    .local v2, "l":D
    sget v4, Landroid/widget/Scroller;->DECELERATION_RATE:F

    #@6
    float-to-double v4, v4

    #@7
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    #@9
    sub-double v0, v4, v6

    #@b
    .line 481
    .local v0, "decelMinusOne":D
    div-double v4, v2, v0

    #@d
    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    #@10
    move-result-wide v4

    #@11
    const-wide v6, 0x408f400000000000L    # 1000.0

    #@16
    mul-double/2addr v4, v6

    #@17
    double-to-int v4, v4

    #@18
    return v4
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    #@0
    .prologue
    .line 498
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    #@2
    iput v0, p0, Landroid/widget/Scroller;->mCurrX:I

    #@4
    .line 499
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    #@6
    iput v0, p0, Landroid/widget/Scroller;->mCurrY:I

    #@8
    .line 500
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    #@b
    .line 497
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 14

    #@0
    .prologue
    .line 300
    iget-boolean v10, p0, Landroid/widget/Scroller;->mFinished:Z

    #@2
    if-eqz v10, :cond_0

    #@4
    .line 301
    const/4 v10, 0x0

    #@5
    return v10

    #@6
    .line 304
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@9
    move-result-wide v10

    #@a
    iget-wide v12, p0, Landroid/widget/Scroller;->mStartTime:J

    #@c
    sub-long/2addr v10, v12

    #@d
    long-to-int v7, v10

    #@e
    .line 306
    .local v7, "timePassed":I
    iget v10, p0, Landroid/widget/Scroller;->mDuration:I

    #@10
    if-ge v7, v10, :cond_3

    #@12
    .line 307
    iget v10, p0, Landroid/widget/Scroller;->mMode:I

    #@14
    packed-switch v10, :pswitch_data_0

    #@17
    .line 351
    :cond_1
    :goto_0
    const/4 v10, 0x1

    #@18
    return v10

    #@19
    .line 309
    :pswitch_0
    iget-object v10, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    #@1b
    int-to-float v11, v7

    #@1c
    iget v12, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    #@1e
    mul-float/2addr v11, v12

    #@1f
    invoke-interface {v10, v11}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@22
    move-result v9

    #@23
    .line 310
    .local v9, "x":F
    iget v10, p0, Landroid/widget/Scroller;->mStartX:I

    #@25
    iget v11, p0, Landroid/widget/Scroller;->mDeltaX:F

    #@27
    mul-float/2addr v11, v9

    #@28
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    #@2b
    move-result v11

    #@2c
    add-int/2addr v10, v11

    #@2d
    iput v10, p0, Landroid/widget/Scroller;->mCurrX:I

    #@2f
    .line 311
    iget v10, p0, Landroid/widget/Scroller;->mStartY:I

    #@31
    iget v11, p0, Landroid/widget/Scroller;->mDeltaY:F

    #@33
    mul-float/2addr v11, v9

    #@34
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    #@37
    move-result v11

    #@38
    add-int/2addr v10, v11

    #@39
    iput v10, p0, Landroid/widget/Scroller;->mCurrY:I

    #@3b
    goto :goto_0

    #@3c
    .line 314
    .end local v9    # "x":F
    :pswitch_1
    int-to-float v10, v7

    #@3d
    iget v11, p0, Landroid/widget/Scroller;->mDuration:I

    #@3f
    int-to-float v11, v11

    #@40
    div-float v4, v10, v11

    #@42
    .line 315
    .local v4, "t":F
    const/high16 v10, 0x42c80000    # 100.0f

    #@44
    mul-float/2addr v10, v4

    #@45
    float-to-int v3, v10

    #@46
    .line 316
    .local v3, "index":I
    const/high16 v2, 0x3f800000    # 1.0f

    #@48
    .line 317
    .local v2, "distanceCoef":F
    const/4 v8, 0x0

    #@49
    .line 318
    .local v8, "velocityCoef":F
    const/16 v10, 0x64

    #@4b
    if-ge v3, v10, :cond_2

    #@4d
    .line 319
    int-to-float v10, v3

    #@4e
    const/high16 v11, 0x42c80000    # 100.0f

    #@50
    div-float v5, v10, v11

    #@52
    .line 320
    .local v5, "t_inf":F
    add-int/lit8 v10, v3, 0x1

    #@54
    int-to-float v10, v10

    #@55
    const/high16 v11, 0x42c80000    # 100.0f

    #@57
    div-float v6, v10, v11

    #@59
    .line 321
    .local v6, "t_sup":F
    sget-object v10, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    #@5b
    aget v0, v10, v3

    #@5d
    .line 322
    .local v0, "d_inf":F
    sget-object v10, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    #@5f
    add-int/lit8 v11, v3, 0x1

    #@61
    aget v1, v10, v11

    #@63
    .line 323
    .local v1, "d_sup":F
    sub-float v10, v1, v0

    #@65
    sub-float v11, v6, v5

    #@67
    div-float v8, v10, v11

    #@69
    .line 324
    sub-float v10, v4, v5

    #@6b
    mul-float/2addr v10, v8

    #@6c
    add-float v2, v0, v10

    #@6e
    .line 327
    .end local v0    # "d_inf":F
    .end local v1    # "d_sup":F
    .end local v5    # "t_inf":F
    .end local v6    # "t_sup":F
    :cond_2
    iget v10, p0, Landroid/widget/Scroller;->mDistance:I

    #@70
    int-to-float v10, v10

    #@71
    mul-float/2addr v10, v8

    #@72
    iget v11, p0, Landroid/widget/Scroller;->mDuration:I

    #@74
    int-to-float v11, v11

    #@75
    div-float/2addr v10, v11

    #@76
    const/high16 v11, 0x447a0000    # 1000.0f

    #@78
    mul-float/2addr v10, v11

    #@79
    iput v10, p0, Landroid/widget/Scroller;->mCurrVelocity:F

    #@7b
    .line 329
    iget v10, p0, Landroid/widget/Scroller;->mStartX:I

    #@7d
    iget v11, p0, Landroid/widget/Scroller;->mFinalX:I

    #@7f
    iget v12, p0, Landroid/widget/Scroller;->mStartX:I

    #@81
    sub-int/2addr v11, v12

    #@82
    int-to-float v11, v11

    #@83
    mul-float/2addr v11, v2

    #@84
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    #@87
    move-result v11

    #@88
    add-int/2addr v10, v11

    #@89
    iput v10, p0, Landroid/widget/Scroller;->mCurrX:I

    #@8b
    .line 331
    iget v10, p0, Landroid/widget/Scroller;->mCurrX:I

    #@8d
    iget v11, p0, Landroid/widget/Scroller;->mMaxX:I

    #@8f
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    #@92
    move-result v10

    #@93
    iput v10, p0, Landroid/widget/Scroller;->mCurrX:I

    #@95
    .line 332
    iget v10, p0, Landroid/widget/Scroller;->mCurrX:I

    #@97
    iget v11, p0, Landroid/widget/Scroller;->mMinX:I

    #@99
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    #@9c
    move-result v10

    #@9d
    iput v10, p0, Landroid/widget/Scroller;->mCurrX:I

    #@9f
    .line 334
    iget v10, p0, Landroid/widget/Scroller;->mStartY:I

    #@a1
    iget v11, p0, Landroid/widget/Scroller;->mFinalY:I

    #@a3
    iget v12, p0, Landroid/widget/Scroller;->mStartY:I

    #@a5
    sub-int/2addr v11, v12

    #@a6
    int-to-float v11, v11

    #@a7
    mul-float/2addr v11, v2

    #@a8
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    #@ab
    move-result v11

    #@ac
    add-int/2addr v10, v11

    #@ad
    iput v10, p0, Landroid/widget/Scroller;->mCurrY:I

    #@af
    .line 336
    iget v10, p0, Landroid/widget/Scroller;->mCurrY:I

    #@b1
    iget v11, p0, Landroid/widget/Scroller;->mMaxY:I

    #@b3
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    #@b6
    move-result v10

    #@b7
    iput v10, p0, Landroid/widget/Scroller;->mCurrY:I

    #@b9
    .line 337
    iget v10, p0, Landroid/widget/Scroller;->mCurrY:I

    #@bb
    iget v11, p0, Landroid/widget/Scroller;->mMinY:I

    #@bd
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    #@c0
    move-result v10

    #@c1
    iput v10, p0, Landroid/widget/Scroller;->mCurrY:I

    #@c3
    .line 339
    iget v10, p0, Landroid/widget/Scroller;->mCurrX:I

    #@c5
    iget v11, p0, Landroid/widget/Scroller;->mFinalX:I

    #@c7
    if-ne v10, v11, :cond_1

    #@c9
    iget v10, p0, Landroid/widget/Scroller;->mCurrY:I

    #@cb
    iget v11, p0, Landroid/widget/Scroller;->mFinalY:I

    #@cd
    if-ne v10, v11, :cond_1

    #@cf
    .line 340
    const/4 v10, 0x1

    #@d0
    iput-boolean v10, p0, Landroid/widget/Scroller;->mFinished:Z

    #@d2
    goto/16 :goto_0

    #@d4
    .line 347
    .end local v2    # "distanceCoef":F
    .end local v3    # "index":I
    .end local v4    # "t":F
    .end local v8    # "velocityCoef":F
    :cond_3
    iget v10, p0, Landroid/widget/Scroller;->mFinalX:I

    #@d6
    iput v10, p0, Landroid/widget/Scroller;->mCurrX:I

    #@d8
    .line 348
    iget v10, p0, Landroid/widget/Scroller;->mFinalY:I

    #@da
    iput v10, p0, Landroid/widget/Scroller;->mCurrY:I

    #@dc
    .line 349
    const/4 v10, 0x1

    #@dd
    iput-boolean v10, p0, Landroid/widget/Scroller;->mFinished:Z

    #@df
    goto/16 :goto_0

    #@e1
    .line 307
    nop

    #@e2
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 3
    .param p1, "extend"    # I

    #@0
    .prologue
    .line 512
    invoke-virtual {p0}, Landroid/widget/Scroller;->timePassed()I

    #@3
    move-result v0

    #@4
    .line 513
    .local v0, "passed":I
    add-int v1, v0, p1

    #@6
    iput v1, p0, Landroid/widget/Scroller;->mDuration:I

    #@8
    .line 514
    iget v1, p0, Landroid/widget/Scroller;->mDuration:I

    #@a
    int-to-float v1, v1

    #@b
    const/high16 v2, 0x3f800000    # 1.0f

    #@d
    div-float v1, v2, v1

    #@f
    iput v1, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    #@11
    .line 515
    const/4 v1, 0x0

    #@12
    iput-boolean v1, p0, Landroid/widget/Scroller;->mFinished:Z

    #@14
    .line 511
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 22
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    #@0
    .prologue
    .line 422
    move-object/from16 v0, p0

    #@2
    iget-boolean v0, v0, Landroid/widget/Scroller;->mFlywheel:Z

    #@4
    move/from16 v17, v0

    #@6
    if-eqz v17, :cond_0

    #@8
    move-object/from16 v0, p0

    #@a
    iget-boolean v0, v0, Landroid/widget/Scroller;->mFinished:Z

    #@c
    move/from16 v17, v0

    #@e
    if-eqz v17, :cond_1

    #@10
    .line 441
    :cond_0
    :goto_0
    const/16 v17, 0x1

    #@12
    move/from16 v0, v17

    #@14
    move-object/from16 v1, p0

    #@16
    iput v0, v1, Landroid/widget/Scroller;->mMode:I

    #@18
    .line 442
    const/16 v17, 0x0

    #@1a
    move/from16 v0, v17

    #@1c
    move-object/from16 v1, p0

    #@1e
    iput-boolean v0, v1, Landroid/widget/Scroller;->mFinished:Z

    #@20
    .line 444
    move/from16 v0, p3

    #@22
    int-to-double v0, v0

    #@23
    move-wide/from16 v18, v0

    #@25
    move/from16 v0, p4

    #@27
    int-to-double v0, v0

    #@28
    move-wide/from16 v20, v0

    #@2a
    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->hypot(DD)D

    #@2d
    move-result-wide v18

    #@2e
    move-wide/from16 v0, v18

    #@30
    double-to-float v0, v0

    #@31
    move/from16 v16, v0

    #@33
    .line 446
    .local v16, "velocity":F
    move/from16 v0, v16

    #@35
    move-object/from16 v1, p0

    #@37
    iput v0, v1, Landroid/widget/Scroller;->mVelocity:F

    #@39
    .line 447
    move-object/from16 v0, p0

    #@3b
    move/from16 v1, v16

    #@3d
    invoke-direct {v0, v1}, Landroid/widget/Scroller;->getSplineFlingDuration(F)I

    #@40
    move-result v17

    #@41
    move/from16 v0, v17

    #@43
    move-object/from16 v1, p0

    #@45
    iput v0, v1, Landroid/widget/Scroller;->mDuration:I

    #@47
    .line 448
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@4a
    move-result-wide v18

    #@4b
    move-wide/from16 v0, v18

    #@4d
    move-object/from16 v2, p0

    #@4f
    iput-wide v0, v2, Landroid/widget/Scroller;->mStartTime:J

    #@51
    .line 449
    move/from16 v0, p1

    #@53
    move-object/from16 v1, p0

    #@55
    iput v0, v1, Landroid/widget/Scroller;->mStartX:I

    #@57
    .line 450
    move/from16 v0, p2

    #@59
    move-object/from16 v1, p0

    #@5b
    iput v0, v1, Landroid/widget/Scroller;->mStartY:I

    #@5d
    .line 452
    const/16 v17, 0x0

    #@5f
    cmpl-float v17, v16, v17

    #@61
    if-nez v17, :cond_2

    #@63
    const/high16 v4, 0x3f800000    # 1.0f

    #@65
    .line 453
    .local v4, "coeffX":F
    :goto_1
    const/16 v17, 0x0

    #@67
    cmpl-float v17, v16, v17

    #@69
    if-nez v17, :cond_3

    #@6b
    const/high16 v5, 0x3f800000    # 1.0f

    #@6d
    .line 455
    .local v5, "coeffY":F
    :goto_2
    move-object/from16 v0, p0

    #@6f
    move/from16 v1, v16

    #@71
    invoke-direct {v0, v1}, Landroid/widget/Scroller;->getSplineFlingDistance(F)D

    #@74
    move-result-wide v14

    #@75
    .line 456
    .local v14, "totalDistance":D
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->signum(F)F

    #@78
    move-result v17

    #@79
    move/from16 v0, v17

    #@7b
    float-to-double v0, v0

    #@7c
    move-wide/from16 v18, v0

    #@7e
    mul-double v18, v18, v14

    #@80
    move-wide/from16 v0, v18

    #@82
    double-to-int v0, v0

    #@83
    move/from16 v17, v0

    #@85
    move/from16 v0, v17

    #@87
    move-object/from16 v1, p0

    #@89
    iput v0, v1, Landroid/widget/Scroller;->mDistance:I

    #@8b
    .line 458
    move/from16 v0, p5

    #@8d
    move-object/from16 v1, p0

    #@8f
    iput v0, v1, Landroid/widget/Scroller;->mMinX:I

    #@91
    .line 459
    move/from16 v0, p6

    #@93
    move-object/from16 v1, p0

    #@95
    iput v0, v1, Landroid/widget/Scroller;->mMaxX:I

    #@97
    .line 460
    move/from16 v0, p7

    #@99
    move-object/from16 v1, p0

    #@9b
    iput v0, v1, Landroid/widget/Scroller;->mMinY:I

    #@9d
    .line 461
    move/from16 v0, p8

    #@9f
    move-object/from16 v1, p0

    #@a1
    iput v0, v1, Landroid/widget/Scroller;->mMaxY:I

    #@a3
    .line 463
    float-to-double v0, v4

    #@a4
    move-wide/from16 v18, v0

    #@a6
    mul-double v18, v18, v14

    #@a8
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    #@ab
    move-result-wide v18

    #@ac
    move-wide/from16 v0, v18

    #@ae
    long-to-int v0, v0

    #@af
    move/from16 v17, v0

    #@b1
    add-int v17, v17, p1

    #@b3
    move/from16 v0, v17

    #@b5
    move-object/from16 v1, p0

    #@b7
    iput v0, v1, Landroid/widget/Scroller;->mFinalX:I

    #@b9
    .line 465
    move-object/from16 v0, p0

    #@bb
    iget v0, v0, Landroid/widget/Scroller;->mFinalX:I

    #@bd
    move/from16 v17, v0

    #@bf
    move-object/from16 v0, p0

    #@c1
    iget v0, v0, Landroid/widget/Scroller;->mMaxX:I

    #@c3
    move/from16 v18, v0

    #@c5
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    #@c8
    move-result v17

    #@c9
    move/from16 v0, v17

    #@cb
    move-object/from16 v1, p0

    #@cd
    iput v0, v1, Landroid/widget/Scroller;->mFinalX:I

    #@cf
    .line 466
    move-object/from16 v0, p0

    #@d1
    iget v0, v0, Landroid/widget/Scroller;->mFinalX:I

    #@d3
    move/from16 v17, v0

    #@d5
    move-object/from16 v0, p0

    #@d7
    iget v0, v0, Landroid/widget/Scroller;->mMinX:I

    #@d9
    move/from16 v18, v0

    #@db
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    #@de
    move-result v17

    #@df
    move/from16 v0, v17

    #@e1
    move-object/from16 v1, p0

    #@e3
    iput v0, v1, Landroid/widget/Scroller;->mFinalX:I

    #@e5
    .line 468
    float-to-double v0, v5

    #@e6
    move-wide/from16 v18, v0

    #@e8
    mul-double v18, v18, v14

    #@ea
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    #@ed
    move-result-wide v18

    #@ee
    move-wide/from16 v0, v18

    #@f0
    long-to-int v0, v0

    #@f1
    move/from16 v17, v0

    #@f3
    add-int v17, v17, p2

    #@f5
    move/from16 v0, v17

    #@f7
    move-object/from16 v1, p0

    #@f9
    iput v0, v1, Landroid/widget/Scroller;->mFinalY:I

    #@fb
    .line 470
    move-object/from16 v0, p0

    #@fd
    iget v0, v0, Landroid/widget/Scroller;->mFinalY:I

    #@ff
    move/from16 v17, v0

    #@101
    move-object/from16 v0, p0

    #@103
    iget v0, v0, Landroid/widget/Scroller;->mMaxY:I

    #@105
    move/from16 v18, v0

    #@107
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    #@10a
    move-result v17

    #@10b
    move/from16 v0, v17

    #@10d
    move-object/from16 v1, p0

    #@10f
    iput v0, v1, Landroid/widget/Scroller;->mFinalY:I

    #@111
    .line 471
    move-object/from16 v0, p0

    #@113
    iget v0, v0, Landroid/widget/Scroller;->mFinalY:I

    #@115
    move/from16 v17, v0

    #@117
    move-object/from16 v0, p0

    #@119
    iget v0, v0, Landroid/widget/Scroller;->mMinY:I

    #@11b
    move/from16 v18, v0

    #@11d
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    #@120
    move-result v17

    #@121
    move/from16 v0, v17

    #@123
    move-object/from16 v1, p0

    #@125
    iput v0, v1, Landroid/widget/Scroller;->mFinalY:I

    #@127
    .line 420
    return-void

    #@128
    .line 423
    .end local v4    # "coeffX":F
    .end local v5    # "coeffY":F
    .end local v14    # "totalDistance":D
    .end local v16    # "velocity":F
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Scroller;->getCurrVelocity()F

    #@12b
    move-result v11

    #@12c
    .line 425
    .local v11, "oldVel":F
    move-object/from16 v0, p0

    #@12e
    iget v0, v0, Landroid/widget/Scroller;->mFinalX:I

    #@130
    move/from16 v17, v0

    #@132
    move-object/from16 v0, p0

    #@134
    iget v0, v0, Landroid/widget/Scroller;->mStartX:I

    #@136
    move/from16 v18, v0

    #@138
    sub-int v17, v17, v18

    #@13a
    move/from16 v0, v17

    #@13c
    int-to-float v6, v0

    #@13d
    .line 426
    .local v6, "dx":F
    move-object/from16 v0, p0

    #@13f
    iget v0, v0, Landroid/widget/Scroller;->mFinalY:I

    #@141
    move/from16 v17, v0

    #@143
    move-object/from16 v0, p0

    #@145
    iget v0, v0, Landroid/widget/Scroller;->mStartY:I

    #@147
    move/from16 v18, v0

    #@149
    sub-int v17, v17, v18

    #@14b
    move/from16 v0, v17

    #@14d
    int-to-float v7, v0

    #@14e
    .line 427
    .local v7, "dy":F
    float-to-double v0, v6

    #@14f
    move-wide/from16 v18, v0

    #@151
    float-to-double v0, v7

    #@152
    move-wide/from16 v20, v0

    #@154
    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->hypot(DD)D

    #@157
    move-result-wide v18

    #@158
    move-wide/from16 v0, v18

    #@15a
    double-to-float v8, v0

    #@15b
    .line 429
    .local v8, "hyp":F
    div-float v9, v6, v8

    #@15d
    .line 430
    .local v9, "ndx":F
    div-float v10, v7, v8

    #@15f
    .line 432
    .local v10, "ndy":F
    mul-float v12, v9, v11

    #@161
    .line 433
    .local v12, "oldVelocityX":F
    mul-float v13, v10, v11

    #@163
    .line 434
    .local v13, "oldVelocityY":F
    move/from16 v0, p3

    #@165
    int-to-float v0, v0

    #@166
    move/from16 v17, v0

    #@168
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->signum(F)F

    #@16b
    move-result v17

    #@16c
    invoke-static {v12}, Ljava/lang/Math;->signum(F)F

    #@16f
    move-result v18

    #@170
    cmpl-float v17, v17, v18

    #@172
    if-nez v17, :cond_0

    #@174
    .line 435
    move/from16 v0, p4

    #@176
    int-to-float v0, v0

    #@177
    move/from16 v17, v0

    #@179
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->signum(F)F

    #@17c
    move-result v17

    #@17d
    invoke-static {v13}, Ljava/lang/Math;->signum(F)F

    #@180
    move-result v18

    #@181
    cmpl-float v17, v17, v18

    #@183
    if-nez v17, :cond_0

    #@185
    .line 436
    move/from16 v0, p3

    #@187
    int-to-float v0, v0

    #@188
    move/from16 v17, v0

    #@18a
    add-float v17, v17, v12

    #@18c
    move/from16 v0, v17

    #@18e
    float-to-int v0, v0

    #@18f
    move/from16 p3, v0

    #@191
    .line 437
    move/from16 v0, p4

    #@193
    int-to-float v0, v0

    #@194
    move/from16 v17, v0

    #@196
    add-float v17, v17, v13

    #@198
    move/from16 v0, v17

    #@19a
    float-to-int v0, v0

    #@19b
    move/from16 p4, v0

    #@19d
    goto/16 :goto_0

    #@19f
    .line 452
    .end local v6    # "dx":F
    .end local v7    # "dy":F
    .end local v8    # "hyp":F
    .end local v9    # "ndx":F
    .end local v10    # "ndy":F
    .end local v11    # "oldVel":F
    .end local v12    # "oldVelocityX":F
    .end local v13    # "oldVelocityY":F
    .restart local v16    # "velocity":F
    :cond_2
    move/from16 v0, p3

    #@1a1
    int-to-float v0, v0

    #@1a2
    move/from16 v17, v0

    #@1a4
    div-float v4, v17, v16

    #@1a6
    .restart local v4    # "coeffX":F
    goto/16 :goto_1

    #@1a8
    .line 453
    :cond_3
    move/from16 v0, p4

    #@1aa
    int-to-float v0, v0

    #@1ab
    move/from16 v17, v0

    #@1ad
    div-float v5, v17, v16

    #@1af
    .restart local v5    # "coeffY":F
    goto/16 :goto_2
.end method

.method public final forceFinished(Z)V
    .locals 0
    .param p1, "finished"    # Z

    #@0
    .prologue
    .line 218
    iput-boolean p1, p0, Landroid/widget/Scroller;->mFinished:Z

    #@2
    .line 217
    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    #@0
    .prologue
    .line 255
    iget v0, p0, Landroid/widget/Scroller;->mMode:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 256
    iget v0, p0, Landroid/widget/Scroller;->mCurrVelocity:F

    #@7
    .line 255
    :goto_0
    return v0

    #@8
    .line 256
    :cond_0
    iget v0, p0, Landroid/widget/Scroller;->mVelocity:F

    #@a
    iget v1, p0, Landroid/widget/Scroller;->mDeceleration:F

    #@c
    invoke-virtual {p0}, Landroid/widget/Scroller;->timePassed()I

    #@f
    move-result v2

    #@10
    int-to-float v2, v2

    #@11
    mul-float/2addr v1, v2

    #@12
    const/high16 v2, 0x44fa0000    # 2000.0f

    #@14
    div-float/2addr v1, v2

    #@15
    sub-float/2addr v0, v1

    #@16
    goto :goto_0
.end method

.method public final getCurrX()I
    .locals 1

    #@0
    .prologue
    .line 236
    iget v0, p0, Landroid/widget/Scroller;->mCurrX:I

    #@2
    return v0
.end method

.method public final getCurrY()I
    .locals 1

    #@0
    .prologue
    .line 245
    iget v0, p0, Landroid/widget/Scroller;->mCurrY:I

    #@2
    return v0
.end method

.method public final getDuration()I
    .locals 1

    #@0
    .prologue
    .line 227
    iget v0, p0, Landroid/widget/Scroller;->mDuration:I

    #@2
    return v0
.end method

.method public final getFinalX()I
    .locals 1

    #@0
    .prologue
    .line 283
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    #@2
    return v0
.end method

.method public final getFinalY()I
    .locals 1

    #@0
    .prologue
    .line 292
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    #@2
    return v0
.end method

.method public final getStartX()I
    .locals 1

    #@0
    .prologue
    .line 265
    iget v0, p0, Landroid/widget/Scroller;->mStartX:I

    #@2
    return v0
.end method

.method public final getStartY()I
    .locals 1

    #@0
    .prologue
    .line 274
    iget v0, p0, Landroid/widget/Scroller;->mStartY:I

    #@2
    return v0
.end method

.method public final isFinished()Z
    .locals 1

    #@0
    .prologue
    .line 209
    iget-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    #@2
    return v0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 4
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 557
    iget-boolean v1, p0, Landroid/widget/Scroller;->mFinished:Z

    #@3
    if-nez v1, :cond_0

    #@5
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    #@8
    move-result v1

    #@9
    iget v2, p0, Landroid/widget/Scroller;->mFinalX:I

    #@b
    iget v3, p0, Landroid/widget/Scroller;->mStartX:I

    #@d
    sub-int/2addr v2, v3

    #@e
    int-to-float v2, v2

    #@f
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    #@12
    move-result v2

    #@13
    cmpl-float v1, v1, v2

    #@15
    if-nez v1, :cond_0

    #@17
    .line 558
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    #@1a
    move-result v1

    #@1b
    iget v2, p0, Landroid/widget/Scroller;->mFinalY:I

    #@1d
    iget v3, p0, Landroid/widget/Scroller;->mStartY:I

    #@1f
    sub-int/2addr v2, v3

    #@20
    int-to-float v2, v2

    #@21
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    #@24
    move-result v2

    #@25
    cmpl-float v1, v1, v2

    #@27
    if-nez v1, :cond_0

    #@29
    const/4 v0, 0x1

    #@2a
    .line 557
    :cond_0
    return v0
.end method

.method public setFinalX(I)V
    .locals 2
    .param p1, "newX"    # I

    #@0
    .prologue
    .line 535
    iput p1, p0, Landroid/widget/Scroller;->mFinalX:I

    #@2
    .line 536
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    #@4
    iget v1, p0, Landroid/widget/Scroller;->mStartX:I

    #@6
    sub-int/2addr v0, v1

    #@7
    int-to-float v0, v0

    #@8
    iput v0, p0, Landroid/widget/Scroller;->mDeltaX:F

    #@a
    .line 537
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    #@d
    .line 534
    return-void
.end method

.method public setFinalY(I)V
    .locals 2
    .param p1, "newY"    # I

    #@0
    .prologue
    .line 548
    iput p1, p0, Landroid/widget/Scroller;->mFinalY:I

    #@2
    .line 549
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    #@4
    iget v1, p0, Landroid/widget/Scroller;->mStartY:I

    #@6
    sub-int/2addr v0, v1

    #@7
    int-to-float v0, v0

    #@8
    iput v0, p0, Landroid/widget/Scroller;->mDeltaY:F

    #@a
    .line 550
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    #@d
    .line 547
    return-void
.end method

.method public final setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    #@0
    .prologue
    .line 191
    invoke-direct {p0, p1}, Landroid/widget/Scroller;->computeDeceleration(F)F

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroid/widget/Scroller;->mDeceleration:F

    #@6
    .line 192
    iput p1, p0, Landroid/widget/Scroller;->mFlingFriction:F

    #@8
    .line 190
    return-void
.end method

.method public startScroll(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    #@0
    .prologue
    .line 369
    const/16 v5, 0xfa

    #@2
    move-object v0, p0

    #@3
    move v1, p1

    #@4
    move v2, p2

    #@5
    move v3, p3

    #@6
    move v4, p4

    #@7
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    #@a
    .line 368
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 2
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 387
    iput v0, p0, Landroid/widget/Scroller;->mMode:I

    #@3
    .line 388
    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    #@5
    .line 389
    iput p5, p0, Landroid/widget/Scroller;->mDuration:I

    #@7
    .line 390
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@a
    move-result-wide v0

    #@b
    iput-wide v0, p0, Landroid/widget/Scroller;->mStartTime:J

    #@d
    .line 391
    iput p1, p0, Landroid/widget/Scroller;->mStartX:I

    #@f
    .line 392
    iput p2, p0, Landroid/widget/Scroller;->mStartY:I

    #@11
    .line 393
    add-int v0, p1, p3

    #@13
    iput v0, p0, Landroid/widget/Scroller;->mFinalX:I

    #@15
    .line 394
    add-int v0, p2, p4

    #@17
    iput v0, p0, Landroid/widget/Scroller;->mFinalY:I

    #@19
    .line 395
    int-to-float v0, p3

    #@1a
    iput v0, p0, Landroid/widget/Scroller;->mDeltaX:F

    #@1c
    .line 396
    int-to-float v0, p4

    #@1d
    iput v0, p0, Landroid/widget/Scroller;->mDeltaY:F

    #@1f
    .line 397
    iget v0, p0, Landroid/widget/Scroller;->mDuration:I

    #@21
    int-to-float v0, v0

    #@22
    const/high16 v1, 0x3f800000    # 1.0f

    #@24
    div-float v0, v1, v0

    #@26
    iput v0, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    #@28
    .line 386
    return-void
.end method

.method public timePassed()I
    .locals 4

    #@0
    .prologue
    .line 524
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    iget-wide v2, p0, Landroid/widget/Scroller;->mStartTime:J

    #@6
    sub-long/2addr v0, v2

    #@7
    long-to-int v0, v0

    #@8
    return v0
.end method
