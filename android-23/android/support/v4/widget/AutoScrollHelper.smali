.class public abstract Landroid/support/v4/widget/AutoScrollHelper;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;,
        Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACTIVATION_DELAY:I

.field private static final DEFAULT_EDGE_TYPE:I = 0x1

.field private static final DEFAULT_MAXIMUM_EDGE:F = 3.4028235E38f

.field private static final DEFAULT_MAXIMUM_VELOCITY_DIPS:I = 0x627

.field private static final DEFAULT_MINIMUM_VELOCITY_DIPS:I = 0x13b

.field private static final DEFAULT_RAMP_DOWN_DURATION:I = 0x1f4

.field private static final DEFAULT_RAMP_UP_DURATION:I = 0x1f4

.field private static final DEFAULT_RELATIVE_EDGE:F = 0.2f

.field private static final DEFAULT_RELATIVE_VELOCITY:F = 1.0f

.field public static final EDGE_TYPE_INSIDE:I = 0x0

.field public static final EDGE_TYPE_INSIDE_EXTEND:I = 0x1

.field public static final EDGE_TYPE_OUTSIDE:I = 0x2

.field private static final HORIZONTAL:I = 0x0

.field public static final NO_MAX:F = 3.4028235E38f

.field public static final NO_MIN:F = 0.0f

.field public static final RELATIVE_UNSPECIFIED:F = 0.0f

.field private static final VERTICAL:I = 0x1


# instance fields
.field private mActivationDelay:I

.field private mAlreadyDelayed:Z

.field private mAnimating:Z

.field private final mEdgeInterpolator:Landroid/view/animation/Interpolator;

.field private mEdgeType:I

.field private mEnabled:Z

.field private mExclusive:Z

