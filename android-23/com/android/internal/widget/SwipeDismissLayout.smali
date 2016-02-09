.class public Lcom/android/internal/widget/SwipeDismissLayout;
.super Landroid/widget/FrameLayout;
.source "SwipeDismissLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;,
        Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;,
        Lcom/android/internal/widget/SwipeDismissLayout$1;,
        Lcom/android/internal/widget/SwipeDismissLayout$2;
    }
.end annotation


# static fields
.field private static final DISMISS_MIN_DRAG_WIDTH_RATIO:F = 0.33f

.field private static final TAG:Ljava/lang/String; = "SwipeDismissLayout"


# instance fields
.field private mActiveTouchId:I

.field private mDiscardIntercept:Z

.field private mDismissed:Z

.field private mDismissedListener:Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;

.field private mDownX:F

.field private mDownY:F

.field private mLastX:F

.field private mMinFlingVelocity:I

.field private mOnEnterAnimationCompleteListener:Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;

.field private mProgressListener:Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

.field private mScreenOffFilter:Landroid/content/IntentFilter;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mSlop:I

.field private mSwiping:Z

.field private mTranslationX:F

.field private mUseDynamicTranslucency:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/SwipeDismissLayout;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/widget/SwipeDismissLayout;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mUseDynamicTranslucency:Z

    #@2
    return v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/widget/SwipeDismissLayout;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->dismiss()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/widget/SwipeDismissLayout;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->resetMembers()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 107
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@3
    .line 42
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mUseDynamicTranslucency:Z

    #@6
    .line 79
    new-instance v0, Lcom/android/internal/widget/SwipeDismissLayout$1;

    #@8
    invoke-direct {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$1;-><init>(Lcom/android/internal/widget/SwipeDismissLayout;)V

    #@b
    .line 78
    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mOnEnterAnimationCompleteListener:Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;

    #@d
    .line 91
    new-instance v0, Lcom/android/internal/widget/SwipeDismissLayout$2;

    #@f
    invoke-direct {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$2;-><init>(Lcom/android/internal/widget/SwipeDismissLayout;)V

    #@12
    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    #@14
    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    #@16
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    #@19
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@1c
    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffFilter:Landroid/content/IntentFilter;

    #@1e
    .line 108
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->init(Landroid/content/Context;)V

    #@21
    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 42
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mUseDynamicTranslucency:Z

    #@6
    .line 79
    new-instance v0, Lcom/android/internal/widget/SwipeDismissLayout$1;

    #@8
    invoke-direct {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$1;-><init>(Lcom/android/internal/widget/SwipeDismissLayout;)V

    #@b
    .line 78
    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mOnEnterAnimationCompleteListener:Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;

    #@d
    .line 91
    new-instance v0, Lcom/android/internal/widget/SwipeDismissLayout$2;

    #@f
    invoke-direct {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$2;-><init>(Lcom/android/internal/widget/SwipeDismissLayout;)V

    #@12
    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    #@14
    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    #@16
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    #@19
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@1c
    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffFilter:Landroid/content/IntentFilter;

    #@1e
    .line 113
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->init(Landroid/content/Context;)V

    #@21
    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    #@0
    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 42
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mUseDynamicTranslucency:Z

    #@6
    .line 79
    new-instance v0, Lcom/android/internal/widget/SwipeDismissLayout$1;

    #@8
    invoke-direct {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$1;-><init>(Lcom/android/internal/widget/SwipeDismissLayout;)V

    #@b
    .line 78
    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mOnEnterAnimationCompleteListener:Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;

    #@d
    .line 91
    new-instance v0, Lcom/android/internal/widget/SwipeDismissLayout$2;

    #@f
    invoke-direct {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$2;-><init>(Lcom/android/internal/widget/SwipeDismissLayout;)V

    #@12
    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    #@14
    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    #@16
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    #@19
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@1c
    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffFilter:Landroid/content/IntentFilter;

    #@1e
    .line 118
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->init(Landroid/content/Context;)V

    #@21
    .line 116
    return-void
.end method

.method private dismiss()V
    .locals 1

    #@0
    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissedListener:Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 266
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissedListener:Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;

    #@6
    invoke-interface {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;->onDismissed(Lcom/android/internal/widget/SwipeDismissLayout;)V

    #@9
    .line 264
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 122
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@3
    move-result-object v1

    #@4
    .line 123
    .local v1, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@7
    move-result v2

    #@8
    iput v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSlop:I

    #@a
    .line 124
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    #@d
    move-result v2

    #@e
    iput v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mMinFlingVelocity:I

    #@10
    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@13
    move-result-object v2

    #@14
    .line 126
    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    #@16
    .line 125
    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@19
    move-result-object v0

    #@1a
    .line 128
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x5

    #@1b
    .line 127
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    const/4 v2, 0x0

    #@22
    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mUseDynamicTranslucency:Z

    #@24
    .line 129
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@27
    .line 121
    return-void

    #@28
    .line 127
    :cond_0
    const/4 v2, 0x1

    #@29
    goto :goto_0
.end method

.method private resetMembers()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 283
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 284
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@9
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    #@c
    .line 286
    :cond_0
    iput-object v3, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@e
    .line 287
    iput v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mTranslationX:F

    #@10
    .line 288
    iput v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    #@12
    .line 289
    iput v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownY:F

    #@14
    .line 290
    iput-boolean v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    #@16
    .line 291
    iput-boolean v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    #@18
    .line 292
    iput-boolean v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDiscardIntercept:Z

    #@1a
    .line 282
    return-void
.end method

.method private setProgress(F)V
    .locals 2
    .param p1, "deltaX"    # F

    #@0
    .prologue
    .line 258
    iput p1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mTranslationX:F

    #@2
    .line 259
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mProgressListener:Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    cmpl-float v0, p1, v0

    #@9
    if-ltz v0, :cond_0

    #@b
    .line 260
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mProgressListener:Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

    #@d
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->getWidth()I

    #@10
    move-result v1

    #@11
    int-to-float v1, v1

    #@12
    div-float v1, p1, v1

    #@14
    invoke-interface {v0, p0, v1, p1}, Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;->onSwipeProgressChanged(Lcom/android/internal/widget/SwipeDismissLayout;FF)V

    #@17
    .line 257
    :cond_0
    return-void
.end method

.method private updateDismiss(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const v3, 0x3ea8f5c3    # 0.33f

    #@3
    .line 308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    #@6
    move-result v1

    #@7
    iget v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    #@9
    sub-float v0, v1, v2

    #@b
    .line 309
    .local v0, "deltaX":F
    iget-object v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@d
    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@10
    .line 310
    iget-object v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@12
    const/16 v2, 0x3e8

    #@14
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    #@17
    .line 311
    iget-boolean v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    #@19
    if-nez v1, :cond_0

    #@1b
    .line 313
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->getWidth()I

    #@1e
    move-result v1

    #@1f
    int-to-float v1, v1

    #@20
    mul-float/2addr v1, v3

    #@21
    cmpl-float v1, v0, v1

    #@23
    if-lez v1, :cond_0

    #@25
    .line 314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    #@28
    move-result v1

    #@29
    iget v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mLastX:F

    #@2b
    cmpl-float v1, v1, v2

    #@2d
    if-ltz v1, :cond_0

    #@2f
    .line 315
    const/4 v1, 0x1

    #@30
    iput-boolean v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    #@32
    .line 319
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    #@34
    if-eqz v1, :cond_2

    #@36
    iget-boolean v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    #@38
    if-eqz v1, :cond_2

    #@3a
    .line 321
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->getWidth()I

    #@3d
    move-result v1

    #@3e
    int-to-float v1, v1

    #@3f
    mul-float/2addr v1, v3

    #@40
    cmpg-float v1, v0, v1

    #@42
    if-ltz v1, :cond_1

    #@44
    .line 323
    iget-object v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@46
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    #@49
    move-result v1

    #@4a
    iget v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mMinFlingVelocity:I

    #@4c
    neg-int v2, v2

    #@4d
    int-to-float v2, v2

    #@4e
    cmpg-float v1, v1, v2

    #@50
    if-gez v1, :cond_2

    #@52
    .line 324
    :cond_1
    const/4 v1, 0x0

    #@53
    iput-boolean v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    #@55
    .line 307
    :cond_2
    return-void
.end method

.method private updateSwiping(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 296
    iget-boolean v3, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    #@3
    if-nez v3, :cond_1

    #@5
    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    #@8
    move-result v3

    #@9
    iget v4, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    #@b
    sub-float v0, v3, v4

    #@d
    .line 298
    .local v0, "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    #@10
    move-result v3

    #@11
    iget v4, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownY:F

    #@13
    sub-float v1, v3, v4

    #@15
    .line 299
    .local v1, "deltaY":F
    mul-float v3, v0, v0

    #@17
    mul-float v4, v1, v1

    #@19
    add-float/2addr v3, v4

    #@1a
    iget v4, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSlop:I

    #@1c
    iget v5, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSlop:I

    #@1e
    mul-int/2addr v4, v5

    #@1f
    int-to-float v4, v4

    #@20
    cmpl-float v3, v3, v4

    #@22
    if-lez v3, :cond_2

    #@24
    .line 300
    iget v3, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSlop:I

    #@26
    mul-int/lit8 v3, v3, 0x2

    #@28
    int-to-float v3, v3

    #@29
    cmpl-float v3, v0, v3

    #@2b
    if-lez v3, :cond_0

    #@2d
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    #@30
    move-result v3

    #@31
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@34
    move-result v4

    #@35
    cmpg-float v3, v3, v4

    #@37
    if-gez v3, :cond_0

    #@39
    const/4 v2, 0x1

    #@3a
    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    #@3c
    .line 295
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    :cond_1
    :goto_0
    return-void

    #@3d
    .line 302
    .restart local v0    # "deltaX":F
    .restart local v1    # "deltaY":F
    :cond_2
    iput-boolean v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    #@3f
    goto :goto_0
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZFFF)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # F
    .param p4, "x"    # F
    .param p5, "y"    # F

    #@0
    .prologue
    .line 341
    instance-of v0, p1, Landroid/view/ViewGroup;

    #@2
    if-eqz v0, :cond_1

    #@4
    move-object v7, p1

    #@5
    .line 342
    check-cast v7, Landroid/view/ViewGroup;

    #@7
    .line 343
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    #@a
    move-result v9

    #@b
    .line 344
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    #@e
    move-result v10

    #@f
    .line 345
    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    #@12
    move-result v6

    #@13
    .line 346
    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    #@15
    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    #@17
    .line 347
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@1a
    move-result-object v1

    #@1b
    .line 348
    .local v1, "child":Landroid/view/View;
    int-to-float v0, v9

    #@1c
    add-float/2addr v0, p4

    #@1d
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    #@20
    move-result v2

    #@21
    int-to-float v2, v2

    #@22
    cmpl-float v0, v0, v2

    #@24
    if-ltz v0, :cond_0

    #@26
    int-to-float v0, v9

    #@27
    add-float/2addr v0, p4

    #@28
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    #@2b
    move-result v2

    #@2c
    int-to-float v2, v2

    #@2d
    cmpg-float v0, v0, v2

    #@2f
    if-gez v0, :cond_0

    #@31
    .line 349
    int-to-float v0, v10

    #@32
    add-float v0, v0, p5

    #@34
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@37
    move-result v2

    #@38
    int-to-float v2, v2

    #@39
    cmpl-float v0, v0, v2

    #@3b
    if-ltz v0, :cond_0

    #@3d
    int-to-float v0, v10

    #@3e
    add-float v0, v0, p5

    #@40
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    #@43
    move-result v2

    #@44
    int-to-float v2, v2

    #@45
    cmpg-float v0, v0, v2

    #@47
    if-gez v0, :cond_0

    #@49
    .line 350
    int-to-float v0, v9

    #@4a
    add-float/2addr v0, p4

    #@4b
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    #@4e
    move-result v2

    #@4f
    int-to-float v2, v2

    #@50
    sub-float v4, v0, v2

    #@52
    .line 351
    int-to-float v0, v10

    #@53
    add-float v0, v0, p5

    #@55
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@58
    move-result v2

    #@59
    int-to-float v2, v2

    #@5a
    sub-float v5, v0, v2

    #@5c
    .line 350
    const/4 v2, 0x1

    #@5d
    move-object v0, p0

    #@5e
    move v3, p3

    #@5f
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/SwipeDismissLayout;->canScroll(Landroid/view/View;ZFFF)Z

    #@62
    move-result v0

    #@63
    .line 348
    if-eqz v0, :cond_0

    #@65
    .line 352
    const/4 v0, 0x1

    #@66
    return v0

    #@67
    .line 346
    :cond_0
    add-int/lit8 v8, v8, -0x1

    #@69
    goto :goto_0

    #@6a
    .line 357
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    if-eqz p2, :cond_2

    #@6c
    neg-float v0, p3

    #@6d
    float-to-int v0, v0

    #@6e
    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    #@71
    move-result v0

    #@72
    :goto_1
    return v0

    #@73
    :cond_2
    const/4 v0, 0x0

    #@74
    goto :goto_1
.end method

.method protected cancel()V
    .locals 1

    #@0
    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mUseDynamicTranslucency:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->getContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    instance-of v0, v0, Landroid/app/Activity;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 272
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->getContext()Landroid/content/Context;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/app/Activity;

    #@12
    invoke-virtual {v0}, Landroid/app/Activity;->convertFromTranslucent()V

    #@15
    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mProgressListener:Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 275
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mProgressListener:Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

    #@1b
    invoke-interface {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;->onSwipeCancelled(Lcom/android/internal/widget/SwipeDismissLayout;)V

    #@1e
    .line 270
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    #@0
    .prologue
    .line 142
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    #@3
    .line 143
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->getContext()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    instance-of v0, v0, Landroid/app/Activity;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 144
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@e
    move-result-object v0

    #@f
    .line 145
    iget-object v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mOnEnterAnimationCompleteListener:Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;

    #@11
    .line 144
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnEnterAnimationCompleteListener(Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;)V

    #@14
    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->getContext()Landroid/content/Context;

    #@17
    move-result-object v0

    #@18
    iget-object v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    #@1a
    iget-object v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffFilter:Landroid/content/IntentFilter;

    #@1c
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@1f
    .line 141
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    #@0
    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    #@6
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@9
    .line 153
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->getContext()Landroid/content/Context;

    #@c
    move-result-object v0

    #@d
    instance-of v0, v0, Landroid/app/Activity;

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 154
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@14
    move-result-object v0

    #@15
    .line 155
    iget-object v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mOnEnterAnimationCompleteListener:Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;

    #@17
    .line 154
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnEnterAnimationCompleteListener(Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;)V

    #@1a
    .line 157
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    #@1d
    .line 151
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 163
    iget v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mTranslationX:F

    #@5
    invoke-virtual {p1, v0, v10}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@8
    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@b
    move-result v0

    #@c
    packed-switch v0, :pswitch_data_0

    #@f
    .line 216
    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDiscardIntercept:Z

    #@11
    if-nez v0, :cond_1

    #@13
    iget-boolean v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    #@15
    :cond_1
    return v2

    #@16
    .line 167
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->resetMembers()V

    #@19
    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    #@1c
    move-result v0

    #@1d
    iput v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    #@1f
    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    #@22
    move-result v0

    #@23
    iput v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownY:F

    #@25
    .line 170
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@28
    move-result v0

    #@29
    iput v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActiveTouchId:I

    #@2b
    .line 171
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@2e
    move-result-object v0

    #@2f
    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@31
    .line 172
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@33
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@36
    goto :goto_0

    #@37
    .line 176
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@3a
    move-result v6

    #@3b
    .line 177
    .local v6, "actionIndex":I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@3e
    move-result v0

    #@3f
    iput v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActiveTouchId:I

    #@41
    goto :goto_0

    #@42
    .line 180
    .end local v6    # "actionIndex":I
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@45
    move-result v6

    #@46
    .line 181
    .restart local v6    # "actionIndex":I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@49
    move-result v8

    #@4a
    .line 182
    .local v8, "pointerId":I
    iget v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActiveTouchId:I

    #@4c
    if-ne v8, v0, :cond_0

    #@4e
    .line 184
    if-nez v6, :cond_2

    #@50
    const/4 v7, 0x1

    #@51
    .line 185
    .local v7, "newActionIndex":I
    :goto_1
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@54
    move-result v0

    #@55
    iput v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActiveTouchId:I

    #@57
    goto :goto_0

    #@58
    .line 184
    .end local v7    # "newActionIndex":I
    :cond_2
    const/4 v7, 0x0

    #@59
    .restart local v7    # "newActionIndex":I
    goto :goto_1

    #@5a
    .line 191
    .end local v6    # "actionIndex":I
    .end local v7    # "newActionIndex":I
    .end local v8    # "pointerId":I
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->resetMembers()V

    #@5d
    goto :goto_0

    #@5e
    .line 195
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@60
    if-eqz v0, :cond_0

    #@62
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDiscardIntercept:Z

    #@64
    if-nez v0, :cond_0

    #@66
    .line 199
    iget v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActiveTouchId:I

    #@68
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@6b
    move-result v9

    #@6c
    .line 200
    .local v9, "pointerIndex":I
    const/4 v0, -0x1

    #@6d
    if-ne v9, v0, :cond_3

    #@6f
    .line 201
    const-string/jumbo v0, "SwipeDismissLayout"

    #@72
    const-string/jumbo v1, "Invalid pointer index: ignoring."

    #@75
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@78
    .line 202
    iput-boolean v11, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDiscardIntercept:Z

    #@7a
    goto :goto_0

    #@7b
    .line 205
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    #@7e
    move-result v0

    #@7f
    iget v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    #@81
    sub-float v3, v0, v1

    #@83
    .line 206
    .local v3, "dx":F
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    #@86
    move-result v4

    #@87
    .line 207
    .local v4, "x":F
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    #@8a
    move-result v5

    #@8b
    .line 208
    .local v5, "y":F
    cmpl-float v0, v3, v10

    #@8d
    if-eqz v0, :cond_4

    #@8f
    move-object v0, p0

    #@90
    move-object v1, p0

    #@91
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/SwipeDismissLayout;->canScroll(Landroid/view/View;ZFFF)Z

    #@94
    move-result v0

    #@95
    if-eqz v0, :cond_4

    #@97
    .line 209
    iput-boolean v11, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDiscardIntercept:Z

    #@99
    goto/16 :goto_0

    #@9b
    .line 212
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->updateSwiping(Landroid/view/MotionEvent;)V

    #@9e
    goto/16 :goto_0

    #@a0
    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 221
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 222
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@8
    move-result v0

    #@9
    return v0

    #@a
    .line 225
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mTranslationX:F

    #@c
    const/4 v1, 0x0

    #@d
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@10
    .line 226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@13
    move-result v0

    #@14
    packed-switch v0, :pswitch_data_0

    #@17
    .line 254
    :cond_1
    :goto_0
    const/4 v0, 0x1

    #@18
    return v0

    #@19
    .line 228
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->updateDismiss(Landroid/view/MotionEvent;)V

    #@1c
    .line 229
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    #@1e
    if-eqz v0, :cond_3

    #@20
    .line 230
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->dismiss()V

    #@23
    .line 234
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->resetMembers()V

    #@26
    goto :goto_0

    #@27
    .line 231
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    #@29
    if-eqz v0, :cond_2

    #@2b
    .line 232
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->cancel()V

    #@2e
    goto :goto_1

    #@2f
    .line 238
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->cancel()V

    #@32
    .line 239
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->resetMembers()V

    #@35
    goto :goto_0

    #@36
    .line 243
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@38
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@3b
    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    #@3e
    move-result v0

    #@3f
    iput v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mLastX:F

    #@41
    .line 245
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->updateSwiping(Landroid/view/MotionEvent;)V

    #@44
    .line 246
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    #@46
    if-eqz v0, :cond_1

    #@48
    .line 247
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mUseDynamicTranslucency:Z

    #@4a
    if-eqz v0, :cond_4

    #@4c
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->getContext()Landroid/content/Context;

    #@4f
    move-result-object v0

    #@50
    instance-of v0, v0, Landroid/app/Activity;

    #@52
    if-eqz v0, :cond_4

    #@54
    .line 248
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->getContext()Landroid/content/Context;

    #@57
    move-result-object v0

    #@58
    check-cast v0, Landroid/app/Activity;

    #@5a
    invoke-virtual {v0, v2, v2}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    #@5d
    .line 250
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    #@60
    move-result v0

    #@61
    iget v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    #@63
    sub-float/2addr v0, v1

    #@64
    invoke-direct {p0, v0}, Lcom/android/internal/widget/SwipeDismissLayout;->setProgress(F)V

    #@67
    goto :goto_0

    #@68
    .line 226
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setOnDismissedListener(Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;

    #@0
    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissedListener:Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;

    #@2
    .line 132
    return-void
.end method

.method public setOnSwipeProgressChangedListener(Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

    #@0
    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mProgressListener:Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

    #@2
    .line 136
    return-void
.end method
