.class public abstract Landroid/widget/AbsSeekBar;
.super Landroid/widget/ProgressBar;
.source "AbsSeekBar.java"


# static fields
.field private static final NO_ALPHA:I = 0xff


# instance fields
.field private mDisabledAlpha:F

.field private mHasThumbTint:Z

.field private mHasThumbTintMode:Z

.field private mIsDragging:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mScaledTouchSlop:I

.field private mSplitTrack:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mThumbTintList:Landroid/content/res/ColorStateList;

.field private mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mTouchDownX:F

.field mTouchProgressOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    .line 75
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    #@6
    .line 39
    new-instance v0, Landroid/graphics/Rect;

    #@8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@b
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    #@d
    .line 42
    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    #@f
    .line 43
    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    #@11
    .line 44
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    #@13
    .line 45
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    #@15
    .line 59
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    #@17
    .line 65
    iput v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    #@19
    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@6
    .line 39
    new-instance v0, Landroid/graphics/Rect;

    #@8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@b
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    #@d
    .line 42
    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    #@f
    .line 43
    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    #@11
    .line 44
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    #@13
    .line 45
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    #@15
    .line 59
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    #@17
    .line 65
    iput v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    #@19
    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 83
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 82
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
    const/4 v6, 0x4

    #@2
    const/4 v9, 0x3

    #@3
    const/4 v8, 0x1

    #@4
    const/4 v7, 0x0

    #@5
    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@8
    .line 39
    new-instance v5, Landroid/graphics/Rect;

    #@a
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    #@d
    iput-object v5, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    #@f
    .line 42
    iput-object v10, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    #@11
    .line 43
    iput-object v10, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    #@13
    .line 44
    iput-boolean v7, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    #@15
    .line 45
    iput-boolean v7, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    #@17
    .line 59
    iput-boolean v8, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    #@19
    .line 65
    iput v8, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    #@1b
    .line 90
    sget-object v5, Lcom/android/internal/R$styleable;->SeekBar:[I

    #@1d
    .line 89
    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@20
    move-result-object v0

    #@21
    .line 92
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@24
    move-result-object v2

    #@25
    .line 93
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    #@28
    .line 95
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@2b
    move-result v5

    #@2c
    if-eqz v5, :cond_0

    #@2e
    .line 97
    const/4 v5, -0x1

    #@2f
    .line 96
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    #@32
    move-result v5

    #@33
    .line 97
    iget-object v6, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    #@35
    .line 96
    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@38
    move-result-object v5

    #@39
    iput-object v5, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    #@3b
    .line 98
    iput-boolean v8, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    #@3d
    .line 101
    :cond_0
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@40
    move-result v5

    #@41
    if-eqz v5, :cond_1

    #@43
    .line 102
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@46
    move-result-object v5

    #@47
    iput-object v5, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    #@49
    .line 103
    iput-boolean v8, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    #@4b
    .line 106
    :cond_1
    const/4 v5, 0x2

    #@4c
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@4f
    move-result v5

    #@50
    iput-boolean v5, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    #@52
    .line 109
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbOffset()I

    #@55
    move-result v5

    #@56
    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@59
    move-result v3

    #@5a
    .line 110
    .local v3, "thumbOffset":I
    invoke-virtual {p0, v3}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    #@5d
    .line 112
    const/4 v5, 0x5

    #@5e
    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@61
    move-result v4

    #@62
    .line 113
    .local v4, "useDisabledAlpha":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@65
    .line 115
    if-eqz v4, :cond_2

    #@67
    .line 116
    sget-object v5, Lcom/android/internal/R$styleable;->Theme:[I

    #@69
    invoke-virtual {p1, p2, v5, v7, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@6c
    move-result-object v1

    #@6d
    .line 117
    .local v1, "ta":Landroid/content/res/TypedArray;
    const/high16 v5, 0x3f000000    # 0.5f

    #@6f
    invoke-virtual {v1, v9, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@72
    move-result v5

    #@73
    iput v5, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    #@75
    .line 118
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@78
    .line 123
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    :goto_0
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    #@7b
    .line 125
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@7e
    move-result-object v5

    #@7f
    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@82
    move-result v5

    #@83
    iput v5, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    #@85
    .line 86
    return-void

    #@86
    .line 120
    :cond_2
    const/high16 v5, 0x3f800000    # 1.0f

    #@88
    iput v5, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    #@8a
    goto :goto_0
.end method

.method private applyThumbTint()V
    .locals 2

    #@0
    .prologue
    .line 259
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_3

    #@4
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    #@6
    if-nez v0, :cond_0

    #@8
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    #@a
    if-eqz v0, :cond_3

    #@c
    .line 260
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@e
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@14
    .line 262
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 263
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@1a
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    #@1c
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    #@1f
    .line 266
    :cond_1
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    #@21
    if-eqz v0, :cond_2

    #@23
    .line 267
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@25
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    #@27
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@2a
    .line 272
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@2c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_3

    #@32
    .line 273
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@34
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@3b
    .line 258
    :cond_3
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    #@0
    .prologue
    .line 674
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 675
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    #@6
    const/4 v1, 0x1

    #@7
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@a
    .line 673
    :cond_0
    return-void
.end method

.method private getScale()F
    .locals 3

    #@0
    .prologue
    .line 442
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    #@3
    move-result v0

    #@4
    .line 443
    .local v0, "max":I
    if-lez v0, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    #@9
    move-result v1

    #@a
    int-to-float v1, v1

    #@b
    int-to-float v2, v0

    #@c
    div-float/2addr v1, v2

    #@d
    :goto_0
    return v1

    #@e
    :cond_0
    const/4 v1, 0x0

    #@f
    goto :goto_0
.end method

.method private setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 631
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    .line 632
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@6
    .line 633
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    #@9
    .line 630
    :cond_0
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 17
    .param p1, "w"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "offset"    # I

    #@0
    .prologue
    .line 456
    move-object/from16 v0, p0

    #@2
    iget v13, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    #@4
    sub-int v13, p1, v13

    #@6
    move-object/from16 v0, p0

    #@8
    iget v14, v0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    #@a
    sub-int v1, v13, v14

    #@c
    .line 457
    .local v1, "available":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@f
    move-result v11

    #@10
    .line 458
    .local v11, "thumbWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@13
    move-result v9

    #@14
    .line 459
    .local v9, "thumbHeight":I
    sub-int/2addr v1, v11

    #@15
    .line 462
    move-object/from16 v0, p0

    #@17
    iget v13, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    #@19
    mul-int/lit8 v13, v13, 0x2

    #@1b
    add-int/2addr v1, v13

    #@1c
    .line 464
    int-to-float v13, v1

    #@1d
    mul-float v13, v13, p3

    #@1f
    const/high16 v14, 0x3f000000    # 0.5f

    #@21
    add-float/2addr v13, v14

    #@22
    float-to-int v10, v13

    #@23
    .line 467
    .local v10, "thumbPos":I
    const/high16 v13, -0x80000000

    #@25
    move/from16 v0, p4

    #@27
    if-ne v0, v13, :cond_1

    #@29
    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@2c
    move-result-object v7

    #@2d
    .line 469
    .local v7, "oldBounds":Landroid/graphics/Rect;
    iget v12, v7, Landroid/graphics/Rect;->top:I

    #@2f
    .line 470
    .local v12, "top":I
    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    #@31
    .line 476
    .end local v7    # "oldBounds":Landroid/graphics/Rect;
    .local v3, "bottom":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    #@34
    move-result v13

    #@35
    if-eqz v13, :cond_2

    #@37
    move-object/from16 v0, p0

    #@39
    iget-boolean v13, v0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    #@3b
    if-eqz v13, :cond_2

    #@3d
    sub-int v4, v1, v10

    #@3f
    .line 477
    .local v4, "left":I
    :goto_1
    add-int v8, v4, v11

    #@41
    .line 479
    .local v8, "right":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    #@44
    move-result-object v2

    #@45
    .line 480
    .local v2, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@47
    .line 481
    move-object/from16 v0, p0

    #@49
    iget v13, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    #@4b
    move-object/from16 v0, p0

    #@4d
    iget v14, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    #@4f
    sub-int v5, v13, v14

    #@51
    .line 482
    .local v5, "offsetX":I
    move-object/from16 v0, p0

    #@53
    iget v6, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    #@55
    .line 483
    .local v6, "offsetY":I
    add-int v13, v4, v5

    #@57
    add-int v14, v12, v6

    #@59
    .line 484
    add-int v15, v8, v5

    #@5b
    add-int v16, v3, v6

    #@5d
    .line 483
    move/from16 v0, v16

    #@5f
    invoke-virtual {v2, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    #@62
    .line 488
    .end local v5    # "offsetX":I
    .end local v6    # "offsetY":I
    :cond_0
    move-object/from16 v0, p2

    #@64
    invoke-virtual {v0, v4, v12, v8, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@67
    .line 455
    return-void

    #@68
    .line 472
    .end local v2    # "background":Landroid/graphics/drawable/Drawable;
    .end local v3    # "bottom":I
    .end local v4    # "left":I
    .end local v8    # "right":I
    .end local v12    # "top":I
    :cond_1
    move/from16 v12, p4

    #@6a
    .line 473
    .restart local v12    # "top":I
    add-int v3, p4, v9

    #@6c
    .restart local v3    # "bottom":I
    goto :goto_0

    #@6d
    .line 476
    :cond_2
    move v4, v10

    #@6e
    .restart local v4    # "left":I
    goto :goto_1
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 638
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    #@3
    move-result v4

    #@4
    .line 639
    .local v4, "width":I
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    #@6
    sub-int v6, v4, v6

    #@8
    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    #@a
    sub-int v0, v6, v7

    #@c
    .line 640
    .local v0, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@f
    move-result v6

    #@10
    float-to-int v5, v6

    #@11
    .line 642
    .local v5, "x":I
    const/4 v2, 0x0

    #@12
    .line 643
    .local v2, "progress":F
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    #@15
    move-result v6

    #@16
    if-eqz v6, :cond_2

    #@18
    iget-boolean v6, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    #@1a
    if-eqz v6, :cond_2

    #@1c
    .line 644
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    #@1e
    sub-int v6, v4, v6

    #@20
    if-le v5, v6, :cond_0

    #@22
    .line 645
    const/4 v3, 0x0

    #@23
    .line 662
    .local v3, "scale":F
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    #@26
    move-result v1

    #@27
    .line 663
    .local v1, "max":I
    int-to-float v6, v1

    #@28
    mul-float/2addr v6, v3

    #@29
    add-float/2addr v2, v6

    #@2a
    .line 665
    int-to-float v6, v5

    #@2b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@2e
    move-result v7

    #@2f
    float-to-int v7, v7

    #@30
    int-to-float v7, v7

    #@31
    invoke-direct {p0, v6, v7}, Landroid/widget/AbsSeekBar;->setHotspot(FF)V

    #@34
    .line 666
    float-to-int v6, v2

    #@35
    const/4 v7, 0x1

    #@36
    invoke-virtual {p0, v6, v7}, Landroid/widget/AbsSeekBar;->setProgress(IZ)Z

    #@39
    .line 637
    return-void

    #@3a
    .line 646
    .end local v1    # "max":I
    .end local v3    # "scale":F
    :cond_0
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    #@3c
    if-ge v5, v6, :cond_1

    #@3e
    .line 647
    const/high16 v3, 0x3f800000    # 1.0f

    #@40
    .restart local v3    # "scale":F
    goto :goto_0

    #@41
    .line 649
    .end local v3    # "scale":F
    :cond_1
    sub-int v6, v0, v5

    #@43
    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    #@45
    add-int/2addr v6, v7

    #@46
    int-to-float v6, v6

    #@47
    int-to-float v7, v0

    #@48
    div-float v3, v6, v7

    #@4a
    .line 650
    .restart local v3    # "scale":F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    #@4c
    goto :goto_0

    #@4d
    .line 653
    .end local v3    # "scale":F
    :cond_2
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    #@4f
    if-ge v5, v6, :cond_3

    #@51
    .line 654
    const/4 v3, 0x0

    #@52
    .restart local v3    # "scale":F
    goto :goto_0

    #@53
    .line 655
    .end local v3    # "scale":F
    :cond_3
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    #@55
    sub-int v6, v4, v6

    #@57
    if-le v5, v6, :cond_4

    #@59
    .line 656
    const/high16 v3, 0x3f800000    # 1.0f

    #@5b
    .restart local v3    # "scale":F
    goto :goto_0

    #@5c
    .line 658
    .end local v3    # "scale":F
    :cond_4
    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    #@5e
    sub-int v6, v5, v6

    #@60
    int-to-float v6, v6

    #@61
    int-to-float v7, v0

    #@62
    div-float v3, v6, v7

    #@64
    .line 659
    .restart local v3    # "scale":F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    #@66
    goto :goto_0
.end method

.method private updateThumbAndTrackPos(II)V
    .locals 11
    .param p1, "w"    # I
    .param p2, "h"    # I

    #@0
    .prologue
    .line 409
    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    #@2
    sub-int v9, p2, v9

    #@4
    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    #@6
    sub-int v1, v9, v10

    #@8
    .line 410
    .local v1, "paddedHeight":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    #@b
    move-result-object v5

    #@c
    .line 411
    .local v5, "track":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@e
    .line 415
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    iget v9, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    #@10
    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    #@13
    move-result v6

    #@14
    .line 416
    .local v6, "trackHeight":I
    if-nez v2, :cond_2

    #@16
    const/4 v3, 0x0

    #@17
    .line 421
    .local v3, "thumbHeight":I
    :goto_0
    if-le v3, v6, :cond_3

    #@19
    .line 422
    sub-int v9, v1, v3

    #@1b
    div-int/lit8 v0, v9, 0x2

    #@1d
    .line 423
    .local v0, "offsetHeight":I
    sub-int v9, v3, v6

    #@1f
    div-int/lit8 v9, v9, 0x2

    #@21
    add-int v7, v0, v9

    #@23
    .line 424
    .local v7, "trackOffset":I
    add-int/lit8 v4, v0, 0x0

    #@25
    .line 431
    .local v4, "thumbOffset":I
    :goto_1
    if-eqz v5, :cond_0

    #@27
    .line 432
    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    #@29
    sub-int v9, p1, v9

    #@2b
    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    #@2d
    sub-int v8, v9, v10

    #@2f
    .line 433
    .local v8, "trackWidth":I
    add-int v9, v7, v6

    #@31
    const/4 v10, 0x0

    #@32
    invoke-virtual {v5, v10, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@35
    .line 436
    .end local v8    # "trackWidth":I
    :cond_0
    if-eqz v2, :cond_1

    #@37
    .line 437
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    #@3a
    move-result v9

    #@3b
    invoke-direct {p0, p1, v2, v9, v4}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    #@3e
    .line 408
    :cond_1
    return-void

    #@3f
    .line 416
    .end local v0    # "offsetHeight":I
    .end local v3    # "thumbHeight":I
    .end local v4    # "thumbOffset":I
    .end local v7    # "trackOffset":I
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@42
    move-result v3

    #@43
    .restart local v3    # "thumbHeight":I
    goto :goto_0

    #@44
    .line 426
    :cond_3
    sub-int v9, v1, v6

    #@46
    div-int/lit8 v0, v9, 0x2

    #@48
    .line 427
    .restart local v0    # "offsetHeight":I
    add-int/lit8 v7, v0, 0x0

    #@4a
    .line 428
    .restart local v7    # "trackOffset":I
    sub-int v9, v6, v3

    #@4c
    div-int/lit8 v9, v9, 0x2

    #@4e
    add-int v4, v0, v9

    #@50
    .restart local v4    # "thumbOffset":I
    goto :goto_1
.end method


# virtual methods
.method drawThumb(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 534
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 535
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@7
    .line 538
    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    #@9
    iget v1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    #@b
    sub-int/2addr v0, v1

    #@c
    int-to-float v0, v0

    #@d
    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    #@f
    int-to-float v1, v1

    #@10
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    #@13
    .line 539
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@15
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@18
    .line 540
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@1b
    .line 533
    :cond_0
    return-void
.end method

.method drawTrack(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 512
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@2
    .line 513
    .local v3, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    #@4
    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 514
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    #@b
    move-result-object v0

    #@c
    .line 515
    .local v0, "insets":Landroid/graphics/Insets;
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    #@e
    .line 516
    .local v2, "tempRect":Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    #@11
    .line 517
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    #@13
    iget v5, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    #@15
    sub-int/2addr v4, v5

    #@16
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    #@18
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    #@1b
    .line 518
    iget v4, v2, Landroid/graphics/Rect;->left:I

    #@1d
    iget v5, v0, Landroid/graphics/Insets;->left:I

    #@1f
    add-int/2addr v4, v5

    #@20
    iput v4, v2, Landroid/graphics/Rect;->left:I

    #@22
    .line 519
    iget v4, v2, Landroid/graphics/Rect;->right:I

    #@24
    iget v5, v0, Landroid/graphics/Insets;->right:I

    #@26
    sub-int/2addr v4, v5

    #@27
    iput v4, v2, Landroid/graphics/Rect;->right:I

    #@29
    .line 521
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@2c
    move-result v1

    #@2d
    .line 522
    .local v1, "saveCount":I
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    #@2f
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    #@32
    .line 523
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    #@35
    .line 524
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@38
    .line 511
    .end local v0    # "insets":Landroid/graphics/Insets;
    .end local v1    # "saveCount":I
    .end local v2    # "tempRect":Landroid/graphics/Rect;
    :goto_0
    return-void

    #@39
    .line 526
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    #@3c
    goto :goto_0
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 379
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->drawableHotspotChanged(FF)V

    #@3
    .line 381
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 382
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    #@c
    .line 378
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    #@0
    .prologue
    .line 364
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    #@3
    .line 366
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    #@6
    move-result-object v0

    #@7
    .line 367
    .local v0, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@9
    iget v2, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    #@b
    const/high16 v3, 0x3f800000    # 1.0f

    #@d
    cmpg-float v2, v2, v3

    #@f
    if-gez v2, :cond_0

    #@11
    .line 368
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_2

    #@17
    const/16 v2, 0xff

    #@19
    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@1c
    .line 371
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@1e
    .line 372
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    #@20
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_1

    #@26
    .line 373
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@2d
    .line 363
    :cond_1
    return-void

    #@2e
    .line 368
    .end local v1    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget v2, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    #@30
    const/high16 v3, 0x437f0000    # 255.0f

    #@32
    mul-float/2addr v2, v3

    #@33
    float-to-int v2, v2

    #@34
    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 725
    const-class v0, Landroid/widget/AbsSeekBar;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    #@0
    .prologue
    .line 334
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    #@2
    return v0
.end method

.method public getSplitTrack()Z
    .locals 1

    #@0
    .prologue
    .line 312
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    #@2
    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getThumbOffset()I
    .locals 1

    #@0
    .prologue
    .line 282
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    #@2
    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1

    #@0
    .prologue
    .line 223
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    #@0
    .prologue
    .line 255
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    #@0
    .prologue
    .line 355
    invoke-super {p0}, Landroid/widget/ProgressBar;->jumpDrawablesToCurrentState()V

    #@3
    .line 357
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 358
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@c
    .line 354
    :cond_0
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 505
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    #@4
    .line 506
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->drawThumb(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 504
    return-void

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    .line 731
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 733
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 734
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    #@c
    move-result v0

    #@d
    .line 735
    .local v0, "progress":I
    if-lez v0, :cond_0

    #@f
    .line 736
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@11
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@14
    .line 738
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    #@17
    move-result v1

    #@18
    if-ge v0, v1, :cond_1

    #@1a
    .line 739
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@1c
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@1f
    .line 730
    .end local v0    # "progress":I
    :cond_1
    return-void
.end method

.method onKeyChange()V
    .locals 0

    #@0
    .prologue
    .line 697
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 702
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 703
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    #@9
    .line 704
    .local v0, "increment":I
    packed-switch p1, :pswitch_data_0

    #@c
    .line 720
    .end local v0    # "increment":I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 706
    .restart local v0    # "increment":I
    :pswitch_0
    neg-int v0, v0

    #@12
    .line 709
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    neg-int v0, v0

    #@19
    .line 712
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    #@1c
    move-result v1

    #@1d
    add-int/2addr v1, v0

    #@1e
    invoke-virtual {p0, v1, v2}, Landroid/widget/AbsSeekBar;->setProgress(IZ)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_0

    #@24
    .line 713
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    #@27
    .line 714
    return v2

    #@28
    .line 704
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 546
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    #@4
    move-result-object v0

    #@5
    .line 548
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@7
    if-nez v4, :cond_1

    #@9
    const/4 v3, 0x0

    #@a
    .line 549
    .local v3, "thumbHeight":I
    :goto_0
    const/4 v2, 0x0

    #@b
    .line 550
    .local v2, "dw":I
    const/4 v1, 0x0

    #@c
    .line 551
    .local v1, "dh":I
    if-eqz v0, :cond_0

    #@e
    .line 552
    iget v4, p0, Landroid/widget/AbsSeekBar;->mMinWidth:I

    #@10
    iget v5, p0, Landroid/widget/AbsSeekBar;->mMaxWidth:I

    #@12
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@15
    move-result v6

    #@16
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    #@19
    move-result v5

    #@1a
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    #@1d
    move-result v2

    #@1e
    .line 553
    iget v4, p0, Landroid/widget/AbsSeekBar;->mMinHeight:I

    #@20
    iget v5, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    #@22
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@25
    move-result v6

    #@26
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    #@29
    move-result v5

    #@2a
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    #@2d
    move-result v1

    #@2e
    .line 554
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    #@31
    move-result v1

    #@32
    .line 556
    :cond_0
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    #@34
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    #@36
    add-int/2addr v4, v5

    #@37
    add-int/2addr v2, v4

    #@38
    .line 557
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    #@3a
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    #@3c
    add-int/2addr v4, v5

    #@3d
    add-int/2addr v1, v4

    #@3e
    .line 559
    const/4 v4, 0x0

    #@3f
    invoke-static {v2, p1, v4}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    #@42
    move-result v4

    #@43
    .line 560
    const/4 v5, 0x0

    #@44
    invoke-static {v1, p2, v5}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    #@47
    move-result v5

    #@48
    .line 559
    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    monitor-exit p0

    #@4c
    .line 545
    return-void

    #@4d
    .line 548
    .end local v1    # "dh":I
    .end local v2    # "dw":I
    .end local v3    # "thumbHeight":I
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@4f
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@52
    move-result v3

    #@53
    .restart local v3    # "thumbHeight":I
    goto :goto_0

    #@54
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "thumbHeight":I
    :catchall_0
    move-exception v4

    #@55
    monitor-exit p0

    #@56
    throw v4
.end method

.method onProgressRefresh(FZI)V
    .locals 3
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z
    .param p3, "progress"    # I

    #@0
    .prologue
    .line 388
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ProgressBar;->onProgressRefresh(FZI)V

    #@3
    .line 390
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@5
    .line 391
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@7
    .line 392
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    #@a
    move-result v1

    #@b
    const/high16 v2, -0x80000000

    #@d
    invoke-direct {p0, v1, v0, p1, v2}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    #@10
    .line 397
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    #@13
    .line 387
    :cond_0
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 496
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onResolveDrawables(I)V

    #@3
    .line 498
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 499
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@c
    .line 495
    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 775
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onRtlPropertiesChanged(I)V

    #@3
    .line 777
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@5
    .line 778
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@7
    .line 779
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    #@a
    move-result v1

    #@b
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    #@e
    move-result v2

    #@f
    const/high16 v3, -0x80000000

    #@11
    invoke-direct {p0, v1, v0, v2, v3}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    #@14
    .line 784
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    #@17
    .line 774
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    #@0
    .prologue
    .line 403
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    #@3
    .line 405
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPos(II)V

    #@6
    .line 402
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    #@0
    .prologue
    .line 683
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    #@3
    .line 682
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    #@0
    .prologue
    .line 691
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    #@3
    .line 690
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 565
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    #@4
    if-eqz v1, :cond_1

    #@6
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 569
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@f
    move-result v1

    #@10
    packed-switch v1, :pswitch_data_0

    #@13
    .line 627
    :cond_0
    :goto_0
    return v3

    #@14
    .line 566
    :cond_1
    return v2

    #@15
    .line 571
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isInScrollingContainer()Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_2

    #@1b
    .line 572
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@1e
    move-result v1

    #@1f
    iput v1, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    #@21
    goto :goto_0

    #@22
    .line 574
    :cond_2
    invoke-virtual {p0, v3}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    #@25
    .line 575
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@27
    if-eqz v1, :cond_3

    #@29
    .line 576
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@2b
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    #@32
    .line 578
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    #@35
    .line 579
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    #@38
    .line 580
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    #@3b
    goto :goto_0

    #@3c
    .line 585
    :pswitch_1
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    #@3e
    if-eqz v1, :cond_4

    #@40
    .line 586
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    #@43
    goto :goto_0

    #@44
    .line 588
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@47
    move-result v0

    #@48
    .line 589
    .local v0, "x":F
    iget v1, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    #@4a
    sub-float v1, v0, v1

    #@4c
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    #@4f
    move-result v1

    #@50
    iget v2, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    #@52
    int-to-float v2, v2

    #@53
    cmpl-float v1, v1, v2

    #@55
    if-lez v1, :cond_0

    #@57
    .line 590
    invoke-virtual {p0, v3}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    #@5a
    .line 591
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@5c
    if-eqz v1, :cond_5

    #@5e
    .line 592
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@60
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    #@67
    .line 594
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    #@6a
    .line 595
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    #@6d
    .line 596
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    #@70
    goto :goto_0

    #@71
    .line 602
    .end local v0    # "x":F
    :pswitch_2
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    #@73
    if-eqz v1, :cond_6

    #@75
    .line 603
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    #@78
    .line 604
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    #@7b
    .line 605
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    #@7e
    .line 616
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    #@81
    goto :goto_0

    #@82
    .line 609
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    #@85
    .line 610
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    #@88
    .line 611
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    #@8b
    goto :goto_1

    #@8c
    .line 620
    :pswitch_3
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    #@8e
    if-eqz v1, :cond_7

    #@90
    .line 621
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    #@93
    .line 622
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    #@96
    .line 624
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    #@99
    goto/16 :goto_0

    #@9b
    .line 569
    nop

    #@9c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/16 v5, 0x2000

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v3, 0x1

    #@4
    .line 747
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 748
    return v3

    #@b
    .line 751
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_1

    #@11
    .line 752
    return v4

    #@12
    .line 755
    :cond_1
    const/16 v1, 0x1000

    #@14
    if-eq p1, v1, :cond_2

    #@16
    .line 756
    if-ne p1, v5, :cond_5

    #@18
    .line 757
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    #@1b
    move-result v1

    #@1c
    int-to-float v1, v1

    #@1d
    const/high16 v2, 0x40a00000    # 5.0f

    #@1f
    div-float/2addr v1, v2

    #@20
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    #@23
    move-result v1

    #@24
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    #@27
    move-result v0

    #@28
    .line 758
    .local v0, "increment":I
    if-ne p1, v5, :cond_3

    #@2a
    .line 759
    neg-int v0, v0

    #@2b
    .line 763
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    #@2e
    move-result v1

    #@2f
    add-int/2addr v1, v0

    #@30
    invoke-virtual {p0, v1, v3}, Landroid/widget/AbsSeekBar;->setProgress(IZ)Z

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_4

    #@36
    .line 764
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    #@39
    .line 765
    return v3

    #@3a
    .line 767
    :cond_4
    return v4

    #@3b
    .line 770
    .end local v0    # "increment":I
    :cond_5
    return v4
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0
    .param p1, "increment"    # I

    #@0
    .prologue
    .line 322
    if-gez p1, :cond_0

    #@2
    neg-int p1, p1

    #@3
    .end local p1    # "increment":I
    :cond_0
    iput p1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    #@5
    .line 321
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 2
    .param p1, "max"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 339
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    #@4
    .line 341
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    #@6
    if-eqz v0, :cond_0

    #@8
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    #@b
    move-result v0

    #@c
    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    #@e
    div-int/2addr v0, v1

    #@f
    const/16 v1, 0x14

    #@11
    if-le v0, v1, :cond_1

    #@13
    .line 344
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    #@16
    move-result v0

    #@17
    int-to-float v0, v0

    #@18
    const/high16 v1, 0x41a00000    # 20.0f

    #@1a
    div-float/2addr v0, v1

    #@1b
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@1e
    move-result v0

    #@1f
    const/4 v1, 0x1

    #@20
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@23
    move-result v0

    #@24
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    :cond_1
    monitor-exit p0

    #@28
    .line 338
    return-void

    #@29
    :catchall_0
    move-exception v0

    #@2a
    monitor-exit p0

    #@2b
    throw v0
.end method

.method public setSplitTrack(Z)V
    .locals 0
    .param p1, "splitTrack"    # Z

    #@0
    .prologue
    .line 304
    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    #@2
    .line 305
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    #@5
    .line 303
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 141
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@3
    if-eqz v2, :cond_4

    #@5
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@7
    if-eq p1, v2, :cond_4

    #@9
    .line 142
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@b
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@e
    .line 143
    const/4 v0, 0x1

    #@f
    .line 148
    .local v0, "needUpdate":Z
    :goto_0
    if-eqz p1, :cond_2

    #@11
    .line 149
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@14
    .line 150
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->canResolveLayoutDirection()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 151
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getLayoutDirection()I

    #@1d
    move-result v2

    #@1e
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@21
    .line 157
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@24
    move-result v2

    #@25
    div-int/lit8 v2, v2, 0x2

    #@27
    iput v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    #@29
    .line 160
    if-eqz v0, :cond_2

    #@2b
    .line 161
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@2e
    move-result v2

    #@2f
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@31
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@34
    move-result v3

    #@35
    if-ne v2, v3, :cond_1

    #@37
    .line 162
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@3a
    move-result v2

    #@3b
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@3d
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@40
    move-result v3

    #@41
    if-eq v2, v3, :cond_2

    #@43
    .line 163
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->requestLayout()V

    #@46
    .line 167
    :cond_2
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@48
    .line 169
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    #@4b
    .line 170
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    #@4e
    .line 172
    if-eqz v0, :cond_3

    #@50
    .line 173
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    #@53
    move-result v2

    #@54
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    #@57
    move-result v3

    #@58
    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPos(II)V

    #@5b
    .line 174
    if-eqz p1, :cond_3

    #@5d
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@60
    move-result v2

    #@61
    if-eqz v2, :cond_3

    #@63
    .line 177
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    #@66
    move-result-object v1

    #@67
    .line 178
    .local v1, "state":[I
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@6a
    .line 136
    .end local v1    # "state":[I
    :cond_3
    return-void

    #@6b
    .line 145
    .end local v0    # "needUpdate":Z
    :cond_4
    const/4 v0, 0x0

    #@6c
    .restart local v0    # "needUpdate":Z
    goto :goto_0
.end method

.method public setThumbOffset(I)V
    .locals 0
    .param p1, "thumbOffset"    # I

    #@0
    .prologue
    .line 292
    iput p1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    #@2
    .line 293
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    #@5
    .line 291
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 208
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    #@2
    .line 209
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    #@5
    .line 211
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    #@8
    .line 207
    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 239
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    .line 240
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    #@5
    .line 242
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    #@8
    .line 238
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 350
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@2
    if-eq p1, v0, :cond_0

    #@4
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method
