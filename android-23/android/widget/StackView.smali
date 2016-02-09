.class public Landroid/widget/StackView;
.super Landroid/widget/AdapterViewAnimator;
.source "StackView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/StackView$StackFrame;,
        Landroid/widget/StackView$StackSlider;,
        Landroid/widget/StackView$LayoutParams;,
        Landroid/widget/StackView$HolographicHelper;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIMATION_DURATION:I = 0x190

.field private static final FRAME_PADDING:I = 0x4

.field private static final GESTURE_NONE:I = 0x0

.field private static final GESTURE_SLIDE_DOWN:I = 0x2

.field private static final GESTURE_SLIDE_UP:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field private static final ITEMS_SLIDE_DOWN:I = 0x1

.field private static final ITEMS_SLIDE_UP:I = 0x0

.field private static final MINIMUM_ANIMATION_DURATION:I = 0x32

.field private static final MIN_TIME_BETWEEN_INTERACTION_AND_AUTOADVANCE:I = 0x1388

.field private static final MIN_TIME_BETWEEN_SCROLLS:J = 0x64L

.field private static final NUM_ACTIVE_VIEWS:I = 0x5

.field private static final PERSPECTIVE_SCALE_FACTOR:F = 0.0f

.field private static final PERSPECTIVE_SHIFT_FACTOR_X:F = 0.1f

.field private static final PERSPECTIVE_SHIFT_FACTOR_Y:F = 0.1f

.field private static final SLIDE_UP_RATIO:F = 0.7f

.field private static final STACK_RELAYOUT_DURATION:I = 0x64

.field private static final SWIPE_THRESHOLD_RATIO:F = 0.2f

.field private static sHolographicHelper:Landroid/widget/StackView$HolographicHelper;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivePointerId:I

.field private mClickColor:I

.field private mClickFeedback:Landroid/widget/ImageView;

.field private mClickFeedbackIsValid:Z

.field private mFirstLayoutHappened:Z

.field private mFramePadding:I

.field private mHighlight:Landroid/widget/ImageView;

.field private mInitialX:F

.field private mInitialY:F

.field private mLastInteractionTime:J

.field private mLastScrollTime:J

.field private mMaximumVelocity:I

.field private mNewPerspectiveShiftX:F

.field private mNewPerspectiveShiftY:F

.field private mPerspectiveShiftX:F

.field private mPerspectiveShiftY:F

.field private mResOutColor:I

.field private mSlideAmount:I

.field private mStackMode:I

.field private mStackSlider:Landroid/widget/StackView$StackSlider;

.field private mSwipeGestureType:I

.field private mSwipeThreshold:I

.field private final mTouchRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTransitionIsSetup:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mYVelocity:I

