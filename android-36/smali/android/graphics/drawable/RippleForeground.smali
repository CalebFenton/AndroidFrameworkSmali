.class Landroid/graphics/drawable/RippleForeground;
.super Landroid/graphics/drawable/RippleComponent;
.source "RippleForeground.java"


# static fields
.field private static final greylist-max-o DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final greylist-max-o LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final greylist-max-o OPACITY:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/graphics/drawable/RippleForeground;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o OPACITY_ENTER_DURATION:I = 0x4b

.field private static final greylist-max-o OPACITY_EXIT_DURATION:I = 0x96

.field private static final greylist-max-o OPACITY_HOLD_DURATION:I = 0xe1

.field private static final greylist-max-o RIPPLE_ENTER_DURATION:I = 0xe1

.field private static final greylist-max-o RIPPLE_ORIGIN_DURATION:I = 0xe1

.field private static final greylist-max-o TWEEN_ORIGIN:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/graphics/drawable/RippleForeground;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TWEEN_RADIUS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/graphics/drawable/RippleForeground;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private greylist-max-o mClampedStartingX:F

.field private greylist-max-o mClampedStartingY:F

.field private greylist-max-o mEnterStartedAtMillis:J

.field private final greylist-max-o mForceSoftware:Z

.field private greylist-max-o mHasFinishedExit:Z

.field private greylist-max-o mOpacity:F

.field private greylist-max-o mPendingHwAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/animation/RenderNodeAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPropPaint:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPropRadius:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPropX:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPropY:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mRunningHwAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/animation/RenderNodeAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mRunningSwAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mStartRadius:F

.field private greylist-max-o mStartingX:F

.field private greylist-max-o mStartingY:F

.field private greylist-max-o mTargetX:F

.field private greylist-max-o mTargetY:F

.field private greylist-max-o mTweenRadius:F

.field private greylist-max-o mTweenX:F

.field private greylist-max-o mTweenY:F

.field private greylist-max-o mUsingProperties:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOpacity(Landroid/graphics/drawable/RippleForeground;)F
    .registers 1

    iget p0, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRunningHwAnimators(Landroid/graphics/drawable/RippleForeground;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/graphics/drawable/RippleForeground;->mRunningHwAnimators:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTweenRadius(Landroid/graphics/drawable/RippleForeground;)F
    .registers 1

    iget p0, p0, Landroid/graphics/drawable/RippleForeground;->mTweenRadius:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTweenX(Landroid/graphics/drawable/RippleForeground;)F
    .registers 1

    iget p0, p0, Landroid/graphics/drawable/RippleForeground;->mTweenX:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHasFinishedExit(Landroid/graphics/drawable/RippleForeground;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/graphics/drawable/RippleForeground;->mHasFinishedExit:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOpacity(Landroid/graphics/drawable/RippleForeground;F)V
    .registers 2

    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTweenRadius(Landroid/graphics/drawable/RippleForeground;F)V
    .registers 2

    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenRadius:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTweenX(Landroid/graphics/drawable/RippleForeground;F)V
    .registers 2

    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenX:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTweenY(Landroid/graphics/drawable/RippleForeground;F)V
    .registers 2

    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mTweenY:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearHwProps(Landroid/graphics/drawable/RippleForeground;)V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->clearHwProps()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monAnimationPropertyChanged(Landroid/graphics/drawable/RippleForeground;)V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->onAnimationPropertyChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpruneHwFinished(Landroid/graphics/drawable/RippleForeground;)V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->pruneHwFinished()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mpruneSwFinished(Landroid/graphics/drawable/RippleForeground;)V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->pruneSwFinished()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 41
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/graphics/drawable/RippleForeground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 43
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/graphics/drawable/RippleForeground;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 421
    new-instance v0, Landroid/graphics/drawable/RippleForeground$2;

    const-string/jumbo v1, "tweenRadius"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/RippleForeground$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/RippleForeground;->TWEEN_RADIUS:Landroid/util/FloatProperty;

    .line 438
    new-instance v0, Landroid/graphics/drawable/RippleForeground$3;

    const-string/jumbo v1, "tweenOrigin"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/RippleForeground$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/RippleForeground;->TWEEN_ORIGIN:Landroid/util/FloatProperty;

    .line 456
    new-instance v0, Landroid/graphics/drawable/RippleForeground$4;

    const-string/jumbo v1, "opacity"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/RippleForeground$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/RippleForeground;->OPACITY:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;FFZ)V
    .registers 8
    .param p1, "owner"    # Landroid/graphics/drawable/RippleDrawable;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "startingX"    # F
    .param p4, "startingY"    # F
    .param p5, "forceSoftware"    # Z

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RippleComponent;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;)V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mTargetX:F

    .line 69
    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mTargetY:F

    .line 72
    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    .line 75
    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mTweenRadius:F

    .line 76
    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mTweenX:F

    .line 77
    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mTweenY:F

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mPendingHwAnimators:Ljava/util/ArrayList;

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mRunningHwAnimators:Ljava/util/ArrayList;

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mRunningSwAnimators:Ljava/util/ArrayList;

    .line 101
    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mStartRadius:F

    .line 394
    new-instance v0, Landroid/graphics/drawable/RippleForeground$1;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/RippleForeground$1;-><init>(Landroid/graphics/drawable/RippleForeground;)V

    iput-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    .line 107
    iput-boolean p5, p0, Landroid/graphics/drawable/RippleForeground;->mForceSoftware:Z

    .line 108
    iput p3, p0, Landroid/graphics/drawable/RippleForeground;->mStartingX:F

    .line 109
    iput p4, p0, Landroid/graphics/drawable/RippleForeground;->mStartingY:F

    .line 112
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/drawable/RippleForeground;->mStartRadius:F

    .line 113
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->clampStartingPosition()V

    .line 114
    return-void
