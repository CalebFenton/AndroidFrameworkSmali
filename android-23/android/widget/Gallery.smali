.class public Landroid/widget/Gallery;
.super Landroid/widget/AbsSpinner;
.source "Gallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Gallery$FlingRunnable;,
        Landroid/widget/Gallery$LayoutParams;,
        Landroid/widget/Gallery$1;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "Gallery"

.field private static final localLOGV:Z


# instance fields
.field private mAnimationDuration:I

.field private mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field private mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mIsFirstScroll:Z

.field private mIsRtl:Z

.field private mLeftMost:I

.field private mReceivedInvokeKeyDown:Z

.field private mRightMost:I

.field private mSelectedCenterOffset:I

.field private mSelectedChild:Landroid/view/View;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field private mSuppressSelectionChanged:Z

.field private mUnselectedAlpha:F


# direct methods
.method static synthetic -get0(Landroid/widget/Gallery;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/widget/Gallery;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/widget/Gallery;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/widget/Gallery;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/Gallery;->mPaddingRight:I

    #@2
    return v0
.end method

.method static synthetic -get4(Landroid/widget/Gallery;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/widget/Gallery;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/widget/Gallery;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/widget/Gallery;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    #@2
    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/Gallery;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/Gallery;->dispatchUnpress()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/Gallery;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/widget/Gallery;->scrollIntoSlots()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 191
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 190
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 195
    const v0, 0x1010070

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 194
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
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 203
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@6
    .line 77
    iput v6, p0, Landroid/widget/Gallery;->mSpacing:I

    #@8
    .line 83
    const/16 v5, 0x190

    #@a
    iput v5, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    #@c
    .line 120
    new-instance v5, Landroid/widget/Gallery$FlingRunnable;

    #@e
    invoke-direct {v5, p0}, Landroid/widget/Gallery$FlingRunnable;-><init>(Landroid/widget/Gallery;)V

    #@11
    iput-object v5, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    #@13
    .line 126
    new-instance v5, Landroid/widget/Gallery$1;

    #@15
    invoke-direct {v5, p0}, Landroid/widget/Gallery$1;-><init>(Landroid/widget/Gallery;)V

    #@18
    iput-object v5, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    #@1a
    .line 151
    iput-boolean v7, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    #@1c
    .line 156
    iput-boolean v7, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    #@1e
    .line 182
    iput-boolean v7, p0, Landroid/widget/Gallery;->mIsRtl:Z

    #@20
    .line 205
    new-instance v5, Landroid/view/GestureDetector;

    #@22
    invoke-direct {v5, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    #@25
    iput-object v5, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    #@27
    .line 206
    iget-object v5, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    #@29
    invoke-virtual {v5, v7}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    #@2c
    .line 209
    sget-object v5, Lcom/android/internal/R$styleable;->Gallery:[I

    #@2e
    .line 208
    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@31
    move-result-object v0

    #@32
    .line 211
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    #@35
    move-result v2

    #@36
    .line 212
    .local v2, "index":I
    if-ltz v2, :cond_0

    #@38
    .line 213
    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->setGravity(I)V

    #@3b
    .line 217
    :cond_0
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    #@3e
    move-result v1

    #@3f
    .line 218
    .local v1, "animationDuration":I
    if-lez v1, :cond_1

    #@41
    .line 219
    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->setAnimationDuration(I)V

    #@44
    .line 223
    :cond_1
    const/4 v5, 0x2

    #@45
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@48
    move-result v3

    #@49
    .line 224
    .local v3, "spacing":I
    invoke-virtual {p0, v3}, Landroid/widget/Gallery;->setSpacing(I)V

    #@4c
    .line 227
    const/4 v5, 0x3

    #@4d
    const/high16 v6, 0x3f000000    # 0.5f

    #@4f
    .line 226
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@52
    move-result v4

    #@53
    .line 228
    .local v4, "unselectedAlpha":F
    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->setUnselectedAlpha(F)V

    #@56
    .line 230
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@59
    .line 234
    iget v5, p0, Landroid/widget/Gallery;->mGroupFlags:I

    #@5b
    or-int/lit16 v5, v5, 0x400

    #@5d
    iput v5, p0, Landroid/widget/Gallery;->mGroupFlags:I

    #@5f
    .line 236
    iget v5, p0, Landroid/widget/Gallery;->mGroupFlags:I

    #@61
    or-int/lit16 v5, v5, 0x800

    #@63
    iput v5, p0, Landroid/widget/Gallery;->mGroupFlags:I

    #@65
    .line 202
    return-void
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "duringLayout"    # Z

    #@0
    .prologue
    .line 936
    if-eqz p2, :cond_0

    #@2
    invoke-virtual {p0}, Landroid/widget/Gallery;->getMeasuredHeight()I

    #@5
    move-result v3

    #@6
    .line 937
    .local v3, "myHeight":I
    :goto_0
    if-eqz p2, :cond_1

    #@8
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@b
    move-result v1

    #@c
    .line 939
    .local v1, "childHeight":I
    :goto_1
    const/4 v2, 0x0

    #@d
    .line 941
    .local v2, "childTop":I
    iget v4, p0, Landroid/widget/Gallery;->mGravity:I

    #@f
    sparse-switch v4, :sswitch_data_0

    #@12
    .line 954
    :goto_2
    return v2

    #@13
    .line 936
    .end local v1    # "childHeight":I
    .end local v2    # "childTop":I
    .end local v3    # "myHeight":I
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Gallery;->getHeight()I

    #@16
    move-result v3

    #@17
    .restart local v3    # "myHeight":I
    goto :goto_0

    #@18
    .line 937
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@1b
    move-result v1

    #@1c
    .restart local v1    # "childHeight":I
    goto :goto_1

    #@1d
    .line 943
    .restart local v2    # "childTop":I
    :sswitch_0
    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    #@1f
    iget v2, v4, Landroid/graphics/Rect;->top:I

    #@21
    goto :goto_2

    #@22
    .line 946
    :sswitch_1
    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    #@24
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    #@26
    sub-int v4, v3, v4

    #@28
    .line 947
    iget-object v5, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    #@2a
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@2c
    .line 946
    sub-int/2addr v4, v5

    #@2d
    sub-int v0, v4, v1

    #@2f
    .line 948
    .local v0, "availableSpace":I
    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    #@31
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@33
    div-int/lit8 v5, v0, 0x2

    #@35
    add-int v2, v4, v5

    #@37
    .line 949
    goto :goto_2

    #@38
    .line 951
    .end local v0    # "availableSpace":I
    :sswitch_2
    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    #@3a
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    #@3c
    sub-int v4, v3, v4

    #@3e
    sub-int v2, v4, v1

    #@40
    .line 952
    goto :goto_2

    #@41
    .line 941
    nop

    #@42
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private detachOffScreenChildren(Z)V
    .locals 11
    .param p1, "toLeft"    # Z

    #@0
    .prologue
    .line 485
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    #@3
    move-result v7

    #@4
    .line 486
    .local v7, "numChildren":I
    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    #@6
    .line 487
    .local v2, "firstPosition":I
    const/4 v8, 0x0

    #@7
    .line 488
    .local v8, "start":I
    const/4 v1, 0x0

    #@8
    .line 490
    .local v1, "count":I
    if-eqz p1, :cond_5

    #@a
    .line 491
    iget v3, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    #@c
    .line 492
    .local v3, "galleryLeft":I
    const/4 v5, 0x0

    #@d
    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_0

    #@f
    .line 493
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    #@11
    if-eqz v9, :cond_3

    #@13
    add-int/lit8 v9, v7, -0x1

    #@15
    sub-int v6, v9, v5

    #@17
    .line 494
    .local v6, "n":I
    :goto_1
    invoke-virtual {p0, v6}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    #@1a
    move-result-object v0

    #@1b
    .line 495
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    #@1e
    move-result v9

    #@1f
    if-lt v9, v3, :cond_4

    #@21
    .line 503
    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "n":I
    :cond_0
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    #@23
    if-nez v9, :cond_1

    #@25
    .line 504
    const/4 v8, 0x0

    #@26
    .line 524
    .end local v3    # "galleryLeft":I
    :cond_1
    :goto_2
    invoke-virtual {p0, v8, v1}, Landroid/widget/Gallery;->detachViewsFromParent(II)V

    #@29
    .line 526
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    #@2b
    if-eq p1, v9, :cond_2

    #@2d
    .line 527
    iget v9, p0, Landroid/widget/Gallery;->mFirstPosition:I

    #@2f
    add-int/2addr v9, v1

    #@30
    iput v9, p0, Landroid/widget/Gallery;->mFirstPosition:I

    #@32
    .line 484
    :cond_2
    return-void

    #@33
    .line 493
    .restart local v3    # "galleryLeft":I
    :cond_3
    move v6, v5

    #@34
    .restart local v6    # "n":I
    goto :goto_1

    #@35
    .line 498
    .restart local v0    # "child":Landroid/view/View;
    :cond_4
    move v8, v6

    #@36
    .line 499
    add-int/lit8 v1, v1, 0x1

    #@38
    .line 500
    iget-object v9, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    #@3a
    add-int v10, v2, v6

    #@3c
    invoke-virtual {v9, v10, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    #@3f
    .line 492
    add-int/lit8 v5, v5, 0x1

    #@41
    goto :goto_0

    #@42
    .line 507
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "galleryLeft":I
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Gallery;->getWidth()I

    #@45
    move-result v9

    #@46
    iget v10, p0, Landroid/widget/Gallery;->mPaddingRight:I

    #@48
    sub-int v4, v9, v10

    #@4a
    .line 508
    .local v4, "galleryRight":I
    add-int/lit8 v5, v7, -0x1

    #@4c
    .restart local v5    # "i":I
    :goto_3
    if-ltz v5, :cond_6

    #@4e
    .line 509
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    #@50
    if-eqz v9, :cond_7

    #@52
    add-int/lit8 v9, v7, -0x1

    #@54
    sub-int v6, v9, v5

    #@56
    .line 510
    .restart local v6    # "n":I
    :goto_4
    invoke-virtual {p0, v6}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    #@59
    move-result-object v0

    #@5a
    .line 511
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@5d
    move-result v9

    #@5e
    if-gt v9, v4, :cond_8

    #@60
    .line 519
    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "n":I
    :cond_6
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    #@62
    if-eqz v9, :cond_1

    #@64
    .line 520
    const/4 v8, 0x0

    #@65
    goto :goto_2

    #@66
    .line 509
    :cond_7
    move v6, v5

    #@67
    .restart local v6    # "n":I
    goto :goto_4

    #@68
    .line 514
    .restart local v0    # "child":Landroid/view/View;
    :cond_8
    move v8, v6

    #@69
    .line 515
    add-int/lit8 v1, v1, 0x1

    #@6b
    .line 516
    iget-object v9, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    #@6d
    add-int v10, v2, v6

    #@6f
    invoke-virtual {v9, v10, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    #@72
    .line 508
    add-int/lit8 v5, v5, -0x1

    #@74
    goto :goto_3
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    #@0
    .prologue
    .line 1178
    const/4 v6, 0x0

    #@1
    .line 1180
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/Gallery;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1181
    iget-object v0, p0, Landroid/widget/Gallery;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    #@7
    iget-object v2, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    #@9
    .line 1182
    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    #@b
    move-object v1, p0

    #@c
    move-wide v4, p3

    #@d
    .line 1181
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    #@10
    move-result v6

    #@11
    .line 1185
    .end local v6    # "handled":Z
    :cond_0
    if-nez v6, :cond_1

    #@13
    .line 1186
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    #@15
    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    #@18
    iput-object v0, p0, Landroid/widget/Gallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    #@1a
    .line 1187
    invoke-super {p0, p0}, Landroid/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    #@1d
    move-result v6

    #@1e
    .line 1190
    :cond_1
    if-eqz v6, :cond_2

    #@20
    .line 1191
    const/4 v0, 0x0

    #@21
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->performHapticFeedback(I)Z

    #@24
    .line 1194
    :cond_2
    return v6
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1114
    if-eqz p1, :cond_0

    #@3
    .line 1115
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    #@6
    .line 1118
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->setPressed(Z)V

    #@9
    .line 1112
    return-void
.end method

.method private dispatchUnpress()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1123
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    #@4
    move-result v1

    #@5
    add-int/lit8 v0, v1, -0x1

    #@7
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@9
    .line 1124
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    #@10
    .line 1123
    add-int/lit8 v0, v0, -0x1

    #@12
    goto :goto_0

    #@13
    .line 1127
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->setPressed(Z)V

    #@16
    .line 1121
    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 1

    #@0
    .prologue
    .line 692
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 693
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeftRtl()V

    #@7
    .line 691
    :goto_0
    return-void

    #@8
    .line 695
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeftLtr()V

    #@b
    goto :goto_0
.end method

.method private fillToGalleryLeftLtr()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 731
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    #@3
    .line 732
    .local v3, "itemSpacing":I
    iget v2, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    #@5
    .line 735
    .local v2, "galleryLeft":I
    invoke-virtual {p0, v7}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    #@8
    move-result-object v4

    #@9
    .line 739
    .local v4, "prevIterationView":Landroid/view/View;
    if-eqz v4, :cond_0

    #@b
    .line 740
    iget v5, p0, Landroid/widget/Gallery;->mFirstPosition:I

    #@d
    add-int/lit8 v0, v5, -0x1

    #@f
    .line 741
    .local v0, "curPosition":I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    #@12
    move-result v5

    #@13
    sub-int v1, v5, v3

    #@15
    .line 749
    .local v1, "curRightEdge":I
    :goto_0
    if-le v1, v2, :cond_1

    #@17
    if-ltz v0, :cond_1

    #@19
    .line 750
    iget v5, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    #@1b
    sub-int v5, v0, v5

    #@1d
    invoke-direct {p0, v0, v5, v1, v7}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    #@20
    move-result-object v4

    #@21
    .line 754
    iput v0, p0, Landroid/widget/Gallery;->mFirstPosition:I

    #@23
    .line 757
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    #@26
    move-result v5

    #@27
    sub-int v1, v5, v3

    #@29
    .line 758
    add-int/lit8 v0, v0, -0x1

    #@2b
    goto :goto_0

    #@2c
    .line 744
    .end local v0    # "curPosition":I
    .end local v1    # "curRightEdge":I
    :cond_0
    const/4 v0, 0x0

    #@2d
    .line 745
    .restart local v0    # "curPosition":I
    iget v5, p0, Landroid/widget/Gallery;->mRight:I

    #@2f
    iget v6, p0, Landroid/widget/Gallery;->mLeft:I

    #@31
    sub-int/2addr v5, v6

    #@32
    iget v6, p0, Landroid/widget/Gallery;->mPaddingRight:I

    #@34
    sub-int v1, v5, v6

    #@36
    .line 746
    .restart local v1    # "curRightEdge":I
    const/4 v5, 0x1

    #@37
    iput-boolean v5, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    #@39
    goto :goto_0

    #@3a
    .line 730
    :cond_1
    return-void
.end method

.method private fillToGalleryLeftRtl()V
    .locals 9

    #@0
    .prologue
    .line 700
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    #@2
    .line 701
    .local v3, "itemSpacing":I
    iget v2, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    #@4
    .line 702
    .local v2, "galleryLeft":I
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    #@7
    move-result v4

    #@8
    .line 703
    .local v4, "numChildren":I
    iget v5, p0, Landroid/widget/Gallery;->mItemCount:I

    #@a
    .line 706
    .local v5, "numItems":I
    add-int/lit8 v7, v4, -0x1

    #@c
    invoke-virtual {p0, v7}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    #@f
    move-result-object v6

    #@10
    .line 710
    .local v6, "prevIterationView":Landroid/view/View;
    if-eqz v6, :cond_0

    #@12
    .line 711
    iget v7, p0, Landroid/widget/Gallery;->mFirstPosition:I

    #@14
    add-int v0, v7, v4

    #@16
    .line 712
    .local v0, "curPosition":I
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    #@19
    move-result v7

    #@1a
    sub-int v1, v7, v3

    #@1c
    .line 720
    .local v1, "curRightEdge":I
    :goto_0
    if-le v1, v2, :cond_1

    #@1e
    iget v7, p0, Landroid/widget/Gallery;->mItemCount:I

    #@20
    if-ge v0, v7, :cond_1

    #@22
    .line 721
    iget v7, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    #@24
    sub-int v7, v0, v7

    #@26
    .line 722
    const/4 v8, 0x0

    #@27
    .line 721
    invoke-direct {p0, v0, v7, v1, v8}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    #@2a
    move-result-object v6

    #@2b
    .line 725
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    #@2e
    move-result v7

    #@2f
    sub-int v1, v7, v3

    #@31
    .line 726
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_0

    #@34
    .line 715
    .end local v0    # "curPosition":I
    .end local v1    # "curRightEdge":I
    :cond_0
    iget v7, p0, Landroid/widget/Gallery;->mItemCount:I

    #@36
    add-int/lit8 v0, v7, -0x1

    #@38
    .restart local v0    # "curPosition":I
    iput v0, p0, Landroid/widget/Gallery;->mFirstPosition:I

    #@3a
    .line 716
    iget v7, p0, Landroid/widget/Gallery;->mRight:I

    #@3c
    iget v8, p0, Landroid/widget/Gallery;->mLeft:I

    #@3e
    sub-int/2addr v7, v8

    #@3f
    iget v8, p0, Landroid/widget/Gallery;->mPaddingRight:I

    #@41
    sub-int v1, v7, v8

    #@43
    .line 717
    .restart local v1    # "curRightEdge":I
    const/4 v7, 0x1

    #@44
    iput-boolean v7, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    #@46
    goto :goto_0

    #@47
    .line 699
    :cond_1
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 1

    #@0
    .prologue
    .line 763
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 764
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRightRtl()V

    #@7
    .line 762
    :goto_0
    return-void

    #@8
    .line 766
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRightLtr()V

    #@b
    goto :goto_0
.end method

.method private fillToGalleryRightLtr()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    .line 802
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    #@3
    .line 803
    .local v3, "itemSpacing":I
    iget v7, p0, Landroid/widget/Gallery;->mRight:I

    #@5
    iget v8, p0, Landroid/widget/Gallery;->mLeft:I

    #@7
    sub-int/2addr v7, v8

    #@8
    iget v8, p0, Landroid/widget/Gallery;->mPaddingRight:I

    #@a
    sub-int v2, v7, v8

    #@c
    .line 804
    .local v2, "galleryRight":I
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    #@f
    move-result v4

    #@10
    .line 805
    .local v4, "numChildren":I
    iget v5, p0, Landroid/widget/Gallery;->mItemCount:I

    #@12
    .line 808
    .local v5, "numItems":I
    add-int/lit8 v7, v4, -0x1

    #@14
    invoke-virtual {p0, v7}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    #@17
    move-result-object v6

    #@18
    .line 812
    .local v6, "prevIterationView":Landroid/view/View;
    if-eqz v6, :cond_0

    #@1a
    .line 813
    iget v7, p0, Landroid/widget/Gallery;->mFirstPosition:I

    #@1c
    add-int v1, v7, v4

    #@1e
    .line 814
    .local v1, "curPosition":I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    #@21
    move-result v7

    #@22
    add-int v0, v7, v3

    #@24
    .line 821
    .local v0, "curLeftEdge":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@26
    if-ge v1, v5, :cond_1

    #@28
    .line 822
    iget v7, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    #@2a
    sub-int v7, v1, v7

    #@2c
    invoke-direct {p0, v1, v7, v0, v9}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    #@2f
    move-result-object v6

    #@30
    .line 826
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    #@33
    move-result v7

    #@34
    add-int v0, v7, v3

    #@36
    .line 827
    add-int/lit8 v1, v1, 0x1

    #@38
    goto :goto_0

    #@39
    .line 816
    .end local v0    # "curLeftEdge":I
    .end local v1    # "curPosition":I
    :cond_0
    iget v7, p0, Landroid/widget/Gallery;->mItemCount:I

    #@3b
    add-int/lit8 v1, v7, -0x1

    #@3d
    .restart local v1    # "curPosition":I
    iput v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    #@3f
    .line 817
    iget v0, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    #@41
    .line 818
    .restart local v0    # "curLeftEdge":I
    iput-boolean v9, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    #@43
    goto :goto_0

    #@44
    .line 801
    :cond_1
    return-void
.end method

.method private fillToGalleryRightRtl()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 771
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    #@4
    .line 772
    .local v3, "itemSpacing":I
    iget v5, p0, Landroid/widget/Gallery;->mRight:I

    #@6
    iget v6, p0, Landroid/widget/Gallery;->mLeft:I

    #@8
    sub-int/2addr v5, v6

    #@9
    iget v6, p0, Landroid/widget/Gallery;->mPaddingRight:I

    #@b
    sub-int v2, v5, v6

    #@d
    .line 775
    .local v2, "galleryRight":I
    invoke-virtual {p0, v7}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v4

    #@11
    .line 779
    .local v4, "prevIterationView":Landroid/view/View;
    if-eqz v4, :cond_0

    #@13
    .line 780
    iget v5, p0, Landroid/widget/Gallery;->mFirstPosition:I

    #@15
    add-int/lit8 v1, v5, -0x1

    #@17
    .line 781
    .local v1, "curPosition":I
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    #@1a
    move-result v5

    #@1b
    add-int v0, v5, v3

    #@1d
    .line 788
    .local v0, "curLeftEdge":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@1f
    if-ltz v1, :cond_1

    #@21
    .line 789
    iget v5, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    #@23
    sub-int v5, v1, v5

    #@25
    invoke-direct {p0, v1, v5, v0, v8}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    #@28
    move-result-object v4

    #@29
    .line 793
    iput v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    #@2b
    .line 796
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    #@2e
    move-result v5

    #@2f
    add-int v0, v5, v3

    #@31
    .line 797
    add-int/lit8 v1, v1, -0x1

    #@33
    goto :goto_0

    #@34
    .line 783
    .end local v0    # "curLeftEdge":I
    .end local v1    # "curPosition":I
    :cond_0
    const/4 v1, 0x0

    #@35
    .line 784
    .restart local v1    # "curPosition":I
    iget v0, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    #@37
    .line 785
    .restart local v0    # "curLeftEdge":I
    iput-boolean v8, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    #@39
    goto :goto_0

    #@3a
    .line 770
    :cond_1
    return-void
.end method

.method private getCenterOfGallery()I
    .locals 2

    #@0
    .prologue
    .line 468
    invoke-virtual {p0}, Landroid/widget/Gallery;->getWidth()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    #@6
    sub-int/2addr v0, v1

    #@7
    iget v1, p0, Landroid/widget/Gallery;->mPaddingRight:I

    #@9
    sub-int/2addr v0, v1

    #@a
    div-int/lit8 v0, v0, 0x2

    #@c
    iget v1, p0, Landroid/widget/Gallery;->mPaddingLeft:I

    #@e
    add-int/2addr v0, v1

    #@f
    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 475
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    #@7
    move-result v1

    #@8
    div-int/lit8 v1, v1, 0x2

    #@a
    add-int/2addr v0, v1

    #@b
    return v0
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "x"    # I
    .param p4, "fromLeft"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 849
    iget-boolean v2, p0, Landroid/widget/Gallery;->mDataChanged:Z

    #@3
    if-nez v2, :cond_0

    #@5
    .line 850
    iget-object v2, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    #@7
    invoke-virtual {v2, p1}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    .line 851
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    #@d
    .line 853
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@10
    move-result v1

    #@11
    .line 856
    .local v1, "childLeft":I
    iget v2, p0, Landroid/widget/Gallery;->mRightMost:I

    #@13
    .line 857
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@16
    move-result v3

    #@17
    .line 856
    add-int/2addr v3, v1

    #@18
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@1b
    move-result v2

    #@1c
    iput v2, p0, Landroid/widget/Gallery;->mRightMost:I

    #@1e
    .line 858
    iget v2, p0, Landroid/widget/Gallery;->mLeftMost:I

    #@20
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    #@23
    move-result v2

    #@24
    iput v2, p0, Landroid/widget/Gallery;->mLeftMost:I

    #@26
    .line 861
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    #@29
    .line 863
    return-object v0

    #@2a
    .line 868
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childLeft":I
    :cond_0
    iget-object v2, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@2c
    invoke-interface {v2, p1, v3, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@2f
    move-result-object v0

    #@30
    .line 871
    .restart local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    #@33
    .line 873
    return-object v0
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 459
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    #@3
    move-result v1

    #@4
    add-int/lit8 v0, v1, -0x1

    #@6
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@8
    .line 460
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@f
    .line 459
    add-int/lit8 v0, v0, -0x1

    #@11
    goto :goto_0

    #@12
    .line 458
    :cond_0
    return-void
.end method

.method private onFinishedMovement()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 551
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 552
    iput-boolean v1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    #@7
    .line 555
    invoke-super {p0}, Landroid/widget/AbsSpinner;->selectionChanged()V

    #@a
    .line 557
    :cond_0
    iput v1, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    #@c
    .line 558
    invoke-virtual {p0}, Landroid/widget/Gallery;->invalidate()V

    #@f
    .line 550
    return-void
.end method

.method private scrollIntoSlots()V
    .locals 4

    #@0
    .prologue
    .line 537
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    iget-object v3, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    #@8
    if-nez v3, :cond_1

    #@a
    :cond_0
    return-void

    #@b
    .line 539
    :cond_1
    iget-object v3, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    #@d
    invoke-static {v3}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    #@10
    move-result v1

    #@11
    .line 540
    .local v1, "selectedCenter":I
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    #@14
    move-result v2

    #@15
    .line 542
    .local v2, "targetCenter":I
    sub-int v0, v2, v1

    #@17
    .line 543
    .local v0, "scrollAmount":I
    if-eqz v0, :cond_2

    #@19
    .line 544
    iget-object v3, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    #@1b
    invoke-virtual {v3, v0}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    #@1e
    .line 535
    :goto_0
    return-void

    #@1f
    .line 546
    :cond_2
    invoke-direct {p0}, Landroid/widget/Gallery;->onFinishedMovement()V

    #@22
    goto :goto_0
.end method

.method private scrollToChild(I)Z
    .locals 4
    .param p1, "childPosition"    # I

    #@0
    .prologue
    .line 1271
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 1273
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    #@6
    .line 1274
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    #@9
    move-result v2

    #@a
    invoke-static {v0}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    #@d
    move-result v3

    #@e
    sub-int v1, v2, v3

    #@10
    .line 1275
    .local v1, "distance":I
    iget-object v2, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    #@12
    invoke-virtual {v2, v1}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    #@15
    .line 1276
    const/4 v2, 0x1

    #@16
    return v2

    #@17
    .line 1279
    .end local v1    # "distance":I
    :cond_0
    const/4 v2, 0x0

    #@18
    return v2
.end method

.method private setSelectionToCenterChild()V
    .locals 10

    #@0
    .prologue
    .line 574
    iget-object v7, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    #@2
    .line 575
    .local v7, "selView":Landroid/view/View;
    iget-object v8, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    #@4
    if-nez v8, :cond_0

    #@6
    return-void

    #@7
    .line 577
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    #@a
    move-result v3

    #@b
    .line 580
    .local v3, "galleryCenter":I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    #@e
    move-result v8

    #@f
    if-gt v8, v3, :cond_1

    #@11
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    #@14
    move-result v8

    #@15
    if-lt v8, v3, :cond_1

    #@17
    .line 581
    return-void

    #@18
    .line 585
    :cond_1
    const v2, 0x7fffffff

    #@1b
    .line 586
    .local v2, "closestEdgeDistance":I
    const/4 v6, 0x0

    #@1c
    .line 587
    .local v6, "newSelectedChildIndex":I
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    #@1f
    move-result v8

    #@20
    add-int/lit8 v4, v8, -0x1

    #@22
    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    #@24
    .line 589
    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    #@27
    move-result-object v0

    #@28
    .line 591
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@2b
    move-result v8

    #@2c
    if-gt v8, v3, :cond_4

    #@2e
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    #@31
    move-result v8

    #@32
    if-lt v8, v3, :cond_4

    #@34
    .line 593
    move v6, v4

    #@35
    .line 605
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iget v8, p0, Landroid/widget/Gallery;->mFirstPosition:I

    #@37
    add-int v5, v8, v6

    #@39
    .line 607
    .local v5, "newPos":I
    iget v8, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    #@3b
    if-eq v5, v8, :cond_3

    #@3d
    .line 608
    invoke-virtual {p0, v5}, Landroid/widget/Gallery;->setSelectedPositionInt(I)V

    #@40
    .line 609
    invoke-virtual {p0, v5}, Landroid/widget/Gallery;->setNextSelectedPositionInt(I)V

    #@43
    .line 610
    invoke-virtual {p0}, Landroid/widget/Gallery;->checkSelectionChanged()V

    #@46
    .line 572
    :cond_3
    return-void

    #@47
    .line 597
    .end local v5    # "newPos":I
    .restart local v0    # "child":Landroid/view/View;
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@4a
    move-result v8

    #@4b
    sub-int/2addr v8, v3

    #@4c
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    #@4f
    move-result v8

    #@50
    .line 598
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    #@53
    move-result v9

    #@54
    sub-int/2addr v9, v3

    #@55
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    #@58
    move-result v9

    #@59
    .line 597
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    #@5c
    move-result v1

    #@5d
    .line 599
    .local v1, "childClosestEdgeDistance":I
    if-ge v1, v2, :cond_5

    #@5f
    .line 600
    move v2, v1

    #@60
    .line 601
    move v6, v4

    #@61
    .line 587
    :cond_5
    add-int/lit8 v4, v4, -0x1

    #@63
    goto :goto_0
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "offset"    # I
    .param p3, "x"    # I
    .param p4, "fromLeft"    # Z

    #@0
    .prologue
    .line 892
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v6

    #@4
    check-cast v6, Landroid/widget/Gallery$LayoutParams;

    #@6
    .line 893
    .local v6, "lp":Landroid/widget/Gallery$LayoutParams;
    if-nez v6, :cond_0

    #@8
    .line 894
    invoke-virtual {p0}, Landroid/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@b
    move-result-object v6

    #@c
    .end local v6    # "lp":Landroid/widget/Gallery$LayoutParams;
    check-cast v6, Landroid/widget/Gallery$LayoutParams;

    #@e
    .line 897
    .restart local v6    # "lp":Landroid/widget/Gallery$LayoutParams;
    :cond_0
    iget-boolean v8, p0, Landroid/widget/Gallery;->mIsRtl:Z

    #@10
    if-eq p4, v8, :cond_1

    #@12
    const/4 v8, -0x1

    #@13
    :goto_0
    const/4 v9, 0x1

    #@14
    invoke-virtual {p0, p1, v8, v6, v9}, Landroid/widget/Gallery;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    #@17
    .line 899
    if-nez p2, :cond_2

    #@19
    const/4 v8, 0x1

    #@1a
    :goto_1
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    #@1d
    .line 902
    iget v8, p0, Landroid/widget/Gallery;->mHeightMeasureSpec:I

    #@1f
    .line 903
    iget-object v9, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    #@21
    iget v9, v9, Landroid/graphics/Rect;->top:I

    #@23
    iget-object v10, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    #@25
    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    #@27
    add-int/2addr v9, v10

    #@28
    iget v10, v6, Landroid/widget/Gallery$LayoutParams;->height:I

    #@2a
    .line 902
    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    #@2d
    move-result v1

    #@2e
    .line 904
    .local v1, "childHeightSpec":I
    iget v8, p0, Landroid/widget/Gallery;->mWidthMeasureSpec:I

    #@30
    .line 905
    iget-object v9, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    #@32
    iget v9, v9, Landroid/graphics/Rect;->left:I

    #@34
    iget-object v10, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    #@36
    iget v10, v10, Landroid/graphics/Rect;->right:I

    #@38
    add-int/2addr v9, v10

    #@39
    iget v10, v6, Landroid/widget/Gallery$LayoutParams;->width:I

    #@3b
    .line 904
    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    #@3e
    move-result v5

    #@3f
    .line 908
    .local v5, "childWidthSpec":I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    #@42
    .line 914
    const/4 v8, 0x1

    #@43
    invoke-direct {p0, p1, v8}, Landroid/widget/Gallery;->calculateTop(Landroid/view/View;Z)I

    #@46
    move-result v4

    #@47
    .line 915
    .local v4, "childTop":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@4a
    move-result v8

    #@4b
    add-int v0, v4, v8

    #@4d
    .line 917
    .local v0, "childBottom":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@50
    move-result v7

    #@51
    .line 918
    .local v7, "width":I
    if-eqz p4, :cond_3

    #@53
    .line 919
    move v2, p3

    #@54
    .line 920
    .local v2, "childLeft":I
    add-int v3, v2, v7

    #@56
    .line 926
    .local v3, "childRight":I
    :goto_2
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    #@59
    .line 888
    return-void

    #@5a
    .line 897
    .end local v0    # "childBottom":I
    .end local v1    # "childHeightSpec":I
    .end local v2    # "childLeft":I
    .end local v3    # "childRight":I
    .end local v4    # "childTop":I
    .end local v5    # "childWidthSpec":I
    .end local v7    # "width":I
    :cond_1
    const/4 v8, 0x0

    #@5b
    goto :goto_0

    #@5c
    .line 899
    :cond_2
    const/4 v8, 0x0

    #@5d
    goto :goto_1

    #@5e
    .line 922
    .restart local v0    # "childBottom":I
    .restart local v1    # "childHeightSpec":I
    .restart local v4    # "childTop":I
    .restart local v5    # "childWidthSpec":I
    .restart local v7    # "width":I
    :cond_3
    sub-int v2, p3, v7

    #@60
    .line 923
    .restart local v2    # "childLeft":I
    move v3, p3

    #@61
    .restart local v3    # "childRight":I
    goto :goto_2
.end method

.method private updateSelectedItemMetadata()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1292
    iget-object v1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    #@4
    .line 1294
    .local v1, "oldSelectedChild":Landroid/view/View;
    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    #@6
    iget v3, p0, Landroid/widget/Gallery;->mFirstPosition:I

    #@8
    sub-int/2addr v2, v3

    #@9
    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    #@f
    .line 1295
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    #@11
    .line 1296
    return-void

    #@12
    .line 1299
    :cond_0
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    #@15
    .line 1300
    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    #@18
    .line 1302
    invoke-virtual {p0}, Landroid/widget/Gallery;->hasFocus()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 1303
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    #@21
    .line 1308
    :cond_1
    if-eqz v1, :cond_2

    #@23
    if-eq v1, v0, :cond_2

    #@25
    .line 1311
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    #@28
    .line 1315
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    #@2b
    .line 1290
    :cond_2
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 329
    instance-of v0, p1, Landroid/widget/Gallery$LayoutParams;

    #@2
    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    #@0
    .prologue
    .line 312
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    #@0
    .prologue
    .line 318
    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    #@2
    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    #@0
    .prologue
    .line 324
    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    #@2
    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1200
    invoke-virtual {p1, p0, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    #@0
    .prologue
    .line 1143
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1144
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    #@6
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    #@9
    .line 1140
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    #@0
    .prologue
    .line 1131
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x2

    #@1
    .line 347
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    #@3
    invoke-direct {v0, v1, v1}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    #@6
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 339
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    #@2
    invoke-virtual {p0}, Landroid/widget/Gallery;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 334
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    #@2
    invoke-direct {v0, p1}, Landroid/widget/Gallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@5
    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1371
    const-class v0, Landroid/widget/Gallery;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 3
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    #@0
    .prologue
    .line 1336
    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    #@2
    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    #@4
    sub-int v0, v1, v2

    #@6
    .line 1339
    .local v0, "selectedIndex":I
    if-gez v0, :cond_0

    #@8
    return p2

    #@9
    .line 1341
    :cond_0
    add-int/lit8 v1, p1, -0x1

    #@b
    if-ne p2, v1, :cond_1

    #@d
    .line 1343
    return v0

    #@e
    .line 1344
    :cond_1
    if-lt p2, v0, :cond_2

    #@10
    .line 1346
    add-int/lit8 v1, p2, 0x1

    #@12
    return v1

    #@13
    .line 1349
    :cond_2
    return p2
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 366
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "t"    # Landroid/view/animation/Transformation;

    #@0
    .prologue
    .line 303
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    #@3
    .line 304
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    #@5
    if-ne p1, v0, :cond_0

    #@7
    const/high16 v0, 0x3f800000    # 1.0f

    #@9
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    #@c
    .line 306
    const/4 v0, 0x1

    #@d
    return v0

    #@e
    .line 304
    :cond_0
    iget v0, p0, Landroid/widget/Gallery;->mUnselectedAlpha:F

    #@10
    goto :goto_0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    #@0
    .prologue
    .line 1150
    iget-object v0, p0, Landroid/widget/Gallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    #@2
    return-object v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 7
    .param p1, "motionToLeft"    # Z
    .param p2, "deltaX"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 421
    iget-boolean v5, p0, Landroid/widget/Gallery;->mIsRtl:Z

    #@3
    if-eq p1, v5, :cond_0

    #@5
    iget v5, p0, Landroid/widget/Gallery;->mItemCount:I

    #@7
    add-int/lit8 v3, v5, -0x1

    #@9
    .line 422
    .local v3, "extremeItemPosition":I
    :goto_0
    iget v5, p0, Landroid/widget/Gallery;->mFirstPosition:I

    #@b
    sub-int v5, v3, v5

    #@d
    invoke-virtual {p0, v5}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v1

    #@11
    .line 424
    .local v1, "extremeChild":Landroid/view/View;
    if-nez v1, :cond_1

    #@13
    .line 425
    return p2

    #@14
    .line 421
    .end local v1    # "extremeChild":Landroid/view/View;
    .end local v3    # "extremeItemPosition":I
    :cond_0
    const/4 v3, 0x0

    #@15
    .restart local v3    # "extremeItemPosition":I
    goto :goto_0

    #@16
    .line 428
    .restart local v1    # "extremeChild":Landroid/view/View;
    :cond_1
    invoke-static {v1}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    #@19
    move-result v2

    #@1a
    .line 429
    .local v2, "extremeChildCenter":I
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    #@1d
    move-result v4

    #@1e
    .line 431
    .local v4, "galleryCenter":I
    if-eqz p1, :cond_2

    #@20
    .line 432
    if-gt v2, v4, :cond_3

    #@22
    .line 435
    return v6

    #@23
    .line 438
    :cond_2
    if-lt v2, v4, :cond_3

    #@25
    .line 441
    return v6

    #@26
    .line 445
    :cond_3
    sub-int v0, v4, v2

    #@28
    .line 447
    .local v0, "centerDifference":I
    if-eqz p1, :cond_4

    #@2a
    .line 448
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    #@2d
    move-result v5

    #@2e
    .line 447
    :goto_1
    return v5

    #@2f
    .line 449
    :cond_4
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    #@32
    move-result v5

    #@33
    goto :goto_1
.end method

.method layout(IZ)V
    .locals 7
    .param p1, "delta"    # I
    .param p2, "animate"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 627
    invoke-virtual {p0}, Landroid/widget/Gallery;->isLayoutRtl()Z

    #@4
    move-result v4

    #@5
    iput-boolean v4, p0, Landroid/widget/Gallery;->mIsRtl:Z

    #@7
    .line 629
    iget-object v4, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    #@9
    iget v0, v4, Landroid/graphics/Rect;->left:I

    #@b
    .line 630
    .local v0, "childrenLeft":I
    iget v4, p0, Landroid/widget/Gallery;->mRight:I

    #@d
    iget v5, p0, Landroid/widget/Gallery;->mLeft:I

    #@f
    sub-int/2addr v4, v5

    #@10
    iget-object v5, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    #@12
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@14
    sub-int/2addr v4, v5

    #@15
    iget-object v5, p0, Landroid/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    #@17
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@19
    sub-int v1, v4, v5

    #@1b
    .line 632
    .local v1, "childrenWidth":I
    iget-boolean v4, p0, Landroid/widget/Gallery;->mDataChanged:Z

    #@1d
    if-eqz v4, :cond_0

    #@1f
    .line 633
    invoke-virtual {p0}, Landroid/widget/Gallery;->handleDataChanged()V

    #@22
    .line 637
    :cond_0
    iget v4, p0, Landroid/widget/Gallery;->mItemCount:I

    #@24
    if-nez v4, :cond_1

    #@26
    .line 638
    invoke-virtual {p0}, Landroid/widget/Gallery;->resetList()V

    #@29
    .line 639
    return-void

    #@2a
    .line 643
    :cond_1
    iget v4, p0, Landroid/widget/Gallery;->mNextSelectedPosition:I

    #@2c
    if-ltz v4, :cond_2

    #@2e
    .line 644
    iget v4, p0, Landroid/widget/Gallery;->mNextSelectedPosition:I

    #@30
    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->setSelectedPositionInt(I)V

    #@33
    .line 648
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Gallery;->recycleAllViews()V

    #@36
    .line 652
    invoke-virtual {p0}, Landroid/widget/Gallery;->detachAllViewsFromParent()V

    #@39
    .line 658
    iput v6, p0, Landroid/widget/Gallery;->mRightMost:I

    #@3b
    .line 659
    iput v6, p0, Landroid/widget/Gallery;->mLeftMost:I

    #@3d
    .line 667
    iget v4, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    #@3f
    iput v4, p0, Landroid/widget/Gallery;->mFirstPosition:I

    #@41
    .line 668
    iget v4, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    #@43
    const/4 v5, 0x1

    #@44
    invoke-direct {p0, v4, v6, v6, v5}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    #@47
    move-result-object v2

    #@48
    .line 671
    .local v2, "sel":Landroid/view/View;
    div-int/lit8 v4, v1, 0x2

    #@4a
    add-int/2addr v4, v0

    #@4b
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    #@4e
    move-result v5

    #@4f
    div-int/lit8 v5, v5, 0x2

    #@51
    sub-int/2addr v4, v5

    #@52
    .line 672
    iget v5, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    #@54
    .line 671
    add-int v3, v4, v5

    #@56
    .line 673
    .local v3, "selectedOffset":I
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@59
    .line 675
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRight()V

    #@5c
    .line 676
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeft()V

    #@5f
    .line 679
    iget-object v4, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    #@61
    invoke-virtual {v4}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    #@64
    .line 681
    invoke-virtual {p0}, Landroid/widget/Gallery;->invalidate()V

    #@67
    .line 682
    invoke-virtual {p0}, Landroid/widget/Gallery;->checkSelectionChanged()V

    #@6a
    .line 684
    iput-boolean v6, p0, Landroid/widget/Gallery;->mDataChanged:Z

    #@6c
    .line 685
    iput-boolean v6, p0, Landroid/widget/Gallery;->mNeedSync:Z

    #@6e
    .line 686
    iget v4, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    #@70
    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->setNextSelectedPositionInt(I)V

    #@73
    .line 688
    invoke-direct {p0}, Landroid/widget/Gallery;->updateSelectedItemMetadata()V

    #@76
    .line 625
    return-void
.end method

.method moveDirection(I)Z
    .locals 3
    .param p1, "direction"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1259
    invoke-virtual {p0}, Landroid/widget/Gallery;->isLayoutRtl()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    neg-int p1, p1

    #@8
    .line 1260
    :cond_0
    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    #@a
    add-int v0, v1, p1

    #@c
    .line 1262
    .local v0, "targetPosition":I
    iget v1, p0, Landroid/widget/Gallery;->mItemCount:I

    #@e
    if-lez v1, :cond_1

    #@10
    if-ltz v0, :cond_1

    #@12
    iget v1, p0, Landroid/widget/Gallery;->mItemCount:I

    #@14
    if-ge v0, v1, :cond_1

    #@16
    .line 1263
    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    #@18
    sub-int v1, v0, v1

    #@1a
    invoke-direct {p0, v1}, Landroid/widget/Gallery;->scrollToChild(I)Z

    #@1d
    .line 1264
    const/4 v1, 0x1

    #@1e
    return v1

    #@1f
    .line 1266
    :cond_1
    return v2
.end method

.method onCancel()V
    .locals 0

    #@0
    .prologue
    .line 1089
    invoke-virtual {p0}, Landroid/widget/Gallery;->onUp()V

    #@3
    .line 1088
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 1056
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    #@4
    invoke-virtual {v0, v1}, Landroid/widget/Gallery$FlingRunnable;->stop(Z)V

    #@7
    .line 1059
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@a
    move-result v0

    #@b
    float-to-int v0, v0

    #@c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@f
    move-result v1

    #@10
    float-to-int v1, v1

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/widget/Gallery;->pointToPosition(II)I

    #@14
    move-result v0

    #@15
    iput v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    #@17
    .line 1061
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    #@19
    if-ltz v0, :cond_0

    #@1b
    .line 1062
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    #@1d
    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    #@1f
    sub-int/2addr v0, v1

    #@20
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    #@26
    .line 1063
    iget-object v0, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    #@28
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    #@2b
    .line 1067
    :cond_0
    iput-boolean v2, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    #@2d
    .line 1070
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 997
    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1001
    iget-object v0, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    #@7
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@a
    .line 1004
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    #@c
    if-nez v0, :cond_0

    #@e
    iput-boolean v2, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    #@10
    .line 1008
    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    #@12
    neg-float v1, p3

    #@13
    float-to-int v1, v1

    #@14
    invoke-virtual {v0, v1}, Landroid/widget/Gallery$FlingRunnable;->startUsingVelocity(I)V

    #@17
    .line 1010
    return v2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1355
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    #@3
    .line 1362
    if-eqz p1, :cond_0

    #@5
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1363
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    #@b
    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    #@e
    .line 1364
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    #@10
    const/4 v1, 0x1

    #@11
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    #@14
    .line 1354
    :cond_0
    return-void
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
    .line 1377
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@5
    .line 1378
    iget v2, p0, Landroid/widget/Gallery;->mItemCount:I

    #@7
    if-le v2, v0, :cond_2

    #@9
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    #@c
    .line 1379
    invoke-virtual {p0}, Landroid/widget/Gallery;->isEnabled()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 1380
    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    #@14
    if-lez v0, :cond_0

    #@16
    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    #@18
    iget v1, p0, Landroid/widget/Gallery;->mItemCount:I

    #@1a
    add-int/lit8 v1, v1, -0x1

    #@1c
    if-ge v0, v1, :cond_0

    #@1e
    .line 1381
    const/16 v0, 0x1000

    #@20
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    #@23
    .line 1383
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Gallery;->isEnabled()Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_1

    #@29
    iget v0, p0, Landroid/widget/Gallery;->mItemCount:I

    #@2b
    if-lez v0, :cond_1

    #@2d
    iget v0, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    #@2f
    if-lez v0, :cond_1

    #@31
    .line 1384
    const/16 v0, 0x2000

    #@33
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    #@36
    .line 1376
    :cond_1
    return-void

    #@37
    :cond_2
    move v0, v1

    #@38
    .line 1378
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1209
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 1229
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 1212
    :sswitch_0
    const/4 v0, -0x1

    #@a
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->moveDirection(I)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 1213
    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->playSoundEffect(I)V

    #@13
    .line 1214
    return v1

    #@14
    .line 1218
    :sswitch_1
    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->moveDirection(I)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 1219
    const/4 v0, 0x3

    #@1b
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->playSoundEffect(I)V

    #@1e
    .line 1220
    return v1

    #@1f
    .line 1225
    :sswitch_2
    iput-boolean v1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    #@21
    goto :goto_0

    #@22
    .line 1209
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1234
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 1235
    iget-boolean v1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 1236
    iget v1, p0, Landroid/widget/Gallery;->mItemCount:I

    #@d
    if-lez v1, :cond_0

    #@f
    .line 1237
    iget-object v1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    #@11
    invoke-direct {p0, v1}, Landroid/widget/Gallery;->dispatchPress(Landroid/view/View;)V

    #@14
    .line 1238
    new-instance v1, Landroid/widget/Gallery$2;

    #@16
    invoke-direct {v1, p0}, Landroid/widget/Gallery$2;-><init>(Landroid/widget/Gallery;)V

    #@19
    .line 1243
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    #@1c
    move-result v2

    #@1d
    int-to-long v2, v2

    #@1e
    .line 1238
    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/Gallery;->postDelayed(Ljava/lang/Runnable;J)Z

    #@21
    .line 1245
    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    #@23
    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    #@25
    sub-int v0, v1, v2

    #@27
    .line 1246
    .local v0, "selectedIndex":I
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    #@2a
    move-result-object v1

    #@2b
    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    #@2d
    iget-object v3, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@2f
    .line 1247
    iget v4, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    #@31
    .line 1246
    invoke-interface {v3, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    #@34
    move-result-wide v4

    #@35
    invoke-virtual {p0, v1, v2, v4, v5}, Landroid/widget/Gallery;->performItemClick(Landroid/view/View;IJ)Z

    #@38
    .line 1252
    .end local v0    # "selectedIndex":I
    :cond_0
    iput-boolean v6, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    #@3a
    .line 1253
    const/4 v1, 0x1

    #@3b
    return v1

    #@3c
    .line 1255
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@3f
    move-result v1

    #@40
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 353
    invoke-super/range {p0 .. p5}, Landroid/widget/AbsSpinner;->onLayout(ZIIII)V

    #@4
    .line 359
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/widget/Gallery;->mInLayout:Z

    #@7
    .line 360
    invoke-virtual {p0, v1, v1}, Landroid/widget/Gallery;->layout(IZ)V

    #@a
    .line 361
    iput-boolean v1, p0, Landroid/widget/Gallery;->mInLayout:Z

    #@c
    .line 352
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1095
    iget v2, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    #@3
    if-gez v2, :cond_0

    #@5
    .line 1096
    return-void

    #@6
    .line 1099
    :cond_0
    invoke-virtual {p0, v3}, Landroid/widget/Gallery;->performHapticFeedback(I)Z

    #@9
    .line 1100
    iget v2, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    #@b
    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->getItemIdAtPosition(I)J

    #@e
    move-result-wide v0

    #@f
    .line 1101
    .local v0, "id":J
    iget-object v2, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    #@11
    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    #@13
    invoke-direct {p0, v2, v3, v0, v1}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    #@16
    .line 1093
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 1027
    iget-object v0, p0, Landroid/widget/Gallery;->mParent:Landroid/view/ViewParent;

    #@4
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@7
    .line 1031
    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    #@9
    if-nez v0, :cond_2

    #@b
    .line 1032
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 1038
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    #@11
    if-nez v0, :cond_0

    #@13
    iput-boolean v1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    #@15
    .line 1039
    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    #@17
    const-wide/16 v2, 0xfa

    #@19
    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/Gallery;->postDelayed(Ljava/lang/Runnable;J)Z

    #@1c
    .line 1046
    :cond_1
    :goto_0
    float-to-int v0, p3

    #@1d
    mul-int/lit8 v0, v0, -0x1

    #@1f
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->trackMotionScroll(I)V

    #@22
    .line 1048
    iput-boolean v4, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    #@24
    .line 1049
    return v1

    #@25
    .line 1042
    :cond_2
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    #@27
    if-eqz v0, :cond_1

    #@29
    iput-boolean v4, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    #@2b
    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 1107
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 977
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    #@3
    if-ltz v0, :cond_2

    #@5
    .line 980
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    #@7
    iget v1, p0, Landroid/widget/Gallery;->mFirstPosition:I

    #@9
    sub-int/2addr v0, v1

    #@a
    invoke-direct {p0, v0}, Landroid/widget/Gallery;->scrollToChild(I)Z

    #@d
    .line 983
    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    #@f
    if-nez v0, :cond_0

    #@11
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    #@13
    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    #@15
    if-ne v0, v1, :cond_1

    #@17
    .line 984
    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    #@19
    iget v1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    #@1b
    iget-object v2, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@1d
    .line 985
    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    #@1f
    .line 984
    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    #@22
    move-result-wide v2

    #@23
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/Gallery;->performItemClick(Landroid/view/View;IJ)Z

    #@26
    .line 988
    :cond_1
    const/4 v0, 0x1

    #@27
    return v0

    #@28
    .line 991
    :cond_2
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 961
    iget-object v2, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    #@2
    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@5
    move-result v1

    #@6
    .line 963
    .local v1, "retValue":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@9
    move-result v0

    #@a
    .line 964
    .local v0, "action":I
    const/4 v2, 0x1

    #@b
    if-ne v0, v2, :cond_1

    #@d
    .line 966
    invoke-virtual {p0}, Landroid/widget/Gallery;->onUp()V

    #@10
    .line 971
    :cond_0
    :goto_0
    return v1

    #@11
    .line 967
    :cond_1
    const/4 v2, 0x3

    #@12
    if-ne v0, v2, :cond_0

    #@14
    .line 968
    invoke-virtual {p0}, Landroid/widget/Gallery;->onCancel()V

    #@17
    goto :goto_0
.end method

.method onUp()V
    .locals 1

    #@0
    .prologue
    .line 1078
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    #@2
    invoke-static {v0}, Landroid/widget/Gallery$FlingRunnable;->-get0(Landroid/widget/Gallery$FlingRunnable;)Landroid/widget/Scroller;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1079
    invoke-direct {p0}, Landroid/widget/Gallery;->scrollIntoSlots()V

    #@f
    .line 1082
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->dispatchUnpress()V

    #@12
    .line 1076
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1392
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1393
    const/4 v1, 0x1

    #@8
    return v1

    #@9
    .line 1395
    :cond_0
    sparse-switch p1, :sswitch_data_0

    #@c
    .line 1409
    return v3

    #@d
    .line 1397
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/Gallery;->isEnabled()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    iget v1, p0, Landroid/widget/Gallery;->mItemCount:I

    #@15
    if-lez v1, :cond_1

    #@17
    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    #@19
    iget v2, p0, Landroid/widget/Gallery;->mItemCount:I

    #@1b
    add-int/lit8 v2, v2, -0x1

    #@1d
    if-ge v1, v2, :cond_1

    #@1f
    .line 1398
    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    #@21
    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    #@23
    sub-int v0, v1, v2

    #@25
    .line 1399
    .local v0, "currentChildIndex":I
    add-int/lit8 v1, v0, 0x1

    #@27
    invoke-direct {p0, v1}, Landroid/widget/Gallery;->scrollToChild(I)Z

    #@2a
    move-result v1

    #@2b
    return v1

    #@2c
    .line 1401
    .end local v0    # "currentChildIndex":I
    :cond_1
    return v3

    #@2d
    .line 1403
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/Gallery;->isEnabled()Z

    #@30
    move-result v1

    #@31
    if-eqz v1, :cond_2

    #@33
    iget v1, p0, Landroid/widget/Gallery;->mItemCount:I

    #@35
    if-lez v1, :cond_2

    #@37
    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    #@39
    if-lez v1, :cond_2

    #@3b
    .line 1404
    iget v1, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    #@3d
    iget v2, p0, Landroid/widget/Gallery;->mFirstPosition:I

    #@3f
    sub-int v0, v1, v2

    #@41
    .line 1405
    .restart local v0    # "currentChildIndex":I
    add-int/lit8 v1, v0, -0x1

    #@43
    invoke-direct {p0, v1}, Landroid/widget/Gallery;->scrollToChild(I)Z

    #@46
    move-result v1

    #@47
    return v1

    #@48
    .line 1407
    .end local v0    # "currentChildIndex":I
    :cond_2
    return v3

    #@49
    .line 1395
    nop

    #@4a
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method selectionChanged()V
    .locals 1

    #@0
    .prologue
    .line 563
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 564
    invoke-super {p0}, Landroid/widget/AbsSpinner;->selectionChanged()V

    #@7
    .line 562
    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .param p1, "animationDurationMillis"    # I

    #@0
    .prologue
    .line 275
    iput p1, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    #@2
    .line 274
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .param p1, "shouldCallback"    # Z

    #@0
    .prologue
    .line 249
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    #@2
    .line 248
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .param p1, "shouldCallback"    # Z

    #@0
    .prologue
    .line 262
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    #@2
    .line 261
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    #@0
    .prologue
    .line 1328
    iget v0, p0, Landroid/widget/Gallery;->mGravity:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 1329
    iput p1, p0, Landroid/widget/Gallery;->mGravity:I

    #@6
    .line 1330
    invoke-virtual {p0}, Landroid/widget/Gallery;->requestLayout()V

    #@9
    .line 1326
    :cond_0
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0
    .param p1, "position"    # I

    #@0
    .prologue
    .line 1284
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setSelectedPositionInt(I)V

    #@3
    .line 1287
    invoke-direct {p0}, Landroid/widget/Gallery;->updateSelectedItemMetadata()V

    #@6
    .line 1283
    return-void
.end method

.method public setSpacing(I)V
    .locals 0
    .param p1, "spacing"    # I

    #@0
    .prologue
    .line 286
    iput p1, p0, Landroid/widget/Gallery;->mSpacing:I

    #@2
    .line 285
    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0
    .param p1, "unselectedAlpha"    # F

    #@0
    .prologue
    .line 297
    iput p1, p0, Landroid/widget/Gallery;->mUnselectedAlpha:F

    #@2
    .line 296
    return-void
.end method

.method public showContextMenu()Z
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1168
    invoke-virtual {p0}, Landroid/widget/Gallery;->isPressed()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    #@9
    if-ltz v2, :cond_0

    #@b
    .line 1169
    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    #@d
    iget v3, p0, Landroid/widget/Gallery;->mFirstPosition:I

    #@f
    sub-int v0, v2, v3

    #@11
    .line 1170
    .local v0, "index":I
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->getChildAt(I)Landroid/view/View;

    #@14
    move-result-object v1

    #@15
    .line 1171
    .local v1, "v":Landroid/view/View;
    iget v2, p0, Landroid/widget/Gallery;->mSelectedPosition:I

    #@17
    iget-wide v4, p0, Landroid/widget/Gallery;->mSelectedRowId:J

    #@19
    invoke-direct {p0, v1, v2, v4, v5}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    #@1c
    move-result v2

    #@1d
    return v2

    #@1e
    .line 1174
    .end local v0    # "index":I
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    return v3
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4
    .param p1, "originalView"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1156
    invoke-virtual {p0, p1}, Landroid/widget/Gallery;->getPositionForView(Landroid/view/View;)I

    #@4
    move-result v2

    #@5
    .line 1157
    .local v2, "longPressPosition":I
    if-gez v2, :cond_0

    #@7
    .line 1158
    return v3

    #@8
    .line 1161
    :cond_0
    iget-object v3, p0, Landroid/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@a
    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    #@d
    move-result-wide v0

    #@e
    .line 1162
    .local v0, "longPressId":J
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    #@11
    move-result v3

    #@12
    return v3
.end method

.method trackMotionScroll(I)V
    .locals 8
    .param p1, "deltaX"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 377
    invoke-virtual {p0}, Landroid/widget/Gallery;->getChildCount()I

    #@4
    move-result v6

    #@5
    if-nez v6, :cond_0

    #@7
    .line 378
    return-void

    #@8
    .line 381
    :cond_0
    if-gez p1, :cond_3

    #@a
    const/4 v5, 0x1

    #@b
    .line 383
    .local v5, "toLeft":Z
    :goto_0
    invoke-virtual {p0, v5, p1}, Landroid/widget/Gallery;->getLimitedMotionScrollAmount(ZI)I

    #@e
    move-result v3

    #@f
    .line 384
    .local v3, "limitedDeltaX":I
    if-eq v3, p1, :cond_1

    #@11
    .line 386
    iget-object v6, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    #@13
    invoke-static {v6, v7}, Landroid/widget/Gallery$FlingRunnable;->-wrap0(Landroid/widget/Gallery$FlingRunnable;Z)V

    #@16
    .line 387
    invoke-direct {p0}, Landroid/widget/Gallery;->onFinishedMovement()V

    #@19
    .line 390
    :cond_1
    invoke-direct {p0, v3}, Landroid/widget/Gallery;->offsetChildrenLeftAndRight(I)V

    #@1c
    .line 392
    invoke-direct {p0, v5}, Landroid/widget/Gallery;->detachOffScreenChildren(Z)V

    #@1f
    .line 394
    if-eqz v5, :cond_4

    #@21
    .line 396
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRight()V

    #@24
    .line 403
    :goto_1
    iget-object v6, p0, Landroid/widget/Gallery;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    #@26
    invoke-virtual {v6}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    #@29
    .line 405
    invoke-direct {p0}, Landroid/widget/Gallery;->setSelectionToCenterChild()V

    #@2c
    .line 407
    iget-object v4, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    #@2e
    .line 408
    .local v4, "selChild":Landroid/view/View;
    if-eqz v4, :cond_2

    #@30
    .line 409
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    #@33
    move-result v1

    #@34
    .line 410
    .local v1, "childLeft":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    #@37
    move-result v6

    #@38
    div-int/lit8 v0, v6, 0x2

    #@3a
    .line 411
    .local v0, "childCenter":I
    invoke-virtual {p0}, Landroid/widget/Gallery;->getWidth()I

    #@3d
    move-result v6

    #@3e
    div-int/lit8 v2, v6, 0x2

    #@40
    .line 412
    .local v2, "galleryCenter":I
    add-int v6, v1, v0

    #@42
    sub-int/2addr v6, v2

    #@43
    iput v6, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    #@45
    .line 415
    .end local v0    # "childCenter":I
    .end local v1    # "childLeft":I
    .end local v2    # "galleryCenter":I
    :cond_2
    invoke-virtual {p0, v7, v7, v7, v7}, Landroid/widget/Gallery;->onScrollChanged(IIII)V

    #@48
    .line 417
    invoke-virtual {p0}, Landroid/widget/Gallery;->invalidate()V

    #@4b
    .line 375
    return-void

    #@4c
    .line 381
    .end local v3    # "limitedDeltaX":I
    .end local v4    # "selChild":Landroid/view/View;
    .end local v5    # "toLeft":Z
    :cond_3
    const/4 v5, 0x0

    #@4d
    .restart local v5    # "toLeft":Z
    goto :goto_0

    #@4e
    .line 399
    .restart local v3    # "limitedDeltaX":I
    :cond_4
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeft()V

    #@51
    goto :goto_1
.end method
