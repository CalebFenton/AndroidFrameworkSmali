.class public Landroid/widget/StackView;
.super Landroid/widget/AdapterViewAnimator;
.source "StackView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/StackView$LayoutParams;,
        Landroid/widget/StackView$StackSlider;,
        Landroid/widget/StackView$HolographicHelper;,
        Landroid/widget/StackView$StackFrame;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_ANIMATION_DURATION:I = 0x190

.field private static final greylist-max-o FRAME_PADDING:I = 0x4

.field private static final greylist-max-o GESTURE_NONE:I = 0x0

.field private static final greylist-max-o GESTURE_SLIDE_DOWN:I = 0x2

.field private static final greylist-max-o GESTURE_SLIDE_UP:I = 0x1

.field private static final greylist-max-o INVALID_POINTER:I = -0x1

.field private static final greylist-max-o ITEMS_SLIDE_DOWN:I = 0x1

.field private static final greylist-max-o ITEMS_SLIDE_UP:I = 0x0

.field private static final greylist-max-o MINIMUM_ANIMATION_DURATION:I = 0x32

.field private static final greylist-max-o MIN_TIME_BETWEEN_INTERACTION_AND_AUTOADVANCE:I = 0x1388

.field private static final greylist-max-o MIN_TIME_BETWEEN_SCROLLS:J = 0x64L

.field private static final greylist-max-o NUM_ACTIVE_VIEWS:I = 0x5

.field private static final greylist-max-o PERSPECTIVE_SCALE_FACTOR:F = 0.0f

.field private static final greylist-max-o PERSPECTIVE_SHIFT_FACTOR_X:F = 0.1f

.field private static final greylist-max-o PERSPECTIVE_SHIFT_FACTOR_Y:F = 0.1f

.field private static final greylist-max-o SLIDE_UP_RATIO:F = 0.7f

.field private static final greylist-max-o STACK_RELAYOUT_DURATION:I = 0x64

.field private static final greylist-max-o SWIPE_THRESHOLD_RATIO:F = 0.2f

.field private static greylist-max-o sHolographicHelper:Landroid/widget/StackView$HolographicHelper;


# instance fields
.field private final greylist-max-o TAG:Ljava/lang/String;

.field private greylist-max-o mActivePointerId:I

.field private greylist-max-o mClickColor:I

.field private greylist-max-o mClickFeedback:Landroid/widget/ImageView;

.field private greylist-max-o mClickFeedbackIsValid:Z

.field private greylist-max-o mFirstLayoutHappened:Z

.field private greylist-max-o mFramePadding:I

.field private greylist-max-o mHighlight:Landroid/widget/ImageView;

.field private greylist-max-o mInitialX:F

.field private greylist-max-o mInitialY:F

.field private greylist-max-o mLastInteractionTime:J

.field private greylist-max-o mLastScrollTime:J

.field private greylist-max-o mMaximumVelocity:I

.field private greylist-max-o mNewPerspectiveShiftX:F

.field private greylist-max-o mNewPerspectiveShiftY:F

.field private greylist-max-o mPerspectiveShiftX:F

.field private greylist-max-o mPerspectiveShiftY:F

.field private greylist-max-o mResOutColor:I

.field private greylist-max-o mSlideAmount:I

.field private greylist-max-o mStackMode:I

.field private greylist-max-o mStackSlider:Landroid/widget/StackView$StackSlider;

.field private greylist-max-o mSwipeGestureType:I

.field private greylist-max-o mSwipeThreshold:I

.field private final greylist-max-o mTouchRect:Landroid/graphics/Rect;

.field private greylist-max-o mTouchSlop:I

.field private greylist-max-o mTransitionIsSetup:Z

.field private greylist-max-o mVelocityTracker:Landroid/view/VelocityTracker;

.field private greylist-max-o mYVelocity:I

