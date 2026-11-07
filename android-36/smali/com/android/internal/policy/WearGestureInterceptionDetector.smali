.class public Lcom/android/internal/policy/WearGestureInterceptionDetector;
.super Ljava/lang/Object;
.source "WearGestureInterceptionDetector.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "WearGestureInterceptionDetector"


# instance fields
.field private blacklist mActivePointerId:I

.field private blacklist mDiscardIntercept:Z

.field private blacklist mDownX:F

.field private blacklist mDownY:F

.field private final blacklist mInstalledDecorView:Lcom/android/internal/policy/DecorView;

.field private blacklist mSwiping:Z

.field private final blacklist mSwipingStartThreshold:F

.field private final blacklist mTouchSlop:F


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/policy/DecorView;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "installedDecorView"    # Lcom/android/internal/policy/DecorView;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mTouchSlop:F

    .line 55
    iput-object p2, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mInstalledDecorView:Lcom/android/internal/policy/DecorView;

    .line 56
    iget v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mTouchSlop:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mSwipingStartThreshold:F

    .line 57
    return-void
.end method

.method private blacklist canScroll(Landroid/view/View;ZZFF)Z
    .registers 18
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkSelf"    # Z
    .param p3, "checkLeft"    # Z
    .param p4, "x"    # F
    .param p5, "y"    # F

    .line 181
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_6e

    .line 182
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 183
    .local v0, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v2

    .line 184
    .local v2, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v3

    .line 185
    .local v3, "scrollY":I
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 186
    .local v4, "count":I
    add-int/lit8 v5, v4, -0x1

    .local v5, "i":I
    :goto_16
    if-ltz v5, :cond_6e

    .line 187
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 189
    .local v7, "child":Landroid/view/View;
    int-to-float v6, v2

    add-float v6, p4, v6

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v6, v6, v8

    if-ltz v6, :cond_6b

    int-to-float v6, v2

    add-float v6, p4, v6

    .line 190
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v6, v6, v8

    if-gez v6, :cond_6b

    int-to-float v6, v3

    add-float v6, p5, v6

    .line 191
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v6, v6, v8

    if-ltz v6, :cond_6b

    int-to-float v6, v3

    add-float v6, p5, v6

    .line 192
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v6, v6, v8

    if-ltz v6, :cond_4d

    .line 194
    goto :goto_6b

    .line 198
    :cond_4d
    int-to-float v6, v2

    add-float v6, p4, v6

    .line 202
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    sub-float v10, v6, v8

    int-to-float v6, v3

    add-float v6, p5, v6

    .line 203
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    sub-float v11, v6, v8

    .line 198
    const/4 v8, 0x1

    move-object v6, p0

    move v9, p3

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->canScroll(Landroid/view/View;ZZFF)Z

    move-result v8

    if-eqz v8, :cond_6b

    .line 204
    return v1

    .line 186
    .end local v7    # "child":Landroid/view/View;
    :cond_6b
    :goto_6b
    add-int/lit8 v5, v5, -0x1

    goto :goto_16

    .line 209
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v2    # "scrollX":I
    .end local v3    # "scrollY":I
    .end local v4    # "count":I
    .end local v5    # "i":I
    :cond_6e
    if-eqz p2, :cond_7c

    if-eqz p3, :cond_74

    const/4 v0, -0x1

    goto :goto_75

    :cond_74
    move v0, v1

    :goto_75
    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_7c

    goto :goto_7d

    :cond_7c
    const/4 v1, 0x0

    :goto_7d
    return v1
.end method

.method private blacklist getIndexForValidPointer(Landroid/view/MotionEvent;)I
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 78
    iget v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 79
    .local v0, "pointerIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 83
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDiscardIntercept:Z

    .line 85
    :cond_c
    return v0
.end method