.field private final stackInvalidateRect:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Landroid/widget/StackView;)Landroid/widget/ImageView;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/StackView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/StackView;->mSlideAmount:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/widget/StackView;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/StackView;->mStackMode:I

    #@2
    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 156
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/StackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 163
    const v0, 0x101043e

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/StackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 170
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/StackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 177
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 54
    const-string/jumbo v1, "StackView"

    #@7
    iput-object v1, p0, Landroid/widget/StackView;->TAG:Ljava/lang/String;

    #@9
    .line 116
    new-instance v1, Landroid/graphics/Rect;

    #@b
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@e
    iput-object v1, p0, Landroid/widget/StackView;->mTouchRect:Landroid/graphics/Rect;

    #@10
    .line 129
    iput v4, p0, Landroid/widget/StackView;->mYVelocity:I

    #@12
    .line 130
    iput v4, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    #@14
    .line 136
    iput-boolean v4, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    #@16
    .line 143
    iput-boolean v4, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    #@18
    .line 145
    iput-boolean v4, p0, Landroid/widget/StackView;->mFirstLayoutHappened:Z

    #@1a
    .line 146
    const-wide/16 v2, 0x0

    #@1c
    iput-wide v2, p0, Landroid/widget/StackView;->mLastInteractionTime:J

    #@1e
    .line 150
    new-instance v1, Landroid/graphics/Rect;

    #@20
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@23
    iput-object v1, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    #@25
    .line 179
    sget-object v1, Lcom/android/internal/R$styleable;->StackView:[I

    #@27
    .line 178
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@2a
    move-result-object v0

    #@2b
    .line 181
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    #@2e
    move-result v1

    #@2f
    iput v1, p0, Landroid/widget/StackView;->mResOutColor:I

    #@31
    .line 184
    const/4 v1, 0x1

    #@32
    .line 183
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    #@35
    move-result v1

    #@36
    iput v1, p0, Landroid/widget/StackView;->mClickColor:I

    #@38
    .line 186
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@3b
    .line 187
    invoke-direct {p0}, Landroid/widget/StackView;->initStackView()V

    #@3e
    .line 176
    return-void
.end method

.method private beginGestureIfNeeded(F)V
    .locals 12
    .param p1, "deltaY"    # F

    #@0
    .prologue
    const/4 v11, 0x2

    #@1
    const/4 v8, 0x0

    #@2
    const/4 v7, 0x1

    #@3
    .line 658
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    #@6
    move-result v9

    #@7
    float-to-int v9, v9

    #@8
    iget v10, p0, Landroid/widget/StackView;->mTouchSlop:I

    #@a
    if-le v9, v10, :cond_13

    #@c
    iget v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    #@e
    if-nez v9, :cond_13

    #@10
    .line 659
    const/4 v9, 0x0

    #@11
    cmpg-float v9, p1, v9

    #@13
    if-gez v9, :cond_0

    #@15
    const/4 v5, 0x1

    #@16
    .line 660
    .local v5, "swipeGestureType":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/StackView;->cancelLongPress()V

    #@19
    .line 661
    invoke-virtual {p0, v7}, Landroid/widget/StackView;->requestDisallowInterceptTouchEvent(Z)V

    #@1c
    .line 663
    iget-object v9, p0, Landroid/widget/StackView;->mAdapter:Landroid/widget/Adapter;

    #@1e
    if-nez v9, :cond_1

    #@20
    return-void

    #@21
    .line 659
    .end local v5    # "swipeGestureType":I
    :cond_0
    const/4 v5, 0x2

    #@22
    .restart local v5    # "swipeGestureType":I
    goto :goto_0

    #@23
    .line 664
    :cond_1
    invoke-virtual {p0}, Landroid/widget/StackView;->getCount()I

    #@26
    move-result v1

    #@27
    .line 667
    .local v1, "adapterCount":I
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    #@29
    if-nez v9, :cond_5

    #@2b
    .line 668
    if-ne v5, v11, :cond_4

    #@2d
    const/4 v0, 0x0

    #@2e
    .line 673
    .local v0, "activeIndex":I
    :goto_1
    iget-boolean v9, p0, Landroid/widget/StackView;->mLoopViews:Z

    #@30
    if-eqz v9, :cond_9

    #@32
    if-ne v1, v7, :cond_9

    #@34
    .line 674
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    #@36
    if-nez v9, :cond_7

    #@38
    if-ne v5, v7, :cond_7

    #@3a
    const/4 v3, 0x1

    #@3b
    .line 676
    .local v3, "endOfStack":Z
    :goto_2
    iget-boolean v9, p0, Landroid/widget/StackView;->mLoopViews:Z

    #@3d
    if-eqz v9, :cond_c

    #@3f
    if-ne v1, v7, :cond_c

    #@41
    .line 677
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    #@43
    if-ne v9, v7, :cond_a

    #@45
    if-ne v5, v7, :cond_a

    #@47
    const/4 v2, 0x1

    #@48
    .line 681
    .local v2, "beginningOfStack":Z
    :goto_3
    iget-boolean v9, p0, Landroid/widget/StackView;->mLoopViews:Z

    #@4a
    if-eqz v9, :cond_2

    #@4c
    if-eqz v2, :cond_d

    #@4e
    .line 683
    :cond_2
    iget v9, p0, Landroid/widget/StackView;->mCurrentWindowStartUnbounded:I

    #@50
    add-int/2addr v9, v0

    #@51
    const/4 v10, -0x1

    #@52
    if-eq v9, v10, :cond_3

    #@54
    if-eqz v2, :cond_e

    #@56
    .line 684
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@58
    .line 685
    const/4 v4, 0x1

    #@59
    .line 692
    .local v4, "stackMode":I
    :goto_4
    if-nez v4, :cond_11

    #@5b
    :goto_5
    iput-boolean v7, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    #@5d
    .line 694
    invoke-virtual {p0, v0}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    #@60
    move-result-object v6

    #@61
    .line 695
    .local v6, "v":Landroid/view/View;
    if-nez v6, :cond_12

    #@63
    return-void

    #@64
    .line 668
    .end local v0    # "activeIndex":I
    .end local v2    # "beginningOfStack":Z
    .end local v3    # "endOfStack":Z
    .end local v4    # "stackMode":I
    .end local v6    # "v":Landroid/view/View;
    :cond_4
    const/4 v0, 0x1

    #@65
    .restart local v0    # "activeIndex":I
    goto :goto_1

    #@66
    .line 670
    .end local v0    # "activeIndex":I
    :cond_5
    if-ne v5, v11, :cond_6

    #@68
    const/4 v0, 0x1

    #@69
    .restart local v0    # "activeIndex":I
    goto :goto_1

    #@6a
    .end local v0    # "activeIndex":I
    :cond_6
    const/4 v0, 0x0

    #@6b
    .restart local v0    # "activeIndex":I
    goto :goto_1

    #@6c
    .line 675
    :cond_7
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    #@6e
    if-ne v9, v7, :cond_8

    #@70
    if-ne v5, v11, :cond_8

    #@72
    const/4 v3, 0x1

    #@73
    .restart local v3    # "endOfStack":Z
    goto :goto_2

    #@74
    .end local v3    # "endOfStack":Z
    :cond_8
    const/4 v3, 0x0

    #@75
    .restart local v3    # "endOfStack":Z
    goto :goto_2

    #@76
    .line 673
    .end local v3    # "endOfStack":Z
    :cond_9
    const/4 v3, 0x0

    #@77
    .restart local v3    # "endOfStack":Z
    goto :goto_2

    #@78
    .line 678
    :cond_a
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    #@7a
    if-nez v9, :cond_b

    #@7c
    if-ne v5, v11, :cond_b

    #@7e
    const/4 v2, 0x1

    #@7f
    .restart local v2    # "beginningOfStack":Z
    goto :goto_3

    #@80
    .end local v2    # "beginningOfStack":Z
    :cond_b
    const/4 v2, 0x0

    #@81
    .restart local v2    # "beginningOfStack":Z
    goto :goto_3

    #@82
    .line 676
    .end local v2    # "beginningOfStack":Z
    :cond_c
    const/4 v2, 0x0

    #@83
    .restart local v2    # "beginningOfStack":Z
    goto :goto_3

    #@84
    .line 681
    :cond_d
    if-nez v3, :cond_2

    #@86
    .line 682
    const/4 v4, 0x0

    #@87
    .line 681
    .restart local v4    # "stackMode":I
    goto :goto_4

    #@88
    .line 686
    .end local v4    # "stackMode":I
    :cond_e
    iget v9, p0, Landroid/widget/StackView;->mCurrentWindowStartUnbounded:I

    #@8a
    add-int/2addr v9, v0

    #@8b
    add-int/lit8 v10, v1, -0x1

    #@8d
    if-eq v9, v10, :cond_f

    #@8f
    if-eqz v3, :cond_10

    #@91
    .line 687
    :cond_f
    const/4 v4, 0x2

    #@92
    .restart local v4    # "stackMode":I
    goto :goto_4

    #@93
    .line 689
    .end local v4    # "stackMode":I
    :cond_10
    const/4 v4, 0x0

    #@94
    .restart local v4    # "stackMode":I
    goto :goto_4

    #@95
    :cond_11
    move v7, v8

    #@96
    .line 692
    goto :goto_5

    #@97
    .line 697
    .restart local v6    # "v":Landroid/view/View;
    :cond_12
    invoke-direct {p0, v6, v4}, Landroid/widget/StackView;->setupStackSlider(Landroid/view/View;I)V

    #@9a
    .line 700
    iput v5, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    #@9c
    .line 701
    invoke-virtual {p0}, Landroid/widget/StackView;->cancelHandleClick()V

    #@9f
    .line 657
    .end local v0    # "activeIndex":I
    .end local v1    # "adapterCount":I
    .end local v2    # "beginningOfStack":Z
    .end local v3    # "endOfStack":Z
    .end local v4    # "stackMode":I
    .end local v5    # "swipeGestureType":I
    .end local v6    # "v":Landroid/view/View;
    :cond_13
    return-void
.end method

.method private handlePointerUp(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 811
    iget v9, p0, Landroid/widget/StackView;->mActivePointerId:I

    #@2
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@5
    move-result v6

    #@6
    .line 812
    .local v6, "pointerIndex":I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    #@9
    move-result v4

    #@a
    .line 813
    .local v4, "newY":F
    iget v9, p0, Landroid/widget/StackView;->mInitialY:F

    #@c
    sub-float v9, v4, v9

    #@e
    float-to-int v1, v9

    #@f
    .line 814
    .local v1, "deltaY":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@12
    move-result-wide v10

    #@13
    iput-wide v10, p0, Landroid/widget/StackView;->mLastInteractionTime:J

    #@15
    .line 816
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@17
    if-eqz v9, :cond_0

    #@19
    .line 817
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1b
    iget v10, p0, Landroid/widget/StackView;->mMaximumVelocity:I

    #@1d
    int-to-float v10, v10

    #@1e
    const/16 v11, 0x3e8

    #@20
    invoke-virtual {v9, v11, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@23
    .line 818
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@25
    iget v10, p0, Landroid/widget/StackView;->mActivePointerId:I

    #@27
    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    #@2a
    move-result v9

    #@2b
    float-to-int v9, v9

    #@2c
    iput v9, p0, Landroid/widget/StackView;->mYVelocity:I

    #@2e
    .line 821
    :cond_0
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@30
    if-eqz v9, :cond_1

    #@32
    .line 822
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@34
    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    #@37
    .line 823
    const/4 v9, 0x0

    #@38
    iput-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@3a
    .line 826
    :cond_1
    iget v9, p0, Landroid/widget/StackView;->mSwipeThreshold:I

    #@3c
    if-le v1, v9, :cond_4

    #@3e
    iget v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    #@40
    const/4 v10, 0x2

    #@41
    if-ne v9, v10, :cond_4

    #@43
    .line 827
    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    #@45
    iget v9, v9, Landroid/widget/StackView$StackSlider;->mMode:I

    #@47
    if-nez v9, :cond_4

    #@49
    .line 830
    const/4 v9, 0x0

    #@4a
    iput v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    #@4c
    .line 833
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    #@4e
    if-nez v9, :cond_3

    #@50
    .line 834
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    #@53
    .line 838
    :goto_0
    iget-object v9, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    #@55
    invoke-virtual {v9}, Landroid/widget/ImageView;->bringToFront()V

    #@58
    .line 891
    :cond_2
    :goto_1
    const/4 v9, -0x1

    #@59
    iput v9, p0, Landroid/widget/StackView;->mActivePointerId:I

    #@5b
    .line 892
    const/4 v9, 0x0

    #@5c
    iput v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    #@5e
    .line 810
    return-void

    #@5f
    .line 836
    :cond_3
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    #@62
    goto :goto_0

    #@63
    .line 839
    :cond_4
    iget v9, p0, Landroid/widget/StackView;->mSwipeThreshold:I

    #@65
    neg-int v9, v9

    #@66
    if-ge v1, v9, :cond_6

    #@68
    iget v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    #@6a
    const/4 v10, 0x1

    #@6b
    if-ne v9, v10, :cond_6

    #@6d
    .line 840
    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    #@6f
    iget v9, v9, Landroid/widget/StackView$StackSlider;->mMode:I

    #@71
    if-nez v9, :cond_6

    #@73
    .line 843
    const/4 v9, 0x0

    #@74
    iput v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    #@76
    .line 846
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    #@78
    if-nez v9, :cond_5

    #@7a
    .line 847
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    #@7d
    .line 852
    :goto_2
    iget-object v9, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    #@7f
    invoke-virtual {v9}, Landroid/widget/ImageView;->bringToFront()V

    #@82
    goto :goto_1

    #@83
    .line 849
    :cond_5
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    #@86
    goto :goto_2

    #@87
    .line 853
    :cond_6
    iget v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    #@89
    const/4 v10, 0x1

    #@8a
    if-ne v9, v10, :cond_a

    #@8c
    .line 856
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    #@8e
    const/4 v10, 0x1

    #@8f
    if-ne v9, v10, :cond_8

    #@91
    const/4 v9, 0x1

    #@92
    :goto_3
    int-to-float v3, v9

    #@93
    .line 857
    .local v3, "finalYProgress":F
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    #@95
    if-eqz v9, :cond_7

    #@97
    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    #@99
    iget v9, v9, Landroid/widget/StackView$StackSlider;->mMode:I

    #@9b
    if-eqz v9, :cond_9

    #@9d
    .line 858
    :cond_7
    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    #@9f
    invoke-virtual {v9}, Landroid/widget/StackView$StackSlider;->getDurationForNeutralPosition()F

    #@a2
    move-result v9

    #@a3
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    #@a6
    move-result v2

    #@a7
    .line 863
    .local v2, "duration":I
    :goto_4
    new-instance v0, Landroid/widget/StackView$StackSlider;

    #@a9
    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    #@ab
    invoke-direct {v0, p0, v9}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    #@ae
    .line 864
    .local v0, "animationSlider":Landroid/widget/StackView$StackSlider;
    const-string/jumbo v9, "YProgress"

    #@b1
    const/4 v10, 0x1

    #@b2
    new-array v10, v10, [F

    #@b4
    const/4 v11, 0x0

    #@b5
    aput v3, v10, v11

    #@b7
    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    #@ba
    move-result-object v8

    #@bb
    .line 865
    .local v8, "snapBackY":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v9, "XProgress"

    #@be
    const/4 v10, 0x1

    #@bf
    new-array v10, v10, [F

    #@c1
    const/4 v11, 0x0

    #@c2
    const/4 v12, 0x0

    #@c3
    aput v11, v10, v12

    #@c5
    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    #@c8
    move-result-object v7

    #@c9
    .line 866
    .local v7, "snapBackX":Landroid/animation/PropertyValuesHolder;
    const/4 v9, 0x2

    #@ca
    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    #@cc
    .line 867
    const/4 v10, 0x0

    #@cd
    aput-object v7, v9, v10

    #@cf
    const/4 v10, 0x1

    #@d0
    aput-object v8, v9, v10

    #@d2
    .line 866
    invoke-static {v0, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@d5
    move-result-object v5

    #@d6
    .line 868
    .local v5, "pa":Landroid/animation/ObjectAnimator;
    int-to-long v10, v2

    #@d7
    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@da
    .line 869
    new-instance v9, Landroid/view/animation/LinearInterpolator;

    #@dc
    invoke-direct {v9}, Landroid/view/animation/LinearInterpolator;-><init>()V

    #@df
    invoke-virtual {v5, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@e2
    .line 870
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    #@e5
    goto/16 :goto_1

    #@e7
    .line 856
    .end local v0    # "animationSlider":Landroid/widget/StackView$StackSlider;
    .end local v2    # "duration":I
    .end local v3    # "finalYProgress":F
    .end local v5    # "pa":Landroid/animation/ObjectAnimator;
    .end local v7    # "snapBackX":Landroid/animation/PropertyValuesHolder;
    .end local v8    # "snapBackY":Landroid/animation/PropertyValuesHolder;
    :cond_8
    const/4 v9, 0x0

    #@e8
    goto :goto_3

    #@e9
    .line 860
    .restart local v3    # "finalYProgress":F
    :cond_9
    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    #@eb
    invoke-virtual {v9}, Landroid/widget/StackView$StackSlider;->getDurationForOffscreenPosition()F

    #@ee
    move-result v9

    #@ef
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    #@f2
    move-result v2

    #@f3
    .restart local v2    # "duration":I
    goto :goto_4

    #@f4
    .line 871
    .end local v2    # "duration":I
    .end local v3    # "finalYProgress":F
    :cond_a
    iget v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    #@f6
    const/4 v10, 0x2

    #@f7
    if-ne v9, v10, :cond_2

    #@f9
    .line 873
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    #@fb
    const/4 v10, 0x1

    #@fc
    if-ne v9, v10, :cond_c

    #@fe
    const/4 v9, 0x0

    #@ff
    :goto_5
    int-to-float v3, v9

    #@100
    .line 875
    .restart local v3    # "finalYProgress":F
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    #@102
    const/4 v10, 0x1

    #@103
    if-eq v9, v10, :cond_b

    #@105
    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    #@107
    iget v9, v9, Landroid/widget/StackView$StackSlider;->mMode:I

    #@109
    if-eqz v9, :cond_d

    #@10b
    .line 876
    :cond_b
    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    #@10d
    invoke-virtual {v9}, Landroid/widget/StackView$StackSlider;->getDurationForNeutralPosition()F

    #@110
    move-result v9

    #@111
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    #@114
    move-result v2

    #@115
    .line 881
    .restart local v2    # "duration":I
    :goto_6
    new-instance v0, Landroid/widget/StackView$StackSlider;

    #@117
    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    #@119
    invoke-direct {v0, p0, v9}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    #@11c
    .line 883
    .restart local v0    # "animationSlider":Landroid/widget/StackView$StackSlider;
    const-string/jumbo v9, "YProgress"

    #@11f
    const/4 v10, 0x1

    #@120
    new-array v10, v10, [F

    #@122
    const/4 v11, 0x0

    #@123
    aput v3, v10, v11

    #@125
    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    #@128
    move-result-object v8

    #@129
    .line 884
    .restart local v8    # "snapBackY":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v9, "XProgress"

    #@12c
    const/4 v10, 0x1

    #@12d
    new-array v10, v10, [F

    #@12f
    const/4 v11, 0x0

    #@130
    const/4 v12, 0x0

    #@131
    aput v11, v10, v12

    #@133
    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    #@136
    move-result-object v7

    #@137
    .line 885
    .restart local v7    # "snapBackX":Landroid/animation/PropertyValuesHolder;
    const/4 v9, 0x2

    #@138
    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    #@13a
    .line 886
    const/4 v10, 0x0

    #@13b
    aput-object v7, v9, v10

    #@13d
    const/4 v10, 0x1

    #@13e
    aput-object v8, v9, v10

    #@140
    .line 885
    invoke-static {v0, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@143
    move-result-object v5

    #@144
    .line 887
    .restart local v5    # "pa":Landroid/animation/ObjectAnimator;
    int-to-long v10, v2

    #@145
    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@148
    .line 888
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    #@14b
    goto/16 :goto_1

    #@14d
    .line 873
    .end local v0    # "animationSlider":Landroid/widget/StackView$StackSlider;
    .end local v2    # "duration":I
    .end local v3    # "finalYProgress":F
    .end local v5    # "pa":Landroid/animation/ObjectAnimator;
    .end local v7    # "snapBackX":Landroid/animation/PropertyValuesHolder;
    .end local v8    # "snapBackY":Landroid/animation/PropertyValuesHolder;
    :cond_c
    const/4 v9, 0x1

    #@14e
    goto :goto_5

    #@14f
    .line 878
    .restart local v3    # "finalYProgress":F
    :cond_d
    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    #@151
    invoke-virtual {v9}, Landroid/widget/StackView$StackSlider;->getDurationForOffscreenPosition()F

    #@154
    move-result v9

    #@155
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    #@158
    move-result v2

    #@159
    .restart local v2    # "duration":I
    goto :goto_6
.end method

.method private initStackView()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, -0x1

    #@3
    .line 191
    const/4 v2, 0x5

    #@4
    invoke-virtual {p0, v2, v6}, Landroid/widget/StackView;->configureViewAnimator(II)V

    #@7
    .line 192
    invoke-virtual {p0, v6}, Landroid/widget/StackView;->setStaticTransformationsEnabled(Z)V

    #@a
    .line 193
    invoke-virtual {p0}, Landroid/widget/StackView;->getContext()Landroid/content/Context;

    #@d
    move-result-object v2

    #@e
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@11
    move-result-object v0

    #@12
    .line 194
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@15
    move-result v2

    #@16
    iput v2, p0, Landroid/widget/StackView;->mTouchSlop:I

    #@18
    .line 195
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    #@1b
    move-result v2

    #@1c
    iput v2, p0, Landroid/widget/StackView;->mMaximumVelocity:I

    #@1e
    .line 196
    iput v5, p0, Landroid/widget/StackView;->mActivePointerId:I

    #@20
    .line 198
    new-instance v2, Landroid/widget/ImageView;

    #@22
    invoke-virtual {p0}, Landroid/widget/StackView;->getContext()Landroid/content/Context;

    #@25
    move-result-object v3

    #@26
    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #@29
    iput-object v2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    #@2b
    .line 199
    iget-object v2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    #@2d
    new-instance v3, Landroid/widget/StackView$LayoutParams;

    #@2f
    iget-object v4, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    #@31
    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    #@34
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@37
    .line 200
    iget-object v2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    #@39
    new-instance v3, Landroid/widget/StackView$LayoutParams;

    #@3b
    iget-object v4, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    #@3d
    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    #@40
    invoke-virtual {p0, v2, v5, v3}, Landroid/widget/StackView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    #@43
    .line 202
    new-instance v2, Landroid/widget/ImageView;

    #@45
    invoke-virtual {p0}, Landroid/widget/StackView;->getContext()Landroid/content/Context;

    #@48
    move-result-object v3

    #@49
    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #@4c
    iput-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    #@4e
    .line 203
    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    #@50
    new-instance v3, Landroid/widget/StackView$LayoutParams;

    #@52
    iget-object v4, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    #@54
    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    #@57
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@5a
    .line 204
    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    #@5c
    new-instance v3, Landroid/widget/StackView$LayoutParams;

    #@5e
    iget-object v4, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    #@60
    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    #@63
    invoke-virtual {p0, v2, v5, v3}, Landroid/widget/StackView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    #@66
    .line 205
    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    #@68
    const/4 v3, 0x4

    #@69
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    #@6c
    .line 207
    new-instance v2, Landroid/widget/StackView$StackSlider;

    #@6e
    invoke-direct {v2, p0}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;)V

    #@71
    iput-object v2, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    #@73
    .line 209
    sget-object v2, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    #@75
    if-nez v2, :cond_0

    #@77
    .line 210
    new-instance v2, Landroid/widget/StackView$HolographicHelper;

    #@79
    iget-object v3, p0, Landroid/widget/StackView;->mContext:Landroid/content/Context;

    #@7b
    invoke-direct {v2, v3}, Landroid/widget/StackView$HolographicHelper;-><init>(Landroid/content/Context;)V

    #@7e
    sput-object v2, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    #@80
    .line 212
    :cond_0
    invoke-virtual {p0, v7}, Landroid/widget/StackView;->setClipChildren(Z)V

    #@83
    .line 213
    invoke-virtual {p0, v7}, Landroid/widget/StackView;->setClipToPadding(Z)V

    #@86
    .line 218
    iput v6, p0, Landroid/widget/StackView;->mStackMode:I

    #@88
    .line 221
    iput v5, p0, Landroid/widget/StackView;->mWhichChild:I

    #@8a
    .line 225
    iget-object v2, p0, Landroid/widget/StackView;->mContext:Landroid/content/Context;

    #@8c
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@8f
    move-result-object v2

    #@90
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@93
    move-result-object v2

    #@94
    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    #@96
    .line 226
    .local v1, "density":F
    const/high16 v2, 0x40800000    # 4.0f

    #@98
    mul-float/2addr v2, v1

    #@99
    float-to-double v2, v2

    #@9a
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    #@9d
    move-result-wide v2

    #@9e
    double-to-int v2, v2

    #@9f
    iput v2, p0, Landroid/widget/StackView;->mFramePadding:I

    #@a1
    .line 190
    return-void
.end method

.method private measureChildren()V
    .locals 13

    #@0
    .prologue
    .line 1131
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    #@3
    move-result v5

    #@4
    .line 1133
    .local v5, "count":I
    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredWidth()I

    #@7
    move-result v10

    #@8
    .line 1134
    .local v10, "measuredWidth":I
    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredHeight()I

    #@b
    move-result v9

    #@c
    .line 1136
    .local v9, "measuredHeight":I
    int-to-float v11, v10

    #@d
    const v12, 0x3f666666    # 0.9f

    #@10
    mul-float/2addr v11, v12

    #@11
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    #@14
    move-result v11

    #@15
    .line 1137
    iget v12, p0, Landroid/widget/StackView;->mPaddingLeft:I

    #@17
    .line 1136
    sub-int/2addr v11, v12

    #@18
    .line 1137
    iget v12, p0, Landroid/widget/StackView;->mPaddingRight:I

    #@1a
    .line 1136
    sub-int v4, v11, v12

    #@1c
    .line 1138
    .local v4, "childWidth":I
    int-to-float v11, v9

    #@1d
    const v12, 0x3f666666    # 0.9f

    #@20
    mul-float/2addr v11, v12

    #@21
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    #@24
    move-result v11

    #@25
    .line 1139
    iget v12, p0, Landroid/widget/StackView;->mPaddingTop:I

    #@27
    .line 1138
    sub-int/2addr v11, v12

    #@28
    .line 1139
    iget v12, p0, Landroid/widget/StackView;->mPaddingBottom:I

    #@2a
    .line 1138
    sub-int v1, v11, v12

    #@2c
    .line 1141
    .local v1, "childHeight":I
    const/4 v8, 0x0

    #@2d
    .line 1142
    .local v8, "maxWidth":I
    const/4 v7, 0x0

    #@2e
    .line 1144
    .local v7, "maxHeight":I
    const/4 v6, 0x0

    #@2f
    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_2

    #@31
    .line 1145
    invoke-virtual {p0, v6}, Landroid/widget/StackView;->getChildAt(I)Landroid/view/View;

    #@34
    move-result-object v0

    #@35
    .line 1146
    .local v0, "child":Landroid/view/View;
    const/high16 v11, -0x80000000

    #@37
    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@3a
    move-result v11

    #@3b
    .line 1147
    const/high16 v12, -0x80000000

    #@3d
    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@40
    move-result v12

    #@41
    .line 1146
    invoke-virtual {v0, v11, v12}, Landroid/view/View;->measure(II)V

    #@44
    .line 1149
    iget-object v11, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    #@46
    if-eq v0, v11, :cond_1

    #@48
    iget-object v11, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    #@4a
    if-eq v0, v11, :cond_1

    #@4c
    .line 1150
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@4f
    move-result v3

    #@50
    .line 1151
    .local v3, "childMeasuredWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    #@53
    move-result v2

    #@54
    .line 1152
    .local v2, "childMeasuredHeight":I
    if-le v3, v8, :cond_0

    #@56
    .line 1153
    move v8, v3

    #@57
    .line 1155
    :cond_0
    if-le v2, v7, :cond_1

    #@59
    .line 1156
    move v7, v2

    #@5a
    .line 1144
    .end local v2    # "childMeasuredHeight":I
    .end local v3    # "childMeasuredWidth":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    #@5c
    goto :goto_0

    #@5d
    .line 1161
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    int-to-float v11, v10

    #@5e
    const v12, 0x3dcccccd    # 0.1f

    #@61
    mul-float/2addr v11, v12

    #@62
    iput v11, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    #@64
    .line 1162
    int-to-float v11, v9

    #@65
    const v12, 0x3dcccccd    # 0.1f

    #@68
    mul-float/2addr v11, v12

    #@69
    iput v11, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    #@6b
    .line 1165
    if-lez v8, :cond_3

    #@6d
    if-lez v5, :cond_3

    #@6f
    if-ge v8, v4, :cond_3

    #@71
    .line 1166
    sub-int v11, v10, v8

    #@73
    int-to-float v11, v11

    #@74
    iput v11, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    #@76
    .line 1169
    :cond_3
    if-lez v7, :cond_4

    #@78
    if-lez v5, :cond_4

    #@7a
    if-ge v7, v1, :cond_4

    #@7c
    .line 1170
    sub-int v11, v9, v7

    #@7e
    int-to-float v11, v11

    #@7f
    iput v11, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    #@81
    .line 1130
    :cond_4
    return-void
.end method

.method private onLayout()V
    .locals 3

    #@0
    .prologue
    .line 563
    iget-boolean v1, p0, Landroid/widget/StackView;->mFirstLayoutHappened:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 564
    const/4 v1, 0x1

    #@5
    iput-boolean v1, p0, Landroid/widget/StackView;->mFirstLayoutHappened:Z

    #@7
    .line 565
    invoke-direct {p0}, Landroid/widget/StackView;->updateChildTransforms()V

    #@a
    .line 568
    :cond_0
    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredHeight()I

    #@d
    move-result v1

    #@e
    int-to-float v1, v1

    #@f
    const v2, 0x3f333333    # 0.7f

    #@12
    mul-float/2addr v1, v2

    #@13
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    #@16
    move-result v0

    #@17
    .line 569
    .local v0, "newSlideAmount":I
    iget v1, p0, Landroid/widget/StackView;->mSlideAmount:I

    #@19
    if-eq v1, v0, :cond_1

    #@1b
    .line 570
    iput v0, p0, Landroid/widget/StackView;->mSlideAmount:I

    #@1d
    .line 571
    int-to-float v1, v0

    #@1e
    const v2, 0x3e4ccccd    # 0.2f

    #@21
    mul-float/2addr v1, v2

    #@22
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    #@25
    move-result v1

    #@26
    iput v1, p0, Landroid/widget/StackView;->mSwipeThreshold:I

    #@28
    .line 574
    :cond_1
    iget v1, p0, Landroid/widget/StackView;->mPerspectiveShiftY:F

    #@2a
    iget v2, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    #@2c
    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    #@2f
    move-result v1

    #@30
    if-nez v1, :cond_2

    #@32
    .line 575
    iget v1, p0, Landroid/widget/StackView;->mPerspectiveShiftX:F

    #@34
    iget v2, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    #@36
    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    #@39
    move-result v1

    #@3a
    if-eqz v1, :cond_3

    #@3c
    .line 577
    :cond_2
    iget v1, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    #@3e
    iput v1, p0, Landroid/widget/StackView;->mPerspectiveShiftY:F

    #@40
    .line 578
    iget v1, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    #@42
    iput v1, p0, Landroid/widget/StackView;->mPerspectiveShiftX:F

    #@44
    .line 579
    invoke-direct {p0}, Landroid/widget/StackView;->updateChildTransforms()V

    #@47
    .line 562
    :cond_3
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 767
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@3
    move-result v0

    #@4
    .line 768
    .local v0, "activePointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@7
    move-result v5

    #@8
    .line 769
    .local v5, "pointerId":I
    iget v9, p0, Landroid/widget/StackView;->mActivePointerId:I

    #@a
    if-ne v5, v9, :cond_5

    #@c
    .line 771
    iget v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    #@e
    const/4 v10, 0x2

    #@f
    if-ne v9, v10, :cond_0

    #@11
    const/4 v1, 0x0

    #@12
    .line 773
    .local v1, "activeViewIndex":I
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    #@15
    move-result-object v6

    #@16
    .line 774
    .local v6, "v":Landroid/view/View;
    if-nez v6, :cond_1

    #@18
    return-void

    #@19
    .line 771
    .end local v1    # "activeViewIndex":I
    .end local v6    # "v":Landroid/view/View;
    :cond_0
    const/4 v1, 0x1

    #@1a
    .restart local v1    # "activeViewIndex":I
    goto :goto_0

    #@1b
    .line 780
    .restart local v6    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    #@1c
    .local v2, "index":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    #@1f
    move-result v9

    #@20
    if-ge v2, v9, :cond_4

    #@22
    .line 781
    if-eq v2, v0, :cond_3

    #@24
    .line 783
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    #@27
    move-result v7

    #@28
    .line 784
    .local v7, "x":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    #@2b
    move-result v8

    #@2c
    .line 786
    .local v8, "y":F
    iget-object v9, p0, Landroid/widget/StackView;->mTouchRect:Landroid/graphics/Rect;

    #@2e
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    #@31
    move-result v10

    #@32
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    #@35
    move-result v11

    #@36
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    #@39
    move-result v12

    #@3a
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    #@3d
    move-result v13

    #@3e
    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    #@41
    .line 787
    iget-object v9, p0, Landroid/widget/StackView;->mTouchRect:Landroid/graphics/Rect;

    #@43
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    #@46
    move-result v10

    #@47
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    #@4a
    move-result v11

    #@4b
    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    #@4e
    move-result v9

    #@4f
    if-eqz v9, :cond_3

    #@51
    .line 788
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    #@54
    move-result v3

    #@55
    .line 789
    .local v3, "oldX":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    #@58
    move-result v4

    #@59
    .line 792
    .local v4, "oldY":F
    iget v9, p0, Landroid/widget/StackView;->mInitialY:F

    #@5b
    sub-float v10, v8, v4

    #@5d
    add-float/2addr v9, v10

    #@5e
    iput v9, p0, Landroid/widget/StackView;->mInitialY:F

    #@60
    .line 793
    iget v9, p0, Landroid/widget/StackView;->mInitialX:F

    #@62
    sub-float v10, v7, v3

    #@64
    add-float/2addr v9, v10

    #@65
    iput v9, p0, Landroid/widget/StackView;->mInitialX:F

    #@67
    .line 795
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@6a
    move-result v9

    #@6b
    iput v9, p0, Landroid/widget/StackView;->mActivePointerId:I

    #@6d
    .line 796
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@6f
    if-eqz v9, :cond_2

    #@71
    .line 797
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@73
    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    #@76
    .line 800
    :cond_2
    return-void

    #@77
    .line 780
    .end local v3    # "oldX":F
    .end local v4    # "oldY":F
    .end local v7    # "x":F
    .end local v8    # "y":F
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@79
    goto :goto_1

    #@7a
    .line 806
    :cond_4
    invoke-direct {p0, p1}, Landroid/widget/StackView;->handlePointerUp(Landroid/view/MotionEvent;)V

    #@7d
    .line 766
    .end local v1    # "activeViewIndex":I
    .end local v2    # "index":I
    .end local v6    # "v":Landroid/view/View;
    :cond_5
    return-void
.end method

.method private pacedScroll(Z)V
    .locals 6
    .param p1, "up"    # Z

    #@0
    .prologue
    .line 604
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v2

    #@4
    iget-wide v4, p0, Landroid/widget/StackView;->mLastScrollTime:J

    #@6
    sub-long v0, v2, v4

    #@8
    .line 605
    .local v0, "timeSinceLastScroll":J
    const-wide/16 v2, 0x64

    #@a
    cmp-long v2, v0, v2

    #@c
    if-lez v2, :cond_0

    #@e
    .line 606
    if-eqz p1, :cond_1

    #@10
    .line 607
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    #@13
    .line 611
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@16
    move-result-wide v2

    #@17
    iput-wide v2, p0, Landroid/widget/StackView;->mLastScrollTime:J

    #@19
    .line 603
    :cond_0
    return-void

    #@1a
    .line 609
    :cond_1
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    #@1d
    goto :goto_0
.end method

.method private setupStackSlider(Landroid/view/View;I)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "mode"    # I

    #@0
    .prologue
    .line 373
    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    #@2
    invoke-virtual {v0, p2}, Landroid/widget/StackView$StackSlider;->setMode(I)V

    #@5
    .line 374
    if-eqz p1, :cond_0

    #@7
    .line 375
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    #@9
    sget-object v1, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    #@b
    iget v2, p0, Landroid/widget/StackView;->mResOutColor:I

    #@d
    invoke-virtual {v1, p1, v2}, Landroid/widget/StackView$HolographicHelper;->createResOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    #@14
    .line 376
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    #@16
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    #@19
    move-result v1

    #@1a
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    #@1d
    .line 377
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    #@1f
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    #@22
    move-result v1

    #@23
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    #@26
    .line 378
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    #@28
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    #@2b
    move-result v1

    #@2c
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    #@2f
    .line 379
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    #@31
    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    #@34
    .line 380
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    #@37
    .line 381
    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    #@39
    invoke-virtual {v0, p1}, Landroid/widget/StackView$StackSlider;->setView(Landroid/view/View;)V

    #@3c
    .line 383
    const/4 v0, 0x0

    #@3d
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    #@40
    .line 372
    :cond_0
    return-void
.end method

.method private transformViewAtIndex(ILandroid/view/View;Z)V
    .locals 20
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "animate"    # Z

    #@0
    .prologue
    .line 320
    move-object/from16 v0, p0

    #@2
    iget v3, v0, Landroid/widget/StackView;->mPerspectiveShiftY:F

    #@4
    .line 321
    .local v3, "maxPerspectiveShiftY":F
    move-object/from16 v0, p0

    #@6
    iget v2, v0, Landroid/widget/StackView;->mPerspectiveShiftX:F

    #@8
    .line 323
    .local v2, "maxPerspectiveShiftX":F
    move-object/from16 v0, p0

    #@a
    iget v0, v0, Landroid/widget/StackView;->mStackMode:I

    #@c
    move/from16 v17, v0

    #@e
    const/16 v18, 0x1

    #@10
    move/from16 v0, v17

    #@12
    move/from16 v1, v18

    #@14
    if-ne v0, v1, :cond_3

    #@16
    .line 324
    move-object/from16 v0, p0

    #@18
    iget v0, v0, Landroid/widget/StackView;->mMaxNumActiveViews:I

    #@1a
    move/from16 v17, v0

    #@1c
    sub-int v17, v17, p1

    #@1e
    add-int/lit8 p1, v17, -0x1

    #@20
    .line 325
    move-object/from16 v0, p0

    #@22
    iget v0, v0, Landroid/widget/StackView;->mMaxNumActiveViews:I

    #@24
    move/from16 v17, v0

    #@26
    add-int/lit8 v17, v17, -0x1

    #@28
    move/from16 v0, p1

    #@2a
    move/from16 v1, v17

    #@2c
    if-ne v0, v1, :cond_0

    #@2e
    add-int/lit8 p1, p1, -0x1

    #@30
    .line 331
    :cond_0
    :goto_0
    move/from16 v0, p1

    #@32
    int-to-float v0, v0

    #@33
    move/from16 v17, v0

    #@35
    const/high16 v18, 0x3f800000    # 1.0f

    #@37
    mul-float v17, v17, v18

    #@39
    move-object/from16 v0, p0

    #@3b
    iget v0, v0, Landroid/widget/StackView;->mMaxNumActiveViews:I

    #@3d
    move/from16 v18, v0

    #@3f
    add-int/lit8 v18, v18, -0x2

    #@41
    move/from16 v0, v18

    #@43
    int-to-float v0, v0

    #@44
    move/from16 v18, v0

    #@46
    div-float v7, v17, v18

    #@48
    .line 333
    .local v7, "r":F
    const/high16 v17, 0x3f800000    # 1.0f

    #@4a
    sub-float v17, v17, v7

    #@4c
    const/16 v18, 0x0

    #@4e
    mul-float v17, v17, v18

    #@50
    const/high16 v18, 0x3f800000    # 1.0f

    #@52
    sub-float v8, v18, v17

    #@54
    .line 335
    .local v8, "scale":F
    mul-float v6, v7, v3

    #@56
    .line 336
    .local v6, "perspectiveTranslationY":F
    const/high16 v17, 0x3f800000    # 1.0f

    #@58
    sub-float v17, v8, v17

    #@5a
    .line 337
    invoke-virtual/range {p0 .. p0}, Landroid/widget/StackView;->getMeasuredHeight()I

    #@5d
    move-result v18

    #@5e
    move/from16 v0, v18

    #@60
    int-to-float v0, v0

    #@61
    move/from16 v18, v0

    #@63
    const v19, 0x3f666666    # 0.9f

    #@66
    mul-float v18, v18, v19

    #@68
    const/high16 v19, 0x40000000    # 2.0f

    #@6a
    div-float v18, v18, v19

    #@6c
    .line 336
    mul-float v12, v17, v18

    #@6e
    .line 338
    .local v12, "scaleShiftCorrectionY":F
    add-float v14, v6, v12

    #@70
    .line 340
    .local v14, "transY":F
    const/high16 v17, 0x3f800000    # 1.0f

    #@72
    sub-float v17, v17, v7

    #@74
    mul-float v5, v17, v2

    #@76
    .line 341
    .local v5, "perspectiveTranslationX":F
    const/high16 v17, 0x3f800000    # 1.0f

    #@78
    sub-float v17, v17, v8

    #@7a
    .line 342
    invoke-virtual/range {p0 .. p0}, Landroid/widget/StackView;->getMeasuredWidth()I

    #@7d
    move-result v18

    #@7e
    move/from16 v0, v18

    #@80
    int-to-float v0, v0

    #@81
    move/from16 v18, v0

    #@83
    const v19, 0x3f666666    # 0.9f

    #@86
    mul-float v18, v18, v19

    #@88
    const/high16 v19, 0x40000000    # 2.0f

    #@8a
    div-float v18, v18, v19

    #@8c
    .line 341
    mul-float v11, v17, v18

    #@8e
    .line 343
    .local v11, "scaleShiftCorrectionX":F
    add-float v13, v5, v11

    #@90
    .line 347
    .local v13, "transX":F
    move-object/from16 v0, p2

    #@92
    instance-of v0, v0, Landroid/widget/StackView$StackFrame;

    #@94
    move/from16 v17, v0

    #@96
    if-eqz v17, :cond_1

    #@98
    move-object/from16 v17, p2

    #@9a
    .line 348
    check-cast v17, Landroid/widget/StackView$StackFrame;

    #@9c
    invoke-virtual/range {v17 .. v17}, Landroid/widget/StackView$StackFrame;->cancelTransformAnimator()Z

    #@9f
    .line 351
    :cond_1
    if-eqz p3, :cond_4

    #@a1
    .line 352
    const-string/jumbo v17, "translationX"

    #@a4
    const/16 v18, 0x1

    #@a6
    move/from16 v0, v18

    #@a8
    new-array v0, v0, [F

    #@aa
    move-object/from16 v18, v0

    #@ac
    const/16 v19, 0x0

    #@ae
    aput v13, v18, v19

    #@b0
    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    #@b3
    move-result-object v15

    #@b4
    .line 353
    .local v15, "translationX":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v17, "translationY"

    #@b7
    const/16 v18, 0x1

    #@b9
    move/from16 v0, v18

    #@bb
    new-array v0, v0, [F

    #@bd
    move-object/from16 v18, v0

    #@bf
    const/16 v19, 0x0

    #@c1
    aput v14, v18, v19

    #@c3
    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    #@c6
    move-result-object v16

    #@c7
    .line 354
    .local v16, "translationY":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v17, "scaleX"

    #@ca
    const/16 v18, 0x1

    #@cc
    move/from16 v0, v18

    #@ce
    new-array v0, v0, [F

    #@d0
    move-object/from16 v18, v0

    #@d2
    const/16 v19, 0x0

    #@d4
    aput v8, v18, v19

    #@d6
    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    #@d9
    move-result-object v9

    #@da
    .line 355
    .local v9, "scalePropX":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v17, "scaleY"

    #@dd
    const/16 v18, 0x1

    #@df
    move/from16 v0, v18

    #@e1
    new-array v0, v0, [F

    #@e3
    move-object/from16 v18, v0

    #@e5
    const/16 v19, 0x0

    #@e7
    aput v8, v18, v19

    #@e9
    invoke-static/range {v17 .. v18}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    #@ec
    move-result-object v10

    #@ed
    .line 357
    .local v10, "scalePropY":Landroid/animation/PropertyValuesHolder;
    const/16 v17, 0x4

    #@ef
    move/from16 v0, v17

    #@f1
    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    #@f3
    move-object/from16 v17, v0

    #@f5
    const/16 v18, 0x0

    #@f7
    aput-object v9, v17, v18

    #@f9
    const/16 v18, 0x1

    #@fb
    aput-object v10, v17, v18

    #@fd
    .line 358
    const/16 v18, 0x2

    #@ff
    aput-object v16, v17, v18

    #@101
    const/16 v18, 0x3

    #@103
    aput-object v15, v17, v18

    #@105
    .line 357
    move-object/from16 v0, p2

    #@107
    move-object/from16 v1, v17

    #@109
    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@10c
    move-result-object v4

    #@10d
    .line 359
    .local v4, "oa":Landroid/animation/ObjectAnimator;
    const-wide/16 v18, 0x64

    #@10f
    move-wide/from16 v0, v18

    #@111
    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@114
    .line 360
    move-object/from16 v0, p2

    #@116
    instance-of v0, v0, Landroid/widget/StackView$StackFrame;

    #@118
    move/from16 v17, v0

    #@11a
    if-eqz v17, :cond_2

    #@11c
    .line 361
    check-cast p2, Landroid/widget/StackView$StackFrame;

    #@11e
    .end local p2    # "view":Landroid/view/View;
    move-object/from16 v0, p2

    #@120
    invoke-virtual {v0, v4}, Landroid/widget/StackView$StackFrame;->setTransformAnimator(Landroid/animation/ObjectAnimator;)V

    #@123
    .line 363
    :cond_2
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    #@126
    .line 319
    .end local v4    # "oa":Landroid/animation/ObjectAnimator;
    .end local v9    # "scalePropX":Landroid/animation/PropertyValuesHolder;
    .end local v10    # "scalePropY":Landroid/animation/PropertyValuesHolder;
    .end local v15    # "translationX":Landroid/animation/PropertyValuesHolder;
    .end local v16    # "translationY":Landroid/animation/PropertyValuesHolder;
    :goto_1
    return-void

    #@127
    .line 327
    .end local v5    # "perspectiveTranslationX":F
    .end local v6    # "perspectiveTranslationY":F
    .end local v7    # "r":F
    .end local v8    # "scale":F
    .end local v11    # "scaleShiftCorrectionX":F
    .end local v12    # "scaleShiftCorrectionY":F
    .end local v13    # "transX":F
    .end local v14    # "transY":F
    .restart local p2    # "view":Landroid/view/View;
    :cond_3
    add-int/lit8 p1, p1, -0x1

    #@129
    .line 328
    if-gez p1, :cond_0

    #@12b
    add-int/lit8 p1, p1, 0x1

    #@12d
    goto/16 :goto_0

    #@12f
    .line 365
    .restart local v5    # "perspectiveTranslationX":F
    .restart local v6    # "perspectiveTranslationY":F
    .restart local v7    # "r":F
    .restart local v8    # "scale":F
    .restart local v11    # "scaleShiftCorrectionX":F
    .restart local v12    # "scaleShiftCorrectionY":F
    .restart local v13    # "transX":F
    .restart local v14    # "transY":F
    :cond_4
    move-object/from16 v0, p2

    #@131
    invoke-virtual {v0, v13}, Landroid/view/View;->setTranslationX(F)V

    #@134
    .line 366
    move-object/from16 v0, p2

    #@136
    invoke-virtual {v0, v14}, Landroid/view/View;->setTranslationY(F)V

    #@139
    .line 367
    move-object/from16 v0, p2

    #@13b
    invoke-virtual {v0, v8}, Landroid/view/View;->setScaleX(F)V

    #@13e
    .line 368
    move-object/from16 v0, p2

    #@140
    invoke-virtual {v0, v8}, Landroid/view/View;->setScaleY(F)V

    #@143
    goto :goto_1
.end method

.method private updateChildTransforms()V
    .locals 3

    #@0
    .prologue
    .line 471
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/StackView;->getNumActiveViews()I

    #@4
    move-result v2

    #@5
    if-ge v0, v2, :cond_1

    #@7
    .line 472
    invoke-virtual {p0, v0}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    #@a
    move-result-object v1

    #@b
    .line 473
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    #@d
    .line 474
    const/4 v2, 0x0

    #@e
    invoke-direct {p0, v0, v1, v2}, Landroid/widget/StackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    #@11
    .line 471
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 470
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public advance()V
    .locals 8

    #@0
    .prologue
    .line 1118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v4

    #@4
    iget-wide v6, p0, Landroid/widget/StackView;->mLastInteractionTime:J

    #@6
    sub-long v2, v4, v6

    #@8
    .line 1120
    .local v2, "timeSinceLastInteraction":J
    iget-object v1, p0, Landroid/widget/StackView;->mAdapter:Landroid/widget/Adapter;

    #@a
    if-nez v1, :cond_0

    #@c
    return-void

    #@d
    .line 1121
    :cond_0
    invoke-virtual {p0}, Landroid/widget/StackView;->getCount()I

    #@10
    move-result v0

    #@11
    .line 1122
    .local v0, "adapterCount":I
    const/4 v1, 0x1

    #@12
    if-ne v0, v1, :cond_1

    #@14
    iget-boolean v1, p0, Landroid/widget/StackView;->mLoopViews:Z

    #@16
    if-eqz v1, :cond_1

    #@18
    return-void

    #@19
    .line 1124
    :cond_1
    iget v1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    #@1b
    if-nez v1, :cond_2

    #@1d
    .line 1125
    const-wide/16 v4, 0x1388

    #@1f
    cmp-long v1, v2, v4

    #@21
    if-lez v1, :cond_2

    #@23
    .line 1126
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    #@26
    .line 1117
    :cond_2
    return-void
.end method

.method applyTransformForChildAtIndex(Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "relativeIndex"    # I

    #@0
    .prologue
    .line 528
    return-void
.end method

.method bridge synthetic createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 1084
    invoke-virtual {p0, p1}, Landroid/widget/StackView;->createOrReuseLayoutParams(Landroid/view/View;)Landroid/widget/StackView$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method createOrReuseLayoutParams(Landroid/view/View;)Landroid/widget/StackView$LayoutParams;
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1085
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4
    move-result-object v0

    #@5
    .line 1086
    .local v0, "currentLp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/widget/StackView$LayoutParams;

    #@7
    if-eqz v2, :cond_0

    #@9
    move-object v1, v0

    #@a
    .line 1087
    check-cast v1, Landroid/widget/StackView$LayoutParams;

    #@c
    .line 1088
    .local v1, "lp":Landroid/widget/StackView$LayoutParams;
    invoke-virtual {v1, v3}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    #@f
    .line 1089
    invoke-virtual {v1, v3}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    #@12
    .line 1090
    iput v3, v1, Landroid/widget/StackView$LayoutParams;->width:I

    #@14
    .line 1091
    iput v3, v1, Landroid/widget/StackView$LayoutParams;->width:I

    #@16
    .line 1092
    return-object v1

    #@17
    .line 1094
    .end local v1    # "lp":Landroid/widget/StackView$LayoutParams;
    :cond_0
    new-instance v2, Landroid/widget/StackView$LayoutParams;

    #@19
    invoke-direct {v2, p0, p1}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    #@1c
    return-object v2
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 533
    const/4 v3, 0x0

    #@1
    .line 535
    .local v3, "expandClipRegion":Z
    iget-object v6, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    #@3
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    #@6
    .line 536
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    #@9
    move-result v1

    #@a
    .line 537
    .local v1, "childCount":I
    const/4 v4, 0x0

    #@b
    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_4

    #@d
    .line 538
    invoke-virtual {p0, v4}, Landroid/widget/StackView;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v0

    #@11
    .line 539
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@14
    move-result-object v5

    #@15
    check-cast v5, Landroid/widget/StackView$LayoutParams;

    #@17
    .line 540
    .local v5, "lp":Landroid/widget/StackView$LayoutParams;
    iget v6, v5, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    #@19
    if-nez v6, :cond_3

    #@1b
    iget v6, v5, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    #@1d
    if-nez v6, :cond_3

    #@1f
    .line 542
    :cond_0
    :goto_1
    invoke-virtual {v5}, Landroid/widget/StackView$LayoutParams;->resetInvalidateRect()V

    #@22
    .line 544
    :cond_1
    invoke-virtual {v5}, Landroid/widget/StackView$LayoutParams;->getInvalidateRect()Landroid/graphics/Rect;

    #@25
    move-result-object v2

    #@26
    .line 545
    .local v2, "childInvalidateRect":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    #@29
    move-result v6

    #@2a
    if-nez v6, :cond_2

    #@2c
    .line 546
    const/4 v3, 0x1

    #@2d
    .line 547
    iget-object v6, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    #@2f
    invoke-virtual {v6, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    #@32
    .line 537
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@34
    goto :goto_0

    #@35
    .line 541
    .end local v2    # "childInvalidateRect":Landroid/graphics/Rect;
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    #@38
    move-result v6

    #@39
    const/4 v7, 0x0

    #@3a
    cmpl-float v6, v6, v7

    #@3c
    if-eqz v6, :cond_0

    #@3e
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@41
    move-result v6

    #@42
    if-eqz v6, :cond_1

    #@44
    goto :goto_1

    #@45
    .line 552
    .end local v0    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/widget/StackView$LayoutParams;
    :cond_4
    if-eqz v3, :cond_5

    #@47
    .line 553
    const/4 v6, 0x2

    #@48
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->save(I)I

    #@4b
    .line 554
    iget-object v6, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    #@4d
    sget-object v7, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    #@4f
    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    #@52
    .line 555
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    #@55
    .line 556
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@58
    .line 532
    :goto_2
    return-void

    #@59
    .line 558
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    #@5c
    goto :goto_2
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1228
    const-class v0, Landroid/widget/StackView;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getFrameForChild()Landroid/widget/FrameLayout;
    .locals 5

    #@0
    .prologue
    .line 520
    new-instance v0, Landroid/widget/StackView$StackFrame;

    #@2
    iget-object v1, p0, Landroid/widget/StackView;->mContext:Landroid/content/Context;

    #@4
    invoke-direct {v0, v1}, Landroid/widget/StackView$StackFrame;-><init>(Landroid/content/Context;)V

    #@7
    .line 521
    .local v0, "fl":Landroid/widget/StackView$StackFrame;
    iget v1, p0, Landroid/widget/StackView;->mFramePadding:I

    #@9
    iget v2, p0, Landroid/widget/StackView;->mFramePadding:I

    #@b
    iget v3, p0, Landroid/widget/StackView;->mFramePadding:I

    #@d
    iget v4, p0, Landroid/widget/StackView;->mFramePadding:I

    #@f
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/StackView$StackFrame;->setPadding(IIII)V

    #@12
    .line 522
    return-object v0
.end method

.method hideTapFeedback(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 466
    iget-object v0, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    #@2
    const/4 v1, 0x4

    #@3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    #@6
    .line 467
    invoke-virtual {p0}, Landroid/widget/StackView;->invalidate()V

    #@9
    .line 465
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, 0x1

    #@3
    .line 585
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    #@6
    move-result v1

    #@7
    and-int/lit8 v1, v1, 0x2

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 586
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@e
    move-result v1

    #@f
    packed-switch v1, :pswitch_data_0

    #@12
    .line 599
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@15
    move-result v1

    #@16
    return v1

    #@17
    .line 588
    :pswitch_0
    const/16 v1, 0x9

    #@19
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    #@1c
    move-result v0

    #@1d
    .line 589
    .local v0, "vscroll":F
    cmpg-float v1, v0, v3

    #@1f
    if-gez v1, :cond_1

    #@21
    .line 590
    invoke-direct {p0, v4}, Landroid/widget/StackView;->pacedScroll(Z)V

    #@24
    .line 591
    return v2

    #@25
    .line 592
    :cond_1
    cmpl-float v1, v0, v3

    #@27
    if-lez v1, :cond_0

    #@29
    .line 593
    invoke-direct {p0, v2}, Landroid/widget/StackView;->pacedScroll(Z)V

    #@2c
    .line 594
    return v2

    #@2d
    .line 586
    nop

    #@2e
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1234
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@5
    .line 1235
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    #@8
    move-result v2

    #@9
    if-le v2, v0, :cond_2

    #@b
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    #@e
    .line 1236
    invoke-virtual {p0}, Landroid/widget/StackView;->isEnabled()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 1237
    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    #@17
    move-result v0

    #@18
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    #@1b
    move-result v1

    #@1c
    add-int/lit8 v1, v1, -0x1

    #@1e
    if-ge v0, v1, :cond_0

    #@20
    .line 1238
    const/16 v0, 0x1000

    #@22
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    #@25
    .line 1240
    :cond_0
    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    #@28
    move-result v0

    #@29
    if-lez v0, :cond_1

    #@2b
    .line 1241
    const/16 v0, 0x2000

    #@2d
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    #@30
    .line 1233
    :cond_1
    return-void

    #@31
    :cond_2
    move v0, v1

    #@32
    .line 1235
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 620
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@5
    move-result v0

    #@6
    .line 621
    .local v0, "action":I
    and-int/lit16 v5, v0, 0xff

    #@8
    packed-switch v5, :pswitch_data_0

    #@b
    .line 654
    :cond_0
    :goto_0
    :pswitch_0
    iget v5, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    #@d
    if-eqz v5, :cond_1

    #@f
    const/4 v4, 0x1

    #@10
    :cond_1
    return v4

    #@11
    .line 623
    :pswitch_1
    iget v5, p0, Landroid/widget/StackView;->mActivePointerId:I

    #@13
    if-ne v5, v6, :cond_0

    #@15
    .line 624
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@18
    move-result v5

    #@19
    iput v5, p0, Landroid/widget/StackView;->mInitialX:F

    #@1b
    .line 625
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@1e
    move-result v5

    #@1f
    iput v5, p0, Landroid/widget/StackView;->mInitialY:F

    #@21
    .line 626
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@24
    move-result v5

    #@25
    iput v5, p0, Landroid/widget/StackView;->mActivePointerId:I

    #@27
    goto :goto_0

    #@28
    .line 631
    :pswitch_2
    iget v5, p0, Landroid/widget/StackView;->mActivePointerId:I

    #@2a
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@2d
    move-result v3

    #@2e
    .line 632
    .local v3, "pointerIndex":I
    if-ne v3, v6, :cond_2

    #@30
    .line 634
    const-string/jumbo v5, "StackView"

    #@33
    const-string/jumbo v6, "Error: No data for our primary pointer."

    #@36
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 635
    return v4

    #@3a
    .line 637
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    #@3d
    move-result v2

    #@3e
    .line 638
    .local v2, "newY":F
    iget v5, p0, Landroid/widget/StackView;->mInitialY:F

    #@40
    sub-float v1, v2, v5

    #@42
    .line 640
    .local v1, "deltaY":F
    invoke-direct {p0, v1}, Landroid/widget/StackView;->beginGestureIfNeeded(F)V

    #@45
    goto :goto_0

    #@46
    .line 644
    .end local v1    # "deltaY":F
    .end local v2    # "newY":F
    .end local v3    # "pointerIndex":I
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/widget/StackView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    #@49
    goto :goto_0

    #@4a
    .line 649
    :pswitch_4
    iput v6, p0, Landroid/widget/StackView;->mActivePointerId:I

    #@4c
    .line 650
    iput v4, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    #@4e
    goto :goto_0

    #@4f
    .line 621
    nop

    #@50
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
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    .line 1099
    invoke-virtual {p0}, Landroid/widget/StackView;->checkForAndHandleDataChanged()V

    #@3
    .line 1101
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    #@6
    move-result v2

    #@7
    .line 1102
    .local v2, "childCount":I
    const/4 v4, 0x0

    #@8
    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    #@a
    .line 1103
    invoke-virtual {p0, v4}, Landroid/widget/StackView;->getChildAt(I)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    .line 1105
    .local v0, "child":Landroid/view/View;
    iget v6, p0, Landroid/widget/StackView;->mPaddingLeft:I

    #@10
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@13
    move-result v7

    #@14
    add-int v3, v6, v7

    #@16
    .line 1106
    .local v3, "childRight":I
    iget v6, p0, Landroid/widget/StackView;->mPaddingTop:I

    #@18
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    #@1b
    move-result v7

    #@1c
    add-int v1, v6, v7

    #@1e
    .line 1107
    .local v1, "childBottom":I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@21
    move-result-object v5

    #@22
    check-cast v5, Landroid/widget/StackView$LayoutParams;

    #@24
    .line 1109
    .local v5, "lp":Landroid/widget/StackView$LayoutParams;
    iget v6, p0, Landroid/widget/StackView;->mPaddingLeft:I

    #@26
    iget v7, v5, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    #@28
    add-int/2addr v6, v7

    #@29
    iget v7, p0, Landroid/widget/StackView;->mPaddingTop:I

    #@2b
    iget v8, v5, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    #@2d
    add-int/2addr v7, v8

    #@2e
    .line 1110
    iget v8, v5, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    #@30
    add-int/2addr v8, v3

    #@31
    iget v9, v5, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    #@33
    add-int/2addr v9, v1

    #@34
    .line 1109
    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    #@37
    .line 1102
    add-int/lit8 v4, v4, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 1113
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childBottom":I
    .end local v3    # "childRight":I
    .end local v5    # "lp":Landroid/widget/StackView$LayoutParams;
    :cond_0
    invoke-direct {p0}, Landroid/widget/StackView;->onLayout()V

    #@3d
    .line 1098
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    const/high16 v11, 0x1000000

    #@2
    const/4 v8, -0x1

    #@3
    const/high16 v10, -0x80000000

    #@5
    const v9, 0x40071c72

    #@8
    .line 1176
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@b
    move-result v6

    #@c
    .line 1177
    .local v6, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@f
    move-result v3

    #@10
    .line 1178
    .local v3, "heightSpecSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@13
    move-result v5

    #@14
    .line 1179
    .local v5, "widthSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@17
    move-result v2

    #@18
    .line 1181
    .local v2, "heightSpecMode":I
    iget v7, p0, Landroid/widget/StackView;->mReferenceChildWidth:I

    #@1a
    if-eq v7, v8, :cond_2

    #@1c
    iget v7, p0, Landroid/widget/StackView;->mReferenceChildHeight:I

    #@1e
    if-eq v7, v8, :cond_2

    #@20
    const/4 v0, 0x1

    #@21
    .line 1186
    .local v0, "haveChildRefSize":Z
    :goto_0
    if-nez v2, :cond_4

    #@23
    .line 1187
    if-eqz v0, :cond_3

    #@25
    .line 1188
    iget v7, p0, Landroid/widget/StackView;->mReferenceChildHeight:I

    #@27
    int-to-float v7, v7

    #@28
    mul-float/2addr v7, v9

    #@29
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    #@2c
    move-result v7

    #@2d
    .line 1189
    iget v8, p0, Landroid/widget/StackView;->mPaddingTop:I

    #@2f
    .line 1188
    add-int/2addr v7, v8

    #@30
    .line 1189
    iget v8, p0, Landroid/widget/StackView;->mPaddingBottom:I

    #@32
    .line 1188
    add-int v3, v7, v8

    #@34
    .line 1206
    :cond_0
    :goto_1
    if-nez v5, :cond_8

    #@36
    .line 1207
    if-eqz v0, :cond_7

    #@38
    .line 1208
    iget v7, p0, Landroid/widget/StackView;->mReferenceChildWidth:I

    #@3a
    int-to-float v7, v7

    #@3b
    mul-float/2addr v7, v9

    #@3c
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    #@3f
    move-result v7

    #@40
    .line 1209
    iget v8, p0, Landroid/widget/StackView;->mPaddingLeft:I

    #@42
    .line 1208
    add-int/2addr v7, v8

    #@43
    .line 1209
    iget v8, p0, Landroid/widget/StackView;->mPaddingRight:I

    #@45
    .line 1208
    add-int v6, v7, v8

    #@47
    .line 1222
    :cond_1
    :goto_2
    invoke-virtual {p0, v6, v3}, Landroid/widget/StackView;->setMeasuredDimension(II)V

    #@4a
    .line 1223
    invoke-direct {p0}, Landroid/widget/StackView;->measureChildren()V

    #@4d
    .line 1175
    return-void

    #@4e
    .line 1181
    .end local v0    # "haveChildRefSize":Z
    :cond_2
    const/4 v0, 0x0

    #@4f
    .restart local v0    # "haveChildRefSize":Z
    goto :goto_0

    #@50
    .line 1189
    :cond_3
    const/4 v3, 0x0

    #@51
    goto :goto_1

    #@52
    .line 1190
    :cond_4
    if-ne v2, v10, :cond_0

    #@54
    .line 1191
    if-eqz v0, :cond_6

    #@56
    .line 1192
    iget v7, p0, Landroid/widget/StackView;->mReferenceChildHeight:I

    #@58
    int-to-float v7, v7

    #@59
    mul-float/2addr v7, v9

    #@5a
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    #@5d
    move-result v7

    #@5e
    .line 1193
    iget v8, p0, Landroid/widget/StackView;->mPaddingTop:I

    #@60
    .line 1192
    add-int/2addr v7, v8

    #@61
    .line 1193
    iget v8, p0, Landroid/widget/StackView;->mPaddingBottom:I

    #@63
    .line 1192
    add-int v1, v7, v8

    #@65
    .line 1194
    .local v1, "height":I
    if-gt v1, v3, :cond_5

    #@67
    .line 1195
    move v3, v1

    #@68
    goto :goto_1

    #@69
    .line 1197
    :cond_5
    or-int/2addr v3, v11

    #@6a
    goto :goto_1

    #@6b
    .line 1201
    .end local v1    # "height":I
    :cond_6
    const/4 v3, 0x0

    #@6c
    goto :goto_1

    #@6d
    .line 1209
    :cond_7
    const/4 v6, 0x0

    #@6e
    goto :goto_2

    #@6f
    .line 1210
    :cond_8
    if-ne v2, v10, :cond_1

    #@71
    .line 1211
    if-eqz v0, :cond_a

    #@73
    .line 1212
    iget v7, p0, Landroid/widget/StackView;->mReferenceChildWidth:I

    #@75
    iget v8, p0, Landroid/widget/StackView;->mPaddingLeft:I

    #@77
    add-int/2addr v7, v8

    #@78
    iget v8, p0, Landroid/widget/StackView;->mPaddingRight:I

    #@7a
    add-int v4, v7, v8

    #@7c
    .line 1213
    .local v4, "width":I
    if-gt v4, v6, :cond_9

    #@7e
    .line 1214
    move v6, v4

    #@7f
    goto :goto_2

    #@80
    .line 1216
    :cond_9
    or-int/2addr v6, v11

    #@81
    goto :goto_2

    #@82
    .line 1219
    .end local v4    # "width":I
    :cond_a
    const/4 v6, 0x0

    #@83
    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    const/4 v9, -0x1

    #@2
    const/4 v11, 0x1

    #@3
    const/high16 v10, 0x3f800000    # 1.0f

    #@5
    .line 710
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@8
    .line 712
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@b
    move-result v0

    #@c
    .line 713
    .local v0, "action":I
    iget v8, p0, Landroid/widget/StackView;->mActivePointerId:I

    #@e
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@11
    move-result v5

    #@12
    .line 714
    .local v5, "pointerIndex":I
    if-ne v5, v9, :cond_0

    #@14
    .line 716
    const-string/jumbo v8, "StackView"

    #@17
    const-string/jumbo v9, "Error: No data for our primary pointer."

    #@1a
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 717
    return v12

    #@1e
    .line 720
    :cond_0
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    #@21
    move-result v4

    #@22
    .line 721
    .local v4, "newY":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    #@25
    move-result v3

    #@26
    .line 722
    .local v3, "newX":F
    iget v8, p0, Landroid/widget/StackView;->mInitialY:F

    #@28
    sub-float v2, v4, v8

    #@2a
    .line 723
    .local v2, "deltaY":F
    iget v8, p0, Landroid/widget/StackView;->mInitialX:F

    #@2c
    sub-float v1, v3, v8

    #@2e
    .line 724
    .local v1, "deltaX":F
    iget-object v8, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@30
    if-nez v8, :cond_1

    #@32
    .line 725
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@35
    move-result-object v8

    #@36
    iput-object v8, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@38
    .line 727
    :cond_1
    iget-object v8, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@3a
    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@3d
    .line 729
    and-int/lit16 v8, v0, 0xff

    #@3f
    packed-switch v8, :pswitch_data_0

    #@42
    .line 763
    :cond_2
    :goto_0
    :pswitch_0
    return v11

    #@43
    .line 731
    :pswitch_1
    invoke-direct {p0, v2}, Landroid/widget/StackView;->beginGestureIfNeeded(F)V

    #@46
    .line 733
    iget v8, p0, Landroid/widget/StackView;->mSlideAmount:I

    #@48
    int-to-float v8, v8

    #@49
    mul-float/2addr v8, v10

    #@4a
    div-float v7, v1, v8

    #@4c
    .line 734
    .local v7, "rx":F
    iget v8, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    #@4e
    const/4 v9, 0x2

    #@4f
    if-ne v8, v9, :cond_4

    #@51
    .line 735
    iget v8, p0, Landroid/widget/StackView;->mTouchSlop:I

    #@53
    int-to-float v8, v8

    #@54
    mul-float/2addr v8, v10

    #@55
    sub-float v8, v2, v8

    #@57
    iget v9, p0, Landroid/widget/StackView;->mSlideAmount:I

    #@59
    int-to-float v9, v9

    #@5a
    div-float/2addr v8, v9

    #@5b
    mul-float v6, v8, v10

    #@5d
    .line 736
    .local v6, "r":F
    iget v8, p0, Landroid/widget/StackView;->mStackMode:I

    #@5f
    if-ne v8, v11, :cond_3

    #@61
    sub-float v6, v10, v6

    #@63
    .line 737
    :cond_3
    iget-object v8, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    #@65
    sub-float v9, v10, v6

    #@67
    invoke-virtual {v8, v9}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    #@6a
    .line 738
    iget-object v8, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    #@6c
    invoke-virtual {v8, v7}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    #@6f
    .line 739
    return v11

    #@70
    .line 740
    .end local v6    # "r":F
    :cond_4
    iget v8, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    #@72
    if-ne v8, v11, :cond_2

    #@74
    .line 741
    iget v8, p0, Landroid/widget/StackView;->mTouchSlop:I

    #@76
    int-to-float v8, v8

    #@77
    mul-float/2addr v8, v10

    #@78
    add-float/2addr v8, v2

    #@79
    neg-float v8, v8

    #@7a
    iget v9, p0, Landroid/widget/StackView;->mSlideAmount:I

    #@7c
    int-to-float v9, v9

    #@7d
    div-float/2addr v8, v9

    #@7e
    mul-float v6, v8, v10

    #@80
    .line 742
    .restart local v6    # "r":F
    iget v8, p0, Landroid/widget/StackView;->mStackMode:I

    #@82
    if-ne v8, v11, :cond_5

    #@84
    sub-float v6, v10, v6

    #@86
    .line 743
    :cond_5
    iget-object v8, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    #@88
    invoke-virtual {v8, v6}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    #@8b
    .line 744
    iget-object v8, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    #@8d
    invoke-virtual {v8, v7}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    #@90
    .line 745
    return v11

    #@91
    .line 750
    .end local v6    # "r":F
    .end local v7    # "rx":F
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/widget/StackView;->handlePointerUp(Landroid/view/MotionEvent;)V

    #@94
    goto :goto_0

    #@95
    .line 754
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/widget/StackView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    #@98
    goto :goto_0

    #@99
    .line 758
    :pswitch_4
    iput v9, p0, Landroid/widget/StackView;->mActivePointerId:I

    #@9b
    .line 759
    iput v12, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    #@9d
    goto :goto_0

    #@9e
    .line 729
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1249
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterViewAnimator;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1250
    return v3

    #@9
    .line 1252
    :cond_0
    invoke-virtual {p0}, Landroid/widget/StackView;->isEnabled()Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_1

    #@f
    .line 1253
    return v2

    #@10
    .line 1255
    :cond_1
    sparse-switch p1, :sswitch_data_0

    #@13
    .line 1269
    return v2

    #@14
    .line 1257
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    #@17
    move-result v0

    #@18
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    #@1b
    move-result v1

    #@1c
    add-int/lit8 v1, v1, -0x1

    #@1e
    if-ge v0, v1, :cond_2

    #@20
    .line 1258
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    #@23
    .line 1259
    return v3

    #@24
    .line 1261
    :cond_2
    return v2

    #@25
    .line 1263
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    #@28
    move-result v0

    #@29
    if-lez v0, :cond_3

    #@2b
    .line 1264
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    #@2e
    .line 1265
    return v3

    #@2f
    .line 1267
    :cond_3
    return v2

    #@30
    .line 1255
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public showNext()V
    .locals 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 393
    iget v1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    #@4
    if-eqz v1, :cond_0

    #@6
    return-void

    #@7
    .line 394
    :cond_0
    iget-boolean v1, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    #@9
    if-nez v1, :cond_1

    #@b
    .line 395
    const/4 v1, 0x1

    #@c
    invoke-virtual {p0, v1}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    #@f
    move-result-object v0

    #@10
    .line 396
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    #@12
    .line 397
    invoke-direct {p0, v0, v3}, Landroid/widget/StackView;->setupStackSlider(Landroid/view/View;I)V

    #@15
    .line 398
    iget-object v1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    #@17
    invoke-virtual {v1, v2}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    #@1a
    .line 399
    iget-object v1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    #@1c
    invoke-virtual {v1, v2}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    #@1f
    .line 402
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showNext()V

    #@22
    .line 392
    return-void
.end method

.method showOnly(IZ)V
    .locals 7
    .param p1, "childIndex"    # I
    .param p2, "animate"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 425
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    #@4
    .line 428
    iget v0, p0, Landroid/widget/StackView;->mCurrentWindowEnd:I

    #@6
    .local v0, "i":I
    :goto_0
    iget v4, p0, Landroid/widget/StackView;->mCurrentWindowStart:I

    #@8
    if-lt v0, v4, :cond_1

    #@a
    .line 429
    invoke-virtual {p0}, Landroid/widget/StackView;->getWindowSize()I

    #@d
    move-result v4

    #@e
    invoke-virtual {p0, v0, v4}, Landroid/widget/StackView;->modulo(II)I

    #@11
    move-result v1

    #@12
    .line 430
    .local v1, "index":I
    iget-object v4, p0, Landroid/widget/StackView;->mViewsMap:Ljava/util/HashMap;

    #@14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    #@1e
    .line 431
    .local v3, "vm":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    if-eqz v3, :cond_0

    #@20
    .line 432
    iget-object v4, p0, Landroid/widget/StackView;->mViewsMap:Ljava/util/HashMap;

    #@22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v5

    #@26
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    move-result-object v4

    #@2a
    check-cast v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    #@2c
    iget-object v2, v4, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    #@2e
    .line 433
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    #@30
    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    #@33
    .line 428
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@35
    goto :goto_0

    #@36
    .line 436
    .end local v1    # "index":I
    .end local v3    # "vm":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    :cond_1
    iget-object v4, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    #@38
    if-eqz v4, :cond_2

    #@3a
    .line 437
    iget-object v4, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    #@3c
    invoke-virtual {v4}, Landroid/widget/ImageView;->bringToFront()V

    #@3f
    .line 439
    :cond_2
    iput-boolean v6, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    #@41
    .line 440
    iput-boolean v6, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    #@43
    .line 424
    return-void
.end method

.method public showPrevious()V
    .locals 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 411
    iget v1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    #@3
    if-eqz v1, :cond_0

    #@5
    return-void

    #@6
    .line 412
    :cond_0
    iget-boolean v1, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    #@8
    if-nez v1, :cond_1

    #@a
    .line 413
    invoke-virtual {p0, v2}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    .line 414
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    #@10
    .line 415
    invoke-direct {p0, v0, v2}, Landroid/widget/StackView;->setupStackSlider(Landroid/view/View;I)V

    #@13
    .line 416
    iget-object v1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    #@15
    const/high16 v2, 0x3f800000    # 1.0f

    #@17
    invoke-virtual {v1, v2}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    #@1a
    .line 417
    iget-object v1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    #@1c
    const/4 v2, 0x0

    #@1d
    invoke-virtual {v1, v2}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    #@20
    .line 420
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showPrevious()V

    #@23
    .line 410
    return-void
.end method

.method showTapFeedback(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 458
    invoke-virtual {p0}, Landroid/widget/StackView;->updateClickFeedback()V

    #@3
    .line 459
    iget-object v0, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    #@9
    .line 460
    iget-object v0, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    #@b
    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    #@e
    .line 461
    invoke-virtual {p0}, Landroid/widget/StackView;->invalidate()V

    #@11
    .line 457
    return-void
.end method

.method transformViewForTransition(IILandroid/view/View;Z)V
    .locals 17
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "view"    # Landroid/view/View;
    .param p4, "animate"    # Z

    #@0
    .prologue
    .line 233
    if-nez p4, :cond_0

    #@2
    move-object/from16 v13, p3

    #@4
    .line 234
    check-cast v13, Landroid/widget/StackView$StackFrame;

    #@6
    invoke-virtual {v13}, Landroid/widget/StackView$StackFrame;->cancelSliderAnimator()Z

    #@9
    .line 235
    const/4 v13, 0x0

    #@a
    move-object/from16 v0, p3

    #@c
    invoke-virtual {v0, v13}, Landroid/view/View;->setRotationX(F)V

    #@f
    .line 236
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@12
    move-result-object v6

    #@13
    check-cast v6, Landroid/widget/StackView$LayoutParams;

    #@15
    .line 237
    .local v6, "lp":Landroid/widget/StackView$LayoutParams;
    const/4 v13, 0x0

    #@16
    invoke-virtual {v6, v13}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    #@19
    .line 238
    const/4 v13, 0x0

    #@1a
    invoke-virtual {v6, v13}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    #@1d
    .line 241
    .end local v6    # "lp":Landroid/widget/StackView$LayoutParams;
    :cond_0
    const/4 v13, -0x1

    #@1e
    move/from16 v0, p1

    #@20
    if-ne v0, v13, :cond_3

    #@22
    invoke-virtual/range {p0 .. p0}, Landroid/widget/StackView;->getNumActiveViews()I

    #@25
    move-result v13

    #@26
    add-int/lit8 v13, v13, -0x1

    #@28
    move/from16 v0, p2

    #@2a
    if-ne v0, v13, :cond_3

    #@2c
    .line 242
    const/4 v13, 0x0

    #@2d
    move-object/from16 v0, p0

    #@2f
    move/from16 v1, p2

    #@31
    move-object/from16 v2, p3

    #@33
    invoke-direct {v0, v1, v2, v13}, Landroid/widget/StackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    #@36
    .line 243
    const/4 v13, 0x0

    #@37
    move-object/from16 v0, p3

    #@39
    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    #@3c
    .line 244
    const/high16 v13, 0x3f800000    # 1.0f

    #@3e
    move-object/from16 v0, p3

    #@40
    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    #@43
    .line 314
    :cond_1
    :goto_0
    const/4 v13, -0x1

    #@44
    move/from16 v0, p2

    #@46
    if-eq v0, v13, :cond_2

    #@48
    .line 315
    move-object/from16 v0, p0

    #@4a
    move/from16 v1, p2

    #@4c
    move-object/from16 v2, p3

    #@4e
    move/from16 v3, p4

    #@50
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/StackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    #@53
    .line 232
    :cond_2
    return-void

    #@54
    .line 245
    :cond_3
    if-nez p1, :cond_5

    #@56
    const/4 v13, 0x1

    #@57
    move/from16 v0, p2

    #@59
    if-ne v0, v13, :cond_5

    #@5b
    move-object/from16 v13, p3

    #@5d
    .line 247
    check-cast v13, Landroid/widget/StackView$StackFrame;

    #@5f
    invoke-virtual {v13}, Landroid/widget/StackView$StackFrame;->cancelSliderAnimator()Z

    #@62
    .line 248
    const/4 v13, 0x0

    #@63
    move-object/from16 v0, p3

    #@65
    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    #@68
    .line 250
    move-object/from16 v0, p0

    #@6a
    iget-object v13, v0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    #@6c
    move-object/from16 v0, p0

    #@6e
    iget v14, v0, Landroid/widget/StackView;->mYVelocity:I

    #@70
    int-to-float v14, v14

    #@71
    invoke-virtual {v13, v14}, Landroid/widget/StackView$StackSlider;->getDurationForNeutralPosition(F)F

    #@74
    move-result v13

    #@75
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    #@78
    move-result v5

    #@79
    .line 251
    .local v5, "duration":I
    new-instance v4, Landroid/widget/StackView$StackSlider;

    #@7b
    move-object/from16 v0, p0

    #@7d
    iget-object v13, v0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    #@7f
    move-object/from16 v0, p0

    #@81
    invoke-direct {v4, v0, v13}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    #@84
    .line 252
    .local v4, "animationSlider":Landroid/widget/StackView$StackSlider;
    move-object/from16 v0, p3

    #@86
    invoke-virtual {v4, v0}, Landroid/widget/StackView$StackSlider;->setView(Landroid/view/View;)V

    #@89
    .line 254
    if-eqz p4, :cond_4

    #@8b
    .line 255
    const-string/jumbo v13, "YProgress"

    #@8e
    const/4 v14, 0x1

    #@8f
    new-array v14, v14, [F

    #@91
    const/4 v15, 0x0

    #@92
    const/16 v16, 0x0

    #@94
    aput v15, v14, v16

    #@96
    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    #@99
    move-result-object v9

    #@9a
    .line 256
    .local v9, "slideInY":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v13, "XProgress"

    #@9d
    const/4 v14, 0x1

    #@9e
    new-array v14, v14, [F

    #@a0
    const/4 v15, 0x0

    #@a1
    const/16 v16, 0x0

    #@a3
    aput v15, v14, v16

    #@a5
    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    #@a8
    move-result-object v8

    #@a9
    .line 257
    .local v8, "slideInX":Landroid/animation/PropertyValuesHolder;
    const/4 v13, 0x2

    #@aa
    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    #@ac
    .line 258
    const/4 v14, 0x0

    #@ad
    aput-object v8, v13, v14

    #@af
    const/4 v14, 0x1

    #@b0
    aput-object v9, v13, v14

    #@b2
    .line 257
    invoke-static {v4, v13}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@b5
    move-result-object v7

    #@b6
    .line 259
    .local v7, "slideIn":Landroid/animation/ObjectAnimator;
    int-to-long v14, v5

    #@b7
    invoke-virtual {v7, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@ba
    .line 260
    new-instance v13, Landroid/view/animation/LinearInterpolator;

    #@bc
    invoke-direct {v13}, Landroid/view/animation/LinearInterpolator;-><init>()V

    #@bf
    invoke-virtual {v7, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@c2
    move-object/from16 v13, p3

    #@c4
    .line 261
    check-cast v13, Landroid/widget/StackView$StackFrame;

    #@c6
    invoke-virtual {v13, v7}, Landroid/widget/StackView$StackFrame;->setSliderAnimator(Landroid/animation/ObjectAnimator;)V

    #@c9
    .line 262
    invoke-virtual {v7}, Landroid/animation/ObjectAnimator;->start()V

    #@cc
    goto/16 :goto_0

    #@ce
    .line 264
    .end local v7    # "slideIn":Landroid/animation/ObjectAnimator;
    .end local v8    # "slideInX":Landroid/animation/PropertyValuesHolder;
    .end local v9    # "slideInY":Landroid/animation/PropertyValuesHolder;
    :cond_4
    const/4 v13, 0x0

    #@cf
    invoke-virtual {v4, v13}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    #@d2
    .line 265
    const/4 v13, 0x0

    #@d3
    invoke-virtual {v4, v13}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    #@d6
    goto/16 :goto_0

    #@d8
    .line 267
    .end local v4    # "animationSlider":Landroid/widget/StackView$StackSlider;
    .end local v5    # "duration":I
    :cond_5
    const/4 v13, 0x1

    #@d9
    move/from16 v0, p1

    #@db
    if-ne v0, v13, :cond_7

    #@dd
    if-nez p2, :cond_7

    #@df
    move-object/from16 v13, p3

    #@e1
    .line 269
    check-cast v13, Landroid/widget/StackView$StackFrame;

    #@e3
    invoke-virtual {v13}, Landroid/widget/StackView$StackFrame;->cancelSliderAnimator()Z

    #@e6
    .line 270
    move-object/from16 v0, p0

    #@e8
    iget-object v13, v0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    #@ea
    move-object/from16 v0, p0

    #@ec
    iget v14, v0, Landroid/widget/StackView;->mYVelocity:I

    #@ee
    int-to-float v14, v14

    #@ef
    invoke-virtual {v13, v14}, Landroid/widget/StackView$StackSlider;->getDurationForOffscreenPosition(F)F

    #@f2
    move-result v13

    #@f3
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    #@f6
    move-result v5

    #@f7
    .line 272
    .restart local v5    # "duration":I
    new-instance v4, Landroid/widget/StackView$StackSlider;

    #@f9
    move-object/from16 v0, p0

    #@fb
    iget-object v13, v0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    #@fd
    move-object/from16 v0, p0

    #@ff
    invoke-direct {v4, v0, v13}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    #@102
    .line 273
    .restart local v4    # "animationSlider":Landroid/widget/StackView$StackSlider;
    move-object/from16 v0, p3

    #@104
    invoke-virtual {v4, v0}, Landroid/widget/StackView$StackSlider;->setView(Landroid/view/View;)V

    #@107
    .line 274
    if-eqz p4, :cond_6

    #@109
    .line 275
    const-string/jumbo v13, "YProgress"

    #@10c
    const/4 v14, 0x1

    #@10d
    new-array v14, v14, [F

    #@10f
    const/high16 v15, 0x3f800000    # 1.0f

    #@111
    const/16 v16, 0x0

    #@113
    aput v15, v14, v16

    #@115
    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    #@118
    move-result-object v12

    #@119
    .line 276
    .local v12, "slideOutY":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v13, "XProgress"

    #@11c
    const/4 v14, 0x1

    #@11d
    new-array v14, v14, [F

    #@11f
    const/4 v15, 0x0

    #@120
    const/16 v16, 0x0

    #@122
    aput v15, v14, v16

    #@124
    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    #@127
    move-result-object v11

    #@128
    .line 277
    .local v11, "slideOutX":Landroid/animation/PropertyValuesHolder;
    const/4 v13, 0x2

    #@129
    new-array v13, v13, [Landroid/animation/PropertyValuesHolder;

    #@12b
    .line 278
    const/4 v14, 0x0

    #@12c
    aput-object v11, v13, v14

    #@12e
    const/4 v14, 0x1

    #@12f
    aput-object v12, v13, v14

    #@131
    .line 277
    invoke-static {v4, v13}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    #@134
    move-result-object v10

    #@135
    .line 279
    .local v10, "slideOut":Landroid/animation/ObjectAnimator;
    int-to-long v14, v5

    #@136
    invoke-virtual {v10, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@139
    .line 280
    new-instance v13, Landroid/view/animation/LinearInterpolator;

    #@13b
    invoke-direct {v13}, Landroid/view/animation/LinearInterpolator;-><init>()V

    #@13e
    invoke-virtual {v10, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@141
    move-object/from16 v13, p3

    #@143
    .line 281
    check-cast v13, Landroid/widget/StackView$StackFrame;

    #@145
    invoke-virtual {v13, v10}, Landroid/widget/StackView$StackFrame;->setSliderAnimator(Landroid/animation/ObjectAnimator;)V

    #@148
    .line 282
    invoke-virtual {v10}, Landroid/animation/ObjectAnimator;->start()V

    #@14b
    goto/16 :goto_0

    #@14d
    .line 284
    .end local v10    # "slideOut":Landroid/animation/ObjectAnimator;
    .end local v11    # "slideOutX":Landroid/animation/PropertyValuesHolder;
    .end local v12    # "slideOutY":Landroid/animation/PropertyValuesHolder;
    :cond_6
    const/high16 v13, 0x3f800000    # 1.0f

    #@14f
    invoke-virtual {v4, v13}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    #@152
    .line 285
    const/4 v13, 0x0

    #@153
    invoke-virtual {v4, v13}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    #@156
    goto/16 :goto_0

    #@158
    .line 287
    .end local v4    # "animationSlider":Landroid/widget/StackView$StackSlider;
    .end local v5    # "duration":I
    :cond_7
    if-nez p2, :cond_8

    #@15a
    .line 289
    const/4 v13, 0x0

    #@15b
    move-object/from16 v0, p3

    #@15d
    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    #@160
    .line 290
    const/4 v13, 0x4

    #@161
    move-object/from16 v0, p3

    #@163
    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    #@166
    goto/16 :goto_0

    #@168
    .line 291
    :cond_8
    if-eqz p1, :cond_9

    #@16a
    const/4 v13, 0x1

    #@16b
    move/from16 v0, p1

    #@16d
    if-ne v0, v13, :cond_a

    #@16f
    :cond_9
    const/4 v13, 0x1

    #@170
    move/from16 v0, p2

    #@172
    if-le v0, v13, :cond_a

    #@174
    .line 292
    const/4 v13, 0x0

    #@175
    move-object/from16 v0, p3

    #@177
    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    #@17a
    .line 293
    const/high16 v13, 0x3f800000    # 1.0f

    #@17c
    move-object/from16 v0, p3

    #@17e
    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    #@181
    .line 294
    const/4 v13, 0x0

    #@182
    move-object/from16 v0, p3

    #@184
    invoke-virtual {v0, v13}, Landroid/view/View;->setRotationX(F)V

    #@187
    .line 295
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@18a
    move-result-object v6

    #@18b
    check-cast v6, Landroid/widget/StackView$LayoutParams;

    #@18d
    .line 296
    .restart local v6    # "lp":Landroid/widget/StackView$LayoutParams;
    const/4 v13, 0x0

    #@18e
    invoke-virtual {v6, v13}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    #@191
    .line 297
    const/4 v13, 0x0

    #@192
    invoke-virtual {v6, v13}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    #@195
    goto/16 :goto_0

    #@197
    .line 298
    .end local v6    # "lp":Landroid/widget/StackView$LayoutParams;
    :cond_a
    const/4 v13, -0x1

    #@198
    move/from16 v0, p1

    #@19a
    if-ne v0, v13, :cond_b

    #@19c
    .line 299
    const/high16 v13, 0x3f800000    # 1.0f

    #@19e
    move-object/from16 v0, p3

    #@1a0
    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    #@1a3
    .line 300
    const/4 v13, 0x0

    #@1a4
    move-object/from16 v0, p3

    #@1a6
    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    #@1a9
    goto/16 :goto_0

    #@1ab
    .line 301
    :cond_b
    const/4 v13, -0x1

    #@1ac
    move/from16 v0, p2

    #@1ae
    if-ne v0, v13, :cond_1

    #@1b0
    .line 302
    if-eqz p4, :cond_c

    #@1b2
    .line 303
    new-instance v13, Landroid/widget/StackView$1;

    #@1b4
    move-object/from16 v0, p0

    #@1b6
    move-object/from16 v1, p3

    #@1b8
    invoke-direct {v13, v0, v1}, Landroid/widget/StackView$1;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    #@1bb
    .line 307
    const-wide/16 v14, 0x64

    #@1bd
    .line 303
    move-object/from16 v0, p0

    #@1bf
    invoke-virtual {v0, v13, v14, v15}, Landroid/widget/StackView;->postDelayed(Ljava/lang/Runnable;J)Z

    #@1c2
    goto/16 :goto_0

    #@1c4
    .line 309
    :cond_c
    const/4 v13, 0x0

    #@1c5
    move-object/from16 v0, p3

    #@1c7
    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    #@1ca
    goto/16 :goto_0
.end method

.method updateClickFeedback()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 444
    iget-boolean v1, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    #@3
    if-nez v1, :cond_1

    #@5
    .line 445
    invoke-virtual {p0, v4}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    #@8
    move-result-object v0

    #@9
    .line 446
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    #@b
    .line 447
    iget-object v1, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    #@d
    .line 448
    sget-object v2, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    #@f
    iget v3, p0, Landroid/widget/StackView;->mClickColor:I

    #@11
    invoke-virtual {v2, v0, v3}, Landroid/widget/StackView$HolographicHelper;->createClickOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;

    #@14
    move-result-object v2

    #@15
    .line 447
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    #@18
    .line 449
    iget-object v1, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    #@1a
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    #@1d
    move-result v2

    #@1e
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    #@21
    .line 450
    iget-object v1, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    #@23
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    #@26
    move-result v2

    #@27
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    #@2a
    .line 452
    :cond_0
    iput-boolean v4, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    #@2c
    .line 443
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method