.end method

.method private greylist-max-o clampStartingPosition()V
    .registers 12

    .line 350
    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    .line 351
    .local v0, "cX":F
    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    .line 352
    .local v1, "cY":F
    iget v2, p0, Landroid/graphics/drawable/RippleForeground;->mStartingX:F

    sub-float/2addr v2, v0

    .line 353
    .local v2, "dX":F
    iget v3, p0, Landroid/graphics/drawable/RippleForeground;->mStartingY:F

    sub-float/2addr v3, v1

    .line 354
    .local v3, "dY":F
    iget v4, p0, Landroid/graphics/drawable/RippleForeground;->mTargetRadius:F

    iget v5, p0, Landroid/graphics/drawable/RippleForeground;->mStartRadius:F

    sub-float/2addr v4, v5

    .line 355
    .local v4, "r":F
    mul-float v5, v2, v2

    mul-float v6, v3, v3

    add-float/2addr v5, v6

    mul-float v6, v4, v4

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3d

    .line 357
    float-to-double v5, v3

    float-to-double v7, v2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    .line 358
    .local v5, "angle":D
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    float-to-double v9, v4

    mul-double/2addr v7, v9

    double-to-float v7, v7

    add-float/2addr v7, v0

    iput v7, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingX:F

    .line 359
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    float-to-double v9, v4

    mul-double/2addr v7, v9

    double-to-float v7, v7

    add-float/2addr v7, v1

    iput v7, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingY:F

    .line 360
    .end local v5    # "angle":D
    goto :goto_45

    .line 361
    :cond_3d
    iget v5, p0, Landroid/graphics/drawable/RippleForeground;->mStartingX:F

    iput v5, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingX:F

    .line 362
    iget v5, p0, Landroid/graphics/drawable/RippleForeground;->mStartingY:F

    iput v5, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingY:F

    .line 364
    :goto_45
    return-void
.end method

.method private greylist-max-o clearHwProps()V
    .registers 2

    .line 387
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mPropPaint:Landroid/graphics/CanvasProperty;

    .line 388
    iput-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mPropRadius:Landroid/graphics/CanvasProperty;

    .line 389
    iput-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mPropX:Landroid/graphics/CanvasProperty;

    .line 390
    iput-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mPropY:Landroid/graphics/CanvasProperty;

    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleForeground;->mUsingProperties:Z

    .line 392
    return-void
.end method

