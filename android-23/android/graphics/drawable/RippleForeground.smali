.class Landroid/graphics/drawable/RippleForeground;
.super Landroid/graphics/drawable/RippleComponent;
.source "RippleForeground.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;,
        Landroid/graphics/drawable/RippleForeground$1;,
        Landroid/graphics/drawable/RippleForeground$2;,
        Landroid/graphics/drawable/RippleForeground$3;,
        Landroid/graphics/drawable/RippleForeground$4;
    }
.end annotation


# static fields
.field private static final BOUNDED_OPACITY_EXIT_DURATION:I = 0x190

.field private static final BOUNDED_ORIGIN_EXIT_DURATION:I = 0x12c

.field private static final BOUNDED_RADIUS_EXIT_DURATION:I = 0x320

.field private static final DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final MAX_BOUNDED_RADIUS:F = 350.0f

.field private static final OPACITY:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Landroid/graphics/drawable/RippleForeground;",
            ">;"
        }
    .end annotation
.end field

.field private static final OPACITY_ENTER_DURATION_FAST:I = 0x78

.field private static final RIPPLE_ENTER_DELAY:I = 0x50

.field private static final TWEEN_ORIGIN:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Landroid/graphics/drawable/RippleForeground;",
            ">;"
        }
    .end annotation
.end field

.field private static final TWEEN_RADIUS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Landroid/graphics/drawable/RippleForeground;",
            ">;"
        }
    .end annotation
.end field

.field private static final WAVE_OPACITY_DECAY_VELOCITY:F = 3.0f

.field private static final WAVE_TOUCH_DOWN_ACCELERATION:F = 1024.0f

.field private static final WAVE_TOUCH_UP_ACCELERATION:F = 3400.0f


# instance fields
.field private final mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private mBoundedRadius:F

.field private mClampedStartingX:F

.field private mClampedStartingY:F

.field private mHasFinishedExit:Z

.field private mIsBounded:Z

.field private mOpacity:F

.field private mPropPaint:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private mPropRadius:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPropX:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPropY:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mStartingX:F

.field private mStartingY:F

.field private mTargetX:F

.field private mTargetY:F

.field private mTweenRadius:F

.field private mTweenX:F

.field private mTweenY:F


# direct methods
.method static synthetic -get0(Landroid/graphics/drawable/RippleForeground;)F
    .locals 1

    #@0
    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/graphics/drawable/RippleForeground;)F
    .locals 1

    #@0
    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mTweenRadius:F

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/graphics/drawable/RippleForeground;)F
    .locals 1

    #@0
    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mTweenX:F

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/graphics/drawable/RippleForeground;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/graphics/drawable/RippleForeground;->mHasFinishedExit:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/graphics/drawable/RippleForeground;F)F
    .locals 0

    #@0
    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/graphics/drawable/RippleForeground;F)F
    .locals 0

    #@0
    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenRadius:F

    #@2
    return p1
.end method

.method static synthetic -set3(Landroid/graphics/drawable/RippleForeground;F)F
    .locals 0

    #@0
    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenX:F

    #@2
    return p1
.end method

