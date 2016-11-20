.class public Landroid/widget/SlidingDrawer;
.super Landroid/view/ViewGroup;
.source "SlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SlidingDrawer$1;,
        Landroid/widget/SlidingDrawer$DrawerToggler;,
        Landroid/widget/SlidingDrawer$OnDrawerCloseListener;,
        Landroid/widget/SlidingDrawer$OnDrawerOpenListener;,
        Landroid/widget/SlidingDrawer$OnDrawerScrollListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ANIMATION_FRAME_DURATION:I = 0x10

.field private static final COLLAPSED_FULL_CLOSED:I = -0x2712

.field private static final EXPANDED_FULL_OPEN:I = -0x2711

.field private static final MAXIMUM_ACCELERATION:F = 2000.0f

.field private static final MAXIMUM_MAJOR_VELOCITY:F = 200.0f

.field private static final MAXIMUM_MINOR_VELOCITY:F = 150.0f

.field private static final MAXIMUM_TAP_VELOCITY:F = 100.0f

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field private static final TAP_THRESHOLD:I = 0x6

.field private static final VELOCITY_UNITS:I = 0x3e8


# instance fields
.field private mAllowSingleTap:Z

.field private mAnimateOnClick:Z

.field private mAnimatedAcceleration:F

.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationLastTime:J

.field private mAnimationPosition:F

.field private mBottomOffset:I

.field private mContent:Landroid/view/View;

.field private final mContentId:I

.field private mCurrentAnimationTime:J

.field private mExpanded:Z

.field private final mFrame:Landroid/graphics/Rect;

.field private mHandle:Landroid/view/View;

.field private mHandleHeight:I

.field private final mHandleId:I

.field private mHandleWidth:I

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mLocked:Z

.field private final mMaximumAcceleration:I

.field private final mMaximumMajorVelocity:I

.field private final mMaximumMinorVelocity:I

.field private final mMaximumTapVelocity:I

.field private mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

.field private mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

.field private mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

.field private final mSlidingRunnable:Ljava/lang/Runnable;

.field private final mTapThreshold:I

.field private mTopOffset:I

.field private mTouchDelta:I

.field private mTracking:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVelocityUnits:I

.field private mVertical:Z


