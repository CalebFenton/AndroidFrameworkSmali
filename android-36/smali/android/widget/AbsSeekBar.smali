.class public abstract Landroid/widget/AbsSeekBar;
.super Landroid/widget/ProgressBar;
.source "AbsSeekBar.java"


# static fields
.field private static final greylist-max-o NO_ALPHA:I = 0xff


# instance fields
.field private greylist mDisabledAlpha:F

.field private final blacklist mGestureExclusionRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHasThumbBlendMode:Z

.field private greylist-max-o mHasThumbTint:Z

.field private blacklist mHasTickMarkBlendMode:Z

.field private greylist-max-o mHasTickMarkTint:Z

.field private greylist mIsDragging:Z

.field greylist mIsUserSeekable:Z

.field private greylist-max-o mKeyProgressIncrement:I

.field private greylist-max-o mScaledTouchSlop:I

.field private greylist mSplitTrack:Z

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private greylist mThumb:Landroid/graphics/drawable/Drawable;

.field private blacklist mThumbBlendMode:Landroid/graphics/BlendMode;

.field private blacklist mThumbExclusionMaxSize:I

.field private greylist-max-o mThumbOffset:I

.field private final blacklist mThumbRect:Landroid/graphics/Rect;

.field private greylist-max-o mThumbTintList:Landroid/content/res/ColorStateList;

.field private greylist-max-o mTickMark:Landroid/graphics/drawable/Drawable;

.field private blacklist mTickMarkBlendMode:Landroid/graphics/BlendMode;

.field private greylist-max-o mTickMarkTintList:Landroid/content/res/ColorStateList;

.field private greylist-max-o mTouchDownX:F

.field greylist mTouchProgressOffset:F

.field private blacklist mTouchThumbOffset:F

