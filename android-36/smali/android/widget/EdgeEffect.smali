.class public Landroid/widget/EdgeEffect;
.super Ljava/lang/Object;
.source "EdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/EdgeEffect$EdgeEffectType;
    }
.end annotation


# static fields
.field private static final greylist-max-o ANGLE:D = 0.5235987755982988

.field private static final greylist-max-o COS:F

.field private static final blacklist DAMPING_RATIO:D = 0.98

.field public static final whitelist DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

.field private static final greylist-max-o EPSILON:F = 0.001f

.field private static final blacklist EXP_STRETCH_INTENSITY:F = 0.016f

.field private static final greylist-max-o GLOW_ALPHA_START:F = 0.09f

.field private static final blacklist LINEAR_DISTANCE_TAKE_OVER:D = 8.0

.field private static final blacklist LINEAR_STRETCH_INTENSITY:F = 0.016f

.field private static final blacklist LINEAR_VELOCITY_TAKE_OVER:F = 200.0f

.field private static final greylist-max-o MAX_ALPHA:F = 0.15f

.field private static final greylist-max-o MAX_GLOW_SCALE:F = 2.0f

.field private static final greylist-max-o MAX_VELOCITY:I = 0x2710

.field private static final greylist-max-o MIN_VELOCITY:I = 0x64

.field private static final blacklist NATURAL_FREQUENCY:D = 24.657

.field private static final blacklist ON_ABSORB_VELOCITY_ADJUSTMENT:F = 13.0f

.field private static final greylist-max-o PULL_DECAY_TIME:I = 0x7d0

.field private static final greylist-max-o PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 0.8f

.field private static final greylist-max-o PULL_GLOW_BEGIN:F = 0.0f

.field private static final greylist-max-o PULL_TIME:I = 0xa7

.field private static final greylist-max-o RADIUS_FACTOR:F = 0.6f

.field private static final greylist-max-o RECEDE_TIME:I = 0x258

.field private static final blacklist SCROLL_DIST_AFFECTED_BY_EXP_STRETCH:F = 0.33f

.field private static final greylist-max-o SIN:F

.field private static final greylist-max-o STATE_ABSORB:I = 0x2

.field private static final greylist-max-o STATE_IDLE:I = 0x0

.field private static final greylist-max-o STATE_PULL:I = 0x1

.field private static final greylist-max-o STATE_PULL_DECAY:I = 0x4

.field private static final greylist-max-o STATE_RECEDE:I = 0x3

.field private static final greylist-max-o TAG:Ljava/lang/String; = "EdgeEffect"

.field private static final blacklist TYPE_GLOW:I = 0x0

.field private static final blacklist TYPE_NONE:I = -0x1

.field private static final blacklist TYPE_STRETCH:I = 0x1

.field public static final blacklist USE_STRETCH_EDGE_EFFECT_BY_DEFAULT:J = 0xa34bbc0L

.field private static final blacklist VALUE_THRESHOLD:D = 0.001

.field private static final greylist-max-o VELOCITY_GLOW_FACTOR:I = 0x6

.field private static final blacklist VELOCITY_THRESHOLD:D = 0.01


# instance fields
.field private greylist-max-o mBaseGlowScale:F

.field private final greylist-max-o mBounds:Landroid/graphics/Rect;

.field private greylist-max-o mDisplacement:F

.field private blacklist mDistance:F

.field private greylist-max-o mDuration:F

.field private blacklist mEdgeEffectType:I

.field private greylist-max-o mGlowAlpha:F

.field private greylist-max-o mGlowAlphaFinish:F

.field private greylist-max-o mGlowAlphaStart:F

.field private greylist-max-r mGlowScaleY:F

.field private greylist-max-o mGlowScaleYFinish:F

.field private greylist-max-o mGlowScaleYStart:F

.field private blacklist mHeight:F

.field private final greylist-max-o mInterpolator:Landroid/view/animation/Interpolator;

.field private final greylist-max-p mPaint:Landroid/graphics/Paint;

.field private greylist-max-o mPullDistance:F

.field private greylist-max-o mRadius:F

.field private greylist-max-o mStartTime:J

.field private greylist-max-o mState:I

.field private greylist-max-o mTargetDisplacement:F

.field private blacklist mTmpMatrix:Landroid/graphics/Matrix;

