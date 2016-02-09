.class public Landroid/widget/SlidingDrawer;
.super Landroid/view/ViewGroup;
.source "SlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SlidingDrawer$OnDrawerOpenListener;,
        Landroid/widget/SlidingDrawer$OnDrawerCloseListener;,
        Landroid/widget/SlidingDrawer$OnDrawerScrollListener;,
        Landroid/widget/SlidingDrawer$DrawerToggler;,
        Landroid/widget/SlidingDrawer$SlidingHandler;
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

.field private static final MSG_ANIMATE:I = 0x3e8

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

.field private final mHandler:Landroid/os/Handler;

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mLocked:Z

.field private final mMaximumAcceleration:I

.field private final mMaximumMajorVelocity:I

.field private final mMaximumMinorVelocity:I

.field private final mMaximumTapVelocity:I

.field private mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

.field private mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

.field private mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

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
    .line 186
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 199
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    const/high16 v9, 0x3f000000    # 0.5f

    #@4
    const/4 v7, 0x0

    #@5
    .line 216
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@8
    .line 108
    new-instance v5, Landroid/graphics/Rect;

    #@a
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    #@d
    iput-object v5, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    #@f
    .line 109
    new-instance v5, Landroid/graphics/Rect;

    #@11
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    #@14
    iput-object v5, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    #@16
    .line 126
    new-instance v5, Landroid/widget/SlidingDrawer$SlidingHandler;

    #@18
    const/4 v8, 0x0

    #@19
    invoke-direct {v5, p0, v8}, Landroid/widget/SlidingDrawer$SlidingHandler;-><init>(Landroid/widget/SlidingDrawer;Landroid/widget/SlidingDrawer$SlidingHandler;)V

    #@1c
    iput-object v5, p0, Landroid/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    #@1e
    .line 219
    sget-object v5, Landroid/R$styleable;->SlidingDrawer:[I

    #@20
    .line 218
    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@23
    move-result-object v0

    #@24
    .line 221
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    #@27
    move-result v4

    #@28
    .line 222
    .local v4, "orientation":I
    if-ne v4, v6, :cond_0

    #@2a
    move v5, v6

    #@2b
    :goto_0
    iput-boolean v5, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    #@2d
    .line 223
    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@30
    move-result v5

    #@31
    float-to-int v5, v5

    #@32
    iput v5, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    #@34
    .line 224
    const/4 v5, 0x2

    #@35
    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@38
    move-result v5

    #@39
    float-to-int v5, v5

    #@3a
    iput v5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@3c
    .line 225
    const/4 v5, 0x3

    #@3d
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@40
    move-result v5

    #@41
    iput-boolean v5, p0, Landroid/widget/SlidingDrawer;->mAllowSingleTap:Z

    #@43
    .line 226
    const/4 v5, 0x6

    #@44
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@47
    move-result v5

    #@48
    iput-boolean v5, p0, Landroid/widget/SlidingDrawer;->mAnimateOnClick:Z

    #@4a
    .line 228
    const/4 v5, 0x4

    #@4b
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@4e
    move-result v3

    #@4f
    .line 229
    .local v3, "handleId":I
    if-nez v3, :cond_1

    #@51
    .line 230
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@53
    const-string/jumbo v6, "The handle attribute is required and must refer to a valid child."

    #@56
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@59
    throw v5

    #@5a
    .end local v3    # "handleId":I
    :cond_0
    move v5, v7

    #@5b
    .line 222
    goto :goto_0

    #@5c
    .line 234
    .restart local v3    # "handleId":I
    :cond_1
    const/4 v5, 0x5

    #@5d
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@60
    move-result v1

    #@61
    .line 235
    .local v1, "contentId":I
    if-nez v1, :cond_2

    #@63
    .line 236
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@65
    const-string/jumbo v6, "The content attribute is required and must refer to a valid child."

    #@68
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v5

    #@6c
    .line 240
    :cond_2
    if-ne v3, v1, :cond_3

    #@6e
    .line 241
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@70
    const-string/jumbo v6, "The content and handle attributes must refer to different children."

    #@73
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@76
    throw v5

    #@77
    .line 245
    :cond_3
    iput v3, p0, Landroid/widget/SlidingDrawer;->mHandleId:I

    #@79
    .line 246
    iput v1, p0, Landroid/widget/SlidingDrawer;->mContentId:I

    #@7b
    .line 248
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getResources()Landroid/content/res/Resources;

    #@7e
    move-result-object v5

    #@7f
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@82
    move-result-object v5

    #@83
    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    #@85
    .line 249
    .local v2, "density":F
    const/high16 v5, 0x40c00000    # 6.0f

    #@87
    mul-float/2addr v5, v2

    #@88
    add-float/2addr v5, v9

    #@89
    float-to-int v5, v5

    #@8a
    iput v5, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    #@8c
    .line 250
    const/high16 v5, 0x42c80000    # 100.0f

    #@8e
    mul-float/2addr v5, v2

    #@8f
    add-float/2addr v5, v9

    #@90
    float-to-int v5, v5

    #@91
    iput v5, p0, Landroid/widget/SlidingDrawer;->mMaximumTapVelocity:I

    #@93
    .line 251
    const/high16 v5, 0x43160000    # 150.0f

    #@95
    mul-float/2addr v5, v2

    #@96
    add-float/2addr v5, v9

    #@97
    float-to-int v5, v5

    #@98
    iput v5, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    #@9a
    .line 252
    const/high16 v5, 0x43480000    # 200.0f

    #@9c
    mul-float/2addr v5, v2

    #@9d
    add-float/2addr v5, v9

    #@9e
    float-to-int v5, v5

    #@9f
    iput v5, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    #@a1
    .line 253
    const/high16 v5, 0x44fa0000    # 2000.0f

    #@a3
    mul-float/2addr v5, v2

    #@a4
    add-float/2addr v5, v9

    #@a5
    float-to-int v5, v5

    #@a6
    iput v5, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    #@a8
    .line 254
    const/high16 v5, 0x447a0000    # 1000.0f

    #@aa
    mul-float/2addr v5, v2

    #@ab
    add-float/2addr v5, v9

    #@ac
    float-to-int v5, v5

    #@ad
    iput v5, p0, Landroid/widget/SlidingDrawer;->mVelocityUnits:I

    #@af
    .line 256
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@b2
    .line 258
    invoke-virtual {p0, v7}, Landroid/widget/SlidingDrawer;->setAlwaysDrawnWithCacheEnabled(Z)V

    #@b5
    .line 215
    return-void
.end method

.method private animateClose(I)V
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 503
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    #@3
    .line 504
    iget v0, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    #@5
    int-to-float v0, v0

    #@6
    const/4 v1, 0x1

    #@7
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/SlidingDrawer;->performFling(IFZ)V

    #@a
    .line 502
    return-void
.end method

.method private animateOpen(I)V
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 508
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    #@3
    .line 509
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
    .line 507
    return-void
.end method

.method private closeDrawer()V
    .locals 2

    #@0
    .prologue
    .line 845
    const/16 v0, -0x2712

    #@2
    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    #@5
    .line 846
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    #@7
    const/16 v1, 0x8

    #@9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@c
    .line 847
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    #@e
    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    #@11
    .line 849
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    #@13
    if-nez v0, :cond_0

    #@15
    .line 850
    return-void

    #@16
    .line 853
    :cond_0
    const/4 v0, 0x0

    #@17
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    #@19
    .line 854
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 855
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    #@1f
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerCloseListener;->onDrawerClosed()V

    #@22
    .line 844
    :cond_1
    return-void
.end method

.method private doAnimation()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 701
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 702
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->incrementAnimation()V

    #@8
    .line 703
    iget v1, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    #@a
    iget v2, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    #@c
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    #@e
    if-eqz v0, :cond_1

    #@10
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getHeight()I

    #@13
    move-result v0

    #@14
    :goto_0
    add-int/2addr v0, v2

    #@15
    add-int/lit8 v0, v0, -0x1

    #@17
    int-to-float v0, v0

    #@18
    cmpl-float v0, v1, v0

    #@1a
    if-ltz v0, :cond_2

    #@1c
    .line 704
    iput-boolean v3, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    #@1e
    .line 705
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    #@21
    .line 700
    :cond_0
    :goto_1
    return-void

    #@22
    .line 703
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getWidth()I

    #@25
    move-result v0

    #@26
    goto :goto_0

    #@27
    .line 706
    :cond_2
    iget v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    #@29
    iget v1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@2b
    int-to-float v1, v1

    #@2c
    cmpg-float v0, v0, v1

    #@2e
    if-gez v0, :cond_3

    #@30
    .line 707
    iput-boolean v3, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    #@32
    .line 708
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    #@35
    goto :goto_1

    #@36
    .line 710
    :cond_3
    iget v0, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    #@38
    float-to-int v0, v0

    #@39
    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    #@3c
    .line 711
    iget-wide v0, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    #@3e
    const-wide/16 v2, 0x10

    #@40
    add-long/2addr v0, v2

    #@41
    iput-wide v0, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    #@43
    .line 712
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    #@45
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    #@47
    const/16 v2, 0x3e8

    #@49
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@4c
    move-result-object v1

    #@4d
    .line 713
    iget-wide v2, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    #@4f
    .line 712
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    #@52
    goto :goto_1
.end method

.method private incrementAnimation()V
    .locals 8

    #@0
    .prologue
    .line 719
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3
    move-result-wide v2

    #@4
    .line 720
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
    .line 721
    .local v4, "t":F
    iget v1, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    #@f
    .line 722
    .local v1, "position":F
    iget v5, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    #@11
    .line 723
    .local v5, "v":F
    iget v0, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    #@13
    .line 724
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
    .line 725
    mul-float v6, v0, v4

    #@20
    add-float/2addr v6, v5

    #@21
    iput v6, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    #@23
    .line 726
    iput-wide v2, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    #@25
    .line 718
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
    .line 587
    iget-object v3, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    #@7
    .line 589
    .local v3, "handle":Landroid/view/View;
    iget-boolean v7, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    #@9
    if-eqz v7, :cond_4

    #@b
    .line 590
    if-ne p1, v9, :cond_0

    #@d
    .line 591
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
    .line 592
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    #@1a
    .line 586
    :goto_0
    return-void

    #@1b
    .line 593
    :cond_0
    if-ne p1, v8, :cond_1

    #@1d
    .line 594
    iget v7, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    #@1f
    iget v8, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    #@21
    add-int/2addr v7, v8

    #@22
    iget v8, p0, Landroid/widget/SlidingDrawer;->mTop:I

    #@24
    sub-int/2addr v7, v8

    #@25
    .line 595
    iget v8, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    #@27
    .line 594
    sub-int/2addr v7, v8

    #@28
    .line 595
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    #@2b
    move-result v8

    #@2c
    .line 594
    sub-int/2addr v7, v8

    #@2d
    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@30
    .line 596
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    #@33
    goto :goto_0

    #@34
    .line 598
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    #@37
    move-result v6

    #@38
    .line 599
    .local v6, "top":I
    sub-int v1, p1, v6

    #@3a
    .line 600
    .local v1, "deltaY":I
    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@3c
    if-ge p1, v7, :cond_3

    #@3e
    .line 601
    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@40
    sub-int v1, v7, v6

    #@42
    .line 605
    :cond_2
    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@45
    .line 607
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    #@47
    .line 608
    .local v2, "frame":Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    #@49
    .line 610
    .local v5, "region":Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    #@4c
    .line 611
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@4f
    .line 613
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
    .line 614
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    #@5e
    sub-int/2addr v7, v1

    #@5f
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getWidth()I

    #@62
    move-result v8

    #@63
    .line 615
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
    .line 614
    invoke-virtual {v5, v11, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    #@70
    .line 617
    invoke-virtual {p0, v5}, Landroid/widget/SlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    #@73
    goto :goto_0

    #@74
    .line 602
    .end local v2    # "frame":Landroid/graphics/Rect;
    .end local v5    # "region":Landroid/graphics/Rect;
    :cond_3
    iget v7, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    #@76
    iget v8, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    #@78
    add-int/2addr v7, v8

    #@79
    iget v8, p0, Landroid/widget/SlidingDrawer;->mTop:I

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
    .line 603
    iget v7, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    #@84
    iget v8, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    #@86
    add-int/2addr v7, v8

    #@87
    iget v8, p0, Landroid/widget/SlidingDrawer;->mTop:I

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
    .line 620
    .end local v1    # "deltaY":I
    .end local v6    # "top":I
    :cond_4
    if-ne p1, v9, :cond_5

    #@92
    .line 621
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
    .line 622
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    #@9f
    goto/16 :goto_0

    #@a1
    .line 623
    :cond_5
    if-ne p1, v8, :cond_6

    #@a3
    .line 624
    iget v7, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    #@a5
    iget v8, p0, Landroid/widget/SlidingDrawer;->mRight:I

    #@a7
    add-int/2addr v7, v8

    #@a8
    iget v8, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    #@aa
    sub-int/2addr v7, v8

    #@ab
    .line 625
    iget v8, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    #@ad
    .line 624
    sub-int/2addr v7, v8

    #@ae
    .line 625
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    #@b1
    move-result v8

    #@b2
    .line 624
    sub-int/2addr v7, v8

    #@b3
    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@b6
    .line 626
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    #@b9
    goto/16 :goto_0

    #@bb
    .line 628
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    #@be
    move-result v4

    #@bf
    .line 629
    .local v4, "left":I
    sub-int v0, p1, v4

    #@c1
    .line 630
    .local v0, "deltaX":I
    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@c3
    if-ge p1, v7, :cond_8

    #@c5
    .line 631
    iget v7, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@c7
    sub-int v0, v7, v4

    #@c9
    .line 635
    :cond_7
    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@cc
    .line 637
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    #@ce
    .line 638
    .restart local v2    # "frame":Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    #@d0
    .line 640
    .restart local v5    # "region":Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    #@d3
    .line 641
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@d6
    .line 643
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
    .line 644
    iget v7, v2, Landroid/graphics/Rect;->right:I

    #@e5
    sub-int/2addr v7, v0

    #@e6
    .line 645
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
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getHeight()I

    #@f3
    move-result v9

    #@f4
    .line 644
    invoke-virtual {v5, v7, v11, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    #@f7
    .line 647
    invoke-virtual {p0, v5}, Landroid/widget/SlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    #@fa
    goto/16 :goto_0

    #@fc
    .line 632
    .end local v2    # "frame":Landroid/graphics/Rect;
    .end local v5    # "region":Landroid/graphics/Rect;
    :cond_8
    iget v7, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    #@fe
    iget v8, p0, Landroid/widget/SlidingDrawer;->mRight:I

    #@100
    add-int/2addr v7, v8

    #@101
    iget v8, p0, Landroid/widget/SlidingDrawer;->mLeft:I

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
    .line 633
    iget v7, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    #@10c
    iget v8, p0, Landroid/widget/SlidingDrawer;->mRight:I

    #@10e
    add-int/2addr v7, v8

    #@10f
    iget v8, p0, Landroid/widget/SlidingDrawer;->mLeft:I

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
    .line 860
    const/16 v0, -0x2711

    #@2
    invoke-direct {p0, v0}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    #@5
    .line 861
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@b
    .line 863
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 864
    return-void

    #@10
    .line 867
    :cond_0
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    #@13
    .line 869
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 870
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    #@19
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    #@1c
    .line 859
    :cond_1
    return-void
.end method

.method private performFling(IFZ)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "velocity"    # F
    .param p3, "always"    # Z

    #@0
    .prologue
    const/16 v5, 0x3e8

    #@2
    const/4 v4, 0x0

    #@3
    .line 513
    int-to-float v2, p1

    #@4
    iput v2, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    #@6
    .line 514
    iput p2, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    #@8
    .line 516
    iget-boolean v2, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    #@a
    if-eqz v2, :cond_4

    #@c
    .line 517
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
    .line 518
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
    .line 519
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
    .line 522
    :cond_0
    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    #@2a
    int-to-float v2, v2

    #@2b
    iput v2, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    #@2d
    .line 523
    cmpg-float v2, p2, v4

    #@2f
    if-gez v2, :cond_1

    #@31
    .line 524
    iput v4, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    #@33
    .line 552
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@36
    move-result-wide v0

    #@37
    .line 553
    .local v0, "now":J
    iput-wide v0, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    #@39
    .line 554
    const-wide/16 v2, 0x10

    #@3b
    add-long/2addr v2, v0

    #@3c
    iput-wide v2, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    #@3e
    .line 555
    const/4 v2, 0x1

    #@3f
    iput-boolean v2, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    #@41
    .line 556
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    #@43
    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    #@46
    .line 557
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    #@48
    iget-object v3, p0, Landroid/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    #@4a
    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@4d
    move-result-object v3

    #@4e
    iget-wide v4, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    #@50
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    #@53
    .line 558
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->stopTracking()V

    #@56
    .line 512
    return-void

    #@57
    .line 518
    .end local v0    # "now":J
    :cond_2
    iget v2, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    #@59
    goto :goto_0

    #@5a
    .line 528
    :cond_3
    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    #@5c
    neg-int v2, v2

    #@5d
    int-to-float v2, v2

    #@5e
    iput v2, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    #@60
    .line 529
    cmpl-float v2, p2, v4

    #@62
    if-lez v2, :cond_1

    #@64
    .line 530
    iput v4, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    #@66
    goto :goto_1

    #@67
    .line 534
    :cond_4
    if-nez p3, :cond_7

    #@69
    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    #@6b
    int-to-float v2, v2

    #@6c
    cmpl-float v2, p2, v2

    #@6e
    if-gtz v2, :cond_5

    #@70
    .line 535
    iget-boolean v2, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    #@72
    if-eqz v2, :cond_6

    #@74
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getHeight()I

    #@77
    move-result v2

    #@78
    :goto_2
    div-int/lit8 v2, v2, 0x2

    #@7a
    if-le p1, v2, :cond_7

    #@7c
    .line 536
    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    #@7e
    neg-int v2, v2

    #@7f
    int-to-float v2, v2

    #@80
    cmpl-float v2, p2, v2

    #@82
    if-lez v2, :cond_7

    #@84
    .line 538
    :cond_5
    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    #@86
    int-to-float v2, v2

    #@87
    iput v2, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    #@89
    .line 539
    cmpg-float v2, p2, v4

    #@8b
    if-gez v2, :cond_1

    #@8d
    .line 540
    iput v4, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    #@8f
    goto :goto_1

    #@90
    .line 535
    :cond_6
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getWidth()I

    #@93
    move-result v2

    #@94
    goto :goto_2

    #@95
    .line 545
    :cond_7
    iget v2, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    #@97
    neg-int v2, v2

    #@98
    int-to-float v2, v2

    #@99
    iput v2, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    #@9b
    .line 546
    cmpl-float v2, p2, v4

    #@9d
    if-lez v2, :cond_1

    #@9f
    .line 547
    iput v4, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    #@a1
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
    .line 653
    iget-boolean v5, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    #@5
    if-eqz v5, :cond_0

    #@7
    .line 654
    return-void

    #@8
    .line 659
    :cond_0
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    #@a
    .line 660
    .local v2, "content":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    #@d
    move-result v5

    #@e
    if-eqz v5, :cond_1

    #@10
    .line 661
    iget-boolean v5, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    #@12
    if-eqz v5, :cond_3

    #@14
    .line 662
    iget v0, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    #@16
    .line 663
    .local v0, "childHeight":I
    iget v5, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    #@18
    iget v6, p0, Landroid/widget/SlidingDrawer;->mTop:I

    #@1a
    sub-int/2addr v5, v6

    #@1b
    sub-int/2addr v5, v0

    #@1c
    iget v6, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@1e
    sub-int v3, v5, v6

    #@20
    .line 664
    .local v3, "height":I
    iget v5, p0, Landroid/widget/SlidingDrawer;->mRight:I

    #@22
    iget v6, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    #@24
    sub-int/2addr v5, v6

    #@25
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@28
    move-result v5

    #@29
    .line 665
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@2c
    move-result v6

    #@2d
    .line 664
    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    #@30
    .line 666
    iget v5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@32
    add-int/2addr v5, v0

    #@33
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    #@36
    move-result v6

    #@37
    .line 667
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
    .line 666
    invoke-virtual {v2, v9, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    #@42
    .line 680
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
    .line 681
    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    #@4c
    move-result v5

    #@4d
    if-nez v5, :cond_2

    #@4f
    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    #@52
    .line 683
    :cond_2
    const/16 v5, 0x8

    #@54
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    #@57
    .line 652
    return-void

    #@58
    .line 669
    :cond_3
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    #@5a
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    #@5d
    move-result v1

    #@5e
    .line 670
    .local v1, "childWidth":I
    iget v5, p0, Landroid/widget/SlidingDrawer;->mRight:I

    #@60
    iget v6, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    #@62
    sub-int/2addr v5, v6

    #@63
    sub-int/2addr v5, v1

    #@64
    iget v6, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@66
    sub-int v4, v5, v6

    #@68
    .line 671
    .local v4, "width":I
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@6b
    move-result v5

    #@6c
    .line 672
    iget v6, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    #@6e
    iget v7, p0, Landroid/widget/SlidingDrawer;->mTop:I

    #@70
    sub-int/2addr v6, v7

    #@71
    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@74
    move-result v6

    #@75
    .line 671
    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    #@78
    .line 673
    iget v5, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@7a
    add-int/2addr v5, v1

    #@7b
    .line 674
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
    .line 675
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    #@86
    move-result v7

    #@87
    .line 673
    invoke-virtual {v2, v5, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    #@8a
    goto :goto_0
.end method

.method private prepareTracking(I)V
    .locals 8
    .param p1, "position"    # I

    #@0
    .prologue
    const/16 v7, 0x3e8

    #@2
    const/4 v6, 0x1

    #@3
    .line 562
    iput-boolean v6, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    #@5
    .line 563
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@8
    move-result-object v3

    #@9
    iput-object v3, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@b
    .line 564
    iget-boolean v3, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    #@d
    if-eqz v3, :cond_0

    #@f
    const/4 v2, 0x0

    #@10
    .line 565
    .local v2, "opening":Z
    :goto_0
    if-eqz v2, :cond_2

    #@12
    .line 566
    iget v3, p0, Landroid/widget/SlidingDrawer;->mMaximumAcceleration:I

    #@14
    int-to-float v3, v3

    #@15
    iput v3, p0, Landroid/widget/SlidingDrawer;->mAnimatedAcceleration:F

    #@17
    .line 567
    iget v3, p0, Landroid/widget/SlidingDrawer;->mMaximumMajorVelocity:I

    #@19
    int-to-float v3, v3

    #@1a
    iput v3, p0, Landroid/widget/SlidingDrawer;->mAnimatedVelocity:F

    #@1c
    .line 568
    iget v4, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    #@1e
    .line 569
    iget-boolean v3, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    #@20
    if-eqz v3, :cond_1

    #@22
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getHeight()I

    #@25
    move-result v3

    #@26
    iget v5, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    #@28
    :goto_1
    sub-int/2addr v3, v5

    #@29
    .line 568
    add-int/2addr v3, v4

    #@2a
    int-to-float v3, v3

    #@2b
    iput v3, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    #@2d
    .line 570
    iget v3, p0, Landroid/widget/SlidingDrawer;->mAnimationPosition:F

    #@2f
    float-to-int v3, v3

    #@30
    invoke-direct {p0, v3}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    #@33
    .line 571
    iput-boolean v6, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    #@35
    .line 572
    iget-object v3, p0, Landroid/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    #@37
    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    #@3a
    .line 573
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@3d
    move-result-wide v0

    #@3e
    .line 574
    .local v0, "now":J
    iput-wide v0, p0, Landroid/widget/SlidingDrawer;->mAnimationLastTime:J

    #@40
    .line 575
    const-wide/16 v4, 0x10

    #@42
    add-long/2addr v4, v0

    #@43
    iput-wide v4, p0, Landroid/widget/SlidingDrawer;->mCurrentAnimationTime:J

    #@45
    .line 576
    iput-boolean v6, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    #@47
    .line 561
    .end local v0    # "now":J
    :goto_2
    return-void

    #@48
    .line 564
    .end local v2    # "opening":Z
    :cond_0
    const/4 v2, 0x1

    #@49
    .restart local v2    # "opening":Z
    goto :goto_0

    #@4a
    .line 569
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getWidth()I

    #@4d
    move-result v3

    #@4e
    iget v5, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    #@50
    goto :goto_1

    #@51
    .line 578
    :cond_2
    iget-boolean v3, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    #@53
    if-eqz v3, :cond_3

    #@55
    .line 579
    const/4 v3, 0x0

    #@56
    iput-boolean v3, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    #@58
    .line 580
    iget-object v3, p0, Landroid/widget/SlidingDrawer;->mHandler:Landroid/os/Handler;

    #@5a
    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    #@5d
    .line 582
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/SlidingDrawer;->moveHandle(I)V

    #@60
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
    .line 687
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    #@4
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    #@7
    .line 688
    iput-boolean v2, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    #@9
    .line 690
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 691
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    #@f
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    #@12
    .line 694
    :cond_0
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 695
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@18
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    #@1b
    .line 696
    iput-object v1, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1d
    .line 686
    :cond_1
    return-void
.end method


# virtual methods
.method public animateClose()V
    .locals 2

    #@0
    .prologue
    .line 803
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->prepareContent()V

    #@3
    .line 804
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    #@5
    .line 805
    .local v0, "scrollListener":Landroid/widget/SlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    #@7
    .line 806
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    #@a
    .line 808
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
    .line 810
    if-eqz v0, :cond_1

    #@19
    .line 811
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    #@1c
    .line 802
    :cond_1
    return-void

    #@1d
    .line 808
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
    .line 825
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->prepareContent()V

    #@3
    .line 826
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    #@5
    .line 827
    .local v0, "scrollListener":Landroid/widget/SlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    #@7
    .line 828
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    #@a
    .line 830
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
    .line 832
    const/16 v1, 0x20

    #@19
    invoke-virtual {p0, v1}, Landroid/widget/SlidingDrawer;->sendAccessibilityEvent(I)V

    #@1c
    .line 834
    if-eqz v0, :cond_1

    #@1e
    .line 835
    invoke-interface {v0}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    #@21
    .line 824
    :cond_1
    return-void

    #@22
    .line 830
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
    .line 758
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 759
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->animateOpen()V

    #@7
    .line 757
    :goto_0
    return-void

    #@8
    .line 761
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->animateClose()V

    #@b
    goto :goto_0
.end method

.method public close()V
    .locals 0

    #@0
    .prologue
    .line 788
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    #@3
    .line 789
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    #@6
    .line 790
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->requestLayout()V

    #@9
    .line 787
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
    .line 308
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getDrawingTime()J

    #@6
    move-result-wide v2

    #@7
    .line 309
    .local v2, "drawingTime":J
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    #@9
    .line 310
    .local v1, "handle":Landroid/view/View;
    iget-boolean v4, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    #@b
    .line 312
    .local v4, "isVertical":Z
    invoke-virtual {p0, p1, v1, v2, v3}, Landroid/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    #@e
    .line 314
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    #@10
    if-nez v6, :cond_0

    #@12
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mAnimating:Z

    #@14
    if-eqz v6, :cond_6

    #@16
    .line 315
    :cond_0
    iget-object v6, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    #@18
    invoke-virtual {v6}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    #@1b
    move-result-object v0

    #@1c
    .line 316
    .local v0, "cache":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    #@1e
    .line 317
    if-eqz v4, :cond_2

    #@20
    .line 318
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    #@23
    move-result v5

    #@24
    int-to-float v5, v5

    #@25
    invoke-virtual {p1, v0, v8, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    #@28
    .line 307
    .end local v0    # "cache":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    #@29
    .line 320
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
    .line 323
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@35
    .line 324
    if-eqz v4, :cond_5

    #@37
    move v6, v5

    #@38
    :goto_1
    int-to-float v6, v6

    #@39
    .line 325
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
    .line 324
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    #@46
    .line 326
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    #@48
    invoke-virtual {p0, p1, v5, v2, v3}, Landroid/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    #@4b
    .line 327
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@4e
    goto :goto_0

    #@4f
    .line 324
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
    .line 329
    .end local v0    # "cache":Landroid/graphics/Bitmap;
    :cond_6
    iget-boolean v5, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    #@59
    if-eqz v5, :cond_1

    #@5b
    .line 330
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    #@5d
    invoke-virtual {p0, p1, v5, v2, v3}, Landroid/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    #@60
    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 841
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
    .line 921
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 911
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public isMoving()Z
    .locals 1

    #@0
    .prologue
    .line 957
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
    .line 948
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    #@2
    return v0
.end method

.method public lock()V
    .locals 1

    #@0
    .prologue
    .line 939
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    #@3
    .line 938
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 263
    iget v0, p0, Landroid/widget/SlidingDrawer;->mHandleId:I

    #@3
    invoke-virtual {p0, v0}, Landroid/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    #@9
    .line 264
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    #@b
    if-nez v0, :cond_0

    #@d
    .line 265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "The handle attribute is must refer to an existing child."

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 268
    :cond_0
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    #@18
    new-instance v1, Landroid/widget/SlidingDrawer$DrawerToggler;

    #@1a
    invoke-direct {v1, p0, v2}, Landroid/widget/SlidingDrawer$DrawerToggler;-><init>(Landroid/widget/SlidingDrawer;Landroid/widget/SlidingDrawer$DrawerToggler;)V

    #@1d
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@20
    .line 270
    iget v0, p0, Landroid/widget/SlidingDrawer;->mContentId:I

    #@22
    invoke-virtual {p0, v0}, Landroid/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    #@25
    move-result-object v0

    #@26
    iput-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    #@28
    .line 271
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    #@2a
    if-nez v0, :cond_1

    #@2c
    .line 272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2e
    const-string/jumbo v1, "The content attribute is must refer to an existing child."

    #@31
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0

    #@35
    .line 275
    :cond_1
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    #@37
    const/16 v1, 0x8

    #@39
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@3c
    .line 262
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
    .line 375
    iget-boolean v7, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    #@4
    if-eqz v7, :cond_0

    #@6
    .line 376
    return v9

    #@7
    .line 379
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@a
    move-result v0

    #@b
    .line 381
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@e
    move-result v5

    #@f
    .line 382
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@12
    move-result v6

    #@13
    .line 384
    .local v6, "y":F
    iget-object v1, p0, Landroid/widget/SlidingDrawer;->mFrame:Landroid/graphics/Rect;

    #@15
    .line 385
    .local v1, "frame":Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    #@17
    .line 387
    .local v2, "handle":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    #@1a
    .line 388
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
    .line 392
    :cond_1
    if-nez v0, :cond_3

    #@28
    .line 393
    iput-boolean v10, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    #@2a
    .line 395
    invoke-virtual {v2, v10}, Landroid/view/View;->setPressed(Z)V

    #@2d
    .line 397
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->prepareContent()V

    #@30
    .line 400
    iget-object v7, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    #@32
    if-eqz v7, :cond_2

    #@34
    .line 401
    iget-object v7, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    #@36
    invoke-interface {v7}, Landroid/widget/SlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    #@39
    .line 404
    :cond_2
    iget-boolean v7, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    #@3b
    if-eqz v7, :cond_5

    #@3d
    .line 405
    iget-object v7, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    #@3f
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    #@42
    move-result v4

    #@43
    .line 406
    .local v4, "top":I
    float-to-int v7, v6

    #@44
    sub-int/2addr v7, v4

    #@45
    iput v7, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    #@47
    .line 407
    invoke-direct {p0, v4}, Landroid/widget/SlidingDrawer;->prepareTracking(I)V

    #@4a
    .line 413
    .end local v4    # "top":I
    :goto_0
    iget-object v7, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@4c
    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@4f
    .line 416
    :cond_3
    return v10

    #@50
    .line 389
    :cond_4
    return v9

    #@51
    .line 409
    :cond_5
    iget-object v7, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    #@53
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    #@56
    move-result v3

    #@57
    .line 410
    .local v3, "left":I
    float-to-int v7, v5

    #@58
    sub-int/2addr v7, v3

    #@59
    iput v7, p0, Landroid/widget/SlidingDrawer;->mTouchDelta:I

    #@5b
    .line 411
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
    .line 336
    iget-boolean v8, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    #@2
    if-eqz v8, :cond_0

    #@4
    .line 337
    return-void

    #@5
    .line 340
    :cond_0
    sub-int v7, p4, p2

    #@7
    .line 341
    .local v7, "width":I
    sub-int v6, p5, p3

    #@9
    .line 343
    .local v6, "height":I
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    #@b
    .line 345
    .local v5, "handle":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    #@e
    move-result v3

    #@f
    .line 346
    .local v3, "childWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    #@12
    move-result v0

    #@13
    .line 351
    .local v0, "childHeight":I
    iget-object v4, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    #@15
    .line 353
    .local v4, "content":Landroid/view/View;
    iget-boolean v8, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    #@17
    if-eqz v8, :cond_2

    #@19
    .line 354
    sub-int v8, v7, v3

    #@1b
    div-int/lit8 v1, v8, 0x2

    #@1d
    .line 355
    .local v1, "childLeft":I
    iget-boolean v8, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    #@1f
    if-eqz v8, :cond_1

    #@21
    iget v2, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@23
    .line 357
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
    .line 358
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
    .line 357
    const/4 v11, 0x0

    #@33
    invoke-virtual {v4, v11, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    #@36
    .line 368
    :goto_1
    add-int v8, v1, v3

    #@38
    add-int v9, v2, v0

    #@3a
    invoke-virtual {v5, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    #@3d
    .line 369
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    #@40
    move-result v8

    #@41
    iput v8, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    #@43
    .line 370
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    #@46
    move-result v8

    #@47
    iput v8, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    #@49
    .line 335
    return-void

    #@4a
    .line 355
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
    .line 360
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    :cond_2
    iget-boolean v8, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    #@53
    if-eqz v8, :cond_3

    #@55
    iget v1, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@57
    .line 361
    .restart local v1    # "childLeft":I
    :goto_2
    sub-int v8, v6, v0

    #@59
    div-int/lit8 v2, v8, 0x2

    #@5b
    .line 363
    .restart local v2    # "childTop":I
    iget v8, p0, Landroid/widget/SlidingDrawer;->mTopOffset:I

    #@5d
    add-int/2addr v8, v3

    #@5e
    .line 364
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
    .line 365
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    #@69
    move-result v10

    #@6a
    .line 363
    const/4 v11, 0x0

    #@6b
    invoke-virtual {v4, v8, v11, v9, v10}, Landroid/view/View;->layout(IIII)V

    #@6e
    goto :goto_1

    #@6f
    .line 360
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
    .line 280
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@5
    move-result v5

    #@6
    .line 281
    .local v5, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@9
    move-result v6

    #@a
    .line 283
    .local v6, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@d
    move-result v2

    #@e
    .line 284
    .local v2, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@11
    move-result v3

    #@12
    .line 286
    .local v3, "heightSpecSize":I
    if-eqz v5, :cond_0

    #@14
    if-nez v2, :cond_1

    #@16
    .line 287
    :cond_0
    new-instance v7, Ljava/lang/RuntimeException;

    #@18
    const-string/jumbo v8, "SlidingDrawer cannot have UNSPECIFIED dimensions"

    #@1b
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v7

    #@1f
    .line 290
    :cond_1
    iget-object v0, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    #@21
    .line 291
    .local v0, "handle":Landroid/view/View;
    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/SlidingDrawer;->measureChild(Landroid/view/View;II)V

    #@24
    .line 293
    iget-boolean v7, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    #@26
    if-eqz v7, :cond_2

    #@28
    .line 294
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
    .line 295
    .local v1, "height":I
    iget-object v7, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    #@34
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@37
    move-result v8

    #@38
    .line 296
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@3b
    move-result v9

    #@3c
    .line 295
    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    #@3f
    .line 303
    .end local v1    # "height":I
    :goto_0
    invoke-virtual {p0, v6, v3}, Landroid/widget/SlidingDrawer;->setMeasuredDimension(II)V

    #@42
    .line 279
    return-void

    #@43
    .line 298
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
    .line 299
    .local v4, "width":I
    iget-object v7, p0, Landroid/widget/SlidingDrawer;->mContent:Landroid/view/View;

    #@4f
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@52
    move-result v8

    #@53
    .line 300
    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@56
    move-result v9

    #@57
    .line 299
    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    #@5a
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 421
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    #@2
    if-eqz v9, :cond_0

    #@4
    .line 422
    const/4 v9, 0x1

    #@5
    return v9

    #@6
    .line 425
    :cond_0
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mTracking:Z

    #@8
    if-eqz v9, :cond_1

    #@a
    .line 426
    iget-object v9, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@c
    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@f
    .line 427
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@12
    move-result v0

    #@13
    .line 428
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    #@16
    .line 499
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
    .line 430
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
    .line 434
    :pswitch_1
    iget-object v5, p0, Landroid/widget/SlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@3a
    .line 435
    .local v5, "velocityTracker":Landroid/view/VelocityTracker;
    iget v9, p0, Landroid/widget/SlidingDrawer;->mVelocityUnits:I

    #@3c
    invoke-virtual {v5, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    #@3f
    .line 437
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    #@42
    move-result v8

    #@43
    .line 438
    .local v8, "yVelocity":F
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    #@46
    move-result v7

    #@47
    .line 441
    .local v7, "xVelocity":F
    iget-boolean v6, p0, Landroid/widget/SlidingDrawer;->mVertical:Z

    #@49
    .line 442
    .local v6, "vertical":Z
    if-eqz v6, :cond_8

    #@4b
    .line 443
    const/4 v9, 0x0

    #@4c
    cmpg-float v9, v8, v9

    #@4e
    if-gez v9, :cond_7

    #@50
    const/4 v2, 0x1

    #@51
    .line 444
    .local v2, "negative":Z
    :goto_3
    const/4 v9, 0x0

    #@52
    cmpg-float v9, v7, v9

    #@54
    if-gez v9, :cond_3

    #@56
    .line 445
    neg-float v7, v7

    #@57
    .line 447
    :cond_3
    iget v9, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    #@59
    int-to-float v9, v9

    #@5a
    cmpl-float v9, v7, v9

    #@5c
    if-lez v9, :cond_4

    #@5e
    .line 448
    iget v9, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    #@60
    int-to-float v7, v9

    #@61
    .line 460
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
    .line 461
    .local v4, "velocity":F
    if-eqz v2, :cond_5

    #@6a
    .line 462
    neg-float v4, v4

    #@6b
    .line 465
    :cond_5
    iget-object v9, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    #@6d
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    #@70
    move-result v3

    #@71
    .line 466
    .local v3, "top":I
    iget-object v9, p0, Landroid/widget/SlidingDrawer;->mHandle:Landroid/view/View;

    #@73
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    #@76
    move-result v1

    #@77
    .line 468
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
    .line 469
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
    .line 476
    :cond_6
    :goto_5
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mAllowSingleTap:Z

    #@91
    if-eqz v9, :cond_12

    #@93
    .line 477
    const/4 v9, 0x0

    #@94
    invoke-virtual {p0, v9}, Landroid/widget/SlidingDrawer;->playSoundEffect(I)V

    #@97
    .line 479
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    #@99
    if-eqz v9, :cond_10

    #@9b
    .line 480
    if-eqz v6, :cond_f

    #@9d
    .end local v3    # "top":I
    :goto_6
    invoke-direct {p0, v3}, Landroid/widget/SlidingDrawer;->animateClose(I)V

    #@a0
    goto/16 :goto_0

    #@a2
    .line 443
    .end local v1    # "left":I
    .end local v2    # "negative":Z
    .end local v4    # "velocity":F
    :cond_7
    const/4 v2, 0x0

    #@a3
    .restart local v2    # "negative":Z
    goto :goto_3

    #@a4
    .line 451
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
    .line 452
    .restart local v2    # "negative":Z
    :goto_7
    const/4 v9, 0x0

    #@ab
    cmpg-float v9, v8, v9

    #@ad
    if-gez v9, :cond_9

    #@af
    .line 453
    neg-float v8, v8

    #@b0
    .line 455
    :cond_9
    iget v9, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    #@b2
    int-to-float v9, v9

    #@b3
    cmpl-float v9, v8, v9

    #@b5
    if-lez v9, :cond_4

    #@b7
    .line 456
    iget v9, p0, Landroid/widget/SlidingDrawer;->mMaximumMinorVelocity:I

    #@b9
    int-to-float v8, v9

    #@ba
    goto :goto_4

    #@bb
    .line 451
    .end local v2    # "negative":Z
    :cond_a
    const/4 v2, 0x0

    #@bc
    .restart local v2    # "negative":Z
    goto :goto_7

    #@bd
    .line 470
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
    iget v10, p0, Landroid/widget/SlidingDrawer;->mBottom:I

    #@c5
    add-int/2addr v9, v10

    #@c6
    iget v10, p0, Landroid/widget/SlidingDrawer;->mTop:I

    #@c8
    sub-int/2addr v9, v10

    #@c9
    .line 471
    iget v10, p0, Landroid/widget/SlidingDrawer;->mHandleHeight:I

    #@cb
    .line 470
    sub-int/2addr v9, v10

    #@cc
    .line 471
    iget v10, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    #@ce
    .line 470
    sub-int/2addr v9, v10

    #@cf
    if-gt v3, v9, :cond_6

    #@d1
    .line 489
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
    .line 472
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
    .line 473
    :cond_e
    iget-boolean v9, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    #@e6
    if-nez v9, :cond_c

    #@e8
    iget v9, p0, Landroid/widget/SlidingDrawer;->mBottomOffset:I

    #@ea
    iget v10, p0, Landroid/widget/SlidingDrawer;->mRight:I

    #@ec
    add-int/2addr v9, v10

    #@ed
    iget v10, p0, Landroid/widget/SlidingDrawer;->mLeft:I

    #@ef
    sub-int/2addr v9, v10

    #@f0
    .line 474
    iget v10, p0, Landroid/widget/SlidingDrawer;->mHandleWidth:I

    #@f2
    .line 473
    sub-int/2addr v9, v10

    #@f3
    .line 474
    iget v10, p0, Landroid/widget/SlidingDrawer;->mTapThreshold:I

    #@f5
    .line 473
    sub-int/2addr v9, v10

    #@f6
    if-le v1, v9, :cond_c

    #@f8
    goto :goto_5

    #@f9
    :cond_f
    move v3, v1

    #@fa
    .line 480
    goto :goto_6

    #@fb
    .line 482
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
    .line 485
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
    .line 489
    goto :goto_8

    #@110
    .line 492
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
    .line 499
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
    .line 428
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
    .line 773
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    #@3
    .line 774
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    #@6
    .line 775
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->requestLayout()V

    #@9
    .line 777
    const/16 v0, 0x20

    #@b
    invoke-virtual {p0, v0}, Landroid/widget/SlidingDrawer;->sendAccessibilityEvent(I)V

    #@e
    .line 772
    return-void
.end method

.method public setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V
    .locals 0
    .param p1, "onDrawerCloseListener"    # Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    #@0
    .prologue
    .line 889
    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerCloseListener:Landroid/widget/SlidingDrawer$OnDrawerCloseListener;

    #@2
    .line 888
    return-void
.end method

.method public setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V
    .locals 0
    .param p1, "onDrawerOpenListener"    # Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    #@0
    .prologue
    .line 880
    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerOpenListener:Landroid/widget/SlidingDrawer$OnDrawerOpenListener;

    #@2
    .line 879
    return-void
.end method

.method public setOnDrawerScrollListener(Landroid/widget/SlidingDrawer$OnDrawerScrollListener;)V
    .locals 0
    .param p1, "onDrawerScrollListener"    # Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    #@0
    .prologue
    .line 901
    iput-object p1, p0, Landroid/widget/SlidingDrawer;->mOnDrawerScrollListener:Landroid/widget/SlidingDrawer$OnDrawerScrollListener;

    #@2
    .line 900
    return-void
.end method

.method public toggle()V
    .locals 1

    #@0
    .prologue
    .line 739
    iget-boolean v0, p0, Landroid/widget/SlidingDrawer;->mExpanded:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 740
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->openDrawer()V

    #@7
    .line 744
    :goto_0
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->invalidate()V

    #@a
    .line 745
    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->requestLayout()V

    #@d
    .line 738
    return-void

    #@e
    .line 742
    :cond_0
    invoke-direct {p0}, Landroid/widget/SlidingDrawer;->closeDrawer()V

    #@11
    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    #@0
    .prologue
    .line 930
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/widget/SlidingDrawer;->mLocked:Z

    #@3
    .line 929
    return-void
.end method