.field private blacklist mUserGestureExclusionRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 108
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 59
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    .line 60
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 61
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbBlendMode:Z

    .line 64
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 65
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    .line 66
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    .line 67
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkBlendMode:Z

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 90
    iput v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mTouchThumbOffset:F

    .line 103
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    .line 109
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 59
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    .line 60
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 61
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbBlendMode:Z

    .line 64
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 65
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    .line 66
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    .line 67
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkBlendMode:Z

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 90
    iput v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mTouchThumbOffset:F

    .line 103
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    .line 113
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 117
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 120
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 59
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    .line 60
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 61
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbBlendMode:Z

    .line 64
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 65
    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    .line 66
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    .line 67
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkBlendMode:Z

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 90
    iput v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 101
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/AbsSeekBar;->mTouchThumbOffset:F

    .line 103
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    .line 104
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    .line 105
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    .line 122
    sget-object v2, Lcom/android/internal/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 124
    .local v7, "a":Landroid/content/res/TypedArray;
    sget-object v5, Lcom/android/internal/R$styleable;->SeekBar:[I

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move v8, p3

    move v9, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "attrs":Landroid/util/AttributeSet;
    .end local p3    # "defStyleAttr":I
    .end local p4    # "defStyleRes":I
    .local v4, "context":Landroid/content/Context;
    .local v6, "attrs":Landroid/util/AttributeSet;
    .local v8, "defStyleAttr":I
    .local v9, "defStyleRes":I
    invoke-virtual/range {v3 .. v9}, Landroid/widget/AbsSeekBar;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 127
    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 128
    .local p1, "thumb":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 130
    const/4 p2, 0x4

    invoke-virtual {v7, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    const/4 p4, -0x1

    if-eqz p3, :cond_65

    .line 131
    invoke-virtual {v7, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iget-object p3, v3, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    invoke-static {p2, p3}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object p2

    iput-object p2, v3, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    .line 133
    iput-boolean v0, v3, Landroid/widget/AbsSeekBar;->mHasThumbBlendMode:Z

    .line 136
    :cond_65
    const/4 p2, 0x3

    invoke-virtual {v7, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_74

    .line 137
    invoke-virtual {v7, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, v3, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 138
    iput-boolean v0, v3, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 141
    :cond_74
    const/4 p3, 0x5

    invoke-virtual {v7, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 142
    .local p3, "tickMark":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p3}, Landroid/widget/AbsSeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    .line 144
    const/4 v2, 0x7

    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_91

    .line 145
    invoke-virtual {v7, v2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    iget-object v2, v3, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    invoke-static {p4, v2}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object p4

    iput-object p4, v3, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    .line 147
    iput-boolean v0, v3, Landroid/widget/AbsSeekBar;->mHasTickMarkBlendMode:Z

    .line 150
    :cond_91
    const/4 p4, 0x6

    invoke-virtual {v7, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 151
    invoke-virtual {v7, p4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    iput-object p4, v3, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 152
    iput-boolean v0, v3, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    .line 155
    :cond_a0
    const/4 p4, 0x2

    invoke-virtual {v7, p4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, v3, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    .line 158
    nop

    .line 159
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbOffset()I

    move-result p4

    .line 158
    invoke-virtual {v7, v0, p4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p4

    .line 160
    .local p4, "thumbOffset":I
    invoke-virtual {p0, p4}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    .line 162
    const/16 v2, 0x8

    invoke-virtual {v7, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 163
    .local v0, "useDisabledAlpha":Z
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 165
    if-eqz v0, :cond_d0

    .line 166
    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v4, v6, v2, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 167
    .local v1, "ta":Landroid/content/res/TypedArray;
    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, v3, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    .line 168
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 169
    .end local v1    # "ta":Landroid/content/res/TypedArray;
    goto :goto_d4

    .line 170
    :cond_d0
    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, v3, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    .line 173
    :goto_d4
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 174
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyTickMarkTint()V

    .line 176
    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, v3, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    .line 177
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x1050356

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v3, Landroid/widget/AbsSeekBar;->mThumbExclusionMaxSize:I

    .line 179
    return-void
.end method

.method private greylist-max-o applyThumbTint()V
    .registers 3

    .line 344
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbBlendMode:Z

    if-eqz v0, :cond_3b

    .line 345
    :cond_c
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 347
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    if-eqz v0, :cond_1f

    .line 348
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 351
    :cond_1f
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbBlendMode:Z

    if-eqz v0, :cond_2a

    .line 352
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 357
    :cond_2a
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 358
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 361
    :cond_3b
    return-void
.end method

.method private greylist-max-o applyTickMarkTint()V
    .registers 3

    .line 531
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkBlendMode:Z

    if-eqz v0, :cond_3b

    .line 532
    :cond_c
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 534
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    if-eqz v0, :cond_1f

    .line 535
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 538
    :cond_1f
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkBlendMode:Z

    if-eqz v0, :cond_2a

    .line 539
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 544
    :cond_2a
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 545
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 548
    :cond_3b
    return-void
.end method

.method private greylist-max-o attemptClaimDrag()V
    .registers 3

    .line 1024
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_a

    .line 1025
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1027
    :cond_a
    return-void
.end method

.method private greylist-max-o getScale()F
    .registers 6

    .line 704
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v0

    .line 705
    .local v0, "min":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    .line 706
    .local v1, "max":I
    sub-int v2, v1, v0

    .line 707
    .local v2, "range":I
    if-lez v2, :cond_15

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    goto :goto_16

    :cond_15
    const/4 v3, 0x0

    :goto_16
    return v3
.end method

.method private greylist-max-o setHotspot(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 976
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 977
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_9

    .line 978
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 980
    :cond_9
    return-void
.end method

.method private greylist-max-o setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .registers 21
    .param p1, "w"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "offset"    # I

    .line 720
    move-object/from16 v0, p0

    move/from16 v1, p4

    iget v2, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v2, p1, v2

    iget v3, v0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v2, v3

    .line 721
    .local v2, "available":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 722
    .local v3, "thumbWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 723
    .local v4, "thumbHeight":I
    sub-int/2addr v2, v3

    .line 726
    iget v5, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    .line 728
    int-to-float v5, v2

    mul-float v5, v5, p3

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 731
    .local v5, "thumbPos":I
    const/high16 v6, -0x80000000

    if-ne v1, v6, :cond_2d

    .line 732
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 733
    .local v6, "oldBounds":Landroid/graphics/Rect;
    iget v7, v6, Landroid/graphics/Rect;->top:I

    .line 734
    .local v7, "top":I
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 735
    .local v6, "bottom":I
    goto :goto_31

    .line 736
    .end local v6    # "bottom":I
    .end local v7    # "top":I
    :cond_2d
    move/from16 v7, p4

    .line 737
    .restart local v7    # "top":I
    add-int v6, v1, v4

    .line 740
    .restart local v6    # "bottom":I
    :goto_31
    invoke-virtual {v0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_3e

    iget-boolean v8, v0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v8, :cond_3e

    sub-int v8, v2, v5

    goto :goto_3f

    :cond_3e
    move v8, v5

    .line 741
    .local v8, "left":I
    :goto_3f
    add-int v9, v8, v3

    .line 743
    .local v9, "right":I
    invoke-virtual {v0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 744
    .local v10, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_59

    .line 745
    iget v11, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v12, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v11, v12

    .line 746
    .local v11, "offsetX":I
    iget v12, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    .line 747
    .local v12, "offsetY":I
    add-int v13, v8, v11

    add-int v14, v7, v12

    add-int v15, v9, v11

    add-int v0, v6, v12

    invoke-virtual {v10, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 752
    .end local v11    # "offsetX":I
    .end local v12    # "offsetY":I
    :cond_59
    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v7, v9, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 753
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->updateGestureExclusionRects()V

    .line 754
    return-void
.end method

.method private greylist-max-o startDrag(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 963
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 965
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    .line 967
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 970
    :cond_11
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 971
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 972
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    .line 973
    return-void
.end method

.method private greylist trackTouchEvent(Landroid/view/MotionEvent;)V
    .registers 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 984
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 985
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 986
    .local v1, "y":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    .line 987
    .local v2, "width":I
    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v3, v2, v3

    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v3, v4

    .line 990
    .local v3, "availableWidth":I
    const/4 v4, 0x0

    .line 991
    .local v4, "progress":F
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_43

    iget-boolean v5, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v5, :cond_43

    .line 992
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v5, v2, v5

    if-le v0, v5, :cond_2e

    .line 993
    const/4 v5, 0x0

    .local v5, "scale":F
    goto :goto_5e

    .line 994
    .end local v5    # "scale":F
    :cond_2e
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v0, v5, :cond_35

    .line 995
    const/high16 v5, 0x3f800000    # 1.0f

    .restart local v5    # "scale":F
    goto :goto_5e

    .line 997
    .end local v5    # "scale":F
    :cond_35
    sub-int v5, v3, v0

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    int-to-float v6, v3

    div-float/2addr v5, v6

    iget v6, p0, Landroid/widget/AbsSeekBar;->mTouchThumbOffset:F

    add-float/2addr v5, v6

    .line 999
    .restart local v5    # "scale":F
    iget v4, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_5e

    .line 1002
    .end local v5    # "scale":F
    :cond_43
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v0, v5, :cond_49

    .line 1003
    const/4 v5, 0x0

    .restart local v5    # "scale":F
    goto :goto_5e

    .line 1004
    .end local v5    # "scale":F
    :cond_49
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v5, v2, v5

    if-le v0, v5, :cond_52

    .line 1005
    const/high16 v5, 0x3f800000    # 1.0f

    .restart local v5    # "scale":F
    goto :goto_5e

    .line 1007
    .end local v5    # "scale":F
    :cond_52
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v5, v0, v5

    int-to-float v5, v5

    int-to-float v6, v3

    div-float/2addr v5, v6

    iget v6, p0, Landroid/widget/AbsSeekBar;->mTouchThumbOffset:F

    add-float/2addr v5, v6

    .line 1008
    .restart local v5    # "scale":F
    iget v4, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    .line 1012
    :goto_5e
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v7

    sub-int/2addr v6, v7

    .line 1013
    .local v6, "range":I
    int-to-float v7, v6

    mul-float/2addr v7, v5

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    add-float/2addr v4, v7

    .line 1015
    int-to-float v7, v0

    int-to-float v8, v1

    invoke-direct {p0, v7, v8}, Landroid/widget/AbsSeekBar;->setHotspot(FF)V

    .line 1016
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v9}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    .line 1017
    return-void
.end method

.method private blacklist updateGestureExclusionRects()V
    .registers 5

    .line 764
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 765
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_a

    .line 766
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    invoke-super {p0, v1}, Landroid/widget/ProgressBar;->setSystemGestureExclusionRects(Ljava/util/List;)V

    .line 767
    return-void

    .line 769
    :cond_a
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 770
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 771
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v3, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 772
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsSeekBar;->mThumbExclusionMaxSize:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/AbsSeekBar;->growRectTo(Landroid/graphics/Rect;I)V

    .line 773
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumbRect:Landroid/graphics/Rect;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 774
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 775
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mGestureExclusionRects:Ljava/util/List;

    invoke-super {p0, v1}, Landroid/widget/ProgressBar;->setSystemGestureExclusionRects(Ljava/util/List;)V

    .line 776
    return-void
.end method

.method private greylist-max-o updateThumbAndTrackPos(II)V
    .registers 13
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 671
    iget v0, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v0, p2, v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int/2addr v0, v1

    .line 672
    .local v0, "paddedHeight":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 673
    .local v1, "track":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 677
    .local v2, "thumb":Landroid/graphics/drawable/Drawable;
    iget v3, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 678
    .local v3, "trackHeight":I
    const/4 v4, 0x0

    if-nez v2, :cond_18

    move v5, v4

    goto :goto_1c

    :cond_18
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 683
    .local v5, "thumbHeight":I
    :goto_1c
    if-le v5, v3, :cond_29

    .line 684
    sub-int v6, v0, v5

    div-int/lit8 v6, v6, 0x2

    .line 685
    .local v6, "offsetHeight":I
    sub-int v7, v5, v3

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    .line 686
    .local v7, "trackOffset":I
    nop

    .line 687
    .local v6, "thumbOffset":I
    goto :goto_34

    .line 688
    .end local v6    # "thumbOffset":I
    .end local v7    # "trackOffset":I
    :cond_29
    sub-int v6, v0, v3

    div-int/lit8 v6, v6, 0x2

    .line 689
    .local v6, "offsetHeight":I
    move v7, v6

    .line 690
    .restart local v7    # "trackOffset":I
    sub-int v8, v3, v5

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v6

    move v6, v8

    .line 693
    .local v6, "thumbOffset":I
    :goto_34
    if-eqz v1, :cond_42

    .line 694
    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v8, p1, v8

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v8, v9

    .line 695
    .local v8, "trackWidth":I
    add-int v9, v7, v3

    invoke-virtual {v1, v4, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 698
    .end local v8    # "trackWidth":I
    :cond_42
    if-eqz v2, :cond_4b

    .line 699
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v4

    invoke-direct {p0, p1, v2, v4, v6}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 701
    :cond_4b
    return-void
.end method


# virtual methods
.method greylist-max-o canUserSetProgress()Z
    .registers 2

    .line 1146
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method greylist-max-r drawThumb(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 870
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1c

    .line 871
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 874
    .local v0, "saveCount":I
    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 875
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 876
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 878
    .end local v0    # "saveCount":I
    :cond_1c
    return-void
.end method

.method protected greylist-max-o drawTickMarks(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 844
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5d

    .line 845
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    .line 846
    .local v0, "count":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_5d

    .line 847
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 848
    .local v2, "w":I
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 849
    .local v3, "h":I
    if-ltz v2, :cond_21

    div-int/lit8 v4, v2, 0x2

    goto :goto_22

    :cond_21
    move v4, v1

    .line 850
    .local v4, "halfW":I
    :goto_22
    if-ltz v3, :cond_26

    div-int/lit8 v1, v3, 0x2

    .line 851
    .local v1, "halfH":I
    :cond_26
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    neg-int v6, v4

    neg-int v7, v1

    invoke-virtual {v5, v6, v7, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 853
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v5

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    int-to-float v6, v0

    div-float/2addr v5, v6

    .line 854
    .local v5, "spacing":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 855
    .local v6, "saveCount":I
    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 856
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4c
    if-gt v7, v0, :cond_5a

    .line 857
    iget-object v8, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 858
    const/4 v8, 0x0

    invoke-virtual {p1, v5, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 856
    add-int/lit8 v7, v7, 0x1

    goto :goto_4c

    .line 860
    .end local v7    # "i":I
    :cond_5a
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 863
    .end local v0    # "count":I
    .end local v1    # "halfH":I
    .end local v2    # "w":I
    .end local v3    # "h":I
    .end local v4    # "halfW":I
    .end local v5    # "spacing":F
    .end local v6    # "saveCount":I
    :cond_5d
    return-void
.end method

.method greylist-max-o drawTrack(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 820
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 821
    .local v0, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3c

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    if-eqz v1, :cond_3c

    .line 822
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v1

    .line 823
    .local v1, "insets":Landroid/graphics/Insets;
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    .line 824
    .local v2, "tempRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 825
    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v4, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 826
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Insets;->left:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 827
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Insets;->right:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 829
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 830
    .local v3, "saveCount":I
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 831
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    .line 832
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->drawTickMarks(Landroid/graphics/Canvas;)V

    .line 833
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 834
    .end local v1    # "insets":Landroid/graphics/Insets;
    .end local v2    # "tempRect":Landroid/graphics/Rect;
    .end local v3    # "saveCount":I
    goto :goto_42

    .line 835
    :cond_3c
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    .line 836
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->drawTickMarks(Landroid/graphics/Canvas;)V

    .line 838
    :goto_42
    return-void
.end method

.method public whitelist drawableHotspotChanged(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 639
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->drawableHotspotChanged(FF)V

    .line 641
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 642
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 644
    :cond_c
    return-void
.end method

.method protected whitelist drawableStateChanged()V
    .registers 5

    .line 617
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    .line 619
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 620
    .local v0, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_23

    iget v1, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_23

    .line 621
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1a

    const/16 v1, 0xff

    goto :goto_20

    :cond_1a
    const/high16 v1, 0x437f0000    # 255.0f

    iget v2, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    :goto_20
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 624
    :cond_23
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 625
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 626
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 627
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 630
    :cond_3a
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 631
    .local v2, "tickMark":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_51

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 632
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 633
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 635
    :cond_51
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 1077
    const-class v0, Landroid/widget/AbsSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getKeyProgressIncrement()I
    .registers 2

    .line 569
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public whitelist getSplitTrack()Z
    .registers 2

    .line 397
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    return v0
.end method

.method public whitelist getThumb()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 243
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getThumbOffset()I
    .registers 2

    .line 367
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public whitelist getThumbTintBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    .line 340
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public whitelist getThumbTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 277
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 326
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    if-eqz v0, :cond_b

    .line 327
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    invoke-static {v0}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 326
    :goto_c
    return-object v0
.end method

.method public whitelist getTickMark()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 429
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getTickMarkTintBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    .line 527
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    return-object v0
.end method

.method public whitelist getTickMarkTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 463
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public whitelist getTickMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 512
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    if-eqz v0, :cond_b

    .line 513
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    invoke-static {v0}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 512
    :goto_c
    return-object v0
.end method

.method public blacklist growRectTo(Landroid/graphics/Rect;I)V
    .registers 7
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "minimumSize"    # I

    .line 788
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v0, p2, v0

    .line 789
    .local v0, "dy":I
    if-lez v0, :cond_18

    .line 790
    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v0, 0x1

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 791
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 793
    :cond_18
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v1, p2, v1

    .line 794
    .local v1, "dx":I
    if-lez v1, :cond_30

    .line 795
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v1, 0x1

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 796
    iget v2, p1, Landroid/graphics/Rect;->right:I

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 798
    :cond_30
    return-void
.end method

.method public whitelist jumpDrawablesToCurrentState()V
    .registers 2

    .line 604
    invoke-super {p0}, Landroid/widget/ProgressBar;->jumpDrawablesToCurrentState()V

    .line 606
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 607
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 610
    :cond_c
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    .line 611
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 613
    :cond_15
    return-void
.end method

.method protected declared-synchronized whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    monitor-enter p0

    .line 814
    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 815
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->drawThumb(Landroid/graphics/Canvas;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 816
    monitor-exit p0

    return-void

    .line 813
    .end local p0    # "this":Landroid/widget/AbsSeekBar;
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1083
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1085
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1086
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    .line 1087
    .local v0, "progress":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v1

    if-le v0, v1, :cond_18

    .line 1088
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1090
    :cond_18
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 1091
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1094
    .end local v0    # "progress":I
    :cond_23
    return-void
.end method

.method greylist-max-o onKeyChange()V
    .registers 1

    .line 1048
    return-void
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1052
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1053
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 1054
    .local v0, "increment":I
    sparse-switch p1, :sswitch_data_2c

    goto :goto_26

    .line 1057
    :sswitch_c
    neg-int v0, v0

    .line 1062
    :sswitch_d
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_15

    neg-int v1, v0

    goto :goto_16

    :cond_15
    move v1, v0

    .line 1064
    .end local v0    # "increment":I
    .local v1, "increment":I
    :goto_16
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    add-int/2addr v0, v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v2}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1065
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    .line 1066
    return v2

    .line 1072
    .end local v1    # "increment":I
    :cond_26
    :goto_26
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    nop

    :sswitch_data_2c
    .sparse-switch
        0x15 -> :sswitch_c
        0x16 -> :sswitch_d
        0x45 -> :sswitch_c
        0x46 -> :sswitch_d
        0x51 -> :sswitch_d
    .end sparse-switch
.end method

.method protected declared-synchronized whitelist onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    monitor-enter p0

    .line 882
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 884
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-nez v1, :cond_c

    move v1, v2

    goto :goto_12

    :cond_c
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 885
    .local v1, "thumbHeight":I
    :goto_12
    const/4 v3, 0x0

    .line 886
    .local v3, "dw":I
    const/4 v4, 0x0

    .line 887
    .local v4, "dh":I
    if-eqz v0, :cond_3b

    .line 888
    iget v5, p0, Landroid/widget/AbsSeekBar;->mMinWidth:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v3, v5

    .line 889
    iget v5, p0, Landroid/widget/AbsSeekBar;->mMinHeight:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 890
    .end local v4    # "dh":I
    .local v5, "dh":I
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 892
    .end local v5    # "dh":I
    .end local p0    # "this":Landroid/widget/AbsSeekBar;
    .restart local v4    # "dh":I
    :cond_3b
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 893
    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    iget v6, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 895
    invoke-static {v3, p1, v2}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v5

    .line 896
    invoke-static {v4, p2, v2}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v2

    .line 895
    invoke-virtual {p0, v5, v2}, Landroid/widget/AbsSeekBar;->setMeasuredDimension(II)V
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_54

    .line 897
    monitor-exit p0

    return-void

    .line 881
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "thumbHeight":I
    .end local v3    # "dw":I
    .end local v4    # "dh":I
    .end local p1    # "widthMeasureSpec":I
    .end local p2    # "heightMeasureSpec":I
    :catchall_54
    move-exception p1

    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw p1
.end method

.method public greylist-max-o onResolveDrawables(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .line 805
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onResolveDrawables(I)V

    .line 807
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 808
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 810
    :cond_c
    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .registers 6
    .param p1, "layoutDirection"    # I

    .line 1151
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onRtlPropertiesChanged(I)V

    .line 1153
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 1154
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_17

    .line 1155
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v2

    const/high16 v3, -0x80000000

    invoke-direct {p0, v1, v0, v2, v3}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 1160
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 1162
    :cond_17
    return-void
.end method

.method protected whitelist onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 665
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    .line 667
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPos(II)V

    .line 668
    return-void
.end method

.method greylist-max-o onStartTrackingTouch()V
    .registers 2

    .line 1033
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 1034
    return-void
.end method

.method greylist-max-o onStopTrackingTouch()V
    .registers 2

    .line 1041
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 1042
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 901
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b7

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_b7

    .line 905
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_b8

    goto/16 :goto_b5

    .line 952
    :pswitch_16
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_20

    .line 953
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 954
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    .line 956
    :cond_20
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto/16 :goto_b5

    .line 923
    :pswitch_25
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_2e

    .line 924
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_b5

    .line 926
    :cond_2e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 927
    .local v0, "x":F
    iget v1, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_44

    .line 928
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    .line 931
    .end local v0    # "x":F
    :cond_44
    goto :goto_b5

    .line 934
    :pswitch_45
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_53

    .line 935
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 936
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 937
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    goto :goto_5c

    .line 941
    :cond_53
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 942
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 943
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 948
    :goto_5c
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 949
    goto :goto_b5

    .line 907
    :pswitch_60
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a4

    .line 908
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v0, v1

    .line 909
    .local v0, "availableWidth":I
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v2

    .line 910
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    int-to-float v3, v0

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Landroid/widget/AbsSeekBar;->mTouchThumbOffset:F

    .line 911
    iget v1, p0, Landroid/widget/AbsSeekBar;->mTouchThumbOffset:F

    int-to-float v2, v0

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbOffset()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_a4

    .line 912
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsSeekBar;->mTouchThumbOffset:F

    .line 915
    .end local v0    # "availableWidth":I
    :cond_a4
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isInScrollingContainer()Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 916
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    goto :goto_b5

    .line 918
    :cond_b1
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    .line 920
    nop

    .line 959
    :goto_b5
    const/4 v0, 0x1

    return v0

    .line 902
    :cond_b7
    :goto_b7
    return v1

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_60
        :pswitch_45
        :pswitch_25
        :pswitch_16
    .end packed-switch
.end method

.method greylist-max-o onVisualProgressChanged(IF)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "scale"    # F

    .line 648
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onVisualProgressChanged(IF)V

    .line 650
    const v0, 0x102000d

    if-ne p1, v0, :cond_18

    .line 651
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 652
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_18

    .line 653
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v0, p2, v2}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 658
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 661
    .end local v0    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_18
    return-void
.end method

.method public greylist-max-o performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 8
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 1099
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1100
    return v1

    .line 1103
    :cond_8
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_10

    .line 1104
    return v2

    .line 1107
    :cond_10
    sparse-switch p1, :sswitch_data_62

    .line 1139
    return v2

    .line 1109
    :sswitch_14
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->canUserSetProgress()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1110
    return v2

    .line 1112
    :cond_1b
    if-eqz p2, :cond_30

    const-string v0, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_26

    goto :goto_30

    .line 1116
    :cond_26
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    .line 1118
    .local v0, "value":F
    float-to-int v2, v0

    invoke-virtual {p0, v2, v1, v1}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v1

    return v1

    .line 1114
    .end local v0    # "value":F
    :cond_30
    :goto_30
    return v2

    .line 1122
    :sswitch_31
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->canUserSetProgress()Z

    move-result v0

    if-nez v0, :cond_38

    .line 1123
    return v2

    .line 1125
    :cond_38
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v3

    sub-int/2addr v0, v3

    .line 1126
    .local v0, "range":I
    int-to-float v3, v0

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1127
    .local v3, "increment":I
    const/16 v4, 0x2000

    if-ne p1, v4, :cond_52

    .line 1128
    neg-int v3, v3

    .line 1132
    :cond_52
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v4, v1, v1}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 1133
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    .line 1134
    return v1

    .line 1136
    :cond_61
    return v2

    :sswitch_data_62
    .sparse-switch
        0x1000 -> :sswitch_31
        0x2000 -> :sswitch_31
        0x102003d -> :sswitch_14
    .end sparse-switch
.end method

.method public whitelist setKeyProgressIncrement(I)V
    .registers 3
    .param p1, "increment"    # I

    .line 557
    if-gez p1, :cond_4

    neg-int v0, p1

    goto :goto_5

    :cond_4
    move v0, p1

    :goto_5
    iput v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 558
    return-void
.end method

.method public declared-synchronized whitelist setMax(I)V
    .registers 5
    .param p1, "max"    # I

    monitor-enter p0

    .line 587
    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 588
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    .line 590
    .local v0, "range":I
    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v1, :cond_19

    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    div-int v1, v0, v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_29

    .line 593
    .end local p0    # "this":Landroid/widget/AbsSeekBar;
    :cond_19
    int-to-float v1, v0

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 595
    :cond_29
    monitor-exit p0

    return-void

    .line 586
    .end local v0    # "range":I
    .end local p1    # "max":I
    :catchall_2b
    move-exception p1

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public declared-synchronized whitelist setMin(I)V
    .registers 5
    .param p1, "min"    # I

    monitor-enter p0

    .line 574
    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMin(I)V

    .line 575
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    .line 577
    .local v0, "range":I
    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v1, :cond_19

    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    div-int v1, v0, v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_29

    .line 581
    .end local p0    # "this":Landroid/widget/AbsSeekBar;
    :cond_19
    int-to-float v1, v0

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 583
    :cond_29
    monitor-exit p0

    return-void

    .line 573
    .end local v0    # "range":I
    .end local p1    # "min":I
    :catchall_2b
    move-exception p1

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public whitelist setSplitTrack(Z)V
    .registers 2
    .param p1, "splitTrack"    # Z

    .line 389
    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    .line 390
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 391
    return-void
.end method

.method public whitelist setSystemGestureExclusionRects(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 758
    .local p1, "rects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    const-string/jumbo v0, "rects must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mUserGestureExclusionRects:Ljava/util/List;

    .line 760
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->updateGestureExclusionRects()V

    .line 761
    return-void
.end method

.method public whitelist setThumb(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .line 194
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_10

    .line 195
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 196
    const/4 v0, 0x1

    .local v0, "needUpdate":Z
    goto :goto_11

    .line 198
    .end local v0    # "needUpdate":Z
    :cond_10
    const/4 v0, 0x0

    .line 201
    .restart local v0    # "needUpdate":Z
    :goto_11
    if-eqz p1, :cond_48

    .line 202
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 203
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->canResolveLayoutDirection()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 204
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 210
    :cond_23
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 213
    if-eqz v0, :cond_48

    .line 214
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v1, v2, :cond_45

    .line 215
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-eq v1, v2, :cond_48

    .line 216
    :cond_45
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->requestLayout()V

    .line 220
    :cond_48
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 222
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 223
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 225
    if-eqz v0, :cond_6c

    .line 226
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPos(II)V

    .line 227
    if-eqz p1, :cond_6c

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 230
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    .line 231
    .local v1, "state":[I
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 234
    .end local v1    # "state":[I
    :cond_6c
    return-void
.end method

.method public whitelist setThumbOffset(I)V
    .registers 2
    .param p1, "thumbOffset"    # I

    .line 377
    iput p1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 378
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 379
    return-void
.end method

.method public whitelist setThumbTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 3
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;

    .line 310
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbBlendMode:Landroid/graphics/BlendMode;

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbBlendMode:Z

    .line 312
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 313
    return-void
.end method

.method public whitelist setThumbTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 261
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    .line 264
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    .line 265
    return-void
.end method

.method public whitelist setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 293
    if-eqz p1, :cond_9

    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_a

    .line 294
    :cond_9
    const/4 v0, 0x0

    .line 293
    :goto_a
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 295
    return-void
.end method

.method public whitelist setTickMark(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "tickMark"    # Landroid/graphics/drawable/Drawable;

    .line 407
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 408
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 411
    :cond_a
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 413
    if-eqz p1, :cond_28

    .line 414
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 415
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 416
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 417
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 419
    :cond_25
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyTickMarkTint()V

    .line 422
    :cond_28
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    .line 423
    return-void
.end method

.method public whitelist setTickMarkTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 3
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;

    .line 495
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mTickMarkBlendMode:Landroid/graphics/BlendMode;

    .line 496
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkBlendMode:Z

    .line 498
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyTickMarkTint()V

    .line 499
    return-void
.end method

.method public whitelist setTickMarkTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 447
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    .line 450
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyTickMarkTint()V

    .line 451
    return-void
.end method

.method public whitelist setTickMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 479
    if-eqz p1, :cond_9

    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setTickMarkTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 480
    return-void
.end method

.method protected whitelist verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 599
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_11

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_11

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method
