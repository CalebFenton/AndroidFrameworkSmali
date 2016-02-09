.class public Landroid/support/v4/view/PagerTitleStrip;
.super Landroid/view/ViewGroup;
.source "PagerTitleStrip.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$Decor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;,
        Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplBase;,
        Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplIcs;,
        Landroid/support/v4/view/PagerTitleStrip$PageListener;
    }
.end annotation


# static fields
.field private static final ATTRS:[I

.field private static final IMPL:Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;

.field private static final SIDE_ALPHA:F = 0.6f

.field private static final TAG:Ljava/lang/String; = "PagerTitleStrip"

.field private static final TEXT_ATTRS:[I

.field private static final TEXT_SPACING:I = 0x10


# instance fields
.field mCurrText:Landroid/widget/TextView;

.field private mGravity:I

.field private mLastKnownCurrentPage:I

.field private mLastKnownPositionOffset:F

.field mNextText:Landroid/widget/TextView;

.field private mNonPrimaryAlpha:I

.field private final mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

.field mPager:Landroid/support/v4/view/ViewPager;

.field mPrevText:Landroid/widget/TextView;

.field private mScaledTextSpacing:I

.field mTextColor:I

.field private mUpdatingPositions:Z

.field private mUpdatingText:Z

.field private mWatchingAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/view/PagerAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/support/v4/view/PagerTitleStrip;)F
    .locals 1

    #@0
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 68
    const v0, 0x1010034

    #@3
    .line 69
    const v1, 0x1010095

    #@6
    .line 70
    const v2, 0x1010098

    #@9
    .line 71
    const v3, 0x10100af

    #@c
    .line 67
    filled-new-array {v0, v1, v2, v3}, [I

    #@f
    move-result-object v0

    #@10
    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->ATTRS:[I

    #@12
    .line 74
    const/4 v0, 0x1

    #@13
    new-array v0, v0, [I

    #@15
    .line 75
    const v1, 0x101038c

    #@18
    const/4 v2, 0x0

    #@19
    aput v1, v0, v2

    #@1b
    .line 74
    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->TEXT_ATTRS:[I

    #@1d
    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@1f
    const/16 v1, 0xe

    #@21
    if-lt v0, v1, :cond_0

    #@23
    .line 103
    new-instance v0, Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplIcs;

    #@25
    invoke-direct {v0}, Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplIcs;-><init>()V

    #@28
    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->IMPL:Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;

    #@2a
    .line 47
    :goto_0
    return-void

    #@2b
    .line 105
    :cond_0
    new-instance v0, Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplBase;

    #@2d
    invoke-direct {v0}, Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplBase;-><init>()V

    #@30
    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->IMPL:Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;

    #@32
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 114
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/support/v4/view/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v10, 0x2

    #@1
    const/4 v9, 0x0

    #@2
    .line 118
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    .line 55
    const/4 v7, -0x1

    #@6
    iput v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    #@8
    .line 56
    const/high16 v7, -0x40800000    # -1.0f

    #@a
    iput v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    #@c
    .line 63
    new-instance v7, Landroid/support/v4/view/PagerTitleStrip$PageListener;

    #@e
    const/4 v8, 0x0

    #@f
    invoke-direct {v7, p0, v8}, Landroid/support/v4/view/PagerTitleStrip$PageListener;-><init>(Landroid/support/v4/view/PagerTitleStrip;Landroid/support/v4/view/PagerTitleStrip$PageListener;)V

    #@12
    iput-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    #@14
    .line 120
    new-instance v7, Landroid/widget/TextView;

    #@16
    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@19
    iput-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@1b
    invoke-virtual {p0, v7}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    #@1e
    .line 121
    new-instance v7, Landroid/widget/TextView;

    #@20
    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@23
    iput-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@25
    invoke-virtual {p0, v7}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    #@28
    .line 122
    new-instance v7, Landroid/widget/TextView;

    #@2a
    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@2d
    iput-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@2f
    invoke-virtual {p0, v7}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    #@32
    .line 124
    sget-object v7, Landroid/support/v4/view/PagerTitleStrip;->ATTRS:[I

    #@34
    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@37
    move-result-object v0

    #@38
    .line 125
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@3b
    move-result v4

    #@3c
    .line 126
    .local v4, "textAppearance":I
    if-eqz v4, :cond_0

    #@3e
    .line 127
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@40
    invoke-virtual {v7, p1, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    #@43
    .line 128
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@45
    invoke-virtual {v7, p1, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    #@48
    .line 129
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@4a
    invoke-virtual {v7, p1, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    #@4d
    .line 131
    :cond_0
    const/4 v7, 0x1

    #@4e
    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@51
    move-result v6

    #@52
    .line 132
    .local v6, "textSize":I
    if-eqz v6, :cond_1

    #@54
    .line 133
    int-to-float v7, v6

    #@55
    invoke-virtual {p0, v9, v7}, Landroid/support/v4/view/PagerTitleStrip;->setTextSize(IF)V

    #@58
    .line 135
    :cond_1
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@5b
    move-result v7

    #@5c
    if-eqz v7, :cond_2

    #@5e
    .line 136
    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    #@61
    move-result v5

    #@62
    .line 137
    .local v5, "textColor":I
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@64
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    #@67
    .line 138
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@69
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    #@6c
    .line 139
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@6e
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    #@71
    .line 141
    .end local v5    # "textColor":I
    :cond_2
    const/4 v7, 0x3

    #@72
    const/16 v8, 0x50

    #@74
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@77
    move-result v7

    #@78
    iput v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mGravity:I

    #@7a
    .line 142
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@7d
    .line 144
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@7f
    invoke-virtual {v7}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    #@82
    move-result-object v7

    #@83
    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@86
    move-result v7

    #@87
    iput v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    #@89
    .line 145
    const v7, 0x3f19999a    # 0.6f

    #@8c
    invoke-virtual {p0, v7}, Landroid/support/v4/view/PagerTitleStrip;->setNonPrimaryAlpha(F)V

    #@8f
    .line 147
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@91
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@93
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@96
    .line 148
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@98
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@9a
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@9d
    .line 149
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@9f
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@a1
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@a4
    .line 151
    const/4 v1, 0x0

    #@a5
    .line 152
    .local v1, "allCaps":Z
    if-eqz v4, :cond_3

    #@a7
    .line 153
    sget-object v7, Landroid/support/v4/view/PagerTitleStrip;->TEXT_ATTRS:[I

    #@a9
    invoke-virtual {p1, v4, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    #@ac
    move-result-object v3

    #@ad
    .line 154
    .local v3, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v9, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@b0
    move-result v1

    #@b1
    .line 155
    .local v1, "allCaps":Z
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    #@b4
    .line 158
    .end local v1    # "allCaps":Z
    .end local v3    # "ta":Landroid/content/res/TypedArray;
    :cond_3
    if-eqz v1, :cond_4

    #@b6
    .line 159
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@b8
    invoke-static {v7}, Landroid/support/v4/view/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    #@bb
    .line 160
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@bd
    invoke-static {v7}, Landroid/support/v4/view/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    #@c0
    .line 161
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@c2
    invoke-static {v7}, Landroid/support/v4/view/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    #@c5
    .line 168
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@c8
    move-result-object v7

    #@c9
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@cc
    move-result-object v7

    #@cd
    iget v2, v7, Landroid/util/DisplayMetrics;->density:F

    #@cf
    .line 169
    .local v2, "density":F
    const/high16 v7, 0x41800000    # 16.0f

    #@d1
    mul-float/2addr v7, v2

    #@d2
    float-to-int v7, v7

    #@d3
    iput v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    #@d5
    .line 117
    return-void

    #@d6
    .line 163
    .end local v2    # "density":F
    :cond_4
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@d8
    invoke-virtual {v7}, Landroid/widget/TextView;->setSingleLine()V

    #@db
    .line 164
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@dd
    invoke-virtual {v7}, Landroid/widget/TextView;->setSingleLine()V

    #@e0
    .line 165
    iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@e2
    invoke-virtual {v7}, Landroid/widget/TextView;->setSingleLine()V

    #@e5
    goto :goto_0
.end method

.method private static setSingleLineAllCaps(Landroid/widget/TextView;)V
    .locals 1
    .param p0, "text"    # Landroid/widget/TextView;

    #@0
    .prologue
    .line 110
    sget-object v0, Landroid/support/v4/view/PagerTitleStrip;->IMPL:Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;

    #@2
    invoke-interface {v0, p0}, Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    #@5
    .line 109
    return-void
.end method


# virtual methods
.method getMinHeight()I
    .locals 2

    #@0
    .prologue
    .line 466
    const/4 v1, 0x0

    #@1
    .line 467
    .local v1, "minHeight":I
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    #@4
    move-result-object v0

    #@5
    .line 468
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@7
    .line 469
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@a
    move-result v1

    #@b
    .line 471
    :cond_0
    return v1
.end method

.method public getTextSpacing()I
    .locals 1

    #@0
    .prologue
    .line 186
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    #@2
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 244
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    #@4
    .line 246
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getParent()Landroid/view/ViewParent;

    #@7
    move-result-object v2

    #@8
    .line 247
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v4, v2, Landroid/support/v4/view/ViewPager;

    #@a
    if-nez v4, :cond_0

    #@c
    .line 248
    new-instance v3, Ljava/lang/IllegalStateException;

    #@e
    .line 249
    const-string/jumbo v4, "PagerTitleStrip must be a direct child of a ViewPager."

    #@11
    .line 248
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v3

    #@15
    :cond_0
    move-object v1, v2

    #@16
    .line 252
    check-cast v1, Landroid/support/v4/view/ViewPager;

    #@18
    .line 253
    .local v1, "pager":Landroid/support/v4/view/ViewPager;
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    #@1b
    move-result-object v0

    #@1c
    .line 255
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    #@1e
    invoke-virtual {v1, v4}, Landroid/support/v4/view/ViewPager;->setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@21
    .line 256
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    #@23
    invoke-virtual {v1, v4}, Landroid/support/v4/view/ViewPager;->setOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    #@26
    .line 257
    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    #@28
    .line 258
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    #@2a
    if-eqz v4, :cond_1

    #@2c
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    #@2e
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@31
    move-result-object v3

    #@32
    check-cast v3, Landroid/support/v4/view/PagerAdapter;

    #@34
    :cond_1
    invoke-virtual {p0, v3, v0}, Landroid/support/v4/view/PagerTitleStrip;->updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    #@37
    .line 243
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 263
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    #@4
    .line 264
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 265
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    #@a
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/PagerTitleStrip;->updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    #@11
    .line 266
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    #@13
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    #@16
    .line 267
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    #@18
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    #@1b
    .line 268
    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    #@1d
    .line 262
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    .line 459
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 460
    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    #@6
    const/4 v2, 0x0

    #@7
    cmpl-float v1, v1, v2

    #@9
    if-ltz v1, :cond_1

    #@b
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    #@d
    .line 461
    .local v0, "offset":F
    :goto_0
    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    #@f
    const/4 v2, 0x1

    #@10
    invoke-virtual {p0, v1, v0, v2}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    #@13
    .line 458
    .end local v0    # "offset":F
    :cond_0
    return-void

    #@14
    .line 460
    :cond_1
    const/4 v0, 0x0

    #@15
    .restart local v0    # "offset":F
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 425
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@3
    move-result v10

    #@4
    .line 426
    .local v10, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@7
    move-result v3

    #@8
    .line 427
    .local v3, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@b
    move-result v11

    #@c
    .line 428
    .local v11, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@f
    move-result v4

    #@10
    .line 430
    .local v4, "heightSize":I
    const/high16 v12, 0x40000000    # 2.0f

    #@12
    if-eq v10, v12, :cond_0

    #@14
    .line 431
    new-instance v12, Ljava/lang/IllegalStateException;

    #@16
    const-string/jumbo v13, "Must measure with an exact width"

    #@19
    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v12

    #@1d
    .line 434
    :cond_0
    move v0, v4

    #@1e
    .line 435
    .local v0, "childHeight":I
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getMinHeight()I

    #@21
    move-result v7

    #@22
    .line 436
    .local v7, "minHeight":I
    const/4 v8, 0x0

    #@23
    .line 437
    .local v8, "padding":I
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    #@26
    move-result v12

    #@27
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    #@2a
    move-result v13

    #@2b
    add-int v8, v12, v13

    #@2d
    .line 438
    sub-int/2addr v0, v8

    #@2e
    .line 440
    int-to-float v12, v11

    #@2f
    const v13, 0x3f4ccccd    # 0.8f

    #@32
    mul-float/2addr v12, v13

    #@33
    float-to-int v12, v12

    #@34
    const/4 v13, 0x0

    #@35
    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    #@38
    move-result v6

    #@39
    .line 441
    .local v6, "maxWidth":I
    const/high16 v12, -0x80000000

    #@3b
    invoke-static {v6, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@3e
    move-result v2

    #@3f
    .line 442
    .local v2, "childWidthSpec":I
    const/4 v12, 0x0

    #@40
    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    #@43
    move-result v5

    #@44
    .line 443
    .local v5, "maxHeight":I
    const/high16 v12, -0x80000000

    #@46
    invoke-static {v5, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@49
    move-result v1

    #@4a
    .line 445
    .local v1, "childHeightSpec":I
    iget-object v12, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@4c
    invoke-virtual {v12, v2, v1}, Landroid/widget/TextView;->measure(II)V

    #@4f
    .line 446
    iget-object v12, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@51
    invoke-virtual {v12, v2, v1}, Landroid/widget/TextView;->measure(II)V

    #@54
    .line 447
    iget-object v12, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@56
    invoke-virtual {v12, v2, v1}, Landroid/widget/TextView;->measure(II)V

    #@59
    .line 449
    const/high16 v12, 0x40000000    # 2.0f

    #@5b
    if-ne v3, v12, :cond_1

    #@5d
    .line 450
    invoke-virtual {p0, v11, v4}, Landroid/support/v4/view/PagerTitleStrip;->setMeasuredDimension(II)V

    #@60
    .line 424
    :goto_0
    return-void

    #@61
    .line 452
    :cond_1
    iget-object v12, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@63
    invoke-virtual {v12}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@66
    move-result v9

    #@67
    .line 453
    .local v9, "textHeight":I
    add-int v12, v9, v8

    #@69
    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    #@6c
    move-result v12

    #@6d
    invoke-virtual {p0, v11, v12}, Landroid/support/v4/view/PagerTitleStrip;->setMeasuredDimension(II)V

    #@70
    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    #@0
    .prologue
    .line 313
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 314
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    #@7
    .line 312
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    #@0
    .prologue
    .line 238
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mGravity:I

    #@2
    .line 239
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    #@5
    .line 237
    return-void
.end method

.method public setNonPrimaryAlpha(F)V
    .locals 4
    .param p1, "alpha"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    #@0
    .prologue
    .line 195
    const/high16 v1, 0x437f0000    # 255.0f

    #@2
    mul-float/2addr v1, p1

    #@3
    float-to-int v1, v1

    #@4
    and-int/lit16 v1, v1, 0xff

    #@6
    iput v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNonPrimaryAlpha:I

    #@8
    .line 196
    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNonPrimaryAlpha:I

    #@a
    shl-int/lit8 v1, v1, 0x18

    #@c
    iget v2, p0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    #@e
    const v3, 0xffffff

    #@11
    and-int/2addr v2, v3

    #@12
    or-int v0, v1, v2

    #@14
    .line 197
    .local v0, "transparentColor":I
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@16
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    #@19
    .line 198
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@1b
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    #@1e
    .line 194
    return-void
.end method

.method public setTextColor(I)V
    .locals 4
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    #@0
    .prologue
    .line 208
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    #@2
    .line 209
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@4
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    #@7
    .line 210
    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNonPrimaryAlpha:I

    #@9
    shl-int/lit8 v1, v1, 0x18

    #@b
    iget v2, p0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    #@d
    const v3, 0xffffff

    #@10
    and-int/2addr v2, v3

    #@11
    or-int v0, v1, v2

    #@13
    .line 211
    .local v0, "transparentColor":I
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@15
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    #@18
    .line 212
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@1a
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    #@1d
    .line 207
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1
    .param p1, "unit"    # I
    .param p2, "size"    # F

    #@0
    .prologue
    .line 226
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    #@5
    .line 227
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@7
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    #@a
    .line 228
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@c
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    #@f
    .line 225
    return-void
.end method

.method public setTextSpacing(I)V
    .locals 0
    .param p1, "spacingPixels"    # I

    #@0
    .prologue
    .line 178
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    #@2
    .line 179
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    #@5
    .line 177
    return-void
.end method

.method updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
    .locals 2
    .param p1, "oldAdapter"    # Landroid/support/v4/view/PagerAdapter;
    .param p2, "newAdapter"    # Landroid/support/v4/view/PagerAdapter;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 319
    if-eqz p1, :cond_0

    #@3
    .line 320
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    #@5
    invoke-virtual {p1, v0}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    #@8
    .line 321
    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    #@a
    .line 323
    :cond_0
    if-eqz p2, :cond_1

    #@c
    .line 324
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    #@e
    invoke-virtual {p2, v0}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@11
    .line 325
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@13
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@16
    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    #@18
    .line 327
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    #@1a
    if-eqz v0, :cond_2

    #@1c
    .line 328
    const/4 v0, -0x1

    #@1d
    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    #@1f
    .line 329
    const/high16 v0, -0x40800000    # -1.0f

    #@21
    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    #@23
    .line 330
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    #@25
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    #@28
    move-result v0

    #@29
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/view/PagerTitleStrip;->updateText(ILandroid/support/v4/view/PagerAdapter;)V

    #@2c
    .line 331
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    #@2f
    .line 318
    :cond_2
    return-void
.end method

.method updateText(ILandroid/support/v4/view/PagerAdapter;)V
    .locals 12
    .param p1, "currentItem"    # I
    .param p2, "adapter"    # Landroid/support/v4/view/PagerAdapter;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/high16 v11, -0x80000000

    #@3
    const/4 v10, 0x0

    #@4
    const/4 v8, 0x0

    #@5
    .line 273
    if-eqz p2, :cond_4

    #@7
    invoke-virtual {p2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    #@a
    move-result v3

    #@b
    .line 274
    .local v3, "itemCount":I
    :goto_0
    iput-boolean v9, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    #@d
    .line 276
    const/4 v6, 0x0

    #@e
    .line 277
    .local v6, "text":Ljava/lang/CharSequence;
    if-lt p1, v9, :cond_0

    #@10
    if-eqz p2, :cond_0

    #@12
    .line 278
    add-int/lit8 v9, p1, -0x1

    #@14
    invoke-virtual {p2, v9}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    #@17
    move-result-object v6

    #@18
    .line 280
    .end local v6    # "text":Ljava/lang/CharSequence;
    :cond_0
    iget-object v9, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@1a
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@1d
    .line 282
    iget-object v9, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@1f
    if-eqz p2, :cond_1

    #@21
    if-ge p1, v3, :cond_1

    #@23
    .line 283
    invoke-virtual {p2, p1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    #@26
    move-result-object v8

    #@27
    .line 282
    :cond_1
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@2a
    .line 285
    const/4 v6, 0x0

    #@2b
    .line 286
    .restart local v6    # "text":Ljava/lang/CharSequence;
    add-int/lit8 v8, p1, 0x1

    #@2d
    if-ge v8, v3, :cond_2

    #@2f
    if-eqz p2, :cond_2

    #@31
    .line 287
    add-int/lit8 v8, p1, 0x1

    #@33
    invoke-virtual {p2, v8}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    #@36
    move-result-object v6

    #@37
    .line 289
    .end local v6    # "text":Ljava/lang/CharSequence;
    :cond_2
    iget-object v8, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@39
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@3c
    .line 292
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getWidth()I

    #@3f
    move-result v8

    #@40
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingLeft()I

    #@43
    move-result v9

    #@44
    sub-int/2addr v8, v9

    #@45
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingRight()I

    #@48
    move-result v9

    #@49
    sub-int v7, v8, v9

    #@4b
    .line 293
    .local v7, "width":I
    int-to-float v8, v7

    #@4c
    const v9, 0x3f4ccccd    # 0.8f

    #@4f
    mul-float/2addr v8, v9

    #@50
    float-to-int v8, v8

    #@51
    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    #@54
    move-result v5

    #@55
    .line 294
    .local v5, "maxWidth":I
    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@58
    move-result v2

    #@59
    .line 295
    .local v2, "childWidthSpec":I
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getHeight()I

    #@5c
    move-result v8

    #@5d
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    #@60
    move-result v9

    #@61
    sub-int/2addr v8, v9

    #@62
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    #@65
    move-result v9

    #@66
    sub-int v0, v8, v9

    #@68
    .line 296
    .local v0, "childHeight":I
    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    #@6b
    move-result v4

    #@6c
    .line 297
    .local v4, "maxHeight":I
    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@6f
    move-result v1

    #@70
    .line 298
    .local v1, "childHeightSpec":I
    iget-object v8, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@72
    invoke-virtual {v8, v2, v1}, Landroid/widget/TextView;->measure(II)V

    #@75
    .line 299
    iget-object v8, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@77
    invoke-virtual {v8, v2, v1}, Landroid/widget/TextView;->measure(II)V

    #@7a
    .line 300
    iget-object v8, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@7c
    invoke-virtual {v8, v2, v1}, Landroid/widget/TextView;->measure(II)V

    #@7f
    .line 302
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    #@81
    .line 304
    iget-boolean v8, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    #@83
    if-nez v8, :cond_3

    #@85
    .line 305
    iget v8, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    #@87
    invoke-virtual {p0, p1, v8, v10}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    #@8a
    .line 308
    :cond_3
    iput-boolean v10, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    #@8c
    .line 272
    return-void

    #@8d
    .line 273
    .end local v0    # "childHeight":I
    .end local v1    # "childHeightSpec":I
    .end local v2    # "childWidthSpec":I
    .end local v3    # "itemCount":I
    .end local v4    # "maxHeight":I
    .end local v5    # "maxWidth":I
    .end local v7    # "width":I
    :cond_4
    const/4 v3, 0x0

    #@8e
    .restart local v3    # "itemCount":I
    goto/16 :goto_0
.end method

.method updateTextPositions(IFZ)V
    .locals 45
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "force"    # Z

    #@0
    .prologue
    .line 336
    move-object/from16 v0, p0

    #@2
    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    #@4
    move/from16 v42, v0

    #@6
    move/from16 v0, p1

    #@8
    move/from16 v1, v42

    #@a
    if-eq v0, v1, :cond_2

    #@c
    .line 337
    move-object/from16 v0, p0

    #@e
    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    #@10
    move-object/from16 v42, v0

    #@12
    invoke-virtual/range {v42 .. v42}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    #@15
    move-result-object v42

    #@16
    move-object/from16 v0, p0

    #@18
    move/from16 v1, p1

    #@1a
    move-object/from16 v2, v42

    #@1c
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerTitleStrip;->updateText(ILandroid/support/v4/view/PagerAdapter;)V

    #@1f
    .line 342
    :cond_0
    const/16 v42, 0x1

    #@21
    move/from16 v0, v42

    #@23
    move-object/from16 v1, p0

    #@25
    iput-boolean v0, v1, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    #@27
    .line 344
    move-object/from16 v0, p0

    #@29
    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@2b
    move-object/from16 v42, v0

    #@2d
    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@30
    move-result v36

    #@31
    .line 345
    .local v36, "prevWidth":I
    move-object/from16 v0, p0

    #@33
    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@35
    move-object/from16 v42, v0

    #@37
    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@3a
    move-result v18

    #@3b
    .line 346
    .local v18, "currWidth":I
    move-object/from16 v0, p0

    #@3d
    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@3f
    move-object/from16 v42, v0

    #@41
    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@44
    move-result v26

    #@45
    .line 347
    .local v26, "nextWidth":I
    div-int/lit8 v19, v18, 0x2

    #@47
    .line 349
    .local v19, "halfCurrWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getWidth()I

    #@4a
    move-result v38

    #@4b
    .line 350
    .local v38, "stripWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getHeight()I

    #@4e
    move-result v37

    #@4f
    .line 351
    .local v37, "stripHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingLeft()I

    #@52
    move-result v29

    #@53
    .line 352
    .local v29, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingRight()I

    #@56
    move-result v30

    #@57
    .line 353
    .local v30, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    #@5a
    move-result v31

    #@5b
    .line 354
    .local v31, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    #@5e
    move-result v28

    #@5f
    .line 355
    .local v28, "paddingBottom":I
    add-int v39, v29, v19

    #@61
    .line 356
    .local v39, "textPaddedLeft":I
    add-int v40, v30, v19

    #@63
    .line 357
    .local v40, "textPaddedRight":I
    sub-int v42, v38, v39

    #@65
    sub-int v10, v42, v40

    #@67
    .line 359
    .local v10, "contentWidth":I
    const/high16 v42, 0x3f000000    # 0.5f

    #@69
    add-float v14, p2, v42

    #@6b
    .line 360
    .local v14, "currOffset":F
    const/high16 v42, 0x3f800000    # 1.0f

    #@6d
    cmpl-float v42, v14, v42

    #@6f
    if-lez v42, :cond_1

    #@71
    .line 361
    const/high16 v42, 0x3f800000    # 1.0f

    #@73
    sub-float v14, v14, v42

    #@75
    .line 363
    :cond_1
    sub-int v42, v38, v40

    #@77
    int-to-float v0, v10

    #@78
    move/from16 v43, v0

    #@7a
    mul-float v43, v43, v14

    #@7c
    move/from16 v0, v43

    #@7e
    float-to-int v0, v0

    #@7f
    move/from16 v43, v0

    #@81
    sub-int v12, v42, v43

    #@83
    .line 364
    .local v12, "currCenter":I
    div-int/lit8 v42, v18, 0x2

    #@85
    sub-int v13, v12, v42

    #@87
    .line 365
    .local v13, "currLeft":I
    add-int v15, v13, v18

    #@89
    .line 367
    .local v15, "currRight":I
    move-object/from16 v0, p0

    #@8b
    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@8d
    move-object/from16 v42, v0

    #@8f
    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getBaseline()I

    #@92
    move-result v32

    #@93
    .line 368
    .local v32, "prevBaseline":I
    move-object/from16 v0, p0

    #@95
    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@97
    move-object/from16 v42, v0

    #@99
    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getBaseline()I

    #@9c
    move-result v11

    #@9d
    .line 369
    .local v11, "currBaseline":I
    move-object/from16 v0, p0

    #@9f
    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@a1
    move-object/from16 v42, v0

    #@a3
    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getBaseline()I

    #@a6
    move-result v22

    #@a7
    .line 370
    .local v22, "nextBaseline":I
    move/from16 v0, v32

    #@a9
    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    #@ac
    move-result v42

    #@ad
    move/from16 v0, v42

    #@af
    move/from16 v1, v22

    #@b1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@b4
    move-result v20

    #@b5
    .line 371
    .local v20, "maxBaseline":I
    sub-int v35, v20, v32

    #@b7
    .line 372
    .local v35, "prevTopOffset":I
    sub-int v17, v20, v11

    #@b9
    .line 373
    .local v17, "currTopOffset":I
    sub-int v25, v20, v22

    #@bb
    .line 374
    .local v25, "nextTopOffset":I
    move-object/from16 v0, p0

    #@bd
    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@bf
    move-object/from16 v42, v0

    #@c1
    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@c4
    move-result v42

    #@c5
    add-int v7, v35, v42

    #@c7
    .line 375
    .local v7, "alignedPrevHeight":I
    move-object/from16 v0, p0

    #@c9
    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@cb
    move-object/from16 v42, v0

    #@cd
    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@d0
    move-result v42

    #@d1
    add-int v5, v17, v42

    #@d3
    .line 376
    .local v5, "alignedCurrHeight":I
    move-object/from16 v0, p0

    #@d5
    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@d7
    move-object/from16 v42, v0

    #@d9
    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@dc
    move-result v42

    #@dd
    add-int v6, v25, v42

    #@df
    .line 377
    .local v6, "alignedNextHeight":I
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    #@e2
    move-result v42

    #@e3
    move/from16 v0, v42

    #@e5
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    #@e8
    move-result v21

    #@e9
    .line 380
    .local v21, "maxTextHeight":I
    move-object/from16 v0, p0

    #@eb
    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mGravity:I

    #@ed
    move/from16 v42, v0

    #@ef
    and-int/lit8 v41, v42, 0x70

    #@f1
    .line 385
    .local v41, "vgrav":I
    sparse-switch v41, :sswitch_data_0

    #@f4
    .line 388
    :sswitch_0
    add-int v34, v31, v35

    #@f6
    .line 389
    .local v34, "prevTop":I
    add-int v16, v31, v17

    #@f8
    .line 390
    .local v16, "currTop":I
    add-int v24, v31, v25

    #@fa
    .line 407
    .local v24, "nextTop":I
    :goto_0
    move-object/from16 v0, p0

    #@fc
    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@fe
    move-object/from16 v42, v0

    #@100
    .line 408
    move-object/from16 v0, p0

    #@102
    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    #@104
    move-object/from16 v43, v0

    #@106
    invoke-virtual/range {v43 .. v43}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@109
    move-result v43

    #@10a
    add-int v43, v43, v16

    #@10c
    .line 407
    move-object/from16 v0, v42

    #@10e
    move/from16 v1, v16

    #@110
    move/from16 v2, v43

    #@112
    invoke-virtual {v0, v13, v1, v15, v2}, Landroid/widget/TextView;->layout(IIII)V

    #@115
    .line 410
    move-object/from16 v0, p0

    #@117
    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    #@119
    move/from16 v42, v0

    #@11b
    sub-int v42, v13, v42

    #@11d
    sub-int v42, v42, v36

    #@11f
    move/from16 v0, v29

    #@121
    move/from16 v1, v42

    #@123
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@126
    move-result v33

    #@127
    .line 411
    .local v33, "prevLeft":I
    move-object/from16 v0, p0

    #@129
    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@12b
    move-object/from16 v42, v0

    #@12d
    add-int v43, v33, v36

    #@12f
    .line 412
    move-object/from16 v0, p0

    #@131
    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    #@133
    move-object/from16 v44, v0

    #@135
    invoke-virtual/range {v44 .. v44}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@138
    move-result v44

    #@139
    add-int v44, v44, v34

    #@13b
    .line 411
    move-object/from16 v0, v42

    #@13d
    move/from16 v1, v33

    #@13f
    move/from16 v2, v34

    #@141
    move/from16 v3, v43

    #@143
    move/from16 v4, v44

    #@145
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    #@148
    .line 414
    sub-int v42, v38, v30

    #@14a
    sub-int v42, v42, v26

    #@14c
    .line 415
    move-object/from16 v0, p0

    #@14e
    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    #@150
    move/from16 v43, v0

    #@152
    add-int v43, v43, v15

    #@154
    .line 414
    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->max(II)I

    #@157
    move-result v23

    #@158
    .line 416
    .local v23, "nextLeft":I
    move-object/from16 v0, p0

    #@15a
    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@15c
    move-object/from16 v42, v0

    #@15e
    add-int v43, v23, v26

    #@160
    .line 417
    move-object/from16 v0, p0

    #@162
    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    #@164
    move-object/from16 v44, v0

    #@166
    invoke-virtual/range {v44 .. v44}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@169
    move-result v44

    #@16a
    add-int v44, v44, v24

    #@16c
    .line 416
    move-object/from16 v0, v42

    #@16e
    move/from16 v1, v23

    #@170
    move/from16 v2, v24

    #@172
    move/from16 v3, v43

    #@174
    move/from16 v4, v44

    #@176
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    #@179
    .line 419
    move/from16 v0, p2

    #@17b
    move-object/from16 v1, p0

    #@17d
    iput v0, v1, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    #@17f
    .line 420
    const/16 v42, 0x0

    #@181
    move/from16 v0, v42

    #@183
    move-object/from16 v1, p0

    #@185
    iput-boolean v0, v1, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    #@187
    .line 335
    return-void

    #@188
    .line 338
    .end local v5    # "alignedCurrHeight":I
    .end local v6    # "alignedNextHeight":I
    .end local v7    # "alignedPrevHeight":I
    .end local v10    # "contentWidth":I
    .end local v11    # "currBaseline":I
    .end local v12    # "currCenter":I
    .end local v13    # "currLeft":I
    .end local v14    # "currOffset":F
    .end local v15    # "currRight":I
    .end local v16    # "currTop":I
    .end local v17    # "currTopOffset":I
    .end local v18    # "currWidth":I
    .end local v19    # "halfCurrWidth":I
    .end local v20    # "maxBaseline":I
    .end local v21    # "maxTextHeight":I
    .end local v22    # "nextBaseline":I
    .end local v23    # "nextLeft":I
    .end local v24    # "nextTop":I
    .end local v25    # "nextTopOffset":I
    .end local v26    # "nextWidth":I
    .end local v28    # "paddingBottom":I
    .end local v29    # "paddingLeft":I
    .end local v30    # "paddingRight":I
    .end local v31    # "paddingTop":I
    .end local v32    # "prevBaseline":I
    .end local v33    # "prevLeft":I
    .end local v34    # "prevTop":I
    .end local v35    # "prevTopOffset":I
    .end local v36    # "prevWidth":I
    .end local v37    # "stripHeight":I
    .end local v38    # "stripWidth":I
    .end local v39    # "textPaddedLeft":I
    .end local v40    # "textPaddedRight":I
    .end local v41    # "vgrav":I
    :cond_2
    if-nez p3, :cond_0

    #@18a
    move-object/from16 v0, p0

    #@18c
    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    #@18e
    move/from16 v42, v0

    #@190
    cmpl-float v42, p2, v42

    #@192
    if-nez v42, :cond_0

    #@194
    .line 339
    return-void

    #@195
    .line 393
    .restart local v5    # "alignedCurrHeight":I
    .restart local v6    # "alignedNextHeight":I
    .restart local v7    # "alignedPrevHeight":I
    .restart local v10    # "contentWidth":I
    .restart local v11    # "currBaseline":I
    .restart local v12    # "currCenter":I
    .restart local v13    # "currLeft":I
    .restart local v14    # "currOffset":F
    .restart local v15    # "currRight":I
    .restart local v17    # "currTopOffset":I
    .restart local v18    # "currWidth":I
    .restart local v19    # "halfCurrWidth":I
    .restart local v20    # "maxBaseline":I
    .restart local v21    # "maxTextHeight":I
    .restart local v22    # "nextBaseline":I
    .restart local v25    # "nextTopOffset":I
    .restart local v26    # "nextWidth":I
    .restart local v28    # "paddingBottom":I
    .restart local v29    # "paddingLeft":I
    .restart local v30    # "paddingRight":I
    .restart local v31    # "paddingTop":I
    .restart local v32    # "prevBaseline":I
    .restart local v35    # "prevTopOffset":I
    .restart local v36    # "prevWidth":I
    .restart local v37    # "stripHeight":I
    .restart local v38    # "stripWidth":I
    .restart local v39    # "textPaddedLeft":I
    .restart local v40    # "textPaddedRight":I
    .restart local v41    # "vgrav":I
    :sswitch_1
    sub-int v42, v37, v31

    #@197
    sub-int v27, v42, v28

    #@199
    .line 394
    .local v27, "paddedHeight":I
    sub-int v42, v27, v21

    #@19b
    div-int/lit8 v9, v42, 0x2

    #@19d
    .line 395
    .local v9, "centeredTop":I
    add-int v34, v9, v35

    #@19f
    .line 396
    .restart local v34    # "prevTop":I
    add-int v16, v9, v17

    #@1a1
    .line 397
    .restart local v16    # "currTop":I
    add-int v24, v9, v25

    #@1a3
    .line 398
    .restart local v24    # "nextTop":I
    goto/16 :goto_0

    #@1a5
    .line 400
    .end local v9    # "centeredTop":I
    .end local v16    # "currTop":I
    .end local v24    # "nextTop":I
    .end local v27    # "paddedHeight":I
    .end local v34    # "prevTop":I
    :sswitch_2
    sub-int v42, v37, v28

    #@1a7
    sub-int v8, v42, v21

    #@1a9
    .line 401
    .local v8, "bottomGravTop":I
    add-int v34, v8, v35

    #@1ab
    .line 402
    .restart local v34    # "prevTop":I
    add-int v16, v8, v17

    #@1ad
    .line 403
    .restart local v16    # "currTop":I
    add-int v24, v8, v25

    #@1af
    .line 404
    .restart local v24    # "nextTop":I
    goto/16 :goto_0

    #@1b1
    .line 385
    nop

    #@1b2
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method
