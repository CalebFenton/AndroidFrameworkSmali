.class public Lcom/android/internal/widget/ActionBarContextView;
.super Lcom/android/internal/widget/AbsActionBarView;
.source "ActionBarContextView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionBarContextView"


# instance fields
.field private mClose:Landroid/view/View;

.field private mCloseItemLayout:I

.field private mCustomView:Landroid/view/View;

.field private mSplitBackground:Landroid/graphics/drawable/Drawable;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleOptional:Z

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 58
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 62
    const v0, 0x1010394

    #@3
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 66
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 74
    sget-object v1, Lcom/android/internal/R$styleable;->ActionMode:[I

    #@6
    .line 73
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@9
    move-result-object v0

    #@a
    .line 75
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    #@11
    .line 78
    const/4 v1, 0x2

    #@12
    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@15
    move-result v1

    #@16
    iput v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    #@18
    .line 80
    const/4 v1, 0x3

    #@19
    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@1c
    move-result v1

    #@1d
    iput v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    #@1f
    .line 83
    const/4 v1, 0x1

    #@20
    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    #@23
    move-result v1

    #@24
    iput v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    #@26
    .line 86
    const/4 v1, 0x4

    #@27
    .line 85
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@2a
    move-result-object v1

    #@2b
    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@2d
    .line 89
    const/4 v1, 0x5

    #@2e
    .line 90
    const v2, 0x109001f

    #@31
    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@34
    move-result v1

    #@35
    iput v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mCloseItemLayout:I

    #@37
    .line 92
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@3a
    .line 70
    return-void
.end method

.method private initTitle()V
    .locals 7

    #@0
    .prologue
    const/16 v5, 0x8

    #@2
    const/4 v4, 0x0

    #@3
    .line 175
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@5
    if-nez v3, :cond_1

    #@7
    .line 176
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    #@a
    move-result-object v3

    #@b
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@e
    move-result-object v2

    #@f
    .line 177
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x109001a

    #@12
    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@15
    .line 178
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getChildCount()I

    #@18
    move-result v3

    #@19
    add-int/lit8 v3, v3, -0x1

    #@1b
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Landroid/widget/LinearLayout;

    #@21
    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@23
    .line 179
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@25
    const v6, 0x10202e6

    #@28
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    #@2b
    move-result-object v3

    #@2c
    check-cast v3, Landroid/widget/TextView;

    #@2e
    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    #@30
    .line 180
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@32
    const v6, 0x10202e7

    #@35
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    #@38
    move-result-object v3

    #@39
    check-cast v3, Landroid/widget/TextView;

    #@3b
    iput-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    #@3d
    .line 181
    iget v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    #@3f
    if-eqz v3, :cond_0

    #@41
    .line 182
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    #@43
    iget v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleStyleRes:I

    #@45
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextAppearance(I)V

    #@48
    .line 184
    :cond_0
    iget v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    #@4a
    if-eqz v3, :cond_1

    #@4c
    .line 185
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    #@4e
    iget v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleStyleRes:I

    #@50
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextAppearance(I)V

    #@53
    .line 189
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleView:Landroid/widget/TextView;

    #@55
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    #@57
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@5a
    .line 190
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    #@5c
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    #@5e
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@61
    .line 192
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    #@63
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@66
    move-result v3

    #@67
    if-eqz v3, :cond_5

    #@69
    const/4 v1, 0x0

    #@6a
    .line 193
    .local v1, "hasTitle":Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    #@6c
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6f
    move-result v3

    #@70
    if-eqz v3, :cond_6

    #@72
    const/4 v0, 0x0

    #@73
    .line 194
    .local v0, "hasSubtitle":Z
    :goto_1
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitleView:Landroid/widget/TextView;

    #@75
    if-eqz v0, :cond_7

    #@77
    move v3, v4

    #@78
    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    #@7b
    .line 195
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@7d
    if-nez v1, :cond_2

    #@7f
    if-eqz v0, :cond_3

    #@81
    :cond_2
    move v5, v4

    #@82
    :cond_3
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    #@85
    .line 196
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@87
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    #@8a
    move-result-object v3

    #@8b
    if-nez v3, :cond_4

    #@8d
    .line 197
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@8f
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    #@92
    .line 174
    :cond_4
    return-void

    #@93
    .line 192
    .end local v0    # "hasSubtitle":Z
    .end local v1    # "hasTitle":Z
    :cond_5
    const/4 v1, 0x1

    #@94
    .restart local v1    # "hasTitle":Z
    goto :goto_0

    #@95
    .line 193
    :cond_6
    const/4 v0, 0x1

    #@96
    .restart local v0    # "hasSubtitle":Z
    goto :goto_1

    #@97
    :cond_7
    move v3, v5

    #@98
    .line 194
    goto :goto_2
.end method


# virtual methods
.method public closeMode()V
    .locals 1

    #@0
    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 249
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    #@7
    .line 250
    return-void

    #@8
    .line 247
    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    #@0
    .prologue
    .line 292
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@2
    const/4 v1, -0x1

    #@3
    const/4 v2, -0x2

    #@4
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    #@7
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 297
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@2
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    #@0
    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 275
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@6
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 277
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public initForMode(Landroid/view/ActionMode;)V
    .locals 9
    .param p1, "mode"    # Landroid/view/ActionMode;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, -0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 202
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    #@5
    if-nez v4, :cond_2

    #@7
    .line 203
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    #@9
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@c
    move-result-object v1

    #@d
    .line 204
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mCloseItemLayout:I

    #@f
    const/4 v5, 0x0

    #@10
    invoke-virtual {v1, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@13
    move-result-object v4

    #@14
    iput-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    #@16
    .line 205
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    #@18
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    #@1b
    .line 210
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    #@1d
    const v5, 0x10202e8

    #@20
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@23
    move-result-object v0

    #@24
    .line 211
    .local v0, "closeButton":Landroid/view/View;
    new-instance v4, Lcom/android/internal/widget/ActionBarContextView$1;

    #@26
    invoke-direct {v4, p0, p1}, Lcom/android/internal/widget/ActionBarContextView$1;-><init>(Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode;)V

    #@29
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@2c
    .line 217
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    #@2f
    move-result-object v3

    #@30
    check-cast v3, Lcom/android/internal/view/menu/MenuBuilder;

    #@32
    .line 218
    .local v3, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@34
    if-eqz v4, :cond_1

    #@36
    .line 219
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@38
    invoke-virtual {v4}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    #@3b
    .line 221
    :cond_1
    new-instance v4, Landroid/widget/ActionMenuPresenter;

    #@3d
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;

    #@3f
    invoke-direct {v4, v5}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    #@42
    iput-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@44
    .line 222
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@46
    invoke-virtual {v4, v8}, Landroid/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    #@49
    .line 224
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    #@4b
    const/4 v4, -0x2

    #@4c
    invoke-direct {v2, v4, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@4f
    .line 226
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    #@51
    if-nez v4, :cond_3

    #@53
    .line 227
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@55
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mPopupContext:Landroid/content/Context;

    #@57
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    #@5a
    .line 228
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@5c
    invoke-virtual {v4, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    #@5f
    move-result-object v4

    #@60
    check-cast v4, Landroid/widget/ActionMenuView;

    #@62
    iput-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    #@64
    .line 229
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    #@66
    invoke-virtual {v4, v6}, Landroid/widget/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    #@69
    .line 230
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    #@6b
    invoke-virtual {p0, v4, v2}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@6e
    .line 201
    :goto_1
    return-void

    #@6f
    .line 206
    .end local v0    # "closeButton":Landroid/view/View;
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    #@71
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@74
    move-result-object v4

    #@75
    if-nez v4, :cond_0

    #@77
    .line 207
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    #@79
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    #@7c
    goto :goto_0

    #@7d
    .line 233
    .restart local v0    # "closeButton":Landroid/view/View;
    .restart local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v3    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@7f
    .line 234
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    #@82
    move-result-object v5

    #@83
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@86
    move-result-object v5

    #@87
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@8a
    move-result-object v5

    #@8b
    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    #@8d
    .line 233
    invoke-virtual {v4, v5, v8}, Landroid/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    #@90
    .line 236
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@92
    const v5, 0x7fffffff

    #@95
    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuPresenter;->setItemLimit(I)V

    #@98
    .line 238
    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@9a
    .line 239
    iget v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    #@9c
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@9e
    .line 240
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@a0
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mPopupContext:Landroid/content/Context;

    #@a2
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    #@a5
    .line 241
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@a7
    invoke-virtual {v4, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    #@aa
    move-result-object v4

    #@ab
    check-cast v4, Landroid/widget/ActionMenuView;

    #@ad
    iput-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    #@af
    .line 242
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    #@b1
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@b3
    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@b6
    .line 243
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    #@b8
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    #@ba
    invoke-virtual {v4, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@bd
    goto :goto_1
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    #@0
    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 283
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@6
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 285
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public isTitleOptional()Z
    .locals 1

    #@0
    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleOptional:Z

    #@2
    return v0
.end method

.method public killMode()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 256
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->removeAllViews()V

    #@4
    .line 257
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 258
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    #@a
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    #@c
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@f
    .line 260
    :cond_0
    iput-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    #@11
    .line 261
    iput-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    #@13
    .line 255
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    #@0
    .prologue
    .line 97
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    #@3
    .line 98
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 99
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@9
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    #@c
    .line 100
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@e
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideSubMenus()Z

    #@11
    .line 96
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 420
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x20

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 422
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    #@b
    .line 423
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    #@16
    .line 424
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    #@21
    .line 425
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    #@23
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    #@26
    .line 419
    :goto_0
    return-void

    #@27
    .line 427
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    #@2a
    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->isLayoutRtl()Z

    #@3
    move-result v5

    #@4
    .line 384
    .local v5, "isLayoutRtl":Z
    if-eqz v5, :cond_4

    #@6
    sub-int v0, p4, p2

    #@8
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingRight()I

    #@b
    move-result v1

    #@c
    sub-int v2, v0, v1

    #@e
    .line 385
    .local v2, "x":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingTop()I

    #@11
    move-result v3

    #@12
    .line 386
    .local v3, "y":I
    sub-int v0, p5, p3

    #@14
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingTop()I

    #@17
    move-result v1

    #@18
    sub-int/2addr v0, v1

    #@19
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingBottom()I

    #@1c
    move-result v1

    #@1d
    sub-int v4, v0, v1

    #@1f
    .line 388
    .local v4, "contentHeight":I
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    #@21
    if-eqz v0, :cond_0

    #@23
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    #@25
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@28
    move-result v0

    #@29
    const/16 v1, 0x8

    #@2b
    if-eq v0, v1, :cond_0

    #@2d
    .line 389
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    #@2f
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@32
    move-result-object v13

    #@33
    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    #@35
    .line 390
    .local v13, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v5, :cond_5

    #@37
    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@39
    .line 391
    .local v14, "startMargin":I
    :goto_1
    if-eqz v5, :cond_6

    #@3b
    iget v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@3d
    .line 392
    .local v12, "endMargin":I
    :goto_2
    invoke-static {v2, v14, v5}, Lcom/android/internal/widget/ActionBarContextView;->next(IIZ)I

    #@40
    move-result v2

    #@41
    .line 393
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    #@43
    move-object v0, p0

    #@44
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    #@47
    move-result v0

    #@48
    add-int/2addr v2, v0

    #@49
    .line 394
    invoke-static {v2, v12, v5}, Lcom/android/internal/widget/ActionBarContextView;->next(IIZ)I

    #@4c
    move-result v2

    #@4d
    .line 398
    .end local v12    # "endMargin":I
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v14    # "startMargin":I
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@4f
    if-eqz v0, :cond_1

    #@51
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    #@53
    if-nez v0, :cond_1

    #@55
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@57
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    #@5a
    move-result v0

    #@5b
    const/16 v1, 0x8

    #@5d
    if-eq v0, v1, :cond_1

    #@5f
    .line 399
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@61
    move-object v0, p0

    #@62
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    #@65
    move-result v0

    #@66
    add-int/2addr v2, v0

    #@67
    .line 402
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    #@69
    if-eqz v0, :cond_2

    #@6b
    .line 403
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    #@6d
    move-object v0, p0

    #@6e
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    #@71
    move-result v0

    #@72
    add-int/2addr v2, v0

    #@73
    .line 406
    :cond_2
    if-eqz v5, :cond_7

    #@75
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingLeft()I

    #@78
    move-result v2

    #@79
    .line 408
    :goto_3
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    #@7b
    if-eqz v0, :cond_3

    #@7d
    .line 409
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    #@7f
    if-eqz v5, :cond_8

    #@81
    const/4 v11, 0x0

    #@82
    :goto_4
    move-object v6, p0

    #@83
    move v8, v2

    #@84
    move v9, v3

    #@85
    move v10, v4

    #@86
    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/widget/ActionBarContextView;->positionChild(Landroid/view/View;IIIZ)I

    #@89
    move-result v0

    #@8a
    add-int/2addr v2, v0

    #@8b
    .line 382
    :cond_3
    return-void

    #@8c
    .line 384
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "contentHeight":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingLeft()I

    #@8f
    move-result v2

    #@90
    .restart local v2    # "x":I
    goto/16 :goto_0

    #@92
    .line 390
    .restart local v3    # "y":I
    .restart local v4    # "contentHeight":I
    .restart local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_5
    iget v14, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@94
    .restart local v14    # "startMargin":I
    goto :goto_1

    #@95
    .line 391
    :cond_6
    iget v12, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@97
    .restart local v12    # "endMargin":I
    goto :goto_2

    #@98
    .line 406
    .end local v12    # "endMargin":I
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v14    # "startMargin":I
    :cond_7
    sub-int v0, p4, p2

    #@9a
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingRight()I

    #@9d
    move-result v1

    #@9e
    sub-int v2, v0, v1

    #@a0
    goto :goto_3

    #@a1
    .line 409
    :cond_8
    const/4 v11, 0x1

    #@a2
    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 28
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 302
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@3
    move-result v24

    #@4
    .line 303
    .local v24, "widthMode":I
    const/high16 v25, 0x40000000    # 2.0f

    #@6
    move/from16 v0, v24

    #@8
    move/from16 v1, v25

    #@a
    if-eq v0, v1, :cond_0

    #@c
    .line 304
    new-instance v25, Ljava/lang/IllegalStateException;

    #@e
    new-instance v26, Ljava/lang/StringBuilder;

    #@10
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getClass()Ljava/lang/Class;

    #@16
    move-result-object v27

    #@17
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@1a
    move-result-object v27

    #@1b
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v26

    #@1f
    const-string/jumbo v27, " can only be used "

    #@22
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v26

    #@26
    .line 305
    const-string/jumbo v27, "with android:layout_width=\"match_parent\" (or fill_parent)"

    #@29
    .line 304
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v26

    #@2d
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v26

    #@31
    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@34
    throw v25

    #@35
    .line 308
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@38
    move-result v12

    #@39
    .line 309
    .local v12, "heightMode":I
    if-nez v12, :cond_1

    #@3b
    .line 310
    new-instance v25, Ljava/lang/IllegalStateException;

    #@3d
    new-instance v26, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getClass()Ljava/lang/Class;

    #@45
    move-result-object v27

    #@46
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@49
    move-result-object v27

    #@4a
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v26

    #@4e
    const-string/jumbo v27, " can only be used "

    #@51
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v26

    #@55
    .line 311
    const-string/jumbo v27, "with android:layout_height=\"wrap_content\""

    #@58
    .line 310
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v26

    #@5c
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v26

    #@60
    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@63
    throw v25

    #@64
    .line 314
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@67
    move-result v5

    #@68
    .line 316
    .local v5, "contentWidth":I
    move-object/from16 v0, p0

    #@6a
    iget v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    #@6c
    move/from16 v25, v0

    #@6e
    if-lez v25, :cond_8

    #@70
    .line 317
    move-object/from16 v0, p0

    #@72
    iget v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    #@74
    move/from16 v16, v0

    #@76
    .line 319
    .local v16, "maxHeight":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingTop()I

    #@79
    move-result v25

    #@7a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingBottom()I

    #@7d
    move-result v26

    #@7e
    add-int v23, v25, v26

    #@80
    .line 320
    .local v23, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingLeft()I

    #@83
    move-result v25

    #@84
    sub-int v25, v5, v25

    #@86
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getPaddingRight()I

    #@89
    move-result v26

    #@8a
    sub-int v3, v25, v26

    #@8c
    .line 321
    .local v3, "availableWidth":I
    sub-int v11, v16, v23

    #@8e
    .line 322
    .local v11, "height":I
    const/high16 v25, -0x80000000

    #@90
    move/from16 v0, v25

    #@92
    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@95
    move-result v4

    #@96
    .line 324
    .local v4, "childSpecHeight":I
    move-object/from16 v0, p0

    #@98
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    #@9a
    move-object/from16 v25, v0

    #@9c
    if-eqz v25, :cond_2

    #@9e
    .line 325
    move-object/from16 v0, p0

    #@a0
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    #@a2
    move-object/from16 v25, v0

    #@a4
    const/16 v26, 0x0

    #@a6
    move-object/from16 v0, p0

    #@a8
    move-object/from16 v1, v25

    #@aa
    move/from16 v2, v26

    #@ac
    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    #@af
    move-result v3

    #@b0
    .line 326
    move-object/from16 v0, p0

    #@b2
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mClose:Landroid/view/View;

    #@b4
    move-object/from16 v25, v0

    #@b6
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@b9
    move-result-object v15

    #@ba
    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    #@bc
    .line 327
    .local v15, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@be
    move/from16 v25, v0

    #@c0
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@c2
    move/from16 v26, v0

    #@c4
    add-int v25, v25, v26

    #@c6
    sub-int v3, v3, v25

    #@c8
    .line 330
    .end local v15    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    move-object/from16 v0, p0

    #@ca
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    #@cc
    move-object/from16 v25, v0

    #@ce
    if-eqz v25, :cond_3

    #@d0
    move-object/from16 v0, p0

    #@d2
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    #@d4
    move-object/from16 v25, v0

    #@d6
    invoke-virtual/range {v25 .. v25}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    #@d9
    move-result-object v25

    #@da
    move-object/from16 v0, v25

    #@dc
    move-object/from16 v1, p0

    #@de
    if-ne v0, v1, :cond_3

    #@e0
    .line 331
    move-object/from16 v0, p0

    #@e2
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    #@e4
    move-object/from16 v25, v0

    #@e6
    .line 332
    const/16 v26, 0x0

    #@e8
    .line 331
    move-object/from16 v0, p0

    #@ea
    move-object/from16 v1, v25

    #@ec
    move/from16 v2, v26

    #@ee
    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    #@f1
    move-result v3

    #@f2
    .line 335
    :cond_3
    move-object/from16 v0, p0

    #@f4
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@f6
    move-object/from16 v25, v0

    #@f8
    if-eqz v25, :cond_5

    #@fa
    move-object/from16 v0, p0

    #@fc
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    #@fe
    move-object/from16 v25, v0

    #@100
    if-nez v25, :cond_5

    #@102
    .line 336
    move-object/from16 v0, p0

    #@104
    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleOptional:Z

    #@106
    move/from16 v25, v0

    #@108
    if-eqz v25, :cond_b

    #@10a
    .line 338
    const/16 v25, 0x0

    #@10c
    .line 337
    move/from16 v0, v25

    #@10e
    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    #@111
    move-result v21

    #@112
    .line 339
    .local v21, "titleWidthSpec":I
    move-object/from16 v0, p0

    #@114
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@116
    move-object/from16 v25, v0

    #@118
    move-object/from16 v0, v25

    #@11a
    move/from16 v1, v21

    #@11c
    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->measure(II)V

    #@11f
    .line 340
    move-object/from16 v0, p0

    #@121
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@123
    move-object/from16 v25, v0

    #@125
    invoke-virtual/range {v25 .. v25}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    #@128
    move-result v20

    #@129
    .line 341
    .local v20, "titleWidth":I
    move/from16 v0, v20

    #@12b
    if-gt v0, v3, :cond_9

    #@12d
    const/16 v19, 0x1

    #@12f
    .line 342
    .local v19, "titleFits":Z
    :goto_1
    if-eqz v19, :cond_4

    #@131
    .line 343
    sub-int v3, v3, v20

    #@133
    .line 345
    :cond_4
    move-object/from16 v0, p0

    #@135
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@137
    move-object/from16 v26, v0

    #@139
    if-eqz v19, :cond_a

    #@13b
    const/16 v25, 0x0

    #@13d
    :goto_2
    move-object/from16 v0, v26

    #@13f
    move/from16 v1, v25

    #@141
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    #@144
    .line 351
    .end local v19    # "titleFits":Z
    .end local v20    # "titleWidth":I
    .end local v21    # "titleWidthSpec":I
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    #@146
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    #@148
    move-object/from16 v25, v0

    #@14a
    if-eqz v25, :cond_6

    #@14c
    .line 352
    move-object/from16 v0, p0

    #@14e
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    #@150
    move-object/from16 v25, v0

    #@152
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@155
    move-result-object v14

    #@156
    .line 353
    .local v14, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@158
    move/from16 v25, v0

    #@15a
    const/16 v26, -0x2

    #@15c
    move/from16 v0, v25

    #@15e
    move/from16 v1, v26

    #@160
    if-eq v0, v1, :cond_c

    #@162
    .line 354
    const/high16 v10, 0x40000000    # 2.0f

    #@164
    .line 355
    .local v10, "customWidthMode":I
    :goto_4
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@166
    move/from16 v25, v0

    #@168
    if-ltz v25, :cond_d

    #@16a
    .line 356
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@16c
    move/from16 v25, v0

    #@16e
    move/from16 v0, v25

    #@170
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    #@173
    move-result v9

    #@174
    .line 357
    .local v9, "customWidth":I
    :goto_5
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@176
    move/from16 v25, v0

    #@178
    const/16 v26, -0x2

    #@17a
    move/from16 v0, v25

    #@17c
    move/from16 v1, v26

    #@17e
    if-eq v0, v1, :cond_e

    #@180
    .line 358
    const/high16 v8, 0x40000000    # 2.0f

    #@182
    .line 359
    .local v8, "customHeightMode":I
    :goto_6
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@184
    move/from16 v25, v0

    #@186
    if-ltz v25, :cond_f

    #@188
    .line 360
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@18a
    move/from16 v25, v0

    #@18c
    move/from16 v0, v25

    #@18e
    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    #@191
    move-result v7

    #@192
    .line 361
    .local v7, "customHeight":I
    :goto_7
    move-object/from16 v0, p0

    #@194
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    #@196
    move-object/from16 v25, v0

    #@198
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@19b
    move-result v26

    #@19c
    .line 362
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@19f
    move-result v27

    #@1a0
    .line 361
    invoke-virtual/range {v25 .. v27}, Landroid/view/View;->measure(II)V

    #@1a3
    .line 365
    .end local v7    # "customHeight":I
    .end local v8    # "customHeightMode":I
    .end local v9    # "customWidth":I
    .end local v10    # "customWidthMode":I
    .end local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    move-object/from16 v0, p0

    #@1a5
    iget v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    #@1a7
    move/from16 v25, v0

    #@1a9
    if-gtz v25, :cond_11

    #@1ab
    .line 366
    const/16 v17, 0x0

    #@1ad
    .line 367
    .local v17, "measuredHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarContextView;->getChildCount()I

    #@1b0
    move-result v6

    #@1b1
    .line 368
    .local v6, "count":I
    const/4 v13, 0x0

    #@1b2
    .local v13, "i":I
    :goto_8
    if-ge v13, v6, :cond_10

    #@1b4
    .line 369
    move-object/from16 v0, p0

    #@1b6
    invoke-virtual {v0, v13}, Lcom/android/internal/widget/ActionBarContextView;->getChildAt(I)Landroid/view/View;

    #@1b9
    move-result-object v22

    #@1ba
    .line 370
    .local v22, "v":Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredHeight()I

    #@1bd
    move-result v25

    #@1be
    add-int v18, v25, v23

    #@1c0
    .line 371
    .local v18, "paddedViewHeight":I
    move/from16 v0, v18

    #@1c2
    move/from16 v1, v17

    #@1c4
    if-le v0, v1, :cond_7

    #@1c6
    .line 372
    move/from16 v17, v18

    #@1c8
    .line 368
    :cond_7
    add-int/lit8 v13, v13, 0x1

    #@1ca
    goto :goto_8

    #@1cb
    .line 317
    .end local v3    # "availableWidth":I
    .end local v4    # "childSpecHeight":I
    .end local v6    # "count":I
    .end local v11    # "height":I
    .end local v13    # "i":I
    .end local v16    # "maxHeight":I
    .end local v17    # "measuredHeight":I
    .end local v18    # "paddedViewHeight":I
    .end local v22    # "v":Landroid/view/View;
    .end local v23    # "verticalPadding":I
    :cond_8
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@1ce
    move-result v16

    #@1cf
    .restart local v16    # "maxHeight":I
    goto/16 :goto_0

    #@1d1
    .line 341
    .restart local v3    # "availableWidth":I
    .restart local v4    # "childSpecHeight":I
    .restart local v11    # "height":I
    .restart local v20    # "titleWidth":I
    .restart local v21    # "titleWidthSpec":I
    .restart local v23    # "verticalPadding":I
    :cond_9
    const/16 v19, 0x0

    #@1d3
    .restart local v19    # "titleFits":Z
    goto/16 :goto_1

    #@1d5
    .line 345
    :cond_a
    const/16 v25, 0x8

    #@1d7
    goto/16 :goto_2

    #@1d9
    .line 347
    .end local v19    # "titleFits":Z
    .end local v20    # "titleWidth":I
    .end local v21    # "titleWidthSpec":I
    :cond_b
    move-object/from16 v0, p0

    #@1db
    iget-object v0, v0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@1dd
    move-object/from16 v25, v0

    #@1df
    const/16 v26, 0x0

    #@1e1
    move-object/from16 v0, p0

    #@1e3
    move-object/from16 v1, v25

    #@1e5
    move/from16 v2, v26

    #@1e7
    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/internal/widget/ActionBarContextView;->measureChildView(Landroid/view/View;III)I

    #@1ea
    move-result v3

    #@1eb
    goto/16 :goto_3

    #@1ed
    .line 354
    .restart local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    const/high16 v10, -0x80000000

    #@1ef
    .restart local v10    # "customWidthMode":I
    goto/16 :goto_4

    #@1f1
    .line 356
    :cond_d
    move v9, v3

    #@1f2
    .restart local v9    # "customWidth":I
    goto :goto_5

    #@1f3
    .line 358
    :cond_e
    const/high16 v8, -0x80000000

    #@1f5
    .restart local v8    # "customHeightMode":I
    goto :goto_6

    #@1f6
    .line 360
    :cond_f
    move v7, v11

    #@1f7
    .restart local v7    # "customHeight":I
    goto :goto_7

    #@1f8
    .line 375
    .end local v7    # "customHeight":I
    .end local v8    # "customHeightMode":I
    .end local v9    # "customWidth":I
    .end local v10    # "customWidthMode":I
    .end local v14    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v6    # "count":I
    .restart local v13    # "i":I
    .restart local v17    # "measuredHeight":I
    :cond_10
    move-object/from16 v0, p0

    #@1fa
    move/from16 v1, v17

    #@1fc
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    #@1ff
    .line 301
    .end local v6    # "count":I
    .end local v13    # "i":I
    .end local v17    # "measuredHeight":I
    :goto_9
    return-void

    #@200
    .line 377
    :cond_11
    move-object/from16 v0, p0

    #@202
    move/from16 v1, v16

    #@204
    invoke-virtual {v0, v5, v1}, Lcom/android/internal/widget/ActionBarContextView;->setMeasuredDimension(II)V

    #@207
    goto :goto_9
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "height"    # I

    #@0
    .prologue
    .line 138
    iput p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    #@2
    .line 137
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 142
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 143
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    #@7
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    #@a
    .line 145
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    #@c
    .line 146
    if-eqz p1, :cond_1

    #@e
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 147
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@14
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarContextView;->removeView(Landroid/view/View;)V

    #@17
    .line 148
    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    #@19
    .line 150
    :cond_1
    if-eqz p1, :cond_2

    #@1b
    .line 151
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;)V

    #@1e
    .line 153
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->requestLayout()V

    #@21
    .line 141
    return-void
.end method

.method public setSplitToolbar(Z)V
    .locals 6
    .param p1, "split"    # Z

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 106
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitActionBar:Z

    #@4
    if-eq v2, p1, :cond_2

    #@6
    .line 107
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@8
    if-eqz v2, :cond_1

    #@a
    .line 109
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    #@c
    const/4 v2, -0x2

    #@d
    invoke-direct {v0, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@10
    .line 111
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-nez p1, :cond_3

    #@12
    .line 112
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@14
    invoke-virtual {v2, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Landroid/widget/ActionMenuView;

    #@1a
    iput-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    #@1c
    .line 113
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    #@1e
    invoke-virtual {v2, v3}, Landroid/widget/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    #@21
    .line 114
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    #@23
    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    #@26
    move-result-object v1

    #@27
    check-cast v1, Landroid/view/ViewGroup;

    #@29
    .line 115
    .local v1, "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    #@2b
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    #@2d
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@30
    .line 116
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    #@32
    invoke-virtual {p0, v2, v0}, Lcom/android/internal/widget/ActionBarContextView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@35
    .line 133
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "oldParent":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    #@38
    .line 105
    :cond_2
    return-void

    #@39
    .line 119
    .restart local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@3b
    .line 120
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@46
    move-result-object v3

    #@47
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    #@49
    const/4 v4, 0x1

    #@4a
    .line 119
    invoke-virtual {v2, v3, v4}, Landroid/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    #@4d
    .line 122
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@4f
    const v3, 0x7fffffff

    #@52
    invoke-virtual {v2, v3}, Landroid/widget/ActionMenuPresenter;->setItemLimit(I)V

    #@55
    .line 124
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@57
    .line 125
    iget v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mContentHeight:I

    #@59
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@5b
    .line 126
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@5d
    invoke-virtual {v2, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    #@60
    move-result-object v2

    #@61
    check-cast v2, Landroid/widget/ActionMenuView;

    #@63
    iput-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    #@65
    .line 127
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    #@67
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    #@69
    invoke-virtual {v2, v3}, Landroid/widget/ActionMenuView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    #@6c
    .line 128
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    #@6e
    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    #@71
    move-result-object v1

    #@72
    check-cast v1, Landroid/view/ViewGroup;

    #@74
    .line 129
    .restart local v1    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_4

    #@76
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    #@78
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@7b
    .line 130
    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->mSplitView:Landroid/view/ViewGroup;

    #@7d
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->mMenuView:Landroid/widget/ActionMenuView;

    #@7f
    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@82
    goto :goto_0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mSubtitle:Ljava/lang/CharSequence;

    #@2
    .line 163
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->initTitle()V

    #@5
    .line 161
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    #@2
    .line 158
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarContextView;->initTitle()V

    #@5
    .line 156
    return-void
.end method

.method public setTitleOptional(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    #@0
    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleOptional:Z

    #@2
    if-eq p1, v0, :cond_0

    #@4
    .line 433
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->requestLayout()V

    #@7
    .line 435
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarContextView;->mTitleOptional:Z

    #@9
    .line 431
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    #@0
    .prologue
    .line 415
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    #@0
    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 267
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    #@6
    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 269
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method