.method static synthetic -set4(Landroid/graphics/drawable/RippleForeground;F)F
    .locals 0

    #@0
    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenY:F

    #@2
    return p1
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 38
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    #@2
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    #@5
    sput-object v0, Landroid/graphics/drawable/RippleForeground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@7
    .line 39
    new-instance v0, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;

    #@9
    .line 40
    const/4 v1, 0x0

    #@a
    const/high16 v2, 0x43c80000    # 400.0f

    #@c
    const v3, 0x3fb33333    # 1.4f

    #@f
    .line 39
    invoke-direct {v0, v2, v3, v1}, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;-><init>(FFF)V

    #@12
    sput-object v0, Landroid/graphics/drawable/RippleForeground;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@14
    .line 387
    new-instance v0, Landroid/graphics/drawable/RippleForeground$2;

    #@16
    const-string/jumbo v1, "tweenRadius"

    #@19
    invoke-direct {v0, v1}, Landroid/graphics/drawable/RippleForeground$2;-><init>(Ljava/lang/String;)V

    #@1c
    .line 386
    sput-object v0, Landroid/graphics/drawable/RippleForeground;->TWEEN_RADIUS:Landroid/util/FloatProperty;

    #@1e
    .line 404
    new-instance v0, Landroid/graphics/drawable/RippleForeground$3;

    #@20
    const-string/jumbo v1, "tweenOrigin"

    #@23
    invoke-direct {v0, v1}, Landroid/graphics/drawable/RippleForeground$3;-><init>(Ljava/lang/String;)V

    #@26
    .line 403
    sput-object v0, Landroid/graphics/drawable/RippleForeground;->TWEEN_ORIGIN:Landroid/util/FloatProperty;

    #@28
    .line 422
    new-instance v0, Landroid/graphics/drawable/RippleForeground$4;

    #@2a
    const-string/jumbo v1, "opacity"

    #@2d
    invoke-direct {v0, v1}, Landroid/graphics/drawable/RippleForeground$4;-><init>(Ljava/lang/String;)V

    #@30
    .line 421
    sput-object v0, Landroid/graphics/drawable/RippleForeground;->OPACITY:Landroid/util/FloatProperty;

    #@32
    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;FFZ)V
    .locals 4
    .param p1, "owner"    # Landroid/graphics/drawable/RippleDrawable;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "startingX"    # F
    .param p4, "startingY"    # F
    .param p5, "isBounded"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 91
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RippleComponent;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;)V

    #@4
    .line 69
    iput v1, p0, Landroid/graphics/drawable/RippleForeground;->mTargetX:F

    #@6
    .line 70
    iput v1, p0, Landroid/graphics/drawable/RippleForeground;->mTargetY:F

    #@8
    .line 73
    iput v1, p0, Landroid/graphics/drawable/RippleForeground;->mBoundedRadius:F

    #@a
    .line 76
    const/high16 v0, 0x3f800000    # 1.0f

    #@c
    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    #@e
    .line 79
    iput v1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenRadius:F

    #@10
    .line 80
    iput v1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenX:F

    #@12
    .line 81
    iput v1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenY:F

    #@14
    .line 349
    new-instance v0, Landroid/graphics/drawable/RippleForeground$1;

    #@16
    invoke-direct {v0, p0}, Landroid/graphics/drawable/RippleForeground$1;-><init>(Landroid/graphics/drawable/RippleForeground;)V

    #@19
    iput-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    #@1b
    .line 93
    iput-boolean p5, p0, Landroid/graphics/drawable/RippleForeground;->mIsBounded:Z

    #@1d
    .line 94
    iput p3, p0, Landroid/graphics/drawable/RippleForeground;->mStartingX:F

    #@1f
    .line 95
    iput p4, p0, Landroid/graphics/drawable/RippleForeground;->mStartingY:F

    #@21
    .line 97
    if-eqz p5, :cond_0

    #@23
    .line 99
    invoke-static {}, Ljava/lang/Math;->random()D

    #@26
    move-result-wide v0

    #@27
    const-wide v2, 0x4075e00000000000L    # 350.0

    #@2c
    mul-double/2addr v0, v2

    #@2d
    const-wide v2, 0x3fb999999999999aL    # 0.1

    #@32
    mul-double/2addr v0, v2

    #@33
    double-to-float v0, v0

    #@34
    .line 98
    const v1, 0x439d8000    # 315.0f

    #@37
    add-float/2addr v0, v1

    #@38
    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mBoundedRadius:F

    #@3a
    .line 90
    :goto_0
    return-void

    #@3b
    .line 101
    :cond_0
    iput v1, p0, Landroid/graphics/drawable/RippleForeground;->mBoundedRadius:F

    #@3d
    goto :goto_0
.end method

