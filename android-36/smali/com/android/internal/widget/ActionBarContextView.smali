.class public Lcom/android/internal/widget/ActionBarContextView;
.super Lcom/android/internal/widget/AbsActionBarView;
.source "ActionBarContextView.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ActionBarContextView"


# instance fields
.field private blacklist mClose:Landroid/view/View;

.field private blacklist mCloseItemLayout:I

.field private blacklist mCustomView:Landroid/view/View;

.field private blacklist mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private blacklist mSubtitle:Ljava/lang/CharSequence;

.field private blacklist mSubtitleStyleRes:I

.field private blacklist mSubtitleView:Landroid/widget/TextView;

.field private blacklist mTitle:Ljava/lang/CharSequence;

.field private blacklist mTitleLayout:Landroid/widget/LinearLayout;

.field private blacklist mTitleOptional:Z

.field private blacklist mTitleStyleRes:I

.field private blacklist mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 64
    const v0, 0x1010394

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 69
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 75
    sget-object v0, Lcom/android/internal/R$styleable;->ActionMode:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarContextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 79
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    .line 81
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    .line 84
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 87
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 90
    const/4 v1, 0x5

    const v2, 0x1090026

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mCloseItemLayout:I

    .line 94
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    return-void
.end method

.method private blacklist initTitle()V
    .registers 7

    .line 177
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_50

    .line 178
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 179
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x1090021

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 180
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 181
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v2, 0x10201e7

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    .line 182
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v2, 0x10201e6

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    .line 183
    iget v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    if-eqz v1, :cond_45

    .line 184
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 186
    :cond_45
    iget v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    if-eqz v1, :cond_50

    .line 187
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 191
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_50
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 195
    .local v0, "hasTitle":Z
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 196
    .local v1, "hasSubtitle":Z
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v1, :cond_77

    move v5, v3

    goto :goto_78

    :cond_77
    move v5, v4

    :goto_78
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_83

    if-eqz v1, :cond_82

    goto :goto_83

    :cond_82
    move v3, v4

    :cond_83
    :goto_83
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 198
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_93

    .line 199
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 201
    :cond_93
    return-void
.end method


# virtual methods
.method public blacklist closeMode()V
    .registers 2

    .line 250
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v0, :cond_8

    .line 251
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 252
    return-void

    .line 255
    :cond_8
    return-void
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 294
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 299
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public blacklist getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist hideOverflowMenu()Z
    .registers 2

    .line 276
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_b

    .line 277
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    return v0

    .line 279
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist initForMode(Landroid/view/ActionMode;)V
    .registers 9
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 204
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    if-nez v0, :cond_19

    .line 205
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 206
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mCloseItemLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    .line 207
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    goto :goto_27

    .line 208
    :cond_19
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_27

    .line 209
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    goto :goto_28

    .line 208
    :cond_27
    :goto_27
    nop

    .line 212
    :goto_28
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    const v1, 0x10201ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 213
    .local v0, "closeButton":Landroid/view/View;
    new-instance v1, Lcom/android/internal/widget/ActionBarContextView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/widget/ActionBarContextView$1;-><init>(Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuBuilder;

    .line 220
    .local v1, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v2, :cond_48

    .line 221
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v2}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 223
    :cond_48
    new-instance v2, Landroid/widget/ActionMenuPresenter;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 224
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 226
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 228
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-nez v4, :cond_7f

    .line 229
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 230
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v3, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v3

    check-cast v3, Landroid/widget/ActionMenuView;

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 231
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 232
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_bf

    .line 235
    :cond_7f
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 236
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 235
    invoke-virtual {v4, v6, v3}, Landroid/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 238
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v4, 0x7fffffff

    invoke-virtual {v3, v4}, Landroid/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 240
    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 241
    iget v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 242
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 243
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v3, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v3

    check-cast v3, Landroid/widget/ActionMenuView;

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 244
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 245
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    :goto_bf
    return-void
.end method

