.class public Landroid/widget/SlidingDrawer;
.super Landroid/view/ViewGroup;
.source "SlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SlidingDrawer$DrawerToggler;,
        Landroid/widget/SlidingDrawer$OnDrawerScrollListener;,
        Landroid/widget/SlidingDrawer$OnDrawerCloseListener;,
        Landroid/widget/SlidingDrawer$OnDrawerOpenListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o ANIMATION_FRAME_DURATION:I = 0x10

.field private static final greylist-max-o COLLAPSED_FULL_CLOSED:I = -0x2712

.field private static final greylist-max-o EXPANDED_FULL_OPEN:I = -0x2711

.field private static final greylist-max-o MAXIMUM_ACCELERATION:F = 2000.0f

.field private static final greylist-max-o MAXIMUM_MAJOR_VELOCITY:F = 200.0f

.field private static final greylist-max-o MAXIMUM_MINOR_VELOCITY:F = 150.0f

.field private static final greylist-max-o MAXIMUM_TAP_VELOCITY:F = 100.0f

.field public static final whitelist ORIENTATION_HORIZONTAL:I = 0x0

.field public static final whitelist ORIENTATION_VERTICAL:I = 0x1

.field private static final greylist-max-o TAP_THRESHOLD:I = 0x6

.field private static final greylist-max-o VELOCITY_UNITS:I = 0x3e8


# instance fields
.field private greylist-max-o mAllowSingleTap:Z

.field private greylist-max-o mAnimateOnClick:Z

.field private greylist-max-o mAnimatedAcceleration:F

.field private greylist-max-o mAnimatedVelocity:F

.field private greylist-max-o mAnimating:Z

.field private greylist-max-o mAnimationLastTime:J

.field private greylist-max-o mAnimationPosition:F

.field private greylist-max-o mBottomOffset:I

.field private greylist-max-o mContent:Landroid/view/View;

.field private final greylist-max-o mContentId:I

.field private greylist-max-o mCurrentAnimationTime:J

.field private greylist-max-o mExpanded:Z

.field private final greylist-max-o mFrame:Landroid/graphics/Rect;

.field private greylist-max-o mHandle:Landroid/view/View;

.field private greylist-max-o mHandleHeight:I

.field private final greylist-max-o mHandleId:I

.field private greylist-max-o mHandleWidth:I

.field private final greylist-max-o mInvalidate:Landroid/graphics/Rect;

.field private greylist-max-o mLocked:Z

.field private final greylist-max-o mMaximumAcceleration:I

.field private final greylist-max-o mMaximumMajorVelocity:I

.field private final greylist-max-o mMaximumMinorVelocity:I

.field private final greylist-max-o mMaximumTapVelocity:I

.field private greylist-max-o mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

.field private greylist-max-o mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

.field private greylist-max-o mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

.field private final greylist-max-o mSlidingRunnable:Ljava/lang/Runnable;

.field private final greylist-max-o mTapThreshold:I

.field private greylist mTopOffset:I

.field private greylist mTouchDelta:I

.field private greylist mTracking:Z

.field private greylist mVelocityTracker:Landroid/view/VelocityTracker;

.field private final greylist-max-o mVelocityUnits:I