.method private clampStartingPosition()V
    .locals 12

    #@0
    .prologue
    .line 333
    iget-object v7, p0, Landroid/graphics/drawable/RippleForeground;->mBounds:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterX()F

    #@5
    move-result v2

    #@6
    .line 334
    .local v2, "cX":F
    iget-object v7, p0, Landroid/graphics/drawable/RippleForeground;->mBounds:Landroid/graphics/Rect;

    #@8
    invoke-virtual {v7}, Landroid/graphics/Rect;->exactCenterY()F

    #@b
    move-result v3

    #@c
    .line 335
    .local v3, "cY":F
    iget v7, p0, Landroid/graphics/drawable/RippleForeground;->mStartingX:F

    #@e
    sub-float v4, v7, v2

    #@10
    .line 336
    .local v4, "dX":F
    iget v7, p0, Landroid/graphics/drawable/RippleForeground;->mStartingY:F

    #@12
    sub-float v5, v7, v3

    #@14
    .line 337
    .local v5, "dY":F
    iget v6, p0, Landroid/graphics/drawable/RippleForeground;->mTargetRadius:F

    #@16
    .line 338
    .local v6, "r":F
    mul-float v7, v4, v4

    #@18
    mul-float v8, v5, v5

    #@1a
    add-float/2addr v7, v8

    #@1b
    mul-float v8, v6, v6

    #@1d
    cmpl-float v7, v7, v8

    #@1f
    if-lez v7, :cond_0

    #@21
    .line 340
    float-to-double v8, v5

    #@22
    float-to-double v10, v4

    #@23
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    #@26
    move-result-wide v0

    #@27
    .line 341
    .local v0, "angle":D
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    #@2a
    move-result-wide v8

    #@2b
    float-to-double v10, v6

    #@2c
    mul-double/2addr v8, v10

    #@2d
    double-to-float v7, v8

    #@2e
    add-float/2addr v7, v2

    #@2f
    iput v7, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingX:F

    #@31
    .line 342
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    #@34
    move-result-wide v8

    #@35
    float-to-double v10, v6

    #@36
    mul-double/2addr v8, v10

    #@37
    double-to-float v7, v8

    #@38
    add-float/2addr v7, v3

    #@39
    iput v7, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingY:F

    #@3b
    .line 332
    .end local v0    # "angle":D
    :goto_0
    return-void

    #@3c
    .line 344
    :cond_0
    iget v7, p0, Landroid/graphics/drawable/RippleForeground;->mStartingX:F

    #@3e
    iput v7, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingX:F

    #@40
    .line 345
    iget v7, p0, Landroid/graphics/drawable/RippleForeground;->mStartingY:F

    #@42
    iput v7, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingY:F

    #@44
    goto :goto_0
.end method

.method private computeBoundedTargetValues()V
    .locals 3

    #@0
    .prologue
    const v2, 0x3f333333    # 0.7f

    #@3
    .line 222
    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingX:F

    #@5
    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mBounds:Landroid/graphics/Rect;

    #@7
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    #@a
    move-result v1

    #@b
    sub-float/2addr v0, v1

    #@c
    mul-float/2addr v0, v2

    #@d
    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mTargetX:F

    #@f
    .line 223
    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingY:F

    #@11
    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mBounds:Landroid/graphics/Rect;

    #@13
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    #@16
    move-result v1

    #@17
    sub-float/2addr v0, v1

    #@18
    mul-float/2addr v0, v2

    #@19
    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mTargetY:F

    #@1b
    .line 224
    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mBoundedRadius:F

    #@1d
    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mTargetRadius:F

    #@1f
    .line 221
    return-void
.end method

.method private getCurrentRadius()F
    .locals 3

    #@0
    .prologue
    .line 211
    const/4 v0, 0x0

    #@1
    iget v1, p0, Landroid/graphics/drawable/RippleForeground;->mTargetRadius:F

    #@3
    iget v2, p0, Landroid/graphics/drawable/RippleForeground;->mTweenRadius:F

    #@5
    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    #@8
    move-result v0

    #@9
    return v0
.end method

.method private getCurrentX()F
    .locals 3

    #@0
    .prologue
    .line 197
    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingX:F

    #@2
    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mBounds:Landroid/graphics/Rect;

    #@4
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    #@7
    move-result v1

    #@8
    sub-float/2addr v0, v1

    #@9
    iget v1, p0, Landroid/graphics/drawable/RippleForeground;->mTargetX:F

    #@b
    iget v2, p0, Landroid/graphics/drawable/RippleForeground;->mTweenX:F

    #@d
    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    #@10
    move-result v0

    #@11
    return v0
.end method

.method private getCurrentY()F
    .locals 3

    #@0
    .prologue
    .line 201
    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingY:F

    #@2
    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mBounds:Landroid/graphics/Rect;

    #@4
    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    #@7
    move-result v1

    #@8
    sub-float/2addr v0, v1

    #@9
    iget v1, p0, Landroid/graphics/drawable/RippleForeground;->mTargetY:F

    #@b
    iget v2, p0, Landroid/graphics/drawable/RippleForeground;->mTweenY:F

    #@d
    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    #@10
    move-result v0

    #@11
    return v0
