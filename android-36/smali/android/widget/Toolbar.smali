.class public Landroid/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;,
        Landroid/widget/Toolbar$LayoutParams;,
        Landroid/widget/Toolbar$OnMenuItemClickListener;,
        Landroid/widget/Toolbar$SavedState;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "Toolbar"


# instance fields
.field private greylist-max-o mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private greylist-max-o mButtonGravity:I

.field private greylist-max-o mCollapseButtonView:Landroid/widget/ImageButton;

.field private greylist-max-o mCollapseDescription:Ljava/lang/CharSequence;

.field private greylist-max-o mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mCollapsible:Z

.field private greylist-max-o mContentInsetEndWithActions:I

.field private greylist-max-o mContentInsetStartWithNavigation:I

.field private greylist-max-o mContentInsets:Landroid/widget/RtlSpacingHelper;

.field private greylist-max-o mEatingTouch:Z

.field greylist-max-o mExpandedActionView:Landroid/view/View;

.field private greylist-max-o mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

.field private greylist-max-o mGravity:I

.field private final greylist-max-o mHiddenViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mLogoView:Landroid/widget/ImageView;

.field private greylist-max-o mMaxButtonHeight:I

.field private greylist-max-o mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

.field private greylist-max-o mMenuView:Landroid/widget/ActionMenuView;

.field private final greylist-max-o mMenuViewItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

.field private greylist-max-o mNavButtonStyle:I

.field private greylist-max-p mNavButtonView:Landroid/widget/ImageButton;

.field private greylist-max-o mOnMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

.field private greylist-max-o mOuterActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

.field private greylist-max-o mPopupContext:Landroid/content/Context;

.field private greylist-max-o mPopupTheme:I

.field private final greylist-max-o mShowOverflowMenuRunnable:Ljava/lang/Runnable;

.field private greylist-max-o mSubtitleText:Ljava/lang/CharSequence;

.field private greylist-max-o mSubtitleTextAppearance:I

.field private greylist-max-o mSubtitleTextColor:I

.field private greylist-max-o mSubtitleTextView:Landroid/widget/TextView;