.field private final greylist-max-o stackInvalidateRect:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHighlight(Landroid/widget/StackView;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSlideAmount(Landroid/widget/StackView;)I
    .registers 1

    iget p0, p0, Landroid/widget/StackView;->mSlideAmount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStackMode(Landroid/widget/StackView;)I
    .registers 1

    iget p0, p0, Landroid/widget/StackView;->mStackMode:I

    return p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/StackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 158
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 164
    const v0, 0x101043e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/StackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 165
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/StackView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 172
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 178
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 55
    const-string v0, "StackView"

    iput-object v0, p0, Landroid/widget/StackView;->TAG:Ljava/lang/String;

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView;->mTouchRect:Landroid/graphics/Rect;

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/StackView;->mYVelocity:I

    .line 131
    iput v0, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 137
    iput-boolean v0, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    .line 144
    iput-boolean v0, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    .line 146
    iput-boolean v0, p0, Landroid/widget/StackView;->mFirstLayoutHappened:Z

    .line 147
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/widget/StackView;->mLastInteractionTime:J

    .line 151
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    .line 179
    sget-object v1, Lcom/android/internal/R$styleable;->StackView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 181
    .local v6, "a":Landroid/content/res/TypedArray;
    sget-object v4, Lcom/android/internal/R$styleable;->StackView:[I

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v7, p3

    move v8, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .local v3, "context":Landroid/content/Context;
    .local v5, "attrs":Landroid/util/AttributeSet;
    .local v7, "defStyleAttr":I
    .local v8, "defStyleRes":I
    invoke-virtual/range {v2 .. v8}, Landroid/widget/StackView;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 184
    const/4 p1, 0x1

    invoke-virtual {v6, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, v2, Landroid/widget/StackView;->mResOutColor:I

    .line 186
    invoke-virtual {v6, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, v2, Landroid/widget/StackView;->mClickColor:I

    .line 189
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 190
    invoke-direct {p0}, Landroid/widget/StackView;->initStackView()V

    .line 191
    return-void
.end method

.method private greylist-max-o beginGestureIfNeeded(F)V
    .registers 11
    .param p1, "deltaY"    # F

    .line 661
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Landroid/widget/StackView;->mTouchSlop:I

    if-le v0, v1, :cond_99

    iget v0, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-nez v0, :cond_99

    .line 662
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-gez v0, :cond_16

    move v0, v2

    goto :goto_17

    :cond_16
    move v0, v1

    .line 663
    .local v0, "swipeGestureType":I
    :goto_17
    invoke-virtual {p0}, Landroid/widget/StackView;->cancelLongPress()V

    .line 664
    invoke-virtual {p0, v2}, Landroid/widget/StackView;->requestDisallowInterceptTouchEvent(Z)V

    .line 666
    iget-object v3, p0, Landroid/widget/StackView;->mAdapter:Landroid/widget/Adapter;

    if-nez v3, :cond_22

    return-void

    .line 667
    :cond_22
    invoke-virtual {p0}, Landroid/widget/StackView;->getCount()I

    move-result v3

    .line 670
    .local v3, "adapterCount":I
    iget v4, p0, Landroid/widget/StackView;->mStackMode:I

    const/4 v5, 0x0

    if-nez v4, :cond_31

    .line 671
    if-ne v0, v1, :cond_2f

    move v4, v5

    goto :goto_30

    :cond_2f
    move v4, v2

    .local v4, "activeIndex":I
    :goto_30
    goto :goto_36

    .line 673
    .end local v4    # "activeIndex":I
    :cond_31
    if-ne v0, v1, :cond_35

    move v4, v2

    goto :goto_36

    :cond_35
    move v4, v5

    .line 676
    .restart local v4    # "activeIndex":I
    :goto_36
    iget-boolean v6, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-eqz v6, :cond_4a

    if-ne v3, v2, :cond_4a

    iget v6, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v6, :cond_42

    if-eq v0, v2, :cond_48

    :cond_42
    iget v6, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v6, v2, :cond_4a

    if-ne v0, v1, :cond_4a

    :cond_48
    move v6, v2

    goto :goto_4b

    :cond_4a
    move v6, v5

    .line 679
    .local v6, "endOfStack":Z
    :goto_4b
    iget-boolean v7, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-eqz v7, :cond_5f

    if-ne v3, v2, :cond_5f

    iget v7, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v7, v2, :cond_57

    if-eq v0, v2, :cond_5d

    :cond_57
    iget v7, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v7, :cond_5f

    if-ne v0, v1, :cond_5f

    :cond_5d
    move v1, v2

    goto :goto_60

    :cond_5f
    move v1, v5

    .line 684
    .local v1, "beginningOfStack":Z
    :goto_60
    iget-boolean v7, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-eqz v7, :cond_6a

    if-nez v1, :cond_6a

    if-nez v6, :cond_6a

    .line 685
    const/4 v7, 0x0

    .local v7, "stackMode":I
    goto :goto_84

    .line 686
    .end local v7    # "stackMode":I
    :cond_6a
    iget v7, p0, Landroid/widget/StackView;->mCurrentWindowStartUnbounded:I

    add-int/2addr v7, v4

    const/4 v8, -0x1

    if-eq v7, v8, :cond_81

    if-eqz v1, :cond_73

    goto :goto_81

    .line 689
    :cond_73
    iget v7, p0, Landroid/widget/StackView;->mCurrentWindowStartUnbounded:I

    add-int/2addr v7, v4

    add-int/lit8 v8, v3, -0x1

    if-eq v7, v8, :cond_7f

    if-eqz v6, :cond_7d

    goto :goto_7f

    .line 692
    :cond_7d
    const/4 v7, 0x0

    .restart local v7    # "stackMode":I
    goto :goto_84

    .line 690
    .end local v7    # "stackMode":I
    :cond_7f
    :goto_7f
    const/4 v7, 0x2

    .restart local v7    # "stackMode":I
    goto :goto_84

    .line 687
    .end local v7    # "stackMode":I
    :cond_81
    :goto_81
    add-int/lit8 v4, v4, 0x1

    .line 688
    const/4 v7, 0x1

    .line 695
    .restart local v7    # "stackMode":I
    :goto_84
    if-nez v7, :cond_87

    goto :goto_88

    :cond_87
    move v2, v5

    :goto_88
    iput-boolean v2, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    .line 697
    invoke-virtual {p0, v4}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v2

    .line 698
    .local v2, "v":Landroid/view/View;
    if-nez v2, :cond_91

    return-void

    .line 700
    :cond_91
    invoke-direct {p0, v2, v7}, Landroid/widget/StackView;->setupStackSlider(Landroid/view/View;I)V

    .line 703
    iput v0, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 704
    invoke-virtual {p0}, Landroid/widget/StackView;->cancelHandleClick()V

    .line 706
    .end local v0    # "swipeGestureType":I
    .end local v1    # "beginningOfStack":Z
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "adapterCount":I
    .end local v4    # "activeIndex":I
    .end local v6    # "endOfStack":Z
    .end local v7    # "stackMode":I
    :cond_99
    return-void
.end method

.method private blacklist goBackward()Z
    .registers 2

    .line 1273
    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    move-result v0

    if-lez v0, :cond_b

    .line 1274
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    .line 1275
    const/4 v0, 0x1

    return v0

    .line 1277
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist goForward()Z
    .registers 4

    .line 1265
    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_10

    .line 1266
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    .line 1267
    return v2

    .line 1269
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o handlePointerUp(Landroid/view/MotionEvent;)V
    .registers 16
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 814
    iget v0, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 815
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 816
    .local v1, "newY":F
    iget v2, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float v2, v1, v2

    float-to-int v2, v2

    .line 817
    .local v2, "deltaY":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/StackView;->mLastInteractionTime:J

    .line 819
    iget-object v3, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_2e

    .line 820
    iget-object v3, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Landroid/widget/StackView;->mMaximumVelocity:I

    int-to-float v4, v4

    const/16 v5, 0x3e8

    invoke-virtual {v3, v5, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 821
    iget-object v3, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/StackView;->mYVelocity:I

    .line 824
    :cond_2e
    iget-object v3, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_3a

    .line 825
    iget-object v3, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 826
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 829
    :cond_3a
    iget v3, p0, Landroid/widget/StackView;->mSwipeThreshold:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-le v2, v3, :cond_5e

    iget v3, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-ne v3, v4, :cond_5e

    iget-object v3, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v3, v3, Landroid/widget/StackView$StackSlider;->mMode:I

    if-nez v3, :cond_5e

    .line 833
    iput v5, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 836
    iget v3, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v3, :cond_54

    .line 837
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    goto :goto_57

    .line 839
    :cond_54
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    .line 841
    :goto_57
    iget-object v3, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->bringToFront()V

    goto/16 :goto_137

    .line 842
    :cond_5e
    iget v3, p0, Landroid/widget/StackView;->mSwipeThreshold:I

    neg-int v3, v3

    const/4 v6, 0x1

    if-ge v2, v3, :cond_82

    iget v3, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-ne v3, v6, :cond_82

    iget-object v3, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v3, v3, Landroid/widget/StackView$StackSlider;->mMode:I

    if-nez v3, :cond_82

    .line 846
    iput v5, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 849
    iget v3, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v3, :cond_78

    .line 850
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    goto :goto_7b

    .line 852
    :cond_78
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    .line 855
    :goto_7b
    iget-object v3, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->bringToFront()V

    goto/16 :goto_137

    .line 856
    :cond_82
    iget v3, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const-string v7, "XProgress"

    const-string v8, "YProgress"

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    if-ne v3, v6, :cond_e4

    .line 859
    iget v3, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v3, v6, :cond_92

    goto :goto_93

    :cond_92
    move v9, v10

    .line 860
    .local v9, "finalYProgress":F
    :goto_93
    iget v3, p0, Landroid/widget/StackView;->mStackMode:I

    if-eqz v3, :cond_a9

    iget-object v3, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v3, v3, Landroid/widget/StackView$StackSlider;->mMode:I

    if-eqz v3, :cond_9e

    goto :goto_a9

    .line 863
    :cond_9e
    iget-object v3, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v3}, Landroid/widget/StackView$StackSlider;->getDurationForOffscreenPosition()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .local v3, "duration":I
    goto :goto_b3

    .line 861
    .end local v3    # "duration":I
    :cond_a9
    :goto_a9
    iget-object v3, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v3}, Landroid/widget/StackView$StackSlider;->getDurationForNeutralPosition()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 866
    .restart local v3    # "duration":I
    :goto_b3
    new-instance v11, Landroid/widget/StackView$StackSlider;

    iget-object v12, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-direct {v11, p0, v12}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    .line 867
    .local v11, "animationSlider":Landroid/widget/StackView$StackSlider;
    new-array v12, v6, [F

    aput v9, v12, v5

    invoke-static {v8, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 868
    .local v8, "snapBackY":Landroid/animation/PropertyValuesHolder;
    new-array v12, v6, [F

    aput v10, v12, v5

    invoke-static {v7, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 869
    .local v7, "snapBackX":Landroid/animation/PropertyValuesHolder;
    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v7, v4, v5

    aput-object v8, v4, v6

    invoke-static {v11, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 871
    .local v4, "pa":Landroid/animation/ObjectAnimator;
    int-to-long v12, v3

    invoke-virtual {v4, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 872
    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 873
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .end local v3    # "duration":I
    .end local v4    # "pa":Landroid/animation/ObjectAnimator;
    .end local v7    # "snapBackX":Landroid/animation/PropertyValuesHolder;
    .end local v8    # "snapBackY":Landroid/animation/PropertyValuesHolder;
    .end local v9    # "finalYProgress":F
    .end local v11    # "animationSlider":Landroid/widget/StackView$StackSlider;
    goto :goto_136

    .line 874
    :cond_e4
    iget v3, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-ne v3, v4, :cond_136

    .line 876
    iget v3, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v3, v6, :cond_ed

    move v9, v10

    .line 878
    .restart local v9    # "finalYProgress":F
    :cond_ed
    iget v3, p0, Landroid/widget/StackView;->mStackMode:I

    if-eq v3, v6, :cond_103

    iget-object v3, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v3, v3, Landroid/widget/StackView$StackSlider;->mMode:I

    if-eqz v3, :cond_f8

    goto :goto_103

    .line 881
    :cond_f8
    iget-object v3, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v3}, Landroid/widget/StackView$StackSlider;->getDurationForOffscreenPosition()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .restart local v3    # "duration":I
    goto :goto_10d

    .line 879
    .end local v3    # "duration":I
    :cond_103
    :goto_103
    iget-object v3, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v3}, Landroid/widget/StackView$StackSlider;->getDurationForNeutralPosition()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 884
    .restart local v3    # "duration":I
    :goto_10d
    new-instance v11, Landroid/widget/StackView$StackSlider;

    iget-object v12, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-direct {v11, p0, v12}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    .line 885
    .restart local v11    # "animationSlider":Landroid/widget/StackView$StackSlider;
    new-array v12, v6, [F

    aput v9, v12, v5

    .line 886
    invoke-static {v8, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 887
    .restart local v8    # "snapBackY":Landroid/animation/PropertyValuesHolder;
    new-array v12, v6, [F

    aput v10, v12, v5

    invoke-static {v7, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 888
    .restart local v7    # "snapBackX":Landroid/animation/PropertyValuesHolder;
    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v7, v4, v5

    aput-object v8, v4, v6

    invoke-static {v11, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 890
    .restart local v4    # "pa":Landroid/animation/ObjectAnimator;
    int-to-long v12, v3

    invoke-virtual {v4, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 891
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_137

    .line 874
    .end local v3    # "duration":I
    .end local v4    # "pa":Landroid/animation/ObjectAnimator;
    .end local v7    # "snapBackX":Landroid/animation/PropertyValuesHolder;
    .end local v8    # "snapBackY":Landroid/animation/PropertyValuesHolder;
    .end local v9    # "finalYProgress":F
    .end local v11    # "animationSlider":Landroid/widget/StackView$StackSlider;
    :cond_136
    :goto_136
    nop

    .line 894
    :goto_137
    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 895
    iput v5, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 896
    return-void
.end method

.method private greylist-max-o initStackView()V
    .registers 7

    .line 194
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/StackView;->configureViewAnimator(II)V

    .line 195
    invoke-virtual {p0, v1}, Landroid/widget/StackView;->setStaticTransformationsEnabled(Z)V

    .line 196
    invoke-virtual {p0}, Landroid/widget/StackView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 197
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/widget/StackView;->mTouchSlop:I

    .line 198
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/widget/StackView;->mMaximumVelocity:I

    .line 199
    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 201
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/StackView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    .line 202
    iget-object v3, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/StackView$LayoutParams;

    iget-object v5, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-direct {v4, p0, v5}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    iget-object v3, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/StackView$LayoutParams;

    iget-object v5, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-direct {v4, p0, v5}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {p0, v3, v2, v4}, Landroid/widget/StackView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 205
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/StackView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    .line 206
    iget-object v3, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/StackView$LayoutParams;

    iget-object v5, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-direct {v4, p0, v5}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v3, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/StackView$LayoutParams;

    iget-object v5, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-direct {v4, p0, v5}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {p0, v3, v2, v4}, Landroid/widget/StackView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 208
    iget-object v3, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    new-instance v3, Landroid/widget/StackView$StackSlider;

    invoke-direct {v3, p0}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;)V

    iput-object v3, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    .line 212
    sget-object v3, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    if-nez v3, :cond_7f

    .line 213
    new-instance v3, Landroid/widget/StackView$HolographicHelper;

    iget-object v4, p0, Landroid/widget/StackView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/StackView$HolographicHelper;-><init>(Landroid/content/Context;)V

    sput-object v3, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    .line 215
    :cond_7f
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/StackView;->setClipChildren(Z)V

    .line 216
    invoke-virtual {p0, v3}, Landroid/widget/StackView;->setClipToPadding(Z)V

    .line 221
    iput v1, p0, Landroid/widget/StackView;->mStackMode:I

    .line 224
    iput v2, p0, Landroid/widget/StackView;->mWhichChild:I

    .line 228
    iget-object v1, p0, Landroid/widget/StackView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 229
    .local v1, "density":F
    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Landroid/widget/StackView;->mFramePadding:I

    .line 230
    return-void
.end method

.method private greylist-max-o measureChildren()V
    .registers 12

    .line 1139
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v0

    .line 1141
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredWidth()I

    move-result v1

    .line 1142
    .local v1, "measuredWidth":I
    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredHeight()I

    move-result v2

    .line 1144
    .local v2, "measuredHeight":I
    int-to-float v3, v1

    const v4, 0x3f666666    # 0.9f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v5, p0, Landroid/widget/StackView;->mPaddingLeft:I

    sub-int/2addr v3, v5

    iget v5, p0, Landroid/widget/StackView;->mPaddingRight:I

    sub-int/2addr v3, v5

    .line 1146
    .local v3, "childWidth":I
    int-to-float v5, v2

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Landroid/widget/StackView;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/StackView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    .line 1149
    .local v4, "childHeight":I
    const/4 v5, 0x0

    .line 1150
    .local v5, "maxWidth":I
    const/4 v6, 0x0

    .line 1152
    .local v6, "maxHeight":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2a
    if-ge v7, v0, :cond_56

    .line 1153
    invoke-virtual {p0, v7}, Landroid/widget/StackView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1154
    .local v8, "child":Landroid/view/View;
    const/high16 v9, -0x80000000

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1155
    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1154
    invoke-virtual {v8, v10, v9}, Landroid/view/View;->measure(II)V

    .line 1157
    iget-object v9, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    if-eq v8, v9, :cond_53

    iget-object v9, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    if-eq v8, v9, :cond_53

    .line 1158
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1159
    .local v9, "childMeasuredWidth":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1160
    .local v10, "childMeasuredHeight":I
    if-le v9, v5, :cond_50

    .line 1161
    move v5, v9

    .line 1163
    :cond_50
    if-le v10, v6, :cond_53

    .line 1164
    move v6, v10

    .line 1152
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "childMeasuredWidth":I
    .end local v10    # "childMeasuredHeight":I
    :cond_53
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    .line 1169
    .end local v7    # "i":I
    :cond_56
    int-to-float v7, v1

    const v8, 0x3dcccccd    # 0.1f

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    .line 1170
    int-to-float v7, v2

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    .line 1173
    if-lez v5, :cond_6c

    if-lez v0, :cond_6c

    if-ge v5, v3, :cond_6c

    .line 1174
    sub-int v7, v1, v5

    int-to-float v7, v7

    iput v7, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    .line 1177
    :cond_6c
    if-lez v6, :cond_77

    if-lez v0, :cond_77

    if-ge v6, v4, :cond_77

    .line 1178
    sub-int v7, v2, v6

    int-to-float v7, v7

    iput v7, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    .line 1180
    :cond_77
    return-void
.end method

.method private greylist-max-o onLayout()V
    .registers 4

    .line 566
    iget-boolean v0, p0, Landroid/widget/StackView;->mFirstLayoutHappened:Z

    if-nez v0, :cond_a

    .line 567
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/StackView;->mFirstLayoutHappened:Z

    .line 568
    invoke-direct {p0}, Landroid/widget/StackView;->updateChildTransforms()V

    .line 571
    :cond_a
    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 572
    .local v0, "newSlideAmount":I
    iget v1, p0, Landroid/widget/StackView;->mSlideAmount:I

    if-eq v1, v0, :cond_28

    .line 573
    iput v0, p0, Landroid/widget/StackView;->mSlideAmount:I

    .line 574
    const v1, 0x3e4ccccd    # 0.2f

    int-to-float v2, v0

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Landroid/widget/StackView;->mSwipeThreshold:I

    .line 577
    :cond_28
    iget v1, p0, Landroid/widget/StackView;->mPerspectiveShiftY:F

    iget v2, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_3c

    iget v1, p0, Landroid/widget/StackView;->mPerspectiveShiftX:F

    iget v2, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    .line 578
    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_47

    .line 580
    :cond_3c
    iget v1, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    iput v1, p0, Landroid/widget/StackView;->mPerspectiveShiftY:F

    .line 581
    iget v1, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    iput v1, p0, Landroid/widget/StackView;->mPerspectiveShiftX:F

    .line 582
    invoke-direct {p0}, Landroid/widget/StackView;->updateChildTransforms()V

    .line 584
    :cond_47
    return-void
.end method

.method private greylist-max-o onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 770
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 771
    .local v0, "activePointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 772
    .local v1, "pointerId":I
    iget v2, p0, Landroid/widget/StackView;->mActivePointerId:I

    if-ne v1, v2, :cond_7d

    .line 774
    iget v2, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_13

    const/4 v2, 0x0

    goto :goto_14

    :cond_13
    const/4 v2, 0x1

    .line 776
    .local v2, "activeViewIndex":I
    :goto_14
    invoke-virtual {p0, v2}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v3

    .line 777
    .local v3, "v":Landroid/view/View;
    if-nez v3, :cond_1b

    return-void

    .line 783
    :cond_1b
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_1c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ge v4, v5, :cond_7a

    .line 784
    if-eq v4, v0, :cond_77

    .line 786
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 787
    .local v5, "x":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 789
    .local v6, "y":F
    iget-object v7, p0, Landroid/widget/StackView;->mTouchRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 790
    iget-object v7, p0, Landroid/widget/StackView;->mTouchRect:Landroid/graphics/Rect;

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_77

    .line 791
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 792
    .local v7, "oldX":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 795
    .local v8, "oldY":F
    iget v9, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float v10, v6, v8

    add-float/2addr v9, v10

    iput v9, p0, Landroid/widget/StackView;->mInitialY:F

    .line 796
    iget v9, p0, Landroid/widget/StackView;->mInitialX:F

    sub-float v10, v5, v7

    add-float/2addr v9, v10

    iput v9, p0, Landroid/widget/StackView;->mInitialX:F

    .line 798
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 799
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_76

    .line 800
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    .line 803
    :cond_76
    return-void

    .line 783
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v7    # "oldX":F
    .end local v8    # "oldY":F
    :cond_77
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 809
    .end local v4    # "index":I
    :cond_7a
    invoke-direct {p0, p1}, Landroid/widget/StackView;->handlePointerUp(Landroid/view/MotionEvent;)V

    .line 811
    .end local v2    # "activeViewIndex":I
    .end local v3    # "v":Landroid/view/View;
    :cond_7d
    return-void
.end method

.method private greylist-max-o pacedScroll(Z)V
    .registers 6
    .param p1, "up"    # Z

    .line 607
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/StackView;->mLastScrollTime:J

    sub-long/2addr v0, v2

    .line 608
    .local v0, "timeSinceLastScroll":J
    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    if-lez v2, :cond_1c

    .line 609
    if-eqz p1, :cond_13

    .line 610
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    goto :goto_16

    .line 612
    :cond_13
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    .line 614
    :goto_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/StackView;->mLastScrollTime:J

    .line 616
    :cond_1c
    return-void
.end method

.method private greylist-max-o setupStackSlider(Landroid/view/View;I)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "mode"    # I

    .line 376
    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v0, p2}, Landroid/widget/StackView$StackSlider;->setMode(I)V

    .line 377
    if-eqz p1, :cond_40

    .line 378
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    iget v2, p0, Landroid/widget/StackView;->mResOutColor:I

    invoke-virtual {v1, p1, v2}, Landroid/widget/StackView$HolographicHelper;->createResOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 379
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 380
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 381
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 382
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 383
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 384
    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v0, p1}, Landroid/widget/StackView$StackSlider;->setView(Landroid/view/View;)V

    .line 386
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 388
    :cond_40
    return-void
.end method

.method private greylist-max-o transformViewAtIndex(ILandroid/view/View;Z)V
    .registers 23
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "animate"    # Z

    .line 323
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget v2, v0, Landroid/widget/StackView;->mPerspectiveShiftY:F

    .line 324
    .local v2, "maxPerspectiveShiftY":F
    iget v3, v0, Landroid/widget/StackView;->mPerspectiveShiftX:F

    .line 326
    .local v3, "maxPerspectiveShiftX":F
    iget v4, v0, Landroid/widget/StackView;->mStackMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a

    .line 327
    iget v4, v0, Landroid/widget/StackView;->mMaxNumActiveViews:I

    sub-int v4, v4, p1

    sub-int/2addr v4, v5

    .line 328
    .end local p1    # "index":I
    .local v4, "index":I
    iget v6, v0, Landroid/widget/StackView;->mMaxNumActiveViews:I

    sub-int/2addr v6, v5

    if-ne v4, v6, :cond_20

    add-int/lit8 v4, v4, -0x1

    goto :goto_20

    .line 330
    .end local v4    # "index":I
    .restart local p1    # "index":I
    :cond_1a
    add-int/lit8 v4, p1, -0x1

    .line 331
    .end local p1    # "index":I
    .restart local v4    # "index":I
    if-gez v4, :cond_20

    add-int/lit8 v4, v4, 0x1

    .line 334
    :cond_20
    :goto_20
    int-to-float v6, v4

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v6, v7

    iget v8, v0, Landroid/widget/StackView;->mMaxNumActiveViews:I

    const/4 v9, 0x2

    sub-int/2addr v8, v9

    int-to-float v8, v8

    div-float/2addr v6, v8

    .line 336
    .local v6, "r":F
    const/4 v8, 0x0

    sub-float v10, v7, v6

    mul-float/2addr v10, v8

    sub-float v8, v7, v10

    .line 338
    .local v8, "scale":F
    mul-float v10, v6, v2

    .line 339
    .local v10, "perspectiveTranslationY":F
    sub-float v11, v8, v7

    .line 340
    invoke-virtual {v0}, Landroid/widget/StackView;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    const v13, 0x3f666666    # 0.9f

    mul-float/2addr v12, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v12, v14

    mul-float/2addr v11, v12

    .line 341
    .local v11, "scaleShiftCorrectionY":F
    add-float v12, v10, v11

    .line 343
    .local v12, "transY":F
    sub-float v15, v7, v6

    mul-float/2addr v15, v3

    .line 344
    .local v15, "perspectiveTranslationX":F
    sub-float/2addr v7, v8

    .line 345
    move/from16 p1, v9

    invoke-virtual {v0}, Landroid/widget/StackView;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v13

    div-float/2addr v9, v14

    mul-float/2addr v7, v9

    .line 346
    .local v7, "scaleShiftCorrectionX":F
    add-float v9, v15, v7

    .line 350
    .local v9, "transX":F
    instance-of v13, v1, Landroid/widget/StackView$StackFrame;

    if-eqz v13, :cond_5d

    .line 351
    move-object v13, v1

    check-cast v13, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v13}, Landroid/widget/StackView$StackFrame;->cancelTransformAnimator()Z

    .line 354
    :cond_5d
    if-eqz p3, :cond_bc

    .line 355
    new-array v13, v5, [F

    const/4 v14, 0x0

    aput v9, v13, v14

    move/from16 v16, v14

    const-string/jumbo v14, "translationX"

    invoke-static {v14, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 356
    .local v13, "translationX":Landroid/animation/PropertyValuesHolder;
    new-array v14, v5, [F

    aput v12, v14, v16

    const-string/jumbo v5, "translationY"

    invoke-static {v5, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 357
    .local v5, "translationY":Landroid/animation/PropertyValuesHolder;
    const/4 v14, 0x1

    new-array v0, v14, [F

    aput v8, v0, v16

    const-string/jumbo v14, "scaleX"

    invoke-static {v14, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 358
    .local v0, "scalePropX":Landroid/animation/PropertyValuesHolder;
    move-object/from16 v17, v0

    const/4 v14, 0x1

    .end local v0    # "scalePropX":Landroid/animation/PropertyValuesHolder;
    .local v17, "scalePropX":Landroid/animation/PropertyValuesHolder;
    new-array v0, v14, [F

    aput v8, v0, v16

    move/from16 v18, v14

    const-string/jumbo v14, "scaleY"

    invoke-static {v14, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 360
    .local v0, "scalePropY":Landroid/animation/PropertyValuesHolder;
    const/4 v14, 0x4

    new-array v14, v14, [Landroid/animation/PropertyValuesHolder;

    aput-object v17, v14, v16

    aput-object v0, v14, v18

    aput-object v5, v14, p1

    const/16 v16, 0x3

    aput-object v13, v14, v16

    invoke-static {v1, v14}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 362
    .local v14, "oa":Landroid/animation/ObjectAnimator;
    move/from16 v16, v2

    move/from16 v18, v3

    .end local v2    # "maxPerspectiveShiftY":F
    .end local v3    # "maxPerspectiveShiftX":F
    .local v16, "maxPerspectiveShiftY":F
    .local v18, "maxPerspectiveShiftX":F
    const-wide/16 v2, 0x64

    invoke-virtual {v14, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 363
    instance-of v2, v1, Landroid/widget/StackView$StackFrame;

    if-eqz v2, :cond_b8

    .line 364
    move-object v2, v1

    check-cast v2, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v2, v14}, Landroid/widget/StackView$StackFrame;->setTransformAnimator(Landroid/animation/ObjectAnimator;)V

    .line 366
    :cond_b8
    invoke-virtual {v14}, Landroid/animation/ObjectAnimator;->start()V

    .line 367
    .end local v0    # "scalePropY":Landroid/animation/PropertyValuesHolder;
    .end local v5    # "translationY":Landroid/animation/PropertyValuesHolder;
    .end local v13    # "translationX":Landroid/animation/PropertyValuesHolder;
    .end local v14    # "oa":Landroid/animation/ObjectAnimator;
    .end local v17    # "scalePropX":Landroid/animation/PropertyValuesHolder;
    goto :goto_cc

    .line 368
    .end local v16    # "maxPerspectiveShiftY":F
    .end local v18    # "maxPerspectiveShiftX":F
    .restart local v2    # "maxPerspectiveShiftY":F
    .restart local v3    # "maxPerspectiveShiftX":F
    :cond_bc
    move/from16 v16, v2

    move/from16 v18, v3

    .end local v2    # "maxPerspectiveShiftY":F
    .end local v3    # "maxPerspectiveShiftX":F
    .restart local v16    # "maxPerspectiveShiftY":F
    .restart local v18    # "maxPerspectiveShiftX":F
    invoke-virtual {v1, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 369
    invoke-virtual {v1, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 370
    invoke-virtual {v1, v8}, Landroid/view/View;->setScaleX(F)V

    .line 371
    invoke-virtual {v1, v8}, Landroid/view/View;->setScaleY(F)V

    .line 373
    :goto_cc
    return-void
.end method

.method private greylist-max-o updateChildTransforms()V
    .registers 4

    .line 474
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/StackView;->getNumActiveViews()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 475
    invoke-virtual {p0, v0}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v1

    .line 476
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_11

    .line 477
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/StackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    .line 474
    .end local v1    # "v":Landroid/view/View;
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 480
    .end local v0    # "i":I
    :cond_14
    return-void
.end method


# virtual methods
.method public whitelist advance()V
    .registers 6

    .line 1126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/StackView;->mLastInteractionTime:J

    sub-long/2addr v0, v2

    .line 1128
    .local v0, "timeSinceLastInteraction":J
    iget-object v2, p0, Landroid/widget/StackView;->mAdapter:Landroid/widget/Adapter;

    if-nez v2, :cond_c

    return-void

    .line 1129
    :cond_c
    invoke-virtual {p0}, Landroid/widget/StackView;->getCount()I

    move-result v2

    .line 1130
    .local v2, "adapterCount":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    iget-boolean v3, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-eqz v3, :cond_18

    return-void

    .line 1132
    :cond_18
    iget v3, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-nez v3, :cond_25

    const-wide/16 v3, 0x1388

    cmp-long v3, v0, v3

    if-lez v3, :cond_25

    .line 1134
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    .line 1136
    :cond_25
    return-void
.end method

.method greylist-max-o applyTransformForChildAtIndex(Landroid/view/View;I)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "relativeIndex"    # I

    .line 532
    return-void
.end method

.method bridge synthetic blacklist createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/StackView;->createOrReuseLayoutParams(Landroid/view/View;)Landroid/widget/StackView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o createOrReuseLayoutParams(Landroid/view/View;)Landroid/widget/StackView$LayoutParams;
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 1093
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1094
    .local v0, "currentLp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/widget/StackView$LayoutParams;

    if-eqz v1, :cond_17

    .line 1095
    move-object v1, v0

    check-cast v1, Landroid/widget/StackView$LayoutParams;

    .line 1096
    .local v1, "lp":Landroid/widget/StackView$LayoutParams;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    .line 1097
    invoke-virtual {v1, v2}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 1098
    iput v2, v1, Landroid/widget/StackView$LayoutParams;->width:I

    .line 1099
    iput v2, v1, Landroid/widget/StackView$LayoutParams;->width:I

    .line 1100
    return-object v1

    .line 1102
    .end local v1    # "lp":Landroid/widget/StackView$LayoutParams;
    :cond_17
    new-instance v1, Landroid/widget/StackView$LayoutParams;

    invoke-direct {v1, p0, p1}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    return-object v1
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 536
    const/4 v0, 0x0

    .line 538
    .local v0, "expandClipRegion":Z
    iget-object v1, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 539
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v1

    .line 540
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_44

    .line 541
    invoke-virtual {p0, v2}, Landroid/widget/StackView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 542
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/StackView$LayoutParams;

    .line 543
    .local v4, "lp":Landroid/widget/StackView$LayoutParams;
    iget v5, v4, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    if-nez v5, :cond_1f

    iget v5, v4, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    if-eqz v5, :cond_2e

    .line 544
    :cond_1f
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2e

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_31

    .line 545
    :cond_2e
    invoke-virtual {v4}, Landroid/widget/StackView$LayoutParams;->resetInvalidateRect()V

    .line 547
    :cond_31
    invoke-virtual {v4}, Landroid/widget/StackView$LayoutParams;->getInvalidateRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 548
    .local v5, "childInvalidateRect":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_41

    .line 549
    const/4 v0, 0x1

    .line 550
    iget-object v6, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 540
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/StackView$LayoutParams;
    .end local v5    # "childInvalidateRect":Landroid/graphics/Rect;
    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 555
    .end local v2    # "i":I
    :cond_44
    if-eqz v0, :cond_55

    .line 556
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 557
    iget-object v2, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRectUnion(Landroid/graphics/Rect;)Z

    .line 558
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 559
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_58

    .line 561
    :cond_55
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 563
    :goto_58
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 1236
    const-class v0, Landroid/widget/StackView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getFrameForChild()Landroid/widget/FrameLayout;
    .registers 6

    .line 523
    new-instance v0, Landroid/widget/StackView$StackFrame;

    iget-object v1, p0, Landroid/widget/StackView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/StackView$StackFrame;-><init>(Landroid/content/Context;)V

    .line 524
    .local v0, "fl":Landroid/widget/StackView$StackFrame;
    iget v1, p0, Landroid/widget/StackView;->mFramePadding:I

    iget v2, p0, Landroid/widget/StackView;->mFramePadding:I

    iget v3, p0, Landroid/widget/StackView;->mFramePadding:I

    iget v4, p0, Landroid/widget/StackView;->mFramePadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/StackView$StackFrame;->setPadding(IIII)V

    .line 525
    return-object v0
.end method

.method greylist-max-o hideTapFeedback(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 469
    iget-object v0, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 470
    invoke-virtual {p0}, Landroid/widget/StackView;->invalidate()V

    .line 471
    return-void
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 588
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_29

    .line 589
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    goto :goto_29

    .line 591
    :pswitch_10
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 592
    .local v0, "vscroll":F
    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    const/4 v3, 0x1

    if-gez v2, :cond_21

    .line 593
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/StackView;->pacedScroll(Z)V

    .line 594
    return v3

    .line 595
    :cond_21
    cmpl-float v1, v0, v1

    if-lez v1, :cond_29

    .line 596
    invoke-direct {p0, v3}, Landroid/widget/StackView;->pacedScroll(Z)V

    .line 597
    return v3

    .line 602
    .end local v0    # "vscroll":F
    :cond_29
    :goto_29
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_data_2e
    .packed-switch 0x8
        :pswitch_10
    .end packed-switch
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1242
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1243
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1244
    invoke-virtual {p0}, Landroid/widget/StackView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1245
    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_35

    .line 1246
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1247
    iget v0, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v0, :cond_30

    .line 1248
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_35

    .line 1250
    :cond_30
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1253
    :cond_35
    :goto_35
    invoke-virtual {p0}, Landroid/widget/StackView;->getDisplayedChild()I

    move-result v0

    if-lez v0, :cond_4f

    .line 1254
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1255
    iget v0, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v0, :cond_4a

    .line 1256
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_4f

    .line 1258
    :cond_4a
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PAGE_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1262
    :cond_4f
    :goto_4f
    return-void
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 623
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 624
    .local v0, "action":I
    and-int/lit16 v1, v0, 0xff

    const/4 v2, -0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_4e

    :pswitch_b
    goto :goto_47

    .line 647
    :pswitch_c
    invoke-direct {p0, p1}, Landroid/widget/StackView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 648
    goto :goto_47

    .line 634
    :pswitch_10
    iget v1, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 635
    .local v1, "pointerIndex":I
    if-ne v1, v2, :cond_20

    .line 637
    const-string v2, "StackView"

    const-string v4, "Error: No data for our primary pointer."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    return v3

    .line 640
    :cond_20
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 641
    .local v2, "newY":F
    iget v4, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float v4, v2, v4

    .line 643
    .local v4, "deltaY":F
    invoke-direct {p0, v4}, Landroid/widget/StackView;->beginGestureIfNeeded(F)V

    .line 644
    goto :goto_47

    .line 652
    .end local v1    # "pointerIndex":I
    .end local v2    # "newY":F
    .end local v4    # "deltaY":F
    :pswitch_2c
    iput v2, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 653
    iput v3, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    goto :goto_47

    .line 626
    :pswitch_31
    iget v1, p0, Landroid/widget/StackView;->mActivePointerId:I

    if-ne v1, v2, :cond_47

    .line 627
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/widget/StackView;->mInitialX:F

    .line 628
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/widget/StackView;->mInitialY:F

    .line 629
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 657
    :cond_47
    :goto_47
    iget v1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-eqz v1, :cond_4c

    const/4 v3, 0x1

    :cond_4c
    return v3

    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_31
        :pswitch_2c
        :pswitch_10
        :pswitch_2c
        :pswitch_b
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 16
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1107
    invoke-virtual {p0}, Landroid/widget/StackView;->checkForAndHandleDataChanged()V

    .line 1109
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v0

    .line 1110
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_38

    .line 1111
    invoke-virtual {p0, v1}, Landroid/widget/StackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1113
    .local v2, "child":Landroid/view/View;
    iget v3, p0, Landroid/widget/StackView;->mPaddingLeft:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 1114
    .local v3, "childRight":I
    iget v4, p0, Landroid/widget/StackView;->mPaddingTop:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 1115
    .local v4, "childBottom":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/StackView$LayoutParams;

    .line 1117
    .local v5, "lp":Landroid/widget/StackView$LayoutParams;
    iget v6, p0, Landroid/widget/StackView;->mPaddingLeft:I

    iget v7, v5, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/widget/StackView;->mPaddingTop:I

    iget v8, v5, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    add-int/2addr v7, v8

    iget v8, v5, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    add-int/2addr v8, v3

    iget v9, v5, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    add-int/2addr v9, v4

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 1110
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childRight":I
    .end local v4    # "childBottom":I
    .end local v5    # "lp":Landroid/widget/StackView$LayoutParams;
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1121
    .end local v1    # "i":I
    :cond_38
    invoke-direct {p0}, Landroid/widget/StackView;->onLayout()V

    .line 1122
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1184
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1185
    .local v0, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1186
    .local v1, "heightSpecSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1187
    .local v2, "widthSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1189
    .local v3, "heightSpecMode":I
    iget v4, p0, Landroid/widget/StackView;->mReferenceChildWidth:I

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1c

    iget v4, p0, Landroid/widget/StackView;->mReferenceChildHeight:I

    if-eq v4, v6, :cond_1c

    const/4 v4, 0x1

    goto :goto_1d

    :cond_1c
    move v4, v5

    .line 1193
    .local v4, "haveChildRefSize":Z
    :goto_1d
    const v6, 0x3f8e38e4

    .line 1194
    .local v6, "factorY":F
    const/high16 v7, 0x1000000

    const/high16 v8, -0x80000000

    const/high16 v9, 0x3f800000    # 1.0f

    if-nez v3, :cond_3e

    .line 1195
    if-eqz v4, :cond_3b

    .line 1197
    iget v10, p0, Landroid/widget/StackView;->mReferenceChildHeight:I

    int-to-float v10, v10

    add-float v11, v6, v9

    mul-float/2addr v10, v11

    .line 1196
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iget v11, p0, Landroid/widget/StackView;->mPaddingTop:I

    add-int/2addr v10, v11

    iget v11, p0, Landroid/widget/StackView;->mPaddingBottom:I

    add-int/2addr v10, v11

    goto :goto_3c

    .line 1197
    :cond_3b
    move v10, v5

    :goto_3c
    move v1, v10

    goto :goto_59

    .line 1198
    :cond_3e
    if-ne v3, v8, :cond_59

    .line 1199
    if-eqz v4, :cond_58

    .line 1200
    iget v10, p0, Landroid/widget/StackView;->mReferenceChildHeight:I

    int-to-float v10, v10

    add-float v11, v6, v9

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iget v11, p0, Landroid/widget/StackView;->mPaddingTop:I

    add-int/2addr v10, v11

    iget v11, p0, Landroid/widget/StackView;->mPaddingBottom:I

    add-int/2addr v10, v11

    .line 1202
    .local v10, "height":I
    if-gt v10, v1, :cond_56

    .line 1203
    move v1, v10

    goto :goto_57

    .line 1205
    :cond_56
    or-int/2addr v1, v7

    .line 1208
    .end local v10    # "height":I
    :goto_57
    goto :goto_59

    .line 1209
    :cond_58
    const/4 v1, 0x0

    .line 1213
    :cond_59
    :goto_59
    const v10, 0x3f8e38e4

    .line 1214
    .local v10, "factorX":F
    if-nez v2, :cond_73

    .line 1215
    if-eqz v4, :cond_70

    .line 1217
    iget v5, p0, Landroid/widget/StackView;->mReferenceChildWidth:I

    int-to-float v5, v5

    add-float/2addr v9, v10

    mul-float/2addr v5, v9

    .line 1216
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v7, p0, Landroid/widget/StackView;->mPaddingLeft:I

    add-int/2addr v5, v7

    iget v7, p0, Landroid/widget/StackView;->mPaddingRight:I

    add-int/2addr v5, v7

    goto :goto_71

    .line 1217
    :cond_70
    nop

    :goto_71
    move v0, v5

    goto :goto_86

    .line 1218
    :cond_73
    if-ne v3, v8, :cond_86

    .line 1219
    if-eqz v4, :cond_85

    .line 1220
    iget v5, p0, Landroid/widget/StackView;->mReferenceChildWidth:I

    iget v8, p0, Landroid/widget/StackView;->mPaddingLeft:I

    add-int/2addr v5, v8

    iget v8, p0, Landroid/widget/StackView;->mPaddingRight:I

    add-int/2addr v5, v8

    .line 1221
    .local v5, "width":I
    if-gt v5, v0, :cond_83

    .line 1222
    move v0, v5

    goto :goto_84

    .line 1224
    :cond_83
    or-int/2addr v0, v7

    .line 1226
    .end local v5    # "width":I
    :goto_84
    goto :goto_86

    .line 1227
    :cond_85
    const/4 v0, 0x0

    .line 1230
    :cond_86
    :goto_86
    invoke-virtual {p0, v0, v1}, Landroid/widget/StackView;->setMeasuredDimension(II)V

    .line 1231
    invoke-direct {p0}, Landroid/widget/StackView;->measureChildren()V

    .line 1232
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 713
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 715
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 716
    .local v0, "action":I
    iget v1, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 717
    .local v1, "pointerIndex":I
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_19

    .line 719
    const-string v3, "StackView"

    const-string v4, "Error: No data for our primary pointer."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return v2

    .line 723
    :cond_19
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 724
    .local v4, "newY":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 725
    .local v5, "newX":F
    iget v6, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float v6, v4, v6

    .line 726
    .local v6, "deltaY":F
    iget v7, p0, Landroid/widget/StackView;->mInitialX:F

    sub-float v7, v5, v7

    .line 727
    .local v7, "deltaX":F
    iget-object v8, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_33

    .line 728
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 730
    :cond_33
    iget-object v8, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 732
    and-int/lit16 v8, v0, 0xff

    const/4 v9, 0x1

    packed-switch v8, :pswitch_data_9a

    :pswitch_3e
    goto :goto_99

    .line 757
    :pswitch_3f
    invoke-direct {p0, p1}, Landroid/widget/StackView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 758
    goto :goto_99

    .line 761
    :pswitch_43
    iput v3, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 762
    iput v2, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    goto :goto_99

    .line 734
    :pswitch_48
    invoke-direct {p0, v6}, Landroid/widget/StackView;->beginGestureIfNeeded(F)V

    .line 736
    iget v2, p0, Landroid/widget/StackView;->mSlideAmount:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    div-float v2, v7, v2

    .line 737
    .local v2, "rx":F
    iget v8, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/4 v10, 0x2

    if-ne v8, v10, :cond_75

    .line 738
    iget v8, p0, Landroid/widget/StackView;->mTouchSlop:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    sub-float v8, v6, v8

    iget v10, p0, Landroid/widget/StackView;->mSlideAmount:I

    int-to-float v10, v10

    div-float/2addr v8, v10

    mul-float/2addr v8, v3

    .line 739
    .local v8, "r":F
    iget v10, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v10, v9, :cond_69

    sub-float v8, v3, v8

    .line 740
    :cond_69
    iget-object v10, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    sub-float/2addr v3, v8

    invoke-virtual {v10, v3}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 741
    iget-object v3, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v3, v2}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    .line 742
    return v9

    .line 743
    .end local v8    # "r":F
    :cond_75
    iget v8, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-ne v8, v9, :cond_99

    .line 744
    iget v8, p0, Landroid/widget/StackView;->mTouchSlop:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    add-float/2addr v8, v6

    neg-float v8, v8

    iget v10, p0, Landroid/widget/StackView;->mSlideAmount:I

    int-to-float v10, v10

    div-float/2addr v8, v10

    mul-float/2addr v8, v3

    .line 745
    .restart local v8    # "r":F
    iget v10, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v10, v9, :cond_8a

    sub-float v8, v3, v8

    .line 746
    :cond_8a
    iget-object v3, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v3, v8}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 747
    iget-object v3, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v3, v2}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    .line 748
    return v9

    .line 753
    .end local v2    # "rx":F
    .end local v8    # "r":F
    :pswitch_95
    invoke-direct {p0, p1}, Landroid/widget/StackView;->handlePointerUp(Landroid/view/MotionEvent;)V

    .line 754
    nop

    .line 766
    :cond_99
    :goto_99
    return v9

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_95
        :pswitch_48
        :pswitch_43
        :pswitch_3e
        :pswitch_3e
        :pswitch_3f
    .end packed-switch
.end method

.method public greylist-max-o performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 1283
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterViewAnimator;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1284
    const/4 v0, 0x1

    return v0

    .line 1286
    :cond_8
    invoke-virtual {p0}, Landroid/widget/StackView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 1287
    return v1

    .line 1289
    :cond_10
    sparse-switch p1, :sswitch_data_3a

    .line 1311
    return v1

    .line 1304
    :sswitch_14
    iget v0, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v0, :cond_1d

    .line 1305
    invoke-direct {p0}, Landroid/widget/StackView;->goForward()Z

    move-result v0

    return v0

    .line 1307
    :cond_1d
    invoke-direct {p0}, Landroid/widget/StackView;->goBackward()Z

    move-result v0

    return v0

    .line 1297
    :sswitch_22
    iget v0, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v0, :cond_2b

    .line 1298
    invoke-direct {p0}, Landroid/widget/StackView;->goBackward()Z

    move-result v0

    return v0

    .line 1300
    :cond_2b
    invoke-direct {p0}, Landroid/widget/StackView;->goForward()Z

    move-result v0

    return v0

    .line 1294
    :sswitch_30
    invoke-direct {p0}, Landroid/widget/StackView;->goBackward()Z

    move-result v0

    return v0

    .line 1291
    :sswitch_35
    invoke-direct {p0}, Landroid/widget/StackView;->goForward()Z

    move-result v0

    return v0

    :sswitch_data_3a
    .sparse-switch
        0x1000 -> :sswitch_35
        0x2000 -> :sswitch_30
        0x1020046 -> :sswitch_22
        0x1020047 -> :sswitch_14
    .end sparse-switch
.end method

.method public whitelist showNext()V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 396
    iget v0, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-eqz v0, :cond_5

    return-void

    .line 397
    :cond_5
    iget-boolean v0, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    if-nez v0, :cond_1f

    .line 398
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    .line 399
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1f

    .line 400
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/StackView;->setupStackSlider(Landroid/view/View;I)V

    .line 401
    iget-object v1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 402
    iget-object v1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v1, v2}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    .line 405
    .end local v0    # "v":Landroid/view/View;
    :cond_1f
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showNext()V

    .line 406
    return-void
.end method

.method greylist-max-o showOnly(IZ)V
    .registers 8
    .param p1, "childIndex"    # I
    .param p2, "animate"    # Z

    .line 428
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    .line 431
    iget v0, p0, Landroid/widget/StackView;->mCurrentWindowEnd:I

    .local v0, "i":I
    :goto_5
    iget v1, p0, Landroid/widget/StackView;->mCurrentWindowStart:I

    if-lt v0, v1, :cond_35

    .line 432
    invoke-virtual {p0}, Landroid/widget/StackView;->getWindowSize()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/StackView;->modulo(II)I

    move-result v1

    .line 433
    .local v1, "index":I
    iget-object v2, p0, Landroid/widget/StackView;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    .line 434
    .local v2, "vm":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    if-eqz v2, :cond_32

    .line 435
    iget-object v3, p0, Landroid/widget/StackView;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v3, v3, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    .line 436
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_32

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    .line 431
    .end local v1    # "index":I
    .end local v2    # "vm":Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    .end local v3    # "v":Landroid/view/View;
    :cond_32
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 439
    .end local v0    # "i":I
    :cond_35
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    if-eqz v0, :cond_3e

    .line 440
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 442
    :cond_3e
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    .line 443
    iput-boolean v0, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    .line 444
    return-void
.end method

.method public whitelist showPrevious()V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 414
    iget v0, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-eqz v0, :cond_5

    return-void

    .line 415
    :cond_5
    iget-boolean v0, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    if-nez v0, :cond_20

    .line 416
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v1

    .line 417
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_20

    .line 418
    invoke-direct {p0, v1, v0}, Landroid/widget/StackView;->setupStackSlider(Landroid/view/View;I)V

    .line 419
    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 420
    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    .line 423
    .end local v1    # "v":Landroid/view/View;
    :cond_20
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showPrevious()V

    .line 424
    return-void
.end method

.method greylist-max-o showTapFeedback(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 461
    invoke-virtual {p0}, Landroid/widget/StackView;->updateClickFeedback()V

    .line 462
    iget-object v0, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 464
    invoke-virtual {p0}, Landroid/widget/StackView;->invalidate()V

    .line 465
    return-void
.end method

.method greylist-max-o transformViewForTransition(IILandroid/view/View;Z)V
    .registers 16
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "view"    # Landroid/view/View;
    .param p4, "animate"    # Z

    .line 236
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p4, :cond_19

    .line 237
    move-object v2, p3

    check-cast v2, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v2}, Landroid/widget/StackView$StackFrame;->cancelSliderAnimator()Z

    .line 238
    invoke-virtual {p3, v0}, Landroid/view/View;->setRotationX(F)V

    .line 239
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/StackView$LayoutParams;

    .line 240
    .local v2, "lp":Landroid/widget/StackView$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 241
    invoke-virtual {v2, v1}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    .line 244
    .end local v2    # "lp":Landroid/widget/StackView$LayoutParams;
    :cond_19
    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    if-ne p1, v2, :cond_31

    invoke-virtual {p0}, Landroid/widget/StackView;->getNumActiveViews()I

    move-result v5

    sub-int/2addr v5, v4

    if-ne p2, v5, :cond_31

    .line 245
    invoke-direct {p0, p2, p3, v1}, Landroid/widget/StackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    .line 246
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 247
    invoke-virtual {p3, v3}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_12f

    .line 248
    :cond_31
    const/4 v5, 0x2

    const-string v6, "XProgress"

    const-string v7, "YProgress"

    if-nez p1, :cond_94

    if-ne p2, v4, :cond_94

    .line 250
    move-object v3, p3

    check-cast v3, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v3}, Landroid/widget/StackView$StackFrame;->cancelSliderAnimator()Z

    .line 251
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object v3, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v8, p0, Landroid/widget/StackView;->mYVelocity:I

    int-to-float v8, v8

    invoke-virtual {v3, v8}, Landroid/widget/StackView$StackSlider;->getDurationForNeutralPosition(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 254
    .local v3, "duration":I
    new-instance v8, Landroid/widget/StackView$StackSlider;

    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-direct {v8, p0, v9}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    .line 255
    .local v8, "animationSlider":Landroid/widget/StackView$StackSlider;
    invoke-virtual {v8, p3}, Landroid/widget/StackView$StackSlider;->setView(Landroid/view/View;)V

    .line 257
    if-eqz p4, :cond_8c

    .line 258
    new-array v9, v4, [F

    aput v0, v9, v1

    invoke-static {v7, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 259
    .local v7, "slideInY":Landroid/animation/PropertyValuesHolder;
    new-array v9, v4, [F

    aput v0, v9, v1

    invoke-static {v6, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 260
    .local v0, "slideInX":Landroid/animation/PropertyValuesHolder;
    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v5, v1

    aput-object v7, v5, v4

    invoke-static {v8, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 262
    .local v1, "slideIn":Landroid/animation/ObjectAnimator;
    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 263
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 264
    move-object v4, p3

    check-cast v4, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v4, v1}, Landroid/widget/StackView$StackFrame;->setSliderAnimator(Landroid/animation/ObjectAnimator;)V

    .line 265
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 266
    .end local v0    # "slideInX":Landroid/animation/PropertyValuesHolder;
    .end local v1    # "slideIn":Landroid/animation/ObjectAnimator;
    .end local v7    # "slideInY":Landroid/animation/PropertyValuesHolder;
    goto :goto_92

    .line 267
    :cond_8c
    invoke-virtual {v8, v0}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 268
    invoke-virtual {v8, v0}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    .line 270
    .end local v3    # "duration":I
    .end local v8    # "animationSlider":Landroid/widget/StackView$StackSlider;
    :goto_92
    goto/16 :goto_12f

    :cond_94
    if-ne p1, v4, :cond_ee

    if-nez p2, :cond_ee

    .line 272
    move-object v8, p3

    check-cast v8, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v8}, Landroid/widget/StackView$StackFrame;->cancelSliderAnimator()Z

    .line 273
    iget-object v8, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v9, p0, Landroid/widget/StackView;->mYVelocity:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/widget/StackView$StackSlider;->getDurationForOffscreenPosition(F)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 275
    .local v8, "duration":I
    new-instance v9, Landroid/widget/StackView$StackSlider;

    iget-object v10, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-direct {v9, p0, v10}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    .line 276
    .local v9, "animationSlider":Landroid/widget/StackView$StackSlider;
    invoke-virtual {v9, p3}, Landroid/widget/StackView$StackSlider;->setView(Landroid/view/View;)V

    .line 277
    if-eqz p4, :cond_e7

    .line 278
    new-array v10, v4, [F

    aput v3, v10, v1

    invoke-static {v7, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 279
    .local v3, "slideOutY":Landroid/animation/PropertyValuesHolder;
    new-array v7, v4, [F

    aput v0, v7, v1

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 280
    .local v0, "slideOutX":Landroid/animation/PropertyValuesHolder;
    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v5, v1

    aput-object v3, v5, v4

    invoke-static {v9, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 282
    .local v1, "slideOut":Landroid/animation/ObjectAnimator;
    int-to-long v4, v8

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 283
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 284
    move-object v4, p3

    check-cast v4, Landroid/widget/StackView$StackFrame;

    invoke-virtual {v4, v1}, Landroid/widget/StackView$StackFrame;->setSliderAnimator(Landroid/animation/ObjectAnimator;)V

    .line 285
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 286
    .end local v0    # "slideOutX":Landroid/animation/PropertyValuesHolder;
    .end local v1    # "slideOut":Landroid/animation/ObjectAnimator;
    .end local v3    # "slideOutY":Landroid/animation/PropertyValuesHolder;
    goto :goto_ed

    .line 287
    :cond_e7
    invoke-virtual {v9, v3}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 288
    invoke-virtual {v9, v0}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    .line 290
    .end local v8    # "duration":I
    .end local v9    # "animationSlider":Landroid/widget/StackView$StackSlider;
    :goto_ed
    goto :goto_12f

    :cond_ee
    if-nez p2, :cond_f8

    .line 292
    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 293
    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12f

    .line 294
    :cond_f8
    if-eqz p1, :cond_fc

    if-ne p1, v4, :cond_114

    :cond_fc
    if-le p2, v4, :cond_114

    .line 295
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    invoke-virtual {p3, v3}, Landroid/view/View;->setAlpha(F)V

    .line 297
    invoke-virtual {p3, v0}, Landroid/view/View;->setRotationX(F)V

    .line 298
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/StackView$LayoutParams;

    .line 299
    .local v0, "lp":Landroid/widget/StackView$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 300
    invoke-virtual {v0, v1}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    .line 301
    .end local v0    # "lp":Landroid/widget/StackView$LayoutParams;
    goto :goto_12f

    :cond_114
    if-ne p1, v2, :cond_11d

    .line 302
    invoke-virtual {p3, v3}, Landroid/view/View;->setAlpha(F)V

    .line 303
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12f

    .line 304
    :cond_11d
    if-ne p2, v2, :cond_12f

    .line 305
    if-eqz p4, :cond_12c

    .line 306
    new-instance v0, Landroid/widget/StackView$1;

    invoke-direct {v0, p0, p3}, Landroid/widget/StackView$1;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    const-wide/16 v3, 0x64

    invoke-virtual {p0, v0, v3, v4}, Landroid/widget/StackView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_12f

    .line 312
    :cond_12c
    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 317
    :cond_12f
    :goto_12f
    if-eq p2, v2, :cond_134

    .line 318
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/StackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    .line 320
    :cond_134
    return-void
.end method

.method greylist-max-o updateClickFeedback()V
    .registers 6

    .line 447
    iget-boolean v0, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    if-nez v0, :cond_2c

    .line 448
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v1

    .line 449
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_2a

    .line 450
    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    iget v4, p0, Landroid/widget/StackView;->mClickColor:I

    .line 451
    invoke-virtual {v3, v1, v4}, Landroid/widget/StackView$HolographicHelper;->createClickOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 450
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 452
    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 453
    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 455
    :cond_2a
    iput-boolean v0, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    .line 457
    .end local v1    # "v":Landroid/view/View;
    :cond_2c
    return-void
.end method
