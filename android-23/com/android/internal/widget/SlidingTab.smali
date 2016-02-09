.class public Lcom/android/internal/widget/SlidingTab;
.super Landroid/view/ViewGroup;
.source "SlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SlidingTab$OnTriggerListener;,
        Lcom/android/internal/widget/SlidingTab$Slider;,
        Lcom/android/internal/widget/SlidingTab$1;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0xfa

.field private static final ANIM_TARGET_TIME:I = 0x1f4

.field private static final DBG:Z = false

.field private static final HORIZONTAL:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "SlidingTab"

.field private static final THRESHOLD:F = 0.6666667f

.field private static final TRACKING_MARGIN:I = 0x32

.field private static final VERTICAL:I = 0x1

.field private static final VIBRATE_LONG:J = 0x28L

.field private static final VIBRATE_SHORT:J = 0x1eL

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private mAnimating:Z

.field private final mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

.field private final mDensity:F

.field private mGrabbedState:I

.field private mHoldLeftOnTransition:Z

.field private mHoldRightOnTransition:Z

.field private final mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

.field private mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

.field private final mOrientation:I

.field private mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

.field private final mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

.field private mThreshold:F

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTracking:Z

.field private mTriggered:Z

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/SlidingTab;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/widget/SlidingTab;)Lcom/android/internal/widget/SlidingTab$Slider;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/widget/SlidingTab;)Lcom/android/internal/widget/SlidingTab$Slider;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/widget/SlidingTab;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/widget/SlidingTab;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->onAnimationDone()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/widget/SlidingTab;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->resetView()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 70
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    #@2
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@5
    .line 71
    const/4 v1, 0x4

    #@6
    .line 70
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    #@9
    move-result-object v0

    #@a
    .line 72
    const/16 v1, 0xd

    #@c
    .line 70
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@13
    move-result-object v0

    #@14
    sput-object v0, Lcom/android/internal/widget/SlidingTab;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    #@16
    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 447
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/SlidingTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 446
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const v5, 0x108047d

    #@3
    const/4 v2, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 454
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@8
    .line 67
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTab;->mHoldLeftOnTransition:Z

    #@a
    .line 68
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTab;->mHoldRightOnTransition:Z

    #@c
    .line 76
    iput v3, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    #@e
    .line 77
    iput-boolean v3, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    #@10
    .line 98
    new-instance v2, Lcom/android/internal/widget/SlidingTab$1;

    #@12
    invoke-direct {v2, p0}, Lcom/android/internal/widget/SlidingTab$1;-><init>(Lcom/android/internal/widget/SlidingTab;)V

    #@15
    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

    #@17
    .line 457
    new-instance v2, Landroid/graphics/Rect;

    #@19
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #@1c
    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    #@1e
    .line 459
    sget-object v2, Lcom/android/internal/R$styleable;->SlidingTab:[I

    #@20
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@23
    move-result-object v0

    #@24
    .line 460
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@27
    move-result v2

    #@28
    iput v2, p0, Lcom/android/internal/widget/SlidingTab;->mOrientation:I

    #@2a
    .line 461
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@2d
    .line 463
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getResources()Landroid/content/res/Resources;

    #@30
    move-result-object v1

    #@31
    .line 464
    .local v1, "r":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@34
    move-result-object v2

    #@35
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    #@37
    iput v2, p0, Lcom/android/internal/widget/SlidingTab;->mDensity:F

    #@39
    .line 467
    new-instance v2, Lcom/android/internal/widget/SlidingTab$Slider;

    #@3b
    .line 468
    const v3, 0x108046f

    #@3e
    .line 469
    const v4, 0x108045e

    #@41
    .line 467
    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/internal/widget/SlidingTab$Slider;-><init>(Landroid/view/ViewGroup;III)V

    #@44
    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@46
    .line 471
    new-instance v2, Lcom/android/internal/widget/SlidingTab$Slider;

    #@48
    .line 472
    const v3, 0x1080478

    #@4b
    .line 473
    const v4, 0x1080467

    #@4e
    .line 471
    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/internal/widget/SlidingTab$Slider;-><init>(Landroid/view/ViewGroup;III)V

    #@51
    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@53
    .line 453
    return-void
.end method

.method private cancelGrab()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 632
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    #@4
    .line 633
    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    #@6
    .line 634
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@8
    const/4 v1, 0x1

    #@9
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab$Slider;->show(Z)V

    #@c
    .line 635
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@e
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    #@11
    .line 636
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@13
    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingTab$Slider;->hideTarget()V

    #@16
    .line 637
    iput-object v3, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@18
    .line 638
    iput-object v3, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@1a
    .line 639
    invoke-direct {p0, v2}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    #@1d
    .line 631
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 2
    .param p1, "whichHandle"    # I

    #@0
    .prologue
    .line 850
    const-wide/16 v0, 0x28

    #@2
    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTab;->vibrate(J)V

    #@5
    .line 851
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 852
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    #@b
    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/SlidingTab$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    #@e
    .line 849
    :cond_0
    return-void
.end method

.method private isHorizontal()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 722
    iget v1, p0, Lcom/android/internal/widget/SlidingTab;->mOrientation:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 881
    const-string/jumbo v0, "SlidingTab"

    #@3
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 880
    return-void
.end method

.method private moveHandle(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 741
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@2
    invoke-static {v4}, Lcom/android/internal/widget/SlidingTab$Slider;->-get0(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    #@5
    move-result-object v3

    #@6
    .line 742
    .local v3, "handle":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@8
    invoke-static {v4}, Lcom/android/internal/widget/SlidingTab$Slider;->-get1(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/TextView;

    #@b
    move-result-object v0

    #@c
    .line 743
    .local v0, "content":Landroid/view/View;
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_0

    #@12
    .line 744
    float-to-int v4, p1

    #@13
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    #@16
    move-result v5

    #@17
    sub-int/2addr v4, v5

    #@18
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    #@1b
    move-result v5

    #@1c
    div-int/lit8 v5, v5, 0x2

    #@1e
    sub-int v1, v4, v5

    #@20
    .line 745
    .local v1, "deltaX":I
    invoke-virtual {v3, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@23
    .line 746
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@26
    .line 752
    .end local v1    # "deltaX":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->invalidate()V

    #@29
    .line 740
    return-void

    #@2a
    .line 748
    :cond_0
    float-to-int v4, p2

    #@2b
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    #@2e
    move-result v5

    #@2f
    sub-int/2addr v4, v5

    #@30
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    #@33
    move-result v5

    #@34
    div-int/lit8 v5, v5, 0x2

    #@36
    sub-int v2, v4, v5

    #@38
    .line 749
    .local v2, "deltaY":I
    invoke-virtual {v3, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@3b
    .line 750
    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@3e
    goto :goto_0
.end method

.method private onAnimationDone()V
    .locals 1

    #@0
    .prologue
    .line 712
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->resetView()V

    #@3
    .line 713
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    #@6
    .line 711
    return-void
.end method

.method private resetView()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 726
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@3
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    #@6
    .line 727
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@8
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    #@b
    .line 725
    return-void
.end method

.method private setGrabbedState(I)V
    .locals 2
    .param p1, "newState"    # I

    #@0
    .prologue
    .line 872
    iget v0, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 873
    iput p1, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    #@6
    .line 874
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 875
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    #@c
    iget v1, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    #@e
    invoke-interface {v0, p0, v1}, Lcom/android/internal/widget/SlidingTab$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    #@11
    .line 871
    :cond_0
    return-void
.end method

.method private declared-synchronized vibrate(J)V
    .locals 5
    .param p1, "duration"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 825
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@6
    move-result-object v1

    #@7
    const-string/jumbo v2, "haptic_feedback_enabled"

    #@a
    const/4 v3, 0x1

    #@b
    .line 826
    const/4 v4, -0x2

    #@c
    .line 824
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_2

    #@12
    const/4 v0, 0x1

    #@13
    .line 827
    .local v0, "hapticEnabled":Z
    :goto_0
    if-eqz v0, :cond_1

    #@15
    .line 828
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    #@17
    if-nez v1, :cond_0

    #@19
    .line 829
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getContext()Landroid/content/Context;

    #@1c
    move-result-object v1

    #@1d
    .line 830
    const-string/jumbo v2, "vibrator"

    #@20
    .line 829
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    check-cast v1, Landroid/os/Vibrator;

    #@26
    iput-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    #@28
    .line 832
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    #@2a
    sget-object v2, Lcom/android/internal/widget/SlidingTab;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    #@2c
    invoke-virtual {v1, p1, p2, v2}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    :cond_1
    monitor-exit p0

    #@30
    .line 823
    return-void

    #@31
    .line 824
    .end local v0    # "hapticEnabled":Z
    :cond_2
    const/4 v0, 0x0

    #@32
    .restart local v0    # "hapticEnabled":Z
    goto :goto_0

    #@33
    .end local v0    # "hapticEnabled":Z
    :catchall_0
    move-exception v1

    #@34
    monitor-exit p0

    #@35
    throw v1
.end method

.method private withinView(FFLandroid/view/View;)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/high16 v3, -0x3db80000    # -50.0f

    #@4
    .line 717
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    cmpl-float v2, p2, v3

    #@c
    if-lez v2, :cond_1

    #@e
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    #@11
    move-result v2

    #@12
    add-int/lit8 v2, v2, 0x32

    #@14
    int-to-float v2, v2

    #@15
    cmpg-float v2, p2, v2

    #@17
    if-gez v2, :cond_1

    #@19
    :cond_0
    :goto_0
    return v0

    #@1a
    .line 718
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    #@1d
    move-result v2

    #@1e
    if-nez v2, :cond_2

    #@20
    cmpl-float v2, p1, v3

    #@22
    if-lez v2, :cond_2

    #@24
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    #@27
    move-result v2

    #@28
    add-int/lit8 v2, v2, 0x32

    #@2a
    int-to-float v2, v2

    #@2b
    cmpg-float v2, p1, v2

    #@2d
    if-ltz v2, :cond_0

    #@2f
    :cond_2
    move v0, v1

    #@30
    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const v7, 0x3f2aaaab

    #@3
    const v8, 0x3eaaaaaa

    #@6
    const/4 v13, 0x0

    #@7
    const/4 v12, 0x1

    #@8
    .line 516
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@b
    move-result v0

    #@c
    .line 517
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@f
    move-result v5

    #@10
    .line 518
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@13
    move-result v6

    #@14
    .line 520
    .local v6, "y":F
    iget-boolean v9, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    #@16
    if-eqz v9, :cond_0

    #@18
    .line 521
    return v13

    #@19
    .line 524
    :cond_0
    iget-object v9, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@1b
    invoke-static {v9}, Lcom/android/internal/widget/SlidingTab$Slider;->-get0(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    #@1e
    move-result-object v1

    #@1f
    .line 525
    .local v1, "leftHandle":Landroid/view/View;
    iget-object v9, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    #@21
    invoke-virtual {v1, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    #@24
    .line 526
    iget-object v9, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    #@26
    float-to-int v10, v5

    #@27
    float-to-int v11, v6

    #@28
    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    #@2b
    move-result v2

    #@2c
    .line 528
    .local v2, "leftHit":Z
    iget-object v9, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@2e
    invoke-static {v9}, Lcom/android/internal/widget/SlidingTab$Slider;->-get0(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    #@31
    move-result-object v3

    #@32
    .line 529
    .local v3, "rightHandle":Landroid/view/View;
    iget-object v9, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    #@34
    invoke-virtual {v3, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    #@37
    .line 530
    iget-object v9, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    #@39
    float-to-int v10, v5

    #@3a
    float-to-int v11, v6

    #@3b
    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    #@3e
    move-result v4

    #@3f
    .line 532
    .local v4, "rightHit":Z
    iget-boolean v9, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    #@41
    if-nez v9, :cond_1

    #@43
    if-nez v2, :cond_1

    #@45
    if-eqz v4, :cond_2

    #@47
    .line 536
    :cond_1
    packed-switch v0, :pswitch_data_0

    #@4a
    .line 559
    :goto_0
    return v12

    #@4b
    .line 533
    :cond_2
    return v13

    #@4c
    .line 538
    :pswitch_0
    iput-boolean v12, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    #@4e
    .line 539
    iput-boolean v13, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    #@50
    .line 540
    const-wide/16 v10, 0x1e

    #@52
    invoke-direct {p0, v10, v11}, Lcom/android/internal/widget/SlidingTab;->vibrate(J)V

    #@55
    .line 541
    if-eqz v2, :cond_4

    #@57
    .line 542
    iget-object v9, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@59
    iput-object v9, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@5b
    .line 543
    iget-object v9, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@5d
    iput-object v9, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@5f
    .line 544
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    #@62
    move-result v9

    #@63
    if-eqz v9, :cond_3

    #@65
    :goto_1
    iput v7, p0, Lcom/android/internal/widget/SlidingTab;->mThreshold:F

    #@67
    .line 545
    invoke-direct {p0, v12}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    #@6a
    .line 552
    :goto_2
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@6c
    invoke-virtual {v7, v12}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    #@6f
    .line 553
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@71
    invoke-virtual {v7}, Lcom/android/internal/widget/SlidingTab$Slider;->showTarget()V

    #@74
    .line 554
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@76
    invoke-virtual {v7}, Lcom/android/internal/widget/SlidingTab$Slider;->hide()V

    #@79
    goto :goto_0

    #@7a
    :cond_3
    move v7, v8

    #@7b
    .line 544
    goto :goto_1

    #@7c
    .line 547
    :cond_4
    iget-object v9, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@7e
    iput-object v9, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@80
    .line 548
    iget-object v9, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@82
    iput-object v9, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@84
    .line 549
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    #@87
    move-result v9

    #@88
    if-eqz v9, :cond_5

    #@8a
    :goto_3
    iput v8, p0, Lcom/android/internal/widget/SlidingTab;->mThreshold:F

    #@8c
    .line 550
    const/4 v7, 0x2

    #@8d
    invoke-direct {p0, v7}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    #@90
    goto :goto_2

    #@91
    :cond_5
    move v8, v7

    #@92
    .line 549
    goto :goto_3

    #@93
    .line 536
    nop

    #@94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    .line 733
    if-nez p1, :cond_0

    #@2
    return-void

    #@3
    .line 736
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@5
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_1

    #@b
    const/4 v5, 0x0

    #@c
    :goto_0
    move v1, p2

    #@d
    move v2, p3

    #@e
    move v3, p4

    #@f
    move v4, p5

    #@10
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/SlidingTab$Slider;->layout(IIIII)V

    #@13
    .line 737
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@15
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_2

    #@1b
    const/4 v5, 0x1

    #@1c
    :goto_1
    move v1, p2

    #@1d
    move v2, p3

    #@1e
    move v3, p4

    #@1f
    move v4, p5

    #@20
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/SlidingTab$Slider;->layout(IIIII)V

    #@23
    .line 732
    return-void

    #@24
    .line 736
    :cond_1
    const/4 v5, 0x3

    #@25
    goto :goto_0

    #@26
    .line 737
    :cond_2
    const/4 v5, 0x2

    #@27
    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 481
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@3
    move-result v8

    #@4
    .line 482
    .local v8, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@7
    move-result v9

    #@8
    .line 484
    .local v9, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@b
    move-result v1

    #@c
    .line 485
    .local v1, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@f
    move-result v2

    #@10
    .line 496
    .local v2, "heightSpecSize":I
    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@12
    invoke-virtual {v10, p1, p2}, Lcom/android/internal/widget/SlidingTab$Slider;->measure(II)V

    #@15
    .line 497
    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@17
    invoke-virtual {v10, p1, p2}, Lcom/android/internal/widget/SlidingTab$Slider;->measure(II)V

    #@1a
    .line 498
    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@1c
    invoke-virtual {v10}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabWidth()I

    #@1f
    move-result v4

    #@20
    .line 499
    .local v4, "leftTabWidth":I
    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@22
    invoke-virtual {v10}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabWidth()I

    #@25
    move-result v6

    #@26
    .line 500
    .local v6, "rightTabWidth":I
    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@28
    invoke-virtual {v10}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabHeight()I

    #@2b
    move-result v3

    #@2c
    .line 501
    .local v3, "leftTabHeight":I
    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@2e
    invoke-virtual {v10}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabHeight()I

    #@31
    move-result v5

    #@32
    .line 504
    .local v5, "rightTabHeight":I
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    #@35
    move-result v10

    #@36
    if-eqz v10, :cond_0

    #@38
    .line 505
    add-int v10, v4, v6

    #@3a
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    #@3d
    move-result v7

    #@3e
    .line 506
    .local v7, "width":I
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    #@41
    move-result v0

    #@42
    .line 511
    .local v0, "height":I
    :goto_0
    invoke-virtual {p0, v7, v0}, Lcom/android/internal/widget/SlidingTab;->setMeasuredDimension(II)V

    #@45
    .line 480
    return-void

    #@46
    .line 508
    .end local v0    # "height":I
    .end local v7    # "width":I
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    #@49
    move-result v7

    #@4a
    .line 509
    .restart local v7    # "width":I
    add-int v10, v3, v5

    #@4c
    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    #@4f
    move-result v0

    #@50
    .restart local v0    # "height":I
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    const/4 v11, 0x0

    #@2
    const/4 v8, 0x1

    #@3
    .line 587
    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    #@5
    if-eqz v7, :cond_0

    #@7
    .line 588
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@a
    move-result v0

    #@b
    .line 589
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@e
    move-result v5

    #@f
    .line 590
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@12
    move-result v6

    #@13
    .line 592
    .local v6, "y":F
    packed-switch v0, :pswitch_data_0

    #@16
    .line 628
    .end local v0    # "action":I
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    #@18
    if-nez v7, :cond_1

    #@1a
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@1d
    move-result v8

    #@1e
    :cond_1
    return v8

    #@1f
    .line 594
    .restart local v0    # "action":I
    .restart local v5    # "x":F
    .restart local v6    # "y":F
    :pswitch_0
    invoke-direct {p0, v5, v6, p0}, Lcom/android/internal/widget/SlidingTab;->withinView(FFLandroid/view/View;)Z

    #@22
    move-result v7

    #@23
    if-eqz v7, :cond_c

    #@25
    .line 595
    invoke-direct {p0, v5, v6}, Lcom/android/internal/widget/SlidingTab;->moveHandle(FF)V

    #@28
    .line 596
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    #@2b
    move-result v7

    #@2c
    if-eqz v7, :cond_2

    #@2e
    move v2, v5

    #@2f
    .line 597
    .local v2, "position":F
    :goto_1
    iget v10, p0, Lcom/android/internal/widget/SlidingTab;->mThreshold:F

    #@31
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    #@34
    move-result v7

    #@35
    if-eqz v7, :cond_3

    #@37
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getWidth()I

    #@3a
    move-result v7

    #@3b
    :goto_2
    int-to-float v7, v7

    #@3c
    mul-float v3, v10, v7

    #@3e
    .line 599
    .local v3, "target":F
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    #@41
    move-result v7

    #@42
    if-eqz v7, :cond_6

    #@44
    .line 600
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@46
    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@48
    if-ne v7, v10, :cond_5

    #@4a
    .line 601
    cmpl-float v7, v2, v3

    #@4c
    if-lez v7, :cond_4

    #@4e
    :goto_3
    const/4 v4, 0x1

    #@4f
    .line 606
    .local v4, "thresholdReached":Z
    :goto_4
    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    #@51
    if-nez v7, :cond_0

    #@53
    if-eqz v4, :cond_0

    #@55
    .line 607
    iput-boolean v8, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    #@57
    .line 608
    iput-boolean v11, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    #@59
    .line 609
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@5b
    invoke-virtual {v7, v9}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    #@5e
    .line 610
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@60
    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@62
    if-ne v7, v10, :cond_9

    #@64
    const/4 v1, 0x1

    #@65
    .line 611
    .local v1, "isLeft":Z
    :goto_5
    if-eqz v1, :cond_a

    #@67
    move v7, v8

    #@68
    :goto_6
    invoke-direct {p0, v7}, Lcom/android/internal/widget/SlidingTab;->dispatchTriggerEvent(I)V

    #@6b
    .line 614
    if-eqz v1, :cond_b

    #@6d
    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mHoldLeftOnTransition:Z

    #@6f
    :goto_7
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/SlidingTab;->startAnimating(Z)V

    #@72
    .line 615
    invoke-direct {p0, v11}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    #@75
    goto :goto_0

    #@76
    .line 596
    .end local v1    # "isLeft":Z
    .end local v2    # "position":F
    .end local v3    # "target":F
    .end local v4    # "thresholdReached":Z
    :cond_2
    move v2, v6

    #@77
    .restart local v2    # "position":F
    goto :goto_1

    #@78
    .line 597
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getHeight()I

    #@7b
    move-result v7

    #@7c
    goto :goto_2

    #@7d
    .line 601
    .restart local v3    # "target":F
    :cond_4
    const/4 v4, 0x0

    #@7e
    .restart local v4    # "thresholdReached":Z
    goto :goto_4

    #@7f
    .end local v4    # "thresholdReached":Z
    :cond_5
    cmpg-float v7, v2, v3

    #@81
    if-gez v7, :cond_4

    #@83
    goto :goto_3

    #@84
    .line 603
    :cond_6
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@86
    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@88
    if-ne v7, v10, :cond_8

    #@8a
    .line 604
    cmpg-float v7, v2, v3

    #@8c
    if-gez v7, :cond_7

    #@8e
    :goto_8
    const/4 v4, 0x1

    #@8f
    .restart local v4    # "thresholdReached":Z
    goto :goto_4

    #@90
    .end local v4    # "thresholdReached":Z
    :cond_7
    const/4 v4, 0x0

    #@91
    .restart local v4    # "thresholdReached":Z
    goto :goto_4

    #@92
    .end local v4    # "thresholdReached":Z
    :cond_8
    cmpl-float v7, v2, v3

    #@94
    if-lez v7, :cond_7

    #@96
    goto :goto_8

    #@97
    .line 610
    .restart local v4    # "thresholdReached":Z
    :cond_9
    const/4 v1, 0x0

    #@98
    .restart local v1    # "isLeft":Z
    goto :goto_5

    #@99
    :cond_a
    move v7, v9

    #@9a
    .line 612
    goto :goto_6

    #@9b
    .line 614
    :cond_b
    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mHoldRightOnTransition:Z

    #@9d
    goto :goto_7

    #@9e
    .line 623
    .end local v1    # "isLeft":Z
    .end local v2    # "position":F
    .end local v3    # "target":F
    .end local v4    # "thresholdReached":Z
    :cond_c
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->cancelGrab()V

    #@a1
    goto/16 :goto_0

    #@a3
    .line 592
    nop

    #@a4
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    #@0
    .prologue
    .line 858
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    #@3
    .line 861
    if-ne p1, p0, :cond_0

    #@5
    if-eqz p2, :cond_0

    #@7
    .line 862
    iget v0, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 863
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->cancelGrab()V

    #@e
    .line 857
    :cond_0
    return-void
.end method

.method public reset(Z)V
    .locals 1
    .param p1, "animate"    # Z

    #@0
    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    #@5
    .line 570
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@7
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    #@a
    .line 571
    if-nez p1, :cond_0

    #@c
    .line 572
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    #@f
    .line 568
    :cond_0
    return-void
.end method

.method public setHoldAfterTrigger(ZZ)V
    .locals 0
    .param p1, "holdLeft"    # Z
    .param p2, "holdRight"    # Z

    #@0
    .prologue
    .line 816
    iput-boolean p1, p0, Lcom/android/internal/widget/SlidingTab;->mHoldLeftOnTransition:Z

    #@2
    .line 817
    iput-boolean p2, p0, Lcom/android/internal/widget/SlidingTab;->mHoldRightOnTransition:Z

    #@4
    .line 815
    return-void
.end method

.method public setLeftHintText(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 780
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 781
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setHintText(I)V

    #@b
    .line 779
    :cond_0
    return-void
.end method

.method public setLeftTabResources(IIII)V
    .locals 1
    .param p1, "iconId"    # I
    .param p2, "targetId"    # I
    .param p3, "barId"    # I
    .param p4, "tabId"    # I

    #@0
    .prologue
    .line 767
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setIcon(I)V

    #@5
    .line 768
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@7
    invoke-virtual {v0, p2}, Lcom/android/internal/widget/SlidingTab$Slider;->setTarget(I)V

    #@a
    .line 769
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@c
    invoke-virtual {v0, p3}, Lcom/android/internal/widget/SlidingTab$Slider;->setBarBackgroundResource(I)V

    #@f
    .line 770
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@11
    invoke-virtual {v0, p4}, Lcom/android/internal/widget/SlidingTab$Slider;->setTabBackgroundResource(I)V

    #@14
    .line 771
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@16
    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingTab$Slider;->updateDrawableStates()V

    #@19
    .line 766
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    #@0
    .prologue
    .line 842
    iput-object p1, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    #@2
    .line 841
    return-void
.end method

.method public setRightHintText(I)V
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 810
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 811
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setHintText(I)V

    #@b
    .line 809
    :cond_0
    return-void
.end method

.method public setRightTabResources(IIII)V
    .locals 1
    .param p1, "iconId"    # I
    .param p2, "targetId"    # I
    .param p3, "barId"    # I
    .param p4, "tabId"    # I

    #@0
    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setIcon(I)V

    #@5
    .line 798
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@7
    invoke-virtual {v0, p2}, Lcom/android/internal/widget/SlidingTab$Slider;->setTarget(I)V

    #@a
    .line 799
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@c
    invoke-virtual {v0, p3}, Lcom/android/internal/widget/SlidingTab$Slider;->setBarBackgroundResource(I)V

    #@f
    .line 800
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@11
    invoke-virtual {v0, p4}, Lcom/android/internal/widget/SlidingTab$Slider;->setTabBackgroundResource(I)V

    #@14
    .line 801
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@16
    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingTab$Slider;->updateDrawableStates()V

    #@19
    .line 796
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    #@0
    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getVisibility()I

    #@3
    move-result v0

    #@4
    if-eq p1, v0, :cond_0

    #@6
    const/4 v0, 0x4

    #@7
    if-ne p1, v0, :cond_0

    #@9
    .line 580
    const/4 v0, 0x0

    #@a
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SlidingTab;->reset(Z)V

    #@d
    .line 582
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@10
    .line 577
    return-void
.end method

.method startAnimating(Z)V
    .locals 23
    .param p1, "holdAfter"    # Z

    #@0
    .prologue
    .line 643
    const/16 v19, 0x1

    #@2
    move/from16 v0, v19

    #@4
    move-object/from16 v1, p0

    #@6
    iput-boolean v0, v1, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    #@8
    .line 646
    move-object/from16 v0, p0

    #@a
    iget-object v12, v0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@c
    .line 647
    .local v12, "slider":Lcom/android/internal/widget/SlidingTab$Slider;
    move-object/from16 v0, p0

    #@e
    iget-object v10, v0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@10
    .line 650
    .local v10, "other":Lcom/android/internal/widget/SlidingTab$Slider;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    #@13
    move-result v19

    #@14
    if-eqz v19, :cond_2

    #@16
    .line 651
    invoke-static {v12}, Lcom/android/internal/widget/SlidingTab$Slider;->-get0(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    #@19
    move-result-object v19

    #@1a
    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getRight()I

    #@1d
    move-result v11

    #@1e
    .line 652
    .local v11, "right":I
    invoke-static {v12}, Lcom/android/internal/widget/SlidingTab$Slider;->-get0(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    #@21
    move-result-object v19

    #@22
    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getWidth()I

    #@25
    move-result v18

    #@26
    .line 653
    .local v18, "width":I
    invoke-static {v12}, Lcom/android/internal/widget/SlidingTab$Slider;->-get0(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    #@29
    move-result-object v19

    #@2a
    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getLeft()I

    #@2d
    move-result v9

    #@2e
    .line 654
    .local v9, "left":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SlidingTab;->getWidth()I

    #@31
    move-result v17

    #@32
    .line 655
    .local v17, "viewWidth":I
    if-eqz p1, :cond_0

    #@34
    const/4 v8, 0x0

    #@35
    .line 656
    .local v8, "holdOffset":I
    :goto_0
    move-object/from16 v0, p0

    #@37
    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@39
    move-object/from16 v19, v0

    #@3b
    move-object/from16 v0, v19

    #@3d
    if-ne v12, v0, :cond_1

    #@3f
    add-int v19, v11, v17

    #@41
    sub-int v19, v19, v8

    #@43
    move/from16 v0, v19

    #@45
    neg-int v5, v0

    #@46
    .line 658
    .local v5, "dx":I
    :goto_1
    const/4 v6, 0x0

    #@47
    .line 669
    .end local v9    # "left":I
    .end local v11    # "right":I
    .end local v17    # "viewWidth":I
    .end local v18    # "width":I
    .local v6, "dy":I
    :goto_2
    new-instance v14, Landroid/view/animation/TranslateAnimation;

    #@49
    const/16 v19, 0x0

    #@4b
    int-to-float v0, v5

    #@4c
    move/from16 v20, v0

    #@4e
    const/16 v21, 0x0

    #@50
    int-to-float v0, v6

    #@51
    move/from16 v22, v0

    #@53
    move/from16 v0, v19

    #@55
    move/from16 v1, v20

    #@57
    move/from16 v2, v21

    #@59
    move/from16 v3, v22

    #@5b
    invoke-direct {v14, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    #@5e
    .line 670
    .local v14, "trans1":Landroid/view/animation/Animation;
    const-wide/16 v20, 0xfa

    #@60
    move-wide/from16 v0, v20

    #@62
    invoke-virtual {v14, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    #@65
    .line 671
    new-instance v19, Landroid/view/animation/LinearInterpolator;

    #@67
    invoke-direct/range {v19 .. v19}, Landroid/view/animation/LinearInterpolator;-><init>()V

    #@6a
    move-object/from16 v0, v19

    #@6c
    invoke-virtual {v14, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@6f
    .line 672
    const/16 v19, 0x1

    #@71
    move/from16 v0, v19

    #@73
    invoke-virtual {v14, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    #@76
    .line 673
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    #@78
    const/16 v19, 0x0

    #@7a
    int-to-float v0, v5

    #@7b
    move/from16 v20, v0

    #@7d
    const/16 v21, 0x0

    #@7f
    int-to-float v0, v6

    #@80
    move/from16 v22, v0

    #@82
    move/from16 v0, v19

    #@84
    move/from16 v1, v20

    #@86
    move/from16 v2, v21

    #@88
    move/from16 v3, v22

    #@8a
    invoke-direct {v15, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    #@8d
    .line 674
    .local v15, "trans2":Landroid/view/animation/Animation;
    const-wide/16 v20, 0xfa

    #@8f
    move-wide/from16 v0, v20

    #@91
    invoke-virtual {v15, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    #@94
    .line 675
    new-instance v19, Landroid/view/animation/LinearInterpolator;

    #@96
    invoke-direct/range {v19 .. v19}, Landroid/view/animation/LinearInterpolator;-><init>()V

    #@99
    move-object/from16 v0, v19

    #@9b
    invoke-virtual {v15, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@9e
    .line 676
    const/16 v19, 0x1

    #@a0
    move/from16 v0, v19

    #@a2
    invoke-virtual {v15, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    #@a5
    .line 678
    new-instance v19, Lcom/android/internal/widget/SlidingTab$2;

    #@a7
    move-object/from16 v0, v19

    #@a9
    move-object/from16 v1, p0

    #@ab
    move/from16 v2, p1

    #@ad
    invoke-direct {v0, v1, v2, v5, v6}, Lcom/android/internal/widget/SlidingTab$2;-><init>(Lcom/android/internal/widget/SlidingTab;ZII)V

    #@b0
    move-object/from16 v0, v19

    #@b2
    invoke-virtual {v14, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    #@b5
    .line 707
    invoke-virtual {v12}, Lcom/android/internal/widget/SlidingTab$Slider;->hideTarget()V

    #@b8
    .line 708
    invoke-virtual {v12, v14, v15}, Lcom/android/internal/widget/SlidingTab$Slider;->startAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    #@bb
    .line 642
    return-void

    #@bc
    .line 655
    .end local v5    # "dx":I
    .end local v6    # "dy":I
    .end local v8    # "holdOffset":I
    .end local v14    # "trans1":Landroid/view/animation/Animation;
    .end local v15    # "trans2":Landroid/view/animation/Animation;
    .restart local v9    # "left":I
    .restart local v11    # "right":I
    .restart local v17    # "viewWidth":I
    .restart local v18    # "width":I
    :cond_0
    move/from16 v8, v18

    #@be
    .restart local v8    # "holdOffset":I
    goto/16 :goto_0

    #@c0
    .line 657
    :cond_1
    sub-int v19, v17, v9

    #@c2
    add-int v19, v19, v17

    #@c4
    sub-int v5, v19, v8

    #@c6
    .restart local v5    # "dx":I
    goto :goto_1

    #@c7
    .line 660
    .end local v5    # "dx":I
    .end local v8    # "holdOffset":I
    .end local v9    # "left":I
    .end local v11    # "right":I
    .end local v17    # "viewWidth":I
    .end local v18    # "width":I
    :cond_2
    invoke-static {v12}, Lcom/android/internal/widget/SlidingTab$Slider;->-get0(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    #@ca
    move-result-object v19

    #@cb
    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getTop()I

    #@ce
    move-result v13

    #@cf
    .line 661
    .local v13, "top":I
    invoke-static {v12}, Lcom/android/internal/widget/SlidingTab$Slider;->-get0(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    #@d2
    move-result-object v19

    #@d3
    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getBottom()I

    #@d6
    move-result v4

    #@d7
    .line 662
    .local v4, "bottom":I
    invoke-static {v12}, Lcom/android/internal/widget/SlidingTab$Slider;->-get0(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    #@da
    move-result-object v19

    #@db
    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getHeight()I

    #@de
    move-result v7

    #@df
    .line 663
    .local v7, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SlidingTab;->getHeight()I

    #@e2
    move-result v16

    #@e3
    .line 664
    .local v16, "viewHeight":I
    if-eqz p1, :cond_3

    #@e5
    const/4 v8, 0x0

    #@e6
    .line 665
    .restart local v8    # "holdOffset":I
    :goto_3
    const/4 v5, 0x0

    #@e7
    .line 666
    .restart local v5    # "dx":I
    move-object/from16 v0, p0

    #@e9
    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    #@eb
    move-object/from16 v19, v0

    #@ed
    move-object/from16 v0, v19

    #@ef
    if-ne v12, v0, :cond_4

    #@f1
    add-int v19, v13, v16

    #@f3
    sub-int v6, v19, v8

    #@f5
    .restart local v6    # "dy":I
    goto/16 :goto_2

    #@f7
    .line 664
    .end local v5    # "dx":I
    .end local v6    # "dy":I
    .end local v8    # "holdOffset":I
    :cond_3
    move v8, v7

    #@f8
    .restart local v8    # "holdOffset":I
    goto :goto_3

    #@f9
    .line 667
    .restart local v5    # "dx":I
    :cond_4
    sub-int v19, v16, v4

    #@fb
    add-int v19, v19, v16

    #@fd
    sub-int v19, v19, v8

    #@ff
    move/from16 v0, v19

    #@101
    neg-int v6, v0

    #@102
    .restart local v6    # "dy":I
    goto/16 :goto_2
.end method
