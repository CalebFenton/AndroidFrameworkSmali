.class public Landroid/support/v4/widget/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SwipeRefreshLayout.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingParent;
.implements Landroid/support/v4/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;,
        Landroid/support/v4/widget/SwipeRefreshLayout$1;,
        Landroid/support/v4/widget/SwipeRefreshLayout$2;,
        Landroid/support/v4/widget/SwipeRefreshLayout$3;,
        Landroid/support/v4/widget/SwipeRefreshLayout$4;
    }
.end annotation


# static fields
.field private static final ALPHA_ANIMATION_DURATION:I = 0x12c

.field private static final ANIMATE_TO_START_DURATION:I = 0xc8

.field private static final ANIMATE_TO_TRIGGER_DURATION:I = 0xc8

.field private static final CIRCLE_BG_LIGHT:I = -0x50506

.field private static final CIRCLE_DIAMETER:I = 0x28

.field private static final CIRCLE_DIAMETER_LARGE:I = 0x38

.field private static final DECELERATE_INTERPOLATION_FACTOR:F = 2.0f

.field public static final DEFAULT:I = 0x1

.field private static final DEFAULT_CIRCLE_TARGET:I = 0x40

.field private static final DRAG_RATE:F = 0.5f

.field private static final INVALID_POINTER:I = -0x1

.field public static final LARGE:I = 0x0

