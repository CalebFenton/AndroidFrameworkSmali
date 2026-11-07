.class public abstract Lcom/android/internal/widget/AutoScrollHelper;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;,
        Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;,
        Lcom/android/internal/widget/AutoScrollHelper$AbsListViewAutoScroller;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_ACTIVATION_DELAY:I

.field private static final greylist-max-o DEFAULT_EDGE_TYPE:I = 0x1

.field private static final greylist-max-o DEFAULT_MAXIMUM_EDGE:F = 3.4028235E38f

.field private static final greylist-max-o DEFAULT_MAXIMUM_VELOCITY_DIPS:I = 0x627

.field private static final greylist-max-o DEFAULT_MINIMUM_VELOCITY_DIPS:I = 0x13b

.field private static final greylist-max-o DEFAULT_RAMP_DOWN_DURATION:I = 0x1f4

.field private static final greylist-max-o DEFAULT_RAMP_UP_DURATION:I = 0x1f4

.field private static final greylist-max-o DEFAULT_RELATIVE_EDGE:F = 0.2f

.field private static final greylist-max-o DEFAULT_RELATIVE_VELOCITY:F = 1.0f

.field public static final greylist-max-o EDGE_TYPE_INSIDE:I = 0x0

.field public static final greylist-max-o EDGE_TYPE_INSIDE_EXTEND:I = 0x1

.field public static final greylist-max-o EDGE_TYPE_OUTSIDE:I = 0x2

.field private static final greylist-max-o HORIZONTAL:I = 0x0

.field public static final greylist-max-o NO_MAX:F = 3.4028235E38f

.field public static final greylist-max-o NO_MIN:F = 0.0f

.field public static final greylist-max-o RELATIVE_UNSPECIFIED:F = 0.0f

.field private static final greylist-max-o VERTICAL:I = 0x1


# instance fields
.field private greylist-max-o mActivationDelay:I

.field private greylist-max-o mAlreadyDelayed:Z

.field private greylist-max-o mAnimating:Z

.field private final greylist-max-o mEdgeInterpolator:Landroid/view/animation/Interpolator;

.field private greylist-max-o mEdgeType:I

.field private greylist-max-o mEnabled:Z

.field private greylist-max-o mExclusive:Z