.method public blacklist isOverflowMenuShowing()Z
    .registers 2

    .line 284
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_b

    .line 285
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    return v0

    .line 287
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isTitleOptional()Z
    .registers 2

    .line 441
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleOptional:Z

    return v0
.end method

.method public blacklist killMode()V
    .registers 3

    .line 258
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->removeAllViews()V

    .line 259
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    .line 260
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 262
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 263
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 264
    return-void
.end method

.method public whitelist onDetachedFromWindow()V
    .registers 2

    .line 99
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 100
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_11

    .line 101
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 102
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideSubMenus()Z

    .line 104
    :cond_11
    return-void
.end method

.method public blacklist onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 422
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_27

    .line 424
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 425
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 426
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2a

    .line 429
    :cond_27
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 431
    :goto_2a
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 16
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 385
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->isLayoutRtl()Z

    move-result v5

    .line 386
    .local v5, "isLayoutRtl":Z
    if-eqz v5, :cond_e

    sub-int v1, p4, p2

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_12

    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v1

    .line 387
    .local v1, "x":I
    :goto_12
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v3

    .line 388
    .local v3, "y":I
    sub-int v2, p5, p3

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v4

    sub-int v4, v2, v4

    .line 390
    .local v4, "contentHeight":I
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    const/16 v6, 0x8

    if-eqz v2, :cond_5c

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v6, :cond_5c

    .line 391
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 392
    .local v7, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v5, :cond_3f

    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_41

    :cond_3f
    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_41
    move v8, v2

    .line 393
    .local v8, "startMargin":I
    if-eqz v5, :cond_47

    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_49

    :cond_47
    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_49
    move v9, v2

    .line 394
    .local v9, "endMargin":I
    invoke-static {v1, v8, v5}, Lcom/android/internal/widget/ActionBarContextView;->next(IIZ)I

    move-result v2

    .line 395
    .end local v1    # "x":I
    .local v2, "x":I
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v1

    add-int/2addr v2, v1

    .line 396
    invoke-static {v2, v9, v5}, Lcom/android/internal/widget/ActionBarContextView;->next(IIZ)I

    move-result v1

    move v2, v1

    .end local v2    # "x":I
    .restart local v1    # "x":I
    goto :goto_5d

    .line 400
    .end local v7    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v8    # "startMargin":I
    .end local v9    # "endMargin":I
    :cond_5c
    move v2, v1

    .end local v1    # "x":I
    .restart local v2    # "x":I
    :goto_5d
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_75

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v1, :cond_75

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eq v1, v6, :cond_75

    .line 401
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v1

    add-int/2addr v2, v1

    .line 404
    :cond_75
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_83

    .line 405
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v1

    move v6, v5

    .end local v5    # "isLayoutRtl":Z
    .local v6, "isLayoutRtl":Z
    add-int/2addr v2, v1

    goto :goto_84

    .line 404
    .end local v6    # "isLayoutRtl":Z
    .restart local v5    # "isLayoutRtl":Z
    :cond_83
    move v6, v5

    .line 408
    .end local v5    # "isLayoutRtl":Z
    .restart local v6    # "isLayoutRtl":Z
    :goto_84
    if-eqz v6, :cond_8b

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v1

    goto :goto_92

    :cond_8b
    sub-int v1, p4, p2

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v1, v5

    :goto_92
    move v2, v1

    .line 410
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v1, :cond_a1

    .line 411
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    xor-int/lit8 v5, v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v1

    add-int/2addr v2, v1

    .line 413
    :cond_a1
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 304
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 305
    .local v1, "widthMode":I
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_122

    .line 310
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 311
    .local v3, "heightMode":I
    if-eqz v3, :cond_ff

    .line 316
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 318
    .local v4, "contentWidth":I
    iget v5, v0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    if-lez v5, :cond_1b

    .line 319
    iget v5, v0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    goto :goto_1f

    :cond_1b
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 321
    .local v5, "maxHeight":I
    :goto_1f
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingTop()I

    move-result v6

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    .line 322
    .local v6, "verticalPadding":I
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingLeft()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    .line 323
    .local v7, "availableWidth":I
    sub-int v8, v5, v6

    .line 324
    .local v8, "height":I
    const/high16 v9, -0x80000000

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 326
    .local v10, "childSpecHeight":I
    iget-object v11, v0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    const/4 v12, 0x0

    if-eqz v11, :cond_54

    .line 327
    iget-object v11, v0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v0, v11, v7, v10, v12}, Lcom/android/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v7

    .line 328
    iget-object v11, v0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 329
    .local v11, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v13, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v13, v14

    sub-int/2addr v7, v13

    .line 332
    .end local v11    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_54
    iget-object v11, v0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v11, :cond_66

    iget-object v11, v0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v11}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-ne v11, v0, :cond_66

    .line 333
    iget-object v11, v0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0, v11, v7, v10, v12}, Lcom/android/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v7

    .line 337
    :cond_66
    iget-object v11, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v11, :cond_9a

    iget-object v11, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v11, :cond_9a

    .line 338
    iget-boolean v11, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleOptional:Z

    if-eqz v11, :cond_94

    .line 339
    invoke-static {v4, v12}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v11

    .line 341
    .local v11, "titleWidthSpec":I
    iget-object v13, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v11, v10}, Landroid/widget/LinearLayout;->measure(II)V

    .line 342
    iget-object v13, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v13

    .line 343
    .local v13, "titleWidth":I
    if-gt v13, v7, :cond_85

    const/4 v14, 0x1

    goto :goto_86

    :cond_85
    move v14, v12

    .line 344
    .local v14, "titleFits":Z
    :goto_86
    if-eqz v14, :cond_89

    .line 345
    sub-int/2addr v7, v13

    .line 347
    :cond_89
    iget-object v15, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v14, :cond_8e

    goto :goto_90

    :cond_8e
    const/16 v12, 0x8

    :goto_90
    invoke-virtual {v15, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 348
    .end local v11    # "titleWidthSpec":I
    .end local v13    # "titleWidth":I
    .end local v14    # "titleFits":Z
    goto :goto_9a

    .line 349
    :cond_94
    iget-object v11, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11, v7, v10, v12}, Lcom/android/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    move-result v7

    .line 353
    :cond_9a
    :goto_9a
    iget-object v11, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v11, :cond_da

    .line 354
    iget-object v11, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 355
    .local v11, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v12, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v13, -0x2

    if-eq v12, v13, :cond_ab

    .line 356
    move v12, v2

    goto :goto_ac

    :cond_ab
    move v12, v9

    .line 357
    .local v12, "customWidthMode":I
    :goto_ac
    iget v14, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v14, :cond_b7

    .line 358
    iget v14, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v14, v7}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_b8

    :cond_b7
    move v14, v7

    .line 359
    .local v14, "customWidth":I
    :goto_b8
    iget v15, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v15, v13, :cond_bd

    .line 360
    goto :goto_be

    :cond_bd
    move v2, v9

    .line 361
    .local v2, "customHeightMode":I
    :goto_be
    iget v9, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v9, :cond_c9

    .line 362
    iget v9, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_ca

    :cond_c9
    move v9, v8

    .line 363
    .local v9, "customHeight":I
    :goto_ca
    iget-object v13, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-static {v14, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 364
    move/from16 v16, v1

    .end local v1    # "widthMode":I
    .local v16, "widthMode":I
    invoke-static {v9, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 363
    invoke-virtual {v13, v15, v1}, Landroid/view/View;->measure(II)V

    goto :goto_dc

    .line 353
    .end local v2    # "customHeightMode":I
    .end local v9    # "customHeight":I
    .end local v11    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v12    # "customWidthMode":I
    .end local v14    # "customWidth":I
    .end local v16    # "widthMode":I
    .restart local v1    # "widthMode":I
    :cond_da
    move/from16 v16, v1

    .line 367
    .end local v1    # "widthMode":I
    .restart local v16    # "widthMode":I
    :goto_dc
    iget v1, v0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    if-gtz v1, :cond_fb

    .line 368
    const/4 v1, 0x0

    .line 369
    .local v1, "measuredHeight":I
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->getChildCount()I

    move-result v2

    .line 370
    .local v2, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_e6
    if-ge v9, v2, :cond_f7

    .line 371
    invoke-virtual {v0, v9}, Lcom/android/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 372
    .local v11, "v":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v6

    .line 373
    .local v12, "paddedViewHeight":I
    if-le v12, v1, :cond_f4

    .line 374
    move v1, v12

    .line 370
    .end local v11    # "v":Landroid/view/View;
    .end local v12    # "paddedViewHeight":I
    :cond_f4
    add-int/lit8 v9, v9, 0x1

    goto :goto_e6

    .line 377
    .end local v9    # "i":I
    :cond_f7
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    .line 378
    .end local v1    # "measuredHeight":I
    .end local v2    # "count":I
    goto :goto_fe

    .line 379
    :cond_fb
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    .line 381
    :goto_fe
    return-void

    .line 312
    .end local v4    # "contentWidth":I
    .end local v5    # "maxHeight":I
    .end local v6    # "verticalPadding":I
    .end local v7    # "availableWidth":I
    .end local v8    # "height":I
    .end local v10    # "childSpecHeight":I
    .end local v16    # "widthMode":I
    .local v1, "widthMode":I
    :cond_ff
    move/from16 v16, v1

    .end local v1    # "widthMode":I
    .restart local v16    # "widthMode":I
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " can only be used with android:layout_height=\"wrap_content\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 306
    .end local v3    # "heightMode":I
    .end local v16    # "widthMode":I
    .restart local v1    # "widthMode":I
    :cond_122
    move/from16 v16, v1

    .end local v1    # "widthMode":I
    .restart local v16    # "widthMode":I
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can only be used with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist setContentHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .line 140
    iput p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    .line 141
    return-void
.end method

.method public blacklist setCustomView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 144
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 145
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 147
    :cond_9
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    .line 148
    if-eqz p1, :cond_19

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_19

    .line 149
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 152
    :cond_19
    if-eqz p1, :cond_1e

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    .line 155
    :cond_1e
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->requestLayout()V

    .line 156
    return-void
.end method

.method public blacklist setSplitToolbar(Z)V
    .registers 7
    .param p1, "split"    # Z

    .line 108
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    if-eq v0, p1, :cond_82

    .line 109
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_7f

    .line 111
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 113
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-nez p1, :cond_36

    .line 114
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Landroid/widget/ActionMenuView;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 115
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 117
    .local v1, "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_30

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 118
    :cond_30
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    .end local v1    # "oldParent":Landroid/view/ViewGroup;
    goto :goto_7f

    .line 121
    :cond_36
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 122
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 121
    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 124
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v3, 0x7fffffff

    invoke-virtual {v1, v3}, Landroid/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 126
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 127
    iget v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 128
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Landroid/widget/ActionMenuView;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    .line 129
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 130
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 131
    .restart local v1    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_78

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 132
    :cond_78
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "oldParent":Landroid/view/ViewGroup;
    :cond_7f
    :goto_7f
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    .line 137
    :cond_82
    return-void
.end method

.method public blacklist setSubtitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 164
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    .line 165
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->initTitle()V

    .line 166
    return-void
.end method

.method public blacklist setTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 159
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    .line 160
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->initTitle()V

    .line 161
    return-void
.end method

.method public blacklist setTitleOptional(Z)V
    .registers 3
    .param p1, "titleOptional"    # Z

    .line 434
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleOptional:Z

    if-eq p1, v0, :cond_7

    .line 435
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->requestLayout()V

    .line 437
    :cond_7
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleOptional:Z

    .line 438
    return-void
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .registers 2

    .line 417
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist showOverflowMenu()Z
    .registers 2

    .line 268
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_b

    .line 269
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    return v0

    .line 271
    :cond_b
    const/4 v0, 0x0

    return v0
.end method