.field private greylist-max-o mVertical:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAnimateOnClick(Landroid/widget/SlidingDrawer;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/SlidingDrawer;->mAnimateOnClick:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocked(Landroid/widget/SlidingDrawer;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdoAnimation(Landroid/widget/SlidingDrawer;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->doAnimation()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 188
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 201
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 217
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 982
    new-instance v0, Landroid/widget/SlidingDrawer$1;

    invoke-direct {v0, p0}, Landroid/widget/SlidingDrawer$1;-><init>(Landroid/widget/SlidingDrawer;)V

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    .line 219
    sget-object v0, Landroid/R$styleable;->SlidingDrawer:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 221
    .local v5, "a":Landroid/content/res/TypedArray;
    sget-object v3, Landroid/R$styleable;->SlidingDrawer:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v6, p3

    move v7, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .local v2, "context":Landroid/content/Context;
    .local v4, "attrs":Landroid/util/AttributeSet;
    .local v6, "defStyleAttr":I
    .local v7, "defStyleRes":I
    invoke-virtual/range {v1 .. v7}, Landroid/widget/SlidingDrawer;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 224
    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {v5, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 225
    .local p3, "orientation":I
    if-ne p3, p2, :cond_32

    move p4, p2

    goto :goto_33

    :cond_32
    move p4, p1

    :goto_33
    iput-boolean p4, v1, Landroid/widget/SlidingDrawer;->mVertical:Z

    .line 226
    const/4 p4, 0x0

    invoke-virtual {v5, p2, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    .line 227
    const/4 v0, 0x2

    invoke-virtual {v5, v0, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p4

    float-to-int p4, p4

    iput p4, v1, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 228
    const/4 p4, 0x3

    invoke-virtual {v5, p4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, v1, Landroid/widget/SlidingDrawer;->mAllowSingleTap:Z

    .line 229
    const/4 p4, 0x6

    invoke-virtual {v5, p4, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, v1, Landroid/widget/SlidingDrawer;->mAnimateOnClick:Z

    .line 231
    const/4 p2, 0x4

    invoke-virtual {v5, p2, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 232
    .local p2, "handleId":I
    if-eqz p2, :cond_b4

    .line 237
    const/4 p4, 0x5

    invoke-virtual {v5, p4, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    .line 238
    .local p4, "contentId":I
    if-eqz p4, :cond_ac

    .line 243
    if-eq p2, p4, :cond_a4

    .line 248
    iput p2, v1, Landroid/widget/SlidingDrawer;->mHandleId:I

    .line 249
    iput p4, v1, Landroid/widget/SlidingDrawer;->mContentId:I

    .line 251
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 252
    .local v0, "density":F
    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v3, v0

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v3, v8

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    .line 253
    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v3, v0

    add-float/2addr v3, v8

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/SlidingDrawer;->mMaximumTapVelocity:I

    .line 254
    const/high16 v3, 0x43160000    # 150.0f

    mul-float/2addr v3, v0

    add-float/2addr v3, v8

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    .line 255
    const/high16 v3, 0x43480000    # 200.0f

    mul-float/2addr v3, v0

    add-float/2addr v3, v8

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    .line 256
    const/high16 v3, 0x44fa0000    # 2000.0f

    mul-float/2addr v3, v0

    add-float/2addr v3, v8

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    .line 257
    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v0

    add-float/2addr v3, v8

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/SlidingDrawer;->mVelocityUnits:I

    .line 259
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 261
    invoke-virtual {p0, p1}, Landroid/widget/SlidingDrawer;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 262
    return-void

    .line 244
    .end local v0    # "density":F
    :cond_a4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The content and handle attributes must refer to different children."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 239
    :cond_ac
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The content attribute is required and must refer to a valid child."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 233
    .end local p4    # "contentId":I
    :cond_b4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p4, "The handle attribute is required and must refer to a valid child."

    invoke-direct {p1, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o animateClose(IZ)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "notifyScrollListener"    # Z

    .line 506
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    .line 507
    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    .line 508
    return-void
.end method

.method private greylist-max-o animateOpen(IZ)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "notifyScrollListener"    # Z

    .line 511
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    .line 512
    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    .line 513
    return-void
.end method

.method private greylist-max-o closeDrawer()V
    .registers 3

    .line 850
    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 851
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 852
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 854
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_16

    .line 855
    return-void

    .line 858
    :cond_16
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    .line 859
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    if-eqz v0, :cond_22

    .line 860
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerCloseListener;->onDrawerClosed()V

    .line 862
    :cond_22
    return-void
.end method

.method private greylist-max-o doAnimation()V
    .registers 5

    .line 707
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_48

    .line 708
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->incrementAnimation()V

    .line 709
    iget v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    iget v1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget-boolean v2, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_14

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getHeight()I

    move-result v2

    goto :goto_18

    :cond_14
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getWidth()I

    move-result v2

    :goto_18
    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_27

    .line 710
    iput-boolean v1, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 711
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    goto :goto_48

    .line 712
    :cond_27
    iget v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    iget v2, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_36

    .line 713
    iput-boolean v1, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 714
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    goto :goto_48

    .line 716
    :cond_36
    iget v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 717
    iget-wide v0, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 718
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/SlidingDrawer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 721
    :cond_48
    :goto_48
    return-void
.end method

.method private greylist-max-o incrementAnimation()V
    .registers 9

    .line 724
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 725
    .local v0, "now":J
    iget-wide v2, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 726
    .local v2, "t":F
    iget v3, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    .line 727
    .local v3, "position":F
    iget v4, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 728
    .local v4, "v":F
    iget v5, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 729
    .local v5, "a":F
    mul-float v6, v4, v2

    add-float/2addr v6, v3

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v5

    mul-float/2addr v7, v2

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    iput v6, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    .line 730
    mul-float v6, v5, v2

    add-float/2addr v6, v4

    iput v6, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 731
    iput-wide v0, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    .line 732
    return-void
.end method

.method private greylist-max-o moveHandle(I)V
    .registers 12
    .param p1, "position"    # I

    .line 592
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 594
    .local v0, "handle":Landroid/view/View;
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/4 v2, 0x0

    const/16 v3, -0x2712

    const/16 v4, -0x2711

    if-eqz v1, :cond_93

    .line 595
    if-ne p1, v4, :cond_1c

    .line 596
    iget v1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 597
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    goto/16 :goto_117

    .line 598
    :cond_1c
    if-ne p1, v3, :cond_36

    .line 599
    iget v1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v2, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v1, v2

    .line 600
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 599
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 601
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    goto/16 :goto_117

    .line 603
    :cond_36
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 604
    .local v1, "top":I
    sub-int v3, p1, v1

    .line 605
    .local v3, "deltaY":I
    iget v4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    if-ge p1, v4, :cond_45

    .line 606
    iget v4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int v3, v4, v1

    goto :goto_60

    .line 607
    :cond_45
    iget v4, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v5, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    if-le v3, v4, :cond_60

    .line 608
    iget v4, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v5, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v4, v5

    sub-int v3, v4, v1

    .line 610
    :cond_60
    :goto_60
    invoke-virtual {v0, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 612
    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 613
    .local v4, "frame":Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 615
    .local v5, "region":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 616
    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 618
    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    iget v8, v4, Landroid/graphics/Rect;->right:I

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 619
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v3

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getWidth()I

    move-result v7

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v3

    iget-object v9, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 620
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 619
    invoke-virtual {v5, v2, v6, v7, v8}, Landroid/graphics/Rect;->union(IIII)V

    .line 622
    invoke-virtual {p0, v5}, Landroid/widget/SlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    .line 623
    .end local v1    # "top":I
    .end local v3    # "deltaY":I
    .end local v4    # "frame":Landroid/graphics/Rect;
    .end local v5    # "region":Landroid/graphics/Rect;
    goto/16 :goto_117

    .line 625
    :cond_93
    if-ne p1, v4, :cond_a3

    .line 626
    iget v1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 627
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    goto :goto_117

    .line 628
    :cond_a3
    if-ne p1, v3, :cond_bc

    .line 629
    iget v1, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v2, p0, Landroid/widget/SlidingDrawer;->mRight:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v1, v2

    .line 630
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 629
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 631
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    goto :goto_117

    .line 633
    :cond_bc
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 634
    .local v1, "left":I
    sub-int v3, p1, v1

    .line 635
    .local v3, "deltaX":I
    iget v4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    if-ge p1, v4, :cond_cb

    .line 636
    iget v4, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int v3, v4, v1

    goto :goto_e6

    .line 637
    :cond_cb
    iget v4, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v5, p0, Landroid/widget/SlidingDrawer;->mRight:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    if-le v3, v4, :cond_e6

    .line 638
    iget v4, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v5, p0, Landroid/widget/SlidingDrawer;->mRight:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v4, v5

    sub-int v3, v4, v1

    .line 640
    :cond_e6
    :goto_e6
    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 642
    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 643
    .restart local v4    # "frame":Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 645
    .restart local v5    # "region":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 646
    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 648
    iget v6, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v3

    iget v7, v4, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v3

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 649
    iget v6, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v3

    iget v7, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v3

    iget-object v8, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 650
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getHeight()I

    move-result v8

    .line 649
    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/graphics/Rect;->union(IIII)V

    .line 652
    invoke-virtual {p0, v5}, Landroid/widget/SlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    .line 655
    .end local v1    # "left":I
    .end local v3    # "deltaX":I
    .end local v4    # "frame":Landroid/graphics/Rect;
    .end local v5    # "region":Landroid/graphics/Rect;
    :goto_117
    return-void
.end method

.method private greylist-max-o openDrawer()V
    .registers 3

    .line 865
    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 866
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 868
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_10

    .line 869
    return-void

    .line 872
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    .line 874
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    if-eqz v0, :cond_1c

    .line 875
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    .line 877
    :cond_1c
    return-void
.end method

.method private greylist-max-o performFling(IFZZ)V
    .registers 11
    .param p1, "position"    # I
    .param p2, "velocity"    # F
    .param p3, "always"    # Z
    .param p4, "notifyScrollListener"    # Z

    .line 517
    int-to-float v0, p1

    iput v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    .line 518
    iput p2, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 520
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    .line 521
    if-nez p3, :cond_37

    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_37

    iget v0, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    .line 522
    iget-boolean v2, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_1c

    iget v2, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    goto :goto_1e

    :cond_1c
    iget v2, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    :goto_1e
    add-int/2addr v0, v2

    if-le p1, v0, :cond_2a

    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2a

    goto :goto_37

    .line 532
    :cond_2a
    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 533
    cmpl-float v0, p2, v1

    if-lez v0, :cond_7d

    .line 534
    iput v1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_7d

    .line 526
    :cond_37
    :goto_37
    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 527
    cmpg-float v0, p2, v1

    if-gez v0, :cond_7d

    .line 528
    iput v1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_7d

    .line 538
    :cond_43
    if-nez p3, :cond_71

    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_65

    .line 539
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_55

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getHeight()I

    move-result v0

    goto :goto_59

    :cond_55
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getWidth()I

    move-result v0

    :goto_59
    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_71

    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_71

    .line 542
    :cond_65
    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 543
    cmpg-float v0, p2, v1

    if-gez v0, :cond_7d

    .line 544
    iput v1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    goto :goto_7d

    .line 549
    :cond_71
    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 550
    cmpl-float v0, p2, v1

    if-lez v0, :cond_7d

    .line 551
    iput v1, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 556
    :cond_7d
    :goto_7d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 557
    .local v0, "now":J
    iput-wide v0, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    .line 558
    const-wide/16 v2, 0x10

    add-long v4, v0, v2

    iput-wide v4, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 559
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 560
    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/widget/SlidingDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 561
    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4, v2, v3}, Landroid/widget/SlidingDrawer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 562
    invoke-direct {p0, p4}, Landroid/widget/SlidingDrawer;->stopTracking(Z)V

    .line 563
    return-void
.end method

.method private greylist prepareContent()V
    .registers 9

    .line 659
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_5

    .line 660
    return-void

    .line 665
    :cond_5
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 666
    .local v0, "content":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 667
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v1, :cond_42

    .line 668
    iget v1, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    .line 669
    .local v1, "childHeight":I
    iget v4, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    iget v5, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    iget v5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v4, v5

    .line 670
    .local v4, "height":I
    iget v5, p0, Landroid/widget/SlidingDrawer;->mRight:I

    iget v6, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v5, v6

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 671
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 670
    invoke-virtual {v0, v5, v3}, Landroid/view/View;->measure(II)V

    .line 672
    iget v3, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v6, v1

    .line 673
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 672
    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 674
    .end local v1    # "childHeight":I
    .end local v4    # "height":I
    goto :goto_73

    .line 675
    :cond_42
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 676
    .local v1, "childWidth":I
    iget v4, p0, Landroid/widget/SlidingDrawer;->mRight:I

    iget v5, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    iget v5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v4, v5

    .line 677
    .local v4, "width":I
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v6, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v6, v7

    .line 678
    invoke-static {v6, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 677
    invoke-virtual {v0, v5, v3}, Landroid/view/View;->measure(II)V

    .line 679
    iget v3, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v3, v1

    iget v5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v1

    .line 680
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    .line 681
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 679
    invoke-virtual {v0, v3, v2, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 686
    .end local v1    # "childWidth":I
    .end local v4    # "width":I
    :cond_73
    :goto_73
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    .line 687
    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v1

    if-nez v1, :cond_83

    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 689
    :cond_83
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 690
    return-void
.end method

.method private greylist prepareTracking(I)V
    .registers 8
    .param p1, "position"    # I

    .line 567
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    .line 568
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 569
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    xor-int/2addr v1, v0

    .line 570
    .local v1, "opening":Z
    if-eqz v1, :cond_4b

    .line 571
    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    .line 572
    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    iput v2, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    .line 573
    iget v2, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    .line 574
    iget-boolean v3, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v3, :cond_25

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    goto :goto_2b

    :cond_25
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    :goto_2b
    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    .line 575
    iget v2, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    float-to-int v2, v2

    invoke-direct {p0, v2}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 576
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 577
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/widget/SlidingDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 578
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 579
    .local v2, "now":J
    iput-wide v2, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    .line 580
    const-wide/16 v4, 0x10

    add-long/2addr v4, v2

    iput-wide v4, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    .line 581
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 582
    .end local v2    # "now":J
    goto :goto_5a

    .line 583
    :cond_4b
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_57

    .line 584
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    .line 585
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/SlidingDrawer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 587
    :cond_57
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 589
    :goto_5a
    return-void
.end method

.method private greylist-max-o stopTracking(Z)V
    .registers 4
    .param p1, "notifyScrollListener"    # Z

    .line 693
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 694
    iput-boolean v1, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    .line 696
    if-eqz p1, :cond_13

    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_13

    .line 697
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 700
    :cond_13
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1f

    .line 701
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 702
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 704
    :cond_1f
    return-void
.end method


# virtual methods
.method public whitelist animateClose()V
    .registers 4

    .line 808
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->prepareContent()V

    .line 809
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    .line 810
    .local v0, "scrollListener":Landroid/widget/SlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_a

    .line 811
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 813
    :cond_a
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_1b

    :cond_15
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    :goto_1b
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/SlidingDrawer;->animateClose(IZ)V

    .line 815
    if-eqz v0, :cond_24

    .line 816
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 818
    :cond_24
    return-void
.end method

.method public whitelist animateOpen()V
    .registers 4

    .line 830
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->prepareContent()V

    .line 831
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    .line 832
    .local v0, "scrollListener":Landroid/widget/SlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_a

    .line 833
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 835
    :cond_a
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_1b

    :cond_15
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    :goto_1b
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/SlidingDrawer;->animateOpen(IZ)V

    .line 837
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Landroid/widget/SlidingDrawer;->sendAccessibilityEvent(I)V

    .line 839
    if-eqz v0, :cond_29

    .line 840
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 842
    :cond_29
    return-void
.end method

.method public whitelist animateToggle()V
    .registers 2

    .line 763
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_8

    .line 764
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->animateOpen()V

    goto :goto_b

    .line 766
    :cond_8
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->animateClose()V

    .line 768
    :goto_b
    return-void
.end method

.method public whitelist close()V
    .registers 1

    .line 793
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    .line 794
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    .line 795
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->requestLayout()V

    .line 796
    return-void
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 311
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getDrawingTime()J

    move-result-wide v0

    .line 312
    .local v0, "drawingTime":J
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 313
    .local v2, "handle":Landroid/view/View;
    iget-boolean v3, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    .line 315
    .local v3, "isVertical":Z
    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 317
    iget-boolean v4, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v4, :cond_1f

    iget-boolean v4, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v4, :cond_14

    goto :goto_1f

    .line 332
    :cond_14
    iget-boolean v4, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v4, :cond_1e

    .line 333
    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v4, v0, v1}, Landroid/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_62

    .line 332
    :cond_1e
    :goto_1e
    goto :goto_62

    .line 318
    :cond_1f
    :goto_1f
    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 319
    .local v4, "cache":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    if-eqz v4, :cond_3d

    .line 320
    const/4 v6, 0x0

    if-eqz v3, :cond_34

    .line 321
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v4, v5, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1e

    .line 323
    :cond_34
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v4, v7, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1e

    .line 326
    :cond_3d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 327
    if-eqz v3, :cond_44

    move v6, v5

    goto :goto_4c

    :cond_44
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 328
    :goto_4c
    if-eqz v3, :cond_56

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    .line 327
    :cond_56
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 329
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v0, v1}, Landroid/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 330
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1e

    .line 335
    .end local v4    # "cache":Landroid/graphics/Bitmap;
    :goto_62
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 846
    const-class v0, Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getContent()Landroid/view/View;
    .registers 2

    .line 926
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public whitelist getHandle()Landroid/view/View;
    .registers 2

    .line 916
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public whitelist isMoving()Z
    .registers 2

    .line 962
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public whitelist isOpened()Z
    .registers 2

    .line 953
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    return v0
.end method

.method public whitelist lock()V
    .registers 2

    .line 944
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    .line 945
    return-void
.end method

.method protected whitelist onFinishInflate()V
    .registers 4

    .line 266
    iget v0, p0, Landroid/widget/SlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v0}, Landroid/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 267
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    if-eqz v0, :cond_33

    .line 271
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    new-instance v1, Landroid/widget/SlidingDrawer$DrawerToggler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/SlidingDrawer$DrawerToggler;-><init>(Landroid/widget/SlidingDrawer;Landroid/widget/SlidingDrawer-IA;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget v0, p0, Landroid/widget/SlidingDrawer;->mContentId:I

    invoke-virtual {p0, v0}, Landroid/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 274
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    if-eqz v0, :cond_2b

    .line 278
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 279
    return-void

    .line 275
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 378
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 379
    return v1

    .line 382
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 384
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 385
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 387
    .local v3, "y":F
    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 388
    .local v4, "frame":Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 390
    .local v5, "handle":Landroid/view/View;
    invoke-virtual {v5, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 391
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v6, :cond_26

    float-to-int v6, v2

    float-to-int v7, v3

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_26

    .line 392
    return v1

    .line 395
    :cond_26
    const/4 v1, 0x1

    if-nez v0, :cond_5e

    .line 396
    iput-boolean v1, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    .line 398
    invoke-virtual {v5, v1}, Landroid/view/View;->setPressed(Z)V

    .line 400
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->prepareContent()V

    .line 403
    iget-object v6, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    if-eqz v6, :cond_3a

    .line 404
    iget-object v6, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v6}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 407
    :cond_3a
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v6, :cond_4c

    .line 408
    iget-object v6, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    .line 409
    .local v6, "top":I
    float-to-int v7, v3

    sub-int/2addr v7, v6

    iput v7, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    .line 410
    invoke-direct {p0, v6}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    .line 411
    .end local v6    # "top":I
    goto :goto_59

    .line 412
    :cond_4c
    iget-object v6, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 413
    .local v6, "left":I
    float-to-int v7, v2

    sub-int/2addr v7, v6

    iput v7, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    .line 414
    invoke-direct {p0, v6}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    .line 416
    .end local v6    # "left":I
    :goto_59
    iget-object v6, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 419
    :cond_5e
    return v1
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 19
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 339
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-eqz v0, :cond_5

    .line 340
    return-void

    .line 343
    :cond_5
    sub-int v0, p4, p2

    .line 344
    .local v0, "width":I
    sub-int v1, p5, p3

    .line 346
    .local v1, "height":I
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 348
    .local v2, "handle":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 349
    .local v3, "childWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 354
    .local v4, "childHeight":I
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    .line 356
    .local v5, "content":Landroid/view/View;
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_3d

    .line 357
    sub-int v6, v0, v3

    div-int/lit8 v6, v6, 0x2

    .line 358
    .local v6, "childLeft":I
    iget-boolean v8, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_25

    iget v8, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    goto :goto_2a

    :cond_25
    sub-int v8, v1, v4

    iget v9, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    add-int/2addr v8, v9

    .line 360
    .local v8, "childTop":I
    :goto_2a
    iget v9, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v4

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v11, v4

    .line 361
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    .line 360
    invoke-virtual {v5, v7, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_5f

    .line 363
    .end local v6    # "childLeft":I
    .end local v8    # "childTop":I
    :cond_3d
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v6, :cond_44

    iget v6, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    goto :goto_49

    :cond_44
    sub-int v6, v0, v3

    iget v8, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    add-int/2addr v6, v8

    .line 364
    .restart local v6    # "childLeft":I
    :goto_49
    sub-int v8, v1, v4

    div-int/lit8 v8, v8, 0x2

    .line 366
    .restart local v8    # "childTop":I
    iget v9, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v3

    iget v10, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v10, v3

    .line 367
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    .line 368
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 366
    invoke-virtual {v5, v9, v7, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 371
    :goto_5f
    add-int v7, v6, v3

    add-int v9, v8, v4

    invoke-virtual {v2, v6, v8, v7, v9}, Landroid/view/View;->layout(IIII)V

    .line 372
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v7

    iput v7, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    .line 373
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v7

    iput v7, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    .line 374
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 283
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 284
    .local v0, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 286
    .local v1, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 287
    .local v2, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 289
    .local v3, "heightSpecSize":I
    if-eqz v0, :cond_50

    if-eqz v2, :cond_50

    .line 293
    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    .line 294
    .local v4, "handle":Landroid/view/View;
    invoke-virtual {p0, v4, p1, p2}, Landroid/widget/SlidingDrawer;->measureChild(Landroid/view/View;II)V

    .line 296
    iget-boolean v5, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v5, :cond_36

    .line 297
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int v5, v3, v5

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v7

    .line 298
    .local v5, "height":I
    iget-object v7, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 299
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 298
    invoke-virtual {v7, v8, v6}, Landroid/view/View;->measure(II)V

    .line 300
    .end local v5    # "height":I
    goto :goto_4c

    .line 301
    :cond_36
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v1, v5

    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v7

    .line 302
    .local v5, "width":I
    iget-object v7, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 303
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 302
    invoke-virtual {v7, v8, v6}, Landroid/view/View;->measure(II)V

    .line 306
    .end local v5    # "width":I
    :goto_4c
    invoke-virtual {p0, v1, v3}, Landroid/widget/SlidingDrawer;->setMeasuredDimension(II)V

    .line 307
    return-void

    .line 290
    .end local v4    # "handle":Landroid/view/View;
    :cond_50
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "SlidingDrawer cannot have UNSPECIFIED dimensions"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 424
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 425
    return v1

    .line 428
    :cond_6
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_107

    .line 429
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 430
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 431
    .local v0, "action":I
    packed-switch v0, :pswitch_data_118

    goto/16 :goto_107

    .line 433
    :pswitch_19
    iget-boolean v3, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    if-eqz v3, :cond_22

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    goto :goto_26

    :cond_22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    :goto_26
    float-to-int v3, v3

    iget v4, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v3}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    .line 434
    goto/16 :goto_107

    .line 437
    :pswitch_2f
    iget-object v3, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 438
    .local v3, "velocityTracker":Landroid/view/VelocityTracker;
    iget v4, p0, Landroid/widget/SlidingDrawer;->mVelocityUnits:I

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 440
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    .line 441
    .local v4, "yVelocity":F
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    .line 444
    .local v5, "xVelocity":F
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    .line 445
    .local v6, "vertical":Z
    const/4 v7, 0x0

    if-eqz v6, :cond_5a

    .line 446
    cmpg-float v8, v4, v7

    if-gez v8, :cond_49

    move v8, v1

    goto :goto_4a

    :cond_49
    move v8, v2

    .line 447
    .local v8, "negative":Z
    :goto_4a
    cmpg-float v7, v5, v7

    if-gez v7, :cond_4f

    .line 448
    neg-float v5, v5

    .line 450
    :cond_4f
    iget v7, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v7, v7

    cmpl-float v7, v5, v7

    if-lez v7, :cond_70

    .line 451
    iget v7, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v5, v7

    goto :goto_70

    .line 454
    .end local v8    # "negative":Z
    :cond_5a
    cmpg-float v8, v5, v7

    if-gez v8, :cond_60

    move v8, v1

    goto :goto_61

    :cond_60
    move v8, v2

    .line 455
    .restart local v8    # "negative":Z
    :goto_61
    cmpg-float v7, v4, v7

    if-gez v7, :cond_66

    .line 456
    neg-float v4, v4

    .line 458
    :cond_66
    iget v7, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v7, v7

    cmpl-float v7, v4, v7

    if-lez v7, :cond_70

    .line 459
    iget v7, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v4, v7

    .line 463
    :cond_70
    :goto_70
    float-to-double v9, v5

    float-to-double v11, v4

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v7, v9

    .line 464
    .local v7, "velocity":F
    if-eqz v8, :cond_7a

    .line 465
    neg-float v7, v7

    .line 468
    :cond_7a
    iget-object v9, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    .line 469
    .local v9, "top":I
    iget-object v10, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 471
    .local v10, "left":I
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v11

    iget v12, p0, Landroid/widget/SlidingDrawer;->mMaximumTapVelocity:I

    int-to-float v12, v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_ff

    .line 472
    iget-boolean v11, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v6, :cond_b3

    if-eqz v11, :cond_9e

    iget v11, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    iget v12, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v11, v12

    if-lt v9, v11, :cond_d0

    :cond_9e
    iget-boolean v11, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v11, :cond_f6

    iget v11, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v12, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    add-int/2addr v11, v12

    iget v12, p0, Landroid/widget/SlidingDrawer;->mTop:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    sub-int/2addr v11, v12

    if-le v9, v11, :cond_f6

    goto :goto_d0

    :cond_b3
    if-eqz v11, :cond_bc

    iget v11, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    iget v12, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    add-int/2addr v11, v12

    if-lt v10, v11, :cond_d0

    :cond_bc
    iget-boolean v11, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v11, :cond_f6

    iget v11, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    iget v12, p0, Landroid/widget/SlidingDrawer;->mRight:I

    add-int/2addr v11, v12

    iget v12, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    sub-int/2addr v11, v12

    if-le v10, v11, :cond_f6

    .line 479
    :cond_d0
    :goto_d0
    iget-boolean v11, p0, Landroid/widget/SlidingDrawer;->mAllowSingleTap:Z

    if-eqz v11, :cond_ed

    .line 480
    invoke-virtual {p0, v2}, Landroid/widget/SlidingDrawer;->playSoundEffect(I)V

    .line 482
    iget-boolean v11, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-eqz v11, :cond_e4

    .line 483
    if-eqz v6, :cond_df

    move v11, v9

    goto :goto_e0

    :cond_df
    move v11, v10

    :goto_e0
    invoke-direct {p0, v11, v1}, Landroid/widget/SlidingDrawer;->animateClose(IZ)V

    goto :goto_107

    .line 485
    :cond_e4
    if-eqz v6, :cond_e8

    move v11, v9

    goto :goto_e9

    :cond_e8
    move v11, v10

    :goto_e9
    invoke-direct {p0, v11, v1}, Landroid/widget/SlidingDrawer;->animateOpen(IZ)V

    goto :goto_107

    .line 488
    :cond_ed
    if-eqz v6, :cond_f1

    move v11, v9

    goto :goto_f2

    :cond_f1
    move v11, v10

    :goto_f2
    invoke-direct {p0, v11, v7, v2, v1}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    goto :goto_107

    .line 492
    :cond_f6
    if-eqz v6, :cond_fa

    move v11, v9

    goto :goto_fb

    :cond_fa
    move v11, v10

    :goto_fb
    invoke-direct {p0, v11, v7, v2, v1}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    goto :goto_107

    .line 495
    :cond_ff
    if-eqz v6, :cond_103

    move v11, v9

    goto :goto_104

    :cond_103
    move v11, v10

    :goto_104
    invoke-direct {p0, v11, v7, v2, v1}, Landroid/widget/SlidingDrawer;->performFling(IFZZ)V

    .line 502
    .end local v0    # "action":I
    .end local v3    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v4    # "yVelocity":F
    .end local v5    # "xVelocity":F
    .end local v6    # "vertical":Z
    .end local v7    # "velocity":F
    .end local v8    # "negative":Z
    .end local v9    # "top":I
    .end local v10    # "left":I
    :cond_107
    :goto_107
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    if-nez v0, :cond_117

    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    if-nez v0, :cond_117

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_116

    goto :goto_117

    :cond_116
    move v1, v2

    :cond_117
    :goto_117
    return v1

    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_19
        :pswitch_2f
    .end packed-switch
.end method

.method public whitelist open()V
    .registers 2

    .line 778
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    .line 779
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    .line 780
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->requestLayout()V

    .line 782
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/widget/SlidingDrawer;->sendAccessibilityEvent(I)V

    .line 783
    return-void
.end method

.method public whitelist setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V
    .registers 2
    .param p1, "onDrawerCloseListener"    # Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    .line 894
    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    .line 895
    return-void
.end method

.method public whitelist setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V
    .registers 2
    .param p1, "onDrawerOpenListener"    # Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    .line 885
    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    .line 886
    return-void
.end method

.method public whitelist setOnDrawerScrollListener(Landroid/widget/SlidingDrawer$OnDrawerScrollListener;)V
    .registers 2
    .param p1, "onDrawerScrollListener"    # Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    .line 906
    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    .line 907
    return-void
.end method

.method public whitelist toggle()V
    .registers 2

    .line 744
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_8

    .line 745
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    goto :goto_b

    .line 747
    :cond_8
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    .line 749
    :goto_b
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    .line 750
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->requestLayout()V

    .line 751
    return-void
.end method

.method public whitelist unlock()V
    .registers 2

    .line 935
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    .line 936
    return-void
.end method