.method private greylist-max-o computeFadeOutDelay()J
    .registers 8

    .line 208
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/graphics/drawable/RippleForeground;->mEnterStartedAtMillis:J

    sub-long/2addr v0, v2

    .line 209
    .local v0, "timeSinceEnter":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_15

    const-wide/16 v4, 0xe1

    cmp-long v6, v0, v4

    if-gez v6, :cond_15

    .line 210
    sub-long/2addr v4, v0

    return-wide v4

    .line 212
    :cond_15
    return-wide v2
.end method

.method private blacklist drawHardware(Landroid/graphics/RecordingCanvas;Landroid/graphics/Paint;)V
    .registers 7
    .param p1, "c"    # Landroid/graphics/RecordingCanvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .line 168
    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleForeground;->startPending(Landroid/graphics/RecordingCanvas;)V

    .line 169
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->pruneHwFinished()V

    .line 170
    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mPropPaint:Landroid/graphics/CanvasProperty;

    if-eqz v0, :cond_19

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleForeground;->mUsingProperties:Z

    .line 172
    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mPropX:Landroid/graphics/CanvasProperty;

    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mPropY:Landroid/graphics/CanvasProperty;

    iget-object v2, p0, Landroid/graphics/drawable/RippleForeground;->mPropRadius:Landroid/graphics/CanvasProperty;

    iget-object v3, p0, Landroid/graphics/drawable/RippleForeground;->mPropPaint:Landroid/graphics/CanvasProperty;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RecordingCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    goto :goto_1f

    .line 174
    :cond_19
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleForeground;->mUsingProperties:Z

    .line 175
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RippleForeground;->drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 177
    :goto_1f
    return-void
.end method