.field private static final LAYOUT_ATTRS:[I

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_PROGRESS_ANGLE:F = 0.8f

.field private static final SCALE_DOWN_DURATION:I = 0x96

.field private static final STARTING_PROGRESS_ALPHA:I = 0x4c


# instance fields
.field private mActivePointerId:I

.field private mAlphaMaxAnimation:Landroid/view/animation/Animation;

.field private mAlphaStartAnimation:Landroid/view/animation/Animation;

.field private final mAnimateToCorrectPosition:Landroid/view/animation/Animation;

.field private final mAnimateToStartPosition:Landroid/view/animation/Animation;

.field private mCircleHeight:I

.field private mCircleView:Landroid/support/v4/widget/CircleImageView;

.field private mCircleViewIndex:I

.field private mCircleWidth:I

.field private mCurrentTargetOffsetTop:I

.field private final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field protected mFrom:I

.field private mInitialDownY:F

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

.field private mMediumAnimationDuration:I

.field private final mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field private final mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

.field private mNotify:Z

.field private mOriginalOffsetCalculated:Z

.field protected mOriginalOffsetTop:I

.field private final mParentScrollConsumed:[I

.field private final mPeek:Landroid/view/animation/Animation;

.field private mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

.field private mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

.field private mRefreshing:Z

.field private mReturningToStart:Z

.field private mScale:Z

.field private mScaleAnimation:Landroid/view/animation/Animation;

.field private mScaleDownAnimation:Landroid/view/animation/Animation;

.field private mScaleDownToStartAnimation:Landroid/view/animation/Animation;

.field private mSpinnerFinalOffset:F

.field private mStartingScale:F

.field private mTarget:Landroid/view/View;

.field private mTotalDragDistance:F

.field private mTotalUnconsumed:F

.field private mTouchSlop:I

.field private mUsingCustomStart:Z


# direct methods
.method static synthetic -get0(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/CircleImageView;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/support/v4/widget/SwipeRefreshLayout;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNotify:Z

    #@2
    return v0
.end method

.method static synthetic -get4(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/MaterialProgressDrawable;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    #@2
    return v0
.end method

.method static synthetic -get6(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    #@2
    return v0
.end method

.method static synthetic -get7(Landroid/support/v4/widget/SwipeRefreshLayout;)F
    .locals 1

    #@0
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    #@2
    return v0
.end method

.method static synthetic -get8(Landroid/support/v4/widget/SwipeRefreshLayout;)F
    .locals 1

    #@0
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mStartingScale:F

    #@2
    return v0
.end method

.method static synthetic -get9(Landroid/support/v4/widget/SwipeRefreshLayout;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/support/v4/widget/SwipeRefreshLayout;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/support/v4/widget/SwipeRefreshLayout;F)V
    .locals 0
    .param p1, "interpolatedTime"    # F

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->moveToStart(F)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/support/v4/widget/SwipeRefreshLayout;F)V
    .locals 0
    .param p1, "progress"    # F

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/support/v4/widget/SwipeRefreshLayout;I)V
    .locals 0
    .param p1, "targetAlpha"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/support/v4/widget/SwipeRefreshLayout;IZ)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "requiresUpdate"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Landroid/support/v4/widget/SwipeRefreshLayout;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 71
    const-class v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    #@8
    .line 129
    const/4 v0, 0x1

    #@9
    new-array v0, v0, [I

    #@b
    .line 130
    const v1, 0x101000e

    #@e
    const/4 v2, 0x0

    #@f
    aput v1, v0, v2

    #@11
    .line 129
    sput-object v0, Landroid/support/v4/widget/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    #@13
    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 274
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 273
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/high16 v6, 0x42200000    # 40.0f

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 284
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@8
    .line 102
    iput-boolean v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    #@a
    .line 104
    const/high16 v2, -0x40800000    # -1.0f

    #@c
    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    #@e
    .line 111
    const/4 v2, 0x2

    #@f
    new-array v2, v2, [I

    #@11
    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mParentScrollConsumed:[I

    #@13
    .line 116
    iput-boolean v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetCalculated:Z

    #@15
    .line 121
    iput v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    #@17
    .line 134
    iput v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    #@19
    .line 165
    new-instance v2, Landroid/support/v4/widget/SwipeRefreshLayout$1;

    #@1b
    invoke-direct {v2, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$1;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    #@1e
    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    #@20
    .line 1052
    new-instance v2, Landroid/support/v4/widget/SwipeRefreshLayout$2;

    #@22
    invoke-direct {v2, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$2;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    #@25
    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    #@27
    .line 1069
    new-instance v2, Landroid/support/v4/widget/SwipeRefreshLayout$3;

    #@29
    invoke-direct {v2, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$3;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    #@2c
    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mPeek:Landroid/view/animation/Animation;

    #@2e
    .line 1093
    new-instance v2, Landroid/support/v4/widget/SwipeRefreshLayout$4;

    #@30
    invoke-direct {v2, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$4;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    #@33
    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    #@35
    .line 286
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@3c
    move-result v2

    #@3d
    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    #@3f
    .line 288
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    #@42
    move-result-object v2

    #@43
    .line 289
    const v3, 0x10e0001

    #@46
    .line 288
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    #@49
    move-result v2

    #@4a
    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

    #@4c
    .line 291
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setWillNotDraw(Z)V

    #@4f
    .line 292
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    #@51
    const/high16 v3, 0x40000000    # 2.0f

    #@53
    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    #@56
    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    #@58
    .line 294
    sget-object v2, Landroid/support/v4/widget/SwipeRefreshLayout;->LAYOUT_ATTRS:[I

    #@5a
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5d
    move-result-object v0

    #@5e
    .line 295
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@61
    move-result v2

    #@62
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    #@65
    .line 296
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@68
    .line 298
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    #@6b
    move-result-object v2

    #@6c
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@6f
    move-result-object v1

    #@70
    .line 299
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    #@72
    mul-float/2addr v2, v6

    #@73
    float-to-int v2, v2

    #@74
    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleWidth:I

    #@76
    .line 300
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    #@78
    mul-float/2addr v2, v6

    #@79
    float-to-int v2, v2

    #@7a
    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleHeight:I

    #@7c
    .line 302
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->createProgressView()V

    #@7f
    .line 303
    invoke-static {p0, v5}, Landroid/support/v4/view/ViewCompat;->setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V

    #@82
    .line 305
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    #@84
    const/high16 v3, 0x42800000    # 64.0f

    #@86
    mul-float/2addr v2, v3

    #@87
    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    #@89
    .line 306
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    #@8b
    iput v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    #@8d
    .line 307
    new-instance v2, Landroid/support/v4/view/NestedScrollingParentHelper;

    #@8f
    invoke-direct {v2, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    #@92
    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    #@94
    .line 309
    new-instance v2, Landroid/support/v4/view/NestedScrollingChildHelper;

    #@96
    invoke-direct {v2, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    #@99
    iput-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    #@9b
    .line 310
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    #@9e
    .line 283
    return-void
.end method

.method private animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    #@0
    .prologue
    .line 1012
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    #@2
    .line 1013
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    #@4
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    #@7
    .line 1014
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    #@9
    const-wide/16 v2, 0xc8

    #@b
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    #@e
    .line 1015
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    #@10
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    #@12
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@15
    .line 1016
    if-eqz p2, :cond_0

    #@17
    .line 1017
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@19
    invoke-virtual {v0, p2}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    #@1c
    .line 1019
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@1e
    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    #@21
    .line 1020
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@23
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToCorrectPosition:Landroid/view/animation/Animation;

    #@25
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    #@28
    .line 1011
    return-void
.end method

.method private animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    #@0
    .prologue
    .line 1036
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1038
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V

    #@7
    .line 1035
    :goto_0
    return-void

    #@8
    .line 1040
    :cond_0
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    #@a
    .line 1041
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    #@c
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    #@f
    .line 1042
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    #@11
    const-wide/16 v2, 0xc8

    #@13
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    #@16
    .line 1043
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    #@18
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    #@1a
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@1d
    .line 1044
    if-eqz p2, :cond_1

    #@1f
    .line 1045
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@21
    invoke-virtual {v0, p2}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    #@24
    .line 1047
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@26
    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    #@29
    .line 1048
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@2b
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAnimateToStartPosition:Landroid/view/animation/Animation;

    #@2d
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    #@30
    goto :goto_0
.end method

.method private createProgressView()V
    .locals 4

    #@0
    .prologue
    const v3, -0x50506

    #@3
    .line 329
    new-instance v0, Landroid/support/v4/widget/CircleImageView;

    #@5
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    #@8
    move-result-object v1

    #@9
    const/high16 v2, 0x41a00000    # 20.0f

    #@b
    invoke-direct {v0, v1, v3, v2}, Landroid/support/v4/widget/CircleImageView;-><init>(Landroid/content/Context;IF)V

    #@e
    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@10
    .line 330
    new-instance v0, Landroid/support/v4/widget/MaterialProgressDrawable;

    #@12
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getContext()Landroid/content/Context;

    #@15
    move-result-object v1

    #@16
    invoke-direct {v0, v1, p0}, Landroid/support/v4/widget/MaterialProgressDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    #@19
    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@1b
    .line 331
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@1d
    invoke-virtual {v0, v3}, Landroid/support/v4/widget/MaterialProgressDrawable;->setBackgroundColor(I)V

    #@20
    .line 332
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@22
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@24
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@27
    .line 333
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@29
    const/16 v1, 0x8

    #@2b
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    #@2e
    .line 334
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@30
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->addView(Landroid/view/View;)V

    #@33
    .line 328
    return-void
.end method

.method private ensureTarget()V
    .locals 3

    #@0
    .prologue
    .line 543
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 544
    const/4 v1, 0x0

    #@5
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    #@8
    move-result v2

    #@9
    if-ge v1, v2, :cond_0

    #@b
    .line 545
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    #@e
    move-result-object v0

    #@f
    .line 546
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@11
    invoke-virtual {v0, v2}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_1

    #@17
    .line 547
    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    #@19
    .line 540
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    :cond_0
    return-void

    #@1a
    .line 544
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0
.end method

.method private finishSpinner(F)V
    .locals 5
    .param p1, "overscrollTop"    # F

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 911
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    #@5
    cmpl-float v1, p1, v1

    #@7
    if-lez v1, :cond_0

    #@9
    .line 912
    invoke-direct {p0, v4, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(ZZ)V

    #@c
    .line 910
    :goto_0
    return-void

    #@d
    .line 915
    :cond_0
    iput-boolean v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    #@f
    .line 916
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@11
    invoke-virtual {v1, v2, v2}, Landroid/support/v4/widget/MaterialProgressDrawable;->setStartEndTrim(FF)V

    #@14
    .line 917
    const/4 v0, 0x0

    #@15
    .line 918
    .local v0, "listener":Landroid/view/animation/Animation$AnimationListener;
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    #@17
    if-nez v1, :cond_1

    #@19
    .line 919
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$8;

    #@1b
    .end local v0    # "listener":Landroid/view/animation/Animation$AnimationListener;
    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$8;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    #@1e
    .line 938
    :cond_1
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    #@20
    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->animateOffsetToStartPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    #@23
    .line 939
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@25
    invoke-virtual {v1, v3}, Landroid/support/v4/widget/MaterialProgressDrawable;->showArrow(Z)V

    #@28
    goto :goto_0
.end method

.method private getMotionEventY(Landroid/view/MotionEvent;I)F
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "activePointerId"    # I

    #@0
    .prologue
    .line 707
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    #@3
    move-result v0

    #@4
    .line 708
    .local v0, "index":I
    if-gez v0, :cond_0

    #@6
    .line 709
    const/high16 v1, -0x40800000    # -1.0f

    #@8
    return v1

    #@9
    .line 711
    :cond_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    #@c
    move-result v1

    #@d
    return v1
.end method

.method private isAlphaUsedForScale()Z
    .locals 2

    #@0
    .prologue
    .line 349
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0xb

    #@4
    if-ge v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method private isAnimationRunning(Landroid/view/animation/Animation;)Z
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 860
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    :cond_0
    :goto_0
    return v0

    #@10
    :cond_1
    const/4 v0, 0x1

    #@11
    goto :goto_0
.end method

.method private moveSpinner(F)V
    .locals 20
    .param p1, "overscrollTop"    # F

    #@0
    .prologue
    .line 864
    move-object/from16 v0, p0

    #@2
    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@4
    const/4 v14, 0x1

    #@5
    invoke-virtual {v13, v14}, Landroid/support/v4/widget/MaterialProgressDrawable;->showArrow(Z)V

    #@8
    .line 865
    move-object/from16 v0, p0

    #@a
    iget v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    #@c
    div-float v6, p1, v13

    #@e
    .line 867
    .local v6, "originalDragPercent":F
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    #@11
    move-result v13

    #@12
    const/high16 v14, 0x3f800000    # 1.0f

    #@14
    invoke-static {v14, v13}, Ljava/lang/Math;->min(FF)F

    #@17
    move-result v3

    #@18
    .line 868
    .local v3, "dragPercent":F
    float-to-double v14, v3

    #@19
    const-wide v16, 0x3fd999999999999aL    # 0.4

    #@1e
    sub-double v14, v14, v16

    #@20
    const-wide/16 v16, 0x0

    #@22
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    #@25
    move-result-wide v14

    #@26
    double-to-float v13, v14

    #@27
    const/high16 v14, 0x40a00000    # 5.0f

    #@29
    mul-float/2addr v13, v14

    #@2a
    const/high16 v14, 0x40400000    # 3.0f

    #@2c
    div-float v2, v13, v14

    #@2e
    .line 869
    .local v2, "adjustedPercent":F
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    #@31
    move-result v13

    #@32
    move-object/from16 v0, p0

    #@34
    iget v14, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    #@36
    sub-float v5, v13, v14

    #@38
    .line 870
    .local v5, "extraOS":F
    move-object/from16 v0, p0

    #@3a
    iget-boolean v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    #@3c
    if-eqz v13, :cond_5

    #@3e
    move-object/from16 v0, p0

    #@40
    iget v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    #@42
    move-object/from16 v0, p0

    #@44
    iget v14, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    #@46
    int-to-float v14, v14

    #@47
    sub-float v8, v13, v14

    #@49
    .line 872
    .local v8, "slingshotDist":F
    :goto_0
    const/4 v13, 0x0

    #@4a
    const/high16 v14, 0x40000000    # 2.0f

    #@4c
    mul-float/2addr v14, v8

    #@4d
    invoke-static {v5, v14}, Ljava/lang/Math;->min(FF)F

    #@50
    move-result v14

    #@51
    div-float/2addr v14, v8

    #@52
    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    #@55
    move-result v12

    #@56
    .line 874
    .local v12, "tensionSlingshotPercent":F
    const/high16 v13, 0x40800000    # 4.0f

    #@58
    div-float v13, v12, v13

    #@5a
    float-to-double v14, v13

    #@5b
    .line 875
    const/high16 v13, 0x40800000    # 4.0f

    #@5d
    div-float v13, v12, v13

    #@5f
    float-to-double v0, v13

    #@60
    move-wide/from16 v16, v0

    #@62
    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    #@64
    .line 874
    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    #@67
    move-result-wide v16

    #@68
    sub-double v14, v14, v16

    #@6a
    double-to-float v13, v14

    #@6b
    .line 875
    const/high16 v14, 0x40000000    # 2.0f

    #@6d
    .line 874
    mul-float v11, v13, v14

    #@6f
    .line 876
    .local v11, "tensionPercent":F
    mul-float v13, v8, v11

    #@71
    const/high16 v14, 0x40000000    # 2.0f

    #@73
    mul-float v4, v13, v14

    #@75
    .line 878
    .local v4, "extraMove":F
    move-object/from16 v0, p0

    #@77
    iget v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    #@79
    mul-float v14, v8, v3

    #@7b
    add-float/2addr v14, v4

    #@7c
    float-to-int v14, v14

    #@7d
    add-int v10, v13, v14

    #@7f
    .line 880
    .local v10, "targetY":I
    move-object/from16 v0, p0

    #@81
    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@83
    invoke-virtual {v13}, Landroid/support/v4/widget/CircleImageView;->getVisibility()I

    #@86
    move-result v13

    #@87
    if-eqz v13, :cond_0

    #@89
    .line 881
    move-object/from16 v0, p0

    #@8b
    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@8d
    const/4 v14, 0x0

    #@8e
    invoke-virtual {v13, v14}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    #@91
    .line 883
    :cond_0
    move-object/from16 v0, p0

    #@93
    iget-boolean v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    #@95
    if-nez v13, :cond_1

    #@97
    .line 884
    move-object/from16 v0, p0

    #@99
    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@9b
    const/high16 v14, 0x3f800000    # 1.0f

    #@9d
    invoke-static {v13, v14}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    #@a0
    .line 885
    move-object/from16 v0, p0

    #@a2
    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@a4
    const/high16 v14, 0x3f800000    # 1.0f

    #@a6
    invoke-static {v13, v14}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    #@a9
    .line 887
    :cond_1
    move-object/from16 v0, p0

    #@ab
    iget v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    #@ad
    cmpg-float v13, p1, v13

    #@af
    if-gez v13, :cond_7

    #@b1
    .line 888
    move-object/from16 v0, p0

    #@b3
    iget-boolean v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    #@b5
    if-eqz v13, :cond_2

    #@b7
    .line 889
    move-object/from16 v0, p0

    #@b9
    iget v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    #@bb
    div-float v13, p1, v13

    #@bd
    move-object/from16 v0, p0

    #@bf
    invoke-direct {v0, v13}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    #@c2
    .line 891
    :cond_2
    move-object/from16 v0, p0

    #@c4
    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@c6
    invoke-virtual {v13}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    #@c9
    move-result v13

    #@ca
    const/16 v14, 0x4c

    #@cc
    if-le v13, v14, :cond_3

    #@ce
    .line 892
    move-object/from16 v0, p0

    #@d0
    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    #@d2
    move-object/from16 v0, p0

    #@d4
    invoke-direct {v0, v13}, Landroid/support/v4/widget/SwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    #@d7
    move-result v13

    #@d8
    if-eqz v13, :cond_6

    #@da
    .line 896
    :cond_3
    :goto_1
    const v13, 0x3f4ccccd    # 0.8f

    #@dd
    mul-float v9, v2, v13

    #@df
    .line 897
    .local v9, "strokeStart":F
    move-object/from16 v0, p0

    #@e1
    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@e3
    const v14, 0x3f4ccccd    # 0.8f

    #@e6
    invoke-static {v14, v9}, Ljava/lang/Math;->min(FF)F

    #@e9
    move-result v14

    #@ea
    const/4 v15, 0x0

    #@eb
    invoke-virtual {v13, v15, v14}, Landroid/support/v4/widget/MaterialProgressDrawable;->setStartEndTrim(FF)V

    #@ee
    .line 898
    move-object/from16 v0, p0

    #@f0
    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@f2
    const/high16 v14, 0x3f800000    # 1.0f

    #@f4
    invoke-static {v14, v2}, Ljava/lang/Math;->min(FF)F

    #@f7
    move-result v14

    #@f8
    invoke-virtual {v13, v14}, Landroid/support/v4/widget/MaterialProgressDrawable;->setArrowScale(F)V

    #@fb
    .line 905
    .end local v9    # "strokeStart":F
    :cond_4
    :goto_2
    const v13, 0x3ecccccd    # 0.4f

    #@fe
    mul-float/2addr v13, v2

    #@ff
    const/high16 v14, -0x41800000    # -0.25f

    #@101
    add-float/2addr v13, v14

    #@102
    const/high16 v14, 0x40000000    # 2.0f

    #@104
    mul-float/2addr v14, v11

    #@105
    add-float/2addr v13, v14

    #@106
    const/high16 v14, 0x3f000000    # 0.5f

    #@108
    mul-float v7, v13, v14

    #@10a
    .line 906
    .local v7, "rotation":F
    move-object/from16 v0, p0

    #@10c
    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@10e
    invoke-virtual {v13, v7}, Landroid/support/v4/widget/MaterialProgressDrawable;->setProgressRotation(F)V

    #@111
    .line 907
    move-object/from16 v0, p0

    #@113
    iget v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    #@115
    sub-int v13, v10, v13

    #@117
    const/4 v14, 0x1

    #@118
    move-object/from16 v0, p0

    #@11a
    invoke-direct {v0, v13, v14}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    #@11d
    .line 863
    return-void

    #@11e
    .line 871
    .end local v4    # "extraMove":F
    .end local v7    # "rotation":F
    .end local v8    # "slingshotDist":F
    .end local v10    # "targetY":I
    .end local v11    # "tensionPercent":F
    .end local v12    # "tensionSlingshotPercent":F
    :cond_5
    move-object/from16 v0, p0

    #@120
    iget v8, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    #@122
    .restart local v8    # "slingshotDist":F
    goto/16 :goto_0

    #@124
    .line 894
    .restart local v4    # "extraMove":F
    .restart local v10    # "targetY":I
    .restart local v11    # "tensionPercent":F
    .restart local v12    # "tensionSlingshotPercent":F
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startProgressAlphaStartAnimation()V

    #@127
    goto :goto_1

    #@128
    .line 900
    :cond_7
    move-object/from16 v0, p0

    #@12a
    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@12c
    invoke-virtual {v13}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    #@12f
    move-result v13

    #@130
    const/16 v14, 0xff

    #@132
    if-ge v13, v14, :cond_4

    #@134
    move-object/from16 v0, p0

    #@136
    iget-object v13, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    #@138
    move-object/from16 v0, p0

    #@13a
    invoke-direct {v0, v13}, Landroid/support/v4/widget/SwipeRefreshLayout;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    #@13d
    move-result v13

    #@13e
    if-nez v13, :cond_4

    #@140
    .line 902
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startProgressAlphaMaxAnimation()V

    #@143
    goto :goto_2
.end method

.method private moveToStart(F)V
    .locals 5
    .param p1, "interpolatedTime"    # F

    #@0
    .prologue
    .line 1087
    const/4 v1, 0x0

    #@1
    .line 1088
    .local v1, "targetTop":I
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    #@3
    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    #@5
    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    #@7
    sub-int/2addr v3, v4

    #@8
    int-to-float v3, v3

    #@9
    mul-float/2addr v3, p1

    #@a
    float-to-int v3, v3

    #@b
    add-int v1, v2, v3

    #@d
    .line 1089
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@f
    invoke-virtual {v2}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    #@12
    move-result v2

    #@13
    sub-int v0, v1, v2

    #@15
    .line 1090
    .local v0, "offset":I
    const/4 v2, 0x0

    #@16
    invoke-direct {p0, v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    #@19
    .line 1086
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 1134
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    #@3
    move-result v2

    #@4
    .line 1135
    .local v2, "pointerIndex":I
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@7
    move-result v1

    #@8
    .line 1136
    .local v1, "pointerId":I
    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    #@a
    if-ne v1, v3, :cond_0

    #@c
    .line 1139
    if-nez v2, :cond_1

    #@e
    const/4 v0, 0x1

    #@f
    .line 1140
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@12
    move-result v3

    #@13
    iput v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    #@15
    .line 1133
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    #@16
    .line 1139
    :cond_1
    const/4 v0, 0x0

    #@17
    .restart local v0    # "newPointerIndex":I
    goto :goto_0
.end method

.method private peek(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    #@0
    .prologue
    .line 1024
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    #@2
    .line 1025
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mPeek:Landroid/view/animation/Animation;

    #@4
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    #@7
    .line 1026
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mPeek:Landroid/view/animation/Animation;

    #@9
    const-wide/16 v2, 0x1f4

    #@b
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    #@e
    .line 1027
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mPeek:Landroid/view/animation/Animation;

    #@10
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    #@12
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@15
    .line 1028
    if-eqz p2, :cond_0

    #@17
    .line 1029
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@19
    invoke-virtual {v0, p2}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    #@1c
    .line 1031
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@1e
    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    #@21
    .line 1032
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@23
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mPeek:Landroid/view/animation/Animation;

    #@25
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    #@28
    .line 1023
    return-void
.end method

.method private setAnimationProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    #@0
    .prologue
    .line 404
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isAlphaUsedForScale()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 405
    const/high16 v0, 0x437f0000    # 255.0f

    #@8
    mul-float/2addr v0, p1

    #@9
    float-to-int v0, v0

    #@a
    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    #@d
    .line 403
    :goto_0
    return-void

    #@e
    .line 407
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@10
    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    #@13
    .line 408
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@15
    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    #@18
    goto :goto_0
.end method

.method private setColorViewAlpha(I)V
    .locals 1
    .param p1, "targetAlpha"    # I

    #@0
    .prologue
    .line 202
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@9
    .line 203
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@b
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    #@e
    .line 201
    return-void
.end method

.method private setRefreshing(ZZ)V
    .locals 2
    .param p1, "refreshing"    # Z
    .param p2, "notify"    # Z

    #@0
    .prologue
    .line 413
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 414
    iput-boolean p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNotify:Z

    #@6
    .line 415
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    #@9
    .line 416
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    #@b
    .line 417
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 418
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    #@11
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    #@13
    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->animateOffsetToCorrectPosition(ILandroid/view/animation/Animation$AnimationListener;)V

    #@16
    .line 412
    :cond_0
    :goto_0
    return-void

    #@17
    .line 420
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    #@19
    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    #@1c
    goto :goto_0
.end method

.method private setTargetOffsetTopAndBottom(IZ)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "requiresUpdate"    # Z

    #@0
    .prologue
    .line 1125
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->bringToFront()V

    #@5
    .line 1126
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@7
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircleImageView;->offsetTopAndBottom(I)V

    #@a
    .line 1127
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@c
    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    #@12
    .line 1128
    if-eqz p2, :cond_0

    #@14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@16
    const/16 v1, 0xb

    #@18
    if-ge v0, v1, :cond_0

    #@1a
    .line 1129
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->invalidate()V

    #@1d
    .line 1124
    :cond_0
    return-void
.end method

.method private startAlphaAnimation(II)Landroid/view/animation/Animation;
    .locals 5
    .param p1, "startingAlpha"    # I
    .param p2, "endingAlpha"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 449
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isAlphaUsedForScale()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 450
    return-object v4

    #@c
    .line 452
    :cond_0
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$7;

    #@e
    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout$7;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;II)V

    #@11
    .line 460
    .local v0, "alpha":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    #@13
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    #@16
    .line 462
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@18
    invoke-virtual {v1, v4}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    #@1b
    .line 463
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@1d
    invoke-virtual {v1}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    #@20
    .line 464
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@22
    invoke-virtual {v1, v0}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    #@25
    .line 465
    return-object v0
.end method

.method private startProgressAlphaMaxAnimation()V
    .locals 2

    #@0
    .prologue
    .line 443
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    #@5
    move-result v0

    #@6
    const/16 v1, 0xff

    #@8
    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAlphaMaxAnimation:Landroid/view/animation/Animation;

    #@e
    .line 442
    return-void
.end method

.method private startProgressAlphaStartAnimation()V
    .locals 2

    #@0
    .prologue
    .line 439
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    #@5
    move-result v0

    #@6
    const/16 v1, 0x4c

    #@8
    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->startAlphaAnimation(II)Landroid/view/animation/Animation;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mAlphaStartAnimation:Landroid/view/animation/Animation;

    #@e
    .line 438
    return-void
.end method

.method private startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    #@0
    .prologue
    .line 426
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$6;

    #@2
    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$6;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    #@5
    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    #@7
    .line 432
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    #@9
    const-wide/16 v2, 0x96

    #@b
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    #@e
    .line 433
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@10
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    #@13
    .line 434
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@15
    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    #@18
    .line 435
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@1a
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownAnimation:Landroid/view/animation/Animation;

    #@1c
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    #@1f
    .line 425
    return-void
.end method

.method private startScaleDownReturnToStartAnimation(ILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "from"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    #@0
    .prologue
    .line 1102
    iput p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    #@2
    .line 1103
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isAlphaUsedForScale()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 1104
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@a
    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->getAlpha()I

    #@d
    move-result v0

    #@e
    int-to-float v0, v0

    #@f
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mStartingScale:F

    #@11
    .line 1108
    :goto_0
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$9;

    #@13
    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$9;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    #@16
    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    #@18
    .line 1116
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    #@1a
    const-wide/16 v2, 0x96

    #@1c
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    #@1f
    .line 1117
    if-eqz p2, :cond_0

    #@21
    .line 1118
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@23
    invoke-virtual {v0, p2}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    #@26
    .line 1120
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@28
    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    #@2b
    .line 1121
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@2d
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleDownToStartAnimation:Landroid/view/animation/Animation;

    #@2f
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    #@32
    .line 1101
    return-void

    #@33
    .line 1106
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@35
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getScaleX(Landroid/view/View;)F

    #@38
    move-result v0

    #@39
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mStartingScale:F

    #@3b
    goto :goto_0
.end method

.method private startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    #@0
    .prologue
    .line 378
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    #@6
    .line 379
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@8
    const/16 v1, 0xb

    #@a
    if-lt v0, v1, :cond_0

    #@c
    .line 383
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@e
    const/16 v1, 0xff

    #@10
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    #@13
    .line 385
    :cond_0
    new-instance v0, Landroid/support/v4/widget/SwipeRefreshLayout$5;

    #@15
    invoke-direct {v0, p0}, Landroid/support/v4/widget/SwipeRefreshLayout$5;-><init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    #@18
    iput-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    #@1a
    .line 391
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    #@1c
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mMediumAnimationDuration:I

    #@1e
    int-to-long v2, v1

    #@1f
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    #@22
    .line 392
    if-eqz p1, :cond_1

    #@24
    .line 393
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@26
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircleImageView;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    #@29
    .line 395
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@2b
    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->clearAnimation()V

    #@2e
    .line 396
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@30
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScaleAnimation:Landroid/view/animation/Animation;

    #@32
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    #@35
    .line 377
    return-void
.end method


# virtual methods
.method public canChildScrollUp()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 633
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    #@5
    const/16 v4, 0xe

    #@7
    if-ge v3, v4, :cond_6

    #@9
    .line 634
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    #@b
    instance-of v3, v3, Landroid/widget/AbsListView;

    #@d
    if-eqz v3, :cond_3

    #@f
    .line 635
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    #@11
    check-cast v0, Landroid/widget/AbsListView;

    #@13
    .line 636
    .local v0, "absListView":Landroid/widget/AbsListView;
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    #@16
    move-result v3

    #@17
    if-lez v3, :cond_2

    #@19
    .line 637
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    #@1c
    move-result v3

    #@1d
    if-gtz v3, :cond_0

    #@1f
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    #@26
    move-result v3

    #@27
    .line 638
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    #@2a
    move-result v4

    #@2b
    .line 637
    if-ge v3, v4, :cond_1

    #@2d
    .line 636
    :cond_0
    :goto_0
    return v1

    #@2e
    :cond_1
    move v1, v2

    #@2f
    .line 637
    goto :goto_0

    #@30
    :cond_2
    move v1, v2

    #@31
    .line 636
    goto :goto_0

    #@32
    .line 640
    .end local v0    # "absListView":Landroid/widget/AbsListView;
    :cond_3
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    #@34
    invoke-static {v3, v5}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    #@37
    move-result v3

    #@38
    if-nez v3, :cond_4

    #@3a
    iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    #@3c
    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    #@3f
    move-result v3

    #@40
    if-lez v3, :cond_5

    #@42
    :cond_4
    :goto_1
    return v1

    #@43
    :cond_5
    move v1, v2

    #@44
    goto :goto_1

    #@45
    .line 643
    :cond_6
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    #@47
    invoke-static {v1, v5}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    #@4a
    move-result v1

    #@4b
    return v1
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    #@0
    .prologue
    .line 851
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    #@0
    .prologue
    .line 856
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    #@0
    .prologue
    .line 846
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    #@0
    .prologue
    .line 840
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move-object v5, p5

    #@7
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    #@0
    .prologue
    .line 314
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    #@2
    if-gez v0, :cond_0

    #@4
    .line 315
    return p2

    #@5
    .line 316
    :cond_0
    add-int/lit8 v0, p1, -0x1

    #@7
    if-ne p2, v0, :cond_1

    #@9
    .line 318
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    #@b
    return v0

    #@c
    .line 319
    :cond_1
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    #@e
    if-lt p2, v0, :cond_2

    #@10
    .line 321
    add-int/lit8 v0, p2, 0x1

    #@12
    return v0

    #@13
    .line 324
    :cond_2
    return p2
.end method

.method public getNestedScrollAxes()I
    .locals 1

    #@0
    .prologue
    .line 772
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getProgressCircleDiameter()I
    .locals 1

    #@0
    .prologue
    .line 625
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@6
    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->getMeasuredHeight()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    #@0
    .prologue
    .line 834
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 819
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isRefreshing()Z
    .locals 1

    #@0
    .prologue
    .line 537
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    #@2
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v5, -0x1

    #@2
    const/high16 v7, -0x40800000    # -1.0f

    #@4
    const/4 v6, 0x0

    #@5
    .line 649
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    #@8
    .line 651
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    #@b
    move-result v0

    #@c
    .line 653
    .local v0, "action":I
    iget-boolean v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    #@e
    if-eqz v4, :cond_0

    #@10
    if-nez v0, :cond_0

    #@12
    .line 654
    iput-boolean v6, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    #@14
    .line 657
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_1

    #@1a
    iget-boolean v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    #@1c
    if-nez v4, :cond_1

    #@1e
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    #@21
    move-result v4

    #@22
    if-nez v4, :cond_1

    #@24
    iget-boolean v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    #@26
    if-eqz v4, :cond_2

    #@28
    .line 659
    :cond_1
    return v6

    #@29
    .line 662
    :cond_2
    packed-switch v0, :pswitch_data_0

    #@2c
    .line 703
    :cond_3
    :goto_0
    :pswitch_0
    iget-boolean v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    #@2e
    return v4

    #@2f
    .line 664
    :pswitch_1
    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    #@31
    iget-object v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@33
    invoke-virtual {v5}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    #@36
    move-result v5

    #@37
    sub-int/2addr v4, v5

    #@38
    invoke-direct {p0, v4, v8}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    #@3b
    .line 665
    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@3e
    move-result v4

    #@3f
    iput v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    #@41
    .line 666
    iput-boolean v6, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    #@43
    .line 667
    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    #@45
    invoke-direct {p0, p1, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMotionEventY(Landroid/view/MotionEvent;I)F

    #@48
    move-result v1

    #@49
    .line 668
    .local v1, "initialDownY":F
    cmpl-float v4, v1, v7

    #@4b
    if-nez v4, :cond_4

    #@4d
    .line 669
    return v6

    #@4e
    .line 671
    :cond_4
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialDownY:F

    #@50
    goto :goto_0

    #@51
    .line 675
    .end local v1    # "initialDownY":F
    :pswitch_2
    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    #@53
    if-ne v4, v5, :cond_5

    #@55
    .line 676
    sget-object v4, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    #@57
    const-string/jumbo v5, "Got ACTION_MOVE event but don\'t have an active pointer id."

    #@5a
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    .line 677
    return v6

    #@5e
    .line 680
    :cond_5
    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    #@60
    invoke-direct {p0, p1, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMotionEventY(Landroid/view/MotionEvent;I)F

    #@63
    move-result v2

    #@64
    .line 681
    .local v2, "y":F
    cmpl-float v4, v2, v7

    #@66
    if-nez v4, :cond_6

    #@68
    .line 682
    return v6

    #@69
    .line 684
    :cond_6
    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialDownY:F

    #@6b
    sub-float v3, v2, v4

    #@6d
    .line 685
    .local v3, "yDiff":F
    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    #@6f
    int-to-float v4, v4

    #@70
    cmpl-float v4, v3, v4

    #@72
    if-lez v4, :cond_3

    #@74
    iget-boolean v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    #@76
    if-nez v4, :cond_3

    #@78
    .line 686
    iget v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialDownY:F

    #@7a
    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTouchSlop:I

    #@7c
    int-to-float v5, v5

    #@7d
    add-float/2addr v4, v5

    #@7e
    iput v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialMotionY:F

    #@80
    .line 687
    iput-boolean v8, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    #@82
    .line 688
    iget-object v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@84
    const/16 v5, 0x4c

    #@86
    invoke-virtual {v4, v5}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    #@89
    goto :goto_0

    #@8a
    .line 693
    .end local v2    # "y":F
    .end local v3    # "yDiff":F
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    #@8d
    goto :goto_0

    #@8e
    .line 698
    :pswitch_4
    iput-boolean v6, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    #@90
    .line 699
    iput v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    #@92
    goto :goto_0

    #@93
    .line 662
    nop

    #@94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    .line 565
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    #@3
    move-result v8

    #@4
    .line 566
    .local v8, "width":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    #@7
    move-result v7

    #@8
    .line 567
    .local v7, "height":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    #@b
    move-result v9

    #@c
    if-nez v9, :cond_0

    #@e
    .line 568
    return-void

    #@f
    .line 570
    :cond_0
    iget-object v9, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    #@11
    if-nez v9, :cond_1

    #@13
    .line 571
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    #@16
    .line 573
    :cond_1
    iget-object v9, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    #@18
    if-nez v9, :cond_2

    #@1a
    .line 574
    return-void

    #@1b
    .line 576
    :cond_2
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    #@1d
    .line 577
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    #@20
    move-result v2

    #@21
    .line 578
    .local v2, "childLeft":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    #@24
    move-result v3

    #@25
    .line 579
    .local v3, "childTop":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    #@28
    move-result v9

    #@29
    sub-int v9, v8, v9

    #@2b
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    #@2e
    move-result v10

    #@2f
    sub-int v4, v9, v10

    #@31
    .line 580
    .local v4, "childWidth":I
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    #@34
    move-result v9

    #@35
    sub-int v9, v7, v9

    #@37
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    #@3a
    move-result v10

    #@3b
    sub-int v1, v9, v10

    #@3d
    .line 581
    .local v1, "childHeight":I
    add-int v9, v2, v4

    #@3f
    add-int v10, v3, v1

    #@41
    invoke-virtual {v0, v2, v3, v9, v10}, Landroid/view/View;->layout(IIII)V

    #@44
    .line 582
    iget-object v9, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@46
    invoke-virtual {v9}, Landroid/support/v4/widget/CircleImageView;->getMeasuredWidth()I

    #@49
    move-result v6

    #@4a
    .line 583
    .local v6, "circleWidth":I
    iget-object v9, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@4c
    invoke-virtual {v9}, Landroid/support/v4/widget/CircleImageView;->getMeasuredHeight()I

    #@4f
    move-result v5

    #@50
    .line 584
    .local v5, "circleHeight":I
    iget-object v9, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@52
    div-int/lit8 v10, v8, 0x2

    #@54
    div-int/lit8 v11, v6, 0x2

    #@56
    sub-int/2addr v10, v11

    #@57
    iget v11, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    #@59
    .line 585
    div-int/lit8 v12, v8, 0x2

    #@5b
    div-int/lit8 v13, v6, 0x2

    #@5d
    add-int/2addr v12, v13

    #@5e
    iget v13, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    #@60
    add-int/2addr v13, v5

    #@61
    .line 584
    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/support/v4/widget/CircleImageView;->layout(IIII)V

    #@64
    .line 564
    return-void
.end method

.method public onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    #@2
    .line 590
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    #@5
    .line 591
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    #@7
    if-nez v1, :cond_0

    #@9
    .line 592
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    #@c
    .line 594
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    #@e
    if-nez v1, :cond_1

    #@10
    .line 595
    return-void

    #@11
    .line 597
    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    #@13
    .line 598
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredWidth()I

    #@16
    move-result v2

    #@17
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingLeft()I

    #@1a
    move-result v3

    #@1b
    sub-int/2addr v2, v3

    #@1c
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingRight()I

    #@1f
    move-result v3

    #@20
    sub-int/2addr v2, v3

    #@21
    .line 597
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@24
    move-result v2

    #@25
    .line 600
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getMeasuredHeight()I

    #@28
    move-result v3

    #@29
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingTop()I

    #@2c
    move-result v4

    #@2d
    sub-int/2addr v3, v4

    #@2e
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getPaddingBottom()I

    #@31
    move-result v4

    #@32
    sub-int/2addr v3, v4

    #@33
    .line 599
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@36
    move-result v3

    #@37
    .line 597
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    #@3a
    .line 601
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@3c
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleWidth:I

    #@3e
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@41
    move-result v2

    #@42
    .line 602
    iget v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleHeight:I

    #@44
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@47
    move-result v3

    #@48
    .line 601
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/CircleImageView;->measure(II)V

    #@4b
    .line 603
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    #@4d
    if-nez v1, :cond_2

    #@4f
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetCalculated:Z

    #@51
    if-eqz v1, :cond_4

    #@53
    .line 607
    :cond_2
    :goto_0
    const/4 v1, -0x1

    #@54
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    #@56
    .line 609
    const/4 v0, 0x0

    #@57
    .local v0, "index":I
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildCount()I

    #@5a
    move-result v1

    #@5b
    if-ge v0, v1, :cond_3

    #@5d
    .line 610
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getChildAt(I)Landroid/view/View;

    #@60
    move-result-object v1

    #@61
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@63
    if-ne v1, v2, :cond_5

    #@65
    .line 611
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleViewIndex:I

    #@67
    .line 589
    :cond_3
    return-void

    #@68
    .line 604
    .end local v0    # "index":I
    :cond_4
    const/4 v1, 0x1

    #@69
    iput-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetCalculated:Z

    #@6b
    .line 605
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@6d
    invoke-virtual {v1}, Landroid/support/v4/widget/CircleImageView;->getMeasuredHeight()I

    #@70
    move-result v1

    #@71
    neg-int v1, v1

    #@72
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    #@74
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    #@76
    goto :goto_0

    #@77
    .line 609
    .restart local v0    # "index":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    #@79
    goto :goto_1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    #@0
    .prologue
    .line 809
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    #@0
    .prologue
    .line 804
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v4, 0x1

    #@3
    .line 750
    if-lez p3, :cond_0

    #@5
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    #@7
    cmpl-float v1, v1, v3

    #@9
    if-lez v1, :cond_0

    #@b
    .line 751
    int-to-float v1, p3

    #@c
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    #@e
    cmpl-float v1, v1, v2

    #@10
    if-lez v1, :cond_2

    #@12
    .line 752
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    #@14
    float-to-int v1, v1

    #@15
    sub-int v1, p3, v1

    #@17
    aput v1, p4, v4

    #@19
    .line 753
    iput v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    #@1b
    .line 759
    :goto_0
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    #@1d
    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->moveSpinner(F)V

    #@20
    .line 763
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mParentScrollConsumed:[I

    #@22
    .line 764
    .local v0, "parentConsumed":[I
    aget v1, p4, v5

    #@24
    sub-int v1, p2, v1

    #@26
    aget v2, p4, v4

    #@28
    sub-int v2, p3, v2

    #@2a
    const/4 v3, 0x0

    #@2b
    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_1

    #@31
    .line 765
    aget v1, p4, v5

    #@33
    aget v2, v0, v5

    #@35
    add-int/2addr v1, v2

    #@36
    aput v1, p4, v5

    #@38
    .line 766
    aget v1, p4, v4

    #@3a
    aget v2, v0, v4

    #@3c
    add-int/2addr v1, v2

    #@3d
    aput v1, p4, v4

    #@3f
    .line 747
    :cond_1
    return-void

    #@40
    .line 755
    .end local v0    # "parentConsumed":[I
    :cond_2
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    #@42
    int-to-float v2, p3

    #@43
    sub-float/2addr v1, v2

    #@44
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    #@46
    .line 756
    aput p3, p4, v4

    #@48
    goto :goto_0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    #@0
    .prologue
    .line 791
    if-gez p5, :cond_0

    #@2
    .line 792
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    #@5
    move-result p5

    #@6
    .line 793
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    #@8
    int-to-float v1, p5

    #@9
    add-float/2addr v0, v1

    #@a
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    #@c
    .line 794
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    #@e
    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->moveSpinner(F)V

    #@11
    .line 797
    :cond_0
    const/4 v5, 0x0

    #@12
    move-object v0, p0

    #@13
    move v1, p2

    #@14
    move v2, p3

    #@15
    move v3, p4

    #@16
    move v4, p2

    #@17
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->dispatchNestedScroll(IIII[I)Z

    #@1a
    .line 790
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    #@0
    .prologue
    .line 742
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    #@5
    .line 743
    const/4 v0, 0x0

    #@6
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    #@8
    .line 740
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 731
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    and-int/lit8 v0, p3, 0x2

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 733
    and-int/lit8 v0, p3, 0x2

    #@d
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->startNestedScroll(I)Z

    #@10
    .line 734
    const/4 v0, 0x1

    #@11
    return v0

    #@12
    .line 736
    :cond_0
    return v1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 777
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    #@3
    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    #@6
    .line 780
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    #@8
    cmpl-float v0, v0, v1

    #@a
    if-lez v0, :cond_0

    #@c
    .line 781
    iget v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    #@e
    invoke-direct {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->finishSpinner(F)V

    #@11
    .line 782
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalUnconsumed:F

    #@13
    .line 785
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->stopNestedScroll()V

    #@16
    .line 776
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, -0x1

    #@2
    const/high16 v6, 0x3f000000    # 0.5f

    #@4
    const/4 v7, 0x0

    #@5
    .line 945
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    #@8
    move-result v0

    #@9
    .line 947
    .local v0, "action":I
    iget-boolean v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    #@b
    if-eqz v5, :cond_0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 948
    iput-boolean v7, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    #@11
    .line 951
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->isEnabled()Z

    #@14
    move-result v5

    #@15
    if-eqz v5, :cond_1

    #@17
    iget-boolean v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mReturningToStart:Z

    #@19
    if-nez v5, :cond_1

    #@1b
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->canChildScrollUp()Z

    #@1e
    move-result v5

    #@1f
    if-eqz v5, :cond_2

    #@21
    .line 953
    :cond_1
    return v7

    #@22
    .line 956
    :cond_2
    packed-switch v0, :pswitch_data_0

    #@25
    .line 1008
    :cond_3
    :goto_0
    :pswitch_0
    return v9

    #@26
    .line 958
    :pswitch_1
    invoke-static {p1, v7}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@29
    move-result v5

    #@2a
    iput v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    #@2c
    .line 959
    iput-boolean v7, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    #@2e
    goto :goto_0

    #@2f
    .line 963
    :pswitch_2
    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    #@31
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    #@34
    move-result v3

    #@35
    .line 964
    .local v3, "pointerIndex":I
    if-gez v3, :cond_4

    #@37
    .line 965
    sget-object v5, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    #@39
    const-string/jumbo v6, "Got ACTION_MOVE event but have an invalid active pointer id."

    #@3c
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    .line 966
    return v7

    #@40
    .line 969
    :cond_4
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    #@43
    move-result v4

    #@44
    .line 970
    .local v4, "y":F
    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialMotionY:F

    #@46
    sub-float v5, v4, v5

    #@48
    mul-float v2, v5, v6

    #@4a
    .line 971
    .local v2, "overscrollTop":F
    iget-boolean v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    #@4c
    if-eqz v5, :cond_3

    #@4e
    .line 972
    const/4 v5, 0x0

    #@4f
    cmpl-float v5, v2, v5

    #@51
    if-lez v5, :cond_5

    #@53
    .line 973
    invoke-direct {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->moveSpinner(F)V

    #@56
    goto :goto_0

    #@57
    .line 975
    :cond_5
    return v7

    #@58
    .line 981
    .end local v2    # "overscrollTop":F
    .end local v3    # "pointerIndex":I
    .end local v4    # "y":F
    :pswitch_3
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    #@5b
    move-result v1

    #@5c
    .line 982
    .local v1, "index":I
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    #@5f
    move-result v5

    #@60
    iput v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    #@62
    goto :goto_0

    #@63
    .line 987
    .end local v1    # "index":I
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    #@66
    goto :goto_0

    #@67
    .line 992
    :pswitch_5
    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    #@69
    if-ne v5, v8, :cond_7

    #@6b
    .line 993
    if-ne v0, v9, :cond_6

    #@6d
    .line 994
    sget-object v5, Landroid/support/v4/widget/SwipeRefreshLayout;->LOG_TAG:Ljava/lang/String;

    #@6f
    const-string/jumbo v6, "Got ACTION_UP event but don\'t have an active pointer id."

    #@72
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@75
    .line 996
    :cond_6
    return v7

    #@76
    .line 998
    :cond_7
    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    #@78
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    #@7b
    move-result v3

    #@7c
    .line 999
    .restart local v3    # "pointerIndex":I
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    #@7f
    move-result v4

    #@80
    .line 1000
    .restart local v4    # "y":F
    iget v5, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mInitialMotionY:F

    #@82
    sub-float v5, v4, v5

    #@84
    mul-float v2, v5, v6

    #@86
    .line 1001
    .restart local v2    # "overscrollTop":F
    iput-boolean v7, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mIsBeingDragged:Z

    #@88
    .line 1002
    invoke-direct {p0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->finishSpinner(F)V

    #@8b
    .line 1003
    iput v8, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mActivePointerId:I

    #@8d
    .line 1004
    return v7

    #@8e
    .line 956
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 719
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x15

    #@4
    if-ge v0, v1, :cond_0

    #@6
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    #@8
    instance-of v0, v0, Landroid/widget/AbsListView;

    #@a
    if-nez v0, :cond_2

    #@c
    .line 720
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    #@e
    if-eqz v0, :cond_1

    #@10
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTarget:Landroid/view/View;

    #@12
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isNestedScrollingEnabled(Landroid/view/View;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 723
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    #@1b
    .line 715
    :cond_2
    return-void
.end method

.method public varargs setColorScheme([I)V
    .locals 0
    .param p1, "colors"    # [I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 500
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    #@3
    .line 499
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1
    .param p1, "colors"    # [I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    #@0
    .prologue
    .line 528
    invoke-direct {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->ensureTarget()V

    #@3
    .line 529
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@5
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setColorSchemeColors([I)V

    #@8
    .line 527
    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4
    .param p1, "colorResIds"    # [I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    #@0
    .prologue
    .line 511
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v2

    #@4
    .line 512
    .local v2, "res":Landroid/content/res/Resources;
    array-length v3, p1

    #@5
    new-array v0, v3, [I

    #@7
    .line 513
    .local v0, "colorRes":[I
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    array-length v3, p1

    #@9
    if-ge v1, v3, :cond_0

    #@b
    .line 514
    aget v3, p1, v1

    #@d
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    #@10
    move-result v3

    #@11
    aput v3, v0, v1

    #@13
    .line 513
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 516
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    #@19
    .line 510
    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .locals 1
    .param p1, "distance"    # I

    #@0
    .prologue
    .line 560
    int-to-float v0, p1

    #@1
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mTotalDragDistance:F

    #@3
    .line 559
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 814
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    #@2
    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    #@5
    .line 813
    return-void
.end method

.method public setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    #@0
    .prologue
    .line 342
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    #@2
    .line 341
    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0
    .param p1, "colorRes"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 473
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    #@3
    .line 472
    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    #@0
    .prologue
    .line 491
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@2
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/CircleImageView;->setBackgroundColor(I)V

    #@5
    .line 492
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@7
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setBackgroundColor(I)V

    #@a
    .line 490
    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .locals 1
    .param p1, "colorRes"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    #@0
    .prologue
    .line 482
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    #@b
    .line 481
    return-void
.end method

.method public setProgressViewEndTarget(ZI)V
    .locals 1
    .param p1, "scale"    # Z
    .param p2, "end"    # I

    #@0
    .prologue
    .line 242
    int-to-float v0, p2

    #@1
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    #@3
    .line 243
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    #@5
    .line 244
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@7
    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->invalidate()V

    #@a
    .line 241
    return-void
.end method

.method public setProgressViewOffset(ZII)V
    .locals 2
    .param p1, "scale"    # Z
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 221
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mScale:Z

    #@2
    .line 222
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@4
    const/16 v1, 0x8

    #@6
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CircleImageView;->setVisibility(I)V

    #@9
    .line 223
    iput p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    #@b
    iput p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    #@d
    .line 224
    int-to-float v0, p3

    #@e
    iput v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    #@10
    .line 225
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    #@13
    .line 226
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@15
    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->invalidate()V

    #@18
    .line 220
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 4
    .param p1, "refreshing"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 359
    if-eqz p1, :cond_1

    #@3
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    #@5
    if-eq v1, p1, :cond_1

    #@7
    .line 361
    iput-boolean p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z

    #@9
    .line 362
    const/4 v0, 0x0

    #@a
    .line 363
    .local v0, "endTarget":I
    iget-boolean v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z

    #@c
    if-nez v1, :cond_0

    #@e
    .line 364
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    #@10
    iget v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    #@12
    int-to-float v2, v2

    #@13
    add-float/2addr v1, v2

    #@14
    float-to-int v0, v1

    #@15
    .line 368
    :goto_0
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I

    #@17
    sub-int v1, v0, v1

    #@19
    .line 369
    const/4 v2, 0x1

    #@1a
    .line 368
    invoke-direct {p0, v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V

    #@1d
    .line 370
    iput-boolean v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNotify:Z

    #@1f
    .line 371
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshListener:Landroid/view/animation/Animation$AnimationListener;

    #@21
    invoke-direct {p0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleUpAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    #@24
    .line 358
    .end local v0    # "endTarget":I
    :goto_1
    return-void

    #@25
    .line 366
    .restart local v0    # "endTarget":I
    :cond_0
    iget v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerFinalOffset:F

    #@27
    float-to-int v0, v1

    #@28
    goto :goto_0

    #@29
    .line 373
    .end local v0    # "endTarget":I
    :cond_1
    invoke-direct {p0, p1, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(ZZ)V

    #@2c
    goto :goto_1
.end method

.method public setSize(I)V
    .locals 3
    .param p1, "size"    # I

    #@0
    .prologue
    .line 251
    if-eqz p1, :cond_0

    #@2
    const/4 v1, 0x1

    #@3
    if-eq p1, v1, :cond_0

    #@5
    .line 252
    return-void

    #@6
    .line 254
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/SwipeRefreshLayout;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@d
    move-result-object v0

    #@e
    .line 255
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    if-nez p1, :cond_1

    #@10
    .line 256
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    #@12
    const/high16 v2, 0x42600000    # 56.0f

    #@14
    mul-float/2addr v1, v2

    #@15
    float-to-int v1, v1

    #@16
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleWidth:I

    #@18
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleHeight:I

    #@1a
    .line 263
    :goto_0
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@1c
    const/4 v2, 0x0

    #@1d
    invoke-virtual {v1, v2}, Landroid/support/v4/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@20
    .line 264
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@22
    invoke-virtual {v1, p1}, Landroid/support/v4/widget/MaterialProgressDrawable;->updateSizes(I)V

    #@25
    .line 265
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;

    #@27
    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;

    #@29
    invoke-virtual {v1, v2}, Landroid/support/v4/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@2c
    .line 250
    return-void

    #@2d
    .line 258
    :cond_1
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    #@2f
    const/high16 v2, 0x42200000    # 40.0f

    #@31
    mul-float/2addr v1, v2

    #@32
    float-to-int v1, v1

    #@33
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleWidth:I

    #@35
    iput v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleHeight:I

    #@37
    goto :goto_0
.end method

.method public startNestedScroll(I)Z
    .locals 1
    .param p1, "axes"    # I

    #@0
    .prologue
    .line 824
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    #@2
    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    #@0
    .prologue
    .line 829
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNestedScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    #@5
    .line 828
    return-void
.end method