.field private blacklist mTmpPoints:[F

.field private blacklist mVelocity:F

.field private blacklist mWidth:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 77
    sget-object v0, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    sput-object v0, Landroid/widget/EdgeEffect;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    .line 177
    const-wide v0, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    sput v2, Landroid/widget/EdgeEffect;->SIN:F

    .line 178
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/widget/EdgeEffect;->COS:F

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 235
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 236
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 207
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 211
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    .line 214
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    .line 218
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    .line 219
    iput v1, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    .line 226
    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeEffectType:I

    .line 227
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 228
    iput-object v1, p0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    .line 244
    sget-object v1, Lcom/android/internal/R$styleable;->EdgeEffect:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 246
    .local v1, "a":Landroid/content/res/TypedArray;
    const v2, -0x99999a

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 248
    .local v2, "themeColor":I
    const-wide/32 v3, 0xa34bbc0

    invoke-static {v3, v4}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_41

    .line 249
    move v0, v4

    goto :goto_42

    :cond_41
    nop

    :goto_42
    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeEffectType:I

    .line 250
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 252
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 253
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    const v3, 0xffffff

    and-int/2addr v3, v2

    const/high16 v4, 0x33000000

    or-int/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 254
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 255
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/widget/EdgeEffect;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 256
    return-void
.end method

.method private blacklist calculateDistanceFromGlowValues(FF)F
    .registers 6
    .param p1, "scale"    # F
    .param p2, "alpha"    # F

    .line 804
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_7

    .line 807
    return v0

    .line 809
    :cond_7
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1e

    .line 810
    iget v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    sub-float/2addr v1, v0

    const v0, 0x3fb6db6e

    div-float/2addr v0, v1

    .line 811
    .local v0, "v":F
    mul-float v1, v0, v0

    iget-object v2, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    return v1

    .line 813
    .end local v0    # "v":F
    :cond_1e
    const v0, 0x3f4ccccd    # 0.8f

    div-float v0, p2, v0

    return v0
.end method

.method private blacklist dampStretchVector(F)F
    .registers 11
    .param p1, "normalizedVec"    # F

    .line 832
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_8

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_8
    const/high16 v0, -0x40800000    # -1.0f

    .line 833
    .local v0, "sign":F
    :goto_a
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 834
    .local v1, "overscroll":F
    const v2, 0x3c83126f    # 0.016f

    mul-float/2addr v2, v1

    .line 835
    .local v2, "linearIntensity":F
    const-wide v3, 0x402079748cecfc47L    # 8.237217334679498

    .line 836
    .local v3, "scalar":D
    neg-float v5, v1

    float-to-double v5, v5

    mul-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v7, v5

    const-wide v5, 0x3f90624de0000000L    # 0.01600000075995922

    mul-double/2addr v7, v5

    .line 837
    .local v7, "expIntensity":D
    float-to-double v5, v2

    add-double/2addr v5, v7

    double-to-float v5, v5

    mul-float/2addr v5, v0

    return v5
.end method

.method private blacklist getCurrentEdgeEffectBehavior()I
    .registers 2

    .line 260
    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 261
    const/4 v0, -0x1

    return v0

    .line 263
    :cond_8
    iget v0, p0, Landroid/widget/EdgeEffect;->mEdgeEffectType:I

    return v0
.end method

.method private blacklist isAtEquilibrium()Z
    .registers 9

    .line 821
    iget v0, p0, Landroid/widget/EdgeEffect;->mDistance:F

    iget v1, p0, Landroid/widget/EdgeEffect;->mHeight:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    .line 822
    .local v0, "displacement":D
    iget v2, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    float-to-double v2, v2

    .line 827
    .local v2, "velocity":D
    const-wide/16 v4, 0x0

    cmpg-double v4, v0, v4

    if-ltz v4, :cond_28

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v4, v4, v6

    if-gez v4, :cond_26

    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v4, v0, v4

    if-gez v4, :cond_26

    goto :goto_28

    :cond_26
    const/4 v4, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 v4, 0x1

    :goto_29
    return v4
.end method

.method private blacklist max(FFFF)F
    .registers 7
    .param p1, "f1"    # F
    .param p2, "f2"    # F
    .param p3, "f3"    # F
    .param p4, "f4"    # F

    .line 686
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 687
    .local v0, "max":F
    invoke-static {v0, p3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 688
    invoke-static {v0, p4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1
.end method

.method private blacklist min(FFFF)F
    .registers 7
    .param p1, "f1"    # F
    .param p2, "f2"    # F
    .param p3, "f3"    # F
    .param p4, "f4"    # F

    .line 680
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 681
    .local v0, "min":F
    invoke-static {v0, p3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 682
    invoke-static {v0, p4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1
.end method

.method private greylist-max-o update()V
    .registers 8

    .line 701
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 702
    .local v0, "time":J
    iget-wide v2, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Landroid/widget/EdgeEffect;->mDuration:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 704
    .local v2, "t":F
    iget-object v3, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 706
    .local v3, "interp":F
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    .line 707
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 708
    iget v4, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3d

    .line 709
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    invoke-direct {p0, v4, v5}, Landroid/widget/EdgeEffect;->calculateDistanceFromGlowValues(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeEffect;->mDistance:F

    .line 711
    :cond_3d
    iget v4, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    iget v5, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iput v4, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    .line 713
    const v4, 0x3f7fbe77    # 0.999f

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_90

    .line 714
    iget v4, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v5, 0x3

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_92

    goto :goto_90

    .line 740
    :pswitch_56
    iput v5, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 741
    goto :goto_90

    .line 743
    :pswitch_59
    const/4 v4, 0x0

    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    goto :goto_90

    .line 716
    :pswitch_5d
    iput v5, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 717
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 718
    const/high16 v4, 0x44160000    # 600.0f

    iput v4, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 720
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 721
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 724
    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 725
    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 726
    goto :goto_90

    .line 728
    :pswitch_76
    const/4 v4, 0x4

    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 729
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 730
    const/high16 v4, 0x44fa0000    # 2000.0f

    iput v4, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 732
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 733
    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 736
    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 737
    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 738
    nop

    .line 747
    :cond_90
    :goto_90
    return-void

    nop

    :pswitch_data_92
    .packed-switch 0x1
        :pswitch_76
        :pswitch_5d
        :pswitch_59
        :pswitch_56
    .end packed-switch
.end method

.method private blacklist updateSpring()V
    .registers 24

    .line 750
    move-object/from16 v0, p0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 751
    .local v1, "time":J
    iget-wide v3, v0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v3, v1, v3

    long-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    .line 752
    .local v3, "deltaT":F
    const v4, 0x3a83126f    # 0.001f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_16

    .line 753
    return-void

    .line 755
    :cond_16
    iput-wide v1, v0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 757
    iget v4, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x43480000    # 200.0f

    cmpg-float v4, v4, v5

    const/4 v6, 0x0

    if-gtz v4, :cond_6e

    iget v4, v0, Landroid/widget/EdgeEffect;->mDistance:F

    iget v7, v0, Landroid/widget/EdgeEffect;->mHeight:F

    mul-float/2addr v4, v7

    .line 758
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v7, v4

    const-wide/high16 v9, 0x4020000000000000L    # 8.0

    cmpg-double v4, v7, v9

    if-gez v4, :cond_6e

    iget v4, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    .line 759
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    iget v7, v0, Landroid/widget/EdgeEffect;->mDistance:F

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v7

    neg-float v7, v7

    cmpl-float v4, v4, v7

    if-nez v4, :cond_6e

    .line 763
    iget v4, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    mul-float/2addr v4, v5

    iput v4, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    .line 765
    iget v4, v0, Landroid/widget/EdgeEffect;->mDistance:F

    iget v5, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    mul-float/2addr v5, v3

    iget v7, v0, Landroid/widget/EdgeEffect;->mHeight:F

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    .line 766
    .local v4, "targetDistance":F
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v5

    iget v7, v0, Landroid/widget/EdgeEffect;->mDistance:F

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v7

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_6b

    .line 768
    iput v6, v0, Landroid/widget/EdgeEffect;->mDistance:F

    .line 769
    iput v6, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    goto :goto_6d

    .line 771
    :cond_6b
    iput v4, v0, Landroid/widget/EdgeEffect;->mDistance:F

    .line 773
    :goto_6d
    return-void

    .line 775
    .end local v4    # "targetDistance":F
    :cond_6e
    const-wide v4, 0x3fa4467381d7dc00L    # 0.03960000000000008

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide v7, 0x4038a83126e978d5L    # 24.657

    mul-double/2addr v4, v7

    .line 778
    .local v4, "mDampedFreq":D
    iget v7, v0, Landroid/widget/EdgeEffect;->mDistance:F

    iget v8, v0, Landroid/widget/EdgeEffect;->mHeight:F

    mul-float/2addr v7, v8

    float-to-double v7, v7

    .line 779
    .local v7, "cosCoeff":D
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    div-double/2addr v9, v4

    iget v11, v0, Landroid/widget/EdgeEffect;->mDistance:F

    float-to-double v11, v11

    const-wide v13, 0x403829f2ba9d1f60L    # 24.16386

    mul-double/2addr v11, v13

    iget v13, v0, Landroid/widget/EdgeEffect;->mHeight:F

    float-to-double v13, v13

    mul-double/2addr v11, v13

    iget v13, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    float-to-double v13, v13

    add-double/2addr v11, v13

    mul-double/2addr v9, v11

    .line 781
    .local v9, "sinCoeff":D
    float-to-double v11, v3

    const-wide v13, -0x3fc7d60d4562e0a0L    # -24.16386

    mul-double/2addr v11, v13

    move-wide v15, v13

    const-wide v13, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    move-wide/from16 v17, v7

    .end local v7    # "cosCoeff":D
    .local v17, "cosCoeff":D
    float-to-double v6, v3

    mul-double/2addr v6, v4

    .line 782
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v7, v17, v6

    float-to-double v13, v3

    mul-double/2addr v13, v4

    .line 783
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v13, v9

    add-double/2addr v7, v13

    mul-double/2addr v11, v7

    .line 784
    .local v11, "distance":D
    const-wide v6, -0x3fc757ced916872bL    # -24.657

    mul-double/2addr v6, v11

    const-wide v13, 0x3fef5c28f5c28f5cL    # 0.98

    mul-double/2addr v6, v13

    float-to-double v13, v3

    mul-double/2addr v13, v15

    .line 785
    move-wide v15, v1

    const-wide v1, 0x4005bf0a8b145769L    # Math.E

    .end local v1    # "time":J
    .local v15, "time":J
    invoke-static {v1, v2, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    neg-double v13, v4

    mul-double v13, v13, v17

    move-wide/from16 v19, v1

    float-to-double v1, v3

    mul-double/2addr v1, v4

    .line 786
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v13, v1

    mul-double v1, v4, v9

    move-wide/from16 v21, v1

    float-to-double v1, v3

    mul-double/2addr v1, v4

    .line 787
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double v1, v1, v21

    add-double/2addr v13, v1

    mul-double v1, v19, v13

    add-double/2addr v6, v1

    .line 788
    .local v6, "velocity":D
    double-to-float v1, v11

    iget v2, v0, Landroid/widget/EdgeEffect;->mHeight:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/widget/EdgeEffect;->mDistance:F

    .line 789
    double-to-float v1, v6

    iput v1, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    .line 790
    iget v1, v0, Landroid/widget/EdgeEffect;->mDistance:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_107

    .line 791
    iput v2, v0, Landroid/widget/EdgeEffect;->mDistance:F

    .line 792
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    goto :goto_108

    .line 790
    :cond_107
    const/4 v1, 0x0

    .line 794
    :goto_108
    invoke-direct {v0}, Landroid/widget/EdgeEffect;->isAtEquilibrium()Z

    move-result v2

    if-eqz v2, :cond_112

    .line 795
    iput v1, v0, Landroid/widget/EdgeEffect;->mDistance:F

    .line 796
    iput v1, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    .line 798
    :cond_112
    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)Z
    .registers 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 588
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Landroid/widget/EdgeEffect;->getCurrentEdgeEffectBehavior()I

    move-result v2

    .line 589
    .local v2, "edgeEffectBehavior":I
    const/4 v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v2, :cond_70

    .line 590
    invoke-direct {v0}, Landroid/widget/EdgeEffect;->update()V

    .line 591
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 593
    .local v8, "count":I
    iget-object v9, v0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    int-to-float v9, v9

    .line 594
    .local v9, "centerX":F
    iget-object v10, v0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    iget v11, v0, Landroid/widget/EdgeEffect;->mRadius:F

    sub-float/2addr v10, v11

    .line 596
    .local v10, "centerY":F
    iget v11, v0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    invoke-static {v11, v4}, Ljava/lang/Math;->min(FF)F

    move-result v11

    iget v12, v0, Landroid/widget/EdgeEffect;->mBaseGlowScale:F

    mul-float/2addr v11, v12

    invoke-virtual {v1, v4, v11, v9, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 598
    iget v11, v0, Landroid/widget/EdgeEffect;->mDisplacement:F

    invoke-static {v11, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float/2addr v4, v11

    .line 599
    .local v4, "displacement":F
    iget-object v11, v0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v4

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    .line 601
    .local v11, "translateX":F
    iget-object v12, v0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 602
    invoke-virtual {v1, v11, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 603
    iget-object v12, v0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    const/high16 v13, 0x437f0000    # 255.0f

    iget v14, v0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    mul-float/2addr v14, v13

    float-to-int v13, v14

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 604
    iget v12, v0, Landroid/widget/EdgeEffect;->mRadius:F

    iget-object v13, v0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v10, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 605
    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 606
    .end local v4    # "displacement":F
    .end local v8    # "count":I
    .end local v9    # "centerX":F
    .end local v10    # "centerY":F
    .end local v11    # "translateX":F
    move/from16 v20, v2

    move/from16 v16, v5

    move v1, v7

    goto/16 :goto_1f8

    :cond_70
    if-ne v2, v5, :cond_1e9

    instance-of v8, v1, Landroid/graphics/RecordingCanvas;

    if-eqz v8, :cond_1e9

    .line 607
    iget v8, v0, Landroid/widget/EdgeEffect;->mState:I

    if-ne v8, v3, :cond_7d

    .line 608
    invoke-direct {v0}, Landroid/widget/EdgeEffect;->updateSpring()V

    .line 610
    :cond_7d
    iget v8, v0, Landroid/widget/EdgeEffect;->mDistance:F

    cmpl-float v8, v8, v7

    if-eqz v8, :cond_1e0

    .line 611
    move-object v8, v1

    check-cast v8, Landroid/graphics/RecordingCanvas;

    .line 612
    .local v8, "recordingCanvas":Landroid/graphics/RecordingCanvas;
    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpMatrix:Landroid/graphics/Matrix;

    if-nez v9, :cond_97

    .line 613
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iput-object v9, v0, Landroid/widget/EdgeEffect;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 614
    const/16 v9, 0xc

    new-array v9, v9, [F

    iput-object v9, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    .line 617
    :cond_97
    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/RecordingCanvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 619
    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aput v7, v9, v6

    .line 620
    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aput v7, v9, v5

    .line 621
    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    iget v10, v0, Landroid/widget/EdgeEffect;->mWidth:F

    const/4 v11, 0x2

    aput v10, v9, v11

    .line 622
    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aput v7, v9, v3

    .line 623
    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    iget v10, v0, Landroid/widget/EdgeEffect;->mWidth:F

    const/4 v12, 0x4

    aput v10, v9, v12

    .line 624
    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    iget v10, v0, Landroid/widget/EdgeEffect;->mHeight:F

    const/4 v13, 0x5

    aput v10, v9, v13

    .line 625
    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    const/4 v10, 0x6

    aput v7, v9, v10

    .line 626
    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    iget v14, v0, Landroid/widget/EdgeEffect;->mHeight:F

    const/4 v15, 0x7

    aput v14, v9, v15

    .line 627
    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    iget v14, v0, Landroid/widget/EdgeEffect;->mWidth:F

    move/from16 v16, v5

    iget v5, v0, Landroid/widget/EdgeEffect;->mDisplacement:F

    mul-float/2addr v14, v5

    const/16 v5, 0x8

    aput v14, v9, v5

    .line 628
    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    const/16 v14, 0x9

    aput v7, v9, v14

    .line 629
    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    move/from16 v17, v5

    iget v5, v0, Landroid/widget/EdgeEffect;->mWidth:F

    move/from16 v18, v10

    iget v10, v0, Landroid/widget/EdgeEffect;->mDisplacement:F

    mul-float/2addr v5, v10

    const/16 v10, 0xa

    aput v5, v9, v10

    .line 630
    iget-object v5, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    iget v9, v0, Landroid/widget/EdgeEffect;->mHeight:F

    move/from16 v19, v10

    iget v10, v0, Landroid/widget/EdgeEffect;->mDistance:F

    mul-float/2addr v9, v10

    const/16 v10, 0xb

    aput v9, v5, v10

    .line 631
    iget-object v5, v0, Landroid/widget/EdgeEffect;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    invoke-virtual {v5, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 633
    iget-object v5, v8, Landroid/graphics/RecordingCanvas;->mNode:Landroid/graphics/RenderNode;

    .line 635
    .local v5, "renderNode":Landroid/graphics/RenderNode;
    invoke-virtual {v5}, Landroid/graphics/RenderNode;->getLeft()I

    move-result v9

    int-to-float v9, v9

    move/from16 v20, v10

    iget-object v10, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v10, v10, v6

    move/from16 v21, v11

    iget-object v11, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v11, v11, v21

    move/from16 v22, v12

    iget-object v12, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v12, v12, v22

    move/from16 v23, v13

    iget-object v13, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v13, v13, v18

    .line 636
    invoke-direct {v0, v10, v11, v12, v13}, Landroid/widget/EdgeEffect;->min(FFFF)F

    move-result v10

    add-float/2addr v9, v10

    .line 637
    .local v9, "left":F
    invoke-virtual {v5}, Landroid/graphics/RenderNode;->getTop()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v11, v11, v16

    iget-object v12, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v12, v12, v3

    iget-object v13, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v13, v13, v23

    move/from16 v24, v14

    iget-object v14, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v14, v14, v15

    .line 638
    invoke-direct {v0, v11, v12, v13, v14}, Landroid/widget/EdgeEffect;->min(FFFF)F

    move-result v11

    add-float/2addr v10, v11

    .line 639
    .local v10, "top":F
    invoke-virtual {v5}, Landroid/graphics/RenderNode;->getLeft()I

    move-result v11

    int-to-float v11, v11

    iget-object v12, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v12, v12, v6

    iget-object v13, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v13, v13, v21

    iget-object v14, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v14, v14, v22

    move/from16 v21, v15

    iget-object v15, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v15, v15, v18

    .line 640
    invoke-direct {v0, v12, v13, v14, v15}, Landroid/widget/EdgeEffect;->max(FFFF)F

    move-result v12

    add-float/2addr v11, v12

    .line 641
    .local v11, "right":F
    invoke-virtual {v5}, Landroid/graphics/RenderNode;->getTop()I

    move-result v12

    int-to-float v12, v12

    iget-object v13, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v13, v13, v16

    iget-object v14, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v14, v14, v3

    iget-object v15, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v15, v15, v23

    iget-object v3, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v3, v3, v21

    .line 642
    invoke-direct {v0, v13, v14, v15, v3}, Landroid/widget/EdgeEffect;->max(FFFF)F

    move-result v3

    add-float/2addr v12, v3

    .line 644
    .local v12, "bottom":F
    iget-object v3, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v3, v3, v19

    iget-object v13, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v13, v13, v17

    sub-float/2addr v3, v13

    .line 645
    .local v3, "x":F
    sub-float v13, v11, v9

    .line 646
    .local v13, "width":F
    div-float v14, v3, v13

    invoke-static {v4, v14}, Ljava/lang/Math;->min(FF)F

    move-result v14

    const/high16 v15, -0x40800000    # -1.0f

    invoke-static {v15, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    invoke-direct {v0, v14}, Landroid/widget/EdgeEffect;->dampStretchVector(F)F

    move-result v14

    .line 648
    .local v14, "vecX":F
    move/from16 v17, v7

    iget-object v7, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v7, v7, v20

    iget-object v6, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v6, v6, v24

    sub-float/2addr v7, v6

    .line 649
    .local v7, "y":F
    sub-float v6, v12, v10

    .line 650
    .local v6, "height":F
    div-float v1, v7, v6

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;->dampStretchVector(F)F

    move-result v1

    .line 652
    .local v1, "vecY":F
    invoke-static {v14}, Ljava/lang/Float;->isFinite(F)Z

    move-result v4

    if-eqz v4, :cond_1ba

    invoke-static {v1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v4

    if-eqz v4, :cond_1ba

    move/from16 v4, v16

    goto :goto_1bb

    :cond_1ba
    const/4 v4, 0x0

    .line 653
    .local v4, "hasValidVectors":Z
    :goto_1bb
    cmpl-float v15, v11, v9

    if-lez v15, :cond_1db

    cmpl-float v15, v12, v10

    if-lez v15, :cond_1db

    iget v15, v0, Landroid/widget/EdgeEffect;->mWidth:F

    cmpl-float v15, v15, v17

    if-lez v15, :cond_1db

    iget v15, v0, Landroid/widget/EdgeEffect;->mHeight:F

    cmpl-float v15, v15, v17

    if-lez v15, :cond_1db

    if-eqz v4, :cond_1db

    .line 654
    iget v15, v0, Landroid/widget/EdgeEffect;->mWidth:F

    move/from16 v20, v2

    .end local v2    # "edgeEffectBehavior":I
    .local v20, "edgeEffectBehavior":I
    iget v2, v0, Landroid/widget/EdgeEffect;->mHeight:F

    invoke-virtual {v5, v14, v1, v15, v2}, Landroid/graphics/RenderNode;->stretch(FFFF)Z

    goto :goto_1dd

    .line 653
    .end local v20    # "edgeEffectBehavior":I
    .restart local v2    # "edgeEffectBehavior":I
    :cond_1db
    move/from16 v20, v2

    .line 661
    .end local v1    # "vecY":F
    .end local v2    # "edgeEffectBehavior":I
    .end local v3    # "x":F
    .end local v4    # "hasValidVectors":Z
    .end local v5    # "renderNode":Landroid/graphics/RenderNode;
    .end local v6    # "height":F
    .end local v7    # "y":F
    .end local v8    # "recordingCanvas":Landroid/graphics/RecordingCanvas;
    .end local v9    # "left":F
    .end local v10    # "top":F
    .end local v11    # "right":F
    .end local v12    # "bottom":F
    .end local v13    # "width":F
    .end local v14    # "vecX":F
    .restart local v20    # "edgeEffectBehavior":I
    :goto_1dd
    move/from16 v1, v17

    goto :goto_1f8

    .line 610
    .end local v20    # "edgeEffectBehavior":I
    .restart local v2    # "edgeEffectBehavior":I
    :cond_1e0
    move/from16 v20, v2

    move/from16 v16, v5

    move/from16 v17, v7

    .end local v2    # "edgeEffectBehavior":I
    .restart local v20    # "edgeEffectBehavior":I
    move/from16 v1, v17

    goto :goto_1f8

    .line 606
    .end local v20    # "edgeEffectBehavior":I
    .restart local v2    # "edgeEffectBehavior":I
    :cond_1e9
    move/from16 v20, v2

    move/from16 v16, v5

    move/from16 v17, v7

    .line 665
    .end local v2    # "edgeEffectBehavior":I
    .restart local v20    # "edgeEffectBehavior":I
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/EdgeEffect;->mState:I

    .line 666
    move/from16 v1, v17

    iput v1, v0, Landroid/widget/EdgeEffect;->mDistance:F

    .line 667
    iput v1, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    .line 670
    :goto_1f8
    const/4 v2, 0x0

    .line 671
    .local v2, "oneLastFrame":Z
    iget v3, v0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_20f

    iget v3, v0, Landroid/widget/EdgeEffect;->mDistance:F

    cmpl-float v3, v3, v1

    if-nez v3, :cond_20f

    iget v3, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    cmpl-float v1, v3, v1

    if-nez v1, :cond_20f

    .line 672
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/EdgeEffect;->mState:I

    .line 673
    const/4 v2, 0x1

    goto :goto_210

    .line 671
    :cond_20f
    const/4 v1, 0x0

    .line 676
    :goto_210
    iget v3, v0, Landroid/widget/EdgeEffect;->mState:I

    if-nez v3, :cond_219

    if-eqz v2, :cond_217

    goto :goto_219

    :cond_217
    move v5, v1

    goto :goto_21b

    :cond_219
    :goto_219
    move/from16 v5, v16

    :goto_21b
    return v5
.end method

.method public whitelist finish()V
    .registers 2

    .line 306
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 307
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mDistance:F

    .line 308
    iput v0, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    .line 309
    return-void
.end method

.method public whitelist getBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    .line 573
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getBlendMode()Landroid/graphics/BlendMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getColor()I
    .registers 2

    .line 560
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public whitelist getDistance()F
    .registers 2

    .line 456
    iget v0, p0, Landroid/widget/EdgeEffect;->mDistance:F

    return v0
.end method

.method public whitelist getMaxHeight()I
    .registers 2

    .line 697
    iget v0, p0, Landroid/widget/EdgeEffect;->mHeight:F

    float-to-int v0, v0

    return v0
.end method

.method public whitelist isFinished()Z
    .registers 2

    .line 298
    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist onAbsorb(I)V
    .registers 7
    .param p1, "velocity"    # I

    .line 495
    invoke-direct {p0}, Landroid/widget/EdgeEffect;->getCurrentEdgeEffectBehavior()I

    move-result v0

    .line 496
    .local v0, "edgeEffectBehavior":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 497
    const/4 v1, 0x3

    iput v1, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 498
    int-to-float v1, p1

    const/high16 v2, 0x41500000    # 13.0f

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    .line 499
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    goto :goto_7f

    .line 500
    :cond_17
    if-nez v0, :cond_7c

    .line 501
    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 502
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    .line 503
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x64

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v3, 0x2710

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 505
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 506
    int-to-float v2, p1

    const v3, 0x3ca3d70a    # 0.02f

    mul-float/2addr v2, v3

    const v3, 0x3e19999a    # 0.15f

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 510
    const v2, 0x3db851ec    # 0.09f

    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 511
    iget v2, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 517
    div-int/lit8 v1, p1, 0x64

    mul-int/2addr v1, p1

    int-to-float v1, v1

    const v2, 0x391d4952    # 1.5E-4f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const v2, 0x3ccccccd    # 0.025f

    add-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 520
    iget v1, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    mul-int/lit8 v2, p1, 0x6

    int-to-float v2, v2

    const v4, 0x3727c5ac    # 1.0E-5f

    mul-float/2addr v2, v4

    .line 522
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 520
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 523
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    goto :goto_7f

    .line 525
    :cond_7c
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->finish()V

    .line 527
    :goto_7f
    return-void
.end method

.method public whitelist onPull(F)V
    .registers 3
    .param p1, "deltaDistance"    # F

    .line 325
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1, v0}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 326
    return-void
.end method

.method public whitelist onPull(FF)V
    .registers 13
    .param p1, "deltaDistance"    # F
    .param p2, "displacement"    # F

    .line 342
    invoke-direct {p0}, Landroid/widget/EdgeEffect;->getCurrentEdgeEffectBehavior()I

    move-result v0

    .line 343
    .local v0, "edgeEffectBehavior":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 344
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->finish()V

    .line 345
    return-void

    .line 347
    :cond_b
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 348
    .local v1, "now":J
    iput p2, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    .line 349
    iget v3, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_24

    iget-wide v3, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v3, v1, v3

    long-to-float v3, v3

    iget v4, p0, Landroid/widget/EdgeEffect;->mDuration:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_24

    if-nez v0, :cond_24

    .line 351
    return-void

    .line 353
    :cond_24
    iget v3, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_39

    .line 354
    if-ne v0, v4, :cond_31

    .line 357
    iget v3, p0, Landroid/widget/EdgeEffect;->mDistance:F

    iput v3, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    goto :goto_39

    .line 359
    :cond_31
    iget v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 362
    :cond_39
    :goto_39
    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 364
    iput-wide v1, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 365
    const/high16 v3, 0x43270000    # 167.0f

    iput v3, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 367
    iget v3, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    add-float/2addr v3, p1

    iput v3, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    .line 368
    if-ne v0, v4, :cond_52

    .line 370
    const/high16 v3, 0x3f800000    # 1.0f

    iget v6, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    .line 372
    :cond_52
    iget v3, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Landroid/widget/EdgeEffect;->mDistance:F

    .line 373
    iput v5, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    .line 375
    iget v3, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_6b

    .line 376
    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 377
    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    goto :goto_b0

    .line 379
    :cond_6b
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 380
    .local v3, "absdd":F
    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    const v7, 0x3e19999a    # 0.15f

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    .line 383
    iget v6, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    .line 384
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget-object v7, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double v6, v8, v6

    sub-double/2addr v8, v6

    const-wide v6, 0x3fd3333333333333L    # 0.3

    sub-double/2addr v8, v6

    .line 383
    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    const-wide v8, 0x3fe6666666666666L    # 0.7

    div-double/2addr v6, v8

    double-to-float v6, v6

    .line 386
    .local v6, "scale":F
    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    .line 389
    .end local v3    # "absdd":F
    .end local v6    # "scale":F
    :goto_b0
    iget v3, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v3, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 390
    iget v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 391
    if-ne v0, v4, :cond_c3

    iget v3, p0, Landroid/widget/EdgeEffect;->mDistance:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_c3

    .line 392
    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 394
    :cond_c3
    return-void
.end method

.method public whitelist onPullDistance(FF)F
    .registers 9
    .param p1, "deltaDistance"    # F
    .param p2, "displacement"    # F

    .line 426
    invoke-direct {p0}, Landroid/widget/EdgeEffect;->getCurrentEdgeEffectBehavior()I

    move-result v0

    .line 427
    .local v0, "edgeEffectBehavior":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    .line 428
    return v2

    .line 430
    :cond_9
    iget v1, p0, Landroid/widget/EdgeEffect;->mDistance:F

    add-float/2addr v1, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 431
    .local v1, "finalDistance":F
    iget v3, p0, Landroid/widget/EdgeEffect;->mDistance:F

    sub-float v3, v1, v3

    .line 432
    .local v3, "delta":F
    cmpl-float v4, v3, v2

    if-nez v4, :cond_1f

    iget v4, p0, Landroid/widget/EdgeEffect;->mDistance:F

    cmpl-float v4, v4, v2

    if-nez v4, :cond_1f

    .line 433
    return v2

    .line 436
    :cond_1f
    iget v2, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_31

    iget v2, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v5, 0x4

    if-eq v2, v5, :cond_31

    if-nez v0, :cond_31

    .line 438
    iget v2, p0, Landroid/widget/EdgeEffect;->mDistance:F

    iput v2, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    .line 439
    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 441
    :cond_31
    invoke-virtual {p0, v3, p2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 442
    return v3
.end method

.method public whitelist onRelease()V
    .registers 4

    .line 466
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    .line 468
    iget v1, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_e

    iget v1, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_e

    .line 469
    return-void

    .line 472
    :cond_e
    const/4 v1, 0x3

    iput v1, p0, Landroid/widget/EdgeEffect;->mState:I

    .line 473
    iget v1, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    .line 474
    iget v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    .line 476
    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    .line 477
    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    .line 478
    iput v0, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    .line 480
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    .line 481
    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    .line 482
    return-void
.end method

.method public whitelist setBlendMode(Landroid/graphics/BlendMode;)V
    .registers 3
    .param p1, "blendmode"    # Landroid/graphics/BlendMode;

    .line 551
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 552
    return-void
.end method

.method public whitelist setColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 535
    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 536
    return-void
.end method

.method public whitelist setSize(II)V
    .registers 13
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 274
    int-to-float v0, p1

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    sget v2, Landroid/widget/EdgeEffect;->SIN:F

    div-float/2addr v0, v2

    .line 275
    .local v0, "r":F
    sget v2, Landroid/widget/EdgeEffect;->COS:F

    mul-float/2addr v2, v0

    .line 276
    .local v2, "y":F
    sub-float v3, v0, v2

    .line 277
    .local v3, "h":F
    int-to-float v4, p2

    mul-float/2addr v4, v1

    sget v1, Landroid/widget/EdgeEffect;->SIN:F

    div-float/2addr v4, v1

    .line 278
    .local v4, "or":F
    sget v1, Landroid/widget/EdgeEffect;->COS:F

    mul-float/2addr v1, v4

    .line 279
    .local v1, "oy":F
    sub-float v5, v4, v1

    .line 281
    .local v5, "oh":F
    iput v0, p0, Landroid/widget/EdgeEffect;->mRadius:F

    .line 282
    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    const/high16 v7, 0x3f800000    # 1.0f

    if-lez v6, :cond_26

    div-float v6, v5, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    :cond_26
    iput v7, p0, Landroid/widget/EdgeEffect;->mBaseGlowScale:F

    .line 284
    iget-object v6, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v9, p2

    invoke-static {v9, v3}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v6, v7, v8, p1, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 286
    int-to-float v6, p1

    iput v6, p0, Landroid/widget/EdgeEffect;->mWidth:F

    .line 287
    int-to-float v6, p2

    iput v6, p0, Landroid/widget/EdgeEffect;->mHeight:F

    .line 288
    return-void
.end method
