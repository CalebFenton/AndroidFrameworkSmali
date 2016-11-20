.class public Landroid/widget/ImageView;
.super Landroid/view/View;
.source "ImageView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ImageView$ImageDrawableCallback;,
        Landroid/widget/ImageView$ScaleType;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImageView"

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

.field private mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mResource:I

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mState:[I

.field private final mTempDst:Landroid/graphics/RectF;

.field private final mTempSrc:Landroid/graphics/RectF;

.field private mUri:Landroid/net/Uri;

.field private mUseCorrectStreamDensity:Z

.field private final mViewAlphaScale:I

.field private mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method static synthetic -set0(Landroid/widget/ImageView;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/widget/ImageView;->mResource:I

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/widget/ImageView;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    #@2
    return-object p1
.end method

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
    .line 124
    const/16 v0, 0x8

    #@7
    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    #@9
    .line 125
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    #@b
    aput-object v1, v0, v3

    #@d
    .line 126
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    #@f
    aput-object v1, v0, v4

    #@11
    .line 127
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    #@13
    aput-object v1, v0, v5

    #@15
    .line 128
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    #@17
    aput-object v1, v0, v6

    #@19
    .line 129
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    #@1b
    aput-object v1, v0, v7

    #@1d
    .line 130
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    #@1f
    const/4 v2, 0x5

    #@20
    aput-object v1, v0, v2

    #@22
    .line 131
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    #@24
    const/4 v2, 0x6

    #@25
    aput-object v1, v0, v2

    #@27
    .line 132
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    #@29
    const/4 v2, 0x7

    #@2a
    aput-object v1, v0, v2

    #@2c
    .line 124
    sput-object v0, Landroid/widget/ImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    #@2e
    .line 968
    new-array v0, v7, [Landroid/graphics/Matrix$ScaleToFit;

    #@30
    .line 969
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    #@32
    aput-object v1, v0, v3

    #@34
    .line 970
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    #@36
    aput-object v1, v0, v4

    #@38
    .line 971
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    #@3a
    aput-object v1, v0, v5

    #@3c
    .line 972
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    #@3e
    aput-object v1, v0, v6

    #@40
    .line 968
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
    .line 136
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@8
    .line 79
    iput v1, p0, Landroid/widget/ImageView;->mResource:I

    #@a
    .line 82
    iput-boolean v1, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    #@c
    .line 83
    iput-boolean v1, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    #@e
    .line 84
    iput v0, p0, Landroid/widget/ImageView;->mMaxWidth:I

    #@10
    .line 85
    iput v0, p0, Landroid/widget/ImageView;->mMaxHeight:I

    #@12
    .line 88
    iput-object v2, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    #@14
    .line 89
    iput-boolean v1, p0, Landroid/widget/ImageView;->mHasColorFilter:Z

    #@16
    .line 91
    const/16 v0, 0xff

    #@18
    iput v0, p0, Landroid/widget/ImageView;->mAlpha:I

    #@1a
    .line 92
    const/16 v0, 0x100

    #@1c
    iput v0, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    #@1e
    .line 93
    iput-boolean v1, p0, Landroid/widget/ImageView;->mColorMod:Z

    #@20
    .line 95
    iput-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@22
    .line 96
    iput-object v2, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #@24
    .line 97
    iput-object v2, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    #@26
    .line 98
    iput-object v2, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    #@28
    .line 99
    iput-boolean v1, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    #@2a
    .line 100
    iput-boolean v1, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    #@2c
    .line 102
    iput-object v2, p0, Landroid/widget/ImageView;->mState:[I

    #@2e
    .line 103
    iput-boolean v1, p0, Landroid/widget/ImageView;->mMergeState:Z

    #@30
    .line 104
    iput v1, p0, Landroid/widget/ImageView;->mLevel:I

    #@32
    .line 107
    iput-object v2, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@34
    .line 110
    new-instance v0, Landroid/graphics/RectF;

    #@36
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@39
    iput-object v0, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    #@3b
    .line 111
    new-instance v0, Landroid/graphics/RectF;

    #@3d
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@40
    iput-object v0, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    #@42
    .line 115
    const/4 v0, -0x1

    #@43
    iput v0, p0, Landroid/widget/ImageView;->mBaseline:I

    #@45
    .line 116
    iput-boolean v1, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    #@47
    .line 119
    iput-boolean v1, p0, Landroid/widget/ImageView;->mAdjustViewBoundsCompat:Z

    #@49
    .line 137
    invoke-direct {p0}, Landroid/widget/ImageView;->initImageView()V

    #@4c
    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 141
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 145
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 144
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
    .line 150
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@a
    .line 79
    iput v6, p0, Landroid/widget/ImageView;->mResource:I

    #@c
    .line 82
    iput-boolean v6, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    #@e
    .line 83
    iput-boolean v6, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    #@10
    .line 84
    iput v9, p0, Landroid/widget/ImageView;->mMaxWidth:I

    #@12
    .line 85
    iput v9, p0, Landroid/widget/ImageView;->mMaxHeight:I

    #@14
    .line 88
    iput-object v5, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    #@16
    .line 89
    iput-boolean v6, p0, Landroid/widget/ImageView;->mHasColorFilter:Z

    #@18
    .line 91
    const/16 v4, 0xff

    #@1a
    iput v4, p0, Landroid/widget/ImageView;->mAlpha:I

    #@1c
    .line 92
    const/16 v4, 0x100

    #@1e
    iput v4, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    #@20
    .line 93
    iput-boolean v6, p0, Landroid/widget/ImageView;->mColorMod:Z

    #@22
    .line 95
    iput-object v5, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@24
    .line 96
    iput-object v5, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #@26
    .line 97
    iput-object v5, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    #@28
    .line 98
    iput-object v5, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2a
    .line 99
    iput-boolean v6, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    #@2c
    .line 100
    iput-boolean v6, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    #@2e
    .line 102
    iput-object v5, p0, Landroid/widget/ImageView;->mState:[I

    #@30
    .line 103
    iput-boolean v6, p0, Landroid/widget/ImageView;->mMergeState:Z

    #@32
    .line 104
    iput v6, p0, Landroid/widget/ImageView;->mLevel:I

    #@34
    .line 107
    iput-object v5, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@36
    .line 110
    new-instance v4, Landroid/graphics/RectF;

    #@38
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    #@3b
    iput-object v4, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    #@3d
    .line 111
    new-instance v4, Landroid/graphics/RectF;

    #@3f
    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    #@42
    iput-object v4, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    #@44
    .line 115
    iput v7, p0, Landroid/widget/ImageView;->mBaseline:I

    #@46
    .line 116
    iput-boolean v6, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    #@48
    .line 119
    iput-boolean v6, p0, Landroid/widget/ImageView;->mAdjustViewBoundsCompat:Z

    #@4a
    .line 152
    invoke-direct {p0}, Landroid/widget/ImageView;->initImageView()V

    #@4d
    .line 155
    sget-object v4, Lcom/android/internal/R$styleable;->ImageView:[I

    #@4f
    .line 154
    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@52
    move-result-object v0

    #@53
    .line 157
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@56
    move-result-object v2

    #@57
    .line 158
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    #@59
    .line 159
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@5c
    .line 162
    :cond_0
    const/4 v4, 0x6

    #@5d
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@60
    move-result v4

    #@61
    iput-boolean v4, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    #@63
    .line 163
    const/16 v4, 0x8

    #@65
    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@68
    move-result v4

    #@69
    iput v4, p0, Landroid/widget/ImageView;->mBaseline:I

    #@6b
    .line 165
    const/4 v4, 0x2

    #@6c
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@6f
    move-result v4

    #@70
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    #@73
    .line 166
    const/4 v4, 0x3

    #@74
    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@77
    move-result v4

    #@78
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setMaxWidth(I)V

    #@7b
    .line 167
    const/4 v4, 0x4

    #@7c
    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@7f
    move-result v4

    #@80
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setMaxHeight(I)V

    #@83
    .line 169
    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    #@86
    move-result v3

    #@87
    .line 170
    .local v3, "index":I
    if-ltz v3, :cond_1

    #@89
    .line 171
    sget-object v4, Landroid/widget/ImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    #@8b
    aget-object v4, v4, v3

    #@8d
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@90
    .line 174
    :cond_1
    const/4 v4, 0x5

    #@91
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@94
    move-result v4

    #@95
    if-eqz v4, :cond_2

    #@97
    .line 175
    const/4 v4, 0x5

    #@98
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@9b
    move-result-object v4

    #@9c
    iput-object v4, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    #@9e
    .line 176
    iput-boolean v8, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    #@a0
    .line 180
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    #@a2
    iput-object v4, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    #@a4
    .line 181
    iput-boolean v8, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    #@a6
    .line 184
    :cond_2
    const/16 v4, 0x9

    #@a8
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@ab
    move-result v4

    #@ac
    if-eqz v4, :cond_3

    #@ae
    .line 186
    const/16 v4, 0x9

    #@b0
    .line 185
    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    #@b3
    move-result v4

    #@b4
    .line 186
    iget-object v5, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    #@b6
    .line 185
    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@b9
    move-result-object v4

    #@ba
    iput-object v4, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    #@bc
    .line 187
    iput-boolean v8, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    #@be
    .line 190
    :cond_3
    invoke-direct {p0}, Landroid/widget/ImageView;->applyImageTint()V

    #@c1
    .line 192
    const/16 v4, 0xa

    #@c3
    const/16 v5, 0xff

    #@c5
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    #@c8
    move-result v1

    #@c9
    .line 193
    .local v1, "alpha":I
    const/16 v4, 0xff

    #@cb
    if-eq v1, v4, :cond_4

    #@cd
    .line 194
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    #@d0
    .line 198
    :cond_4
    const/4 v4, 0x7

    #@d1
    .line 197
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@d4
    move-result v4

    #@d5
    iput-boolean v4, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    #@d7
    .line 200
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@da
    .line 149
    return-void
.end method

.method private applyColorMod()V
    .locals 2

    #@0
    .prologue
    .line 1468
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_1

    #@4
    iget-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 1469
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@a
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@10
    .line 1470
    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasColorFilter:Z

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 1471
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@16
    iget-object v1, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    #@18
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@1b
    .line 1473
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@1d
    iget-object v1, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    #@1f
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setXfermode(Landroid/graphics/Xfermode;)V

    #@22
    .line 1474
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@24
    iget v1, p0, Landroid/widget/ImageView;->mAlpha:I

    #@26
    mul-int/lit16 v1, v1, 0x100

    #@28
    shr-int/lit8 v1, v1, 0x8

    #@2a
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@2d
    .line 1464
    :cond_1
    return-void
.end method

.method private applyImageTint()V
    .locals 2

    #@0
    .prologue
    .line 601
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
    .line 602
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@e
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@14
    .line 604
    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 605
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@1a
    iget-object v1, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    #@1c
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    #@1f
    .line 608
    :cond_1
    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    #@21
    if-eqz v0, :cond_2

    #@23
    .line 609
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@25
    iget-object v1, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    #@27
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@2a
    .line 614
    :cond_2
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_3

    #@32
    .line 615
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@34
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@3b
    .line 600
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
    .line 1134
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@7
    if-eqz v8, :cond_3

    #@9
    iget-boolean v8, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    #@b
    if-eqz v8, :cond_3

    #@d
    .line 1138
    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    #@f
    .line 1139
    .local v1, "dwidth":I
    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    #@11
    .line 1141
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
    .line 1142
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
    .line 1144
    .local v6, "vheight":I
    if-ltz v1, :cond_0

    #@29
    if-ne v7, v1, :cond_5

    #@2b
    .line 1145
    :cond_0
    if-ltz v0, :cond_1

    #@2d
    if-ne v6, v0, :cond_4

    #@2f
    :cond_1
    const/4 v4, 0x1

    #@30
    .line 1147
    .local v4, "fits":Z
    :goto_0
    if-lez v1, :cond_2

    #@32
    if-gtz v0, :cond_6

    #@34
    .line 1151
    :cond_2
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@36
    invoke-virtual {v8, v10, v10, v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@39
    .line 1152
    iput-object v13, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@3b
    .line 1133
    :goto_1
    return-void

    #@3c
    .line 1135
    .end local v0    # "dheight":I
    .end local v1    # "dwidth":I
    .end local v4    # "fits":Z
    .end local v6    # "vheight":I
    .end local v7    # "vwidth":I
    :cond_3
    return-void

    #@3d
    .line 1145
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
    .line 1144
    .end local v4    # "fits":Z
    :cond_5
    const/4 v4, 0x0

    #@40
    .restart local v4    # "fits":Z
    goto :goto_0

    #@41
    .line 1147
    :cond_6
    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    #@43
    iget-object v9, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    #@45
    if-eq v8, v9, :cond_2

    #@47
    .line 1156
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@49
    invoke-virtual {v8, v10, v10, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@4c
    .line 1158
    sget-object v8, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    #@4e
    iget-object v9, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    #@50
    if-ne v8, v9, :cond_8

    #@52
    .line 1160
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    #@54
    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    #@57
    move-result v8

    #@58
    if-eqz v8, :cond_7

    #@5a
    .line 1161
    iput-object v13, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@5c
    goto :goto_1

    #@5d
    .line 1163
    :cond_7
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    #@5f
    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@61
    goto :goto_1

    #@62
    .line 1165
    :cond_8
    if-eqz v4, :cond_9

    #@64
    .line 1167
    iput-object v13, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@66
    goto :goto_1

    #@67
    .line 1168
    :cond_9
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    #@69
    iget-object v9, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    #@6b
    if-ne v8, v9, :cond_a

    #@6d
    .line 1170
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    #@6f
    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@71
    .line 1171
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
    .line 1172
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
    .line 1171
    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    #@88
    goto :goto_1

    #@89
    .line 1173
    :cond_a
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    #@8b
    iget-object v9, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    #@8d
    if-ne v8, v9, :cond_c

    #@8f
    .line 1174
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    #@91
    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@93
    .line 1177
    const/4 v2, 0x0

    #@94
    .local v2, "dx":F
    const/4 v3, 0x0

    #@95
    .line 1179
    .local v3, "dy":F
    mul-int v8, v1, v6

    #@97
    mul-int v9, v7, v0

    #@99
    if-le v8, v9, :cond_b

    #@9b
    .line 1180
    int-to-float v8, v6

    #@9c
    int-to-float v9, v0

    #@9d
    div-float v5, v8, v9

    #@9f
    .line 1181
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
    .line 1187
    :goto_2
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@a7
    invoke-virtual {v8, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    #@aa
    .line 1188
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
    .line 1183
    .end local v5    # "scale":F
    :cond_b
    int-to-float v8, v7

    #@bb
    int-to-float v9, v1

    #@bc
    div-float v5, v8, v9

    #@be
    .line 1184
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
    .line 1189
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
    .line 1190
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    #@cd
    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@cf
    .line 1195
    if-gt v1, v7, :cond_d

    #@d1
    if-gt v0, v6, :cond_d

    #@d3
    .line 1196
    const/high16 v5, 0x3f800000    # 1.0f

    #@d5
    .line 1202
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
    .line 1203
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
    .line 1205
    .restart local v3    # "dy":F
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@eb
    invoke-virtual {v8, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    #@ee
    .line 1206
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@f0
    invoke-virtual {v8, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@f3
    goto/16 :goto_1

    #@f5
    .line 1198
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
    .line 1199
    int-to-float v9, v6

    #@f9
    int-to-float v10, v0

    #@fa
    div-float/2addr v9, v10

    #@fb
    .line 1198
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    #@fe
    move-result v5

    #@ff
    .restart local v5    # "scale":F
    goto :goto_3

    #@100
    .line 1209
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
    .line 1210
    iget-object v8, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    #@109
    int-to-float v9, v7

    #@10a
    int-to-float v10, v6

    #@10b
    invoke-virtual {v8, v12, v12, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    #@10e
    .line 1212
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    #@110
    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@112
    .line 1213
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

.method private getDrawableFromUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 862
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@4
    move-result-object v3

    #@5
    .line 863
    .local v3, "scheme":Ljava/lang/String;
    const-string/jumbo v5, "android.resource"

    #@8
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v5

    #@c
    if-eqz v5, :cond_1

    #@e
    .line 867
    :try_start_0
    iget-object v5, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    #@10
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    #@17
    move-result-object v2

    #@18
    .line 868
    .local v2, "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    iget-object v5, v2, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    #@1a
    iget v7, v2, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    #@1c
    iget-object v8, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    #@1e
    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@21
    move-result-object v8

    #@22
    invoke-virtual {v5, v7, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    move-result-object v5

    #@26
    return-object v5

    #@27
    .line 869
    .end local v2    # "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :catch_0
    move-exception v1

    #@28
    .line 870
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "ImageView"

    #@2b
    new-instance v7, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v8, "Unable to open content: "

    #@33
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v7

    #@37
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v7

    #@3b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v7

    #@3f
    invoke-static {v5, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@42
    .line 893
    :cond_0
    :goto_0
    return-object v6

    #@43
    .line 872
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v5, "content"

    #@46
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v5

    #@4a
    if-nez v5, :cond_2

    #@4c
    .line 873
    const-string/jumbo v5, "file"

    #@4f
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v5

    #@53
    .line 872
    if-eqz v5, :cond_6

    #@55
    .line 874
    :cond_2
    const/4 v4, 0x0

    #@56
    .line 876
    .local v4, "stream":Ljava/io/InputStream;
    :try_start_1
    iget-object v5, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    #@58
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5b
    move-result-object v5

    #@5c
    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    #@5f
    move-result-object v4

    #@60
    .line 878
    .local v4, "stream":Ljava/io/InputStream;
    iget-boolean v5, p0, Landroid/widget/ImageView;->mUseCorrectStreamDensity:Z

    #@62
    if-eqz v5, :cond_4

    #@64
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    #@67
    move-result-object v5

    #@68
    :goto_1
    const/4 v7, 0x0

    #@69
    const/4 v8, 0x0

    #@6a
    .line 877
    invoke-static {v5, v7, v4, v8}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6d
    move-result-object v5

    #@6e
    .line 882
    if-eqz v4, :cond_3

    #@70
    .line 884
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    #@73
    .line 877
    :cond_3
    :goto_2
    return-object v5

    #@74
    :cond_4
    move-object v5, v6

    #@75
    .line 878
    goto :goto_1

    #@76
    .line 885
    :catch_1
    move-exception v0

    #@77
    .line 886
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v6, "ImageView"

    #@7a
    new-instance v7, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v8, "Unable to close content: "

    #@82
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v7

    #@86
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v7

    #@8a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v7

    #@8e
    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@91
    goto :goto_2

    #@92
    .line 879
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "stream":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    #@93
    .line 880
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v5, "ImageView"

    #@96
    new-instance v7, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string/jumbo v8, "Unable to open content: "

    #@9e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v7

    #@a2
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v7

    #@a6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object v7

    #@aa
    invoke-static {v5, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@ad
    .line 882
    if-eqz v4, :cond_0

    #@af
    .line 884
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    #@b2
    goto :goto_0

    #@b3
    .line 885
    :catch_3
    move-exception v0

    #@b4
    .line 886
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "ImageView"

    #@b7
    new-instance v7, Ljava/lang/StringBuilder;

    #@b9
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@bc
    const-string/jumbo v8, "Unable to close content: "

    #@bf
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v7

    #@c3
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v7

    #@c7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ca
    move-result-object v7

    #@cb
    invoke-static {v5, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@ce
    goto/16 :goto_0

    #@d0
    .line 881
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    #@d1
    .line 882
    if-eqz v4, :cond_5

    #@d3
    .line 884
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    #@d6
    .line 881
    :cond_5
    :goto_3
    throw v5

    #@d7
    .line 885
    :catch_4
    move-exception v0

    #@d8
    .line 886
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "ImageView"

    #@db
    new-instance v7, Ljava/lang/StringBuilder;

    #@dd
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@e0
    const-string/jumbo v8, "Unable to close content: "

    #@e3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v7

    #@e7
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v7

    #@eb
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ee
    move-result-object v7

    #@ef
    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f2
    goto :goto_3

    #@f3
    .line 891
    .end local v0    # "e":Ljava/io/IOException;
    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@f6
    move-result-object v5

    #@f7
    invoke-static {v5}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    #@fa
    move-result-object v5

    #@fb
    return-object v5
.end method

.method private initImageView()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 206
    new-instance v1, Landroid/graphics/Matrix;

    #@4
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    #@7
    iput-object v1, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    #@9
    .line 207
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    #@b
    iput-object v1, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    #@d
    .line 209
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    #@f
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@12
    move-result-object v1

    #@13
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@15
    .line 210
    .local v0, "targetSdkVersion":I
    const/16 v1, 0x11

    #@17
    if-gt v0, v1, :cond_0

    #@19
    move v1, v2

    #@1a
    :goto_0
    iput-boolean v1, p0, Landroid/widget/ImageView;->mAdjustViewBoundsCompat:Z

    #@1c
    .line 211
    const/16 v1, 0x17

    #@1e
    if-le v0, v1, :cond_1

    #@20
    :goto_1
    iput-boolean v2, p0, Landroid/widget/ImageView;->mUseCorrectStreamDensity:Z

    #@22
    .line 205
    return-void

    #@23
    :cond_0
    move v1, v3

    #@24
    .line 210
    goto :goto_0

    #@25
    :cond_1
    move v2, v3

    #@26
    .line 211
    goto :goto_1
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
    .line 1487
    iget-object v6, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    if-nez v6, :cond_0

    #@7
    .line 1488
    return v5

    #@8
    .line 1491
    :cond_0
    iget-object v6, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@a
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@d
    move-result-object v0

    #@e
    .line 1492
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@10
    .line 1493
    .local v3, "matrix":Landroid/graphics/Matrix;
    if-nez v3, :cond_3

    #@12
    .line 1494
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
    .line 1495
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    #@24
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    #@27
    move-result v7

    #@28
    if-lt v6, v7, :cond_1

    #@2a
    .line 1494
    :goto_0
    return v4

    #@2b
    :cond_1
    move v4, v5

    #@2c
    .line 1495
    goto :goto_0

    #@2d
    :cond_2
    move v4, v5

    #@2e
    .line 1494
    goto :goto_0

    #@2f
    .line 1496
    :cond_3
    invoke-virtual {v3}, Landroid/graphics/Matrix;->rectStaysRect()Z

    #@32
    move-result v6

    #@33
    if-eqz v6, :cond_6

    #@35
    .line 1497
    iget-object v2, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    #@37
    .line 1498
    .local v2, "boundsSrc":Landroid/graphics/RectF;
    iget-object v1, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    #@39
    .line 1499
    .local v1, "boundsDst":Landroid/graphics/RectF;
    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    #@3c
    .line 1500
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    #@3f
    .line 1501
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
    .line 1502
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
    .line 1501
    :goto_1
    return v4

    #@62
    :cond_4
    move v4, v5

    #@63
    .line 1502
    goto :goto_1

    #@64
    :cond_5
    move v4, v5

    #@65
    .line 1501
    goto :goto_1

    #@66
    .line 1505
    .end local v1    # "boundsDst":Landroid/graphics/RectF;
    .end local v2    # "boundsSrc":Landroid/graphics/RectF;
    :cond_6
    return v5
.end method

.method private resizeFromDrawable()V
    .locals 4

    #@0
    .prologue
    .line 945
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    .line 946
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    #@4
    .line 947
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@7
    move-result v2

    #@8
    .line 948
    .local v2, "w":I
    if-gez v2, :cond_0

    #@a
    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    #@c
    .line 949
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@f
    move-result v1

    #@10
    .line 950
    .local v1, "h":I
    if-gez v1, :cond_1

    #@12
    iget v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    #@14
    .line 951
    :cond_1
    iget v3, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    #@16
    if-ne v2, v3, :cond_2

    #@18
    iget v3, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    #@1a
    if-eq v1, v3, :cond_3

    #@1c
    .line 952
    :cond_2
    iput v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    #@1e
    .line 953
    iput v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    #@20
    .line 954
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    #@23
    .line 944
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
    .line 1101
    move v0, p1

    #@1
    .line 1102
    .local v0, "result":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@4
    move-result v1

    #@5
    .line 1103
    .local v1, "specMode":I
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@8
    move-result v2

    #@9
    .line 1104
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    #@c
    .line 1122
    :goto_0
    return v0

    #@d
    .line 1109
    :sswitch_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    #@10
    move-result v0

    #@11
    goto :goto_0

    #@12
    .line 1115
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
    .line 1119
    :sswitch_2
    move v0, v2

    #@1c
    .line 1120
    goto :goto_0

    #@1d
    .line 1104
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
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 828
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 829
    return-void

    #@6
    .line 832
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    #@9
    move-result-object v2

    #@a
    if-nez v2, :cond_1

    #@c
    .line 833
    return-void

    #@d
    .line 836
    :cond_1
    const/4 v0, 0x0

    #@e
    .line 838
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget v2, p0, Landroid/widget/ImageView;->mResource:I

    #@10
    if-eqz v2, :cond_3

    #@12
    .line 840
    :try_start_0
    iget-object v2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    #@14
    iget v3, p0, Landroid/widget/ImageView;->mResource:I

    #@16
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;
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
    .line 827
    return-void

    #@1e
    .line 841
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    #@1f
    .line 842
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ImageView"

    #@22
    new-instance v3, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v4, "Unable to find resource: "

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    iget v4, p0, Landroid/widget/ImageView;->mResource:I

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3b
    .line 844
    iput-object v5, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    #@3d
    goto :goto_0

    #@3e
    .line 846
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    #@40
    if-eqz v2, :cond_4

    #@42
    .line 847
    iget-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    #@44
    invoke-direct {p0, v2}, Landroid/widget/ImageView;->getDrawableFromUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    #@47
    move-result-object v0

    #@48
    .line 849
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_2

    #@4a
    .line 850
    const-string/jumbo v2, "ImageView"

    #@4d
    new-instance v3, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v4, "resolveUri failed on bad bitmap uri: "

    #@55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    iget-object v4, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    #@5b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v3

    #@63
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    .line 852
    iput-object v5, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    #@68
    goto :goto_0

    #@69
    .line 855
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :cond_4
    return-void
.end method

.method private static scaleTypeToScaleToFit(Landroid/widget/ImageView$ScaleType;)Landroid/graphics/Matrix$ScaleToFit;
    .locals 2
    .param p0, "st"    # Landroid/widget/ImageView$ScaleType;

    #@0
    .prologue
    .line 977
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
    .locals 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/4 v0, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    .line 909
    iget-object v1, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #@5
    if-eq p1, v1, :cond_0

    #@7
    iget-object v1, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 910
    iget-object v1, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #@d
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    #@10
    .line 913
    :cond_0
    iget-object v1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 914
    iget-object v1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@16
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@19
    .line 915
    iget-object v1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@1b
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1e
    .line 916
    invoke-virtual {p0}, Landroid/widget/ImageView;->isAttachedToWindow()Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_1

    #@24
    .line 917
    iget-object v1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@26
    invoke-virtual {v1, v0, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@29
    .line 921
    :cond_1
    iput-object p1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2b
    .line 923
    if-eqz p1, :cond_5

    #@2d
    .line 924
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@30
    .line 925
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutDirection()I

    #@33
    move-result v1

    #@34
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@37
    .line 926
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@3a
    move-result v1

    #@3b
    if-eqz v1, :cond_2

    #@3d
    .line 927
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    #@40
    move-result-object v1

    #@41
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@44
    .line 929
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->isAttachedToWindow()Z

    #@47
    move-result v1

    #@48
    if-eqz v1, :cond_4

    #@4a
    .line 930
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWindowVisibility()I

    #@4d
    move-result v1

    #@4e
    if-nez v1, :cond_3

    #@50
    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    #@53
    move-result v0

    #@54
    :cond_3
    const/4 v1, 0x1

    #@55
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@58
    .line 932
    :cond_4
    iget v0, p0, Landroid/widget/ImageView;->mLevel:I

    #@5a
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    #@5d
    .line 933
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@60
    move-result v0

    #@61
    iput v0, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    #@63
    .line 934
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@66
    move-result v0

    #@67
    iput v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    #@69
    .line 935
    invoke-direct {p0}, Landroid/widget/ImageView;->applyImageTint()V

    #@6c
    .line 936
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    #@6f
    .line 938
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    #@72
    .line 908
    :goto_0
    return-void

    #@73
    .line 940
    :cond_5
    iput v3, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    #@75
    iput v3, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    #@77
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
    .line 1240
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1241
    return-void

    #@6
    .line 1243
    :cond_0
    if-nez p1, :cond_1

    #@8
    .line 1244
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
    .line 1252
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    #@18
    .line 1239
    return-void

    #@19
    .line 1246
    :cond_1
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@1b
    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    #@1d
    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    #@1f
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@22
    .line 1247
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@24
    if-nez v0, :cond_2

    #@26
    .line 1248
    new-instance v0, Landroid/graphics/Matrix;

    #@28
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@2b
    iput-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@2d
    .line 1250
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
    .line 1376
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@4
    .line 1375
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 1231
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    #@3
    .line 1233
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1234
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    #@c
    .line 1230
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    #@0
    .prologue
    .line 1220
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    #@3
    .line 1222
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    .line 1223
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 1224
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@14
    move-result v1

    #@15
    .line 1223
    if-eqz v1, :cond_0

    #@17
    .line 1225
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1a
    .line 1219
    :cond_0
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    #@0
    .prologue
    .line 1525
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    #@3
    .line 1526
    const-string/jumbo v0, "layout:baseline"

    #@6
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBaseline()I

    #@9
    move-result v1

    #@a
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    #@d
    .line 1524
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1519
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
    .line 280
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
    .line 1301
    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1302
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 1304
    :cond_0
    iget v0, p0, Landroid/widget/ImageView;->mBaseline:I

    #@b
    return v0
.end method

.method public getBaselineAlignBottom()Z
    .locals 1

    #@0
    .prologue
    .line 1347
    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    #@2
    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    #@0
    .prologue
    .line 1399
    iget-object v0, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    #@2
    return-object v0
.end method

.method public getCropToPadding()Z
    .locals 1

    #@0
    .prologue
    .line 807
    iget-boolean v0, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    #@2
    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    #@0
    .prologue
    .line 388
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    iget-object v1, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 390
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #@9
    .line 392
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@b
    return-object v0
.end method

.method public getImageAlpha()I
    .locals 1

    #@0
    .prologue
    .line 1429
    iget v0, p0, Landroid/widget/ImageView;->mAlpha:I

    #@2
    return v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 2

    #@0
    .prologue
    .line 769
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 770
    new-instance v0, Landroid/graphics/Matrix;

    #@6
    sget-object v1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    #@8
    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    #@b
    return-object v0

    #@c
    .line 772
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@e
    return-object v0
.end method

.method public getImageTintList()Landroid/content/res/ColorStateList;
    .locals 1

    #@0
    .prologue
    .line 569
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    #@0
    .prologue
    .line 597
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    #@0
    .prologue
    .line 356
    iget v0, p0, Landroid/widget/ImageView;->mMaxHeight:I

    #@2
    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    #@0
    .prologue
    .line 318
    iget v0, p0, Landroid/widget/ImageView;->mMaxWidth:I

    #@2
    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    #@0
    .prologue
    .line 758
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
    .line 227
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-ne p1, v2, :cond_2

    #@4
    .line 228
    if-eqz p1, :cond_1

    #@6
    .line 230
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@9
    move-result v1

    #@a
    .line 231
    .local v1, "w":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@d
    move-result v0

    #@e
    .line 232
    .local v0, "h":I
    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    #@10
    if-ne v1, v2, :cond_0

    #@12
    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    #@14
    if-eq v0, v2, :cond_1

    #@16
    .line 233
    :cond_0
    iput v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    #@18
    .line 234
    iput v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    #@1a
    .line 236
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    #@1d
    .line 246
    .end local v0    # "h":I
    .end local v1    # "w":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    #@20
    .line 226
    :goto_0
    return-void

    #@21
    .line 248
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@24
    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 2

    #@0
    .prologue
    .line 1480
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
    .line 1481
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
    .line 1482
    iget v0, p0, Landroid/widget/ImageView;->mAlpha:I

    #@19
    mul-int/lit16 v0, v0, 0x100

    #@1b
    shr-int/lit8 v0, v0, 0x8

    #@1d
    const/16 v1, 0xff

    #@1f
    if-ne v0, v1, :cond_1

    #@21
    .line 1483
    invoke-direct {p0}, Landroid/widget/ImageView;->isFilledByImage()Z

    #@24
    move-result v0

    #@25
    .line 1480
    :goto_0
    return v0

    #@26
    :cond_0
    const/4 v0, 0x1

    #@27
    goto :goto_0

    #@28
    :cond_1
    const/4 v0, 0x0

    #@29
    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    #@0
    .prologue
    .line 221
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    #@3
    .line 222
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@c
    .line 220
    :cond_0
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    #@0
    .prologue
    .line 898
    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 899
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 900
    :cond_0
    iget-boolean v0, p0, Landroid/widget/ImageView;->mMergeState:Z

    #@b
    if-nez v0, :cond_1

    #@d
    .line 901
    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    #@f
    return-object v0

    #@10
    .line 904
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
    .line 903
    invoke-static {v0, v1}, Landroid/widget/ImageView;->mergeDrawableStates([I[I)[I

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 1257
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    #@3
    .line 1259
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    if-nez v3, :cond_0

    #@7
    .line 1260
    return-void

    #@8
    .line 1263
    :cond_0
    iget v3, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    #@a
    if-eqz v3, :cond_1

    #@c
    iget v3, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    #@e
    if-nez v3, :cond_2

    #@10
    .line 1264
    :cond_1
    return-void

    #@11
    .line 1267
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
    .line 1268
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@1f
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@22
    .line 1256
    :goto_0
    return-void

    #@23
    .line 1270
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    #@26
    move-result v0

    #@27
    .line 1271
    .local v0, "saveCount":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@2a
    .line 1273
    iget-boolean v3, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    #@2c
    if-eqz v3, :cond_4

    #@2e
    .line 1274
    iget v1, p0, Landroid/widget/ImageView;->mScrollX:I

    #@30
    .line 1275
    .local v1, "scrollX":I
    iget v2, p0, Landroid/widget/ImageView;->mScrollY:I

    #@32
    .line 1276
    .local v2, "scrollY":I
    iget v3, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    #@34
    add-int/2addr v3, v1

    #@35
    iget v4, p0, Landroid/widget/ImageView;->mPaddingTop:I

    #@37
    add-int/2addr v4, v2

    #@38
    .line 1277
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
    .line 1278
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
    .line 1276
    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    #@4d
    .line 1281
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
    .line 1283
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@58
    if-eqz v3, :cond_5

    #@5a
    .line 1284
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    #@5c
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    #@5f
    .line 1286
    :cond_5
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@61
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@64
    .line 1287
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
    .line 982
    invoke-direct/range {p0 .. p0}, Landroid/widget/ImageView;->resolveUri()V

    #@3
    .line 987
    const/4 v5, 0x0

    #@4
    .line 990
    .local v5, "desiredAspect":F
    const/16 v17, 0x0

    #@6
    .line 993
    .local v17, "resizeWidth":Z
    const/16 v16, 0x0

    #@8
    .line 995
    .local v16, "resizeHeight":Z
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@b
    move-result v20

    #@c
    .line 996
    .local v20, "widthSpecMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@f
    move-result v9

    #@10
    .line 998
    .local v9, "heightSpecMode":I
    move-object/from16 v0, p0

    #@12
    iget-object v0, v0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@14
    move-object/from16 v21, v0

    #@16
    if-nez v21, :cond_6

    #@18
    .line 1000
    const/16 v21, -0x1

    #@1a
    move/from16 v0, v21

    #@1c
    move-object/from16 v1, p0

    #@1e
    iput v0, v1, Landroid/widget/ImageView;->mDrawableWidth:I

    #@20
    .line 1001
    const/16 v21, -0x1

    #@22
    move/from16 v0, v21

    #@24
    move-object/from16 v1, p0

    #@26
    iput v0, v1, Landroid/widget/ImageView;->mDrawableHeight:I

    #@28
    .line 1002
    const/4 v7, 0x0

    #@29
    .local v7, "h":I
    const/16 v18, 0x0

    #@2b
    .line 1019
    .local v18, "w":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    #@2d
    iget v13, v0, Landroid/widget/ImageView;->mPaddingLeft:I

    #@2f
    .line 1020
    .local v13, "pleft":I
    move-object/from16 v0, p0

    #@31
    iget v14, v0, Landroid/widget/ImageView;->mPaddingRight:I

    #@33
    .line 1021
    .local v14, "pright":I
    move-object/from16 v0, p0

    #@35
    iget v15, v0, Landroid/widget/ImageView;->mPaddingTop:I

    #@37
    .line 1022
    .local v15, "ptop":I
    move-object/from16 v0, p0

    #@39
    iget v12, v0, Landroid/widget/ImageView;->mPaddingBottom:I

    #@3b
    .line 1027
    .local v12, "pbottom":I
    if-nez v17, :cond_1

    #@3d
    if-eqz v16, :cond_d

    #@3f
    .line 1034
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
    .line 1037
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
    .line 1039
    .local v8, "heightSize":I
    const/16 v21, 0x0

    #@6d
    cmpl-float v21, v5, v21

    #@6f
    if-eqz v21, :cond_5

    #@71
    .line 1041
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
    .line 1042
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
    .line 1041
    div-float v4, v21, v22

    #@85
    .line 1044
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
    .line 1046
    const/4 v6, 0x0

    #@9a
    .line 1049
    .local v6, "done":Z
    if-eqz v17, :cond_3

    #@9c
    .line 1050
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
    .line 1054
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
    .line 1058
    :cond_2
    :goto_1
    move/from16 v0, v19

    #@bc
    if-gt v11, v0, :cond_3

    #@be
    .line 1059
    move/from16 v19, v11

    #@c0
    .line 1060
    const/4 v6, 0x1

    #@c1
    .line 1065
    .end local v11    # "newWidth":I
    :cond_3
    if-nez v6, :cond_5

    #@c3
    if-eqz v16, :cond_5

    #@c5
    .line 1066
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
    .line 1070
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
    .line 1075
    :cond_4
    :goto_2
    if-gt v10, v8, :cond_5

    #@e5
    .line 1076
    move v8, v10

    #@e6
    .line 1096
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
    .line 981
    return-void

    #@ee
    .line 1004
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
    .line 1005
    .restart local v18    # "w":I
    move-object/from16 v0, p0

    #@f6
    iget v7, v0, Landroid/widget/ImageView;->mDrawableHeight:I

    #@f8
    .line 1006
    .restart local v7    # "h":I
    if-gtz v18, :cond_7

    #@fa
    const/16 v18, 0x1

    #@fc
    .line 1007
    :cond_7
    if-gtz v7, :cond_8

    #@fe
    const/4 v7, 0x1

    #@ff
    .line 1011
    :cond_8
    move-object/from16 v0, p0

    #@101
    iget-boolean v0, v0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    #@103
    move/from16 v21, v0

    #@105
    if-eqz v21, :cond_0

    #@107
    .line 1012
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
    .line 1013
    :goto_4
    const/high16 v21, 0x40000000    # 2.0f

    #@113
    move/from16 v0, v21

    #@115
    if-eq v9, v0, :cond_a

    #@117
    const/16 v16, 0x1

    #@119
    .line 1015
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
    .line 1012
    :cond_9
    const/16 v17, 0x0

    #@127
    goto :goto_4

    #@128
    .line 1013
    :cond_a
    const/16 v16, 0x0

    #@12a
    goto :goto_5

    #@12b
    .line 1055
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
    .line 1071
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
    .line 1086
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
    .line 1087
    add-int v21, v15, v12

    #@154
    add-int v7, v7, v21

    #@156
    .line 1089
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
    .line 1090
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
    .line 1092
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
    .line 1093
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
    .line 262
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    #@6
    move-result-object v0

    #@7
    .line 263
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 264
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
    .line 961
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    #@3
    .line 963
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 964
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@9
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    #@c
    .line 960
    :cond_0
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    #@0
    .prologue
    .line 1511
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    #@3
    .line 1512
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 1513
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@9
    const/4 v1, 0x0

    #@a
    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@d
    .line 1510
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
    .line 302
    iput-boolean p1, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    #@2
    .line 303
    if-eqz p1, :cond_0

    #@4
    .line 304
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    #@6
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@9
    .line 301
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
    .line 1455
    and-int/lit16 p1, p1, 0xff

    #@2
    .line 1456
    iget v0, p0, Landroid/widget/ImageView;->mAlpha:I

    #@4
    if-eq v0, p1, :cond_0

    #@6
    .line 1457
    iput p1, p0, Landroid/widget/ImageView;->mAlpha:I

    #@8
    .line 1458
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    #@b
    .line 1459
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    #@e
    .line 1460
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    #@11
    .line 1454
    :cond_0
    return-void
.end method

.method public setBaseline(I)V
    .locals 1
    .param p1, "baseline"    # I

    #@0
    .prologue
    .line 1319
    iget v0, p0, Landroid/widget/ImageView;->mBaseline:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 1320
    iput p1, p0, Landroid/widget/ImageView;->mBaseline:I

    #@6
    .line 1321
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    #@9
    .line 1318
    :cond_0
    return-void
.end method

.method public setBaselineAlignBottom(Z)V
    .locals 1
    .param p1, "aligned"    # Z

    #@0
    .prologue
    .line 1335
    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 1336
    iput-boolean p1, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    #@6
    .line 1337
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    #@9
    .line 1334
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
    .line 1372
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    #@5
    .line 1371
    return-void
.end method

.method public final setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 1360
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    #@2
    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    #@5
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@8
    .line 1359
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1410
    iget-object v0, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    #@3
    if-eq v0, p1, :cond_0

    #@5
    .line 1411
    iput-object p1, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    #@7
    .line 1412
    iput-boolean v1, p0, Landroid/widget/ImageView;->mHasColorFilter:Z

    #@9
    .line 1413
    iput-boolean v1, p0, Landroid/widget/ImageView;->mColorMod:Z

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

.method public setCropToPadding(Z)V
    .locals 1
    .param p1, "cropToPadding"    # Z

    #@0
    .prologue
    .line 820
    iget-boolean v0, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 821
    iput-boolean p1, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    #@6
    .line 822
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    #@9
    .line 823
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    #@c
    .line 819
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
    .line 1127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    #@3
    move-result v0

    #@4
    .line 1128
    .local v0, "changed":Z
    const/4 v1, 0x1

    #@5
    iput-boolean v1, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    #@7
    .line 1129
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    #@a
    .line 1130
    return v0
.end method

.method public setImageAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 1442
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(I)V

    #@3
    .line 1441
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
    .line 629
    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@3
    .line 630
    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 631
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    #@9
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    #@b
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@e
    move-result-object v1

    #@f
    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    #@12
    iput-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #@14
    .line 635
    :goto_0
    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #@16
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@19
    .line 626
    return-void

    #@1a
    .line 633
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #@1c
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    #@1f
    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 502
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eq v2, p1, :cond_2

    #@4
    .line 503
    const/4 v2, 0x0

    #@5
    iput v2, p0, Landroid/widget/ImageView;->mResource:I

    #@7
    .line 504
    const/4 v2, 0x0

    #@8
    iput-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    #@a
    .line 506
    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    #@c
    .line 507
    .local v1, "oldWidth":I
    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    #@e
    .line 509
    .local v0, "oldHeight":I
    invoke-direct {p0, p1}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@11
    .line 511
    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    #@13
    if-ne v1, v2, :cond_0

    #@15
    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    #@17
    if-eq v0, v2, :cond_1

    #@19
    .line 512
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    #@1c
    .line 514
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    #@1f
    .line 501
    .end local v0    # "oldHeight":I
    .end local v1    # "oldWidth":I
    :cond_2
    return-void
.end method

.method public setImageIcon(Landroid/graphics/drawable/Icon;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageIconAsync"
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 533
    if-nez p1, :cond_0

    #@3
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@6
    .line 532
    return-void

    #@7
    .line 533
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    #@9
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    #@c
    move-result-object v0

    #@d
    goto :goto_0
.end method

.method public setImageIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .locals 4
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 538
    new-instance v2, Landroid/widget/ImageView$ImageDrawableCallback;

    #@3
    if-nez p1, :cond_0

    #@5
    move-object v0, v1

    #@6
    :goto_0
    const/4 v3, 0x0

    #@7
    invoke-direct {v2, p0, v0, v1, v3}, Landroid/widget/ImageView$ImageDrawableCallback;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;I)V

    #@a
    return-object v2

    #@b
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    #@d
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    #@10
    move-result-object v0

    #@11
    goto :goto_0
.end method

.method public setImageLevel(I)V
    .locals 1
    .param p1, "level"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 661
    iput p1, p0, Landroid/widget/ImageView;->mLevel:I

    #@2
    .line 662
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 663
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@8
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    #@b
    .line 664
    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    #@e
    .line 660
    :cond_0
    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    #@0
    .prologue
    .line 784
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 785
    const/4 p1, 0x0

    #@9
    .line 789
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
    .line 790
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
    .line 782
    :cond_2
    :goto_0
    return-void

    #@1e
    .line 791
    :cond_3
    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    #@20
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    #@23
    .line 792
    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    #@26
    .line 793
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    #@29
    goto :goto_0
.end method

.method public setImageResource(I)V
    .locals 3
    .param p1, "resId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageResourceAsync"
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 432
    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    #@3
    .line 433
    .local v1, "oldWidth":I
    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    #@5
    .line 435
    .local v0, "oldHeight":I
    invoke-direct {p0, v2}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@8
    .line 436
    iput p1, p0, Landroid/widget/ImageView;->mResource:I

    #@a
    .line 437
    iput-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    #@c
    .line 439
    invoke-direct {p0}, Landroid/widget/ImageView;->resolveUri()V

    #@f
    .line 441
    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    #@11
    if-ne v1, v2, :cond_0

    #@13
    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    #@15
    if-eq v0, v2, :cond_1

    #@17
    .line 442
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    #@1a
    .line 444
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    #@1d
    .line 429
    return-void
.end method

.method public setImageResourceAsync(I)Ljava/lang/Runnable;
    .locals 3
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 449
    new-instance v0, Landroid/widget/ImageView$ImageDrawableCallback;

    #@2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v1

    #@a
    const/4 v2, 0x0

    #@b
    invoke-direct {v0, p0, v1, v2, p1}, Landroid/widget/ImageView$ImageDrawableCallback;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;I)V

    #@e
    return-object v0
.end method

.method public setImageState([IZ)V
    .locals 1
    .param p1, "state"    # [I
    .param p2, "merge"    # Z

    #@0
    .prologue
    .line 639
    iput-object p1, p0, Landroid/widget/ImageView;->mState:[I

    #@2
    .line 640
    iput-boolean p2, p0, Landroid/widget/ImageView;->mMergeState:Z

    #@4
    .line 641
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 642
    invoke-virtual {p0}, Landroid/widget/ImageView;->refreshDrawableState()V

    #@b
    .line 643
    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    #@e
    .line 638
    :cond_0
    return-void
.end method

.method public setImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 556
    iput-object p1, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    #@2
    .line 557
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    #@5
    .line 559
    invoke-direct {p0}, Landroid/widget/ImageView;->applyImageTint()V

    #@8
    .line 555
    return-void
.end method

.method public setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 584
    iput-object p1, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    .line 585
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    #@5
    .line 587
    invoke-direct {p0}, Landroid/widget/ImageView;->applyImageTint()V

    #@8
    .line 583
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageURIAsync"
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 465
    iget v2, p0, Landroid/widget/ImageView;->mResource:I

    #@4
    if-nez v2, :cond_0

    #@6
    iget-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    #@8
    if-eq v2, p1, :cond_3

    #@a
    if-eqz p1, :cond_0

    #@c
    iget-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    #@e
    if-nez v2, :cond_4

    #@10
    .line 466
    :cond_0
    invoke-direct {p0, v3}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@13
    .line 467
    iput v4, p0, Landroid/widget/ImageView;->mResource:I

    #@15
    .line 468
    iput-object p1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    #@17
    .line 470
    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    #@19
    .line 471
    .local v1, "oldWidth":I
    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    #@1b
    .line 473
    .local v0, "oldHeight":I
    invoke-direct {p0}, Landroid/widget/ImageView;->resolveUri()V

    #@1e
    .line 475
    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    #@20
    if-ne v1, v2, :cond_1

    #@22
    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    #@24
    if-eq v0, v2, :cond_2

    #@26
    .line 476
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    #@29
    .line 478
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    #@2c
    .line 464
    .end local v0    # "oldHeight":I
    .end local v1    # "oldWidth":I
    :cond_3
    :goto_0
    return-void

    #@2d
    .line 465
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

.method public setImageURIAsync(Landroid/net/Uri;)Ljava/lang/Runnable;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 484
    iget v1, p0, Landroid/widget/ImageView;->mResource:I

    #@4
    if-nez v1, :cond_0

    #@6
    iget-object v1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    #@8
    if-eq v1, p1, :cond_3

    #@a
    if-eqz p1, :cond_0

    #@c
    iget-object v1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    #@e
    if-nez v1, :cond_2

    #@10
    .line 485
    :cond_0
    if-nez p1, :cond_4

    #@12
    .line 486
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-nez v0, :cond_1

    #@14
    .line 488
    const/4 p1, 0x0

    #@15
    .line 490
    .end local p1    # "uri":Landroid/net/Uri;
    :cond_1
    new-instance v1, Landroid/widget/ImageView$ImageDrawableCallback;

    #@17
    invoke-direct {v1, p0, v0, p1, v2}, Landroid/widget/ImageView$ImageDrawableCallback;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;I)V

    #@1a
    return-object v1

    #@1b
    .line 484
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .restart local p1    # "uri":Landroid/net/Uri;
    :cond_2
    iget-object v1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    #@1d
    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_0

    #@23
    .line 492
    :cond_3
    return-object v0

    #@24
    .line 485
    :cond_4
    invoke-direct {p0, p1}, Landroid/widget/ImageView;->getDrawableFromUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    #@27
    move-result-object v0

    #@28
    goto :goto_0
.end method

.method public setMaxHeight(I)V
    .locals 0
    .param p1, "maxHeight"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 381
    iput p1, p0, Landroid/widget/ImageView;->mMaxHeight:I

    #@2
    .line 380
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxWidth"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    #@0
    .prologue
    .line 343
    iput p1, p0, Landroid/widget/ImageView;->mMaxWidth:I

    #@2
    .line 342
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    #@0
    .prologue
    .line 736
    if-nez p1, :cond_0

    #@2
    .line 737
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 740
    :cond_0
    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    #@a
    if-eq v0, p1, :cond_1

    #@c
    .line 741
    iput-object p1, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    #@e
    .line 743
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
    .line 745
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    #@1b
    .line 746
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    #@1e
    .line 735
    :cond_1
    return-void

    #@1f
    .line 743
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
    .line 649
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    #@3
    .line 650
    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    #@6
    .line 648
    return-void
.end method

.method public final setXfermode(Landroid/graphics/Xfermode;)V
    .locals 1
    .param p1, "mode"    # Landroid/graphics/Xfermode;

    #@0
    .prologue
    .line 1383
    iget-object v0, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 1384
    iput-object p1, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    #@6
    .line 1385
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    #@9
    .line 1386
    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    #@c
    .line 1387
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    #@f
    .line 1382
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 216
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