.end method

.method private getOpacityExitDuration()I
    .locals 2

    #@0
    .prologue
    .line 215
    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    #@2
    const/high16 v1, 0x447a0000    # 1000.0f

    #@4
    mul-float/2addr v0, v1

    #@5
    const/high16 v1, 0x40400000    # 3.0f

    #@7
    div-float/2addr v0, v1

    #@8
    const/high16 v1, 0x3f000000    # 0.5f

    #@a
    add-float/2addr v0, v1

    #@b
    float-to-int v0, v0

    #@c
    return v0
.end method

.method private getRadiusExitDuration()I
    .locals 6

    #@0
    .prologue
    .line 205
    iget v1, p0, Landroid/graphics/drawable/RippleForeground;->mTargetRadius:F

    #@2
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentRadius()F

    #@5
    move-result v2

    #@6
    sub-float v0, v1, v2

    #@8
    .line 206
    .local v0, "remainingRadius":F
    const v1, 0x458a4000    # 4424.0f

    #@b
    div-float v1, v0, v1

    #@d
    .line 207
    iget v2, p0, Landroid/graphics/drawable/RippleForeground;->mDensity:F

    #@f
    .line 206
    mul-float/2addr v1, v2

    #@10
    float-to-double v2, v1

    #@11
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    #@14
    move-result-wide v2

    #@15
    const-wide v4, 0x408f400000000000L    # 1000.0

    #@1a
    mul-double/2addr v2, v4

    #@1b
    .line 207
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    #@1d
    .line 206
    add-double/2addr v2, v4

    #@1e
    double-to-int v1, v2

    #@1f
    return v1
.end method