.method private greylist-max-o drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .line 123
    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 124
    .local v0, "origAlpha":I
    int-to-float v1, v0

    iget v2, p0, Landroid/graphics/drawable/RippleForeground;->mOpacity:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 125
    .local v1, "alpha":I
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentRadius()F

    move-result v2

    .line 126
    .local v2, "radius":F
    if-lez v1, :cond_28

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_28

    .line 127
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentX()F

    move-result v3

    .line 128
    .local v3, "x":F
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentY()F

    move-result v4

    .line 129
    .local v4, "y":F
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 130
    invoke-virtual {p1, v3, v4, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 131
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 133
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_28
    return-void
.end method

.method private greylist-max-o getCurrentRadius()F
    .registers 4

    .line 324
    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mStartRadius:F

    iget v1, p0, Landroid/graphics/drawable/RippleForeground;->mTargetRadius:F

    iget v2, p0, Landroid/graphics/drawable/RippleForeground;->mTweenRadius:F

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method private greylist-max-o getCurrentX()F
    .registers 4

    .line 316
    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingX:F

    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/graphics/drawable/RippleForeground;->mTargetX:F

    iget v2, p0, Landroid/graphics/drawable/RippleForeground;->mTweenX:F

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method private greylist-max-o getCurrentY()F
    .registers 4

    .line 320
    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mClampedStartingY:F

    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/graphics/drawable/RippleForeground;->mTargetY:F

    iget v2, p0, Landroid/graphics/drawable/RippleForeground;->mTweenY:F

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method private greylist-max-o onAnimationPropertyChanged()V
    .registers 2

    .line 381
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleForeground;->mUsingProperties:Z

    if-nez v0, :cond_7

    .line 382
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleForeground;->invalidateSelf()V

    .line 384
    :cond_7
    return-void
.end method

.method private greylist-max-o pruneHwFinished()V
    .registers 3

    .line 148
    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mRunningHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 149
    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mRunningHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_10
    if-ltz v0, :cond_28

    .line 150
    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mRunningHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/animation/RenderNodeAnimator;

    invoke-virtual {v1}, Landroid/graphics/animation/RenderNodeAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_25

    .line 151
    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mRunningHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 149
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    .line 155
    .end local v0    # "i":I
    :cond_28
    return-void
.end method

.method private greylist-max-o pruneSwFinished()V
    .registers 3

    .line 158
    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 159
    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_10
    if-ltz v0, :cond_28

    .line 160
    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_25

    .line 161
    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 159
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    .line 165
    .end local v0    # "i":I
    :cond_28
    return-void
.end method

.method private greylist-max-o startHardwareEnter()V
    .registers 9

    .line 251
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleForeground;->mForceSoftware:Z

    if-eqz v0, :cond_5

    return-void

    .line 252
    :cond_5
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentX()F

    move-result v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mPropX:Landroid/graphics/CanvasProperty;

    .line 253
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentY()F

    move-result v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mPropY:Landroid/graphics/CanvasProperty;

    .line 254
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->getCurrentRadius()F

    move-result v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mPropRadius:Landroid/graphics/CanvasProperty;

    .line 255
    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mOwner:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->updateRipplePaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 256
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mPropPaint:Landroid/graphics/CanvasProperty;

    .line 258
    new-instance v1, Landroid/graphics/animation/RenderNodeAnimator;

    iget-object v2, p0, Landroid/graphics/drawable/RippleForeground;->mPropRadius:Landroid/graphics/CanvasProperty;

    iget v3, p0, Landroid/graphics/drawable/RippleForeground;->mTargetRadius:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/animation/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 259
    .local v1, "radius":Landroid/graphics/animation/RenderNodeAnimator;
    const-wide/16 v2, 0xe1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/animation/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 260
    sget-object v4, Landroid/graphics/drawable/RippleForeground;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v4}, Landroid/graphics/animation/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 261
    iget-object v4, p0, Landroid/graphics/drawable/RippleForeground;->mPendingHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    new-instance v4, Landroid/graphics/animation/RenderNodeAnimator;

    iget-object v5, p0, Landroid/graphics/drawable/RippleForeground;->mPropX:Landroid/graphics/CanvasProperty;

    iget v6, p0, Landroid/graphics/drawable/RippleForeground;->mTargetX:F

    invoke-direct {v4, v5, v6}, Landroid/graphics/animation/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 264
    .local v4, "x":Landroid/graphics/animation/RenderNodeAnimator;
    invoke-virtual {v4, v2, v3}, Landroid/graphics/animation/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 265
    sget-object v5, Landroid/graphics/drawable/RippleForeground;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v5}, Landroid/graphics/animation/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 266
    iget-object v5, p0, Landroid/graphics/drawable/RippleForeground;->mPendingHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v5, Landroid/graphics/animation/RenderNodeAnimator;

    iget-object v6, p0, Landroid/graphics/drawable/RippleForeground;->mPropY:Landroid/graphics/CanvasProperty;

    iget v7, p0, Landroid/graphics/drawable/RippleForeground;->mTargetY:F

    invoke-direct {v5, v6, v7}, Landroid/graphics/animation/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 269
    .local v5, "y":Landroid/graphics/animation/RenderNodeAnimator;
    invoke-virtual {v5, v2, v3}, Landroid/graphics/animation/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 270
    sget-object v2, Landroid/graphics/drawable/RippleForeground;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v5, v2}, Landroid/graphics/animation/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 271
    iget-object v2, p0, Landroid/graphics/drawable/RippleForeground;->mPendingHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    new-instance v2, Landroid/graphics/animation/RenderNodeAnimator;

    iget-object v3, p0, Landroid/graphics/drawable/RippleForeground;->mPropPaint:Landroid/graphics/CanvasProperty;

    .line 274
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x1

    invoke-direct {v2, v3, v7, v6}, Landroid/graphics/animation/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .line 275
    .local v2, "opacity":Landroid/graphics/animation/RenderNodeAnimator;
    const-wide/16 v6, 0x4b

    invoke-virtual {v2, v6, v7}, Landroid/graphics/animation/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 276
    sget-object v3, Landroid/graphics/drawable/RippleForeground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/graphics/animation/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 277
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/animation/RenderNodeAnimator;->setStartValue(F)V

    .line 278
    iget-object v3, p0, Landroid/graphics/drawable/RippleForeground;->mPendingHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleForeground;->invalidateSelf()V

    .line 281
    return-void
.end method