# direct methods
.method static synthetic -get0(Landroid/widget/SlidingDrawer;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimateOnClick:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/widget/SlidingDrawer;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    #@2
    return v0
.end method

.method static synthetic -wrap0(Landroid/widget/SlidingDrawer;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->doAnimation()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 184
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 197
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    const/high16 v8, 0x3f000000    # 0.5f

    #@4
    const/4 v7, 0x0

    #@5
    .line 214
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@8
    .line 107
    new-instance v5, Landroid/graphics/Rect;

    #@a
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    #@d
    iput-object v5, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    #@f
    .line 108
    new-instance v5, Landroid/graphics/Rect;

    #@11
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    #@14
    iput-object v5, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    #@16
    .line 974
    new-instance v5, Landroid/widget/SlidingDrawer$1;

    #@18
    invoke-direct {v5, p0}, Landroid/widget/SlidingDrawer$1;-><init>(Landroid/widget/SlidingDrawer;)V

    #@1b
    iput-object v5, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    #@1d
    .line 217
    sget-object v5, Landroid/R$styleable;->SlidingDrawer:[I

    #@1f
    .line 216
    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@22
    move-result-object v0

    #@23
    .line 219
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@26
    move-result v4

    #@27
    .line 220
    .local v4, "orientation":I
    if-ne v4, v6, :cond_0

    #@29
    move v5, v6

    #@2a
    :goto_0
    iput-boolean v5, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    #@2c
    .line 221
    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@2f
    move-result v5

    #@30
    float-to-int v5, v5

    #@31
    iput v5, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    #@33
    .line 222
    const/4 v5, 0x2

    #@34
    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@37
    move-result v5

    #@38
    float-to-int v5, v5

    #@39
    iput v5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@3b
    .line 223
    const/4 v5, 0x3

    #@3c
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@3f
    move-result v5

    #@40
    iput-boolean v5, p0, Landroid/widget/SlidingDrawer;->mAllowSingleTap:Z

    #@42
    .line 224
    const/4 v5, 0x6

    #@43
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@46
    move-result v5

    #@47
    iput-boolean v5, p0, Landroid/widget/SlidingDrawer;->mAnimateOnClick:Z

    #@49
    .line 226
    const/4 v5, 0x4

    #@4a
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@4d
    move-result v3

    #@4e
    .line 227
    .local v3, "handleId":I
    if-nez v3, :cond_1

    #@50
    .line 228
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@52
    const-string/jumbo v6, "The handle attribute is required and must refer to a valid child."

    #@55
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@58
    throw v5

    #@59
    .end local v3    # "handleId":I
    :cond_0
    move v5, v7

    #@5a
    .line 220
    goto :goto_0

    #@5b
    .line 232
    .restart local v3    # "handleId":I
    :cond_1
    const/4 v5, 0x5

    #@5c
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@5f
    move-result v1

    #@60
    .line 233
    .local v1, "contentId":I
    if-nez v1, :cond_2

    #@62
    .line 234
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@64
    const-string/jumbo v6, "The content attribute is required and must refer to a valid child."

    #@67
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6a
    throw v5

    #@6b
    .line 238
    :cond_2
    if-ne v3, v1, :cond_3

    #@6d
    .line 239
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@6f
    const-string/jumbo v6, "The content and handle attributes must refer to different children."

    #@72
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@75
    throw v5

    #@76
    .line 243
    :cond_3
    iput v3, p0, Landroid/widget/SlidingDrawer;->mHandleId:I

    #@78
    .line 244
    iput v1, p0, Landroid/widget/SlidingDrawer;->mContentId:I

    #@7a
    .line 246
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@7d
    move-result-object v5

    #@7e
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@81
    move-result-object v5

    #@82
    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    #@84
    .line 247
    .local v2, "density":F
    const/high16 v5, 0x40c00000    # 6.0f

    #@86
    mul-float/2addr v5, v2

    #@87
    add-float/2addr v5, v8

    #@88
    float-to-int v5, v5

    #@89
    iput v5, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    #@8b
    .line 248
    const/high16 v5, 0x42c80000    # 100.0f

    #@8d
    mul-float/2addr v5, v2

    #@8e
    add-float/2addr v5, v8

    #@8f
    float-to-int v5, v5

    #@90
    iput v5, p0, Landroid/widget/SlidingDrawer;->mMaximumTapVelocity:I

    #@92
    .line 249
    const/high16 v5, 0x43160000    # 150.0f

    #@94
    mul-float/2addr v5, v2

    #@95
    add-float/2addr v5, v8

    #@96
    float-to-int v5, v5

    #@97
    iput v5, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    #@99
    .line 250
    const/high16 v5, 0x43480000    # 200.0f

    #@9b
    mul-float/2addr v5, v2

    #@9c
    add-float/2addr v5, v8

    #@9d
    float-to-int v5, v5

    #@9e
    iput v5, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    #@a0
    .line 251
    const/high16 v5, 0x44fa0000    # 2000.0f

    #@a2
    mul-float/2addr v5, v2

    #@a3
    add-float/2addr v5, v8

    #@a4
    float-to-int v5, v5

    #@a5
    iput v5, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    #@a7
    .line 252
    const/high16 v5, 0x447a0000    # 1000.0f

    #@a9
    mul-float/2addr v5, v2

    #@aa
    add-float/2addr v5, v8

    #@ab
    float-to-int v5, v5

    #@ac
    iput v5, p0, Landroid/widget/SlidingDrawer;->mVelocityUnits:I

    #@ae
    .line 254
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@b1
    .line 256
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    #@b4
    .line 213
    return-void
.end method

.method private animateClose(I)V
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 501
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    #@3
    .line 502
    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    #@5
    int-to-float v0, v0

    #@6
    const/4 v1, 0x1

    #@7
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/SlidingDrawer;->performFling(IFZ)V

    #@a
    .line 500
    return-void
.end method

.method private animateOpen(I)V
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 506
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    #@3
    .line 507
    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    #@5
    neg-int v0, v0

    #@6
    int-to-float v0, v0

    #@7
    const/4 v1, 0x1

    #@8
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/SlidingDrawer;->performFling(IFZ)V

    #@b
    .line 505
    return-void
.end method

.method private closeDrawer()V
    .locals 2

    #@0
    .prologue
    .line 842
    const/16 v0, -0x2712

    #@2
    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    #@5
    .line 843
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    #@7
    const/16 v1, 0x8

    #@9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@c
    .line 844
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    #@e
    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    #@11
    .line 846
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    #@13
    if-nez v0, :cond_0

    #@15
    .line 847
    return-void

    #@16
    .line 850
    :cond_0
    const/4 v0, 0x0

    #@17
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    #@19
    .line 851
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 852
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    #@1f
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerCloseListener;->onDrawerClosed()V

    #@22
    .line 841
    :cond_1
    return-void
.end method

.method private doAnimation()V
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x10

    #@2
    const/4 v3, 0x0

    #@3
    .line 699
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 700
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->incrementAnimation()V

    #@a
    .line 701
    iget v1, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    #@c
    iget v2, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    #@e
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    #@10
    if-eqz v0, :cond_1

    #@12
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    #@15
    move-result v0

    #@16
    :goto_0
    add-int/2addr v0, v2

    #@17
    add-int/lit8 v0, v0, -0x1

    #@19
    int-to-float v0, v0

    #@1a
    cmpl-float v0, v1, v0

    #@1c
    if-ltz v0, :cond_2

    #@1e
    .line 702
    iput-boolean v3, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    #@20
    .line 703
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    #@23
    .line 698
    :cond_0
    :goto_1
    return-void

    #@24
    .line 701
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    #@27
    move-result v0

    #@28
    goto :goto_0

    #@29
    .line 704
    :cond_2
    iget v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    #@2b
    iget v1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@2d
    int-to-float v1, v1

    #@2e
    cmpg-float v0, v0, v1

    #@30
    if-gez v0, :cond_3

    #@32
    .line 705
    iput-boolean v3, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    #@34
    .line 706
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    #@37
    goto :goto_1

    #@38
    .line 708
    :cond_3
    iget v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    #@3a
    float-to-int v0, v0

    #@3b
    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    #@3e
    .line 709
    iget-wide v0, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    #@40
    add-long/2addr v0, v4

    #@41
    iput-wide v0, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    #@43
    .line 710
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    #@45
    invoke-virtual {p0, v0, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    #@48
    goto :goto_1
.end method

.method private incrementAnimation()V
    .locals 8

    #@0
    .prologue
    .line 716
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v2

    #@4
    .line 717
    .local v2, "now":J
    iget-wide v6, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    #@6
    sub-long v6, v2, v6

    #@8
    long-to-float v6, v6

    #@9
    const/high16 v7, 0x447a0000    # 1000.0f

    #@b
    div-float v4, v6, v7

    #@d
    .line 718
    .local v4, "t":F
    iget v1, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    #@f
    .line 719
    .local v1, "position":F
    iget v5, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    #@11
    .line 720
    .local v5, "v":F
    iget v0, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    #@13
    .line 721
    .local v0, "a":F
    mul-float v6, v5, v4

    #@15
    add-float/2addr v6, v1

    #@16
    const/high16 v7, 0x3f000000    # 0.5f

    #@18
    mul-float/2addr v7, v0

    #@19
    mul-float/2addr v7, v4

    #@1a
    mul-float/2addr v7, v4

    #@1b
    add-float/2addr v6, v7

    #@1c
    iput v6, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    #@1e
    .line 722
    mul-float v6, v0, v4

    #@20
    add-float/2addr v6, v5

    #@21
    iput v6, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    #@23
    .line 723
    iput-wide v2, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    #@25
    .line 715
    return-void
.end method

.method private moveHandle(I)V
    .locals 12
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/16 v9, -0x2711

    #@3
    const/16 v8, -0x2712

    #@5
    .line 585
    iget-object v3, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    #@7
    .line 587
    .local v3, "handle":Landroid/view/View;
    iget-boolean v7, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    #@9
    if-eqz v7, :cond_4

    #@b
    .line 588
    if-ne p1, v9, :cond_0

    #@d
    .line 589
    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@f
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    #@12
    move-result v8

    #@13
    sub-int/2addr v7, v8

    #@14
    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@17
    .line 590
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@1a
    .line 584
    :goto_0
    return-void

    #@1b
    .line 591
    :cond_0
    if-ne p1, v8, :cond_1

    #@1d
    .line 592
    iget v7, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    #@1f
    iget v8, p0, Landroid/view/View;->mBottom:I

    #@21
    add-int/2addr v7, v8

    #@22
    iget v8, p0, Landroid/view/View;->mTop:I

    #@24
    sub-int/2addr v7, v8

    #@25
    .line 593
    iget v8, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    #@27
    .line 592
    sub-int/2addr v7, v8

    #@28
    .line 593
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    #@2b
    move-result v8

    #@2c
    .line 592
    sub-int/2addr v7, v8

    #@2d
    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@30
    .line 594
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@33
    goto :goto_0

    #@34
    .line 596
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    #@37
    move-result v6

    #@38
    .line 597
    .local v6, "top":I
    sub-int v1, p1, v6

    #@3a
    .line 598
    .local v1, "deltaY":I
    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@3c
    if-ge p1, v7, :cond_3

    #@3e
    .line 599
    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@40
    sub-int v1, v7, v6

    #@42
    .line 603
    :cond_2
    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@45
    .line 605
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    #@47
    .line 606
    .local v2, "frame":Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    #@49
    .line 608
    .local v5, "region":Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    #@4c
    .line 609
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@4f
    .line 611
    iget v7, v2, Landroid/graphics/Rect;->left:I

    #@51
    iget v8, v2, Landroid/graphics/Rect;->top:I

    #@53
    sub-int/2addr v8, v1

    #@54
    iget v9, v2, Landroid/graphics/Rect;->right:I

    #@56
    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    #@58
    sub-int/2addr v10, v1

    #@59
    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    #@5c
    .line 612
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    #@5e
    sub-int/2addr v7, v1

    #@5f
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    #@62
    move-result v8

    #@63
    .line 613
    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    #@65
    sub-int/2addr v9, v1

    #@66
    iget-object v10, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    #@68
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    #@6b
    move-result v10

    #@6c
    add-int/2addr v9, v10

    #@6d
    .line 612
    invoke-virtual {v5, v11, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    #@70
    .line 615
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    #@73
    goto :goto_0

    #@74
    .line 600
    .end local v2    # "frame":Landroid/graphics/Rect;
    .end local v5    # "region":Landroid/graphics/Rect;
    :cond_3
    iget v7, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    #@76
    iget v8, p0, Landroid/view/View;->mBottom:I

    #@78
    add-int/2addr v7, v8

    #@79
    iget v8, p0, Landroid/view/View;->mTop:I

    #@7b
    sub-int/2addr v7, v8

    #@7c
    iget v8, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    #@7e
    sub-int/2addr v7, v8

    #@7f
    sub-int/2addr v7, v6

    #@80
    if-le v1, v7, :cond_2

    #@82
    .line 601
    iget v7, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    #@84
    iget v8, p0, Landroid/view/View;->mBottom:I

    #@86
    add-int/2addr v7, v8

    #@87
    iget v8, p0, Landroid/view/View;->mTop:I

    #@89
    sub-int/2addr v7, v8

    #@8a
    iget v8, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    #@8c
    sub-int/2addr v7, v8

    #@8d
    sub-int v1, v7, v6

    #@8f
    goto :goto_1

    #@90
    .line 618
    .end local v1    # "deltaY":I
    .end local v6    # "top":I
    :cond_4
    if-ne p1, v9, :cond_5

    #@92
    .line 619
    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@94
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    #@97
    move-result v8

    #@98
    sub-int/2addr v7, v8

    #@99
    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@9c
    .line 620
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@9f
    goto/16 :goto_0

    #@a1
    .line 621
    :cond_5
    if-ne p1, v8, :cond_6

    #@a3
    .line 622
    iget v7, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    #@a5
    iget v8, p0, Landroid/view/View;->mRight:I

    #@a7
    add-int/2addr v7, v8

    #@a8
    iget v8, p0, Landroid/view/View;->mLeft:I

    #@aa
    sub-int/2addr v7, v8

    #@ab
    .line 623
    iget v8, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    #@ad
    .line 622
    sub-int/2addr v7, v8

    #@ae
    .line 623
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    #@b1
    move-result v8

    #@b2
    .line 622
    sub-int/2addr v7, v8

    #@b3
    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@b6
    .line 624
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@b9
    goto/16 :goto_0

    #@bb
    .line 626
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    #@be
    move-result v4

    #@bf
    .line 627
    .local v4, "left":I
    sub-int v0, p1, v4

    #@c1
    .line 628
    .local v0, "deltaX":I
    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@c3
    if-ge p1, v7, :cond_8

    #@c5
    .line 629
    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@c7
    sub-int v0, v7, v4

    #@c9
    .line 633
    :cond_7
    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@cc
    .line 635
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    #@ce
    .line 636
    .restart local v2    # "frame":Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    #@d0
    .line 638
    .restart local v5    # "region":Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    #@d3
    .line 639
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@d6
    .line 641
    iget v7, v2, Landroid/graphics/Rect;->left:I

    #@d8
    sub-int/2addr v7, v0

    #@d9
    iget v8, v2, Landroid/graphics/Rect;->top:I

    #@db
    iget v9, v2, Landroid/graphics/Rect;->right:I

    #@dd
    sub-int/2addr v9, v0

    #@de
    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    #@e0
    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    #@e3
    .line 642
    iget v7, v2, Landroid/graphics/Rect;->right:I

    #@e5
    sub-int/2addr v7, v0

    #@e6
    .line 643
    iget v8, v2, Landroid/graphics/Rect;->right:I

    #@e8
    sub-int/2addr v8, v0

    #@e9
    iget-object v9, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    #@eb
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    #@ee
    move-result v9

    #@ef
    add-int/2addr v8, v9

    #@f0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    #@f3
    move-result v9

    #@f4
    .line 642
    invoke-virtual {v5, v7, v11, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    #@f7
    .line 645
    invoke-virtual {p0, v5}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    #@fa
    goto/16 :goto_0

    #@fc
    .line 630
    .end local v2    # "frame":Landroid/graphics/Rect;
    .end local v5    # "region":Landroid/graphics/Rect;
    :cond_8
    iget v7, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    #@fe
    iget v8, p0, Landroid/view/View;->mRight:I

    #@100
    add-int/2addr v7, v8

    #@101
    iget v8, p0, Landroid/view/View;->mLeft:I

    #@103
    sub-int/2addr v7, v8

    #@104
    iget v8, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    #@106
    sub-int/2addr v7, v8

    #@107
    sub-int/2addr v7, v4

    #@108
    if-le v0, v7, :cond_7

    #@10a
    .line 631
    iget v7, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    #@10c
    iget v8, p0, Landroid/view/View;->mRight:I

    #@10e
    add-int/2addr v7, v8

    #@10f
    iget v8, p0, Landroid/view/View;->mLeft:I

    #@111
    sub-int/2addr v7, v8

    #@112
    iget v8, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    #@114
    sub-int/2addr v7, v8

    #@115
    sub-int v0, v7, v4

    #@117
    goto :goto_2
.end method

.method private openDrawer()V
    .locals 2

    #@0
    .prologue
    .line 857
    const/16 v0, -0x2711

    #@2
    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    #@5
    .line 858
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@b
    .line 860
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 861
    return-void

    #@10
    .line 864
    :cond_0
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    #@13
    .line 866
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 867
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    #@19
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    #@1c
    .line 856
    :cond_1
    return-void
.end method

.method private performFling(IFZ)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "velocity"    # F
    .param p3, "always"    # Z

    #@0
    .prologue
    const-wide/16 v6, 0x10

    #@2
    const/4 v4, 0x0

    #@3
    .line 511
    int-to-float v2, p1

    #@4
    iput v2, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    #@6
    .line 512
    iput p2, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    #@8
    .line 514
    iget-boolean v2, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    #@a
    if-eqz v2, :cond_4

    #@c
    .line 515
    if-nez p3, :cond_0

    #@e
    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    #@10
    int-to-float v2, v2

    #@11
    cmpl-float v2, p2, v2

    #@13
    if-gtz v2, :cond_0

    #@15
    .line 516
    iget v3, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@17
    iget-boolean v2, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    #@19
    if-eqz v2, :cond_2

    #@1b
    iget v2, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    #@1d
    :goto_0
    add-int/2addr v2, v3

    #@1e
    if-le p1, v2, :cond_3

    #@20
    .line 517
    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    #@22
    neg-int v2, v2

    #@23
    int-to-float v2, v2

    #@24
    cmpl-float v2, p2, v2

    #@26
    if-lez v2, :cond_3

    #@28
    .line 520
    :cond_0
    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    #@2a
    int-to-float v2, v2

    #@2b
    iput v2, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    #@2d
    .line 521
    cmpg-float v2, p2, v4

    #@2f
    if-gez v2, :cond_1

    #@31
    .line 522
    iput v4, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    #@33
    .line 550
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@36
    move-result-wide v0

    #@37
    .line 551
    .local v0, "now":J
    iput-wide v0, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    #@39
    .line 552
    add-long v2, v0, v6

    #@3b
    iput-wide v2, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    #@3d
    .line 553
    const/4 v2, 0x1

    #@3e
    iput-boolean v2, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    #@40
    .line 554
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    #@42
    invoke-virtual {p0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@45
    .line 555
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    #@47
    invoke-virtual {p0, v2, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    #@4a
    .line 556
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->stopTracking()V

    #@4d
    .line 510
    return-void

    #@4e
    .line 516
    .end local v0    # "now":J
    :cond_2
    iget v2, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    #@50
    goto :goto_0

    #@51
    .line 526
    :cond_3
    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    #@53
    neg-int v2, v2

    #@54
    int-to-float v2, v2

    #@55
    iput v2, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    #@57
    .line 527
    cmpl-float v2, p2, v4

    #@59
    if-lez v2, :cond_1

    #@5b
    .line 528
    iput v4, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    #@5d
    goto :goto_1

    #@5e
    .line 532
    :cond_4
    if-nez p3, :cond_7

    #@60
    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    #@62
    int-to-float v2, v2

    #@63
    cmpl-float v2, p2, v2

    #@65
    if-gtz v2, :cond_5

    #@67
    .line 533
    iget-boolean v2, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    #@69
    if-eqz v2, :cond_6

    #@6b
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    #@6e
    move-result v2

    #@6f
    :goto_2
    div-int/lit8 v2, v2, 0x2

    #@71
    if-le p1, v2, :cond_7

    #@73
    .line 534
    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    #@75
    neg-int v2, v2

    #@76
    int-to-float v2, v2

    #@77
    cmpl-float v2, p2, v2

    #@79
    if-lez v2, :cond_7

    #@7b
    .line 536
    :cond_5
    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    #@7d
    int-to-float v2, v2

    #@7e
    iput v2, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    #@80
    .line 537
    cmpg-float v2, p2, v4

    #@82
    if-gez v2, :cond_1

    #@84
    .line 538
    iput v4, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    #@86
    goto :goto_1

    #@87
    .line 533
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    #@8a
    move-result v2

    #@8b
    goto :goto_2

    #@8c
    .line 543
    :cond_7
    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    #@8e
    neg-int v2, v2

    #@8f
    int-to-float v2, v2

    #@90
    iput v2, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    #@92
    .line 544
    cmpl-float v2, p2, v4

    #@94
    if-lez v2, :cond_1

    #@96
    .line 545
    iput v4, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    #@98
    goto :goto_1
.end method

.method private prepareContent()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/high16 v8, 0x40000000    # 2.0f

    #@3
    .line 651
    iget-boolean v5, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    #@5
    if-eqz v5, :cond_0

    #@7
    .line 652
    return-void

    #@8
    .line 657
    :cond_0
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    #@a
    .line 658
    .local v2, "content":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    #@d
    move-result v5

    #@e
    if-eqz v5, :cond_1

    #@10
    .line 659
    iget-boolean v5, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    #@12
    if-eqz v5, :cond_3

    #@14
    .line 660
    iget v0, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    #@16
    .line 661
    .local v0, "childHeight":I
    iget v5, p0, Landroid/view/View;->mBottom:I

    #@18
    iget v6, p0, Landroid/view/View;->mTop:I

    #@1a
    sub-int/2addr v5, v6

    #@1b
    sub-int/2addr v5, v0

    #@1c
    iget v6, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@1e
    sub-int v3, v5, v6

    #@20
    .line 662
    .local v3, "height":I
    iget v5, p0, Landroid/view/View;->mRight:I

    #@22
    iget v6, p0, Landroid/view/View;->mLeft:I

    #@24
    sub-int/2addr v5, v6

    #@25
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@28
    move-result v5

    #@29
    .line 663
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@2c
    move-result v6

    #@2d
    .line 662
    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    #@30
    .line 664
    iget v5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@32
    add-int/2addr v5, v0

    #@33
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    #@36
    move-result v6

    #@37
    .line 665
    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@39
    add-int/2addr v7, v0

    #@3a
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    #@3d
    move-result v8

    #@3e
    add-int/2addr v7, v8

    #@3f
    .line 664
    invoke-virtual {v2, v9, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    #@42
    .line 678
    .end local v0    # "childHeight":I
    .end local v3    # "height":I
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v5}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    #@49
    .line 679
    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    #@4c
    move-result v5

    #@4d
    if-nez v5, :cond_2

    #@4f
    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    #@52
    .line 681
    :cond_2
    const/16 v5, 0x8

    #@54
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    #@57
    .line 650
    return-void

    #@58
    .line 667
    :cond_3
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    #@5a
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    #@5d
    move-result v1

    #@5e
    .line 668
    .local v1, "childWidth":I
    iget v5, p0, Landroid/view/View;->mRight:I

    #@60
    iget v6, p0, Landroid/view/View;->mLeft:I

    #@62
    sub-int/2addr v5, v6

    #@63
    sub-int/2addr v5, v1

    #@64
    iget v6, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@66
    sub-int v4, v5, v6

    #@68
    .line 669
    .local v4, "width":I
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@6b
    move-result v5

    #@6c
    .line 670
    iget v6, p0, Landroid/view/View;->mBottom:I

    #@6e
    iget v7, p0, Landroid/view/View;->mTop:I

    #@70
    sub-int/2addr v6, v7

    #@71
    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@74
    move-result v6

    #@75
    .line 669
    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    #@78
    .line 671
    iget v5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@7a
    add-int/2addr v5, v1

    #@7b
    .line 672
    iget v6, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@7d
    add-int/2addr v6, v1

    #@7e
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    #@81
    move-result v7

    #@82
    add-int/2addr v6, v7

    #@83
    .line 673
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    #@86
    move-result v7

    #@87
    .line 671
    invoke-virtual {v2, v5, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    #@8a
    goto :goto_0
.end method

.method private prepareTracking(I)V
    .locals 8
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 560
    iput-boolean v4, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    #@4
    .line 561
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@7
    move-result-object v5

    #@8
    iput-object v5, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@a
    .line 562
    iget-boolean v5, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    #@c
    if-eqz v5, :cond_0

    #@e
    move v2, v3

    #@f
    .line 563
    .local v2, "opening":Z
    :goto_0
    if-eqz v2, :cond_2

    #@11
    .line 564
    iget v3, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    #@13
    int-to-float v3, v3

    #@14
    iput v3, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    #@16
    .line 565
    iget v3, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    #@18
    int-to-float v3, v3

    #@19
    iput v3, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    #@1b
    .line 566
    iget v5, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    #@1d
    .line 567
    iget-boolean v3, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    #@1f
    if-eqz v3, :cond_1

    #@21
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    #@24
    move-result v3

    #@25
    iget v6, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    #@27
    :goto_1
    sub-int/2addr v3, v6

    #@28
    .line 566
    add-int/2addr v3, v5

    #@29
    int-to-float v3, v3

    #@2a
    iput v3, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    #@2c
    .line 568
    iget v3, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    #@2e
    float-to-int v3, v3

    #@2f
    invoke-direct {p0, v3}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    #@32
    .line 569
    iput-boolean v4, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    #@34
    .line 570
    iget-object v3, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    #@36
    invoke-virtual {p0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@39
    .line 571
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3c
    move-result-wide v0

    #@3d
    .line 572
    .local v0, "now":J
    iput-wide v0, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    #@3f
    .line 573
    const-wide/16 v6, 0x10

    #@41
    add-long/2addr v6, v0

    #@42
    iput-wide v6, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    #@44
    .line 574
    iput-boolean v4, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    #@46
    .line 559
    .end local v0    # "now":J
    :goto_2
    return-void

    #@47
    .end local v2    # "opening":Z
    :cond_0
    move v2, v4

    #@48
    .line 562
    goto :goto_0

    #@49
    .line 567
    .restart local v2    # "opening":Z
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    #@4c
    move-result v3

    #@4d
    iget v6, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    #@4f
    goto :goto_1

    #@50
    .line 576
    :cond_2
    iget-boolean v4, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    #@52
    if-eqz v4, :cond_3

    #@54
    .line 577
    iput-boolean v3, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    #@56
    .line 578
    iget-object v3, p0, Landroid/widget/SlidingDrawer;->mSlidingRunnable:Ljava/lang/Runnable;

    #@58
    invoke-virtual {p0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@5b
    .line 580
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    #@5e
    goto :goto_2
.end method

.method private stopTracking()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 685
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    #@4
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    #@7
    .line 686
    iput-boolean v2, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    #@9
    .line 688
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 689
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    #@f
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    #@12
    .line 692
    :cond_0
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 693
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@18
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    #@1b
    .line 694
    iput-object v1, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1d
    .line 684
    :cond_1
    return-void
.end method


# virtual methods
.method public animateClose()V
    .locals 2

    #@0
    .prologue
    .line 800
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->prepareContent()V

    #@3
    .line 801
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    #@5
    .line 802
    .local v0, "scrollListener":Landroid/widget/SlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    #@7
    .line 803
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    #@a
    .line 805
    :cond_0
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    #@c
    if-eqz v1, :cond_2

    #@e
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    #@10
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@13
    move-result v1

    #@14
    :goto_0
    invoke-direct {p0, v1}, Landroid/widget/SlidingDrawer;->animateClose(I)V

    #@17
    .line 807
    if-eqz v0, :cond_1

    #@19
    .line 808
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    #@1c
    .line 799
    :cond_1
    return-void

    #@1d
    .line 805
    :cond_2
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    #@1f
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    #@22
    move-result v1

    #@23
    goto :goto_0
.end method

.method public animateOpen()V
    .locals 2

    #@0
    .prologue
    .line 822
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->prepareContent()V

    #@3
    .line 823
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    #@5
    .line 824
    .local v0, "scrollListener":Landroid/widget/SlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    #@7
    .line 825
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    #@a
    .line 827
    :cond_0
    iget-boolean v1, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    #@c
    if-eqz v1, :cond_2

    #@e
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    #@10
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@13
    move-result v1

    #@14
    :goto_0
    invoke-direct {p0, v1}, Landroid/widget/SlidingDrawer;->animateOpen(I)V

    #@17
    .line 829
    const/16 v1, 0x20

    #@19
    invoke-virtual {p0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    #@1c
    .line 831
    if-eqz v0, :cond_1

    #@1e
    .line 832
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    #@21
    .line 821
    :cond_1
    return-void

    #@22
    .line 827
    :cond_2
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    #@24
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    #@27
    move-result v1

    #@28
    goto :goto_0
.end method

.method public animateToggle()V
    .locals 1

    #@0
    .prologue
    .line 755
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 756
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->animateOpen()V

    #@7
    .line 754
    :goto_0
    return-void

    #@8
    .line 758
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->animateClose()V

    #@b
    goto :goto_0
.end method

.method public close()V
    .locals 0

    #@0
    .prologue
    .line 785
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    #@3
    .line 786
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@6
    .line 787
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    #@9
    .line 784
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    .line 306
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    #@6
    move-result-wide v2

    #@7
    .line 307
    .local v2, "drawingTime":J
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    #@9
    .line 308
    .local v1, "handle":Landroid/view/View;
    iget-boolean v4, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    #@b
    .line 310
    .local v4, "isVertical":Z
    invoke-virtual {p0, p1, v1, v2, v3}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    #@e
    .line 312
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    #@10
    if-nez v6, :cond_0

    #@12
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    #@14
    if-eqz v6, :cond_6

    #@16
    .line 313
    :cond_0
    iget-object v6, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    #@18
    invoke-virtual {v6}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    #@1b
    move-result-object v0

    #@1c
    .line 314
    .local v0, "cache":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    #@1e
    .line 315
    if-eqz v4, :cond_2

    #@20
    .line 316
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    #@23
    move-result v5

    #@24
    int-to-float v5, v5

    #@25
    invoke-virtual {p1, v0, v8, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@28
    .line 305
    .end local v0    # "cache":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    #@29
    .line 318
    .restart local v0    # "cache":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    #@2c
    move-result v5

    #@2d
    int-to-float v5, v5

    #@2e
    invoke-virtual {p1, v0, v5, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@31
    goto :goto_0

    #@32
    .line 321
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@35
    .line 322
    if-eqz v4, :cond_5

    #@37
    move v6, v5

    #@38
    :goto_1
    int-to-float v6, v6

    #@39
    .line 323
    if-eqz v4, :cond_4

    #@3b
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@3e
    move-result v5

    #@3f
    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@41
    sub-int/2addr v5, v7

    #@42
    :cond_4
    int-to-float v5, v5

    #@43
    .line 322
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    #@46
    .line 324
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    #@48
    invoke-virtual {p0, p1, v5, v2, v3}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    #@4b
    .line 325
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@4e
    goto :goto_0

    #@4f
    .line 322
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    #@52
    move-result v6

    #@53
    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@55
    sub-int/2addr v6, v7

    #@56
    goto :goto_1

    #@57
    .line 327
    .end local v0    # "cache":Landroid/graphics/Bitmap;
    :cond_6
    iget-boolean v5, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    #@59
    if-eqz v5, :cond_1

    #@5b
    .line 328
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    #@5d
    invoke-virtual {p0, p1, v5, v2, v3}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    #@60
    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 838
    const-class v0, Landroid/widget/SlidingDrawer;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 918
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 908
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public isMoving()Z
    .locals 1

    #@0
    .prologue
    .line 954
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x1

    #@8
    goto :goto_0
.end method

.method public isOpened()Z
    .locals 1

    #@0
    .prologue
    .line 945
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    #@2
    return v0
.end method

.method public lock()V
    .locals 1

    #@0
    .prologue
    .line 936
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    #@3
    .line 935
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 261
    iget v0, p0, Landroid/widget/SlidingDrawer;->mHandleId:I

    #@3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    #@9
    .line 262
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    #@b
    if-nez v0, :cond_0

    #@d
    .line 263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "The handle attribute is must refer to an existing child."

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 266
    :cond_0
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    #@18
    new-instance v1, Landroid/widget/SlidingDrawer$DrawerToggler;

    #@1a
    invoke-direct {v1, p0, v2}, Landroid/widget/SlidingDrawer$DrawerToggler;-><init>(Landroid/widget/SlidingDrawer;Landroid/widget/SlidingDrawer$DrawerToggler;)V

    #@1d
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@20
    .line 268
    iget v0, p0, Landroid/widget/SlidingDrawer;->mContentId:I

    #@22
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@25
    move-result-object v0

    #@26
    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    #@28
    .line 269
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    #@2a
    if-nez v0, :cond_1

    #@2c
    .line 270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2e
    const-string/jumbo v1, "The content attribute is must refer to an existing child."

    #@31
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0

    #@35
    .line 273
    :cond_1
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    #@37
    const/16 v1, 0x8

    #@39
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@3c
    .line 260
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 373
    iget-boolean v7, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    #@4
    if-eqz v7, :cond_0

    #@6
    .line 374
    return v9

    #@7
    .line 377
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@a
    move-result v0

    #@b
    .line 379
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@e
    move-result v5

    #@f
    .line 380
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@12
    move-result v6

    #@13
    .line 382
    .local v6, "y":F
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    #@15
    .line 383
    .local v1, "frame":Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    #@17
    .line 385
    .local v2, "handle":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    #@1a
    .line 386
    iget-boolean v7, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    #@1c
    if-nez v7, :cond_1

    #@1e
    float-to-int v7, v5

    #@1f
    float-to-int v8, v6

    #@20
    invoke-virtual {v1, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    #@23
    move-result v7

    #@24
    if-eqz v7, :cond_4

    #@26
    .line 390
    :cond_1
    if-nez v0, :cond_3

    #@28
    .line 391
    iput-boolean v10, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    #@2a
    .line 393
    invoke-virtual {v2, v10}, Landroid/view/View;->setPressed(Z)V

    #@2d
    .line 395
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->prepareContent()V

    #@30
    .line 398
    iget-object v7, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    #@32
    if-eqz v7, :cond_2

    #@34
    .line 399
    iget-object v7, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    #@36
    invoke-interface {v7}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    #@39
    .line 402
    :cond_2
    iget-boolean v7, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    #@3b
    if-eqz v7, :cond_5

    #@3d
    .line 403
    iget-object v7, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    #@3f
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    #@42
    move-result v4

    #@43
    .line 404
    .local v4, "top":I
    float-to-int v7, v6

    #@44
    sub-int/2addr v7, v4

    #@45
    iput v7, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    #@47
    .line 405
    invoke-direct {p0, v4}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    #@4a
    .line 411
    .end local v4    # "top":I
    :goto_0
    iget-object v7, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@4c
    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@4f
    .line 414
    :cond_3
    return v10

    #@50
    .line 387
    :cond_4
    return v9

    #@51
    .line 407
    :cond_5
    iget-object v7, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    #@53
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    #@56
    move-result v3

    #@57
    .line 408
    .local v3, "left":I
    float-to-int v7, v5

    #@58
    sub-int/2addr v7, v3

    #@59
    iput v7, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    #@5b
    .line 409
    invoke-direct {p0, v3}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    #@5e
    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    .line 334
    iget-boolean v8, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    #@2
    if-eqz v8, :cond_0

    #@4
    .line 335
    return-void

    #@5
    .line 338
    :cond_0
    sub-int v7, p4, p2

    #@7
    .line 339
    .local v7, "width":I
    sub-int v6, p5, p3

    #@9
    .line 341
    .local v6, "height":I
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    #@b
    .line 343
    .local v5, "handle":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    #@e
    move-result v3

    #@f
    .line 344
    .local v3, "childWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    #@12
    move-result v0

    #@13
    .line 349
    .local v0, "childHeight":I
    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    #@15
    .line 351
    .local v4, "content":Landroid/view/View;
    iget-boolean v8, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    #@17
    if-eqz v8, :cond_2

    #@19
    .line 352
    sub-int v8, v7, v3

    #@1b
    div-int/lit8 v1, v8, 0x2

    #@1d
    .line 353
    .local v1, "childLeft":I
    iget-boolean v8, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    #@1f
    if-eqz v8, :cond_1

    #@21
    iget v2, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@23
    .line 355
    .local v2, "childTop":I
    :goto_0
    iget v8, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@25
    add-int/2addr v8, v0

    #@26
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    #@29
    move-result v9

    #@2a
    .line 356
    iget v10, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@2c
    add-int/2addr v10, v0

    #@2d
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@30
    move-result v11

    #@31
    add-int/2addr v10, v11

    #@32
    .line 355
    const/4 v11, 0x0

    #@33
    invoke-virtual {v4, v11, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    #@36
    .line 366
    :goto_1
    add-int v8, v1, v3

    #@38
    add-int v9, v2, v0

    #@3a
    invoke-virtual {v5, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    #@3d
    .line 367
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    #@40
    move-result v8

    #@41
    iput v8, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    #@43
    .line 368
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    #@46
    move-result v8

    #@47
    iput v8, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    #@49
    .line 333
    return-void

    #@4a
    .line 353
    .end local v2    # "childTop":I
    :cond_1
    sub-int v8, v6, v0

    #@4c
    iget v9, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    #@4e
    add-int v2, v8, v9

    #@50
    .restart local v2    # "childTop":I
    goto :goto_0

    #@51
    .line 358
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    :cond_2
    iget-boolean v8, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    #@53
    if-eqz v8, :cond_3

    #@55
    iget v1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@57
    .line 359
    .restart local v1    # "childLeft":I
    :goto_2
    sub-int v8, v6, v0

    #@59
    div-int/lit8 v2, v8, 0x2

    #@5b
    .line 361
    .restart local v2    # "childTop":I
    iget v8, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@5d
    add-int/2addr v8, v3

    #@5e
    .line 362
    iget v9, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@60
    add-int/2addr v9, v3

    #@61
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    #@64
    move-result v10

    #@65
    add-int/2addr v9, v10

    #@66
    .line 363
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@69
    move-result v10

    #@6a
    .line 361
    const/4 v11, 0x0

    #@6b
    invoke-virtual {v4, v8, v11, v9, v10}, Landroid/view/View;->layout(IIII)V

    #@6e
    goto :goto_1

    #@6f
    .line 358
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    :cond_3
    sub-int v8, v7, v3

    #@71
    iget v9, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    #@73
    add-int v1, v8, v9

    #@75
    .restart local v1    # "childLeft":I
    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    #@2
    .line 278
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@5
    move-result v5

    #@6
    .line 279
    .local v5, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@9
    move-result v6

    #@a
    .line 281
    .local v6, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@d
    move-result v2

    #@e
    .line 282
    .local v2, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@11
    move-result v3

    #@12
    .line 284
    .local v3, "heightSpecSize":I
    if-eqz v5, :cond_0

    #@14
    if-nez v2, :cond_1

    #@16
    .line 285
    :cond_0
    new-instance v7, Ljava/lang/RuntimeException;

    #@18
    const-string/jumbo v8, "SlidingDrawer cannot have UNSPECIFIED dimensions"

    #@1b
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v7

    #@1f
    .line 288
    :cond_1
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    #@21
    .line 289
    .local v0, "handle":Landroid/view/View;
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    #@24
    .line 291
    iget-boolean v7, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    #@26
    if-eqz v7, :cond_2

    #@28
    .line 292
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    #@2b
    move-result v7

    #@2c
    sub-int v7, v3, v7

    #@2e
    iget v8, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@30
    sub-int v1, v7, v8

    #@32
    .line 293
    .local v1, "height":I
    iget-object v7, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    #@34
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@37
    move-result v8

    #@38
    .line 294
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@3b
    move-result v9

    #@3c
    .line 293
    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    #@3f
    .line 301
    .end local v1    # "height":I
    :goto_0
    invoke-virtual {p0, v6, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    #@42
    .line 277
    return-void

    #@43
    .line 296
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@46
    move-result v7

    #@47
    sub-int v7, v6, v7

    #@49
    iget v8, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@4b
    sub-int v4, v7, v8

    #@4d
    .line 297
    .local v4, "width":I
    iget-object v7, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    #@4f
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@52
    move-result v8

    #@53
    .line 298
    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@56
    move-result v9

    #@57
    .line 297
    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    #@5a
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 419
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    #@2
    if-eqz v9, :cond_0

    #@4
    .line 420
    const/4 v9, 0x1

    #@5
    return v9

    #@6
    .line 423
    :cond_0
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    #@8
    if-eqz v9, :cond_1

    #@a
    .line 424
    iget-object v9, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@c
    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@f
    .line 425
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@12
    move-result v0

    #@13
    .line 426
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    #@16
    .line 497
    .end local v0    # "action":I
    :cond_1
    :goto_0
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    #@18
    if-nez v9, :cond_17

    #@1a
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    #@1c
    if-nez v9, :cond_17

    #@1e
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@21
    move-result v9

    #@22
    :goto_1
    return v9

    #@23
    .line 428
    .restart local v0    # "action":I
    :pswitch_0
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    #@25
    if-eqz v9, :cond_2

    #@27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@2a
    move-result v9

    #@2b
    :goto_2
    float-to-int v9, v9

    #@2c
    iget v10, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    #@2e
    sub-int/2addr v9, v10

    #@2f
    invoke-direct {p0, v9}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    #@32
    goto :goto_0

    #@33
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@36
    move-result v9

    #@37
    goto :goto_2

    #@38
    .line 432
    :pswitch_1
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@3a
    .line 433
    .local v5, "velocityTracker":Landroid/view/VelocityTracker;
    iget v9, p0, Landroid/widget/SlidingDrawer;->mVelocityUnits:I

    #@3c
    invoke-virtual {v5, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    #@3f
    .line 435
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    #@42
    move-result v8

    #@43
    .line 436
    .local v8, "yVelocity":F
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    #@46
    move-result v7

    #@47
    .line 439
    .local v7, "xVelocity":F
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    #@49
    .line 440
    .local v6, "vertical":Z
    if-eqz v6, :cond_8

    #@4b
    .line 441
    const/4 v9, 0x0

    #@4c
    cmpg-float v9, v8, v9

    #@4e
    if-gez v9, :cond_7

    #@50
    const/4 v2, 0x1

    #@51
    .line 442
    .local v2, "negative":Z
    :goto_3
    const/4 v9, 0x0

    #@52
    cmpg-float v9, v7, v9

    #@54
    if-gez v9, :cond_3

    #@56
    .line 443
    neg-float v7, v7

    #@57
    .line 445
    :cond_3
    iget v9, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    #@59
    int-to-float v9, v9

    #@5a
    cmpl-float v9, v7, v9

    #@5c
    if-lez v9, :cond_4

    #@5e
    .line 446
    iget v9, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    #@60
    int-to-float v7, v9

    #@61
    .line 458
    :cond_4
    :goto_4
    float-to-double v10, v7

    #@62
    float-to-double v12, v8

    #@63
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    #@66
    move-result-wide v10

    #@67
    double-to-float v4, v10

    #@68
    .line 459
    .local v4, "velocity":F
    if-eqz v2, :cond_5

    #@6a
    .line 460
    neg-float v4, v4

    #@6b
    .line 463
    :cond_5
    iget-object v9, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    #@6d
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    #@70
    move-result v3

    #@71
    .line 464
    .local v3, "top":I
    iget-object v9, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    #@73
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    #@76
    move-result v1

    #@77
    .line 466
    .local v1, "left":I
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    #@7a
    move-result v9

    #@7b
    iget v10, p0, Landroid/widget/SlidingDrawer;->mMaximumTapVelocity:I

    #@7d
    int-to-float v10, v10

    #@7e
    cmpg-float v9, v9, v10

    #@80
    if-gez v9, :cond_15

    #@82
    .line 467
    if-eqz v6, :cond_d

    #@84
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    #@86
    if-eqz v9, :cond_b

    #@88
    iget v9, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    #@8a
    iget v10, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@8c
    add-int/2addr v9, v10

    #@8d
    if-ge v3, v9, :cond_b

    #@8f
    .line 474
    :cond_6
    :goto_5
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mAllowSingleTap:Z

    #@91
    if-eqz v9, :cond_12

    #@93
    .line 475
    const/4 v9, 0x0

    #@94
    invoke-virtual {p0, v9}, Landroid/view/View;->playSoundEffect(I)V

    #@97
    .line 477
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    #@99
    if-eqz v9, :cond_10

    #@9b
    .line 478
    if-eqz v6, :cond_f

    #@9d
    .end local v3    # "top":I
    :goto_6
    invoke-direct {p0, v3}, Landroid/widget/SlidingDrawer;->animateClose(I)V

    #@a0
    goto/16 :goto_0

    #@a2
    .line 441
    .end local v1    # "left":I
    .end local v2    # "negative":Z
    .end local v4    # "velocity":F
    :cond_7
    const/4 v2, 0x0

    #@a3
    .restart local v2    # "negative":Z
    goto :goto_3

    #@a4
    .line 449
    .end local v2    # "negative":Z
    :cond_8
    const/4 v9, 0x0

    #@a5
    cmpg-float v9, v7, v9

    #@a7
    if-gez v9, :cond_a

    #@a9
    const/4 v2, 0x1

    #@aa
    .line 450
    .restart local v2    # "negative":Z
    :goto_7
    const/4 v9, 0x0

    #@ab
    cmpg-float v9, v8, v9

    #@ad
    if-gez v9, :cond_9

    #@af
    .line 451
    neg-float v8, v8

    #@b0
    .line 453
    :cond_9
    iget v9, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    #@b2
    int-to-float v9, v9

    #@b3
    cmpl-float v9, v8, v9

    #@b5
    if-lez v9, :cond_4

    #@b7
    .line 454
    iget v9, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    #@b9
    int-to-float v8, v9

    #@ba
    goto :goto_4

    #@bb
    .line 449
    .end local v2    # "negative":Z
    :cond_a
    const/4 v2, 0x0

    #@bc
    .restart local v2    # "negative":Z
    goto :goto_7

    #@bd
    .line 468
    .restart local v1    # "left":I
    .restart local v3    # "top":I
    .restart local v4    # "velocity":F
    :cond_b
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    #@bf
    if-nez v9, :cond_c

    #@c1
    iget v9, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    #@c3
    iget v10, p0, Landroid/view/View;->mBottom:I

    #@c5
    add-int/2addr v9, v10

    #@c6
    iget v10, p0, Landroid/view/View;->mTop:I

    #@c8
    sub-int/2addr v9, v10

    #@c9
    .line 469
    iget v10, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    #@cb
    .line 468
    sub-int/2addr v9, v10

    #@cc
    .line 469
    iget v10, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    #@ce
    .line 468
    sub-int/2addr v9, v10

    #@cf
    if-gt v3, v9, :cond_6

    #@d1
    .line 487
    :cond_c
    if-eqz v6, :cond_14

    #@d3
    .end local v3    # "top":I
    :goto_8
    const/4 v9, 0x0

    #@d4
    invoke-direct {p0, v3, v4, v9}, Landroid/widget/SlidingDrawer;->performFling(IFZ)V

    #@d7
    goto/16 :goto_0

    #@d9
    .line 470
    .restart local v3    # "top":I
    :cond_d
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    #@db
    if-eqz v9, :cond_e

    #@dd
    iget v9, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    #@df
    iget v10, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@e1
    add-int/2addr v9, v10

    #@e2
    if-lt v1, v9, :cond_6

    #@e4
    .line 471
    :cond_e
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    #@e6
    if-nez v9, :cond_c

    #@e8
    iget v9, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    #@ea
    iget v10, p0, Landroid/view/View;->mRight:I

    #@ec
    add-int/2addr v9, v10

    #@ed
    iget v10, p0, Landroid/view/View;->mLeft:I

    #@ef
    sub-int/2addr v9, v10

    #@f0
    .line 472
    iget v10, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    #@f2
    .line 471
    sub-int/2addr v9, v10

    #@f3
    .line 472
    iget v10, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    #@f5
    .line 471
    sub-int/2addr v9, v10

    #@f6
    if-le v1, v9, :cond_c

    #@f8
    goto :goto_5

    #@f9
    :cond_f
    move v3, v1

    #@fa
    .line 478
    goto :goto_6

    #@fb
    .line 480
    :cond_10
    if-eqz v6, :cond_11

    #@fd
    .end local v3    # "top":I
    :goto_9
    invoke-direct {p0, v3}, Landroid/widget/SlidingDrawer;->animateOpen(I)V

    #@100
    goto/16 :goto_0

    #@102
    .restart local v3    # "top":I
    :cond_11
    move v3, v1

    #@103
    goto :goto_9

    #@104
    .line 483
    :cond_12
    if-eqz v6, :cond_13

    #@106
    .end local v3    # "top":I
    :goto_a
    const/4 v9, 0x0

    #@107
    invoke-direct {p0, v3, v4, v9}, Landroid/widget/SlidingDrawer;->performFling(IFZ)V

    #@10a
    goto/16 :goto_0

    #@10c
    .restart local v3    # "top":I
    :cond_13
    move v3, v1

    #@10d
    goto :goto_a

    #@10e
    :cond_14
    move v3, v1

    #@10f
    .line 487
    goto :goto_8

    #@110
    .line 490
    :cond_15
    if-eqz v6, :cond_16

    #@112
    .end local v3    # "top":I
    :goto_b
    const/4 v9, 0x0

    #@113
    invoke-direct {p0, v3, v4, v9}, Landroid/widget/SlidingDrawer;->performFling(IFZ)V

    #@116
    goto/16 :goto_0

    #@118
    .restart local v3    # "top":I
    :cond_16
    move v3, v1

    #@119
    goto :goto_b

    #@11a
    .line 497
    .end local v0    # "action":I
    .end local v1    # "left":I
    .end local v2    # "negative":Z
    .end local v3    # "top":I
    .end local v4    # "velocity":F
    .end local v5    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v6    # "vertical":Z
    .end local v7    # "xVelocity":F
    .end local v8    # "yVelocity":F
    :cond_17
    const/4 v9, 0x1

    #@11b
    goto/16 :goto_1

    #@11d
    .line 426
    nop

    #@11e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public open()V
    .locals 1

    #@0
    .prologue
    .line 770
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    #@3
    .line 771
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@6
    .line 772
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    #@9
    .line 774
    const/16 v0, 0x20

    #@b
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    #@e
    .line 769
    return-void
.end method

.method public setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V
    .locals 0
    .param p1, "onDrawerCloseListener"    # Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    #@0
    .prologue
    .line 886
    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    #@2
    .line 885
    return-void
.end method

.method public setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V
    .locals 0
    .param p1, "onDrawerOpenListener"    # Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    #@0
    .prologue
    .line 877
    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    #@2
    .line 876
    return-void
.end method

.method public setOnDrawerScrollListener(Landroid/widget/SlidingDrawer$OnDrawerScrollListener;)V
    .locals 0
    .param p1, "onDrawerScrollListener"    # Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    #@0
    .prologue
    .line 898
    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    #@2
    .line 897
    return-void
.end method

.method public toggle()V
    .locals 1

    #@0
    .prologue
    .line 736
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 737
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    #@7
    .line 741
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@a
    .line 742
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    #@d
    .line 735
    return-void

    #@e
    .line 739
    :cond_0
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    #@11
    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    #@0
    .prologue
    .line 927
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    #@3
    .line 926
    return-void
.end method
