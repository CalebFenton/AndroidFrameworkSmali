.class public Landroid/widget/ImageView;
.super Landroid/view/View;
.source "ImageView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ImageView$ImageViewBitmapDrawable;,
        Landroid/widget/ImageView$ScaleType;
    }
.end annotation


# static fields
.field private static final sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

.field private static final sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mAdjustViewBounds:Z

.field private mAdjustViewBoundsCompat:Z

.field private mAlpha:I

.field private mBaseline:I

.field private mBaselineAlignBottom:Z

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mColorMod:Z

.field private mCropToPadding:Z

.field private mDrawMatrix:Landroid/graphics/Matrix;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableHeight:I

.field private mDrawableTintList:Landroid/content/res/ColorStateList;

.field private mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mDrawableWidth:I

.field private mHasColorFilter:Z

.field private mHasDrawableTint:Z

.field private mHasDrawableTintMode:Z

.field private mHaveFrame:Z

.field private mLevel:I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMergeState:Z

.field private mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

.field private mResource:I

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mState:[I

.field private mTempDst:Landroid/graphics/RectF;

.field private mTempSrc:Landroid/graphics/RectF;

.field private mUri:Landroid/net/Uri;

.field private mViewAlphaScale:I

.field private mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 119
    const/16 v0, 0x8

    #@7
    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    #@9
    .line 120
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    #@b
    aput-object v1, v0, v3

    #@d
    .line 121
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    #@f
    aput-object v1, v0, v4

    #@11
    .line 122
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    #@13
    aput-object v1, v0, v5

    #@15
    .line 123
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    #@17
    aput-object v1, v0, v6

    #@19
    .line 124
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    #@1b
    aput-object v1, v0, v7

    #@1d
    .line 125
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    #@1f
    const/4 v2, 0x5

    #@20
    aput-object v1, v0, v2

    #@22
    .line 126
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    #@24
    const/4 v2, 0x6

    #@25
    aput-object v1, v0, v2

    #@27
    .line 127
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    #@29
    const/4 v2, 0x7

    #@2a
    aput-object v1, v0, v2

    #@2c
    .line 119
    sput-object v0, Landroid/widget/ImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    #@2e
    .line 928
    new-array v0, v7, [Landroid/graphics/Matrix$ScaleToFit;

    #@30
    .line 929
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    #@32
    aput-object v1, v0, v3

    #@34
    .line 930
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    #@36
    aput-object v1, v0, v4

    #@38
    .line 931
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    #@3a
    aput-object v1, v0, v5

    #@3c
    .line 932
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    #@3e
    aput-object v1, v0, v6

    #@40
    .line 928
    sput-object v0, Landroid/widget/ImageView;->sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

    #@42
    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const v0, 0x7fffffff

    #@3
    const/4 v2, 0x0

    #@4
    const/4 v1, 0x0

    #@5
    .line 131
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@8
    .line 77
    iput v1, p0, Landroid/widget/ImageView;->mResource:I

    #@a
    .line 80
    iput-boolean v1, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    #@c
    .line 81
    iput-boolean v1, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    #@e
    .line 82
    iput v0, p0, Landroid/widget/ImageView;->mMaxWidth:I

    #@10
    .line 83
    iput v0, p0, Landroid/widget/ImageView;->mMaxHeight:I

    #@12
    .line 86
    iput-object v2, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    #@14
    .line 87
    iput-boolean v1, p0, Landroid/widget/ImageView;->mHasColorFilter:Z

    #@16
    .line 89
    const/16 v0, 0xff

    #@18
    iput v0, p0, Landroid/widget/ImageView;->mAlpha:I

    #@1a
    .line 90
    const/16 v0, 0x100

    #@1c
    iput v0, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    #@1e
    .line 91
    iput-boolean v1, p0, Landroid/widget/ImageView;->mColorMod:Z

    #@20
    .line 93
    iput-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@22
    .line 94
    iput-object v2, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

    #@24
    .line 95
    iput-object v2, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    #@26
    .line 96
    iput-object v2, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    #@28
    .line 97
    iput-boolean v1, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    #@2a
    .line 98
    iput-boolean v1, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    #@2c
    .line 100
    iput-object v2, p0, Landroid/widget/ImageView;->mState:[I

    #@2e
    .line 101
    iput-boolean v1, p0, Landroid/widget/ImageView;->mMergeState:Z

    #@30
    .line 102
    iput v1, p0, Landroid/widget/ImageView;->mLevel:I

    #@32
    .line 105
    iput-object v2, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@34
    .line 108
    new-instance v0, Landroid/graphics/RectF;

    #@36
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@39
    iput-object v0, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    #@3b
    .line 109
    new-instance v0, Landroid/graphics/RectF;

    #@3d
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@40
    iput-object v0, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    #@42
    .line 113
    const/4 v0, -0x1

    #@43
    iput v0, p0, Landroid/widget/ImageView;->mBaseline:I

    #@45
    .line 114
    iput-boolean v1, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    #@47
    .line 117
    iput-boolean v1, p0, Landroid/widget/ImageView;->mAdjustViewBoundsCompat:Z

    #@49
    .line 132
    invoke-direct {p0}, Landroid/widget/ImageView;->initImageView()V

    #@4c
    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 136
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 140
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const v9, 0x7fffffff

    #@3
    const/4 v8, 0x1

    #@4
    const/4 v7, -0x1

    #@5
    const/4 v5, 0x0

    #@6
    const/4 v6, 0x0

    #@7
    .line 145
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@a
    .line 77
    iput v6, p0, Landroid/widget/ImageView;->mResource:I

    #@c
    .line 80
    iput-boolean v6, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    #@e
    .line 81
    iput-boolean v6, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    #@10
    .line 82
    iput v9, p0, Landroid/widget/ImageView;->mMaxWidth:I

    #@12
    .line 83
    iput v9, p0, Landroid/widget/ImageView;->mMaxHeight:I

    #@14
    .line 86
    iput-object v5, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    #@16
    .line 87
    iput-boolean v6, p0, Landroid/widget/ImageView;->mHasColorFilter:Z

    #@18
    .line 89
    const/16 v4, 0xff

    #@1a
    iput v4, p0, Landroid/widget/ImageView;->mAlpha:I

    #@1c
    .line 90
    const/16 v4, 0x100

    #@1e
    iput v4, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    #@20
    .line 91
    iput-boolean v6, p0, Landroid/widget/ImageView;->mColorMod:Z

    #@22
    .line 93
    iput-object v5, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@24
    .line 94
    iput-object v5, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

    #@26
    .line 95
    iput-object v5, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    #@28
    .line 96
    iput-object v5, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2a
    .line 97
    iput-boolean v6, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    #@2c
    .line 98
    iput-boolean v6, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    #@2e
    .line 100
    iput-object v5, p0, Landroid/widget/ImageView;->mState:[I

    #@30
    .line 101
    iput-boolean v6, p0, Landroid/widget/ImageView;->mMergeState:Z

    #@32
    .line 102
    iput v6, p0, Landroid/widget/ImageView;->mLevel:I

    #@34
    .line 105
    iput-object v5, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@36
    .line 108
    new-instance v4, Landroid/graphics/RectF;

    #@38
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    #@3b
    iput-object v4, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    #@3d
    .line 109
    new-instance v4, Landroid/graphics/RectF;

    #@3f
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    #@42
    iput-object v4, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    #@44
    .line 113
    iput v7, p0, Landroid/widget/ImageView;->mBaseline:I

    #@46
    .line 114
    iput-boolean v6, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    #@48
    .line 117
    iput-boolean v6, p0, Landroid/widget/ImageView;->mAdjustViewBoundsCompat:Z

    #@4a
    .line 147
    invoke-direct {p0}, Landroid/widget/ImageView;->initImageView()V

    #@4d
    .line 150
    sget-object v4, Lcom/android/internal/R$styleable;->ImageView:[I

    #@4f
    .line 149
    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@52
    move-result-object v0

    #@53
    .line 152
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@56
    move-result-object v2

    #@57
    .line 153
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@59
    .line 154
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@5c
    .line 158
    :cond_0
    const/4 v4, 0x6

    #@5d
    .line 157
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@60
    move-result v4

    #@61
    iput-boolean v4, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    #@63
    .line 161
    const/16 v4, 0x8

    #@65
    .line 160
    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@68
    move-result v4

    #@69
    iput v4, p0, Landroid/widget/ImageView;->mBaseline:I

    #@6b
    .line 164
    const/4 v4, 0x2

    #@6c
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@6f
    move-result v4

    #@70
    .line 163
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    #@73
    .line 168
    const/4 v4, 0x3

    #@74
    .line 167
    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@77
    move-result v4

    #@78
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setMaxWidth(I)V

    #@7b
    .line 171
    const/4 v4, 0x4

    #@7c
    .line 170
    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@7f
    move-result v4

    #@80
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setMaxHeight(I)V

    #@83
    .line 173
    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    #@86
    move-result v3

    #@87
    .line 174
    .local v3, "index":I
    if-ltz v3, :cond_1

    #@89
    .line 175
    sget-object v4, Landroid/widget/ImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    #@8b
    aget-object v4, v4, v3

    #@8d
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@90
    .line 178
    :cond_1
    const/4 v4, 0x5

    #@91
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@94
    move-result v4

    #@95
    if-eqz v4, :cond_2

    #@97
    .line 179
    const/4 v4, 0x5

    #@98
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@9b
    move-result-object v4

    #@9c
    iput-object v4, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    #@9e
    .line 180
    iput-boolean v8, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    #@a0
    .line 184
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    #@a2
    iput-object v4, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    #@a4
    .line 185
    iput-boolean v8, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    #@a6
    .line 188
    :cond_2
    const/16 v4, 0x9

    #@a8
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@ab
    move-result v4

    #@ac
    if-eqz v4, :cond_3

    #@ae
    .line 190
    const/16 v4, 0x9

    #@b0
    .line 189
    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    #@b3
    move-result v4

    #@b4
    .line 190
    iget-object v5, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    #@b6
    .line 189
    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@b9
    move-result-object v4

    #@ba
    iput-object v4, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    #@bc
    .line 191
    iput-boolean v8, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    #@be
    .line 194
    :cond_3
    invoke-direct {p0}, Landroid/widget/ImageView;->applyImageTint()V

    #@c1
    .line 196
    const/16 v4, 0xa

    #@c3
    const/16 v5, 0xff

    #@c5
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    #@c8
    move-result v1

    #@c9
    .line 197
    .local v1, "alpha":I
    const/16 v4, 0xff

    #@cb
    if-eq v1, v4, :cond_4

    #@cd
    .line 198
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    #@d0
    .line 202
    :cond_4
    const/4 v4, 0x7

    #@d1
    .line 201
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@d4
    move-result v4

    #@d5
    iput-boolean v4, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    #@d7
    .line 204
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@da
    .line 144
    return-void
.end method

.method private applyColorMod()V
    .locals 3

    #@0
    .prologue
    .line 1423
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_1

    #@4
    iget-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 1424
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@a
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@10
    .line 1425
    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasColorFilter:Z

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 1426
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@16
    iget-object v1, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    #@18
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@1b
    .line 1428
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@1d
    iget-object v1, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    #@1f
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setXfermode(Landroid/graphics/Xfermode;)V

    #@22
    .line 1429
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@24
    iget v1, p0, Landroid/widget/ImageView;->mAlpha:I

    #@26
    iget v2, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    #@28
    mul-int/2addr v1, v2

    #@29
    shr-int/lit8 v1, v1, 0x8

    #@2b
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@2e
    .line 1419
    :cond_1
    return-void
.end method

.method private applyImageTint()V
    .locals 2

    #@0
    .prologue
    .line 559
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_3

    #@4
    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    #@6
    if-nez v0, :cond_0

    #@8
    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    #@a
    if-eqz v0, :cond_3

    #@c
    .line 560
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@e
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@14
    .line 562
    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 563
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@1a
    iget-object v1, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    #@1c
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    #@1f
    .line 566
    :cond_1
    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    #@21
    if-eqz v0, :cond_2

    #@23
    .line 567
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@25
    iget-object v1, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    #@27
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@2a
    .line 572
    :cond_2
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_3

    #@32
    .line 573
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@34
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@3b
    .line 558
    :cond_3
    return-void
.end method

.method private configureBounds()V
    .locals 14

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    const/4 v12, 0x0

    #@2
    const/high16 v11, 0x3f000000    # 0.5f

    #@4
    const/4 v10, 0x0

    #@5
    .line 1094
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@7
    if-eqz v8, :cond_3

    #@9
    iget-boolean v8, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    #@b
    if-eqz v8, :cond_3

    #@d
    .line 1098
    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    #@f
    .line 1099
    .local v1, "dwidth":I
    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    #@11
    .line 1101
    .local v0, "dheight":I
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    #@14
    move-result v8

    #@15
    iget v9, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    #@17
    sub-int/2addr v8, v9

    #@18
    iget v9, p0, Landroid/widget/ImageView;->mPaddingRight:I

    #@1a
    sub-int v7, v8, v9

    #@1c
    .line 1102
    .local v7, "vwidth":I
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    #@1f
    move-result v8

    #@20
    iget v9, p0, Landroid/widget/ImageView;->mPaddingTop:I

    #@22
    sub-int/2addr v8, v9

    #@23
    iget v9, p0, Landroid/widget/ImageView;->mPaddingBottom:I

    #@25
    sub-int v6, v8, v9

    #@27
    .line 1104
    .local v6, "vheight":I
    if-ltz v1, :cond_0

    #@29
    if-ne v7, v1, :cond_5

    #@2b
    .line 1105
    :cond_0
    if-ltz v0, :cond_1

    #@2d
    if-ne v6, v0, :cond_4

    #@2f
    :cond_1
    const/4 v4, 0x1

    #@30
    .line 1107
    .local v4, "fits":Z
    :goto_0
    if-lez v1, :cond_2

    #@32
    if-gtz v0, :cond_6

    #@34
    .line 1111
    :cond_2
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@36
    invoke-virtual {v8, v10, v10, v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@39
    .line 1112
    iput-object v13, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@3b
    .line 1093
    :goto_1
    return-void

    #@3c
    .line 1095
    .end local v0    # "dheight":I
    .end local v1    # "dwidth":I
    .end local v4    # "fits":Z
    .end local v6    # "vheight":I
    .end local v7    # "vwidth":I
    :cond_3
    return-void

    #@3d
    .line 1105
    .restart local v0    # "dheight":I
    .restart local v1    # "dwidth":I
    .restart local v6    # "vheight":I
    .restart local v7    # "vwidth":I
    :cond_4
    const/4 v4, 0x0

    #@3e
    .restart local v4    # "fits":Z
    goto :goto_0

    #@3f
    .line 1104
    .end local v4    # "fits":Z
    :cond_5
    const/4 v4, 0x0

    #@40
    .restart local v4    # "fits":Z
    goto :goto_0

    #@41
    .line 1107
    :cond_6
    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    #@43
    iget-object v9, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    #@45
    if-eq v8, v9, :cond_2

    #@47
    .line 1116
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@49
    invoke-virtual {v8, v10, v10, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@4c
    .line 1118
    sget-object v8, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    #@4e
    iget-object v9, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    #@50
    if-ne v8, v9, :cond_8

    #@52
    .line 1120
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    #@54
    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    #@57
    move-result v8

    #@58
    if-eqz v8, :cond_7

    #@5a
    .line 1121
    iput-object v13, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@5c
    goto :goto_1

    #@5d
    .line 1123
    :cond_7
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    #@5f
    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@61
    goto :goto_1

    #@62
    .line 1125
    :cond_8
    if-eqz v4, :cond_9

    #@64
    .line 1127
    iput-object v13, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@66
    goto :goto_1

    #@67
    .line 1128
    :cond_9
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    #@69
    iget-object v9, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    #@6b
    if-ne v8, v9, :cond_a

    #@6d
    .line 1130
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    #@6f
    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@71
    .line 1131
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@73
    sub-int v9, v7, v1

    #@75
    int-to-float v9, v9

    #@76
    mul-float/2addr v9, v11

    #@77
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    #@7a
    move-result v9

    #@7b
    int-to-float v9, v9

    #@7c
    .line 1132
    sub-int v10, v6, v0

    #@7e
    int-to-float v10, v10

    #@7f
    mul-float/2addr v10, v11

    #@80
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    #@83
    move-result v10

    #@84
    int-to-float v10, v10

    #@85
    .line 1131
    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    #@88
    goto :goto_1

    #@89
    .line 1133
    :cond_a
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    #@8b
    iget-object v9, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    #@8d
    if-ne v8, v9, :cond_c

    #@8f
    .line 1134
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    #@91
    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@93
    .line 1137
    const/4 v2, 0x0

    #@94
    .local v2, "dx":F
    const/4 v3, 0x0

    #@95
    .line 1139
    .local v3, "dy":F
    mul-int v8, v1, v6

    #@97
    mul-int v9, v7, v0

    #@99
    if-le v8, v9, :cond_b

    #@9b
    .line 1140
    int-to-float v8, v6

    #@9c
    int-to-float v9, v0

    #@9d
    div-float v5, v8, v9

    #@9f
    .line 1141
    .local v5, "scale":F
    int-to-float v8, v7

    #@a0
    int-to-float v9, v1

    #@a1
    mul-float/2addr v9, v5

    #@a2
    sub-float/2addr v8, v9

    #@a3
    mul-float v2, v8, v11

    #@a5
    .line 1147
    :goto_2
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@a7
    invoke-virtual {v8, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    #@aa
    .line 1148
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@ac
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    #@af
    move-result v9

    #@b0
    int-to-float v9, v9

    #@b1
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    #@b4
    move-result v10

    #@b5
    int-to-float v10, v10

    #@b6
    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@b9
    goto :goto_1

    #@ba
    .line 1143
    .end local v5    # "scale":F
    :cond_b
    int-to-float v8, v7

    #@bb
    int-to-float v9, v1

    #@bc
    div-float v5, v8, v9

    #@be
    .line 1144
    .restart local v5    # "scale":F
    int-to-float v8, v6

    #@bf
    int-to-float v9, v0

    #@c0
    mul-float/2addr v9, v5

    #@c1
    sub-float/2addr v8, v9

    #@c2
    mul-float v3, v8, v11

    #@c4
    goto :goto_2

    #@c5
    .line 1149
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v5    # "scale":F
    :cond_c
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    #@c7
    iget-object v9, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    #@c9
    if-ne v8, v9, :cond_e

    #@cb
    .line 1150
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    #@cd
    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@cf
    .line 1155
    if-gt v1, v7, :cond_d

    #@d1
    if-gt v0, v6, :cond_d

    #@d3
    .line 1156
    const/high16 v5, 0x3f800000    # 1.0f

    #@d5
    .line 1162
    .restart local v5    # "scale":F
    :goto_3
    int-to-float v8, v7

    #@d6
    int-to-float v9, v1

    #@d7
    mul-float/2addr v9, v5

    #@d8
    sub-float/2addr v8, v9

    #@d9
    mul-float/2addr v8, v11

    #@da
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    #@dd
    move-result v8

    #@de
    int-to-float v2, v8

    #@df
    .line 1163
    .restart local v2    # "dx":F
    int-to-float v8, v6

    #@e0
    int-to-float v9, v0

    #@e1
    mul-float/2addr v9, v5

    #@e2
    sub-float/2addr v8, v9

    #@e3
    mul-float/2addr v8, v11

    #@e4
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    #@e7
    move-result v8

    #@e8
    int-to-float v3, v8

    #@e9
    .line 1165
    .restart local v3    # "dy":F
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@eb
    invoke-virtual {v8, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    #@ee
    .line 1166
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@f0
    invoke-virtual {v8, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@f3
    goto/16 :goto_1

    #@f5
    .line 1158
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v5    # "scale":F
    :cond_d
    int-to-float v8, v7

    #@f6
    int-to-float v9, v1

    #@f7
    div-float/2addr v8, v9

    #@f8
    .line 1159
    int-to-float v9, v6

    #@f9
    int-to-float v10, v0

    #@fa
    div-float/2addr v9, v10

    #@fb
    .line 1158
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    #@fe
    move-result v5

    #@ff
    .restart local v5    # "scale":F
    goto :goto_3

    #@100
    .line 1169
    .end local v5    # "scale":F
    :cond_e
    iget-object v8, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    #@102
    int-to-float v9, v1

    #@103
    int-to-float v10, v0

    #@104
    invoke-virtual {v8, v12, v12, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    #@107
    .line 1170
    iget-object v8, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    #@109
    int-to-float v9, v7

    #@10a
    int-to-float v10, v6

    #@10b
    invoke-virtual {v8, v12, v12, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    #@10e
    .line 1172
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    #@110
    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@112
    .line 1173
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@114
    iget-object v9, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    #@116
    iget-object v10, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    #@118
    iget-object v11, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    #@11a
    invoke-static {v11}, Landroid/widget/ImageView;->scaleTypeToScaleToFit(Landroid/widget/ImageView$ScaleType;)Landroid/graphics/Matrix$ScaleToFit;

    #@11d
    move-result-object v11

    #@11e
    invoke-virtual {v8, v9, v10, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    #@121
    goto/16 :goto_1
.end method

.method private initImageView()V
    .locals 2

    #@0
    .prologue
    .line 210
    new-instance v0, Landroid/graphics/Matrix;

    #@2
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@5
    iput-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    #@7
    .line 211
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    #@9
    iput-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    #@b
    .line 212
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    #@d
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@10
    move-result-object v0

    #@11
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@13
    .line 213
    const/16 v1, 0x11

    #@15
    .line 212
    if-gt v0, v1, :cond_0

    #@17
    const/4 v0, 0x1

    #@18
    :goto_0
    iput-boolean v0, p0, Landroid/widget/ImageView;->mAdjustViewBoundsCompat:Z

    #@1a
    .line 209
    return-void

    #@1b
    .line 212
    :cond_0
    const/4 v0, 0x0

    #@1c
    goto :goto_0
.end method

.method private isFilledByImage()Z
    .locals 8

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v5, 0x0

    #@3
    .line 1442
    iget-object v6, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    if-nez v6, :cond_0

    #@7
    .line 1443
    return v5

    #@8
    .line 1446
    :cond_0
    iget-object v6, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@a
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@d
    move-result-object v0

    #@e
    .line 1447
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@10
    .line 1448
    .local v3, "matrix":Landroid/graphics/Matrix;
    if-nez v3, :cond_3

    #@12
    .line 1449
    iget v6, v0, Landroid/graphics/Rect;->left:I

    #@14
    if-gtz v6, :cond_2

    #@16
    iget v6, v0, Landroid/graphics/Rect;->top:I

    #@18
    if-gtz v6, :cond_2

    #@1a
    iget v6, v0, Landroid/graphics/Rect;->right:I

    #@1c
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    #@1f
    move-result v7

    #@20
    if-lt v6, v7, :cond_2

    #@22
    .line 1450
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    #@24
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    #@27
    move-result v7

    #@28
    if-lt v6, v7, :cond_1

    #@2a
    .line 1449
    :goto_0
    return v4

    #@2b
    :cond_1
    move v4, v5

    #@2c
    .line 1450
    goto :goto_0

    #@2d
    :cond_2
    move v4, v5

    #@2e
    .line 1449
    goto :goto_0

    #@2f
    .line 1451
    :cond_3
    invoke-virtual {v3}, Landroid/graphics/Matrix;->rectStaysRect()Z

    #@32
    move-result v6

    #@33
    if-eqz v6, :cond_6

    #@35
    .line 1452
    iget-object v2, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    #@37
    .line 1453
    .local v2, "boundsSrc":Landroid/graphics/RectF;
    iget-object v1, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    #@39
    .line 1454
    .local v1, "boundsDst":Landroid/graphics/RectF;
    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@3c
    .line 1455
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    #@3f
    .line 1456
    iget v6, v1, Landroid/graphics/RectF;->left:F

    #@41
    cmpg-float v6, v6, v7

    #@43
    if-gtz v6, :cond_5

    #@45
    iget v6, v1, Landroid/graphics/RectF;->top:F

    #@47
    cmpg-float v6, v6, v7

    #@49
    if-gtz v6, :cond_5

    #@4b
    iget v6, v1, Landroid/graphics/RectF;->right:F

    #@4d
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    #@50
    move-result v7

    #@51
    int-to-float v7, v7

    #@52
    cmpl-float v6, v6, v7

    #@54
    if-ltz v6, :cond_5

    #@56
    .line 1457
    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    #@58
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    #@5b
    move-result v7

    #@5c
    int-to-float v7, v7

    #@5d
    cmpl-float v6, v6, v7

    #@5f
    if-ltz v6, :cond_4

    #@61
    .line 1456
    :goto_1
    return v4

    #@62
    :cond_4
    move v4, v5

    #@63
    .line 1457
    goto :goto_1

    #@64
    :cond_5
    move v4, v5

    #@65
    .line 1456
    goto :goto_1

    #@66
    .line 1460
    .end local v1    # "boundsDst":Landroid/graphics/RectF;
    .end local v2    # "boundsSrc":Landroid/graphics/RectF;
    :cond_6
    return v5
.end method

.method private resizeFromDrawable()V
    .locals 4

    #@0
    .prologue
    .line 905
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    .line 906
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    #@4
    .line 907
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@7
    move-result v2

    #@8
    .line 908
    .local v2, "w":I
    if-gez v2, :cond_0

    #@a
    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    #@c
    .line 909
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@f
    move-result v1

    #@10
    .line 910
    .local v1, "h":I
    if-gez v1, :cond_1

    #@12
    iget v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    #@14
    .line 911
    :cond_1
    iget v3, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    #@16
    if-ne v2, v3, :cond_2

    #@18
    iget v3, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    #@1a
    if-eq v1, v3, :cond_3

    #@1c
    .line 912
    :cond_2
    iput v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    #@1e
    .line 913
    iput v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    #@20
    .line 914
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    #@23
    .line 904
    .end local v1    # "h":I
    .end local v2    # "w":I
    :cond_3
    return-void
.end method

.method private resolveAdjustedSize(III)I
    .locals 4
    .param p1, "desiredSize"    # I
    .param p2, "maxSize"    # I
    .param p3, "measureSpec"    # I

    #@0
    .prologue
    .line 1061
    move v0, p1

    #@1
    .line 1062
    .local v0, "result":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@4
    move-result v1

    #@5
    .line 1063
    .local v1, "specMode":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@8
    move-result v2

    #@9
    .line 1064
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    #@c
    .line 1082
    :goto_0
    return v0

    #@d
    .line 1069
    :sswitch_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    #@10
    move-result v0

    #@11
    goto :goto_0

    #@12
    .line 1075
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    #@15
    move-result v3

    #@16
    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    #@19
    move-result v0

    #@1a
    goto :goto_0

    #@1b
    .line 1079
    :sswitch_2
    move v0, v2

    #@1c
    .line 1080
    goto :goto_0

    #@1d
    .line 1064
    nop

    #@1e
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private resolveUri()V
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 798
    iget-object v7, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@3
    if-eqz v7, :cond_0

    #@5
    .line 799
    return-void

    #@6
    .line 802
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v4

    #@a
    .line 803
    .local v4, "rsrc":Landroid/content/res/Resources;
    if-nez v4, :cond_1

    #@c
    .line 804
    return-void

    #@d
    .line 807
    :cond_1
    const/4 v0, 0x0

    #@e
    .line 809
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget v7, p0, Landroid/widget/ImageView;->mResource:I

    #@10
    if-eqz v7, :cond_3

    #@12
    .line 811
    :try_start_0
    iget-object v7, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    #@14
    iget v8, p0, Landroid/widget/ImageView;->mResource:I

    #@16
    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result-object v0

    #@1a
    .line 858
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1d
    .line 797
    return-void

    #@1e
    .line 812
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v2

    #@1f
    .line 813
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "ImageView"

    #@22
    new-instance v8, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v9, "Unable to find resource: "

    #@2a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v8

    #@2e
    iget v9, p0, Landroid/widget/ImageView;->mResource:I

    #@30
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v8

    #@34
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v8

    #@38
    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3b
    .line 815
    iput-object v10, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    #@3d
    goto :goto_0

    #@3e
    .line 817
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v7, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    #@40
    if-eqz v7, :cond_9

    #@42
    .line 818
    iget-object v7, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    #@44
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    .line 819
    .local v5, "scheme":Ljava/lang/String;
    const-string/jumbo v7, "android.resource"

    #@4b
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v7

    #@4f
    if-eqz v7, :cond_5

    #@51
    .line 823
    :try_start_1
    iget-object v7, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    #@53
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@56
    move-result-object v7

    #@57
    iget-object v8, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    #@59
    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    #@5c
    move-result-object v3

    #@5d
    .line 824
    .local v3, "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    iget-object v7, v3, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    #@5f
    iget v8, v3, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    #@61
    iget-object v9, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    #@63
    invoke-virtual {v9}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@66
    move-result-object v9

    #@67
    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@6a
    move-result-object v0

    #@6b
    .line 849
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :cond_4
    :goto_1
    if-nez v0, :cond_2

    #@6d
    .line 850
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6f
    new-instance v8, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v9, "resolveUri failed on bad bitmap uri: "

    #@77
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v8

    #@7b
    iget-object v9, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    #@7d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v8

    #@81
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v8

    #@85
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@88
    .line 852
    iput-object v10, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    #@8a
    goto :goto_0

    #@8b
    .line 825
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v2

    #@8c
    .line 826
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "ImageView"

    #@8f
    new-instance v8, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string/jumbo v9, "Unable to open content: "

    #@97
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v8

    #@9b
    iget-object v9, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    #@9d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v8

    #@a1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v8

    #@a5
    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a8
    goto :goto_1

    #@a9
    .line 828
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    const-string/jumbo v7, "content"

    #@ac
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@af
    move-result v7

    #@b0
    if-nez v7, :cond_6

    #@b2
    .line 829
    const-string/jumbo v7, "file"

    #@b5
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b8
    move-result v7

    #@b9
    .line 828
    if-eqz v7, :cond_8

    #@bb
    .line 830
    :cond_6
    const/4 v6, 0x0

    #@bc
    .line 832
    .local v6, "stream":Ljava/io/InputStream;
    :try_start_2
    iget-object v7, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    #@be
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@c1
    move-result-object v7

    #@c2
    iget-object v8, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    #@c4
    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    #@c7
    move-result-object v6

    #@c8
    .line 833
    .local v6, "stream":Ljava/io/InputStream;
    const/4 v7, 0x0

    #@c9
    invoke-static {v6, v7}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@cc
    move-result-object v0

    #@cd
    .line 837
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_4

    #@cf
    .line 839
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    #@d2
    goto :goto_1

    #@d3
    .line 840
    :catch_2
    move-exception v1

    #@d4
    .line 841
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v7, "ImageView"

    #@d7
    new-instance v8, Ljava/lang/StringBuilder;

    #@d9
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@dc
    const-string/jumbo v9, "Unable to close content: "

    #@df
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v8

    #@e3
    iget-object v9, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    #@e5
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v8

    #@e9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ec
    move-result-object v8

    #@ed
    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f0
    goto/16 :goto_1

    #@f2
    .line 834
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "stream":Ljava/io/InputStream;
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :catch_3
    move-exception v2

    #@f3
    .line 835
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v7, "ImageView"

    #@f6
    new-instance v8, Ljava/lang/StringBuilder;

    #@f8
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@fb
    const-string/jumbo v9, "Unable to open content: "

    #@fe
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v8

    #@102
    iget-object v9, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    #@104
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v8

    #@108
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10b
    move-result-object v8

    #@10c
    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@10f
    .line 837
    if-eqz v6, :cond_4

    #@111
    .line 839
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    #@114
    goto/16 :goto_1

    #@116
    .line 840
    :catch_4
    move-exception v1

    #@117
    .line 841
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "ImageView"

    #@11a
    new-instance v8, Ljava/lang/StringBuilder;

    #@11c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@11f
    const-string/jumbo v9, "Unable to close content: "

    #@122
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v8

    #@126
    iget-object v9, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    #@128
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v8

    #@12c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12f
    move-result-object v8

    #@130
    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@133
    goto/16 :goto_1

    #@135
    .line 836
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    #@136
    .line 837
    if-eqz v6, :cond_7

    #@138
    .line 839
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    #@13b
    .line 836
    :cond_7
    :goto_2
    throw v7

    #@13c
    .line 840
    :catch_5
    move-exception v1

    #@13d
    .line 841
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "ImageView"

    #@140
    new-instance v9, Ljava/lang/StringBuilder;

    #@142
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@145
    const-string/jumbo v10, "Unable to close content: "

    #@148
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v9

    #@14c
    iget-object v10, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    #@14e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v9

    #@152
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@155
    move-result-object v9

    #@156
    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@159
    goto :goto_2

    #@15a
    .line 846
    .end local v1    # "e":Ljava/io/IOException;
    :cond_8
    iget-object v7, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    #@15c
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@15f
    move-result-object v7

    #@160
    invoke-static {v7}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    #@163
    move-result-object v0

    #@164
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    #@166
    .line 855
    .end local v5    # "scheme":Ljava/lang/String;
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :cond_9
    return-void
.end method

.method private static scaleTypeToScaleToFit(Landroid/widget/ImageView$ScaleType;)Landroid/graphics/Matrix$ScaleToFit;
    .locals 2
    .param p0, "st"    # Landroid/widget/ImageView$ScaleType;

    #@0
    .prologue
    .line 937
    sget-object v0, Landroid/widget/ImageView;->sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

    #@2
    iget v1, p0, Landroid/widget/ImageView$ScaleType;->nativeInt:I

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    aget-object v0, v0, v1

    #@8
    return-object v0
.end method

.method private updateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    const/4 v4, -0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 874
    iget-object v2, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

    #@6
    if-eq p1, v2, :cond_0

    #@8
    iget-object v2, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 875
    iget-object v2, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

    #@e
    invoke-virtual {v2, v3}, Landroid/widget/ImageView$ImageViewBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    #@11
    .line 878
    :cond_0
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 879
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@17
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@1a
    .line 880
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@1c
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1f
    .line 883
    :cond_1
    iput-object p1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@21
    .line 885
    if-eqz p1, :cond_4

    #@23
    .line 886
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@26
    .line 887
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutDirection()I

    #@29
    move-result v2

    #@2a
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@2d
    .line 888
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@30
    move-result v2

    #@31
    if-eqz v2, :cond_2

    #@33
    .line 889
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    #@36
    move-result-object v2

    #@37
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@3a
    .line 891
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    #@3d
    move-result v2

    #@3e
    if-nez v2, :cond_3

    #@40
    move v0, v1

    #@41
    :cond_3
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@44
    .line 892
    iget v0, p0, Landroid/widget/ImageView;->mLevel:I

    #@46
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    #@49
    .line 893
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@4c
    move-result v0

    #@4d
    iput v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    #@4f
    .line 894
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@52
    move-result v0

    #@53
    iput v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    #@55
    .line 895
    invoke-direct {p0}, Landroid/widget/ImageView;->applyImageTint()V

    #@58
    .line 896
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    #@5b
    .line 898
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    #@5e
    .line 873
    :goto_0
    return-void

    #@5f
    .line 900
    :cond_4
    iput v4, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    #@61
    iput v4, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    #@63
    goto :goto_0
.end method


# virtual methods
.method public animateTransform(Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1198
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1199
    return-void

    #@6
    .line 1201
    :cond_0
    if-nez p1, :cond_1

    #@8
    .line 1202
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@a
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    #@d
    move-result v1

    #@e
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    #@11
    move-result v2

    #@12
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@15
    .line 1210
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    #@18
    .line 1197
    return-void

    #@19
    .line 1204
    :cond_1
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@1b
    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    #@1d
    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    #@1f
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@22
    .line 1205
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@24
    if-nez v0, :cond_2

    #@26
    .line 1206
    new-instance v0, Landroid/graphics/Matrix;

    #@28
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@2b
    iput-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@2d
    .line 1208
    :cond_2
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@2f
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    #@32
    goto :goto_0
.end method

.method public final clearColorFilter()V
    .locals 1

    #@0
    .prologue
    .line 1334
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@4
    .line 1333
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 1189
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    #@3
    .line 1191
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1192
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    #@c
    .line 1188
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    #@0
    .prologue
    .line 1180
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    #@3
    .line 1181
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    .line 1182
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 1183
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@14
    .line 1179
    :cond_0
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    #@0
    .prologue
    .line 1497
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    #@3
    .line 1498
    const-string/jumbo v0, "layout:baseline"

    #@6
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBaseline()I

    #@9
    move-result v1

    #@a
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@d
    .line 1496
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1491
    const-class v0, Landroid/widget/ImageView;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getAdjustViewBounds()Z
    .locals 1

    #@0
    .prologue
    .line 279
    iget-boolean v0, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    #@2
    return v0
.end method

.method public getBaseline()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    #@0
    .prologue
    .line 1259
    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1260
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 1262
    :cond_0
    iget v0, p0, Landroid/widget/ImageView;->mBaseline:I

    #@b
    return v0
.end method

.method public getBaselineAlignBottom()Z
    .locals 1

    #@0
    .prologue
    .line 1305
    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    #@2
    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    #@0
    .prologue
    .line 1357
    iget-object v0, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    #@2
    return-object v0
.end method

.method public getCropToPadding()Z
    .locals 1

    #@0
    .prologue
    .line 777
    iget-boolean v0, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    #@2
    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    #@0
    .prologue
    .line 387
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    iget-object v1, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 389
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

    #@9
    .line 391
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@b
    return-object v0
.end method

.method public getImageAlpha()I
    .locals 1

    #@0
    .prologue
    .line 1385
    iget v0, p0, Landroid/widget/ImageView;->mAlpha:I

    #@2
    return v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 2

    #@0
    .prologue
    .line 739
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 740
    new-instance v0, Landroid/graphics/Matrix;

    #@6
    sget-object v1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    #@8
    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    #@b
    return-object v0

    #@c
    .line 742
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@e
    return-object v0
.end method

.method public getImageTintList()Landroid/content/res/ColorStateList;
    .locals 1

    #@0
    .prologue
    .line 527
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    #@0
    .prologue
    .line 555
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    #@0
    .prologue
    .line 355
    iget v0, p0, Landroid/widget/ImageView;->mMaxHeight:I

    #@2
    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    #@0
    .prologue
    .line 317
    iget v0, p0, Landroid/widget/ImageView;->mMaxWidth:I

    #@2
    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    #@0
    .prologue
    .line 728
    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    #@2
    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 254
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@4
    move-result-object v1

    #@5
    if-eqz v1, :cond_0

    #@7
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    #@e
    move-result-object v1

    #@f
    if-eqz v1, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    :cond_0
    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 229
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-ne p1, v2, :cond_2

    #@4
    .line 230
    if-eqz p1, :cond_1

    #@6
    .line 232
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@9
    move-result v1

    #@a
    .line 233
    .local v1, "w":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@d
    move-result v0

    #@e
    .line 234
    .local v0, "h":I
    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    #@10
    if-ne v1, v2, :cond_0

    #@12
    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    #@14
    if-eq v0, v2, :cond_1

    #@16
    .line 235
    :cond_0
    iput v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    #@18
    .line 236
    iput v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    #@1a
    .line 246
    .end local v0    # "h":I
    .end local v1    # "w":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    #@1d
    .line 228
    :goto_0
    return-void

    #@1e
    .line 248
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@21
    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 2

    #@0
    .prologue
    .line 1435
    invoke-super {p0}, Landroid/view/View;->isOpaque()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@8
    if-eqz v0, :cond_1

    #@a
    iget-object v0, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    #@c
    if-nez v0, :cond_1

    #@e
    .line 1436
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@10
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@13
    move-result v0

    #@14
    const/4 v1, -0x1

    #@15
    if-ne v0, v1, :cond_1

    #@17
    .line 1437
    iget v0, p0, Landroid/widget/ImageView;->mAlpha:I

    #@19
    iget v1, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    #@1b
    mul-int/2addr v0, v1

    #@1c
    shr-int/lit8 v0, v0, 0x8

    #@1e
    const/16 v1, 0xff

    #@20
    if-ne v0, v1, :cond_1

    #@22
    .line 1438
    invoke-direct {p0}, Landroid/widget/ImageView;->isFilledByImage()Z

    #@25
    move-result v0

    #@26
    .line 1435
    :goto_0
    return v0

    #@27
    :cond_0
    const/4 v0, 0x1

    #@28
    goto :goto_0

    #@29
    :cond_1
    const/4 v0, 0x0

    #@2a
    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    #@0
    .prologue
    .line 223
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    #@3
    .line 224
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@c
    .line 222
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1475
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    #@4
    .line 1476
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1477
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@a
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_1

    #@10
    const/4 v0, 0x1

    #@11
    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@14
    .line 1474
    :cond_0
    return-void

    #@15
    :cond_1
    move v0, v1

    #@16
    .line 1477
    goto :goto_0
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    #@0
    .prologue
    .line 863
    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 864
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 865
    :cond_0
    iget-boolean v0, p0, Landroid/widget/ImageView;->mMergeState:Z

    #@b
    if-nez v0, :cond_1

    #@d
    .line 866
    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    #@f
    return-object v0

    #@10
    .line 869
    :cond_1
    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    #@12
    array-length v0, v0

    #@13
    add-int/2addr v0, p1

    #@14
    invoke-super {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    #@17
    move-result-object v0

    #@18
    iget-object v1, p0, Landroid/widget/ImageView;->mState:[I

    #@1a
    .line 868
    invoke-static {v0, v1}, Landroid/widget/ImageView;->mergeDrawableStates([I[I)[I

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1483
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    #@4
    .line 1484
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1485
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@a
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@d
    .line 1482
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 1215
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    #@3
    .line 1217
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    if-nez v3, :cond_0

    #@7
    .line 1218
    return-void

    #@8
    .line 1221
    :cond_0
    iget v3, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    #@a
    if-eqz v3, :cond_1

    #@c
    iget v3, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    #@e
    if-nez v3, :cond_2

    #@10
    .line 1222
    :cond_1
    return-void

    #@11
    .line 1225
    :cond_2
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@13
    if-nez v3, :cond_3

    #@15
    iget v3, p0, Landroid/widget/ImageView;->mPaddingTop:I

    #@17
    if-nez v3, :cond_3

    #@19
    iget v3, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    #@1b
    if-nez v3, :cond_3

    #@1d
    .line 1226
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@1f
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@22
    .line 1214
    :goto_0
    return-void

    #@23
    .line 1228
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    #@26
    move-result v0

    #@27
    .line 1229
    .local v0, "saveCount":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@2a
    .line 1231
    iget-boolean v3, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    #@2c
    if-eqz v3, :cond_4

    #@2e
    .line 1232
    iget v1, p0, Landroid/widget/ImageView;->mScrollX:I

    #@30
    .line 1233
    .local v1, "scrollX":I
    iget v2, p0, Landroid/widget/ImageView;->mScrollY:I

    #@32
    .line 1234
    .local v2, "scrollY":I
    iget v3, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    #@34
    add-int/2addr v3, v1

    #@35
    iget v4, p0, Landroid/widget/ImageView;->mPaddingTop:I

    #@37
    add-int/2addr v4, v2

    #@38
    .line 1235
    iget v5, p0, Landroid/widget/ImageView;->mRight:I

    #@3a
    add-int/2addr v5, v1

    #@3b
    iget v6, p0, Landroid/widget/ImageView;->mLeft:I

    #@3d
    sub-int/2addr v5, v6

    #@3e
    iget v6, p0, Landroid/widget/ImageView;->mPaddingRight:I

    #@40
    sub-int/2addr v5, v6

    #@41
    .line 1236
    iget v6, p0, Landroid/widget/ImageView;->mBottom:I

    #@43
    add-int/2addr v6, v2

    #@44
    iget v7, p0, Landroid/widget/ImageView;->mTop:I

    #@46
    sub-int/2addr v6, v7

    #@47
    iget v7, p0, Landroid/widget/ImageView;->mPaddingBottom:I

    #@49
    sub-int/2addr v6, v7

    #@4a
    .line 1234
    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    #@4d
    .line 1239
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    :cond_4
    iget v3, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    #@4f
    int-to-float v3, v3

    #@50
    iget v4, p0, Landroid/widget/ImageView;->mPaddingTop:I

    #@52
    int-to-float v4, v4

    #@53
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    #@56
    .line 1241
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@58
    if-eqz v3, :cond_5

    #@5a
    .line 1242
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@5c
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    #@5f
    .line 1244
    :cond_5
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@61
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@64
    .line 1245
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@67
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 26
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 942
    invoke-direct/range {p0 .. p0}, Landroid/widget/ImageView;->resolveUri()V

    #@3
    .line 947
    const/4 v5, 0x0

    #@4
    .line 950
    .local v5, "desiredAspect":F
    const/16 v17, 0x0

    #@6
    .line 953
    .local v17, "resizeWidth":Z
    const/16 v16, 0x0

    #@8
    .line 955
    .local v16, "resizeHeight":Z
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@b
    move-result v20

    #@c
    .line 956
    .local v20, "widthSpecMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@f
    move-result v9

    #@10
    .line 958
    .local v9, "heightSpecMode":I
    move-object/from16 v0, p0

    #@12
    iget-object v0, v0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@14
    move-object/from16 v21, v0

    #@16
    if-nez v21, :cond_6

    #@18
    .line 960
    const/16 v21, -0x1

    #@1a
    move/from16 v0, v21

    #@1c
    move-object/from16 v1, p0

    #@1e
    iput v0, v1, Landroid/widget/ImageView;->mDrawableWidth:I

    #@20
    .line 961
    const/16 v21, -0x1

    #@22
    move/from16 v0, v21

    #@24
    move-object/from16 v1, p0

    #@26
    iput v0, v1, Landroid/widget/ImageView;->mDrawableHeight:I

    #@28
    .line 962
    const/4 v7, 0x0

    #@29
    .local v7, "h":I
    const/16 v18, 0x0

    #@2b
    .line 979
    .local v18, "w":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    #@2d
    iget v13, v0, Landroid/widget/ImageView;->mPaddingLeft:I

    #@2f
    .line 980
    .local v13, "pleft":I
    move-object/from16 v0, p0

    #@31
    iget v14, v0, Landroid/widget/ImageView;->mPaddingRight:I

    #@33
    .line 981
    .local v14, "pright":I
    move-object/from16 v0, p0

    #@35
    iget v15, v0, Landroid/widget/ImageView;->mPaddingTop:I

    #@37
    .line 982
    .local v15, "ptop":I
    move-object/from16 v0, p0

    #@39
    iget v12, v0, Landroid/widget/ImageView;->mPaddingBottom:I

    #@3b
    .line 987
    .local v12, "pbottom":I
    if-nez v17, :cond_1

    #@3d
    if-eqz v16, :cond_d

    #@3f
    .line 994
    :cond_1
    add-int v21, v18, v13

    #@41
    add-int v21, v21, v14

    #@43
    move-object/from16 v0, p0

    #@45
    iget v0, v0, Landroid/widget/ImageView;->mMaxWidth:I

    #@47
    move/from16 v22, v0

    #@49
    move-object/from16 v0, p0

    #@4b
    move/from16 v1, v21

    #@4d
    move/from16 v2, v22

    #@4f
    move/from16 v3, p1

    #@51
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    #@54
    move-result v19

    #@55
    .line 997
    .local v19, "widthSize":I
    add-int v21, v7, v15

    #@57
    add-int v21, v21, v12

    #@59
    move-object/from16 v0, p0

    #@5b
    iget v0, v0, Landroid/widget/ImageView;->mMaxHeight:I

    #@5d
    move/from16 v22, v0

    #@5f
    move-object/from16 v0, p0

    #@61
    move/from16 v1, v21

    #@63
    move/from16 v2, v22

    #@65
    move/from16 v3, p2

    #@67
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    #@6a
    move-result v8

    #@6b
    .line 999
    .local v8, "heightSize":I
    const/16 v21, 0x0

    #@6d
    cmpl-float v21, v5, v21

    #@6f
    if-eqz v21, :cond_5

    #@71
    .line 1001
    sub-int v21, v19, v13

    #@73
    sub-int v21, v21, v14

    #@75
    move/from16 v0, v21

    #@77
    int-to-float v0, v0

    #@78
    move/from16 v21, v0

    #@7a
    .line 1002
    sub-int v22, v8, v15

    #@7c
    sub-int v22, v22, v12

    #@7e
    move/from16 v0, v22

    #@80
    int-to-float v0, v0

    #@81
    move/from16 v22, v0

    #@83
    .line 1001
    div-float v4, v21, v22

    #@85
    .line 1004
    .local v4, "actualAspect":F
    sub-float v21, v4, v5

    #@87
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    #@8a
    move-result v21

    #@8b
    move/from16 v0, v21

    #@8d
    float-to-double v0, v0

    #@8e
    move-wide/from16 v22, v0

    #@90
    const-wide v24, 0x3e7ad7f29abcaf48L    # 1.0E-7

    #@95
    cmpl-double v21, v22, v24

    #@97
    if-lez v21, :cond_5

    #@99
    .line 1006
    const/4 v6, 0x0

    #@9a
    .line 1009
    .local v6, "done":Z
    if-eqz v17, :cond_3

    #@9c
    .line 1010
    sub-int v21, v8, v15

    #@9e
    sub-int v21, v21, v12

    #@a0
    move/from16 v0, v21

    #@a2
    int-to-float v0, v0

    #@a3
    move/from16 v21, v0

    #@a5
    mul-float v21, v21, v5

    #@a7
    move/from16 v0, v21

    #@a9
    float-to-int v0, v0

    #@aa
    move/from16 v21, v0

    #@ac
    add-int v21, v21, v13

    #@ae
    add-int v11, v21, v14

    #@b0
    .line 1014
    .local v11, "newWidth":I
    if-nez v16, :cond_2

    #@b2
    move-object/from16 v0, p0

    #@b4
    iget-boolean v0, v0, Landroid/widget/ImageView;->mAdjustViewBoundsCompat:Z

    #@b6
    move/from16 v21, v0

    #@b8
    if-eqz v21, :cond_b

    #@ba
    .line 1018
    :cond_2
    :goto_1
    move/from16 v0, v19

    #@bc
    if-gt v11, v0, :cond_3

    #@be
    .line 1019
    move/from16 v19, v11

    #@c0
    .line 1020
    const/4 v6, 0x1

    #@c1
    .line 1025
    .end local v11    # "newWidth":I
    :cond_3
    if-nez v6, :cond_5

    #@c3
    if-eqz v16, :cond_5

    #@c5
    .line 1026
    sub-int v21, v19, v13

    #@c7
    sub-int v21, v21, v14

    #@c9
    move/from16 v0, v21

    #@cb
    int-to-float v0, v0

    #@cc
    move/from16 v21, v0

    #@ce
    div-float v21, v21, v5

    #@d0
    move/from16 v0, v21

    #@d2
    float-to-int v0, v0

    #@d3
    move/from16 v21, v0

    #@d5
    add-int v21, v21, v15

    #@d7
    add-int v10, v21, v12

    #@d9
    .line 1030
    .local v10, "newHeight":I
    if-nez v17, :cond_4

    #@db
    move-object/from16 v0, p0

    #@dd
    iget-boolean v0, v0, Landroid/widget/ImageView;->mAdjustViewBoundsCompat:Z

    #@df
    move/from16 v21, v0

    #@e1
    if-eqz v21, :cond_c

    #@e3
    .line 1035
    :cond_4
    :goto_2
    if-gt v10, v8, :cond_5

    #@e5
    .line 1036
    move v8, v10

    #@e6
    .line 1056
    .end local v4    # "actualAspect":F
    .end local v6    # "done":Z
    .end local v10    # "newHeight":I
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    #@e8
    move/from16 v1, v19

    #@ea
    invoke-virtual {v0, v1, v8}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    #@ed
    .line 941
    return-void

    #@ee
    .line 964
    .end local v7    # "h":I
    .end local v8    # "heightSize":I
    .end local v12    # "pbottom":I
    .end local v13    # "pleft":I
    .end local v14    # "pright":I
    .end local v15    # "ptop":I
    .end local v18    # "w":I
    .end local v19    # "widthSize":I
    :cond_6
    move-object/from16 v0, p0

    #@f0
    iget v0, v0, Landroid/widget/ImageView;->mDrawableWidth:I

    #@f2
    move/from16 v18, v0

    #@f4
    .line 965
    .restart local v18    # "w":I
    move-object/from16 v0, p0

    #@f6
    iget v7, v0, Landroid/widget/ImageView;->mDrawableHeight:I

    #@f8
    .line 966
    .restart local v7    # "h":I
    if-gtz v18, :cond_7

    #@fa
    const/16 v18, 0x1

    #@fc
    .line 967
    :cond_7
    if-gtz v7, :cond_8

    #@fe
    const/4 v7, 0x1

    #@ff
    .line 971
    :cond_8
    move-object/from16 v0, p0

    #@101
    iget-boolean v0, v0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    #@103
    move/from16 v21, v0

    #@105
    if-eqz v21, :cond_0

    #@107
    .line 972
    const/high16 v21, 0x40000000    # 2.0f

    #@109
    move/from16 v0, v20

    #@10b
    move/from16 v1, v21

    #@10d
    if-eq v0, v1, :cond_9

    #@10f
    const/16 v17, 0x1

    #@111
    .line 973
    :goto_4
    const/high16 v21, 0x40000000    # 2.0f

    #@113
    move/from16 v0, v21

    #@115
    if-eq v9, v0, :cond_a

    #@117
    const/16 v16, 0x1

    #@119
    .line 975
    :goto_5
    move/from16 v0, v18

    #@11b
    int-to-float v0, v0

    #@11c
    move/from16 v21, v0

    #@11e
    int-to-float v0, v7

    #@11f
    move/from16 v22, v0

    #@121
    div-float v5, v21, v22

    #@123
    goto/16 :goto_0

    #@125
    .line 972
    :cond_9
    const/16 v17, 0x0

    #@127
    goto :goto_4

    #@128
    .line 973
    :cond_a
    const/16 v16, 0x0

    #@12a
    goto :goto_5

    #@12b
    .line 1015
    .restart local v4    # "actualAspect":F
    .restart local v6    # "done":Z
    .restart local v8    # "heightSize":I
    .restart local v11    # "newWidth":I
    .restart local v12    # "pbottom":I
    .restart local v13    # "pleft":I
    .restart local v14    # "pright":I
    .restart local v15    # "ptop":I
    .restart local v19    # "widthSize":I
    :cond_b
    move-object/from16 v0, p0

    #@12d
    iget v0, v0, Landroid/widget/ImageView;->mMaxWidth:I

    #@12f
    move/from16 v21, v0

    #@131
    move-object/from16 v0, p0

    #@133
    move/from16 v1, v21

    #@135
    move/from16 v2, p1

    #@137
    invoke-direct {v0, v11, v1, v2}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    #@13a
    move-result v19

    #@13b
    goto/16 :goto_1

    #@13d
    .line 1031
    .end local v11    # "newWidth":I
    .restart local v10    # "newHeight":I
    :cond_c
    move-object/from16 v0, p0

    #@13f
    iget v0, v0, Landroid/widget/ImageView;->mMaxHeight:I

    #@141
    move/from16 v21, v0

    #@143
    move-object/from16 v0, p0

    #@145
    move/from16 v1, v21

    #@147
    move/from16 v2, p2

    #@149
    invoke-direct {v0, v10, v1, v2}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    #@14c
    move-result v8

    #@14d
    goto :goto_2

    #@14e
    .line 1046
    .end local v4    # "actualAspect":F
    .end local v6    # "done":Z
    .end local v8    # "heightSize":I
    .end local v10    # "newHeight":I
    .end local v19    # "widthSize":I
    :cond_d
    add-int v21, v13, v14

    #@150
    add-int v18, v18, v21

    #@152
    .line 1047
    add-int v21, v15, v12

    #@154
    add-int v7, v7, v21

    #@156
    .line 1049
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getSuggestedMinimumWidth()I

    #@159
    move-result v21

    #@15a
    move/from16 v0, v18

    #@15c
    move/from16 v1, v21

    #@15e
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@161
    move-result v18

    #@162
    .line 1050
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getSuggestedMinimumHeight()I

    #@165
    move-result v21

    #@166
    move/from16 v0, v21

    #@168
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    #@16b
    move-result v7

    #@16c
    .line 1052
    const/16 v21, 0x0

    #@16e
    move/from16 v0, v18

    #@170
    move/from16 v1, p1

    #@172
    move/from16 v2, v21

    #@174
    invoke-static {v0, v1, v2}, Landroid/widget/ImageView;->resolveSizeAndState(III)I

    #@177
    move-result v19

    #@178
    .line 1053
    .restart local v19    # "widthSize":I
    const/16 v21, 0x0

    #@17a
    move/from16 v0, p2

    #@17c
    move/from16 v1, v21

    #@17e
    invoke-static {v7, v0, v1}, Landroid/widget/ImageView;->resolveSizeAndState(III)I

    #@181
    move-result v8

    #@182
    .restart local v8    # "heightSize":I
    goto/16 :goto_3
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 260
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 261
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    #@6
    move-result-object v0

    #@7
    .line 262
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 263
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    #@10
    move-result-object v1

    #@11
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@14
    .line 259
    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 921
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    #@3
    .line 923
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 924
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@c
    .line 920
    :cond_0
    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 1
    .param p1, "adjustViewBounds"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 301
    iput-boolean p1, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    #@2
    .line 302
    if-eqz p1, :cond_0

    #@4
    .line 303
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    #@6
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@9
    .line 300
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1410
    and-int/lit16 p1, p1, 0xff

    #@2
    .line 1411
    iget v0, p0, Landroid/widget/ImageView;->mAlpha:I

    #@4
    if-eq v0, p1, :cond_0

    #@6
    .line 1412
    iput p1, p0, Landroid/widget/ImageView;->mAlpha:I

    #@8
    .line 1413
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    #@b
    .line 1414
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    #@e
    .line 1415
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    #@11
    .line 1409
    :cond_0
    return-void
.end method

.method public setBaseline(I)V
    .locals 1
    .param p1, "baseline"    # I

    #@0
    .prologue
    .line 1277
    iget v0, p0, Landroid/widget/ImageView;->mBaseline:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 1278
    iput p1, p0, Landroid/widget/ImageView;->mBaseline:I

    #@6
    .line 1279
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    #@9
    .line 1276
    :cond_0
    return-void
.end method

.method public setBaselineAlignBottom(Z)V
    .locals 1
    .param p1, "aligned"    # Z

    #@0
    .prologue
    .line 1293
    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 1294
    iput-boolean p1, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    #@6
    .line 1295
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    #@9
    .line 1292
    :cond_0
    return-void
.end method

.method public final setColorFilter(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 1330
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    #@5
    .line 1329
    return-void
.end method

.method public final setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 1318
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    #@2
    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    #@5
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@8
    .line 1317
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1368
    iget-object v0, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    #@3
    if-eq v0, p1, :cond_0

    #@5
    .line 1369
    iput-object p1, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    #@7
    .line 1370
    iput-boolean v1, p0, Landroid/widget/ImageView;->mHasColorFilter:Z

    #@9
    .line 1371
    iput-boolean v1, p0, Landroid/widget/ImageView;->mColorMod:Z

    #@b
    .line 1372
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    #@e
    .line 1373
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    #@11
    .line 1367
    :cond_0
    return-void
.end method

.method public setCropToPadding(Z)V
    .locals 1
    .param p1, "cropToPadding"    # Z

    #@0
    .prologue
    .line 790
    iget-boolean v0, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 791
    iput-boolean p1, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    #@6
    .line 792
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    #@9
    .line 793
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    #@c
    .line 789
    :cond_0
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    #@0
    .prologue
    .line 1087
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    #@3
    move-result v0

    #@4
    .line 1088
    .local v0, "changed":Z
    const/4 v1, 0x1

    #@5
    iput-boolean v1, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    #@7
    .line 1089
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    #@a
    .line 1090
    return v0
.end method

.method public setImageAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 1397
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(I)V

    #@3
    .line 1396
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 598
    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@3
    .line 599
    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 600
    new-instance v0, Landroid/widget/ImageView$ImageViewBitmapDrawable;

    #@9
    .line 601
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    #@b
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@e
    move-result-object v1

    #@f
    .line 600
    invoke-direct {v0, v1, p1}, Landroid/widget/ImageView$ImageViewBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    #@12
    iput-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

    #@14
    .line 605
    :goto_0
    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

    #@16
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@19
    .line 595
    return-void

    #@1a
    .line 603
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/widget/ImageView$ImageViewBitmapDrawable;

    #@1c
    invoke-virtual {v0, p1}, Landroid/widget/ImageView$ImageViewBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    #@1f
    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 465
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eq v2, p1, :cond_2

    #@4
    .line 466
    const/4 v2, 0x0

    #@5
    iput v2, p0, Landroid/widget/ImageView;->mResource:I

    #@7
    .line 467
    const/4 v2, 0x0

    #@8
    iput-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    #@a
    .line 469
    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    #@c
    .line 470
    .local v1, "oldWidth":I
    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    #@e
    .line 472
    .local v0, "oldHeight":I
    invoke-direct {p0, p1}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@11
    .line 474
    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    #@13
    if-ne v1, v2, :cond_0

    #@15
    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    #@17
    if-eq v0, v2, :cond_1

    #@19
    .line 475
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    #@1c
    .line 477
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    #@1f
    .line 464
    .end local v0    # "oldHeight":I
    .end local v1    # "oldWidth":I
    :cond_2
    return-void
.end method

.method public setImageIcon(Landroid/graphics/drawable/Icon;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 496
    if-nez p1, :cond_0

    #@3
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@6
    .line 495
    return-void

    #@7
    .line 496
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    #@9
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    #@c
    move-result-object v0

    #@d
    goto :goto_0
.end method

.method public setImageLevel(I)V
    .locals 1
    .param p1, "level"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 631
    iput p1, p0, Landroid/widget/ImageView;->mLevel:I

    #@2
    .line 632
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 633
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@8
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    #@b
    .line 634
    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    #@e
    .line 630
    :cond_0
    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 754
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 755
    const/4 p1, 0x0

    #@9
    .line 759
    .end local p1    # "matrix":Landroid/graphics/Matrix;
    :cond_0
    if-nez p1, :cond_1

    #@b
    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    #@d
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_3

    #@13
    .line 760
    :cond_1
    if-eqz p1, :cond_2

    #@15
    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    #@17
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_3

    #@1d
    .line 752
    :cond_2
    :goto_0
    return-void

    #@1e
    .line 761
    :cond_3
    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    #@20
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    #@23
    .line 762
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    #@26
    .line 763
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    #@29
    goto :goto_0
.end method

.method public setImageResource(I)V
    .locals 3
    .param p1, "resId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 411
    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    #@3
    .line 412
    .local v1, "oldWidth":I
    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    #@5
    .line 414
    .local v0, "oldHeight":I
    invoke-direct {p0, v2}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@8
    .line 415
    iput p1, p0, Landroid/widget/ImageView;->mResource:I

    #@a
    .line 416
    iput-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    #@c
    .line 418
    invoke-direct {p0}, Landroid/widget/ImageView;->resolveUri()V

    #@f
    .line 420
    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    #@11
    if-ne v1, v2, :cond_0

    #@13
    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    #@15
    if-eq v0, v2, :cond_1

    #@17
    .line 421
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    #@1a
    .line 423
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    #@1d
    .line 408
    return-void
.end method

.method public setImageState([IZ)V
    .locals 1
    .param p1, "state"    # [I
    .param p2, "merge"    # Z

    #@0
    .prologue
    .line 609
    iput-object p1, p0, Landroid/widget/ImageView;->mState:[I

    #@2
    .line 610
    iput-boolean p2, p0, Landroid/widget/ImageView;->mMergeState:Z

    #@4
    .line 611
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 612
    invoke-virtual {p0}, Landroid/widget/ImageView;->refreshDrawableState()V

    #@b
    .line 613
    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    #@e
    .line 608
    :cond_0
    return-void
.end method

.method public setImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 514
    iput-object p1, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    #@2
    .line 515
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    #@5
    .line 517
    invoke-direct {p0}, Landroid/widget/ImageView;->applyImageTint()V

    #@8
    .line 513
    return-void
.end method

.method public setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 542
    iput-object p1, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    .line 543
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    #@5
    .line 545
    invoke-direct {p0}, Landroid/widget/ImageView;->applyImageTint()V

    #@8
    .line 541
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 439
    iget v2, p0, Landroid/widget/ImageView;->mResource:I

    #@4
    if-nez v2, :cond_0

    #@6
    .line 440
    iget-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    #@8
    if-eq v2, p1, :cond_3

    #@a
    .line 441
    if-eqz p1, :cond_0

    #@c
    iget-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    #@e
    if-nez v2, :cond_4

    #@10
    .line 442
    :cond_0
    invoke-direct {p0, v3}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@13
    .line 443
    iput v4, p0, Landroid/widget/ImageView;->mResource:I

    #@15
    .line 444
    iput-object p1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    #@17
    .line 446
    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    #@19
    .line 447
    .local v1, "oldWidth":I
    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    #@1b
    .line 449
    .local v0, "oldHeight":I
    invoke-direct {p0}, Landroid/widget/ImageView;->resolveUri()V

    #@1e
    .line 451
    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    #@20
    if-ne v1, v2, :cond_1

    #@22
    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    #@24
    if-eq v0, v2, :cond_2

    #@26
    .line 452
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    #@29
    .line 454
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    #@2c
    .line 438
    .end local v0    # "oldHeight":I
    .end local v1    # "oldWidth":I
    :cond_3
    :goto_0
    return-void

    #@2d
    .line 441
    :cond_4
    iget-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    #@2f
    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_0

    #@35
    goto :goto_0
.end method

.method public setMaxHeight(I)V
    .locals 0
    .param p1, "maxHeight"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 380
    iput p1, p0, Landroid/widget/ImageView;->mMaxHeight:I

    #@2
    .line 379
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxWidth"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 342
    iput p1, p0, Landroid/widget/ImageView;->mMaxWidth:I

    #@2
    .line 341
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    #@0
    .prologue
    .line 706
    if-nez p1, :cond_0

    #@2
    .line 707
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 710
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    #@a
    if-eq v0, p1, :cond_1

    #@c
    .line 711
    iput-object p1, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    #@e
    .line 713
    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    #@10
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    #@12
    if-ne v0, v1, :cond_2

    #@14
    const/4 v0, 0x1

    #@15
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setWillNotCacheDrawing(Z)V

    #@18
    .line 715
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    #@1b
    .line 716
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    #@1e
    .line 705
    :cond_1
    return-void

    #@1f
    .line 713
    :cond_2
    const/4 v0, 0x0

    #@20
    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    #@0
    .prologue
    .line 619
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    #@3
    .line 620
    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    #@6
    .line 618
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1467
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    #@4
    .line 1468
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1469
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@a
    if-nez p1, :cond_1

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@10
    .line 1466
    :cond_0
    return-void

    #@11
    :cond_1
    move v0, v1

    #@12
    .line 1469
    goto :goto_0
.end method

.method public final setXfermode(Landroid/graphics/Xfermode;)V
    .locals 1
    .param p1, "mode"    # Landroid/graphics/Xfermode;

    #@0
    .prologue
    .line 1341
    iget-object v0, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 1342
    iput-object p1, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    #@6
    .line 1343
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    #@9
    .line 1344
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    #@c
    .line 1345
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    #@f
    .line 1340
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 218
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eq v0, p1, :cond_0

    #@4
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