.field private mMaximumEdges:[F

.field private mMaximumVelocity:[F

.field private mMinimumVelocity:[F

.field private mNeedsCancel:Z

.field private mNeedsReset:Z

.field private mRelativeEdges:[F

.field private mRelativeVelocity:[F

.field private mRunnable:Ljava/lang/Runnable;

.field private final mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

.field private final mTarget:Landroid/view/View;


# direct methods
.method static synthetic -get0(Landroid/support/v4/widget/AutoScrollHelper;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/support/v4/widget/AutoScrollHelper;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsCancel:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/support/v4/widget/AutoScrollHelper;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/support/v4/widget/AutoScrollHelper;)Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/support/v4/widget/AutoScrollHelper;)Landroid/view/View;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/support/v4/widget/AutoScrollHelper;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/support/v4/widget/AutoScrollHelper;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsCancel:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/support/v4/widget/AutoScrollHelper;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/support/v4/widget/AutoScrollHelper;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->shouldAnimate()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(III)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(III)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Landroid/support/v4/widget/AutoScrollHelper;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->cancelTargetTouch()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 194
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    #@3
    move-result v0

    #@4
    sput v0, Landroid/support/v4/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    #@6
    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 9
    .param p1, "target"    # Landroid/view/View;

    #@0
    .prologue
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    #@3
    const/high16 v7, 0x3f800000    # 1.0f

    #@5
    const/high16 v6, 0x3f000000    # 0.5f

    #@7
    const v5, 0x3e4ccccd    # 0.2f

    #@a
    const/4 v4, 0x2

    #@b
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@e
    .line 137
    new-instance v3, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    #@10
    invoke-direct {v3}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;-><init>()V

    #@13
    iput-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    #@15
    .line 140
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    #@17
    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    #@1a
    iput-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    #@1c
    .line 149
    new-array v3, v4, [F

    #@1e
    fill-array-data v3, :array_0

    #@21
    iput-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    #@23
    .line 152
    new-array v3, v4, [F

    #@25
    fill-array-data v3, :array_1

    #@28
    iput-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    #@2a
    .line 161
    new-array v3, v4, [F

    #@2c
    fill-array-data v3, :array_2

    #@2f
    iput-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    #@31
    .line 164
    new-array v3, v4, [F

    #@33
    fill-array-data v3, :array_3

    #@36
    iput-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    #@38
    .line 167
    new-array v3, v4, [F

    #@3a
    fill-array-data v3, :array_4

    #@3d
    iput-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    #@3f
    .line 210
    iput-object p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    #@41
    .line 212
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@48
    move-result-object v1

    #@49
    .line 213
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    #@4b
    const v4, 0x44c4e000    # 1575.0f

    #@4e
    mul-float/2addr v3, v4

    #@4f
    add-float/2addr v3, v6

    #@50
    float-to-int v0, v3

    #@51
    .line 214
    .local v0, "maxVelocity":I
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    #@53
    const v4, 0x439d8000    # 315.0f

    #@56
    mul-float/2addr v3, v4

    #@57
    add-float/2addr v3, v6

    #@58
    float-to-int v2, v3

    #@59
    .line 215
    .local v2, "minVelocity":I
    int-to-float v3, v0

    #@5a
    int-to-float v4, v0

    #@5b
    invoke-virtual {p0, v3, v4}, Landroid/support/v4/widget/AutoScrollHelper;->setMaximumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;

    #@5e
    .line 216
    int-to-float v3, v2

    #@5f
    int-to-float v4, v2

    #@60
    invoke-virtual {p0, v3, v4}, Landroid/support/v4/widget/AutoScrollHelper;->setMinimumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;

    #@63
    .line 218
    const/4 v3, 0x1

    #@64
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/AutoScrollHelper;->setEdgeType(I)Landroid/support/v4/widget/AutoScrollHelper;

    #@67
    .line 219
    invoke-virtual {p0, v8, v8}, Landroid/support/v4/widget/AutoScrollHelper;->setMaximumEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;

    #@6a
    .line 220
    invoke-virtual {p0, v5, v5}, Landroid/support/v4/widget/AutoScrollHelper;->setRelativeEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;

    #@6d
    .line 221
    invoke-virtual {p0, v7, v7}, Landroid/support/v4/widget/AutoScrollHelper;->setRelativeVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;

    #@70
    .line 222
    sget v3, Landroid/support/v4/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    #@72
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/AutoScrollHelper;->setActivationDelay(I)Landroid/support/v4/widget/AutoScrollHelper;

    #@75
    .line 223
    const/16 v3, 0x1f4

    #@77
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/AutoScrollHelper;->setRampUpDuration(I)Landroid/support/v4/widget/AutoScrollHelper;

    #@7a
    .line 224
    const/16 v3, 0x1f4

    #@7c
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/AutoScrollHelper;->setRampDownDuration(I)Landroid/support/v4/widget/AutoScrollHelper;

    #@7f
    .line 209
    return-void

    #@80
    .line 149
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    #@88
    .line 152
    :array_1
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    #@90
    .line 161
    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    #@98
    .line 164
    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    #@a0
    .line 167
    :array_4
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method private cancelTargetTouch()V
    .locals 9

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 677
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@4
    move-result-wide v0

    #@5
    .line 679
    .local v0, "eventTime":J
    const/4 v4, 0x3

    #@6
    const/4 v7, 0x0

    #@7
    move-wide v2, v0

    #@8
    move v6, v5

    #@9
    .line 678
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@c
    move-result-object v8

    #@d
    .line 680
    .local v8, "cancel":Landroid/view/MotionEvent;
    iget-object v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    #@f
    invoke-virtual {v2, v8}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@12
    .line 681
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    #@15
    .line 676
    return-void
.end method

.method private computeTargetVelocity(IFFF)F
    .locals 9
    .param p1, "direction"    # I
    .param p2, "coordinate"    # F
    .param p3, "srcSize"    # F
    .param p4, "dstSize"    # F

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 539
    iget-object v7, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    #@3
    aget v3, v7, p1

    #@5
    .line 540
    .local v3, "relativeEdge":F
    iget-object v7, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    #@7
    aget v0, v7, p1

    #@9
    .line 541
    .local v0, "maximumEdge":F
    invoke-direct {p0, v3, p3, v0, p2}, Landroid/support/v4/widget/AutoScrollHelper;->getEdgeValue(FFFF)F

    #@c
    move-result v6

    #@d
    .line 542
    .local v6, "value":F
    cmpl-float v7, v6, v8

    #@f
    if-nez v7, :cond_0

    #@11
    .line 544
    return v8

    #@12
    .line 547
    :cond_0
    iget-object v7, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    #@14
    aget v4, v7, p1

    #@16
    .line 548
    .local v4, "relativeVelocity":F
    iget-object v7, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    #@18
    aget v2, v7, p1

    #@1a
    .line 549
    .local v2, "minimumVelocity":F
    iget-object v7, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    #@1c
    aget v1, v7, p1

    #@1e
    .line 550
    .local v1, "maximumVelocity":F
    mul-float v5, v4, p4

    #@20
    .line 555
    .local v5, "targetVelocity":F
    cmpl-float v7, v6, v8

    #@22
    if-lez v7, :cond_1

    #@24
    .line 556
    mul-float v7, v6, v5

    #@26
    invoke-static {v7, v2, v1}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    #@29
    move-result v7

    #@2a
    return v7

    #@2b
    .line 558
    :cond_1
    neg-float v7, v6

    #@2c
    mul-float/2addr v7, v5

    #@2d
    invoke-static {v7, v2, v1}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    #@30
    move-result v7

    #@31
    neg-float v7, v7

    #@32
    return v7
.end method

.method private static constrain(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    #@0
    .prologue
    .line 663
    cmpl-float v0, p0, p2

    #@2
    if-lez v0, :cond_0

    #@4
    .line 664
    return p2

    #@5
    .line 665
    :cond_0
    cmpg-float v0, p0, p1

    #@7
    if-gez v0, :cond_1

    #@9
    .line 666
    return p1

    #@a
    .line 668
    :cond_1
    return p0
.end method

.method private static constrain(III)I
    .locals 0
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    #@0
    .prologue
    .line 653
    if-le p0, p2, :cond_0

    #@2
    .line 654
    return p2

    #@3
    .line 655
    :cond_0
    if-ge p0, p1, :cond_1

    #@5
    .line 656
    return p1

    #@6
    .line 658
    :cond_1
    return p0
.end method

.method private constrainEdgeValue(FF)F
    .locals 4
    .param p1, "current"    # F
    .param p2, "leading"    # F

    #@0
    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    #@2
    const/4 v2, 0x0

    #@3
    .line 624
    cmpl-float v0, p2, v2

    #@5
    if-nez v0, :cond_0

    #@7
    .line 625
    return v2

    #@8
    .line 628
    :cond_0
    iget v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeType:I

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 649
    :cond_1
    return v2

    #@e
    .line 631
    :pswitch_0
    cmpg-float v0, p1, p2

    #@10
    if-gez v0, :cond_1

    #@12
    .line 632
    cmpl-float v0, p1, v2

    #@14
    if-ltz v0, :cond_2

    #@16
    .line 634
    div-float v0, p1, p2

    #@18
    sub-float v0, v3, v0

    #@1a
    return v0

    #@1b
    .line 635
    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    #@1d
    if-eqz v0, :cond_1

    #@1f
    iget v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeType:I

    #@21
    const/4 v1, 0x1

    #@22
    if-ne v0, v1, :cond_1

    #@24
    .line 637
    return v3

    #@25
    .line 642
    :pswitch_1
    cmpg-float v0, p1, v2

    #@27
    if-gez v0, :cond_1

    #@29
    .line 644
    neg-float v0, p2

    #@2a
    div-float v0, p1, v0

    #@2c
    return v0

    #@2d
    .line 628
    nop

    #@2e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getEdgeValue(FFFF)F
    .locals 7
    .param p1, "relativeValue"    # F
    .param p2, "size"    # F
    .param p3, "maxValue"    # F
    .param p4, "current"    # F

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 607
    mul-float v5, p1, p2

    #@3
    invoke-static {v5, v6, p3}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    #@6
    move-result v0

    #@7
    .line 608
    .local v0, "edgeSize":F
    invoke-direct {p0, p4, v0}, Landroid/support/v4/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    #@a
    move-result v3

    #@b
    .line 609
    .local v3, "valueLeading":F
    sub-float v5, p2, p4

    #@d
    invoke-direct {p0, v5, v0}, Landroid/support/v4/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    #@10
    move-result v4

    #@11
    .line 610
    .local v4, "valueTrailing":F
    sub-float v2, v4, v3

    #@13
    .line 612
    .local v2, "value":F
    cmpg-float v5, v2, v6

    #@15
    if-gez v5, :cond_0

    #@17
    .line 613
    iget-object v5, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    #@19
    neg-float v6, v2

    #@1a
    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@1d
    move-result v5

    #@1e
    neg-float v1, v5

    #@1f
    .line 620
    .local v1, "interpolated":F
    :goto_0
    const/high16 v5, -0x40800000    # -1.0f

    #@21
    const/high16 v6, 0x3f800000    # 1.0f

    #@23
    invoke-static {v1, v5, v6}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    #@26
    move-result v5

    #@27
    return v5

    #@28
    .line 614
    .end local v1    # "interpolated":F
    :cond_0
    cmpl-float v5, v2, v6

    #@2a
    if-lez v5, :cond_1

    #@2c
    .line 615
    iget-object v5, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    #@2e
    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@31
    move-result v1

    #@32
    .restart local v1    # "interpolated":F
    goto :goto_0

    #@33
    .line 617
    .end local v1    # "interpolated":F
    :cond_1
    return v6
.end method

.method private requestStop()V
    .locals 1

    #@0
    .prologue
    .line 528
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 531
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    #@7
    .line 527
    :goto_0
    return-void

    #@8
    .line 533
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    #@a
    invoke-virtual {v0}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->requestStop()V

    #@d
    goto :goto_0
.end method

.method private shouldAnimate()Z
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 492
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    #@3
    .line 493
    .local v1, "scroller":Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;
    invoke-virtual {v1}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getVerticalDirection()I

    #@6
    move-result v2

    #@7
    .line 494
    .local v2, "verticalDirection":I
    invoke-virtual {v1}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getHorizontalDirection()I

    #@a
    move-result v0

    #@b
    .line 496
    .local v0, "horizontalDirection":I
    if-eqz v2, :cond_0

    #@d
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/AutoScrollHelper;->canTargetScrollVertically(I)Z

    #@10
    move-result v4

    #@11
    if-nez v4, :cond_2

    #@13
    .line 497
    :cond_0
    if-eqz v0, :cond_1

    #@15
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/AutoScrollHelper;->canTargetScrollHorizontally(I)Z

    #@18
    move-result v3

    #@19
    .line 496
    :cond_1
    :goto_0
    return v3

    #@1a
    :cond_2
    const/4 v3, 0x1

    #@1b
    goto :goto_0
.end method

.method private startAnimating()V
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 504
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 505
    new-instance v0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;

    #@8
    invoke-direct {v0, p0, v1}, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Landroid/support/v4/widget/AutoScrollHelper;Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;)V

    #@b
    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    #@d
    .line 508
    :cond_0
    iput-boolean v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    #@f
    .line 509
    iput-boolean v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    #@11
    .line 511
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    #@13
    if-nez v0, :cond_1

    #@15
    iget v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mActivationDelay:I

    #@17
    if-lez v0, :cond_1

    #@19
    .line 512
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    #@1b
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    #@1d
    iget v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mActivationDelay:I

    #@1f
    int-to-long v2, v2

    #@20
    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    #@23
    .line 519
    :goto_0
    iput-boolean v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    #@25
    .line 503
    return-void

    #@26
    .line 514
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    #@28
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@2b
    goto :goto_0
.end method


# virtual methods
.method public abstract canTargetScrollHorizontally(I)Z
.end method

.method public abstract canTargetScrollVertically(I)Z
.end method

.method public isEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 247
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    #@2
    return v0
.end method

.method public isExclusive()Z
    .locals 1

    #@0
    .prologue
    .line 276
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mExclusive:Z

    #@2
    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 456
    iget-boolean v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    #@4
    if-nez v4, :cond_0

    #@6
    .line 457
    return v3

    #@7
    .line 460
    :cond_0
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    #@a
    move-result v0

    #@b
    .line 461
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    #@e
    .line 485
    :cond_1
    :goto_0
    iget-boolean v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mExclusive:Z

    #@10
    if-eqz v4, :cond_2

    #@12
    iget-boolean v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    #@14
    :cond_2
    return v3

    #@15
    .line 463
    :pswitch_0
    iput-boolean v7, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsCancel:Z

    #@17
    .line 464
    iput-boolean v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    #@19
    .line 468
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    #@1c
    move-result v4

    #@1d
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@20
    move-result v5

    #@21
    int-to-float v5, v5

    #@22
    iget-object v6, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    #@24
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    #@27
    move-result v6

    #@28
    int-to-float v6, v6

    #@29
    .line 467
    invoke-direct {p0, v3, v4, v5, v6}, Landroid/support/v4/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    #@2c
    move-result v1

    #@2d
    .line 470
    .local v1, "xTargetVelocity":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    #@30
    move-result v4

    #@31
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@34
    move-result v5

    #@35
    int-to-float v5, v5

    #@36
    iget-object v6, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    #@38
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    #@3b
    move-result v6

    #@3c
    int-to-float v6, v6

    #@3d
    .line 469
    invoke-direct {p0, v7, v4, v5, v6}, Landroid/support/v4/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    #@40
    move-result v2

    #@41
    .line 471
    .local v2, "yTargetVelocity":F
    iget-object v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    #@43
    invoke-virtual {v4, v1, v2}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->setTargetVelocity(FF)V

    #@46
    .line 475
    iget-boolean v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    #@48
    if-nez v4, :cond_1

    #@4a
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->shouldAnimate()Z

    #@4d
    move-result v4

    #@4e
    if-eqz v4, :cond_1

    #@50
    .line 476
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->startAnimating()V

    #@53
    goto :goto_0

    #@54
    .line 481
    .end local v1    # "xTargetVelocity":F
    .end local v2    # "yTargetVelocity":F
    :pswitch_2
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->requestStop()V

    #@57
    goto :goto_0

    #@58
    .line 461
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public abstract scrollTargetBy(II)V
.end method

.method public setActivationDelay(I)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 0
    .param p1, "delayMillis"    # I

    #@0
    .prologue
    .line 412
    iput p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mActivationDelay:I

    #@2
    .line 413
    return-object p0
.end method

.method public setEdgeType(I)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 0
    .param p1, "type"    # I

    #@0
    .prologue
    .line 354
    iput p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeType:I

    #@2
    .line 355
    return-object p0
.end method

.method public setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 235
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    if-eqz p1, :cond_1

    #@6
    .line 239
    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    #@8
    .line 240
    return-object p0

    #@9
    .line 236
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->requestStop()V

    #@c
    goto :goto_0
.end method

.method public setExclusive(Z)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 0
    .param p1, "exclusive"    # Z

    #@0
    .prologue
    .line 263
    iput-boolean p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mExclusive:Z

    #@2
    .line 264
    return-object p0
.end method

.method public setMaximumEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 2
    .param p1, "horizontalMax"    # F
    .param p2, "verticalMax"    # F

    #@0
    .prologue
    .line 395
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    #@2
    const/4 v1, 0x0

    #@3
    aput p1, v0, v1

    #@5
    .line 396
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    #@7
    const/4 v1, 0x1

    #@8
    aput p2, v0, v1

    #@a
    .line 397
    return-object p0
.end method

.method public setMaximumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 4
    .param p1, "horizontalMax"    # F
    .param p2, "verticalMax"    # F

    #@0
    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    #@2
    .line 294
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    #@4
    div-float v1, p1, v3

    #@6
    const/4 v2, 0x0

    #@7
    aput v1, v0, v2

    #@9
    .line 295
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    #@b
    div-float v1, p2, v3

    #@d
    const/4 v2, 0x1

    #@e
    aput v1, v0, v2

    #@10
    .line 296
    return-object p0
.end method

.method public setMinimumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 4
    .param p1, "horizontalMin"    # F
    .param p2, "verticalMin"    # F

    #@0
    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    #@2
    .line 312
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    #@4
    div-float v1, p1, v3

    #@6
    const/4 v2, 0x0

    #@7
    aput v1, v0, v2

    #@9
    .line 313
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    #@b
    div-float v1, p2, v3

    #@d
    const/4 v2, 0x1

    #@e
    aput v1, v0, v2

    #@10
    .line 314
    return-object p0
.end method

.method public setRampDownDuration(I)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 1
    .param p1, "durationMillis"    # I

    #@0
    .prologue
    .line 442
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    #@2
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->setRampDownDuration(I)V

    #@5
    .line 443
    return-object p0
.end method

.method public setRampUpDuration(I)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 1
    .param p1, "durationMillis"    # I

    #@0
    .prologue
    .line 427
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    #@2
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->setRampUpDuration(I)V

    #@5
    .line 428
    return-object p0
.end method

.method public setRelativeEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 2
    .param p1, "horizontal"    # F
    .param p2, "vertical"    # F

    #@0
    .prologue
    .line 373
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    #@2
    const/4 v1, 0x0

    #@3
    aput p1, v0, v1

    #@5
    .line 374
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    #@7
    const/4 v1, 0x1

    #@8
    aput p2, v0, v1

    #@a
    .line 375
    return-object p0
.end method

.method public setRelativeVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .locals 4
    .param p1, "horizontal"    # F
    .param p2, "vertical"    # F

    #@0
    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    #@2
    .line 333
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    #@4
    div-float v1, p1, v3

    #@6
    const/4 v2, 0x0

    #@7
    aput v1, v0, v2

    #@9
    .line 334
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    #@b
    div-float v1, p2, v3

    #@d
    const/4 v2, 0x1

    #@e
    aput v1, v0, v2

    #@10
    .line 335
    return-object p0
.end method
