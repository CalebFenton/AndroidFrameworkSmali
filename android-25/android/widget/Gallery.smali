.class public Landroid/widget/Gallery;
.super Landroid/widget/AbsSpinner;
.source "Gallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Gallery$1;,
        Landroid/widget/Gallery$FlingRunnable;,
        Landroid/widget/Gallery$LayoutParams;
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
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/widget/Gallery;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

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
    .line 192
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 196
    const v0, 0x1010070

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 200
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 199
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
    .line 204
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@6
    .line 78
    iput v6, p0, Landroid/widget/Gallery;->mSpacing:I

    #@8
    .line 84
    const/16 v5, 0x190

    #@a
    iput v5, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    #@c
    .line 121
    new-instance v5, Landroid/widget/Gallery$FlingRunnable;

    #@e
    invoke-direct {v5, p0}, Landroid/widget/Gallery$FlingRunnable;-><init>(Landroid/widget/Gallery;)V

    #@11
    iput-object v5, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    #@13
    .line 127
    new-instance v5, Landroid/widget/Gallery$1;

    #@15
    invoke-direct {v5, p0}, Landroid/widget/Gallery$1;-><init>(Landroid/widget/Gallery;)V

    #@18
    iput-object v5, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    #@1a
    .line 152
    iput-boolean v7, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    #@1c
    .line 157
    iput-boolean v7, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    #@1e
    .line 183
    iput-boolean v7, p0, Landroid/widget/Gallery;->mIsRtl:Z

    #@20
    .line 207
    sget-object v5, Lcom/android/internal/R$styleable;->Gallery:[I

    #@22
    .line 206
    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@25
    move-result-object v0

    #@26
    .line 209
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    #@29
    move-result v2

    #@2a
    .line 210
    .local v2, "index":I
    if-ltz v2, :cond_0

    #@2c
    .line 211
    invoke-virtual {p0, v2}, Landroid/widget/Gallery;->setGravity(I)V

    #@2f
    .line 215
    :cond_0
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    #@32
    move-result v1

    #@33
    .line 216
    .local v1, "animationDuration":I
    if-lez v1, :cond_1

    #@35
    .line 217
    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->setAnimationDuration(I)V

    #@38
    .line 221
    :cond_1
    const/4 v5, 0x2

    #@39
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@3c
    move-result v3

    #@3d
    .line 222
    .local v3, "spacing":I
    invoke-virtual {p0, v3}, Landroid/widget/Gallery;->setSpacing(I)V

    #@40
    .line 225
    const/4 v5, 0x3

    #@41
    const/high16 v6, 0x3f000000    # 0.5f

    #@43
    .line 224
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@46
    move-result v4

    #@47
    .line 226
    .local v4, "unselectedAlpha":F
    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->setUnselectedAlpha(F)V

    #@4a
    .line 228
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@4d
    .line 232
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@4f
    or-int/lit16 v5, v5, 0x400

    #@51
    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@53
    .line 234
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@55
    or-int/lit16 v5, v5, 0x800

    #@57
    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    #@59
    .line 203
    return-void
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "duringLayout"    # Z

    #@0
    .prologue
    .line 944
    if-eqz p2, :cond_0

    #@2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    #@5
    move-result v3

    #@6
    .line 945
    .local v3, "myHeight":I
    :goto_0
    if-eqz p2, :cond_1

    #@8
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@b
    move-result v1

    #@c
    .line 947
    .local v1, "childHeight":I
    :goto_1
    const/4 v2, 0x0

    #@d
    .line 949
    .local v2, "childTop":I
    iget v4, p0, Landroid/widget/Gallery;->mGravity:I

    #@f
    sparse-switch v4, :sswitch_data_0

    #@12
    .line 962
    :goto_2
    return v2

    #@13
    .line 944
    .end local v1    # "childHeight":I
    .end local v2    # "childTop":I
    .end local v3    # "myHeight":I
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    #@16
    move-result v3

    #@17
    .restart local v3    # "myHeight":I
    goto :goto_0

    #@18
    .line 945
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@1b
    move-result v1

    #@1c
    .restart local v1    # "childHeight":I
    goto :goto_1

    #@1d
    .line 951
    .restart local v2    # "childTop":I
    :sswitch_0
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@1f
    iget v2, v4, Landroid/graphics/Rect;->top:I

    #@21
    goto :goto_2

    #@22
    .line 954
    :sswitch_1
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@24
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    #@26
    sub-int v4, v3, v4

    #@28
    .line 955
    iget-object v5, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@2a
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@2c
    .line 954
    sub-int/2addr v4, v5

    #@2d
    sub-int v0, v4, v1

    #@2f
    .line 956
    .local v0, "availableSpace":I
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@31
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@33
    div-int/lit8 v5, v0, 0x2

    #@35
    add-int v2, v4, v5

    #@37
    .line 957
    goto :goto_2

    #@38
    .line 959
    .end local v0    # "availableSpace":I
    :sswitch_2
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@3a
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    #@3c
    sub-int v4, v3, v4

    #@3e
    sub-int v2, v4, v1

    #@40
    .line 960
    goto :goto_2

    #@41
    .line 949
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
    .line 493
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@3
    move-result v7

    #@4
    .line 494
    .local v7, "numChildren":I
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    #@6
    .line 495
    .local v2, "firstPosition":I
    const/4 v8, 0x0

    #@7
    .line 496
    .local v8, "start":I
    const/4 v1, 0x0

    #@8
    .line 498
    .local v1, "count":I
    if-eqz p1, :cond_5

    #@a
    .line 499
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    #@c
    .line 500
    .local v3, "galleryLeft":I
    const/4 v5, 0x0

    #@d
    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_0

    #@f
    .line 501
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    #@11
    if-eqz v9, :cond_3

    #@13
    add-int/lit8 v9, v7, -0x1

    #@15
    sub-int v6, v9, v5

    #@17
    .line 502
    .local v6, "n":I
    :goto_1
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@1a
    move-result-object v0

    #@1b
    .line 503
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    #@1e
    move-result v9

    #@1f
    if-lt v9, v3, :cond_4

    #@21
    .line 511
    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "n":I
    :cond_0
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    #@23
    if-nez v9, :cond_1

    #@25
    .line 512
    const/4 v8, 0x0

    #@26
    .line 532
    .end local v3    # "galleryLeft":I
    :cond_1
    :goto_2
    invoke-virtual {p0, v8, v1}, Landroid/view/ViewGroup;->detachViewsFromParent(II)V

    #@29
    .line 534
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    #@2b
    if-eq p1, v9, :cond_2

    #@2d
    .line 535
    iget v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    #@2f
    add-int/2addr v9, v1

    #@30
    iput v9, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    #@32
    .line 492
    :cond_2
    return-void

    #@33
    .restart local v3    # "galleryLeft":I
    :cond_3
    move v6, v5

    #@34
    .line 501
    goto :goto_1

    #@35
    .line 506
    .restart local v0    # "child":Landroid/view/View;
    .restart local v6    # "n":I
    :cond_4
    move v8, v6

    #@36
    .line 507
    add-int/lit8 v1, v1, 0x1

    #@38
    .line 508
    iget-object v9, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    #@3a
    add-int v10, v2, v6

    #@3c
    invoke-virtual {v9, v10, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    #@3f
    .line 500
    add-int/lit8 v5, v5, 0x1

    #@41
    goto :goto_0

    #@42
    .line 515
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "galleryLeft":I
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    #@45
    move-result v9

    #@46
    iget v10, p0, Landroid/view/View;->mPaddingRight:I

    #@48
    sub-int v4, v9, v10

    #@4a
    .line 516
    .local v4, "galleryRight":I
    add-int/lit8 v5, v7, -0x1

    #@4c
    .restart local v5    # "i":I
    :goto_3
    if-ltz v5, :cond_6

    #@4e
    .line 517
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    #@50
    if-eqz v9, :cond_7

    #@52
    add-int/lit8 v9, v7, -0x1

    #@54
    sub-int v6, v9, v5

    #@56
    .line 518
    .restart local v6    # "n":I
    :goto_4
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@59
    move-result-object v0

    #@5a
    .line 519
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@5d
    move-result v9

    #@5e
    if-gt v9, v4, :cond_8

    #@60
    .line 527
    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "n":I
    :cond_6
    iget-boolean v9, p0, Landroid/widget/Gallery;->mIsRtl:Z

    #@62
    if-eqz v9, :cond_1

    #@64
    .line 528
    const/4 v8, 0x0

    #@65
    goto :goto_2

    #@66
    :cond_7
    move v6, v5

    #@67
    .line 517
    goto :goto_4

    #@68
    .line 522
    .restart local v0    # "child":Landroid/view/View;
    .restart local v6    # "n":I
    :cond_8
    move v8, v6

    #@69
    .line 523
    add-int/lit8 v1, v1, 0x1

    #@6b
    .line 524
    iget-object v9, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    #@6d
    add-int v10, v2, v6

    #@6f
    invoke-virtual {v9, v10, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    #@72
    .line 516
    add-int/lit8 v5, v5, -0x1

    #@74
    goto :goto_3
.end method

.method private dispatchLongPress(Landroid/view/View;IJFFZ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "useOffsets"    # Z

    #@0
    .prologue
    .line 1207
    const/4 v6, 0x0

    #@1
    .line 1209
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1210
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    #@7
    iget-object v2, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    #@9
    .line 1211
    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    #@b
    move-object v1, p0

    #@c
    move-wide v4, p3

    #@d
    .line 1210
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    #@10
    move-result v6

    #@11
    .line 1214
    .end local v6    # "handled":Z
    :cond_0
    if-nez v6, :cond_1

    #@13
    .line 1215
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    #@15
    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    #@18
    iput-object v0, p0, Landroid/widget/Gallery;->mContextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;

    #@1a
    .line 1217
    if-eqz p7, :cond_3

    #@1c
    .line 1218
    invoke-super {p0, p1, p5, p6}, Landroid/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;FF)Z

    #@1f
    move-result v6

    #@20
    .line 1224
    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    #@22
    .line 1225
    const/4 v0, 0x0

    #@23
    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    #@26
    .line 1228
    :cond_2
    return v6

    #@27
    .line 1220
    :cond_3
    invoke-super {p0, p0}, Landroid/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    #@2a
    move-result v6

    #@2b
    .local v6, "handled":Z
    goto :goto_0
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1122
    if-eqz p1, :cond_0

    #@3
    .line 1123
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    #@6
    .line 1126
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    #@9
    .line 1120
    return-void
.end method

.method private dispatchUnpress()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1131
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@4
    move-result v1

    #@5
    add-int/lit8 v0, v1, -0x1

    #@7
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@9
    .line 1132
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    #@10
    .line 1131
    add-int/lit8 v0, v0, -0x1

    #@12
    goto :goto_0

    #@13
    .line 1135
    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    #@16
    .line 1129
    return-void
.end method

.method private fillToGalleryLeft()V
    .locals 1

    #@0
    .prologue
    .line 700
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 701
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeftRtl()V

    #@7
    .line 699
    :goto_0
    return-void

    #@8
    .line 703
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
    .line 739
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    #@3
    .line 740
    .local v3, "itemSpacing":I
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    #@5
    .line 743
    .local v2, "galleryLeft":I
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@8
    move-result-object v4

    #@9
    .line 747
    .local v4, "prevIterationView":Landroid/view/View;
    if-eqz v4, :cond_0

    #@b
    .line 748
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    #@d
    add-int/lit8 v0, v5, -0x1

    #@f
    .line 749
    .local v0, "curPosition":I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    #@12
    move-result v5

    #@13
    sub-int v1, v5, v3

    #@15
    .line 757
    .local v1, "curRightEdge":I
    :goto_0
    if-le v1, v2, :cond_1

    #@17
    if-ltz v0, :cond_1

    #@19
    .line 758
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@1b
    sub-int v5, v0, v5

    #@1d
    invoke-direct {p0, v0, v5, v1, v7}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    #@20
    move-result-object v4

    #@21
    .line 762
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    #@23
    .line 765
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    #@26
    move-result v5

    #@27
    sub-int v1, v5, v3

    #@29
    .line 766
    add-int/lit8 v0, v0, -0x1

    #@2b
    goto :goto_0

    #@2c
    .line 752
    .end local v0    # "curPosition":I
    .end local v1    # "curRightEdge":I
    :cond_0
    const/4 v0, 0x0

    #@2d
    .line 753
    .restart local v0    # "curPosition":I
    iget v5, p0, Landroid/view/View;->mRight:I

    #@2f
    iget v6, p0, Landroid/view/View;->mLeft:I

    #@31
    sub-int/2addr v5, v6

    #@32
    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    #@34
    sub-int v1, v5, v6

    #@36
    .line 754
    .restart local v1    # "curRightEdge":I
    const/4 v5, 0x1

    #@37
    iput-boolean v5, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    #@39
    goto :goto_0

    #@3a
    .line 738
    :cond_1
    return-void
.end method

.method private fillToGalleryLeftRtl()V
    .locals 9

    #@0
    .prologue
    .line 708
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    #@2
    .line 709
    .local v3, "itemSpacing":I
    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    #@4
    .line 710
    .local v2, "galleryLeft":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@7
    move-result v4

    #@8
    .line 711
    .local v4, "numChildren":I
    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    #@a
    .line 714
    .local v5, "numItems":I
    add-int/lit8 v7, v4, -0x1

    #@c
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@f
    move-result-object v6

    #@10
    .line 718
    .local v6, "prevIterationView":Landroid/view/View;
    if-eqz v6, :cond_0

    #@12
    .line 719
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    #@14
    add-int v0, v7, v4

    #@16
    .line 720
    .local v0, "curPosition":I
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    #@19
    move-result v7

    #@1a
    sub-int v1, v7, v3

    #@1c
    .line 728
    .local v1, "curRightEdge":I
    :goto_0
    if-le v1, v2, :cond_1

    #@1e
    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    #@20
    if-ge v0, v7, :cond_1

    #@22
    .line 729
    iget v7, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@24
    sub-int v7, v0, v7

    #@26
    .line 730
    const/4 v8, 0x0

    #@27
    .line 729
    invoke-direct {p0, v0, v7, v1, v8}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    #@2a
    move-result-object v6

    #@2b
    .line 733
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    #@2e
    move-result v7

    #@2f
    sub-int v1, v7, v3

    #@31
    .line 734
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_0

    #@34
    .line 723
    .end local v0    # "curPosition":I
    .end local v1    # "curRightEdge":I
    :cond_0
    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    #@36
    add-int/lit8 v0, v7, -0x1

    #@38
    .restart local v0    # "curPosition":I
    iput v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    #@3a
    .line 724
    iget v7, p0, Landroid/view/View;->mRight:I

    #@3c
    iget v8, p0, Landroid/view/View;->mLeft:I

    #@3e
    sub-int/2addr v7, v8

    #@3f
    iget v8, p0, Landroid/view/View;->mPaddingRight:I

    #@41
    sub-int v1, v7, v8

    #@43
    .line 725
    .restart local v1    # "curRightEdge":I
    const/4 v7, 0x1

    #@44
    iput-boolean v7, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    #@46
    goto :goto_0

    #@47
    .line 707
    :cond_1
    return-void
.end method

.method private fillToGalleryRight()V
    .locals 1

    #@0
    .prologue
    .line 771
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsRtl:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 772
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRightRtl()V

    #@7
    .line 770
    :goto_0
    return-void

    #@8
    .line 774
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
    .line 810
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    #@3
    .line 811
    .local v3, "itemSpacing":I
    iget v7, p0, Landroid/view/View;->mRight:I

    #@5
    iget v8, p0, Landroid/view/View;->mLeft:I

    #@7
    sub-int/2addr v7, v8

    #@8
    iget v8, p0, Landroid/view/View;->mPaddingRight:I

    #@a
    sub-int v2, v7, v8

    #@c
    .line 812
    .local v2, "galleryRight":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@f
    move-result v4

    #@10
    .line 813
    .local v4, "numChildren":I
    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    #@12
    .line 816
    .local v5, "numItems":I
    add-int/lit8 v7, v4, -0x1

    #@14
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@17
    move-result-object v6

    #@18
    .line 820
    .local v6, "prevIterationView":Landroid/view/View;
    if-eqz v6, :cond_0

    #@1a
    .line 821
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    #@1c
    add-int v1, v7, v4

    #@1e
    .line 822
    .local v1, "curPosition":I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    #@21
    move-result v7

    #@22
    add-int v0, v7, v3

    #@24
    .line 829
    .local v0, "curLeftEdge":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@26
    if-ge v1, v5, :cond_1

    #@28
    .line 830
    iget v7, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@2a
    sub-int v7, v1, v7

    #@2c
    invoke-direct {p0, v1, v7, v0, v9}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    #@2f
    move-result-object v6

    #@30
    .line 834
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    #@33
    move-result v7

    #@34
    add-int v0, v7, v3

    #@36
    .line 835
    add-int/lit8 v1, v1, 0x1

    #@38
    goto :goto_0

    #@39
    .line 824
    .end local v0    # "curLeftEdge":I
    .end local v1    # "curPosition":I
    :cond_0
    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    #@3b
    add-int/lit8 v1, v7, -0x1

    #@3d
    .restart local v1    # "curPosition":I
    iput v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    #@3f
    .line 825
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    #@41
    .line 826
    .restart local v0    # "curLeftEdge":I
    iput-boolean v9, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    #@43
    goto :goto_0

    #@44
    .line 809
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
    .line 779
    iget v3, p0, Landroid/widget/Gallery;->mSpacing:I

    #@4
    .line 780
    .local v3, "itemSpacing":I
    iget v5, p0, Landroid/view/View;->mRight:I

    #@6
    iget v6, p0, Landroid/view/View;->mLeft:I

    #@8
    sub-int/2addr v5, v6

    #@9
    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    #@b
    sub-int v2, v5, v6

    #@d
    .line 783
    .local v2, "galleryRight":I
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v4

    #@11
    .line 787
    .local v4, "prevIterationView":Landroid/view/View;
    if-eqz v4, :cond_0

    #@13
    .line 788
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    #@15
    add-int/lit8 v1, v5, -0x1

    #@17
    .line 789
    .local v1, "curPosition":I
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    #@1a
    move-result v5

    #@1b
    add-int v0, v5, v3

    #@1d
    .line 796
    .local v0, "curLeftEdge":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@1f
    if-ltz v1, :cond_1

    #@21
    .line 797
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@23
    sub-int v5, v1, v5

    #@25
    invoke-direct {p0, v1, v5, v0, v8}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    #@28
    move-result-object v4

    #@29
    .line 801
    iput v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    #@2b
    .line 804
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    #@2e
    move-result v5

    #@2f
    add-int v0, v5, v3

    #@31
    .line 805
    add-int/lit8 v1, v1, -0x1

    #@33
    goto :goto_0

    #@34
    .line 791
    .end local v0    # "curLeftEdge":I
    .end local v1    # "curPosition":I
    :cond_0
    const/4 v1, 0x0

    #@35
    .line 792
    .restart local v1    # "curPosition":I
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    #@37
    .line 793
    .restart local v0    # "curLeftEdge":I
    iput-boolean v8, p0, Landroid/widget/Gallery;->mShouldStopFling:Z

    #@39
    goto :goto_0

    #@3a
    .line 778
    :cond_1
    return-void
.end method

.method private getCenterOfGallery()I
    .locals 2

    #@0
    .prologue
    .line 476
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    #@6
    sub-int/2addr v0, v1

    #@7
    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    #@9
    sub-int/2addr v0, v1

    #@a
    div-int/lit8 v0, v0, 0x2

    #@c
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

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
    .line 483
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
    .line 857
    iget-boolean v2, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    #@3
    if-nez v2, :cond_0

    #@5
    .line 858
    iget-object v2, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    #@7
    invoke-virtual {v2, p1}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    .line 859
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    #@d
    .line 861
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@10
    move-result v1

    #@11
    .line 864
    .local v1, "childLeft":I
    iget v2, p0, Landroid/widget/Gallery;->mRightMost:I

    #@13
    .line 865
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@16
    move-result v3

    #@17
    .line 864
    add-int/2addr v3, v1

    #@18
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@1b
    move-result v2

    #@1c
    iput v2, p0, Landroid/widget/Gallery;->mRightMost:I

    #@1e
    .line 866
    iget v2, p0, Landroid/widget/Gallery;->mLeftMost:I

    #@20
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    #@23
    move-result v2

    #@24
    iput v2, p0, Landroid/widget/Gallery;->mLeftMost:I

    #@26
    .line 869
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    #@29
    .line 871
    return-object v0

    #@2a
    .line 876
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childLeft":I
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@2c
    invoke-interface {v2, p1, v3, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@2f
    move-result-object v0

    #@30
    .line 879
    .restart local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    #@33
    .line 881
    return-object v0
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 467
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@3
    move-result v1

    #@4
    add-int/lit8 v0, v1, -0x1

    #@6
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@8
    .line 468
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@f
    .line 467
    add-int/lit8 v0, v0, -0x1

    #@11
    goto :goto_0

    #@12
    .line 466
    :cond_0
    return-void
.end method

.method private onFinishedMovement()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 559
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 560
    iput-boolean v1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    #@7
    .line 563
    invoke-super {p0}, Landroid/widget/AbsSpinner;->selectionChanged()V

    #@a
    .line 565
    :cond_0
    iput v1, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    #@c
    .line 566
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@f
    .line 558
    return-void
.end method

.method private scrollIntoSlots()V
    .locals 4

    #@0
    .prologue
    .line 545
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

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
    .line 547
    :cond_1
    iget-object v3, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    #@d
    invoke-static {v3}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    #@10
    move-result v1

    #@11
    .line 548
    .local v1, "selectedCenter":I
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    #@14
    move-result v2

    #@15
    .line 550
    .local v2, "targetCenter":I
    sub-int v0, v2, v1

    #@17
    .line 551
    .local v0, "scrollAmount":I
    if-eqz v0, :cond_2

    #@19
    .line 552
    iget-object v3, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    #@1b
    invoke-virtual {v3, v0}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    #@1e
    .line 543
    :goto_0
    return-void

    #@1f
    .line 554
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
    .line 1305
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 1307
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    #@6
    .line 1308
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
    .line 1309
    .local v1, "distance":I
    iget-object v2, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    #@12
    invoke-virtual {v2, v1}, Landroid/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    #@15
    .line 1310
    const/4 v2, 0x1

    #@16
    return v2

    #@17
    .line 1313
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
    .line 582
    iget-object v7, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    #@2
    .line 583
    .local v7, "selView":Landroid/view/View;
    iget-object v8, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    #@4
    if-nez v8, :cond_0

    #@6
    return-void

    #@7
    .line 585
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    #@a
    move-result v3

    #@b
    .line 588
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
    .line 589
    return-void

    #@18
    .line 593
    :cond_1
    const v2, 0x7fffffff

    #@1b
    .line 594
    .local v2, "closestEdgeDistance":I
    const/4 v6, 0x0

    #@1c
    .line 595
    .local v6, "newSelectedChildIndex":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@1f
    move-result v8

    #@20
    add-int/lit8 v4, v8, -0x1

    #@22
    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    #@24
    .line 597
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@27
    move-result-object v0

    #@28
    .line 599
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
    .line 601
    move v6, v4

    #@35
    .line 613
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    #@37
    add-int v5, v8, v6

    #@39
    .line 615
    .local v5, "newPos":I
    iget v8, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@3b
    if-eq v5, v8, :cond_3

    #@3d
    .line 616
    invoke-virtual {p0, v5}, Landroid/widget/Gallery;->setSelectedPositionInt(I)V

    #@40
    .line 617
    invoke-virtual {p0, v5}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    #@43
    .line 618
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    #@46
    .line 580
    :cond_3
    return-void

    #@47
    .line 605
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
    .line 606
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
    .line 605
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    #@5c
    move-result v1

    #@5d
    .line 607
    .local v1, "childClosestEdgeDistance":I
    if-ge v1, v2, :cond_5

    #@5f
    .line 608
    move v2, v1

    #@60
    .line 609
    move v6, v4

    #@61
    .line 595
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
    .line 900
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v6

    #@4
    check-cast v6, Landroid/widget/Gallery$LayoutParams;

    #@6
    .line 901
    .local v6, "lp":Landroid/widget/Gallery$LayoutParams;
    if-nez v6, :cond_0

    #@8
    .line 902
    invoke-virtual {p0}, Landroid/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@b
    move-result-object v6

    #@c
    .end local v6    # "lp":Landroid/widget/Gallery$LayoutParams;
    check-cast v6, Landroid/widget/Gallery$LayoutParams;

    #@e
    .line 905
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
    invoke-virtual {p0, p1, v8, v6, v9}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    #@17
    .line 907
    if-nez p2, :cond_2

    #@19
    const/4 v8, 0x1

    #@1a
    :goto_1
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    #@1d
    .line 910
    iget v8, p0, Landroid/widget/AbsSpinner;->mHeightMeasureSpec:I

    #@1f
    .line 911
    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@21
    iget v9, v9, Landroid/graphics/Rect;->top:I

    #@23
    iget-object v10, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@25
    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    #@27
    add-int/2addr v9, v10

    #@28
    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@2a
    .line 910
    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    #@2d
    move-result v1

    #@2e
    .line 912
    .local v1, "childHeightSpec":I
    iget v8, p0, Landroid/widget/AbsSpinner;->mWidthMeasureSpec:I

    #@30
    .line 913
    iget-object v9, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@32
    iget v9, v9, Landroid/graphics/Rect;->left:I

    #@34
    iget-object v10, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@36
    iget v10, v10, Landroid/graphics/Rect;->right:I

    #@38
    add-int/2addr v9, v10

    #@39
    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@3b
    .line 912
    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    #@3e
    move-result v5

    #@3f
    .line 916
    .local v5, "childWidthSpec":I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    #@42
    .line 922
    const/4 v8, 0x1

    #@43
    invoke-direct {p0, p1, v8}, Landroid/widget/Gallery;->calculateTop(Landroid/view/View;Z)I

    #@46
    move-result v4

    #@47
    .line 923
    .local v4, "childTop":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@4a
    move-result v8

    #@4b
    add-int v0, v4, v8

    #@4d
    .line 925
    .local v0, "childBottom":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@50
    move-result v7

    #@51
    .line 926
    .local v7, "width":I
    if-eqz p4, :cond_3

    #@53
    .line 927
    move v2, p3

    #@54
    .line 928
    .local v2, "childLeft":I
    add-int v3, p3, v7

    #@56
    .line 934
    .local v3, "childRight":I
    :goto_2
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    #@59
    .line 896
    return-void

    #@5a
    .line 905
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
    .line 907
    :cond_2
    const/4 v8, 0x0

    #@5d
    goto :goto_1

    #@5e
    .line 930
    .restart local v0    # "childBottom":I
    .restart local v1    # "childHeightSpec":I
    .restart local v4    # "childTop":I
    .restart local v5    # "childWidthSpec":I
    .restart local v7    # "width":I
    :cond_3
    sub-int v2, p3, v7

    #@60
    .line 931
    .restart local v2    # "childLeft":I
    move v3, p3

    #@61
    .restart local v3    # "childRight":I
    goto :goto_2
.end method

.method private showContextMenuForChildInternal(Landroid/view/View;FFZ)Z
    .locals 9
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "useOffsets"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1176
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    #@4
    move-result v3

    #@5
    .line 1177
    .local v3, "longPressPosition":I
    if-gez v3, :cond_0

    #@7
    .line 1178
    return v0

    #@8
    .line 1181
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@a
    invoke-interface {v0, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    #@d
    move-result-wide v4

    #@e
    .local v4, "longPressId":J
    move-object v1, p0

    #@f
    move-object v2, p1

    #@10
    move v6, p2

    #@11
    move v7, p3

    #@12
    move v8, p4

    #@13
    .line 1182
    invoke-direct/range {v1 .. v8}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJFFZ)Z

    #@16
    move-result v0

    #@17
    return v0
.end method

.method private showContextMenuInternal(FFZ)Z
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "useOffsets"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1196
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@9
    if-ltz v1, :cond_0

    #@b
    .line 1197
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@d
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    #@f
    sub-int v0, v1, v3

    #@11
    .line 1198
    .local v0, "index":I
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@14
    move-result-object v2

    #@15
    .line 1199
    .local v2, "v":Landroid/view/View;
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@17
    iget-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    #@19
    move-object v1, p0

    #@1a
    move v6, p1

    #@1b
    move v7, p2

    #@1c
    move v8, p3

    #@1d
    invoke-direct/range {v1 .. v8}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJFFZ)Z

    #@20
    move-result v1

    #@21
    return v1

    #@22
    .line 1202
    .end local v0    # "index":I
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    return v3
.end method

.method private updateSelectedItemMetadata()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1326
    iget-object v1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    #@4
    .line 1328
    .local v1, "oldSelectedChild":Landroid/view/View;
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@6
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    #@8
    sub-int/2addr v2, v3

    #@9
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    #@f
    .line 1329
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    #@11
    .line 1330
    return-void

    #@12
    .line 1333
    :cond_0
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    #@15
    .line 1334
    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    #@18
    .line 1336
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 1337
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    #@21
    .line 1342
    :cond_1
    if-eqz v1, :cond_2

    #@23
    if-eq v1, v0, :cond_2

    #@25
    .line 1345
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    #@28
    .line 1349
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    #@2b
    .line 1324
    :cond_2
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 337
    instance-of v0, p1, Landroid/widget/Gallery$LayoutParams;

    #@2
    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    #@0
    .prologue
    .line 320
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    #@0
    .prologue
    .line 326
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@2
    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    #@0
    .prologue
    .line 332
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

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
    .line 1234
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
    .line 1151
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1152
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    #@6
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    #@9
    .line 1148
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    #@0
    .prologue
    .line 1139
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    #@0
    .prologue
    const/4 v1, -0x2

    #@1
    .line 355
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
    .line 347
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    #@2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

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
    .line 342
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
    .line 1405
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
    .line 1370
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@2
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    #@4
    sub-int v0, v1, v2

    #@6
    .line 1373
    .local v0, "selectedIndex":I
    if-gez v0, :cond_0

    #@8
    return p2

    #@9
    .line 1375
    :cond_0
    add-int/lit8 v1, p1, -0x1

    #@b
    if-ne p2, v1, :cond_1

    #@d
    .line 1377
    return v0

    #@e
    .line 1378
    :cond_1
    if-lt p2, v0, :cond_2

    #@10
    .line 1380
    add-int/lit8 v1, p2, 0x1

    #@12
    return v1

    #@13
    .line 1383
    :cond_2
    return p2
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 374
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
    .line 311
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    #@3
    .line 312
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    #@5
    if-ne p1, v0, :cond_0

    #@7
    const/high16 v0, 0x3f800000    # 1.0f

    #@9
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    #@c
    .line 314
    const/4 v0, 0x1

    #@d
    return v0

    #@e
    .line 312
    :cond_0
    iget v0, p0, Landroid/widget/Gallery;->mUnselectedAlpha:F

    #@10
    goto :goto_0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    #@0
    .prologue
    .line 1158
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
    .line 429
    iget-boolean v5, p0, Landroid/widget/Gallery;->mIsRtl:Z

    #@3
    if-eq p1, v5, :cond_0

    #@5
    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    #@7
    add-int/lit8 v3, v5, -0x1

    #@9
    .line 430
    .local v3, "extremeItemPosition":I
    :goto_0
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    #@b
    sub-int v5, v3, v5

    #@d
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v1

    #@11
    .line 432
    .local v1, "extremeChild":Landroid/view/View;
    if-nez v1, :cond_1

    #@13
    .line 433
    return p2

    #@14
    .line 429
    .end local v1    # "extremeChild":Landroid/view/View;
    .end local v3    # "extremeItemPosition":I
    :cond_0
    const/4 v3, 0x0

    #@15
    .restart local v3    # "extremeItemPosition":I
    goto :goto_0

    #@16
    .line 436
    .restart local v1    # "extremeChild":Landroid/view/View;
    :cond_1
    invoke-static {v1}, Landroid/widget/Gallery;->getCenterOfView(Landroid/view/View;)I

    #@19
    move-result v2

    #@1a
    .line 437
    .local v2, "extremeChildCenter":I
    invoke-direct {p0}, Landroid/widget/Gallery;->getCenterOfGallery()I

    #@1d
    move-result v4

    #@1e
    .line 439
    .local v4, "galleryCenter":I
    if-eqz p1, :cond_2

    #@20
    .line 440
    if-gt v2, v4, :cond_3

    #@22
    .line 443
    return v6

    #@23
    .line 446
    :cond_2
    if-lt v2, v4, :cond_3

    #@25
    .line 449
    return v6

    #@26
    .line 453
    :cond_3
    sub-int v0, v4, v2

    #@28
    .line 455
    .local v0, "centerDifference":I
    if-eqz p1, :cond_4

    #@2a
    .line 456
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    #@2d
    move-result v5

    #@2e
    .line 455
    :goto_1
    return v5

    #@2f
    .line 457
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
    .line 635
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    #@4
    move-result v4

    #@5
    iput-boolean v4, p0, Landroid/widget/Gallery;->mIsRtl:Z

    #@7
    .line 637
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@9
    iget v0, v4, Landroid/graphics/Rect;->left:I

    #@b
    .line 638
    .local v0, "childrenLeft":I
    iget v4, p0, Landroid/view/View;->mRight:I

    #@d
    iget v5, p0, Landroid/view/View;->mLeft:I

    #@f
    sub-int/2addr v4, v5

    #@10
    iget-object v5, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@12
    iget v5, v5, Landroid/graphics/Rect;->left:I

    #@14
    sub-int/2addr v4, v5

    #@15
    iget-object v5, p0, Landroid/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    #@17
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@19
    sub-int v1, v4, v5

    #@1b
    .line 640
    .local v1, "childrenWidth":I
    iget-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    #@1d
    if-eqz v4, :cond_0

    #@1f
    .line 641
    invoke-virtual {p0}, Landroid/widget/AdapterView;->handleDataChanged()V

    #@22
    .line 645
    :cond_0
    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    #@24
    if-nez v4, :cond_1

    #@26
    .line 646
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->resetList()V

    #@29
    .line 647
    return-void

    #@2a
    .line 651
    :cond_1
    iget v4, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    #@2c
    if-ltz v4, :cond_2

    #@2e
    .line 652
    iget v4, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    #@30
    invoke-virtual {p0, v4}, Landroid/widget/Gallery;->setSelectedPositionInt(I)V

    #@33
    .line 656
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->recycleAllViews()V

    #@36
    .line 660
    invoke-virtual {p0}, Landroid/view/ViewGroup;->detachAllViewsFromParent()V

    #@39
    .line 666
    iput v6, p0, Landroid/widget/Gallery;->mRightMost:I

    #@3b
    .line 667
    iput v6, p0, Landroid/widget/Gallery;->mLeftMost:I

    #@3d
    .line 675
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@3f
    iput v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    #@41
    .line 676
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@43
    const/4 v5, 0x1

    #@44
    invoke-direct {p0, v4, v6, v6, v5}, Landroid/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    #@47
    move-result-object v2

    #@48
    .line 679
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
    .line 680
    iget v5, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    #@54
    .line 679
    add-int v3, v4, v5

    #@56
    .line 681
    .local v3, "selectedOffset":I
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@59
    .line 683
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRight()V

    #@5c
    .line 684
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeft()V

    #@5f
    .line 687
    iget-object v4, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    #@61
    invoke-virtual {v4}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    #@64
    .line 689
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@67
    .line 690
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    #@6a
    .line 692
    iput-boolean v6, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    #@6c
    .line 693
    iput-boolean v6, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    #@6e
    .line 694
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@70
    invoke-virtual {p0, v4}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    #@73
    .line 696
    invoke-direct {p0}, Landroid/widget/Gallery;->updateSelectedItemMetadata()V

    #@76
    .line 633
    return-void
.end method

.method moveDirection(I)Z
    .locals 3
    .param p1, "direction"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1293
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    neg-int p1, p1

    #@8
    .line 1294
    :cond_0
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@a
    add-int v0, v1, p1

    #@c
    .line 1296
    .local v0, "targetPosition":I
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    #@e
    if-lez v1, :cond_1

    #@10
    if-ltz v0, :cond_1

    #@12
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    #@14
    if-ge v0, v1, :cond_1

    #@16
    .line 1297
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    #@18
    sub-int v1, v0, v1

    #@1a
    invoke-direct {p0, v1}, Landroid/widget/Gallery;->scrollToChild(I)Z

    #@1d
    .line 1298
    const/4 v1, 0x1

    #@1e
    return v1

    #@1f
    .line 1300
    :cond_1
    return v2
.end method

.method protected onAttachedToWindow()V
    .locals 2

    #@0
    .prologue
    .line 239
    invoke-super {p0}, Landroid/widget/AbsSpinner;->onAttachedToWindow()V

    #@3
    .line 241
    iget-object v0, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 242
    new-instance v0, Landroid/view/GestureDetector;

    #@9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@c
    move-result-object v1

    #@d
    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    #@10
    iput-object v0, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    #@12
    .line 243
    iget-object v0, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    #@14
    const/4 v1, 0x1

    #@15
    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    #@18
    .line 238
    :cond_0
    return-void
.end method

.method onCancel()V
    .locals 0

    #@0
    .prologue
    .line 1097
    invoke-virtual {p0}, Landroid/widget/Gallery;->onUp()V

    #@3
    .line 1096
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
    .line 1064
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    #@4
    invoke-virtual {v0, v1}, Landroid/widget/Gallery$FlingRunnable;->stop(Z)V

    #@7
    .line 1067
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
    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsSpinner;->pointToPosition(II)I

    #@14
    move-result v0

    #@15
    iput v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    #@17
    .line 1069
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    #@19
    if-ltz v0, :cond_0

    #@1b
    .line 1070
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    #@1d
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    #@1f
    sub-int/2addr v0, v1

    #@20
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@23
    move-result-object v0

    #@24
    iput-object v0, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    #@26
    .line 1071
    iget-object v0, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    #@28
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    #@2b
    .line 1075
    :cond_0
    iput-boolean v2, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    #@2d
    .line 1078
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
    .line 1005
    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1009
    iget-object v0, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    #@7
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@a
    .line 1012
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    #@c
    if-nez v0, :cond_0

    #@e
    iput-boolean v2, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    #@10
    .line 1016
    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    #@12
    neg-float v1, p3

    #@13
    float-to-int v1, v1

    #@14
    invoke-virtual {v0, v1}, Landroid/widget/Gallery$FlingRunnable;->startUsingVelocity(I)V

    #@17
    .line 1018
    return v2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 1389
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    #@3
    .line 1396
    if-eqz p1, :cond_0

    #@5
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1397
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    #@b
    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    #@e
    .line 1398
    iget-object v0, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    #@10
    const/4 v1, 0x1

    #@11
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    #@14
    .line 1388
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
    .line 1411
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@5
    .line 1412
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    #@7
    if-le v2, v0, :cond_2

    #@9
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    #@c
    .line 1413
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 1414
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    #@14
    if-lez v0, :cond_0

    #@16
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@18
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    #@1a
    add-int/lit8 v1, v1, -0x1

    #@1c
    if-ge v0, v1, :cond_0

    #@1e
    .line 1415
    const/16 v0, 0x1000

    #@20
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    #@23
    .line 1417
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_1

    #@29
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    #@2b
    if-lez v0, :cond_1

    #@2d
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@2f
    if-lez v0, :cond_1

    #@31
    .line 1418
    const/16 v0, 0x2000

    #@33
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    #@36
    .line 1410
    :cond_1
    return-void

    #@37
    :cond_2
    move v0, v1

    #@38
    .line 1412
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
    .line 1243
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 1263
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 1246
    :sswitch_0
    const/4 v0, -0x1

    #@a
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->moveDirection(I)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 1247
    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    #@13
    .line 1248
    return v1

    #@14
    .line 1252
    :sswitch_1
    invoke-virtual {p0, v1}, Landroid/widget/Gallery;->moveDirection(I)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_0

    #@1a
    .line 1253
    const/4 v0, 0x3

    #@1b
    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    #@1e
    .line 1254
    return v1

    #@1f
    .line 1259
    :sswitch_2
    iput-boolean v1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    #@21
    goto :goto_0

    #@22
    .line 1243
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
    .line 1268
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 1269
    iget-boolean v1, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 1270
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    #@d
    if-lez v1, :cond_0

    #@f
    .line 1271
    iget-object v1, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    #@11
    invoke-direct {p0, v1}, Landroid/widget/Gallery;->dispatchPress(Landroid/view/View;)V

    #@14
    .line 1272
    new-instance v1, Landroid/widget/Gallery$2;

    #@16
    invoke-direct {v1, p0}, Landroid/widget/Gallery$2;-><init>(Landroid/widget/Gallery;)V

    #@19
    .line 1277
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    #@1c
    move-result v2

    #@1d
    int-to-long v2, v2

    #@1e
    .line 1272
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    #@21
    .line 1279
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@23
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    #@25
    sub-int v0, v1, v2

    #@27
    .line 1280
    .local v0, "selectedIndex":I
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@2a
    move-result-object v1

    #@2b
    iget v2, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@2d
    iget-object v3, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@2f
    .line 1281
    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@31
    .line 1280
    invoke-interface {v3, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    #@34
    move-result-wide v4

    #@35
    invoke-virtual {p0, v1, v2, v4, v5}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    #@38
    .line 1286
    .end local v0    # "selectedIndex":I
    :cond_0
    iput-boolean v6, p0, Landroid/widget/Gallery;->mReceivedInvokeKeyDown:Z

    #@3a
    .line 1287
    const/4 v1, 0x1

    #@3b
    return v1

    #@3c
    .line 1289
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
    .line 361
    invoke-super/range {p0 .. p5}, Landroid/widget/AbsSpinner;->onLayout(ZIIII)V

    #@4
    .line 367
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/widget/AdapterView;->mInLayout:Z

    #@7
    .line 368
    invoke-virtual {p0, v1, v1}, Landroid/widget/Gallery;->layout(IZ)V

    #@a
    .line 369
    iput-boolean v1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    #@c
    .line 360
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "e"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1102
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    #@3
    if-gez v0, :cond_0

    #@5
    .line 1103
    return-void

    #@6
    .line 1106
    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    #@9
    .line 1108
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    #@b
    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    #@e
    move-result-wide v4

    #@f
    .line 1109
    .local v4, "id":J
    iget-object v2, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    #@11
    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    #@13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@16
    move-result v6

    #@17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@1a
    move-result v7

    #@1b
    const/4 v8, 0x1

    #@1c
    move-object v1, p0

    #@1d
    invoke-direct/range {v1 .. v8}, Landroid/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJFFZ)Z

    #@20
    .line 1101
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
    .line 1035
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    #@4
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@7
    .line 1039
    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    #@9
    if-nez v0, :cond_2

    #@b
    .line 1040
    iget-boolean v0, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 1046
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    #@11
    if-nez v0, :cond_0

    #@13
    iput-boolean v1, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    #@15
    .line 1047
    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    #@17
    const-wide/16 v2, 0xfa

    #@19
    invoke-virtual {p0, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    #@1c
    .line 1054
    :cond_1
    :goto_0
    float-to-int v0, p3

    #@1d
    mul-int/lit8 v0, v0, -0x1

    #@1f
    invoke-virtual {p0, v0}, Landroid/widget/Gallery;->trackMotionScroll(I)V

    #@22
    .line 1056
    iput-boolean v4, p0, Landroid/widget/Gallery;->mIsFirstScroll:Z

    #@24
    .line 1057
    return v1

    #@25
    .line 1050
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
    .line 1115
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 985
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    #@3
    if-ltz v0, :cond_2

    #@5
    .line 988
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    #@7
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    #@9
    sub-int/2addr v0, v1

    #@a
    invoke-direct {p0, v0}, Landroid/widget/Gallery;->scrollToChild(I)Z

    #@d
    .line 991
    iget-boolean v0, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    #@f
    if-nez v0, :cond_0

    #@11
    iget v0, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    #@13
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@15
    if-ne v0, v1, :cond_1

    #@17
    .line 992
    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery;->mDownTouchView:Landroid/view/View;

    #@19
    iget v1, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    #@1b
    iget-object v2, p0, Landroid/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    #@1d
    .line 993
    iget v3, p0, Landroid/widget/Gallery;->mDownTouchPosition:I

    #@1f
    .line 992
    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    #@22
    move-result-wide v2

    #@23
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    #@26
    .line 996
    :cond_1
    const/4 v0, 0x1

    #@27
    return v0

    #@28
    .line 999
    :cond_2
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 969
    iget-object v2, p0, Landroid/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    #@2
    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@5
    move-result v1

    #@6
    .line 971
    .local v1, "retValue":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@9
    move-result v0

    #@a
    .line 972
    .local v0, "action":I
    const/4 v2, 0x1

    #@b
    if-ne v0, v2, :cond_1

    #@d
    .line 974
    invoke-virtual {p0}, Landroid/widget/Gallery;->onUp()V

    #@10
    .line 979
    :cond_0
    :goto_0
    return v1

    #@11
    .line 975
    :cond_1
    const/4 v2, 0x3

    #@12
    if-ne v0, v2, :cond_0

    #@14
    .line 976
    invoke-virtual {p0}, Landroid/widget/Gallery;->onCancel()V

    #@17
    goto :goto_0
.end method

.method onUp()V
    .locals 1

    #@0
    .prologue
    .line 1086
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
    .line 1087
    invoke-direct {p0}, Landroid/widget/Gallery;->scrollIntoSlots()V

    #@f
    .line 1090
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery;->dispatchUnpress()V

    #@12
    .line 1084
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
    .line 1426
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1427
    const/4 v1, 0x1

    #@8
    return v1

    #@9
    .line 1429
    :cond_0
    sparse-switch p1, :sswitch_data_0

    #@c
    .line 1443
    return v3

    #@d
    .line 1431
    :sswitch_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    #@15
    if-lez v1, :cond_1

    #@17
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@19
    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    #@1b
    add-int/lit8 v2, v2, -0x1

    #@1d
    if-ge v1, v2, :cond_1

    #@1f
    .line 1432
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@21
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    #@23
    sub-int v0, v1, v2

    #@25
    .line 1433
    .local v0, "currentChildIndex":I
    add-int/lit8 v1, v0, 0x1

    #@27
    invoke-direct {p0, v1}, Landroid/widget/Gallery;->scrollToChild(I)Z

    #@2a
    move-result v1

    #@2b
    return v1

    #@2c
    .line 1435
    .end local v0    # "currentChildIndex":I
    :cond_1
    return v3

    #@2d
    .line 1437
    :sswitch_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    #@30
    move-result v1

    #@31
    if-eqz v1, :cond_2

    #@33
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    #@35
    if-lez v1, :cond_2

    #@37
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@39
    if-lez v1, :cond_2

    #@3b
    .line 1438
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    #@3d
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    #@3f
    sub-int v0, v1, v2

    #@41
    .line 1439
    .restart local v0    # "currentChildIndex":I
    add-int/lit8 v1, v0, -0x1

    #@43
    invoke-direct {p0, v1}, Landroid/widget/Gallery;->scrollToChild(I)Z

    #@46
    move-result v1

    #@47
    return v1

    #@48
    .line 1441
    .end local v0    # "currentChildIndex":I
    :cond_2
    return v3

    #@49
    .line 1429
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
    .line 571
    iget-boolean v0, p0, Landroid/widget/Gallery;->mSuppressSelectionChanged:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 572
    invoke-super {p0}, Landroid/widget/AbsSpinner;->selectionChanged()V

    #@7
    .line 570
    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .param p1, "animationDurationMillis"    # I

    #@0
    .prologue
    .line 283
    iput p1, p0, Landroid/widget/Gallery;->mAnimationDuration:I

    #@2
    .line 282
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .param p1, "shouldCallback"    # Z

    #@0
    .prologue
    .line 257
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackDuringFling:Z

    #@2
    .line 256
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .param p1, "shouldCallback"    # Z

    #@0
    .prologue
    .line 270
    iput-boolean p1, p0, Landroid/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    #@2
    .line 269
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    #@0
    .prologue
    .line 1362
    iget v0, p0, Landroid/widget/Gallery;->mGravity:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 1363
    iput p1, p0, Landroid/widget/Gallery;->mGravity:I

    #@6
    .line 1364
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->requestLayout()V

    #@9
    .line 1360
    :cond_0
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0
    .param p1, "position"    # I

    #@0
    .prologue
    .line 1318
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setSelectedPositionInt(I)V

    #@3
    .line 1321
    invoke-direct {p0}, Landroid/widget/Gallery;->updateSelectedItemMetadata()V

    #@6
    .line 1317
    return-void
.end method

.method public setSpacing(I)V
    .locals 0
    .param p1, "spacing"    # I

    #@0
    .prologue
    .line 294
    iput p1, p0, Landroid/widget/Gallery;->mSpacing:I

    #@2
    .line 293
    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0
    .param p1, "unselectedAlpha"    # F

    #@0
    .prologue
    .line 305
    iput p1, p0, Landroid/widget/Gallery;->mUnselectedAlpha:F

    #@2
    .line 304
    return-void
.end method

.method public showContextMenu()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1187
    const/4 v0, 0x0

    #@2
    invoke-direct {p0, v1, v1, v0}, Landroid/widget/Gallery;->showContextMenuInternal(FFZ)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public showContextMenu(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 1192
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Gallery;->showContextMenuInternal(FFZ)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 3
    .param p1, "originalView"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 1163
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShowingContextMenuWithCoords()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1164
    return v2

    #@9
    .line 1166
    :cond_0
    invoke-direct {p0, p1, v1, v1, v2}, Landroid/widget/Gallery;->showContextMenuForChildInternal(Landroid/view/View;FFZ)Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    #@0
    .prologue
    .line 1171
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Gallery;->showContextMenuForChildInternal(Landroid/view/View;FFZ)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method trackMotionScroll(I)V
    .locals 8
    .param p1, "deltaX"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 385
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@4
    move-result v7

    #@5
    if-nez v7, :cond_0

    #@7
    .line 386
    return-void

    #@8
    .line 389
    :cond_0
    if-gez p1, :cond_3

    #@a
    const/4 v5, 0x1

    #@b
    .line 391
    .local v5, "toLeft":Z
    :goto_0
    invoke-virtual {p0, v5, p1}, Landroid/widget/Gallery;->getLimitedMotionScrollAmount(ZI)I

    #@e
    move-result v3

    #@f
    .line 392
    .local v3, "limitedDeltaX":I
    if-eq v3, p1, :cond_1

    #@11
    .line 394
    iget-object v7, p0, Landroid/widget/Gallery;->mFlingRunnable:Landroid/widget/Gallery$FlingRunnable;

    #@13
    invoke-static {v7, v6}, Landroid/widget/Gallery$FlingRunnable;->-wrap0(Landroid/widget/Gallery$FlingRunnable;Z)V

    #@16
    .line 395
    invoke-direct {p0}, Landroid/widget/Gallery;->onFinishedMovement()V

    #@19
    .line 398
    :cond_1
    invoke-direct {p0, v3}, Landroid/widget/Gallery;->offsetChildrenLeftAndRight(I)V

    #@1c
    .line 400
    invoke-direct {p0, v5}, Landroid/widget/Gallery;->detachOffScreenChildren(Z)V

    #@1f
    .line 402
    if-eqz v5, :cond_4

    #@21
    .line 404
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryRight()V

    #@24
    .line 411
    :goto_1
    iget-object v7, p0, Landroid/widget/AbsSpinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    #@26
    invoke-virtual {v7}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    #@29
    .line 413
    invoke-direct {p0}, Landroid/widget/Gallery;->setSelectionToCenterChild()V

    #@2c
    .line 415
    iget-object v4, p0, Landroid/widget/Gallery;->mSelectedChild:Landroid/view/View;

    #@2e
    .line 416
    .local v4, "selChild":Landroid/view/View;
    if-eqz v4, :cond_2

    #@30
    .line 417
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    #@33
    move-result v1

    #@34
    .line 418
    .local v1, "childLeft":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    #@37
    move-result v7

    #@38
    div-int/lit8 v0, v7, 0x2

    #@3a
    .line 419
    .local v0, "childCenter":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    #@3d
    move-result v7

    #@3e
    div-int/lit8 v2, v7, 0x2

    #@40
    .line 420
    .local v2, "galleryCenter":I
    add-int v7, v1, v0

    #@42
    sub-int/2addr v7, v2

    #@43
    iput v7, p0, Landroid/widget/Gallery;->mSelectedCenterOffset:I

    #@45
    .line 423
    .end local v0    # "childCenter":I
    .end local v1    # "childLeft":I
    .end local v2    # "galleryCenter":I
    :cond_2
    invoke-virtual {p0, v6, v6, v6, v6}, Landroid/view/View;->onScrollChanged(IIII)V

    #@48
    .line 425
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    #@4b
    .line 383
    return-void

    #@4c
    .end local v3    # "limitedDeltaX":I
    .end local v4    # "selChild":Landroid/view/View;
    .end local v5    # "toLeft":Z
    :cond_3
    move v5, v6

    #@4d
    .line 389
    goto :goto_0

    #@4e
    .line 407
    .restart local v3    # "limitedDeltaX":I
    .restart local v5    # "toLeft":Z
    :cond_4
    invoke-direct {p0}, Landroid/widget/Gallery;->fillToGalleryLeft()V

    #@51
    goto :goto_1
.end method
