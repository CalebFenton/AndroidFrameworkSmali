.class public abstract Landroid/widget/AbsSeekBar;
.super Landroid/widget/ProgressBar;
.source "AbsSeekBar.java"


# static fields
.field private static final NO_ALPHA:I = 0xff


# instance fields
.field private mDisabledAlpha:F

.field private mHasThumbTint:Z

.field private mHasThumbTintMode:Z

.field private mHasTickMarkTint:Z

.field private mHasTickMarkTintMode:Z

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

.field private mTickMark:Landroid/graphics/drawable/Drawable;

.field private mTickMarkTintList:Landroid/content/res/ColorStateList;

.field private mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mTouchDownX:F

.field mTouchProgressOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 82
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    #@6
    .line 40
    new-instance v0, Landroid/graphics/Rect;

    #@8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@b
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    #@d
    .line 43
    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    #@f
    .line 44
    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    #@11
    .line 45
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    #@13
    .line 46
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    #@15
    .line 49
    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    #@17
    .line 50
    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    #@19
    .line 51
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    #@1b
    .line 52
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTintMode:Z

    #@1d
    .line 66
    iput-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    #@1f
    .line 72
    iput v3, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    #@21
    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@6
    .line 40
    new-instance v0, Landroid/graphics/Rect;

    #@8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@b
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    #@d
    .line 43
    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    #@f
    .line 44
    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    #@11
    .line 45
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    #@13
    .line 46
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    #@15
    .line 49
    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    #@17
    .line 50
    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    #@19
    .line 51
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    #@1b
    .line 52
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTintMode:Z

    #@1d
    .line 66
    iput-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    #@1f
    .line 72
    iput v3, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    #@21
    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 90
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 89
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
    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 40
    new-instance v6, Landroid/graphics/Rect;

    #@5
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    #@a
    .line 43
    const/4 v6, 0x0

    #@b
    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    #@d
    .line 44
    const/4 v6, 0x0

    #@e
    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    #@10
    .line 45
    const/4 v6, 0x0

    #@11
    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    #@13
    .line 46
    const/4 v6, 0x0

    #@14
    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    #@16
    .line 49
    const/4 v6, 0x0

    #@17
    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    #@19
    .line 50
    const/4 v6, 0x0

    #@1a
    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    #@1c
    .line 51
    const/4 v6, 0x0

    #@1d
    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    #@1f
    .line 52
    const/4 v6, 0x0

    #@20
    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTintMode:Z

    #@22
    .line 66
    const/4 v6, 0x1

    #@23
    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    #@25
    .line 72
    const/4 v6, 0x1

    #@26
    iput v6, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    #@28
    .line 97
    sget-object v6, Lcom/android/internal/R$styleable;->SeekBar:[I

    #@2a
    .line 96
    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@2d
    move-result-object v0

    #@2e
    .line 99
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    #@2f
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@32
    move-result-object v2

    #@33
    .line 100
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    #@36
    .line 102
    const/4 v6, 0x4

    #@37
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@3a
    move-result v6

    #@3b
    if-eqz v6, :cond_0

    #@3d
    .line 104
    const/4 v6, 0x4

    #@3e
    const/4 v7, -0x1

    #@3f
    .line 103
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    #@42
    move-result v6

    #@43
    .line 104
    iget-object v7, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    #@45
    .line 103
    invoke-static {v6, v7}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@48
    move-result-object v6

    #@49
    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    #@4b
    .line 105
    const/4 v6, 0x1

    #@4c
    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    #@4e
    .line 108
    :cond_0
    const/4 v6, 0x3

    #@4f
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@52
    move-result v6

    #@53
    if-eqz v6, :cond_1

    #@55
    .line 109
    const/4 v6, 0x3

    #@56
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@59
    move-result-object v6

    #@5a
    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    #@5c
    .line 110
    const/4 v6, 0x1

    #@5d
    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    #@5f
    .line 113
    :cond_1
    const/4 v6, 0x5

    #@60
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@63
    move-result-object v4

    #@64
    .line 114
    .local v4, "tickMark":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v4}, Landroid/widget/AbsSeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    #@67
    .line 116
    const/4 v6, 0x7

    #@68
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@6b
    move-result v6

    #@6c
    if-eqz v6, :cond_2

    #@6e
    .line 118
    const/4 v6, 0x7

    #@6f
    const/4 v7, -0x1

    #@70
    .line 117
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    #@73
    move-result v6

    #@74
    .line 118
    iget-object v7, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    #@76
    .line 117
    invoke-static {v6, v7}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@79
    move-result-object v6

    #@7a
    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    #@7c
    .line 119
    const/4 v6, 0x1

    #@7d
    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTintMode:Z

    #@7f
    .line 122
    :cond_2
    const/4 v6, 0x6

    #@80
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@83
    move-result v6

    #@84
    if-eqz v6, :cond_3

    #@86
    .line 123
    const/4 v6, 0x6

    #@87
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@8a
    move-result-object v6

    #@8b
    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    #@8d
    .line 124
    const/4 v6, 0x1

    #@8e
    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    #@90
    .line 127
    :cond_3
    const/4 v6, 0x2

    #@91
    const/4 v7, 0x0

    #@92
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@95
    move-result v6

    #@96
    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    #@98
    .line 131
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbOffset()I

    #@9b
    move-result v6

    #@9c
    const/4 v7, 0x1

    #@9d
    .line 130
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@a0
    move-result v3

    #@a1
    .line 132
    .local v3, "thumbOffset":I
    invoke-virtual {p0, v3}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    #@a4
    .line 134
    const/16 v6, 0x8

    #@a6
    const/4 v7, 0x1

    #@a7
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@aa
    move-result v5

    #@ab
    .line 135
    .local v5, "useDisabledAlpha":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@ae
    .line 137
    if-eqz v5, :cond_4

    #@b0
    .line 138
    sget-object v6, Lcom/android/internal/R$styleable;->Theme:[I

    #@b2
    const/4 v7, 0x0

    #@b3
    const/4 v8, 0x0

    #@b4
    invoke-virtual {p1, p2, v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@b7
    move-result-object v1

    #@b8
    .line 139
    .local v1, "ta":Landroid/content/res/TypedArray;
    const/4 v6, 0x3

    #@b9
    const/high16 v7, 0x3f000000    # 0.5f

    #@bb
    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@be
    move-result v6

    #@bf
    iput v6, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    #@c1
    .line 140
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@c4
    .line 145
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    :goto_0
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    #@c7
    .line 146
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyTickMarkTint()V

    #@ca
    .line 148
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@cd
    move-result-object v6

    #@ce
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@d1
    move-result v6

    #@d2
    iput v6, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    #@d4
    .line 93
    return-void

    #@d5
    .line 142
    :cond_4
    const/high16 v6, 0x3f800000    # 1.0f

    #@d7
    iput v6, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    #@d9
    goto :goto_0
.end method

.method private applyThumbTint()V
    .locals 2

    #@0
    .prologue
    .line 282
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
    .line 283
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@e
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@14
    .line 285
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 286
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@1a
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    #@1c
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    #@1f
    .line 289
    :cond_1
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    #@21
    if-eqz v0, :cond_2

    #@23
    .line 290
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@25
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    #@27
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@2a
    .line 295
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@2c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_3

    #@32
    .line 296
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@34
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@3b
    .line 281
    :cond_3
    return-void
.end method

.method private applyTickMarkTint()V
    .locals 2

    #@0
    .prologue
    .line 436
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_3

    #@4
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    #@6
    if-nez v0, :cond_0

    #@8
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTintMode:Z

    #@a
    if-eqz v0, :cond_3

    #@c
    .line 437
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@e
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@14
    .line 439
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 440
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@1a
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    #@1c
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    #@1f
    .line 443
    :cond_1
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTintMode:Z

    #@21
    if-eqz v0, :cond_2

    #@23
    .line 444
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@25
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    #@27
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@2a
    .line 449
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@2c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_3

    #@32
    .line 450
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@34
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@3b
    .line 435
    :cond_3
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    #@0
    .prologue
    .line 858
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 859
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    #@6
    const/4 v1, 0x1

    #@7
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@a
    .line 857
    :cond_0
    return-void
.end method

.method private getScale()F
    .locals 3

    #@0
    .prologue
    .line 595
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    #@3
    move-result v0

    #@4
    .line 596
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
    .line 812
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    .line 813
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@6
    .line 814
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    #@9
    .line 811
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
    .line 609
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
    .line 610
    .local v1, "available":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@f
    move-result v11

    #@10
    .line 611
    .local v11, "thumbWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@13
    move-result v9

    #@14
    .line 612
    .local v9, "thumbHeight":I
    sub-int/2addr v1, v11

    #@15
    .line 615
    move-object/from16 v0, p0

    #@17
    iget v13, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    #@19
    mul-int/lit8 v13, v13, 0x2

    #@1b
    add-int/2addr v1, v13

    #@1c
    .line 617
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
    .line 620
    .local v10, "thumbPos":I
    const/high16 v13, -0x80000000

    #@25
    move/from16 v0, p4

    #@27
    if-ne v0, v13, :cond_1

    #@29
    .line 621
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@2c
    move-result-object v7

    #@2d
    .line 622
    .local v7, "oldBounds":Landroid/graphics/Rect;
    iget v12, v7, Landroid/graphics/Rect;->top:I

    #@2f
    .line 623
    .local v12, "top":I
    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    #@31
    .line 629
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
    .line 630
    .local v4, "left":I
    :goto_1
    add-int v8, v4, v11

    #@41
    .line 632
    .local v8, "right":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    #@44
    move-result-object v2

    #@45
    .line 633
    .local v2, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@47
    .line 634
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
    .line 635
    .local v5, "offsetX":I
    move-object/from16 v0, p0

    #@53
    iget v6, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    #@55
    .line 636
    .local v6, "offsetY":I
    add-int v13, v4, v5

    #@57
    add-int v14, v12, v6

    #@59
    .line 637
    add-int v15, v8, v5

    #@5b
    add-int v16, v3, v6

    #@5d
    .line 636
    move/from16 v0, v16

    #@5f
    invoke-virtual {v2, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    #@62
    .line 641
    .end local v5    # "offsetX":I
    .end local v6    # "offsetY":I
    :cond_0
    move-object/from16 v0, p2

    #@64
    invoke-virtual {v0, v4, v12, v8, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@67
    .line 608
    return-void

    #@68
    .line 625
    .end local v2    # "background":Landroid/graphics/drawable/Drawable;
    .end local v3    # "bottom":I
    .end local v4    # "left":I
    .end local v8    # "right":I
    .end local v12    # "top":I
    :cond_1
    move/from16 v12, p4

    #@6a
    .line 626
    .restart local v12    # "top":I
    add-int v3, p4, v9

    #@6c
    .restart local v3    # "bottom":I
    goto :goto_0

    #@6d
    :cond_2
    move v4, v10

    #@6e
    .line 629
    goto :goto_1
.end method

.method private startDrag(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 799
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    #@4
    .line 801
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 803
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@a
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    #@11
    .line 806
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    #@14
    .line 807
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    #@17
    .line 808
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    #@1a
    .line 798
    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 819
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@3
    move-result v7

    #@4
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    #@7
    move-result v5

    #@8
    .line 820
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@b
    move-result v7

    #@c
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    #@f
    move-result v6

    #@10
    .line 821
    .local v6, "y":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    #@13
    move-result v4

    #@14
    .line 822
    .local v4, "width":I
    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    #@16
    sub-int v7, v4, v7

    #@18
    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    #@1a
    sub-int v0, v7, v8

    #@1c
    .line 825
    .local v0, "availableWidth":I
    const/4 v2, 0x0

    #@1d
    .line 826
    .local v2, "progress":F
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    #@20
    move-result v7

    #@21
    if-eqz v7, :cond_2

    #@23
    iget-boolean v7, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    #@25
    if-eqz v7, :cond_2

    #@27
    .line 827
    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    #@29
    sub-int v7, v4, v7

    #@2b
    if-le v5, v7, :cond_0

    #@2d
    .line 828
    const/4 v3, 0x0

    #@2e
    .line 846
    .local v3, "scale":F
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    #@31
    move-result v1

    #@32
    .line 847
    .local v1, "max":I
    int-to-float v7, v1

    #@33
    mul-float/2addr v7, v3

    #@34
    add-float/2addr v2, v7

    #@35
    .line 849
    int-to-float v7, v5

    #@36
    int-to-float v8, v6

    #@37
    invoke-direct {p0, v7, v8}, Landroid/widget/AbsSeekBar;->setHotspot(FF)V

    #@3a
    .line 850
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    #@3d
    move-result v7

    #@3e
    const/4 v8, 0x1

    #@3f
    const/4 v9, 0x0

    #@40
    invoke-virtual {p0, v7, v8, v9}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    #@43
    .line 818
    return-void

    #@44
    .line 829
    .end local v1    # "max":I
    .end local v3    # "scale":F
    :cond_0
    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    #@46
    if-ge v5, v7, :cond_1

    #@48
    .line 830
    const/high16 v3, 0x3f800000    # 1.0f

    #@4a
    .restart local v3    # "scale":F
    goto :goto_0

    #@4b
    .line 832
    .end local v3    # "scale":F
    :cond_1
    sub-int v7, v0, v5

    #@4d
    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    #@4f
    add-int/2addr v7, v8

    #@50
    int-to-float v7, v7

    #@51
    int-to-float v8, v0

    #@52
    div-float v3, v7, v8

    #@54
    .line 833
    .restart local v3    # "scale":F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    #@56
    goto :goto_0

    #@57
    .line 836
    .end local v3    # "scale":F
    :cond_2
    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    #@59
    if-ge v5, v7, :cond_3

    #@5b
    .line 837
    const/4 v3, 0x0

    #@5c
    .restart local v3    # "scale":F
    goto :goto_0

    #@5d
    .line 838
    .end local v3    # "scale":F
    :cond_3
    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    #@5f
    sub-int v7, v4, v7

    #@61
    if-le v5, v7, :cond_4

    #@63
    .line 839
    const/high16 v3, 0x3f800000    # 1.0f

    #@65
    .restart local v3    # "scale":F
    goto :goto_0

    #@66
    .line 841
    .end local v3    # "scale":F
    :cond_4
    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    #@68
    sub-int v7, v5, v7

    #@6a
    int-to-float v7, v7

    #@6b
    int-to-float v8, v0

    #@6c
    div-float v3, v7, v8

    #@6e
    .line 842
    .restart local v3    # "scale":F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    #@70
    goto :goto_0
.end method

.method private updateThumbAndTrackPos(II)V
    .locals 12
    .param p1, "w"    # I
    .param p2, "h"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 562
    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    #@3
    sub-int v10, p2, v10

    #@5
    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    #@7
    sub-int v1, v10, v11

    #@9
    .line 563
    .local v1, "paddedHeight":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    #@c
    move-result-object v5

    #@d
    .line 564
    .local v5, "track":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@f
    .line 568
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    iget v10, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    #@11
    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    #@14
    move-result v6

    #@15
    .line 569
    .local v6, "trackHeight":I
    if-nez v2, :cond_2

    #@17
    move v3, v9

    #@18
    .line 574
    .local v3, "thumbHeight":I
    :goto_0
    if-le v3, v6, :cond_3

    #@1a
    .line 575
    sub-int v10, v1, v3

    #@1c
    div-int/lit8 v0, v10, 0x2

    #@1e
    .line 576
    .local v0, "offsetHeight":I
    sub-int v10, v3, v6

    #@20
    div-int/lit8 v10, v10, 0x2

    #@22
    add-int v7, v0, v10

    #@24
    .line 577
    .local v7, "trackOffset":I
    move v4, v0

    #@25
    .line 584
    .local v4, "thumbOffset":I
    :goto_1
    if-eqz v5, :cond_0

    #@27
    .line 585
    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    #@29
    sub-int v10, p1, v10

    #@2b
    iget v11, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    #@2d
    sub-int v8, v10, v11

    #@2f
    .line 586
    .local v8, "trackWidth":I
    add-int v10, v7, v6

    #@31
    invoke-virtual {v5, v9, v7, v8, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@34
    .line 589
    .end local v8    # "trackWidth":I
    :cond_0
    if-eqz v2, :cond_1

    #@36
    .line 590
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    #@39
    move-result v9

    #@3a
    invoke-direct {p0, p1, v2, v9, v4}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    #@3d
    .line 561
    :cond_1
    return-void

    #@3e
    .line 569
    .end local v0    # "offsetHeight":I
    .end local v3    # "thumbHeight":I
    .end local v4    # "thumbOffset":I
    .end local v7    # "trackOffset":I
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@41
    move-result v3

    #@42
    goto :goto_0

    #@43
    .line 579
    .restart local v3    # "thumbHeight":I
    :cond_3
    sub-int v10, v1, v6

    #@45
    div-int/lit8 v0, v10, 0x2

    #@47
    .line 580
    .restart local v0    # "offsetHeight":I
    move v7, v0

    #@48
    .line 581
    .restart local v7    # "trackOffset":I
    sub-int v10, v6, v3

    #@4a
    div-int/lit8 v10, v10, 0x2

    #@4c
    add-int v4, v0, v10

    #@4e
    .restart local v4    # "thumbOffset":I
    goto :goto_1
.end method


# virtual methods
.method canUserSetProgress()Z
    .locals 1

    #@0
    .prologue
    .line 979
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isIndeterminate()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

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

.method drawThumb(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 714
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 715
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@7
    move-result v0

    #@8
    .line 718
    .local v0, "saveCount":I
    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    #@a
    iget v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    #@c
    sub-int/2addr v1, v2

    #@d
    int-to-float v1, v1

    #@e
    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    #@10
    int-to-float v2, v2

    #@11
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    #@14
    .line 719
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@16
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@19
    .line 720
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@1c
    .line 713
    .end local v0    # "saveCount":I
    :cond_0
    return-void
.end method

.method drawTickMarks(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 689
    iget-object v8, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v8, :cond_3

    #@4
    .line 690
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    #@7
    move-result v0

    #@8
    .line 691
    .local v0, "count":I
    const/4 v8, 0x1

    #@9
    if-le v0, v8, :cond_3

    #@b
    .line 692
    iget-object v8, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@d
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@10
    move-result v7

    #@11
    .line 693
    .local v7, "w":I
    iget-object v8, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@13
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@16
    move-result v1

    #@17
    .line 694
    .local v1, "h":I
    if-ltz v7, :cond_0

    #@19
    div-int/lit8 v3, v7, 0x2

    #@1b
    .line 695
    .local v3, "halfW":I
    :goto_0
    if-ltz v1, :cond_1

    #@1d
    div-int/lit8 v2, v1, 0x2

    #@1f
    .line 696
    .local v2, "halfH":I
    :goto_1
    iget-object v8, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@21
    neg-int v9, v3

    #@22
    neg-int v10, v2

    #@23
    invoke-virtual {v8, v9, v10, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@26
    .line 698
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    #@29
    move-result v8

    #@2a
    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    #@2c
    sub-int/2addr v8, v9

    #@2d
    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    #@2f
    sub-int/2addr v8, v9

    #@30
    int-to-float v8, v8

    #@31
    int-to-float v9, v0

    #@32
    div-float v6, v8, v9

    #@34
    .line 699
    .local v6, "spacing":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@37
    move-result v5

    #@38
    .line 700
    .local v5, "saveCount":I
    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    #@3a
    int-to-float v8, v8

    #@3b
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    #@3e
    move-result v9

    #@3f
    div-int/lit8 v9, v9, 0x2

    #@41
    int-to-float v9, v9

    #@42
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    #@45
    .line 701
    const/4 v4, 0x0

    #@46
    .local v4, "i":I
    :goto_2
    if-gt v4, v0, :cond_2

    #@48
    .line 702
    iget-object v8, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@4a
    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@4d
    .line 703
    const/4 v8, 0x0

    #@4e
    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    #@51
    .line 701
    add-int/lit8 v4, v4, 0x1

    #@53
    goto :goto_2

    #@54
    .line 694
    .end local v2    # "halfH":I
    .end local v3    # "halfW":I
    .end local v4    # "i":I
    .end local v5    # "saveCount":I
    .end local v6    # "spacing":F
    :cond_0
    const/4 v3, 0x1

    #@55
    .restart local v3    # "halfW":I
    goto :goto_0

    #@56
    .line 695
    :cond_1
    const/4 v2, 0x1

    #@57
    .restart local v2    # "halfH":I
    goto :goto_1

    #@58
    .line 705
    .restart local v4    # "i":I
    .restart local v5    # "saveCount":I
    .restart local v6    # "spacing":F
    :cond_2
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@5b
    .line 688
    .end local v0    # "count":I
    .end local v1    # "h":I
    .end local v2    # "halfH":I
    .end local v3    # "halfW":I
    .end local v4    # "i":I
    .end local v5    # "saveCount":I
    .end local v6    # "spacing":F
    .end local v7    # "w":I
    :cond_3
    return-void
.end method

.method drawTrack(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 665
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@2
    .line 666
    .local v3, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    #@4
    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 667
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    #@b
    move-result-object v0

    #@c
    .line 668
    .local v0, "insets":Landroid/graphics/Insets;
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    #@e
    .line 669
    .local v2, "tempRect":Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    #@11
    .line 670
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
    .line 671
    iget v4, v2, Landroid/graphics/Rect;->left:I

    #@1d
    iget v5, v0, Landroid/graphics/Insets;->left:I

    #@1f
    add-int/2addr v4, v5

    #@20
    iput v4, v2, Landroid/graphics/Rect;->left:I

    #@22
    .line 672
    iget v4, v2, Landroid/graphics/Rect;->right:I

    #@24
    iget v5, v0, Landroid/graphics/Insets;->right:I

    #@26
    sub-int/2addr v4, v5

    #@27
    iput v4, v2, Landroid/graphics/Rect;->right:I

    #@29
    .line 674
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@2c
    move-result v1

    #@2d
    .line 675
    .local v1, "saveCount":I
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    #@2f
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    #@32
    .line 676
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    #@35
    .line 677
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->drawTickMarks(Landroid/graphics/Canvas;)V

    #@38
    .line 678
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@3b
    .line 664
    .end local v0    # "insets":Landroid/graphics/Insets;
    .end local v1    # "saveCount":I
    .end local v2    # "tempRect":Landroid/graphics/Rect;
    :goto_0
    return-void

    #@3c
    .line 680
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    #@3f
    .line 681
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->drawTickMarks(Landroid/graphics/Canvas;)V

    #@42
    goto :goto_0
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 530
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->drawableHotspotChanged(FF)V

    #@3
    .line 532
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 533
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    #@c
    .line 529
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 5

    #@0
    .prologue
    .line 508
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    #@3
    .line 510
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    #@6
    move-result-object v0

    #@7
    .line 511
    .local v0, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@9
    iget v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    #@b
    const/high16 v4, 0x3f800000    # 1.0f

    #@d
    cmpg-float v3, v3, v4

    #@f
    if-gez v3, :cond_0

    #@11
    .line 512
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_3

    #@17
    const/16 v3, 0xff

    #@19
    :goto_0
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@1c
    .line 515
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@1e
    .line 516
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    #@20
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_1

    #@26
    .line 517
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@2d
    move-result v3

    #@2e
    .line 516
    if-eqz v3, :cond_1

    #@30
    .line 518
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@33
    .line 521
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@35
    .line 522
    .local v2, "tickMark":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    #@37
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@3a
    move-result v3

    #@3b
    if-eqz v3, :cond_2

    #@3d
    .line 523
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@44
    move-result v3

    #@45
    .line 522
    if-eqz v3, :cond_2

    #@47
    .line 524
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@4a
    .line 507
    :cond_2
    return-void

    #@4b
    .line 512
    .end local v1    # "thumb":Landroid/graphics/drawable/Drawable;
    .end local v2    # "tickMark":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    #@4d
    const/high16 v4, 0x437f0000    # 255.0f

    #@4f
    mul-float/2addr v3, v4

    #@50
    float-to-int v3, v3

    #@51
    goto :goto_0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 911
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
    .line 474
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    #@2
    return v0
.end method

.method public getSplitTrack()Z
    .locals 1

    #@0
    .prologue
    .line 335
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    #@2
    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 213
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getThumbOffset()I
    .locals 1

    #@0
    .prologue
    .line 305
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    #@2
    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1

    #@0
    .prologue
    .line 246
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    #@0
    .prologue
    .line 278
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    return-object v0
.end method

.method public getTickMark()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 367
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getTickMarkTintList()Landroid/content/res/ColorStateList;
    .locals 1

    #@0
    .prologue
    .line 400
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getTickMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    #@0
    .prologue
    .line 432
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    #@0
    .prologue
    .line 495
    invoke-super {p0}, Landroid/widget/ProgressBar;->jumpDrawablesToCurrentState()V

    #@3
    .line 497
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 498
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@c
    .line 501
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 502
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@12
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@15
    .line 494
    :cond_1
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 658
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    #@4
    .line 659
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->drawThumb(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 657
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
    .line 917
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 919
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 920
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    #@c
    move-result v0

    #@d
    .line 921
    .local v0, "progress":I
    if-lez v0, :cond_0

    #@f
    .line 922
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@11
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@14
    .line 924
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    #@17
    move-result v1

    #@18
    if-ge v0, v1, :cond_1

    #@1a
    .line 925
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    #@1c
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    #@1f
    .line 916
    .end local v0    # "progress":I
    :cond_1
    return-void
.end method

.method onKeyChange()V
    .locals 0

    #@0
    .prologue
    .line 881
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
    .line 886
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 887
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    #@9
    .line 888
    .local v0, "increment":I
    sparse-switch p1, :sswitch_data_0

    #@c
    .line 906
    .end local v0    # "increment":I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 891
    .restart local v0    # "increment":I
    :sswitch_0
    neg-int v0, v0

    #@12
    .line 896
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    neg-int v0, v0

    #@19
    .line 898
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    #@1c
    move-result v1

    #@1d
    add-int/2addr v1, v0

    #@1e
    invoke-virtual {p0, v1, v2, v2}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_0

    #@24
    .line 899
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    #@27
    .line 900
    return v2

    #@28
    .line 888
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x45 -> :sswitch_0
        0x46 -> :sswitch_1
        0x51 -> :sswitch_1
    .end sparse-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 726
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    #@4
    move-result-object v0

    #@5
    .line 728
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@7
    if-nez v4, :cond_1

    #@9
    const/4 v3, 0x0

    #@a
    .line 729
    .local v3, "thumbHeight":I
    :goto_0
    const/4 v2, 0x0

    #@b
    .line 730
    .local v2, "dw":I
    const/4 v1, 0x0

    #@c
    .line 731
    .local v1, "dh":I
    if-eqz v0, :cond_0

    #@e
    .line 732
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
    .line 733
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
    .line 734
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    #@31
    move-result v1

    #@32
    .line 736
    :cond_0
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    #@34
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    #@36
    add-int/2addr v4, v5

    #@37
    add-int/2addr v2, v4

    #@38
    .line 737
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    #@3a
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    #@3c
    add-int/2addr v4, v5

    #@3d
    add-int/2addr v1, v4

    #@3e
    .line 739
    const/4 v4, 0x0

    #@3f
    invoke-static {v2, p1, v4}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    #@42
    move-result v4

    #@43
    .line 740
    const/4 v5, 0x0

    #@44
    invoke-static {v1, p2, v5}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    #@47
    move-result v5

    #@48
    .line 739
    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    monitor-exit p0

    #@4c
    .line 725
    return-void

    #@4d
    .line 728
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

.method public onResolveDrawables(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 649
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onResolveDrawables(I)V

    #@3
    .line 651
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 652
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@c
    .line 648
    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 984
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onRtlPropertiesChanged(I)V

    #@3
    .line 986
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@5
    .line 987
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@7
    .line 988
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
    .line 993
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    #@17
    .line 983
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
    .line 556
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    #@3
    .line 558
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPos(II)V

    #@6
    .line 555
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    #@0
    .prologue
    .line 867
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    #@3
    .line 866
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    #@0
    .prologue
    .line 875
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    #@3
    .line 874
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 745
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    #@3
    if-eqz v1, :cond_1

    #@5
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 749
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@e
    move-result v1

    #@f
    packed-switch v1, :pswitch_data_0

    #@12
    .line 795
    :cond_0
    :goto_0
    const/4 v1, 0x1

    #@13
    return v1

    #@14
    .line 746
    :cond_1
    return v2

    #@15
    .line 751
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isInScrollingContainer()Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_2

    #@1b
    .line 752
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@1e
    move-result v1

    #@1f
    iput v1, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    #@21
    goto :goto_0

    #@22
    .line 754
    :cond_2
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    #@25
    goto :goto_0

    #@26
    .line 759
    :pswitch_1
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    #@28
    if-eqz v1, :cond_3

    #@2a
    .line 760
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    #@2d
    goto :goto_0

    #@2e
    .line 762
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@31
    move-result v0

    #@32
    .line 763
    .local v0, "x":F
    iget v1, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    #@34
    sub-float v1, v0, v1

    #@36
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    #@39
    move-result v1

    #@3a
    iget v2, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    #@3c
    int-to-float v2, v2

    #@3d
    cmpl-float v1, v1, v2

    #@3f
    if-lez v1, :cond_0

    #@41
    .line 764
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    #@44
    goto :goto_0

    #@45
    .line 770
    .end local v0    # "x":F
    :pswitch_2
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    #@47
    if-eqz v1, :cond_4

    #@49
    .line 771
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    #@4c
    .line 772
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    #@4f
    .line 773
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    #@52
    .line 784
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    #@55
    goto :goto_0

    #@56
    .line 777
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    #@59
    .line 778
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    #@5c
    .line 779
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    #@5f
    goto :goto_1

    #@60
    .line 788
    :pswitch_3
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    #@62
    if-eqz v1, :cond_5

    #@64
    .line 789
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    #@67
    .line 790
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    #@6a
    .line 792
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    #@6d
    goto :goto_0

    #@6e
    .line 749
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method onVisualProgressChanged(IF)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "scale"    # F

    #@0
    .prologue
    .line 539
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onVisualProgressChanged(IF)V

    #@3
    .line 541
    const v1, 0x102000d

    #@6
    if-ne p1, v1, :cond_0

    #@8
    .line 542
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@a
    .line 543
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@c
    .line 544
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    #@f
    move-result v1

    #@10
    const/high16 v2, -0x80000000

    #@12
    invoke-direct {p0, v1, v0, p2, v2}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    #@15
    .line 549
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    #@18
    .line 538
    .end local v0    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 933
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 934
    return v4

    #@9
    .line 937
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_1

    #@f
    .line 938
    return v5

    #@10
    .line 941
    :cond_1
    sparse-switch p1, :sswitch_data_0

    #@13
    .line 972
    return v5

    #@14
    .line 943
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->canUserSetProgress()Z

    #@17
    move-result v2

    #@18
    if-nez v2, :cond_2

    #@1a
    .line 944
    return v5

    #@1b
    .line 946
    :cond_2
    if-eqz p2, :cond_3

    #@1d
    .line 947
    const-string/jumbo v2, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    #@20
    .line 946
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_3

    #@26
    .line 951
    const-string/jumbo v2, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    #@29
    .line 950
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    #@2c
    move-result v1

    #@2d
    .line 952
    .local v1, "value":F
    float-to-int v2, v1

    #@2e
    invoke-virtual {p0, v2, v4, v4}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    #@31
    move-result v2

    #@32
    return v2

    #@33
    .line 948
    .end local v1    # "value":F
    :cond_3
    return v5

    #@34
    .line 956
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->canUserSetProgress()Z

    #@37
    move-result v2

    #@38
    if-nez v2, :cond_4

    #@3a
    .line 957
    return v5

    #@3b
    .line 959
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    #@3e
    move-result v2

    #@3f
    int-to-float v2, v2

    #@40
    const/high16 v3, 0x41a00000    # 20.0f

    #@42
    div-float/2addr v2, v3

    #@43
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    #@46
    move-result v2

    #@47
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    #@4a
    move-result v0

    #@4b
    .line 960
    .local v0, "increment":I
    const/16 v2, 0x2000

    #@4d
    if-ne p1, v2, :cond_5

    #@4f
    .line 961
    neg-int v0, v0

    #@50
    .line 965
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    #@53
    move-result v2

    #@54
    add-int/2addr v2, v0

    #@55
    invoke-virtual {p0, v2, v4, v4}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    #@58
    move-result v2

    #@59
    if-eqz v2, :cond_6

    #@5b
    .line 966
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    #@5e
    .line 967
    return v4

    #@5f
    .line 969
    :cond_6
    return v5

    #@60
    .line 941
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_1
        0x102003d -> :sswitch_0
    .end sparse-switch
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0
    .param p1, "increment"    # I

    #@0
    .prologue
    .line 462
    if-gez p1, :cond_0

    #@2
    neg-int p1, p1

    #@3
    .end local p1    # "increment":I
    :cond_0
    iput p1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    #@5
    .line 461
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 2
    .param p1, "max"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 479
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    #@4
    .line 481
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
    .line 484
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
    .line 478
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
    .line 327
    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    #@2
    .line 328
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    #@5
    .line 326
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 164
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@3
    if-eqz v2, :cond_4

    #@5
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@7
    if-eq p1, v2, :cond_4

    #@9
    .line 165
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@b
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@e
    .line 166
    const/4 v0, 0x1

    #@f
    .line 171
    .local v0, "needUpdate":Z
    :goto_0
    if-eqz p1, :cond_2

    #@11
    .line 172
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@14
    .line 173
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->canResolveLayoutDirection()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 174
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getLayoutDirection()I

    #@1d
    move-result v2

    #@1e
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@21
    .line 180
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@24
    move-result v2

    #@25
    div-int/lit8 v2, v2, 0x2

    #@27
    iput v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    #@29
    .line 183
    if-eqz v0, :cond_2

    #@2b
    .line 184
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
    .line 185
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
    .line 186
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->requestLayout()V

    #@46
    .line 190
    :cond_2
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@48
    .line 192
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    #@4b
    .line 193
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    #@4e
    .line 195
    if-eqz v0, :cond_3

    #@50
    .line 196
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
    .line 197
    if-eqz p1, :cond_3

    #@5d
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@60
    move-result v2

    #@61
    if-eqz v2, :cond_3

    #@63
    .line 200
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    #@66
    move-result-object v1

    #@67
    .line 201
    .local v1, "state":[I
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@6a
    .line 159
    .end local v1    # "state":[I
    :cond_3
    return-void

    #@6b
    .line 168
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
    .line 315
    iput p1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    #@2
    .line 316
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    #@5
    .line 314
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 231
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    #@2
    .line 232
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    #@5
    .line 234
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    #@8
    .line 230
    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 262
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    .line 263
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    #@5
    .line 265
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    #@8
    .line 261
    return-void
.end method

.method public setTickMark(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "tickMark"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 345
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 346
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@a
    .line 349
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@c
    .line 351
    if-eqz p1, :cond_2

    #@e
    .line 352
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@11
    .line 353
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getLayoutDirection()I

    #@14
    move-result v0

    #@15
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@18
    .line 354
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 355
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    #@21
    move-result-object v0

    #@22
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@25
    .line 357
    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyTickMarkTint()V

    #@28
    .line 360
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    #@2b
    .line 344
    return-void
.end method

.method public setTickMarkTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 385
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    #@2
    .line 386
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    #@5
    .line 388
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyTickMarkTint()V

    #@8
    .line 384
    return-void
.end method

.method public setTickMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 416
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    .line 417
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTintMode:Z

    #@5
    .line 419
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyTickMarkTint()V

    #@8
    .line 415
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 490
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    #@2
    if-eq p1, v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@6
    if-ne p1, v0, :cond_1

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@d
    move-result v0

    #@e
    goto :goto_0
.end method