.field private final greylist-max-o mTempMargins:[I

.field private final greylist-max-o mTempViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mTitleMarginBottom:I

.field private greylist mTitleMarginEnd:I

.field private greylist mTitleMarginStart:I

.field private greylist mTitleMarginTop:I

.field private greylist-max-o mTitleText:Ljava/lang/CharSequence;

.field private greylist-max-o mTitleTextAppearance:I

.field private greylist-max-o mTitleTextColor:I

.field private greylist mTitleTextView:Landroid/widget/TextView;

.field private greylist-max-o mWrapper:Lcom/android/internal/widget/ToolbarWidgetWrapper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmButtonGravity(Landroid/widget/Toolbar;)I
    .registers 1

    iget p0, p0, Landroid/widget/Toolbar;->mButtonGravity:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCollapseButtonView(Landroid/widget/Toolbar;)Landroid/widget/ImageButton;
    .registers 1

    iget-object p0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnMenuItemClickListener(Landroid/widget/Toolbar;)Landroid/widget/Toolbar$OnMenuItemClickListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/Toolbar;->mOnMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mensureCollapseButtonView(Landroid/widget/Toolbar;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureCollapseButtonView()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 225
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 228
    const v0, 0x10104aa

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 229
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 233
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 236
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 178
    const v1, 0x800013

    iput v1, v0, Landroid/widget/Toolbar;->mGravity:I

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    .line 194
    const/4 v7, 0x2

    new-array v1, v7, [I

    iput-object v1, v0, Landroid/widget/Toolbar;->mTempMargins:[I

    .line 198
    new-instance v1, Landroid/widget/Toolbar$1;

    invoke-direct {v1, v0}, Landroid/widget/Toolbar$1;-><init>(Landroid/widget/Toolbar;)V

    iput-object v1, v0, Landroid/widget/Toolbar;->mMenuViewItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    .line 217
    new-instance v1, Landroid/widget/Toolbar$2;

    invoke-direct {v1, v0}, Landroid/widget/Toolbar$2;-><init>(Landroid/widget/Toolbar;)V

    iput-object v1, v0, Landroid/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    .line 238
    sget-object v1, Lcom/android/internal/R$styleable;->Toolbar:[I

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual {v2, v3, v1, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 240
    .local v4, "a":Landroid/content/res/TypedArray;
    sget-object v2, Lcom/android/internal/R$styleable;->Toolbar:[I

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/widget/Toolbar;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 243
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, v0, Landroid/widget/Toolbar;->mTitleTextAppearance:I

    .line 244
    const/4 v1, 0x5

    invoke-virtual {v4, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, v0, Landroid/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 245
    const/16 v1, 0x1b

    invoke-virtual {v4, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, v0, Landroid/widget/Toolbar;->mNavButtonStyle:I

    .line 246
    iget v1, v0, Landroid/widget/Toolbar;->mGravity:I

    invoke-virtual {v4, v2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, v0, Landroid/widget/Toolbar;->mGravity:I

    .line 247
    const/16 v1, 0x17

    const/16 v3, 0x30

    invoke-virtual {v4, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, v0, Landroid/widget/Toolbar;->mButtonGravity:I

    .line 248
    nop

    .line 249
    const/16 v1, 0x11

    invoke-virtual {v4, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, v0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    iput v1, v0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    iput v1, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    iput v1, v0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    .line 251
    const/16 v1, 0x12

    const/4 v3, -0x1

    invoke-virtual {v4, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 252
    .local v1, "marginStart":I
    if-ltz v1, :cond_83

    .line 253
    iput v1, v0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    .line 256
    :cond_83
    const/16 v5, 0x13

    invoke-virtual {v4, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 257
    .local v5, "marginEnd":I
    if-ltz v5, :cond_8d

    .line 258
    iput v5, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    .line 261
    :cond_8d
    const/16 v6, 0x14

    invoke-virtual {v4, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    .line 262
    .local v6, "marginTop":I
    if-ltz v6, :cond_97

    .line 263
    iput v6, v0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    .line 266
    :cond_97
    const/16 v8, 0x15

    invoke-virtual {v4, v8, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    .line 268
    .local v8, "marginBottom":I
    if-ltz v8, :cond_a1

    .line 269
    iput v8, v0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    .line 272
    :cond_a1
    const/16 v9, 0x16

    invoke-virtual {v4, v9, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    iput v9, v0, Landroid/widget/Toolbar;->mMaxButtonHeight:I

    .line 274
    nop

    .line 275
    const/4 v9, 0x6

    const/high16 v10, -0x80000000

    invoke-virtual {v4, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v9

    .line 277
    .local v9, "contentInsetStart":I
    nop

    .line 278
    const/4 v11, 0x7

    invoke-virtual {v4, v11, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v11

    .line 280
    .local v11, "contentInsetEnd":I
    nop

    .line 281
    const/16 v12, 0x8

    invoke-virtual {v4, v12, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    .line 282
    .local v12, "contentInsetLeft":I
    nop

    .line 283
    const/16 v13, 0x9

    invoke-virtual {v4, v13, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    .line 285
    .local v13, "contentInsetRight":I
    invoke-direct {v0}, Landroid/widget/Toolbar;->ensureContentInsets()V

    .line 286
    iget-object v14, v0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v14, v12, v13}, Landroid/widget/RtlSpacingHelper;->setAbsolute(II)V

    .line 288
    if-ne v9, v10, :cond_d1

    if-eq v11, v10, :cond_d6

    .line 290
    :cond_d1
    iget-object v14, v0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v14, v9, v11}, Landroid/widget/RtlSpacingHelper;->setRelative(II)V

    .line 293
    :cond_d6
    const/16 v14, 0x19

    invoke-virtual {v4, v14, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v14

    iput v14, v0, Landroid/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 295
    const/16 v14, 0x1a

    invoke-virtual {v4, v14, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v10

    iput v10, v0, Landroid/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 298
    const/16 v10, 0x18

    invoke-virtual {v4, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, v0, Landroid/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    .line 299
    const/16 v10, 0xd

    invoke-virtual {v4, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    iput-object v10, v0, Landroid/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    .line 301
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 302
    .local v10, "title":Ljava/lang/CharSequence;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_104

    .line 303
    invoke-virtual {v0, v10}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 306
    :cond_104
    const/4 v14, 0x3

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 307
    .local v14, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_112

    .line 308
    invoke-virtual {v0, v14}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 312
    :cond_112
    iget-object v15, v0, Landroid/widget/Toolbar;->mContext:Landroid/content/Context;

    iput-object v15, v0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 313
    const/16 v15, 0xa

    invoke-virtual {v4, v15, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Toolbar;->setPopupTheme(I)V

    .line 315
    const/16 v2, 0xb

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 316
    .local v2, "navIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_12a

    .line 317
    invoke-virtual {v0, v2}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 320
    :cond_12a
    const/16 v15, 0xc

    invoke-virtual {v4, v15}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 322
    .local v15, "navDesc":Ljava/lang/CharSequence;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_139

    .line 323
    invoke-virtual {v0, v15}, Landroid/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 326
    :cond_139
    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 327
    .local v7, "logo":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_142

    .line 328
    invoke-virtual {v0, v7}, Landroid/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 331
    :cond_142
    const/16 v3, 0x10

    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 332
    .local v3, "logoDesc":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_151

    .line 333
    invoke-virtual {v0, v3}, Landroid/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 336
    :cond_151
    move/from16 v17, v1

    .end local v1    # "marginStart":I
    .local v17, "marginStart":I
    const/16 v1, 0xe

    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v18

    if-eqz v18, :cond_166

    .line 337
    move-object/from16 v18, v2

    const/4 v2, -0x1

    .end local v2    # "navIcon":Landroid/graphics/drawable/Drawable;
    .local v18, "navIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitleTextColor(I)V

    goto :goto_169

    .line 336
    .end local v18    # "navIcon":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "navIcon":Landroid/graphics/drawable/Drawable;
    :cond_166
    move-object/from16 v18, v2

    const/4 v2, -0x1

    .line 340
    .end local v2    # "navIcon":Landroid/graphics/drawable/Drawable;
    .restart local v18    # "navIcon":Landroid/graphics/drawable/Drawable;
    :goto_169
    const/16 v1, 0xf

    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v16

    if-eqz v16, :cond_178

    .line 341
    invoke-virtual {v4, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setSubtitleTextColor(I)V

    .line 343
    :cond_178
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 344
    return-void
.end method

.method private greylist-max-o addCustomViewsWithGravity(Ljava/util/List;I)V
    .registers 10
    .param p2, "gravity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 2135
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    .line 2136
    .local v1, "isRtl":Z
    :goto_9
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getChildCount()I

    move-result v0

    .line 2137
    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getLayoutDirection()I

    move-result v2

    invoke-static {p2, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    .line 2139
    .local v2, "absGrav":I
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2141
    if-eqz v1, :cond_41

    .line 2142
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_1c
    if-ltz v3, :cond_40

    .line 2143
    invoke-virtual {p0, v3}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2144
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/Toolbar$LayoutParams;

    .line 2145
    .local v5, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v6, v5, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v6, :cond_3d

    invoke-direct {p0, v4}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3d

    iget v6, v5, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 2146
    invoke-direct {p0, v6}, Landroid/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v6

    if-ne v6, v2, :cond_3d

    .line 2147
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2142
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_3d
    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    .end local v3    # "i":I
    :cond_40
    goto :goto_66

    .line 2151
    :cond_41
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_42
    if-ge v3, v0, :cond_66

    .line 2152
    invoke-virtual {p0, v3}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2153
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/Toolbar$LayoutParams;

    .line 2154
    .restart local v5    # "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v6, v5, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v6, :cond_63

    invoke-direct {p0, v4}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_63

    iget v6, v5, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 2155
    invoke-direct {p0, v6}, Landroid/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v6

    if-ne v6, v2, :cond_63

    .line 2156
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2151
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 2160
    .end local v3    # "i":I
    :cond_66
    :goto_66
    return-void
.end method

.method private greylist-max-o addSystemView(Landroid/view/View;Z)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "allowHide"    # Z

    .line 1522
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1524
    .local v0, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_b

    .line 1525
    invoke-virtual {p0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    move-result-object v1

    .local v1, "lp":Landroid/widget/Toolbar$LayoutParams;
    goto :goto_19

    .line 1526
    .end local v1    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_b
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 1527
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/Toolbar$LayoutParams;

    move-result-object v1

    .restart local v1    # "lp":Landroid/widget/Toolbar$LayoutParams;
    goto :goto_19

    .line 1529
    .end local v1    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_16
    move-object v1, v0

    check-cast v1, Landroid/widget/Toolbar$LayoutParams;

    .line 1531
    .restart local v1    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :goto_19
    const/4 v2, 0x1

    iput v2, v1, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1533
    if-eqz p2, :cond_2b

    iget-object v2, p0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    if-eqz v2, :cond_2b

    .line 1534
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1535
    iget-object v2, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 1537
    :cond_2b
    invoke-virtual {p0, p1, v1}, Landroid/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1539
    :goto_2e
    return-void
.end method

.method private greylist-max-o ensureCollapseButtonView()V
    .registers 6

    .line 1504
    iget-object v0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_41

    .line 1505
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/Toolbar;->mNavButtonStyle:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1506
    iget-object v0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1507
    iget-object v0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1508
    invoke-virtual {p0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1509
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v1, p0, Landroid/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v1, v1, 0x70

    const v2, 0x800003

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 1510
    const/4 v1, 0x2

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1511
    iget-object v1, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1512
    iget-object v1, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    new-instance v2, Landroid/widget/Toolbar$3;

    invoke-direct {v2, p0}, Landroid/widget/Toolbar$3;-><init>(Landroid/widget/Toolbar;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1519
    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_41
    return-void
.end method

.method private greylist-max-o ensureContentInsets()V
    .registers 2

    .line 2279
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    if-nez v0, :cond_b

    .line 2280
    new-instance v0, Landroid/widget/RtlSpacingHelper;

    invoke-direct {v0}, Landroid/widget/RtlSpacingHelper;-><init>()V

    iput-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    .line 2282
    :cond_b
    return-void
.end method

.method private greylist-max-o ensureLogoView()V
    .registers 3

    .line 706
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-nez v0, :cond_f

    .line 707
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 709
    :cond_f
    return-void
.end method

.method private greylist-max-o ensureMenu()V
    .registers 4

    .line 1161
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenuView()V

    .line 1162
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->peekMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 1164
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    .line 1165
    .local v0, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_1f

    .line 1166
    new-instance v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/widget/Toolbar;Landroid/widget/Toolbar-IA;)V

    iput-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 1168
    :cond_1f
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    .line 1169
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 1171
    .end local v0    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_2c
    return-void
.end method

.method private greylist-max-o ensureMenuView()V
    .registers 4

    .line 1174
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-nez v0, :cond_3f

    .line 1175
    new-instance v0, Landroid/widget/ActionMenuView;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    .line 1176
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    iget v1, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->setPopupTheme(I)V

    .line 1177
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuViewItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->setOnMenuItemClickListener(Landroid/widget/ActionMenuView$OnMenuItemClickListener;)V

    .line 1178
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    iget-object v1, p0, Landroid/widget/Toolbar;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    iget-object v2, p0, Landroid/widget/Toolbar;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ActionMenuView;->setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 1179
    invoke-virtual {p0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1180
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v1, p0, Landroid/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v1, v1, 0x70

    const v2, 0x800005

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 1181
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Landroid/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1182
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    .line 1184
    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_3f
    return-void
.end method

.method private greylist-max-o ensureNavButtonView()V
    .registers 6

    .line 1495
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_26

    .line 1496
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/Toolbar;->mNavButtonStyle:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1497
    invoke-virtual {p0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1498
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v1, p0, Landroid/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v1, v1, 0x70

    const v2, 0x800003

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 1499
    iget-object v1, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1501
    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_26
    return-void
.end method

.method private greylist-max-o getChildHorizontalGravity(I)I
    .registers 6
    .param p1, "gravity"    # I

    .line 2163
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getLayoutDirection()I

    move-result v0

    .line 2164
    .local v0, "ld":I
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    .line 2165
    .local v1, "absGrav":I
    and-int/lit8 v2, v1, 0x7

    .line 2166
    .local v2, "hGrav":I
    packed-switch v2, :pswitch_data_16

    .line 2172
    :pswitch_d
    const/4 v3, 0x1

    if-ne v0, v3, :cond_13

    const/4 v3, 0x5

    goto :goto_14

    .line 2170
    :pswitch_12
    return v2

    .line 2172
    :cond_13
    const/4 v3, 0x3

    :goto_14
    return v3

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_12
        :pswitch_d
        :pswitch_12
        :pswitch_d
        :pswitch_12
    .end packed-switch
.end method

.method private greylist-max-o getChildTop(Landroid/view/View;I)I
    .registers 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "alignmentHeight"    # I

    .line 2084
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar$LayoutParams;

    .line 2085
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 2086
    .local v1, "childHeight":I
    const/4 v2, 0x0

    if-lez p2, :cond_12

    sub-int v3, v1, p2

    div-int/lit8 v3, v3, 0x2

    goto :goto_13

    :cond_12
    move v3, v2

    .line 2087
    .local v3, "alignmentOffset":I
    :goto_13
    iget v4, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v4}, Landroid/widget/Toolbar;->getChildVerticalGravity(I)I

    move-result v4

    sparse-switch v4, :sswitch_data_60

    .line 2097
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result v4

    .line 2098
    .local v4, "paddingTop":I
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingBottom()I

    move-result v5

    .line 2099
    .local v5, "paddingBottom":I
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getHeight()I

    move-result v6

    .line 2100
    .local v6, "height":I
    sub-int v7, v6, v4

    sub-int/2addr v7, v5

    .line 2101
    .local v7, "space":I
    sub-int v8, v7, v1

    div-int/lit8 v8, v8, 0x2

    .line 2102
    .local v8, "spaceAbove":I
    iget v9, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    if-ge v8, v9, :cond_4b

    .line 2103
    iget v8, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    goto :goto_5d

    .line 2092
    .end local v4    # "paddingTop":I
    .end local v5    # "paddingBottom":I
    .end local v6    # "height":I
    .end local v7    # "space":I
    .end local v8    # "spaceAbove":I
    :sswitch_36
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, v1

    iget v4, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v4

    sub-int/2addr v2, v3

    return v2

    .line 2089
    :sswitch_45
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result v2

    sub-int/2addr v2, v3

    return v2

    .line 2105
    .restart local v4    # "paddingTop":I
    .restart local v5    # "paddingBottom":I
    .restart local v6    # "height":I
    .restart local v7    # "space":I
    .restart local v8    # "spaceAbove":I
    :cond_4b
    sub-int v9, v6, v5

    sub-int/2addr v9, v1

    sub-int/2addr v9, v8

    sub-int/2addr v9, v4

    .line 2107
    .local v9, "spaceBelow":I
    iget v10, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    if-ge v9, v10, :cond_5d

    .line 2108
    iget v10, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v10, v9

    sub-int v10, v8, v10

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2111
    .end local v9    # "spaceBelow":I
    :cond_5d
    :goto_5d
    add-int v2, v4, v8

    return v2

    :sswitch_data_60
    .sparse-switch
        0x30 -> :sswitch_45
        0x50 -> :sswitch_36
    .end sparse-switch
.end method

.method private greylist-max-o getChildVerticalGravity(I)I
    .registers 4
    .param p1, "gravity"    # I

    .line 2116
    and-int/lit8 v0, p1, 0x70

    .line 2117
    .local v0, "vgrav":I
    sparse-switch v0, :sswitch_data_c

    .line 2123
    iget v1, p0, Landroid/widget/Toolbar;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    return v1

    .line 2121
    :sswitch_a
    return v0

    nop

    :sswitch_data_c
    .sparse-switch
        0x10 -> :sswitch_a
        0x30 -> :sswitch_a
        0x50 -> :sswitch_a
    .end sparse-switch
.end method

.method private greylist-max-o getHorizontalMargins(Landroid/view/View;)I
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 2181
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2182
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private greylist-max-o getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    .line 1187
    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private greylist-max-o getVerticalMargins(Landroid/view/View;)I
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 2186
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2187
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private greylist-max-o getViewListMeasuredWidth(Ljava/util/List;[I)I
    .registers 16
    .param p2, "collapsingMargins"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    .line 2039
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    aget v1, p2, v0

    .line 2040
    .local v1, "collapseLeft":I
    const/4 v2, 0x1

    aget v2, p2, v2

    .line 2041
    .local v2, "collapseRight":I
    const/4 v3, 0x0

    .line 2042
    .local v3, "width":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 2043
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_c
    if-ge v5, v4, :cond_3c

    .line 2044
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 2045
    .local v6, "v":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/Toolbar$LayoutParams;

    .line 2046
    .local v7, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v8, v7, Landroid/widget/Toolbar$LayoutParams;->leftMargin:I

    sub-int/2addr v8, v1

    .line 2047
    .local v8, "l":I
    iget v9, v7, Landroid/widget/Toolbar$LayoutParams;->rightMargin:I

    sub-int/2addr v9, v2

    .line 2048
    .local v9, "r":I
    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2049
    .local v10, "leftMargin":I
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 2050
    .local v11, "rightMargin":I
    neg-int v12, v8

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2051
    neg-int v12, v9

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2052
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v10

    add-int/2addr v12, v11

    add-int/2addr v3, v12

    .line 2043
    .end local v6    # "v":Landroid/view/View;
    .end local v7    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .end local v8    # "l":I
    .end local v9    # "r":I
    .end local v10    # "leftMargin":I
    .end local v11    # "rightMargin":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 2054
    .end local v5    # "i":I
    :cond_3c
    return v3
.end method

.method private greylist-max-o isChildOrHidden(Landroid/view/View;)Z
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 2253
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_11

    iget-object v0, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

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

.method private static greylist-max-o isCustomView(Landroid/view/View;)Z
    .registers 2
    .param p0, "child"    # Landroid/view/View;

    .line 2219
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar$LayoutParams;

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private greylist-max-o layoutChildLeft(Landroid/view/View;I[II)I
    .registers 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    .line 2059
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar$LayoutParams;

    .line 2060
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v1, v0, Landroid/widget/Toolbar$LayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p3, v2

    sub-int/2addr v1, v3

    .line 2061
    .local v1, "l":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr p2, v3

    .line 2062
    neg-int v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, p3, v2

    .line 2063
    invoke-direct {p0, p1, p4}, Landroid/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v2

    .line 2064
    .local v2, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 2065
    .local v3, "childWidth":I
    add-int v4, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p1, p2, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 2066
    iget v4, v0, Landroid/widget/Toolbar$LayoutParams;->rightMargin:I

    add-int/2addr v4, v3

    add-int/2addr p2, v4

    .line 2067
    return p2
.end method

.method private greylist-max-o layoutChildRight(Landroid/view/View;I[II)I
    .registers 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "right"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    .line 2072
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar$LayoutParams;

    .line 2073
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v1, v0, Landroid/widget/Toolbar$LayoutParams;->rightMargin:I

    const/4 v2, 0x1

    aget v3, p3, v2

    sub-int/2addr v1, v3

    .line 2074
    .local v1, "r":I
    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    .line 2075
    neg-int v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, p3, v2

    .line 2076
    invoke-direct {p0, p1, p4}, Landroid/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v2

    .line 2077
    .local v2, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 2078
    .local v3, "childWidth":I
    sub-int v4, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p1, v4, v2, p2, v5}, Landroid/view/View;->layout(IIII)V

    .line 2079
    iget v4, v0, Landroid/widget/Toolbar$LayoutParams;->leftMargin:I

    add-int/2addr v4, v3

    sub-int/2addr p2, v4

    .line 2080
    return p2
.end method

.method private greylist-max-o measureChildCollapseMargins(Landroid/view/View;IIII[I)I
    .registers 16
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "collapsingMargins"    # [I

    .line 1654
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1656
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p6, v2

    sub-int/2addr v1, v3

    .line 1657
    .local v1, "leftDiff":I
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v4, 0x1

    aget v5, p6, v4

    sub-int/2addr v3, v5

    .line 1658
    .local v3, "rightDiff":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1659
    .local v5, "leftMargin":I
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1660
    .local v6, "rightMargin":I
    add-int v7, v5, v6

    .line 1661
    .local v7, "hMargins":I
    neg-int v8, v1

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, p6, v2

    .line 1662
    neg-int v8, v3

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, p6, v4

    .line 1664
    iget v2, p0, Landroid/widget/Toolbar;->mPaddingLeft:I

    iget v4, p0, Landroid/widget/Toolbar;->mPaddingRight:I

    add-int/2addr v2, v4

    add-int/2addr v2, v7

    add-int/2addr v2, p3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v2, v4}, Landroid/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v2

    .line 1666
    .local v2, "childWidthMeasureSpec":I
    iget v4, p0, Landroid/widget/Toolbar;->mPaddingTop:I

    iget v8, p0, Landroid/widget/Toolbar;->mPaddingBottom:I

    add-int/2addr v4, v8

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v8

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v8

    add-int/2addr v4, p5

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v4, v8}, Landroid/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v4

    .line 1670
    .local v4, "childHeightMeasureSpec":I
    invoke-virtual {p1, v2, v4}, Landroid/view/View;->measure(II)V

    .line 1671
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v7

    return v8
.end method

.method private greylist-max-o measureChildConstrained(Landroid/view/View;IIIII)V
    .registers 13
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "heightConstraint"    # I

    .line 1629
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1631
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, p0, Landroid/widget/Toolbar;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/Toolbar;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, v2}, Landroid/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v1

    .line 1634
    .local v1, "childWidthSpec":I
    iget v2, p0, Landroid/widget/Toolbar;->mPaddingTop:I

    iget v3, p0, Landroid/widget/Toolbar;->mPaddingBottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, p5

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v2, v3}, Landroid/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v2

    .line 1638
    .local v2, "childHeightSpec":I
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1639
    .local v3, "childHeightMode":I
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v3, v4, :cond_45

    if-ltz p6, :cond_45

    .line 1640
    if-eqz v3, :cond_3f

    .line 1641
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v5, p6}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_40

    .line 1642
    :cond_3f
    move v5, p6

    :goto_40
    nop

    .line 1643
    .local v5, "size":I
    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1645
    .end local v5    # "size":I
    :cond_45
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1646
    return-void
.end method

.method private greylist-max-o postShowOverflowMenu()V
    .registers 2

    .line 1573
    iget-object v0, p0, Landroid/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1574
    iget-object v0, p0, Landroid/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    .line 1575
    return-void
.end method

.method private greylist-max-o shouldCollapse()Z
    .registers 6

    .line 1678
    iget-boolean v0, p0, Landroid/widget/Toolbar;->mCollapsible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1680
    :cond_6
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getChildCount()I

    move-result v0

    .line 1681
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_27

    .line 1682
    invoke-virtual {p0, v2}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1683
    .local v3, "child":Landroid/view/View;
    invoke-direct {p0, v3}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_24

    .line 1684
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-lez v4, :cond_24

    .line 1685
    return v1

    .line 1681
    .end local v3    # "child":Landroid/view/View;
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1688
    .end local v2    # "i":I
    :cond_27
    const/4 v1, 0x1

    return v1
.end method

.method private greylist-max-o shouldLayout(Landroid/view/View;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 2177
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method


# virtual methods
.method greylist-max-o addChildrenForExpandedActionView()V
    .registers 4

    .line 2244
    iget-object v0, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2246
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_18

    .line 2247
    iget-object v2, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2246
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 2249
    .end local v1    # "i":I
    :cond_18
    iget-object v1, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2250
    return-void
.end method

.method public greylist-max-o canShowOverflowMenu()Z
    .registers 2

    .line 529
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2215
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_c

    instance-of v0, p1, Landroid/widget/Toolbar$LayoutParams;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist collapseActionView()V
    .registers 2

    .line 736
    iget-object v0, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    .line 737
    :cond_6
    iget-object v0, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    :goto_a
    nop

    .line 738
    .local v0, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    if-eqz v0, :cond_10

    .line 739
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 741
    :cond_10
    return-void
.end method

.method public whitelist dismissPopupMenus()V
    .registers 2

    .line 605
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_9

    .line 606
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->dismissPopupMenus()V

    .line 608
    :cond_9
    return-void
.end method

.method protected bridge synthetic whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 135
    invoke-virtual {p0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;
    .registers 3

    .line 2210
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/Toolbar$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/Toolbar$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/Toolbar$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/Toolbar$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 2192
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/Toolbar$LayoutParams;
    .registers 4
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2197
    instance-of v0, p1, Landroid/widget/Toolbar$LayoutParams;

    if-eqz v0, :cond_d

    .line 2198
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/widget/Toolbar$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/widget/Toolbar$LayoutParams;)V

    return-object v0

    .line 2199
    :cond_d
    instance-of v0, p1, Landroid/app/ActionBar$LayoutParams;

    if-eqz v0, :cond_1a

    .line 2200
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/app/ActionBar$LayoutParams;)V

    return-object v0

    .line 2201
    :cond_1a
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_27

    .line 2202
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 2204
    :cond_27
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public whitelist getCollapseContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 1044
    iget-object v0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist getCollapseIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1090
    iget-object v0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist getContentInsetEnd()I
    .registers 2

    .line 1276
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Landroid/widget/RtlSpacingHelper;->getEnd()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist getContentInsetEndWithActions()I
    .registers 3

    .line 1402
    iget v0, p0, Landroid/widget/Toolbar;->mContentInsetEndWithActions:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_9

    .line 1403
    iget v0, p0, Landroid/widget/Toolbar;->mContentInsetEndWithActions:I

    goto :goto_d

    .line 1404
    :cond_9
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    .line 1402
    :goto_d
    return v0
.end method

.method public whitelist getContentInsetLeft()I
    .registers 2

    .line 1320
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Landroid/widget/RtlSpacingHelper;->getLeft()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist getContentInsetRight()I
    .registers 2

    .line 1341
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Landroid/widget/RtlSpacingHelper;->getRight()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist getContentInsetStart()I
    .registers 2

    .line 1255
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Landroid/widget/RtlSpacingHelper;->getStart()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public whitelist getContentInsetStartWithNavigation()I
    .registers 3

    .line 1358
    iget v0, p0, Landroid/widget/Toolbar;->mContentInsetStartWithNavigation:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_9

    .line 1359
    iget v0, p0, Landroid/widget/Toolbar;->mContentInsetStartWithNavigation:I

    goto :goto_d

    .line 1360
    :cond_9
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    .line 1358
    :goto_d
    return v0
.end method

.method public whitelist getCurrentContentInsetEnd()I
    .registers 5

    .line 1454
    const/4 v0, 0x0

    .line 1455
    .local v0, "hasActions":Z
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 1456
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->peekMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    .line 1457
    .local v1, "mb":Lcom/android/internal/view/menu/MenuBuilder;
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v3, 0x1

    goto :goto_17

    :cond_16
    move v3, v2

    :goto_17
    move v0, v3

    .line 1459
    .end local v1    # "mb":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_18
    if-eqz v0, :cond_29

    .line 1460
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContentInsetEnd()I

    move-result v1

    iget v3, p0, Landroid/widget/Toolbar;->mContentInsetEndWithActions:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2d

    .line 1461
    :cond_29
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContentInsetEnd()I

    move-result v1

    .line 1459
    :goto_2d
    return v1
.end method

.method public whitelist getCurrentContentInsetLeft()I
    .registers 2

    .line 1474
    invoke-virtual {p0}, Landroid/widget/Toolbar;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1475
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v0

    goto :goto_f

    .line 1476
    :cond_b
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v0

    .line 1474
    :goto_f
    return v0
.end method

.method public whitelist getCurrentContentInsetRight()I
    .registers 2

    .line 1489
    invoke-virtual {p0}, Landroid/widget/Toolbar;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1490
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v0

    goto :goto_f

    .line 1491
    :cond_b
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v0

    .line 1489
    :goto_f
    return v0
.end method

.method public whitelist getCurrentContentInsetStart()I
    .registers 4

    .line 1440
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1441
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    iget v1, p0, Landroid/widget/Toolbar;->mContentInsetStartWithNavigation:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1a

    .line 1442
    :cond_16
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    .line 1440
    :goto_1a
    return v0
.end method

.method public whitelist getLogo()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 663
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist getLogoDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 702
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist getMenu()Landroid/view/Menu;
    .registers 2

    .line 1135
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenu()V

    .line 1136
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNavigationContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 913
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1006
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public blacklist getNavigationView()Landroid/view/View;
    .registers 2

    .line 1029
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method greylist-max-o getOuterActionMenuPresenter()Landroid/widget/ActionMenuPresenter;
    .registers 2

    .line 2288
    iget-object v0, p0, Landroid/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    return-object v0
.end method

.method public whitelist getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1156
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenu()V

    .line 1157
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getPopupContext()Landroid/content/Context;
    .registers 2

    .line 2292
    iget-object v0, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getPopupTheme()I
    .registers 2

    .line 391
    iget v0, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    return v0
.end method

.method public whitelist getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 807
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 750
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTitleMarginBottom()I
    .registers 2

    .line 492
    iget v0, p0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    return v0
.end method

.method public whitelist getTitleMarginEnd()I
    .registers 2

    .line 469
    iget v0, p0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    return v0
.end method

.method public whitelist getTitleMarginStart()I
    .registers 2

    .line 423
    iget v0, p0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    return v0
.end method

.method public whitelist getTitleMarginTop()I
    .registers 2

    .line 446
    iget v0, p0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    return v0
.end method

.method public greylist-max-o getWrapper()Lcom/android/internal/widget/DecorToolbar;
    .registers 3

    .line 2224
    iget-object v0, p0, Landroid/widget/Toolbar;->mWrapper:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    if-nez v0, :cond_c

    .line 2225
    new-instance v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;-><init>(Landroid/widget/Toolbar;Z)V

    iput-object v0, p0, Landroid/widget/Toolbar;->mWrapper:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    .line 2227
    :cond_c
    iget-object v0, p0, Landroid/widget/Toolbar;->mWrapper:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    return-object v0
.end method

.method public whitelist hasExpandedActionView()Z
    .registers 2

    .line 722
    iget-object v0, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist hideOverflowMenu()Z
    .registers 2

    .line 562
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist inflateMenu(I)V
    .registers 4
    .param p1, "resId"    # I

    .line 1199
    invoke-direct {p0}, Landroid/widget/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1200
    return-void
.end method

.method public greylist-max-o isOverflowMenuShowPending()Z
    .registers 2

    .line 544
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist isOverflowMenuShowing()Z
    .registers 2

    .line 539
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public greylist-max-o isTitleTruncated()Z
    .registers 6

    .line 612
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 613
    return v1

    .line 616
    :cond_6
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 617
    .local v0, "titleLayout":Landroid/text/Layout;
    if-nez v0, :cond_f

    .line 618
    return v1

    .line 621
    :cond_f
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 622
    .local v2, "lineCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v2, :cond_21

    .line 623
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_1e

    .line 624
    const/4 v1, 0x1

    return v1

    .line 622
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 627
    .end local v3    # "i":I
    :cond_21
    return v1
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 5

    .line 348
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 352
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 353
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_7
    if-eqz v0, :cond_29

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_29

    .line 354
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 355
    .local v1, "vgParent":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 356
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/Toolbar;->setKeyboardNavigationCluster(Z)V

    .line 357
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 358
    invoke-virtual {p0, v2}, Landroid/widget/Toolbar;->setTouchscreenBlocksFocus(Z)V

    goto :goto_29

    .line 362
    :cond_24
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 363
    .end local v1    # "vgParent":Landroid/view/ViewGroup;
    goto :goto_7

    .line 364
    :cond_29
    :goto_29
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .registers 2

    .line 1579
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1580
    iget-object v0, p0, Landroid/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1581
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 39
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1821
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_c

    move v1, v3

    goto :goto_d

    :cond_c
    move v1, v2

    .line 1822
    .local v1, "isRtl":Z
    :goto_d
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getWidth()I

    move-result v4

    .line 1823
    .local v4, "width":I
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getHeight()I

    move-result v5

    .line 1824
    .local v5, "height":I
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getPaddingLeft()I

    move-result v6

    .line 1825
    .local v6, "paddingLeft":I
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getPaddingRight()I

    move-result v7

    .line 1826
    .local v7, "paddingRight":I
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result v8

    .line 1827
    .local v8, "paddingTop":I
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getPaddingBottom()I

    move-result v9

    .line 1828
    .local v9, "paddingBottom":I
    move v10, v6

    .line 1829
    .local v10, "left":I
    sub-int v11, v4, v7

    .line 1831
    .local v11, "right":I
    iget-object v12, v0, Landroid/widget/Toolbar;->mTempMargins:[I

    .line 1832
    .local v12, "collapsingMargins":[I
    aput v2, v12, v3

    aput v2, v12, v2

    .line 1835
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getMinimumHeight()I

    move-result v13

    .line 1836
    .local v13, "minHeight":I
    if-ltz v13, :cond_3b

    sub-int v14, p5, p3

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_3c

    :cond_3b
    move v14, v2

    .line 1838
    .local v14, "alignmentHeight":I
    :goto_3c
    iget-object v15, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_53

    .line 1839
    if-eqz v1, :cond_4d

    .line 1840
    iget-object v15, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15, v11, v12, v14}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v11

    goto :goto_53

    .line 1843
    :cond_4d
    iget-object v15, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15, v10, v12, v14}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v10

    .line 1848
    :cond_53
    :goto_53
    iget-object v15, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_6a

    .line 1849
    if-eqz v1, :cond_64

    .line 1850
    iget-object v15, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15, v11, v12, v14}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v11

    goto :goto_6a

    .line 1853
    :cond_64
    iget-object v15, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v15, v10, v12, v14}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v10

    .line 1858
    :cond_6a
    :goto_6a
    iget-object v15, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-direct {v0, v15}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_81

    .line 1859
    if-eqz v1, :cond_7b

    .line 1860
    iget-object v15, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-direct {v0, v15, v10, v12, v14}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v10

    goto :goto_81

    .line 1863
    :cond_7b
    iget-object v15, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-direct {v0, v15, v11, v12, v14}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v11

    .line 1868
    :cond_81
    :goto_81
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getCurrentContentInsetLeft()I

    move-result v15

    .line 1869
    .local v15, "contentInsetLeft":I
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getCurrentContentInsetRight()I

    move-result v16

    .line 1870
    .local v16, "contentInsetRight":I
    move/from16 v17, v3

    sub-int v3, v15, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v12, v2

    .line 1871
    sub-int v3, v4, v7

    sub-int/2addr v3, v11

    sub-int v3, v16, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v12, v17

    .line 1872
    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1873
    .end local v10    # "left":I
    .local v3, "left":I
    sub-int v10, v4, v7

    sub-int v10, v10, v16

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1875
    .end local v11    # "right":I
    .local v10, "right":I
    iget-object v11, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v11}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_c1

    .line 1876
    if-eqz v1, :cond_bb

    .line 1877
    iget-object v11, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v11, v10, v12, v14}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v10

    goto :goto_c1

    .line 1880
    :cond_bb
    iget-object v11, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v11, v3, v12, v14}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v3

    .line 1885
    :cond_c1
    :goto_c1
    iget-object v11, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v11}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_d8

    .line 1886
    if-eqz v1, :cond_d2

    .line 1887
    iget-object v11, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v11, v10, v12, v14}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v10

    goto :goto_d8

    .line 1890
    :cond_d2
    iget-object v11, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v11, v3, v12, v14}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v3

    .line 1895
    :cond_d8
    :goto_d8
    iget-object v11, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v0, v11}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v11

    .line 1896
    .local v11, "layoutTitle":Z
    iget-object v2, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v2

    .line 1897
    .local v2, "layoutSubtitle":Z
    const/16 v19, 0x0

    .line 1898
    .local v19, "titleHeight":I
    if-eqz v11, :cond_109

    .line 1899
    move/from16 v20, v1

    .end local v1    # "isRtl":Z
    .local v20, "isRtl":Z
    iget-object v1, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/Toolbar$LayoutParams;

    .line 1900
    .local v1, "lp":Landroid/widget/Toolbar$LayoutParams;
    move/from16 v21, v2

    .end local v2    # "layoutSubtitle":Z
    .local v21, "layoutSubtitle":Z
    iget v2, v1, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v22, v2

    iget-object v2, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    add-int v2, v22, v2

    move/from16 v22, v2

    iget v2, v1, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v2, v22, v2

    add-int v19, v19, v2

    goto :goto_10d

    .line 1898
    .end local v20    # "isRtl":Z
    .end local v21    # "layoutSubtitle":Z
    .local v1, "isRtl":Z
    .restart local v2    # "layoutSubtitle":Z
    :cond_109
    move/from16 v20, v1

    move/from16 v21, v2

    .line 1902
    .end local v1    # "isRtl":Z
    .end local v2    # "layoutSubtitle":Z
    .restart local v20    # "isRtl":Z
    .restart local v21    # "layoutSubtitle":Z
    :goto_10d
    if-eqz v21, :cond_12b

    .line 1903
    iget-object v1, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/Toolbar$LayoutParams;

    .line 1904
    .local v1, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v2, v1, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v22, v2

    iget-object v2, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    add-int v2, v22, v2

    move/from16 v22, v2

    iget v2, v1, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v2, v22, v2

    add-int v19, v19, v2

    .line 1907
    .end local v1    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_12b
    if-nez v11, :cond_13a

    if-eqz v21, :cond_130

    goto :goto_13a

    :cond_130
    move/from16 v26, v4

    move/from16 v28, v5

    move/from16 v30, v6

    move/from16 v31, v7

    goto/16 :goto_2f9

    .line 1909
    :cond_13a
    :goto_13a
    if-eqz v11, :cond_13f

    iget-object v1, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    goto :goto_141

    :cond_13f
    iget-object v1, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1910
    .local v1, "topChild":Landroid/view/View;
    :goto_141
    if-eqz v21, :cond_146

    iget-object v2, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    goto :goto_148

    :cond_146
    iget-object v2, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 1911
    .local v2, "bottomChild":Landroid/view/View;
    :goto_148
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v23, v1

    .end local v1    # "topChild":Landroid/view/View;
    .local v23, "topChild":Landroid/view/View;
    move-object/from16 v1, v22

    check-cast v1, Landroid/widget/Toolbar$LayoutParams;

    .line 1912
    .local v1, "toplp":Landroid/widget/Toolbar$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v24, v2

    .end local v2    # "bottomChild":Landroid/view/View;
    .local v24, "bottomChild":Landroid/view/View;
    move-object/from16 v2, v22

    check-cast v2, Landroid/widget/Toolbar$LayoutParams;

    .line 1913
    .local v2, "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    if-eqz v11, :cond_169

    move/from16 v22, v3

    .end local v3    # "left":I
    .local v22, "left":I
    iget-object v3, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    if-gtz v3, :cond_175

    goto :goto_16b

    .end local v22    # "left":I
    .restart local v3    # "left":I
    :cond_169
    move/from16 v22, v3

    .end local v3    # "left":I
    .restart local v22    # "left":I
    :goto_16b
    if-eqz v21, :cond_178

    iget-object v3, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1914
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    if-lez v3, :cond_178

    :cond_175
    move/from16 v3, v17

    goto :goto_179

    :cond_178
    const/4 v3, 0x0

    .line 1916
    .local v3, "titleHasWidth":Z
    :goto_179
    move/from16 v25, v3

    .end local v3    # "titleHasWidth":Z
    .local v25, "titleHasWidth":Z
    iget v3, v0, Landroid/widget/Toolbar;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    sparse-switch v3, :sswitch_data_38a

    .line 1922
    sub-int v3, v5, v8

    sub-int/2addr v3, v9

    .line 1923
    .local v3, "space":I
    sub-int v26, v3, v19

    move/from16 v27, v3

    .end local v3    # "space":I
    .local v27, "space":I
    div-int/lit8 v3, v26, 0x2

    .line 1924
    .local v3, "spaceAbove":I
    move/from16 v26, v4

    .end local v4    # "width":I
    .local v26, "width":I
    iget v4, v1, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v28, v4

    iget v4, v0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    add-int v4, v28, v4

    if-ge v3, v4, :cond_1cb

    .line 1925
    iget v4, v1, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v28, v3

    .end local v3    # "spaceAbove":I
    .local v28, "spaceAbove":I
    iget v3, v0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    add-int/2addr v3, v4

    move-object/from16 v29, v1

    .end local v28    # "spaceAbove":I
    .restart local v3    # "spaceAbove":I
    goto :goto_1ee

    .line 1937
    .end local v3    # "spaceAbove":I
    .end local v26    # "width":I
    .end local v27    # "space":I
    .restart local v4    # "width":I
    :sswitch_1a1
    sub-int v3, v5, v9

    move/from16 v26, v3

    iget v3, v2, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int v3, v26, v3

    move/from16 v26, v3

    iget v3, v0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    sub-int v3, v26, v3

    sub-int v3, v3, v19

    move-object/from16 v29, v1

    move/from16 v26, v4

    .local v3, "titleTop":I
    goto :goto_1f1

    .line 1918
    .end local v3    # "titleTop":I
    :sswitch_1b6
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result v3

    move/from16 v26, v3

    iget v3, v1, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    add-int v3, v26, v3

    move/from16 v26, v3

    iget v3, v0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    add-int v3, v26, v3

    .line 1919
    .restart local v3    # "titleTop":I
    move-object/from16 v29, v1

    move/from16 v26, v4

    goto :goto_1f1

    .line 1927
    .end local v4    # "width":I
    .local v3, "spaceAbove":I
    .restart local v26    # "width":I
    .restart local v27    # "space":I
    :cond_1cb
    move/from16 v28, v3

    .end local v3    # "spaceAbove":I
    .restart local v28    # "spaceAbove":I
    sub-int v3, v5, v9

    sub-int v3, v3, v19

    sub-int v3, v3, v28

    sub-int/2addr v3, v8

    .line 1929
    .local v3, "spaceBelow":I
    iget v4, v1, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    move-object/from16 v29, v1

    .end local v1    # "toplp":Landroid/widget/Toolbar$LayoutParams;
    .local v29, "toplp":Landroid/widget/Toolbar$LayoutParams;
    iget v1, v0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    add-int/2addr v4, v1

    if-ge v3, v4, :cond_1ec

    .line 1930
    iget v1, v2, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    iget v4, v0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    add-int/2addr v1, v4

    sub-int/2addr v1, v3

    sub-int v1, v28, v1

    const/4 v4, 0x0

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v3, v1

    .end local v28    # "spaceAbove":I
    .local v1, "spaceAbove":I
    goto :goto_1ee

    .line 1929
    .end local v1    # "spaceAbove":I
    .restart local v28    # "spaceAbove":I
    :cond_1ec
    move/from16 v3, v28

    .line 1934
    .end local v28    # "spaceAbove":I
    .local v3, "spaceAbove":I
    :goto_1ee
    add-int v1, v8, v3

    .line 1935
    .local v1, "titleTop":I
    move v3, v1

    .line 1941
    .end local v1    # "titleTop":I
    .end local v27    # "space":I
    .local v3, "titleTop":I
    :goto_1f1
    if-eqz v20, :cond_278

    .line 1942
    if-eqz v25, :cond_1f8

    iget v1, v0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    goto :goto_1f9

    :cond_1f8
    const/4 v1, 0x0

    :goto_1f9
    aget v4, v12, v17

    sub-int/2addr v1, v4

    .line 1943
    .local v1, "rd":I
    const/4 v4, 0x0

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    sub-int v10, v10, v18

    .line 1944
    move-object/from16 v27, v2

    .end local v2    # "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    .local v27, "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    neg-int v2, v1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v12, v17

    .line 1945
    move v2, v10

    .line 1946
    .local v2, "titleRight":I
    move v4, v10

    .line 1948
    .local v4, "subtitleRight":I
    if-eqz v11, :cond_23d

    .line 1949
    move/from16 v18, v1

    .end local v1    # "rd":I
    .local v18, "rd":I
    iget-object v1, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/Toolbar$LayoutParams;

    .line 1950
    .local v1, "lp":Landroid/widget/Toolbar$LayoutParams;
    move/from16 v28, v5

    .end local v5    # "height":I
    .local v28, "height":I
    iget-object v5, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v2, v5

    .line 1951
    .local v5, "titleLeft":I
    move/from16 v30, v6

    .end local v6    # "paddingLeft":I
    .local v30, "paddingLeft":I
    iget-object v6, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    .line 1952
    .local v6, "titleBottom":I
    move/from16 v31, v7

    .end local v7    # "paddingRight":I
    .local v31, "paddingRight":I
    iget-object v7, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v5, v3, v2, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 1953
    iget v7, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    sub-int v2, v5, v7

    .line 1954
    iget v7, v1, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v3, v6, v7

    goto :goto_245

    .line 1948
    .end local v18    # "rd":I
    .end local v28    # "height":I
    .end local v30    # "paddingLeft":I
    .end local v31    # "paddingRight":I
    .local v1, "rd":I
    .local v5, "height":I
    .local v6, "paddingLeft":I
    .restart local v7    # "paddingRight":I
    :cond_23d
    move/from16 v18, v1

    move/from16 v28, v5

    move/from16 v30, v6

    move/from16 v31, v7

    .line 1956
    .end local v1    # "rd":I
    .end local v5    # "height":I
    .end local v6    # "paddingLeft":I
    .end local v7    # "paddingRight":I
    .restart local v18    # "rd":I
    .restart local v28    # "height":I
    .restart local v30    # "paddingLeft":I
    .restart local v31    # "paddingRight":I
    :goto_245
    if-eqz v21, :cond_26d

    .line 1957
    iget-object v1, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/Toolbar$LayoutParams;

    .line 1958
    .local v1, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v5, v1, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v3, v5

    .line 1959
    iget-object v5, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v4, v5

    .line 1960
    .local v5, "subtitleLeft":I
    iget-object v6, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    .line 1961
    .local v6, "subtitleBottom":I
    iget-object v7, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v5, v3, v4, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 1962
    iget v7, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    sub-int/2addr v4, v7

    .line 1963
    iget v7, v1, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v3, v6, v7

    .line 1965
    .end local v1    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .end local v5    # "subtitleLeft":I
    .end local v6    # "subtitleBottom":I
    :cond_26d
    if-eqz v25, :cond_274

    .line 1966
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v10, v1

    .line 1968
    .end local v2    # "titleRight":I
    .end local v4    # "subtitleRight":I
    .end local v18    # "rd":I
    :cond_274
    move/from16 v3, v22

    goto/16 :goto_2f9

    .line 1969
    .end local v27    # "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    .end local v28    # "height":I
    .end local v30    # "paddingLeft":I
    .end local v31    # "paddingRight":I
    .local v2, "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    .local v5, "height":I
    .local v6, "paddingLeft":I
    .restart local v7    # "paddingRight":I
    :cond_278
    move-object/from16 v27, v2

    move/from16 v28, v5

    move/from16 v30, v6

    move/from16 v31, v7

    .end local v2    # "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    .end local v5    # "height":I
    .end local v6    # "paddingLeft":I
    .end local v7    # "paddingRight":I
    .restart local v27    # "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    .restart local v28    # "height":I
    .restart local v30    # "paddingLeft":I
    .restart local v31    # "paddingRight":I
    if-eqz v25, :cond_285

    iget v4, v0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    goto :goto_286

    :cond_285
    const/4 v4, 0x0

    :goto_286
    const/4 v1, 0x0

    aget v2, v12, v1

    sub-int/2addr v4, v2

    .line 1970
    .local v4, "ld":I
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v2, v22, v2

    .line 1971
    .end local v22    # "left":I
    .local v2, "left":I
    neg-int v5, v4

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    aput v5, v12, v1

    .line 1972
    move v1, v2

    .line 1973
    .local v1, "titleLeft":I
    move v5, v2

    .line 1975
    .local v5, "subtitleLeft":I
    if-eqz v11, :cond_2c3

    .line 1976
    iget-object v6, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/Toolbar$LayoutParams;

    .line 1977
    .local v6, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget-object v7, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v1

    .line 1978
    .local v7, "titleRight":I
    move/from16 v18, v2

    .end local v2    # "left":I
    .local v18, "left":I
    iget-object v2, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v3

    .line 1979
    .local v2, "titleBottom":I
    move/from16 v22, v4

    .end local v4    # "ld":I
    .local v22, "ld":I
    iget-object v4, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v1, v3, v7, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 1980
    iget v4, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    add-int v1, v7, v4

    .line 1981
    iget v4, v6, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v3, v2, v4

    goto :goto_2c7

    .line 1975
    .end local v6    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .end local v7    # "titleRight":I
    .end local v18    # "left":I
    .end local v22    # "ld":I
    .local v2, "left":I
    .restart local v4    # "ld":I
    :cond_2c3
    move/from16 v18, v2

    move/from16 v22, v4

    .line 1983
    .end local v2    # "left":I
    .end local v4    # "ld":I
    .restart local v18    # "left":I
    .restart local v22    # "ld":I
    :goto_2c7
    if-eqz v21, :cond_2ef

    .line 1984
    iget-object v2, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/Toolbar$LayoutParams;

    .line 1985
    .local v2, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v4, v2, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    .line 1986
    iget-object v4, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v5

    .line 1987
    .local v4, "subtitleRight":I
    iget-object v6, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    .line 1988
    .local v6, "subtitleBottom":I
    iget-object v7, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v5, v3, v4, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 1989
    iget v7, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    add-int v5, v4, v7

    .line 1990
    iget v7, v2, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v3, v6, v7

    .line 1992
    .end local v2    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .end local v4    # "subtitleRight":I
    .end local v6    # "subtitleBottom":I
    :cond_2ef
    if-eqz v25, :cond_2f7

    .line 1993
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v3, v2

    .end local v18    # "left":I
    .local v2, "left":I
    goto :goto_2f9

    .line 1992
    .end local v2    # "left":I
    .restart local v18    # "left":I
    :cond_2f7
    move/from16 v3, v18

    .line 2001
    .end local v1    # "titleLeft":I
    .end local v5    # "subtitleLeft":I
    .end local v18    # "left":I
    .end local v22    # "ld":I
    .end local v23    # "topChild":Landroid/view/View;
    .end local v24    # "bottomChild":Landroid/view/View;
    .end local v25    # "titleHasWidth":Z
    .end local v27    # "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    .end local v29    # "toplp":Landroid/widget/Toolbar$LayoutParams;
    .local v3, "left":I
    :goto_2f9
    iget-object v1, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 2002
    iget-object v1, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2003
    .local v1, "leftViewsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_306
    if-ge v2, v1, :cond_317

    .line 2004
    iget-object v4, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-direct {v0, v4, v3, v12, v14}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v3

    .line 2003
    add-int/lit8 v2, v2, 0x1

    goto :goto_306

    .line 2008
    .end local v2    # "i":I
    :cond_317
    iget-object v2, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {v0, v2, v4}, Landroid/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 2009
    iget-object v2, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2010
    .local v2, "rightViewsCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_324
    if-ge v4, v2, :cond_335

    .line 2011
    iget-object v5, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-direct {v0, v5, v10, v12, v14}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v10

    .line 2010
    add-int/lit8 v4, v4, 0x1

    goto :goto_324

    .line 2017
    .end local v4    # "i":I
    :cond_335
    iget-object v4, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move/from16 v5, v17

    invoke-direct {v0, v4, v5}, Landroid/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 2018
    iget-object v4, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-direct {v0, v4, v12}, Landroid/widget/Toolbar;->getViewListMeasuredWidth(Ljava/util/List;[I)I

    move-result v4

    .line 2019
    .local v4, "centerViewsWidth":I
    sub-int v5, v26, v30

    sub-int v5, v5, v31

    div-int/lit8 v5, v5, 0x2

    add-int v6, v30, v5

    .line 2020
    .local v6, "parentCenter":I
    div-int/lit8 v5, v4, 0x2

    .line 2021
    .local v5, "halfCenterViewsWidth":I
    sub-int v7, v6, v5

    .line 2022
    .local v7, "centerLeft":I
    move/from16 v17, v1

    .end local v1    # "leftViewsCount":I
    .local v17, "leftViewsCount":I
    add-int v1, v7, v4

    .line 2023
    .local v1, "centerRight":I
    if-ge v7, v3, :cond_356

    .line 2024
    move v7, v3

    goto :goto_35c

    .line 2025
    :cond_356
    if-le v1, v10, :cond_35c

    .line 2026
    sub-int v18, v1, v10

    sub-int v7, v7, v18

    .line 2029
    :cond_35c
    :goto_35c
    move/from16 v18, v1

    .end local v1    # "centerRight":I
    .local v18, "centerRight":I
    iget-object v1, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2030
    .local v1, "centerViewsCount":I
    const/16 v22, 0x0

    move/from16 v32, v22

    move/from16 v22, v2

    move/from16 v2, v32

    .local v2, "i":I
    .local v22, "rightViewsCount":I
    :goto_36c
    if-ge v2, v1, :cond_381

    .line 2031
    move/from16 v23, v1

    .end local v1    # "centerViewsCount":I
    .local v23, "centerViewsCount":I
    iget-object v1, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {v0, v1, v7, v12, v14}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v7

    .line 2030
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v23

    goto :goto_36c

    .end local v23    # "centerViewsCount":I
    .restart local v1    # "centerViewsCount":I
    :cond_381
    move/from16 v23, v1

    .line 2035
    .end local v1    # "centerViewsCount":I
    .end local v2    # "i":I
    .restart local v23    # "centerViewsCount":I
    iget-object v1, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2036
    return-void

    nop

    :sswitch_data_38a
    .sparse-switch
        0x30 -> :sswitch_1b6
        0x50 -> :sswitch_1a1
    .end sparse-switch
.end method

.method protected whitelist onMeasure(II)V
    .registers 25
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1693
    move-object/from16 v0, p0

    const/4 v3, 0x0

    .line 1694
    .local v3, "width":I
    const/4 v7, 0x0

    .line 1695
    .local v7, "height":I
    const/4 v8, 0x0

    .line 1697
    .local v8, "childState":I
    iget-object v9, v0, Landroid/widget/Toolbar;->mTempMargins:[I

    .line 1700
    .local v9, "collapsingMargins":[I
    invoke-virtual {v0}, Landroid/widget/Toolbar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1701
    const/4 v1, 0x1

    .line 1702
    .local v1, "marginStartIndex":I
    const/4 v2, 0x0

    move v10, v1

    move v11, v2

    .local v2, "marginEndIndex":I
    goto :goto_16

    .line 1704
    .end local v1    # "marginStartIndex":I
    .end local v2    # "marginEndIndex":I
    :cond_12
    const/4 v1, 0x0

    .line 1705
    .restart local v1    # "marginStartIndex":I
    const/4 v2, 0x1

    move v10, v1

    move v11, v2

    .line 1710
    .end local v1    # "marginStartIndex":I
    .local v10, "marginStartIndex":I
    .local v11, "marginEndIndex":I
    :goto_16
    const/4 v12, 0x0

    .line 1711
    .local v12, "navWidth":I
    iget-object v1, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 1712
    iget-object v1, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v0, Landroid/widget/Toolbar;->mMaxButtonHeight:I

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1714
    iget-object v1, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v1

    iget-object v2, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v2}, Landroid/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v2

    add-int v12, v1, v2

    .line 1715
    iget-object v1, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1716
    invoke-direct {v0, v2}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1715
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1717
    iget-object v1, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v1

    invoke-static {v8, v1}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v8

    .line 1720
    :cond_54
    iget-object v1, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 1721
    iget-object v1, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v0, Landroid/widget/Toolbar;->mMaxButtonHeight:I

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1723
    iget-object v1, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v1

    iget-object v2, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1724
    invoke-direct {v0, v2}, Landroid/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v2

    add-int v12, v1, v2

    .line 1725
    iget-object v1, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1726
    invoke-direct {v0, v2}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1725
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1727
    iget-object v1, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v1

    invoke-static {v8, v1}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v8

    .line 1730
    :cond_91
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v13

    .line 1731
    .local v13, "contentInsetStart":I
    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v3, v1

    .line 1732
    sub-int v1, v13, v12

    const/4 v14, 0x0

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v9, v10

    .line 1734
    const/4 v15, 0x0

    .line 1735
    .local v15, "menuWidth":I
    iget-object v1, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 1736
    iget-object v1, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v5, 0x0

    iget v6, v0, Landroid/widget/Toolbar;->mMaxButtonHeight:I

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1738
    iget-object v1, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-direct {v0, v2}, Landroid/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v2

    add-int v15, v1, v2

    .line 1739
    iget-object v1, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    .line 1740
    invoke-direct {v0, v2}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1739
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1741
    iget-object v1, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getMeasuredState()I

    move-result v1

    invoke-static {v8, v1}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v8

    .line 1744
    :cond_e1
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v1

    .line 1745
    .local v1, "contentInsetEnd":I
    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v3, v2

    .line 1746
    sub-int v2, v1, v15

    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v9, v11

    .line 1748
    iget-object v2, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v2}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_125

    .line 1749
    move v2, v1

    .end local v1    # "contentInsetEnd":I
    .local v2, "contentInsetEnd":I
    iget-object v1, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    const/4 v5, 0x0

    move/from16 v4, p2

    move-object v6, v9

    move v9, v2

    move/from16 v2, p1

    .end local v2    # "contentInsetEnd":I
    .local v6, "collapsingMargins":[I
    .local v9, "contentInsetEnd":I
    invoke-direct/range {v0 .. v6}, Landroid/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v1

    add-int/2addr v3, v1

    .line 1751
    iget-object v1, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 1752
    invoke-direct {v0, v2}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1751
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1753
    iget-object v1, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v8, v1}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v8

    goto :goto_127

    .line 1748
    .end local v6    # "collapsingMargins":[I
    .restart local v1    # "contentInsetEnd":I
    .local v9, "collapsingMargins":[I
    :cond_125
    move-object v6, v9

    move v9, v1

    .line 1756
    .end local v1    # "contentInsetEnd":I
    .restart local v6    # "collapsingMargins":[I
    .local v9, "contentInsetEnd":I
    :goto_127
    iget-object v1, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_156

    .line 1757
    iget-object v1, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v1

    add-int/2addr v3, v1

    .line 1759
    iget-object v1, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 1760
    invoke-direct {v0, v2}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1759
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1761
    iget-object v1, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredState()I

    move-result v1

    invoke-static {v8, v1}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v8

    .line 1764
    :cond_156
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getChildCount()I

    move-result v1

    .line 1765
    .local v1, "childCount":I
    const/4 v2, 0x0

    move/from16 v21, v7

    move v7, v2

    move v2, v8

    move/from16 v8, v21

    .local v2, "childState":I
    .local v7, "i":I
    .local v8, "height":I
    :goto_161
    if-ge v7, v1, :cond_1b9

    .line 1766
    move v4, v1

    .end local v1    # "childCount":I
    .local v4, "childCount":I
    invoke-virtual {v0, v7}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1767
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/Toolbar$LayoutParams;

    .line 1768
    .local v5, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v14, v5, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v14, :cond_1a9

    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v14

    if-nez v14, :cond_17e

    .line 1770
    move v14, v2

    move/from16 v18, v3

    move/from16 v16, v4

    goto :goto_1b0

    .line 1773
    :cond_17e
    move-object v14, v5

    .end local v5    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .local v14, "lp":Landroid/widget/Toolbar$LayoutParams;
    const/4 v5, 0x0

    move/from16 v16, v4

    move-object/from16 v17, v14

    move/from16 v4, p2

    move v14, v2

    move/from16 v2, p1

    .end local v2    # "childState":I
    .end local v4    # "childCount":I
    .local v14, "childState":I
    .local v16, "childCount":I
    .local v17, "lp":Landroid/widget/Toolbar$LayoutParams;
    invoke-direct/range {v0 .. v6}, Landroid/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v5

    move/from16 v18, v3

    .end local v3    # "width":I
    .local v18, "width":I
    add-int v3, v18, v5

    .line 1775
    .end local v18    # "width":I
    .restart local v3    # "width":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1776
    .end local v8    # "height":I
    .local v2, "height":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    invoke-static {v14, v4}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v4

    move v8, v2

    move v2, v4

    .end local v14    # "childState":I
    .local v4, "childState":I
    goto :goto_1b3

    .line 1768
    .end local v16    # "childCount":I
    .end local v17    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .local v2, "childState":I
    .local v4, "childCount":I
    .restart local v5    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .restart local v8    # "height":I
    :cond_1a9
    move v14, v2

    move/from16 v18, v3

    move/from16 v16, v4

    move-object/from16 v17, v5

    .line 1765
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childState":I
    .end local v3    # "width":I
    .end local v4    # "childCount":I
    .end local v5    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .restart local v14    # "childState":I
    .restart local v16    # "childCount":I
    .restart local v18    # "width":I
    :goto_1b0
    move v2, v14

    move/from16 v3, v18

    .end local v14    # "childState":I
    .end local v18    # "width":I
    .restart local v2    # "childState":I
    .restart local v3    # "width":I
    :goto_1b3
    add-int/lit8 v7, v7, 0x1

    move/from16 v1, v16

    const/4 v14, 0x0

    goto :goto_161

    .end local v16    # "childCount":I
    .local v1, "childCount":I
    :cond_1b9
    move/from16 v16, v1

    move v14, v2

    move/from16 v18, v3

    .line 1779
    .end local v1    # "childCount":I
    .end local v2    # "childState":I
    .end local v3    # "width":I
    .end local v7    # "i":I
    .restart local v14    # "childState":I
    .restart local v16    # "childCount":I
    .restart local v18    # "width":I
    const/4 v7, 0x0

    .line 1780
    .local v7, "titleWidth":I
    const/16 v17, 0x0

    .line 1781
    .local v17, "titleHeight":I
    iget v1, v0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    iget v2, v0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    add-int v5, v1, v2

    .line 1782
    .local v5, "titleVertMargins":I
    iget v1, v0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    iget v2, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    add-int v19, v1, v2

    .line 1783
    .local v19, "titleHorizMargins":I
    iget-object v1, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_20b

    .line 1784
    iget-object v1, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    add-int v3, v18, v19

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v1

    .line 1787
    move/from16 v20, v5

    .end local v5    # "titleVertMargins":I
    .end local v7    # "titleWidth":I
    .local v1, "titleWidth":I
    .local v20, "titleVertMargins":I
    iget-object v2, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v0, v3}, Landroid/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v3

    add-int v7, v2, v3

    .line 1788
    .end local v1    # "titleWidth":I
    .restart local v7    # "titleWidth":I
    iget-object v1, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int v17, v1, v2

    .line 1789
    iget-object v1, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v1

    invoke-static {v14, v1}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v2

    move v14, v2

    .end local v14    # "childState":I
    .restart local v2    # "childState":I
    goto :goto_20d

    .line 1783
    .end local v2    # "childState":I
    .end local v20    # "titleVertMargins":I
    .restart local v5    # "titleVertMargins":I
    .restart local v14    # "childState":I
    :cond_20b
    move/from16 v20, v5

    .line 1791
    .end local v5    # "titleVertMargins":I
    .restart local v20    # "titleVertMargins":I
    :goto_20d
    iget-object v1, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_243

    .line 1792
    iget-object v1, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    add-int v3, v18, v19

    add-int v5, v17, v20

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1796
    iget-object v1, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1797
    invoke-direct {v0, v2}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    add-int v17, v17, v1

    .line 1798
    iget-object v1, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v1

    invoke-static {v14, v1}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v14

    move/from16 v1, v17

    goto :goto_245

    .line 1791
    :cond_243
    move/from16 v1, v17

    .line 1801
    .end local v17    # "titleHeight":I
    .local v1, "titleHeight":I
    :goto_245
    add-int v3, v18, v7

    .line 1802
    .end local v18    # "width":I
    .restart local v3    # "width":I
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1806
    .end local v8    # "height":I
    .local v2, "height":I
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 1807
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 1809
    nop

    .line 1810
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/high16 v5, -0x1000000

    and-int/2addr v5, v14

    .line 1809
    move/from16 v8, p1

    invoke-static {v4, v8, v5}, Landroid/widget/Toolbar;->resolveSizeAndState(III)I

    move-result v4

    .line 1812
    .local v4, "measuredWidth":I
    nop

    .line 1813
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getSuggestedMinimumHeight()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v17, v1

    .end local v1    # "titleHeight":I
    .restart local v17    # "titleHeight":I
    shl-int/lit8 v1, v14, 0x10

    .line 1812
    move/from16 v18, v2

    move/from16 v2, p2

    .end local v2    # "height":I
    .local v18, "height":I
    invoke-static {v5, v2, v1}, Landroid/widget/Toolbar;->resolveSizeAndState(III)I

    move-result v1

    .line 1816
    .local v1, "measuredHeight":I
    invoke-direct {v0}, Landroid/widget/Toolbar;->shouldCollapse()Z

    move-result v5

    if-eqz v5, :cond_28e

    const/4 v5, 0x0

    goto :goto_28f

    :cond_28e
    move v5, v1

    :goto_28f
    invoke-virtual {v0, v4, v5}, Landroid/widget/Toolbar;->setMeasuredDimension(II)V

    .line 1817
    return-void
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1556
    move-object v0, p1

    check-cast v0, Landroid/widget/Toolbar$SavedState;

    .line 1557
    .local v0, "ss":Landroid/widget/Toolbar$SavedState;
    invoke-virtual {v0}, Landroid/widget/Toolbar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1559
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->peekMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 1560
    .local v1, "menu":Landroid/view/Menu;
    :goto_16
    iget v2, v0, Landroid/widget/Toolbar$SavedState;->expandedMenuItemId:I

    if-eqz v2, :cond_2b

    iget-object v2, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_2b

    if-eqz v1, :cond_2b

    .line 1561
    iget v2, v0, Landroid/widget/Toolbar$SavedState;->expandedMenuItemId:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1562
    .local v2, "item":Landroid/view/MenuItem;
    if-eqz v2, :cond_2b

    .line 1563
    invoke-interface {v2}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1567
    .end local v2    # "item":Landroid/view/MenuItem;
    :cond_2b
    iget-boolean v2, v0, Landroid/widget/Toolbar$SavedState;->isOverflowOpen:Z

    if-eqz v2, :cond_32

    .line 1568
    invoke-direct {p0}, Landroid/widget/Toolbar;->postShowOverflowMenu()V

    .line 1570
    :cond_32
    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .registers 4
    .param p1, "layoutDirection"    # I

    .line 509
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 510
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureContentInsets()V

    .line 511
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v0, v1}, Landroid/widget/RtlSpacingHelper;->setDirection(Z)V

    .line 512
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1543
    new-instance v0, Landroid/widget/Toolbar$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1545
    .local v0, "state":Landroid/widget/Toolbar$SavedState;
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v1, :cond_1d

    .line 1546
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v1

    iput v1, v0, Landroid/widget/Toolbar$SavedState;->expandedMenuItemId:I

    .line 1549
    :cond_1d
    invoke-virtual {p0}, Landroid/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v1

    iput-boolean v1, v0, Landroid/widget/Toolbar$SavedState;->isOverflowOpen:Z

    .line 1551
    return-object v0
.end method

.method protected greylist-max-o onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1622
    invoke-virtual {p0, p2}, Landroid/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1623
    invoke-virtual {p0, p2}, Landroid/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1625
    :cond_d
    return-void
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1590
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1591
    .local v0, "action":I
    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 1592
    iput-boolean v1, p0, Landroid/widget/Toolbar;->mEatingTouch:Z

    .line 1595
    :cond_9
    iget-boolean v2, p0, Landroid/widget/Toolbar;->mEatingTouch:Z

    const/4 v3, 0x1

    if-nez v2, :cond_18

    .line 1596
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1597
    .local v2, "handled":Z
    if-nez v0, :cond_18

    if-nez v2, :cond_18

    .line 1598
    iput-boolean v3, p0, Landroid/widget/Toolbar;->mEatingTouch:Z

    .line 1602
    .end local v2    # "handled":Z
    :cond_18
    if-eq v0, v3, :cond_1d

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1f

    .line 1603
    :cond_1d
    iput-boolean v1, p0, Landroid/widget/Toolbar;->mEatingTouch:Z

    .line 1606
    :cond_1f
    return v3
.end method

.method greylist-max-o removeChildrenForExpandedActionView()V
    .registers 7

    .line 2231
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getChildCount()I

    move-result v0

    .line 2233
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_26

    .line 2234
    invoke-virtual {p0, v1}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2235
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/Toolbar$LayoutParams;

    .line 2236
    .local v3, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v4, v3, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_23

    iget-object v4, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eq v2, v4, :cond_23

    .line 2237
    invoke-virtual {p0, v1}, Landroid/widget/Toolbar;->removeViewAt(I)V

    .line 2238
    iget-object v4, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2233
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 2241
    .end local v1    # "i":I
    :cond_26
    return-void
.end method

.method public whitelist setCollapseContentDescription(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 1058
    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setCollapseContentDescription(Ljava/lang/CharSequence;)V

    .line 1059
    return-void
.end method

.method public whitelist setCollapseContentDescription(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 1072
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1073
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureCollapseButtonView()V

    .line 1075
    :cond_9
    iget-object v0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_12

    .line 1076
    iget-object v0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1078
    :cond_12
    return-void
.end method

.method public whitelist setCollapseIcon(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 1104
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setCollapseIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1105
    return-void
.end method

.method public whitelist setCollapseIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 1118
    if-eqz p1, :cond_b

    .line 1119
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureCollapseButtonView()V

    .line 1120
    iget-object v0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_16

    .line 1121
    :cond_b
    iget-object v0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_16

    .line 1122
    iget-object v0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1124
    :cond_16
    :goto_16
    return-void
.end method

.method public greylist-max-o setCollapsible(Z)V
    .registers 2
    .param p1, "collapsible"    # Z

    .line 2262
    iput-boolean p1, p0, Landroid/widget/Toolbar;->mCollapsible:Z

    .line 2263
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    .line 2264
    return-void
.end method

.method public whitelist setContentInsetEndWithActions(I)V
    .registers 3
    .param p1, "insetEndWithActions"    # I

    .line 1420
    if-gez p1, :cond_4

    .line 1421
    const/high16 p1, -0x80000000

    .line 1423
    :cond_4
    iget v0, p0, Landroid/widget/Toolbar;->mContentInsetEndWithActions:I

    if-eq p1, v0, :cond_13

    .line 1424
    iput p1, p0, Landroid/widget/Toolbar;->mContentInsetEndWithActions:I

    .line 1425
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1426
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    .line 1429
    :cond_13
    return-void
.end method

.method public whitelist setContentInsetStartWithNavigation(I)V
    .registers 3
    .param p1, "insetStartWithNavigation"    # I

    .line 1377
    if-gez p1, :cond_4

    .line 1378
    const/high16 p1, -0x80000000

    .line 1380
    :cond_4
    iget v0, p0, Landroid/widget/Toolbar;->mContentInsetStartWithNavigation:I

    if-eq p1, v0, :cond_13

    .line 1381
    iput p1, p0, Landroid/widget/Toolbar;->mContentInsetStartWithNavigation:I

    .line 1382
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1383
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    .line 1386
    :cond_13
    return-void
.end method

.method public whitelist setContentInsetsAbsolute(II)V
    .registers 4
    .param p1, "contentInsetLeft"    # I
    .param p2, "contentInsetRight"    # I

    .line 1298
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureContentInsets()V

    .line 1299
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RtlSpacingHelper;->setAbsolute(II)V

    .line 1300
    return-void
.end method

.method public whitelist setContentInsetsRelative(II)V
    .registers 4
    .param p1, "contentInsetStart"    # I
    .param p2, "contentInsetEnd"    # I

    .line 1233
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureContentInsets()V

    .line 1234
    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RtlSpacingHelper;->setRelative(II)V

    .line 1235
    return-void
.end method

.method public whitelist setLogo(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 524
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 525
    return-void
.end method

.method public whitelist setLogo(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 640
    if-eqz p1, :cond_14

    .line 641
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureLogoView()V

    .line 642
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 643
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_2c

    .line 645
    :cond_14
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 646
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 647
    iget-object v0, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 649
    :cond_2c
    :goto_2c
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_35

    .line 650
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 652
    :cond_35
    return-void
.end method

.method public whitelist setLogoDescription(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 675
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 676
    return-void
.end method

.method public whitelist setLogoDescription(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 687
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 688
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureLogoView()V

    .line 690
    :cond_9
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_12

    .line 691
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 693
    :cond_12
    return-void
.end method

.method public greylist-max-o setMenu(Lcom/android/internal/view/menu/MenuBuilder;Landroid/widget/ActionMenuPresenter;)V
    .registers 8
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "outerPresenter"    # Landroid/widget/ActionMenuPresenter;

    .line 567
    if-nez p1, :cond_7

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-nez v0, :cond_7

    .line 568
    return-void

    .line 571
    :cond_7
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenuView()V

    .line 572
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->peekMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    .line 573
    .local v0, "oldMenu":Lcom/android/internal/view/menu/MenuBuilder;
    if-ne v0, p1, :cond_13

    .line 574
    return-void

    .line 577
    :cond_13
    if-eqz v0, :cond_1f

    .line 578
    iget-object v1, p0, Landroid/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 579
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 582
    :cond_1f
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    const/4 v2, 0x0

    if-nez v1, :cond_2b

    .line 583
    new-instance v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-direct {v1, p0, v2}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/widget/Toolbar;Landroid/widget/Toolbar-IA;)V

    iput-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 586
    :cond_2b
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 587
    if-eqz p1, :cond_3e

    .line 588
    iget-object v1, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, p2, v1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 589
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    goto :goto_52

    .line 591
    :cond_3e
    iget-object v3, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p2, v3, v2}, Landroid/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 592
    iget-object v3, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v4, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 593
    invoke-virtual {p2, v1}, Landroid/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 594
    iget-object v2, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v2, v1}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    .line 596
    :goto_52
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    iget v2, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->setPopupTheme(I)V

    .line 597
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1, p2}, Landroid/widget/ActionMenuView;->setPresenter(Landroid/widget/ActionMenuPresenter;)V

    .line 598
    iput-object p2, p0, Landroid/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 599
    return-void
.end method

.method public greylist-max-o setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .registers 4
    .param p1, "pcb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 2271
    iput-object p1, p0, Landroid/widget/Toolbar;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 2272
    iput-object p2, p0, Landroid/widget/Toolbar;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 2273
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_d

    .line 2274
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ActionMenuView;->setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 2276
    :cond_d
    return-void
.end method

.method public whitelist setNavigationContentDescription(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 927
    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 928
    return-void
.end method

.method public whitelist setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 941
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 942
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureNavButtonView()V

    .line 944
    :cond_9
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_12

    .line 945
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 947
    :cond_12
    return-void
.end method

.method public whitelist setNavigationIcon(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 964
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 965
    return-void
.end method

.method public whitelist setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 982
    if-eqz p1, :cond_14

    .line 983
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureNavButtonView()V

    .line 984
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 985
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_2c

    .line 987
    :cond_14
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 988
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 989
    iget-object v0, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 991
    :cond_2c
    :goto_2c
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_35

    .line 992
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 994
    :cond_35
    return-void
.end method

.method public whitelist setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 1019
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureNavButtonView()V

    .line 1020
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1021
    return-void
.end method

.method public whitelist setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/Toolbar$OnMenuItemClickListener;

    .line 1211
    iput-object p1, p0, Landroid/widget/Toolbar;->mOnMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

    .line 1212
    return-void
.end method

.method public whitelist setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 1145
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenu()V

    .line 1146
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1147
    return-void
.end method

.method public whitelist setPopupTheme(I)V
    .registers 4
    .param p1, "resId"    # I

    .line 374
    iget v0, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    if-eq v0, p1, :cond_16

    .line 375
    iput p1, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    .line 376
    if-nez p1, :cond_d

    .line 377
    iget-object v0, p0, Landroid/widget/Toolbar;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    goto :goto_16

    .line 379
    :cond_d
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/widget/Toolbar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 382
    :cond_16
    :goto_16
    return-void
.end method

.method public whitelist setSubtitle(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 818
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 819
    return-void
.end method

.method public whitelist setSubtitle(Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 829
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 830
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_37

    .line 831
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 832
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 833
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 834
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 835
    iget v1, p0, Landroid/widget/Toolbar;->mSubtitleTextAppearance:I

    if-eqz v1, :cond_2c

    .line 836
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/Toolbar;->mSubtitleTextAppearance:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 838
    :cond_2c
    iget v1, p0, Landroid/widget/Toolbar;->mSubtitleTextColor:I

    if-eqz v1, :cond_37

    .line 839
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/Toolbar;->mSubtitleTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 842
    .end local v0    # "context":Landroid/content/Context;
    :cond_37
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 843
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_5e

    .line 845
    :cond_46
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 846
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 847
    iget-object v0, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 849
    :cond_5e
    :goto_5e
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_67

    .line 850
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 852
    :cond_67
    iput-object p1, p0, Landroid/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    .line 853
    return-void
.end method

.method public whitelist setSubtitleTextAppearance(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 871
    iput p2, p0, Landroid/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 872
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 873
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 875
    :cond_b
    return-void
.end method

.method public whitelist setSubtitleTextColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 895
    iput p1, p0, Landroid/widget/Toolbar;->mSubtitleTextColor:I

    .line 896
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 897
    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 899
    :cond_b
    return-void
.end method

.method public whitelist setTitle(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 762
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 763
    return-void
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 774
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 775
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_37

    .line 776
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 777
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 778
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 779
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 780
    iget v1, p0, Landroid/widget/Toolbar;->mTitleTextAppearance:I

    if-eqz v1, :cond_2c

    .line 781
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/Toolbar;->mTitleTextAppearance:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 783
    :cond_2c
    iget v1, p0, Landroid/widget/Toolbar;->mTitleTextColor:I

    if-eqz v1, :cond_37

    .line 784
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/Toolbar;->mTitleTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 787
    .end local v0    # "context":Landroid/content/Context;
    :cond_37
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 788
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_5e

    .line 790
    :cond_46
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 791
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 792
    iget-object v0, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 794
    :cond_5e
    :goto_5e
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_67

    .line 795
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 797
    :cond_67
    iput-object p1, p0, Landroid/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    .line 798
    return-void
.end method

.method public whitelist setTitleMargin(IIII)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 408
    iput p1, p0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    .line 409
    iput p2, p0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    .line 410
    iput p3, p0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    .line 411
    iput p4, p0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    .line 413
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    .line 414
    return-void
.end method

.method public whitelist setTitleMarginBottom(I)V
    .registers 2
    .param p1, "margin"    # I

    .line 503
    iput p1, p0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    .line 504
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    .line 505
    return-void
.end method

.method public whitelist setTitleMarginEnd(I)V
    .registers 2
    .param p1, "margin"    # I

    .line 480
    iput p1, p0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    .line 482
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    .line 483
    return-void
.end method

.method public whitelist setTitleMarginStart(I)V
    .registers 2
    .param p1, "margin"    # I

    .line 434
    iput p1, p0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    .line 436
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    .line 437
    return-void
.end method

.method public whitelist setTitleMarginTop(I)V
    .registers 2
    .param p1, "margin"    # I

    .line 457
    iput p1, p0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    .line 459
    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    .line 460
    return-void
.end method

.method public whitelist setTitleTextAppearance(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 860
    iput p2, p0, Landroid/widget/Toolbar;->mTitleTextAppearance:I

    .line 861
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 862
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 864
    :cond_b
    return-void
.end method

.method public whitelist setTitleTextColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 883
    iput p1, p0, Landroid/widget/Toolbar;->mTitleTextColor:I

    .line 884
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 885
    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 887
    :cond_b
    return-void
.end method

.method public whitelist showOverflowMenu()Z
    .registers 2

    .line 553
    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method