.field private greylist-max-o mMaximumEdges:[F

.field private greylist-max-o mMaximumVelocity:[F

.field private greylist-max-o mMinimumVelocity:[F

.field private greylist-max-o mNeedsCancel:Z

.field private greylist-max-o mNeedsReset:Z

.field private greylist-max-o mRelativeEdges:[F

.field private greylist-max-o mRelativeVelocity:[F

.field private greylist-max-o mRunnable:Ljava/lang/Runnable;

.field private final greylist-max-o mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

.field private final greylist-max-o mTarget:Landroid/view/View;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAnimating(Lcom/android/internal/widget/AutoScrollHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNeedsCancel(Lcom/android/internal/widget/AutoScrollHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsCancel:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNeedsReset(Lcom/android/internal/widget/AutoScrollHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsReset:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScroller(Lcom/android/internal/widget/AutoScrollHelper;)Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTarget(Lcom/android/internal/widget/AutoScrollHelper;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAnimating(Lcom/android/internal/widget/AutoScrollHelper;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNeedsCancel(Lcom/android/internal/widget/AutoScrollHelper;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsCancel:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNeedsReset(Lcom/android/internal/widget/AutoScrollHelper;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsReset:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelTargetTouch(Lcom/android/internal/widget/AutoScrollHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/AutoScrollHelper;->cancelTargetTouch()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshouldAnimate(Lcom/android/internal/widget/AutoScrollHelper;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smconstrain(FFF)F
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/AutoScrollHelper;->constrain(FFF)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smconstrain(III)I
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/AutoScrollHelper;->constrain(III)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 193
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/android/internal/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/view/View;)V
    .registers 7
    .param p1, "target"    # Landroid/view/View;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    invoke-direct {v0}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    .line 139
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    .line 148
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_7e

    iput-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeEdges:[F

    .line 151
    new-array v1, v0, [F

    fill-array-data v1, :array_86

    iput-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumEdges:[F

    .line 160
    new-array v1, v0, [F

    fill-array-data v1, :array_8e

    iput-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeVelocity:[F

    .line 163
    new-array v1, v0, [F

    fill-array-data v1, :array_96

    iput-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMinimumVelocity:[F

    .line 166
    new-array v0, v0, [F

    fill-array-data v0, :array_9e

    iput-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumVelocity:[F

    .line 209
    iput-object p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    .line 211
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 212
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const v1, 0x44c4e000    # 1575.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v2, v1

    float-to-int v2, v2

    .line 213
    .local v2, "maxVelocity":I
    const v3, 0x439d8000    # 315.0f

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    float-to-int v1, v4

    .line 214
    .local v1, "minVelocity":I
    int-to-float v3, v2

    int-to-float v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/widget/AutoScrollHelper;->setMaximumVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;

    .line 215
    int-to-float v3, v1

    int-to-float v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/widget/AutoScrollHelper;->setMinimumVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;

    .line 217
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/AutoScrollHelper;->setEdgeType(I)Lcom/android/internal/widget/AutoScrollHelper;

    .line 218
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {p0, v3, v3}, Lcom/android/internal/widget/AutoScrollHelper;->setMaximumEdges(FF)Lcom/android/internal/widget/AutoScrollHelper;

    .line 219
    const v3, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v3, v3}, Lcom/android/internal/widget/AutoScrollHelper;->setRelativeEdges(FF)Lcom/android/internal/widget/AutoScrollHelper;

    .line 220
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v3, v3}, Lcom/android/internal/widget/AutoScrollHelper;->setRelativeVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;

    .line 221
    sget v3, Lcom/android/internal/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/AutoScrollHelper;->setActivationDelay(I)Lcom/android/internal/widget/AutoScrollHelper;

    .line 222
    const/16 v3, 0x1f4

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/AutoScrollHelper;->setRampUpDuration(I)Lcom/android/internal/widget/AutoScrollHelper;

    .line 223
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/AutoScrollHelper;->setRampDownDuration(I)Lcom/android/internal/widget/AutoScrollHelper;

    .line 224
    return-void

    :array_7e
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_86
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    :array_8e
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_96
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_9e
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method private greylist-max-o cancelTargetTouch()V
    .registers 9

    .line 676
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 677
    .local v0, "eventTime":J
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 679
    .local v2, "cancel":Landroid/view/MotionEvent;
    iget-object v3, p0, Lcom/android/internal/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 680
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 681
    return-void
.end method

.method private greylist-max-o computeTargetVelocity(IFFF)F
    .registers 13
    .param p1, "direction"    # I
    .param p2, "coordinate"    # F
    .param p3, "srcSize"    # F
    .param p4, "dstSize"    # F

    .line 538
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeEdges:[F

    aget v0, v0, p1

    .line 539
    .local v0, "relativeEdge":F
    iget-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumEdges:[F

    aget v1, v1, p1

    .line 540
    .local v1, "maximumEdge":F
    invoke-direct {p0, v0, p3, v1, p2}, Lcom/android/internal/widget/AutoScrollHelper;->getEdgeValue(FFFF)F

    move-result v2

    .line 541
    .local v2, "value":F
    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-nez v4, :cond_12

    .line 543
    return v3

    .line 546
    :cond_12
    iget-object v4, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeVelocity:[F

    aget v4, v4, p1

    .line 547
    .local v4, "relativeVelocity":F
    iget-object v5, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMinimumVelocity:[F

    aget v5, v5, p1

    .line 548
    .local v5, "minimumVelocity":F
    iget-object v6, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumVelocity:[F

    aget v6, v6, p1

    .line 549
    .local v6, "maximumVelocity":F
    mul-float v7, v4, p4

    .line 554
    .local v7, "targetVelocity":F
    cmpl-float v3, v2, v3

    if-lez v3, :cond_2b

    .line 555
    mul-float v3, v2, v7

    invoke-static {v3, v5, v6}, Lcom/android/internal/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v3

    return v3

    .line 557
    :cond_2b
    neg-float v3, v2

    mul-float/2addr v3, v7

    invoke-static {v3, v5, v6}, Lcom/android/internal/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v3

    neg-float v3, v3

    return v3
.end method

.method private static greylist-max-o constrain(FFF)F
    .registers 4
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 662
    cmpl-float v0, p0, p2

    if-lez v0, :cond_5

    .line 663
    return p2

    .line 664
    :cond_5
    cmpg-float v0, p0, p1

    if-gez v0, :cond_a

    .line 665
    return p1

    .line 667
    :cond_a
    return p0
.end method

.method private static greylist-max-o constrain(III)I
    .registers 3
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 652
    if-le p0, p2, :cond_3

    .line 653
    return p2

    .line 654
    :cond_3
    if-ge p0, p1, :cond_6

    .line 655
    return p1

    .line 657
    :cond_6
    return p0
.end method

.method private greylist-max-o constrainEdgeValue(FF)F
    .registers 7
    .param p1, "current"    # F
    .param p2, "leading"    # F

    .line 623
    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_6

    .line 624
    return v0

    .line 627
    :cond_6
    iget v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEdgeType:I

    packed-switch v1, :pswitch_data_2e

    goto :goto_2c

    .line 641
    :pswitch_c
    cmpg-float v1, p1, v0

    if-gez v1, :cond_2c

    .line 643
    neg-float v0, p2

    div-float v0, p1, v0

    return v0

    .line 630
    :pswitch_14
    cmpg-float v1, p1, p2

    if-gez v1, :cond_2c

    .line 631
    cmpl-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v1, :cond_22

    .line 633
    div-float v0, p1, p2

    sub-float/2addr v2, v0

    return v2

    .line 634
    :cond_22
    iget-boolean v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz v1, :cond_2c

    iget v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEdgeType:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2c

    .line 636
    return v2

    .line 648
    :cond_2c
    :goto_2c
    return v0

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_14
        :pswitch_14
        :pswitch_c
    .end packed-switch
.end method

.method private greylist-max-o getEdgeValue(FFFF)F
    .registers 12
    .param p1, "relativeValue"    # F
    .param p2, "size"    # F
    .param p3, "maxValue"    # F
    .param p4, "current"    # F

    .line 606
    mul-float v0, p1, p2

    const/4 v1, 0x0

    invoke-static {v0, v1, p3}, Lcom/android/internal/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v0

    .line 607
    .local v0, "edgeSize":F
    invoke-direct {p0, p4, v0}, Lcom/android/internal/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result v2

    .line 608
    .local v2, "valueLeading":F
    sub-float v3, p2, p4

    invoke-direct {p0, v3, v0}, Lcom/android/internal/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result v3

    .line 609
    .local v3, "valueTrailing":F
    sub-float v4, v3, v2

    .line 611
    .local v4, "value":F
    cmpg-float v5, v4, v1

    if-gez v5, :cond_20

    .line 612
    iget-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    neg-float v5, v4

    invoke-interface {v1, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    neg-float v1, v1

    .local v1, "interpolated":F
    goto :goto_2a

    .line 613
    .end local v1    # "interpolated":F
    :cond_20
    cmpl-float v5, v4, v1

    if-lez v5, :cond_33

    .line 614
    iget-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 619
    .restart local v1    # "interpolated":F
    :goto_2a
    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v1, v5, v6}, Lcom/android/internal/widget/AutoScrollHelper;->constrain(FFF)F

    move-result v5

    return v5

    .line 616
    .end local v1    # "interpolated":F
    :cond_33
    return v1
.end method

.method private greylist-max-o requestStop()V
    .registers 2

    .line 527
    iget-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsReset:Z

    if-eqz v0, :cond_8

    .line 530
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    goto :goto_d

    .line 532
    :cond_8
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->requestStop()V

    .line 534
    :goto_d
    return-void
.end method

.method private greylist-max-o shouldAnimate()Z
    .registers 5

    .line 491
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    .line 492
    .local v0, "scroller":Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;
    invoke-virtual {v0}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->getVerticalDirection()I

    move-result v1

    .line 493
    .local v1, "verticalDirection":I
    invoke-virtual {v0}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->getHorizontalDirection()I

    move-result v2

    .line 495
    .local v2, "horizontalDirection":I
    if-eqz v1, :cond_12

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AutoScrollHelper;->canTargetScrollVertically(I)Z

    move-result v3

    if-nez v3, :cond_1a

    :cond_12
    if-eqz v2, :cond_1c

    .line 496
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/AutoScrollHelper;->canTargetScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    :cond_1a
    const/4 v3, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v3, 0x0

    .line 495
    :goto_1d
    return v3
.end method

.method private greylist-max-o startAnimating()V
    .registers 6

    .line 503
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_c

    .line 504
    new-instance v0, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Lcom/android/internal/widget/AutoScrollHelper;Lcom/android/internal/widget/AutoScrollHelper-IA;)V

    iput-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    .line 507
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    .line 508
    iput-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsReset:Z

    .line 510
    iget-boolean v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    if-nez v1, :cond_24

    iget v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mActivationDelay:I

    if-lez v1, :cond_24

    .line 511
    iget-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    iget v3, p0, Lcom/android/internal/widget/AutoScrollHelper;->mActivationDelay:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_29

    .line 513
    :cond_24
    iget-object v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 518
    :goto_29
    iput-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    .line 519
    return-void
.end method


# virtual methods
.method public abstract greylist-max-o canTargetScrollHorizontally(I)Z
.end method

.method public abstract greylist-max-o canTargetScrollVertically(I)Z
.end method

.method public greylist-max-o isEnabled()Z
    .registers 2

    .line 246
    iget-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEnabled:Z

    return v0
.end method

.method public greylist-max-o isExclusive()Z
    .registers 2

    .line 275
    iget-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mExclusive:Z

    return v0
.end method

.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 455
    iget-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 456
    return v1

    .line 459
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 460
    .local v0, "action":I
    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_5e

    goto :goto_53

    .line 480
    :pswitch_f
    invoke-direct {p0}, Lcom/android/internal/widget/AutoScrollHelper;->requestStop()V

    goto :goto_53

    .line 462
    :pswitch_13
    iput-boolean v2, p0, Lcom/android/internal/widget/AutoScrollHelper;->mNeedsCancel:Z

    .line 463
    iput-boolean v1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    .line 466
    :pswitch_17
    nop

    .line 467
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/internal/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    .line 466
    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/internal/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v3

    .line 468
    .local v3, "xTargetVelocity":F
    nop

    .line 469
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/internal/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    .line 468
    invoke-direct {p0, v2, v4, v5, v6}, Lcom/android/internal/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v4

    .line 470
    .local v4, "yTargetVelocity":F
    iget-object v5, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v5, v3, v4}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->setTargetVelocity(FF)V

    .line 474
    iget-boolean v5, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    if-nez v5, :cond_53

    invoke-direct {p0}, Lcom/android/internal/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 475
    invoke-direct {p0}, Lcom/android/internal/widget/AutoScrollHelper;->startAnimating()V

    .line 484
    .end local v3    # "xTargetVelocity":F
    .end local v4    # "yTargetVelocity":F
    :cond_53
    :goto_53
    iget-boolean v3, p0, Lcom/android/internal/widget/AutoScrollHelper;->mExclusive:Z

    if-eqz v3, :cond_5c

    iget-boolean v3, p0, Lcom/android/internal/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz v3, :cond_5c

    move v1, v2

    :cond_5c
    return v1

    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_13
        :pswitch_f
        :pswitch_17
        :pswitch_f
    .end packed-switch
.end method

.method public abstract greylist-max-o scrollTargetBy(II)V
.end method

.method public greylist-max-o setActivationDelay(I)Lcom/android/internal/widget/AutoScrollHelper;
    .registers 2
    .param p1, "delayMillis"    # I

    .line 411
    iput p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mActivationDelay:I

    .line 412
    return-object p0
.end method

.method public greylist-max-o setEdgeType(I)Lcom/android/internal/widget/AutoScrollHelper;
    .registers 2
    .param p1, "type"    # I

    .line 353
    iput p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEdgeType:I

    .line 354
    return-object p0
.end method

.method public greylist-max-o setEnabled(Z)Lcom/android/internal/widget/AutoScrollHelper;
    .registers 3
    .param p1, "enabled"    # Z

    .line 234
    iget-boolean v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEnabled:Z

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    .line 235
    invoke-direct {p0}, Lcom/android/internal/widget/AutoScrollHelper;->requestStop()V

    .line 238
    :cond_9
    iput-boolean p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mEnabled:Z

    .line 239
    return-object p0
.end method

.method public greylist-max-o setExclusive(Z)Lcom/android/internal/widget/AutoScrollHelper;
    .registers 2
    .param p1, "exclusive"    # Z

    .line 262
    iput-boolean p1, p0, Lcom/android/internal/widget/AutoScrollHelper;->mExclusive:Z

    .line 263
    return-object p0
.end method

.method public greylist-max-o setMaximumEdges(FF)Lcom/android/internal/widget/AutoScrollHelper;
    .registers 5
    .param p1, "horizontalMax"    # F
    .param p2, "verticalMax"    # F

    .line 394
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumEdges:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 395
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumEdges:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 396
    return-object p0
.end method

.method public greylist-max-o setMaximumVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;
    .registers 7
    .param p1, "horizontalMax"    # F
    .param p2, "verticalMax"    # F

    .line 293
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumVelocity:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v2, p1, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 294
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMaximumVelocity:[F

    const/4 v2, 0x1

    div-float v1, p2, v1

    aput v1, v0, v2

    .line 295
    return-object p0
.end method

.method public greylist-max-o setMinimumVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;
    .registers 7
    .param p1, "horizontalMin"    # F
    .param p2, "verticalMin"    # F

    .line 311
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMinimumVelocity:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v2, p1, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 312
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mMinimumVelocity:[F

    const/4 v2, 0x1

    div-float v1, p2, v1

    aput v1, v0, v2

    .line 313
    return-object p0
.end method

.method public greylist-max-o setRampDownDuration(I)Lcom/android/internal/widget/AutoScrollHelper;
    .registers 3
    .param p1, "durationMillis"    # I

    .line 441
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->setRampDownDuration(I)V

    .line 442
    return-object p0
.end method

.method public greylist-max-o setRampUpDuration(I)Lcom/android/internal/widget/AutoScrollHelper;
    .registers 3
    .param p1, "durationMillis"    # I

    .line 426
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mScroller:Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/AutoScrollHelper$ClampedScroller;->setRampUpDuration(I)V

    .line 427
    return-object p0
.end method

.method public greylist-max-o setRelativeEdges(FF)Lcom/android/internal/widget/AutoScrollHelper;
    .registers 5
    .param p1, "horizontal"    # F
    .param p2, "vertical"    # F

    .line 372
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeEdges:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 373
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeEdges:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 374
    return-object p0
.end method

.method public greylist-max-o setRelativeVelocity(FF)Lcom/android/internal/widget/AutoScrollHelper;
    .registers 7
    .param p1, "horizontal"    # F
    .param p2, "vertical"    # F

    .line 332
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeVelocity:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v2, p1, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 333
    iget-object v0, p0, Lcom/android/internal/widget/AutoScrollHelper;->mRelativeVelocity:[F

    const/4 v2, 0x1

    div-float v1, p2, v1

    aput v1, v0, v2

    .line 334
    return-object p0
.end method