.method private greylist-max-o startHardwareExit()V
    .registers 5

    .line 285
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleForeground;->mForceSoftware:Z

    if-nez v0, :cond_3f

    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mPropPaint:Landroid/graphics/CanvasProperty;

    if-nez v0, :cond_9

    goto :goto_3f

    .line 287
    :cond_9
    new-instance v0, Landroid/graphics/animation/RenderNodeAnimator;

    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mPropPaint:Landroid/graphics/CanvasProperty;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/animation/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .line 289
    .local v0, "opacity":Landroid/graphics/animation/RenderNodeAnimator;
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/graphics/animation/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    .line 290
    sget-object v1, Landroid/graphics/drawable/RippleForeground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/graphics/animation/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 291
    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/graphics/animation/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 292
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->computeFadeOutDelay()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/animation/RenderNodeAnimator;->setStartDelay(J)V

    .line 293
    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mOwner:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/RippleDrawable;->updateRipplePaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/animation/RenderNodeAnimator;->setStartValue(F)V

    .line 294
    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mPendingHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleForeground;->invalidateSelf()V

    .line 296
    return-void

    .line 285
    .end local v0    # "opacity":Landroid/graphics/animation/RenderNodeAnimator;
    :cond_3f
    :goto_3f
    return-void
.end method

.method private blacklist startPending(Landroid/graphics/RecordingCanvas;)V
    .registers 5
    .param p1, "c"    # Landroid/graphics/RecordingCanvas;

    .line 136
    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mPendingHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mPendingHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 138
    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mPendingHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/animation/RenderNodeAnimator;

    .line 139
    .local v1, "animator":Landroid/graphics/animation/RenderNodeAnimator;
    invoke-virtual {v1, p1}, Landroid/graphics/animation/RenderNodeAnimator;->setTarget(Landroid/graphics/RecordingCanvas;)V

    .line 140
    invoke-virtual {v1}, Landroid/graphics/animation/RenderNodeAnimator;->start()V

    .line 141
    iget-object v2, p0, Landroid/graphics/drawable/RippleForeground;->mRunningHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .end local v1    # "animator":Landroid/graphics/animation/RenderNodeAnimator;
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 143
    .end local v0    # "i":I
    :cond_27
    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mPendingHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 145
    :cond_2c
    return-void
.end method