.method public static blacklist isEnabled(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 62
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 63
    return v2

    .line 67
    :cond_e
    const v1, 0x10103f3

    filled-new-array {v1}, [I

    move-result-object v1

    .line 68
    invoke-virtual {p0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 69
    .local v1, "windowAttr":Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    .line 70
    .local v3, "windowSwipeToDismiss":Z
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    if-lez v4, :cond_25

    .line 71
    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 73
    :cond_25
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    return v3
.end method

.method private blacklist resetMembers()V
    .registers 2

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDownX:F

    .line 119
    iput v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDownY:F

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mSwiping:Z

    .line 121
    iput-boolean v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDiscardIntercept:Z

    .line 122
    return-void
.end method

.method private blacklist updateDiscardIntercept(Landroid/view/MotionEvent;I)V
    .registers 11
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 101
    iget-boolean v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mSwiping:Z

    if-nez v0, :cond_5

    .line 103
    return-void

    .line 105
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDiscardIntercept:Z

    if-eqz v0, :cond_a

    .line 106
    return-void

    .line 108
    :cond_a
    iget v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    if-gez v0, :cond_17

    move v0, v1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    move v5, v0

    .line 109
    .local v5, "checkLeft":Z
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 110
    .local v6, "x":F
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 111
    .local v7, "y":F
    iget-object v3, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mInstalledDecorView:Lcom/android/internal/policy/DecorView;

    const/4 v4, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->canScroll(Landroid/view/View;ZZFF)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 112
    iput-boolean v1, v2, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDiscardIntercept:Z

    .line 114
    :cond_2d
    return-void
.end method

.method private blacklist updateSwiping(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 89
    iget-boolean v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mSwiping:Z

    if-eqz v0, :cond_5

    .line 90
    return-void

    .line 92
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDownX:F

    sub-float/2addr v0, v1

    .line 93
    .local v0, "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDownY:F

    sub-float/2addr v1, v2

    .line 95
    .local v1, "deltaY":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mTouchSlop:F

    iget v4, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mTouchSlop:F

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_38

    .line 96
    iget v2, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mSwipingStartThreshold:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_35

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_35

    const/4 v2, 0x1

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    :goto_36
    iput-boolean v2, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mSwiping:Z

    .line 98
    :cond_38
    return-void
.end method


# virtual methods
.method public blacklist isIntercepting()Z
    .registers 2

    .line 126
    iget-boolean v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDiscardIntercept:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mSwiping:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_5e

    :pswitch_8
    goto :goto_58

    .line 142
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 143
    .local v0, "associatedPointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mActivePointerId:I

    if-ne v2, v3, :cond_58

    .line 146
    if-nez v0, :cond_18

    const/4 v1, 0x1

    .line 147
    .local v1, "newActionIndex":I
    :cond_18
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mActivePointerId:I

    .line 148
    .end local v1    # "newActionIndex":I
    goto :goto_58

    .line 139
    .end local v0    # "associatedPointerIndex":I
    :pswitch_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mActivePointerId:I

    .line 140
    goto :goto_58

    .line 151
    :pswitch_2a
    iget-boolean v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDiscardIntercept:Z

    if-eqz v0, :cond_2f

    .line 152
    goto :goto_58

    .line 154
    :cond_2f
    invoke-direct {p0, p1}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->getIndexForValidPointer(Landroid/view/MotionEvent;)I

    move-result v0

    .line 155
    .local v0, "pointerIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_37

    .line 156
    goto :goto_58

    .line 158
    :cond_37
    invoke-direct {p0, p1}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->updateSwiping(Landroid/view/MotionEvent;)V

    .line 159
    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->updateDiscardIntercept(Landroid/view/MotionEvent;I)V

    .line 160
    goto :goto_58

    .line 163
    .end local v0    # "pointerIndex":I
    :pswitch_3e
    invoke-direct {p0}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->resetMembers()V

    goto :goto_58

    .line 133
    :pswitch_42
    invoke-direct {p0}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->resetMembers()V

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDownX:F

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mDownY:F

    .line 136
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/WearGestureInterceptionDetector;->mActivePointerId:I

    .line 137
    nop

    .line 166
    :cond_58
    :goto_58
    invoke-virtual {p0}, Lcom/android/internal/policy/WearGestureInterceptionDetector;->isIntercepting()Z

    move-result v0

    return v0

    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_42
        :pswitch_3e
        :pswitch_2a
        :pswitch_3e
        :pswitch_8
        :pswitch_1f
        :pswitch_9
    .end packed-switch
.end method