# virtual methods
.method protected createHardwareExit(Landroid/graphics/Paint;)Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;
    .locals 14
    .param p1, "p"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 271
    iget-boolean v11, p0, Landroid/graphics/drawable/RippleForeground;->mIsBounded:Z

    #@2
    if-eqz v11, :cond_0

    #@4
    .line 272
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->computeBoundedTargetValues()V

    #@7
    .line 274
    const/16 v4, 0x320

    #@9
    .line 275
    .local v4, "radiusDuration":I
    const/16 v2, 0x12c

    #@b
    .line 276
    .local v2, "originDuration":I
    const/16 v1, 0x190

    #@d
    .line 283
    .local v1, "opacityDuration":I
    :goto_0
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentX()F

    #@10
    move-result v7

    #@11
    .line 284
    .local v7, "startX":F
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentY()F

    #@14
    move-result v8

    #@15
    .line 285
    .local v8, "startY":F
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentRadius()F

    #@18
    move-result v6

    #@19
    .line 287
    .local v6, "startRadius":F
    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    #@1c
    move-result v11

    #@1d
    int-to-float v11, v11

    #@1e
    iget v12, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    #@20
    mul-float/2addr v11, v12

    #@21
    const/high16 v12, 0x3f000000    # 0.5f

    #@23
    add-float/2addr v11, v12

    #@24
    float-to-int v11, v11

    #@25
    invoke-virtual {p1, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    #@28
    .line 289
    invoke-static {p1}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    #@2b
    move-result-object v11

    #@2c
    iput-object v11, p0, Landroid/graphics/drawable/RippleForeground;->mPropPaint:Landroid/graphics/CanvasProperty;

    #@2e
    .line 290
    invoke-static {v6}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    #@31
    move-result-object v11

    #@32
    iput-object v11, p0, Landroid/graphics/drawable/RippleForeground;->mPropRadius:Landroid/graphics/CanvasProperty;

    #@34
    .line 291
    invoke-static {v7}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    #@37
    move-result-object v11

    #@38
    iput-object v11, p0, Landroid/graphics/drawable/RippleForeground;->mPropX:Landroid/graphics/CanvasProperty;

    #@3a
    .line 292
    invoke-static {v8}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    #@3d
    move-result-object v11

    #@3e
    iput-object v11, p0, Landroid/graphics/drawable/RippleForeground;->mPropY:Landroid/graphics/CanvasProperty;

    #@40
    .line 294
    new-instance v3, Landroid/view/RenderNodeAnimator;

    #@42
    iget-object v11, p0, Landroid/graphics/drawable/RippleForeground;->mPropRadius:Landroid/graphics/CanvasProperty;

    #@44
    iget v12, p0, Landroid/graphics/drawable/RippleForeground;->mTargetRadius:F

    #@46
    invoke-direct {v3, v11, v12}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    #@49
    .line 295
    .local v3, "radius":Landroid/view/RenderNodeAnimator;
    int-to-long v12, v4

    #@4a
    invoke-virtual {v3, v12, v13}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    #@4d
    .line 296
    sget-object v11, Landroid/graphics/drawable/RippleForeground;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@4f
    invoke-virtual {v3, v11}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@52
    .line 298
    new-instance v9, Landroid/view/RenderNodeAnimator;

    #@54
    iget-object v11, p0, Landroid/graphics/drawable/RippleForeground;->mPropX:Landroid/graphics/CanvasProperty;

    #@56
    iget v12, p0, Landroid/graphics/drawable/RippleForeground;->mTargetX:F

    #@58
    invoke-direct {v9, v11, v12}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    #@5b
    .line 299
    .local v9, "x":Landroid/view/RenderNodeAnimator;
    int-to-long v12, v2

    #@5c
    invoke-virtual {v9, v12, v13}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    #@5f
    .line 300
    sget-object v11, Landroid/graphics/drawable/RippleForeground;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@61
    invoke-virtual {v9, v11}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@64
    .line 302
    new-instance v10, Landroid/view/RenderNodeAnimator;

    #@66
    iget-object v11, p0, Landroid/graphics/drawable/RippleForeground;->mPropY:Landroid/graphics/CanvasProperty;

    #@68
    iget v12, p0, Landroid/graphics/drawable/RippleForeground;->mTargetY:F

    #@6a
    invoke-direct {v10, v11, v12}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    #@6d
    .line 303
    .local v10, "y":Landroid/view/RenderNodeAnimator;
    int-to-long v12, v2

    #@6e
    invoke-virtual {v10, v12, v13}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    #@71
    .line 304
    sget-object v11, Landroid/graphics/drawable/RippleForeground;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@73
    invoke-virtual {v10, v11}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@76
    .line 306
    new-instance v0, Landroid/view/RenderNodeAnimator;

    #@78
    iget-object v11, p0, Landroid/graphics/drawable/RippleForeground;->mPropPaint:Landroid/graphics/CanvasProperty;

    #@7a
    .line 307
    const/4 v12, 0x0

    #@7b
    const/4 v13, 0x1

    #@7c
    .line 306
    invoke-direct {v0, v11, v13, v12}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    #@7f
    .line 308
    .local v0, "opacity":Landroid/view/RenderNodeAnimator;
    int-to-long v12, v1

    #@80
    invoke-virtual {v0, v12, v13}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    #@83
    .line 309
    sget-object v11, Landroid/graphics/drawable/RippleForeground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@85
    invoke-virtual {v0, v11}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@88
    .line 310
    iget-object v11, p0, Landroid/graphics/drawable/RippleForeground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    #@8a
    invoke-virtual {v0, v11}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@8d
    .line 312
    new-instance v5, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    #@8f
    invoke-direct {v5}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;-><init>()V

    #@92
    .line 313
    .local v5, "set":Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->add(Landroid/view/RenderNodeAnimator;)V

    #@95
    .line 314
    invoke-virtual {v5, v0}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->add(Landroid/view/RenderNodeAnimator;)V

    #@98
    .line 315
    invoke-virtual {v5, v9}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->add(Landroid/view/RenderNodeAnimator;)V

    #@9b
    .line 316
    invoke-virtual {v5, v10}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->add(Landroid/view/RenderNodeAnimator;)V

    #@9e
    .line 318
    return-object v5

    #@9f
    .line 278
    .end local v0    # "opacity":Landroid/view/RenderNodeAnimator;
    .end local v1    # "opacityDuration":I
    .end local v2    # "originDuration":I
    .end local v3    # "radius":Landroid/view/RenderNodeAnimator;
    .end local v4    # "radiusDuration":I
    .end local v5    # "set":Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;
    .end local v6    # "startRadius":F
    .end local v7    # "startX":F
    .end local v8    # "startY":F
    .end local v9    # "x":Landroid/view/RenderNodeAnimator;
    .end local v10    # "y":Landroid/view/RenderNodeAnimator;
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getRadiusExitDuration()I

    #@a2
    move-result v4

    #@a3
    .line 279
    .restart local v4    # "radiusDuration":I
    move v2, v4

    #@a4
    .line 280
    .restart local v2    # "originDuration":I
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getOpacityExitDuration()I

    #@a7
    move-result v1

    #@a8
    .restart local v1    # "opacityDuration":I
    goto/16 :goto_0
.end method

.method protected createSoftwareEnter(Z)Landroid/animation/Animator;
    .locals 10
    .param p1, "fast"    # Z

    #@0
    .prologue
    .line 166
    iget-boolean v5, p0, Landroid/graphics/drawable/RippleForeground;->mIsBounded:Z

    #@2
    if-eqz v5, :cond_0

    #@4
    .line 167
    const/4 v5, 0x0

    #@5
    return-object v5

    #@6
    .line 171
    :cond_0
    iget v5, p0, Landroid/graphics/drawable/RippleForeground;->mTargetRadius:F

    #@8
    const/high16 v6, 0x44800000    # 1024.0f

    #@a
    div-float/2addr v5, v6

    #@b
    iget v6, p0, Landroid/graphics/drawable/RippleForeground;->mDensity:F

    #@d
    mul-float/2addr v5, v6

    #@e
    float-to-double v6, v5

    #@f
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    #@12
    move-result-wide v6

    #@13
    const-wide v8, 0x408f400000000000L    # 1000.0

    #@18
    mul-double/2addr v6, v8

    #@19
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    #@1b
    add-double/2addr v6, v8

    #@1c
    .line 170
    double-to-int v0, v6

    #@1d
    .line 173
    .local v0, "duration":I
    sget-object v5, Landroid/graphics/drawable/RippleForeground;->TWEEN_RADIUS:Landroid/util/FloatProperty;

    #@1f
    const/4 v6, 0x1

    #@20
    new-array v6, v6, [F

    #@22
    const/high16 v7, 0x3f800000    # 1.0f

    #@24
    const/4 v8, 0x0

    #@25
    aput v7, v6, v8

    #@27
    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@2a
    move-result-object v4

    #@2b
    .line 174
    .local v4, "tweenRadius":Landroid/animation/ObjectAnimator;
    const/4 v5, 0x1

    #@2c
    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    #@2f
    .line 175
    int-to-long v6, v0

    #@30
    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@33
    .line 176
    sget-object v5, Landroid/graphics/drawable/RippleForeground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@35
    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@38
    .line 177
    const-wide/16 v6, 0x50

    #@3a
    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    #@3d
    .line 179
    sget-object v5, Landroid/graphics/drawable/RippleForeground;->TWEEN_ORIGIN:Landroid/util/FloatProperty;

    #@3f
    const/4 v6, 0x1

    #@40
    new-array v6, v6, [F

    #@42
    const/high16 v7, 0x3f800000    # 1.0f

    #@44
    const/4 v8, 0x0

    #@45
    aput v7, v6, v8

    #@47
    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@4a
    move-result-object v3

    #@4b
    .line 180
    .local v3, "tweenOrigin":Landroid/animation/ObjectAnimator;
    const/4 v5, 0x1

    #@4c
    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    #@4f
    .line 181
    int-to-long v6, v0

    #@50
    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@53
    .line 182
    sget-object v5, Landroid/graphics/drawable/RippleForeground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@55
    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@58
    .line 183
    const-wide/16 v6, 0x50

    #@5a
    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    #@5d
    .line 185
    sget-object v5, Landroid/graphics/drawable/RippleForeground;->OPACITY:Landroid/util/FloatProperty;

    #@5f
    const/4 v6, 0x1

    #@60
    new-array v6, v6, [F

    #@62
    const/high16 v7, 0x3f800000    # 1.0f

    #@64
    const/4 v8, 0x0

    #@65
    aput v7, v6, v8

    #@67
    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@6a
    move-result-object v1

    #@6b
    .line 186
    .local v1, "opacity":Landroid/animation/ObjectAnimator;
    const/4 v5, 0x1

    #@6c
    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    #@6f
    .line 187
    const-wide/16 v6, 0x78

    #@71
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@74
    .line 188
    sget-object v5, Landroid/graphics/drawable/RippleForeground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@76
    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@79
    .line 190
    new-instance v2, Landroid/animation/AnimatorSet;

    #@7b
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    #@7e
    .line 191
    .local v2, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@81
    move-result-object v5

    #@82
    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@85
    move-result-object v5

    #@86
    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@89
    .line 193
    return-object v2
.end method

.method protected createSoftwareExit()Landroid/animation/Animator;
    .locals 13

    #@0
    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    #@2
    const/4 v11, 0x0

    #@3
    const/4 v10, 0x1

    #@4
    .line 232
    iget-boolean v7, p0, Landroid/graphics/drawable/RippleForeground;->mIsBounded:Z

    #@6
    if-eqz v7, :cond_0

    #@8
    .line 233
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->computeBoundedTargetValues()V

    #@b
    .line 235
    const/16 v3, 0x320

    #@d
    .line 236
    .local v3, "radiusDuration":I
    const/16 v2, 0x12c

    #@f
    .line 237
    .local v2, "originDuration":I
    const/16 v1, 0x190

    #@11
    .line 244
    .local v1, "opacityDuration":I
    :goto_0
    sget-object v7, Landroid/graphics/drawable/RippleForeground;->TWEEN_RADIUS:Landroid/util/FloatProperty;

    #@13
    new-array v8, v10, [F

    #@15
    aput v12, v8, v11

    #@17
    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@1a
    move-result-object v6

    #@1b
    .line 245
    .local v6, "tweenRadius":Landroid/animation/ObjectAnimator;
    invoke-virtual {v6, v10}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    #@1e
    .line 246
    int-to-long v8, v3

    #@1f
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@22
    .line 247
    sget-object v7, Landroid/graphics/drawable/RippleForeground;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@24
    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@27
    .line 249
    sget-object v7, Landroid/graphics/drawable/RippleForeground;->TWEEN_ORIGIN:Landroid/util/FloatProperty;

    #@29
    new-array v8, v10, [F

    #@2b
    aput v12, v8, v11

    #@2d
    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@30
    move-result-object v5

    #@31
    .line 250
    .local v5, "tweenOrigin":Landroid/animation/ObjectAnimator;
    invoke-virtual {v5, v10}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    #@34
    .line 251
    int-to-long v8, v2

    #@35
    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@38
    .line 252
    sget-object v7, Landroid/graphics/drawable/RippleForeground;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@3a
    invoke-virtual {v5, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@3d
    .line 254
    sget-object v7, Landroid/graphics/drawable/RippleForeground;->OPACITY:Landroid/util/FloatProperty;

    #@3f
    new-array v8, v10, [F

    #@41
    const/4 v9, 0x0

    #@42
    aput v9, v8, v11

    #@44
    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@47
    move-result-object v0

    #@48
    .line 255
    .local v0, "opacity":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v10}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    #@4b
    .line 256
    int-to-long v8, v1

    #@4c
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@4f
    .line 257
    sget-object v7, Landroid/graphics/drawable/RippleForeground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@51
    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@54
    .line 259
    new-instance v4, Landroid/animation/AnimatorSet;

    #@56
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    #@59
    .line 260
    .local v4, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@5c
    move-result-object v7

    #@5d
    invoke-virtual {v7, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@60
    move-result-object v7

    #@61
    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    #@64
    .line 261
    iget-object v7, p0, Landroid/graphics/drawable/RippleForeground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    #@66
    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@69
    .line 263
    return-object v4

    #@6a
    .line 239
    .end local v0    # "opacity":Landroid/animation/ObjectAnimator;
    .end local v1    # "opacityDuration":I
    .end local v2    # "originDuration":I
    .end local v3    # "radiusDuration":I
    .end local v4    # "set":Landroid/animation/AnimatorSet;
    .end local v5    # "tweenOrigin":Landroid/animation/ObjectAnimator;
    .end local v6    # "tweenRadius":Landroid/animation/ObjectAnimator;
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getRadiusExitDuration()I

    #@6d
    move-result v3

    #@6e
    .line 240
    .restart local v3    # "radiusDuration":I
    move v2, v3

    #@6f
    .line 241
    .restart local v2    # "originDuration":I
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getOpacityExitDuration()I

    #@72
    move-result v1

    #@73
    .restart local v1    # "opacityDuration":I
    goto :goto_0
.end method

.method protected drawHardware(Landroid/view/DisplayListCanvas;)Z
    .locals 4
    .param p1, "c"    # Landroid/view/DisplayListCanvas;

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mPropX:Landroid/graphics/CanvasProperty;

    #@2
    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mPropY:Landroid/graphics/CanvasProperty;

    #@4
    iget-object v2, p0, Landroid/graphics/drawable/RippleForeground;->mPropRadius:Landroid/graphics/CanvasProperty;

    #@6
    iget-object v3, p0, Landroid/graphics/drawable/RippleForeground;->mPropPaint:Landroid/graphics/CanvasProperty;

    #@8
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/DisplayListCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    #@b
    .line 132
    const/4 v0, 0x1

    #@c
    return v0
.end method

.method protected drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 112
    const/4 v1, 0x0

    #@1
    .line 114
    .local v1, "hasContent":Z
    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    #@4
    move-result v2

    #@5
    .line 115
    .local v2, "origAlpha":I
    int-to-float v6, v2

    #@6
    iget v7, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    #@8
    mul-float/2addr v6, v7

    #@9
    const/high16 v7, 0x3f000000    # 0.5f

    #@b
    add-float/2addr v6, v7

    #@c
    float-to-int v0, v6

    #@d
    .line 116
    .local v0, "alpha":I
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentRadius()F

    #@10
    move-result v3

    #@11
    .line 117
    .local v3, "radius":F
    if-lez v0, :cond_0

    #@13
    const/4 v6, 0x0

    #@14
    cmpl-float v6, v3, v6

    #@16
    if-lez v6, :cond_0

    #@18
    .line 118
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentX()F

    #@1b
    move-result v4

    #@1c
    .line 119
    .local v4, "x":F
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentY()F

    #@1f
    move-result v5

    #@20
    .line 120
    .local v5, "y":F
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    #@23
    .line 121
    invoke-virtual {p1, v4, v5, v3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@26
    .line 122
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    #@29
    .line 123
    const/4 v1, 0x1

    #@2a
    .line 126
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_0
    return v1
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 139
    iget v3, p0, Landroid/graphics/drawable/RippleForeground;->mTargetX:F

    #@2
    float-to-int v0, v3

    #@3
    .line 140
    .local v0, "outerX":I
    iget v3, p0, Landroid/graphics/drawable/RippleForeground;->mTargetY:F

    #@5
    float-to-int v1, v3

    #@6
    .line 141
    .local v1, "outerY":I
    iget v3, p0, Landroid/graphics/drawable/RippleForeground;->mTargetRadius:F

    #@8
    float-to-int v3, v3

    #@9
    add-int/lit8 v2, v3, 0x1

    #@b
    .line 142
    .local v2, "r":I
    sub-int v3, v0, v2

    #@d
    sub-int v4, v1, v2

    #@f
    add-int v5, v0, v2

    #@11
    add-int v6, v1, v2

    #@13
    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    #@16
    .line 138
    return-void
.end method

.method public hasFinishedExit()Z
    .locals 1

    #@0
    .prologue
    .line 160
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleForeground;->mHasFinishedExit:Z

    #@2
    return v0
.end method

.method protected jumpValuesToExit()V
    .locals 2

    #@0
    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    #@2
    .line 323
    const/4 v0, 0x0

    #@3
    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    #@5
    .line 324
    iput v1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenX:F

    #@7
    .line 325
    iput v1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenY:F

    #@9
    .line 326
    iput v1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenRadius:F

    #@b
    .line 322
    return-void
.end method

.method public move(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 150
    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mStartingX:F

    #@2
    .line 151
    iput p2, p0, Landroid/graphics/drawable/RippleForeground;->mStartingY:F

    #@4
    .line 153
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->clampStartingPosition()V

    #@7
    .line 149
    return-void
.end method

.method protected onTargetRadiusChanged(F)V
    .locals 0
    .param p1, "targetRadius"    # F

    #@0
    .prologue
    .line 107
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->clampStartingPosition()V

    #@3
    .line 106
    return-void
.end method