.method private greylist-max-o startSoftwareEnter()V
    .registers 9

    .line 216
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 217
    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 219
    .end local v0    # "i":I
    :cond_17
    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 221
    sget-object v0, Landroid/graphics/drawable/RippleForeground;->TWEEN_RADIUS:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 222
    .local v0, "tweenRadius":Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0xe1

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 223
    sget-object v2, Landroid/graphics/drawable/RippleForeground;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 224
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 225
    iget-object v2, p0, Landroid/graphics/drawable/RippleForeground;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v2, Landroid/graphics/drawable/RippleForeground;->TWEEN_ORIGIN:Landroid/util/FloatProperty;

    new-array v7, v1, [F

    aput v4, v7, v3

    invoke-static {p0, v2, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 228
    .local v2, "tweenOrigin":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 229
    sget-object v5, Landroid/graphics/drawable/RippleForeground;->DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 230
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 231
    iget-object v5, p0, Landroid/graphics/drawable/RippleForeground;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v5, Landroid/graphics/drawable/RippleForeground;->OPACITY:Landroid/util/FloatProperty;

    new-array v1, v1, [F

    aput v4, v1, v3

    invoke-static {p0, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 234
    .local v1, "opacity":Landroid/animation/ObjectAnimator;
    const-wide/16 v3, 0x4b

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 235
    sget-object v3, Landroid/graphics/drawable/RippleForeground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 236
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 237
    iget-object v3, p0, Landroid/graphics/drawable/RippleForeground;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    return-void
.end method

.method private greylist-max-o startSoftwareExit()V
    .registers 5

    .line 241
    sget-object v0, Landroid/graphics/drawable/RippleForeground;->OPACITY:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 242
    .local v0, "opacity":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 243
    sget-object v1, Landroid/graphics/drawable/RippleForeground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 244
    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 245
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->computeFadeOutDelay()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 246
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 247
    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    return-void
.end method

.method private greylist-max-o switchToUiThreadAnimation()V
    .registers 4

    .line 408
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mRunningHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 409
    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mRunningHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 410
    .local v1, "animator":Landroid/animation/Animator;
    iget-object v2, p0, Landroid/graphics/drawable/RippleForeground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 411
    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 408
    .end local v1    # "animator":Landroid/animation/Animator;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 413
    .end local v0    # "i":I
    :cond_1c
    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mRunningHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 414
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->clearHwProps()V

    .line 415
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleForeground;->invalidateSelf()V

    .line 416
    return-void
.end method


# virtual methods
.method public greylist-max-o draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 5
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .line 335
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleForeground;->mForceSoftware:Z

    if-nez v0, :cond_a

    instance-of v0, p1, Landroid/graphics/RecordingCanvas;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 337
    .local v0, "hasDisplayListCanvas":Z
    :goto_b
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->pruneSwFinished()V

    .line 338
    if-eqz v0, :cond_17

    .line 339
    move-object v1, p1

    check-cast v1, Landroid/graphics/RecordingCanvas;

    .line 340
    .local v1, "hw":Landroid/graphics/RecordingCanvas;
    invoke-direct {p0, v1, p2}, Landroid/graphics/drawable/RippleForeground;->drawHardware(Landroid/graphics/RecordingCanvas;Landroid/graphics/Paint;)V

    .line 341
    .end local v1    # "hw":Landroid/graphics/RecordingCanvas;
    goto :goto_1a

    .line 342
    :cond_17
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RippleForeground;->drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 344
    :goto_1a
    return-void
.end method

.method public greylist-max-o end()V
    .registers 3

    .line 370
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 371
    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 373
    .end local v0    # "i":I
    :cond_17
    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mRunningSwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 374
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1d
    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mRunningHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 375
    iget-object v1, p0, Landroid/graphics/drawable/RippleForeground;->mRunningHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/animation/RenderNodeAnimator;

    invoke-virtual {v1}, Landroid/graphics/animation/RenderNodeAnimator;->end()V

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 377
    .end local v0    # "i":I
    :cond_33
    iget-object v0, p0, Landroid/graphics/drawable/RippleForeground;->mRunningHwAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 378
    return-void
.end method

.method public final greylist-max-o enter()V
    .registers 3

    .line 302
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/RippleForeground;->mEnterStartedAtMillis:J

    .line 303
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->startSoftwareEnter()V

    .line 304
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->startHardwareEnter()V

    .line 305
    return-void
.end method

.method public final greylist-max-o exit()V
    .registers 1

    .line 311
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->startSoftwareExit()V

    .line 312
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->startHardwareExit()V

    .line 313
    return-void
.end method

.method public greylist-max-o getBounds(Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 183
    iget v0, p0, Landroid/graphics/drawable/RippleForeground;->mTargetX:F

    float-to-int v0, v0

    .line 184
    .local v0, "outerX":I
    iget v1, p0, Landroid/graphics/drawable/RippleForeground;->mTargetY:F

    float-to-int v1, v1

    .line 185
    .local v1, "outerY":I
    iget v2, p0, Landroid/graphics/drawable/RippleForeground;->mTargetRadius:F

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    .line 186
    .local v2, "r":I
    sub-int v3, v0, v2

    sub-int v4, v1, v2

    add-int v5, v0, v2

    add-int v6, v1, v2

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 187
    return-void
.end method

.method public greylist-max-o hasFinishedExit()Z
    .registers 2

    .line 204
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleForeground;->mHasFinishedExit:Z

    return v0
.end method

.method public greylist-max-o move(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 194
    iput p1, p0, Landroid/graphics/drawable/RippleForeground;->mStartingX:F

    .line 195
    iput p2, p0, Landroid/graphics/drawable/RippleForeground;->mStartingY:F

    .line 197
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->clampStartingPosition()V

    .line 198
    return-void
.end method

.method protected greylist-max-o onTargetRadiusChanged(F)V
    .registers 2
    .param p1, "targetRadius"    # F

    .line 118
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->clampStartingPosition()V

    .line 119
    invoke-direct {p0}, Landroid/graphics/drawable/RippleForeground;->switchToUiThreadAnimation()V

    .line 120
    return-void
.end method
