.class public Lcom/android/internal/view/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ListMenuItemView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuView$ItemView;


# static fields
.field private static final TAG:Ljava/lang/String; = "ListMenuItemView"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mForceShowIcon:Z

.field private mIconView:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mMenuType:I

.field private mPreserveIconSpacing:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mShortcutView:Landroid/widget/TextView;

.field private mTextAppearance:I

.field private mTextAppearanceContext:Landroid/content/Context;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 80
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/view/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 76
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/view/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 75
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
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 63
    sget-object v1, Lcom/android/internal/R$styleable;->MenuView:[I

    #@5
    .line 62
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@8
    move-result-object v0

    #@9
    .line 65
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x5

    #@a
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    #@10
    .line 66
    const/4 v1, 0x1

    #@11
    .line 67
    const/4 v2, -0x1

    #@12
    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@15
    move-result v1

    #@16
    iput v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    #@18
    .line 69
    const/4 v1, 0x7

    #@19
    const/4 v2, 0x0

    #@1a
    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1d
    move-result v1

    #@1e
    iput-boolean v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    #@20
    .line 70
    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    #@22
    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@25
    .line 59
    return-void
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .locals 1

    #@0
    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 273
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mContext:Landroid/content/Context;

    #@6
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    #@c
    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    #@e
    return-object v0
.end method

.method private insertCheckBox()V
    .locals 3

    #@0
    .prologue
    .line 256
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    #@3
    move-result-object v0

    #@4
    .line 258
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x1090074

    #@7
    .line 259
    const/4 v2, 0x0

    #@8
    .line 258
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Landroid/widget/CheckBox;

    #@e
    .line 257
    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    #@10
    .line 260
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    #@12
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ListMenuItemView;->addView(Landroid/view/View;)V

    #@15
    .line 255
    return-void
.end method

.method private insertIconView()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 241
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    #@4
    move-result-object v0

    #@5
    .line 242
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x1090075

    #@8
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Landroid/widget/ImageView;

    #@e
    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    #@10
    .line 244
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    #@12
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/view/menu/ListMenuItemView;->addView(Landroid/view/View;I)V

    #@15
    .line 240
    return-void
.end method

.method private insertRadioButton()V
    .locals 3

    #@0
    .prologue
    .line 248
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    #@3
    move-result-object v0

    #@4
    .line 250
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x1090077

    #@7
    .line 251
    const/4 v2, 0x0

    #@8
    .line 250
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Landroid/widget/RadioButton;

    #@e
    .line 249
    iput-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    #@10
    .line 252
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    #@12
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ListMenuItemView;->addView(Landroid/view/View;)V

    #@15
    .line 247
    return-void
.end method


# virtual methods
.method public getItemData()Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 1

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    #@2
    return-object v0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V
    .locals 2
    .param p1, "itemData"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    #@0
    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    #@2
    .line 100
    iput p2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mMenuType:I

    #@4
    .line 102
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->setVisibility(I)V

    #@e
    .line 104
    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/android/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    #@15
    .line 105
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isCheckable()Z

    #@18
    move-result v0

    #@19
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->setCheckable(Z)V

    #@1c
    .line 106
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    #@1f
    move-result v0

    #@20
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getShortcut()C

    #@23
    move-result v1

    #@24
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/menu/ListMenuItemView;->setShortcut(ZC)V

    #@27
    .line 107
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    #@2e
    .line 108
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    #@31
    move-result v0

    #@32
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->setEnabled(Z)V

    #@35
    .line 98
    return-void

    #@36
    .line 102
    :cond_0
    const/16 v0, 0x8

    #@38
    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    #@0
    .prologue
    .line 85
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    #@3
    .line 87
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    #@5
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@8
    .line 89
    const v0, 0x1020016

    #@b
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/widget/TextView;

    #@11
    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    #@13
    .line 90
    iget v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    #@15
    const/4 v1, -0x1

    #@16
    if-eq v0, v1, :cond_0

    #@18
    .line 91
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    #@1a
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    #@1c
    .line 92
    iget v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    #@1e
    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    #@21
    .line 95
    :cond_0
    const v0, 0x1020357

    #@24
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Landroid/widget/TextView;

    #@2a
    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    #@2c
    .line 84
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    .line 280
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 282
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    #@9
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 283
    const/4 v0, 0x1

    #@10
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    #@13
    .line 279
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    .line 229
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    #@2
    if-eqz v2, :cond_0

    #@4
    iget-boolean v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 231
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@b
    move-result-object v1

    #@c
    .line 232
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    #@e
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    #@14
    .line 233
    .local v0, "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@16
    if-lez v2, :cond_0

    #@18
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@1a
    if-gtz v2, :cond_0

    #@1c
    .line 234
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@1e
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    #@20
    .line 237
    .end local v0    # "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@23
    .line 228
    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    #@0
    .prologue
    .line 264
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public setCheckable(Z)V
    .locals 5
    .param p1, "checkable"    # Z

    #@0
    .prologue
    const/16 v4, 0x8

    #@2
    .line 130
    if-nez p1, :cond_0

    #@4
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    #@6
    if-nez v3, :cond_0

    #@8
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    #@a
    if-nez v3, :cond_0

    #@c
    .line 131
    return-void

    #@d
    .line 139
    :cond_0
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    #@f
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_4

    #@15
    .line 140
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    #@17
    if-nez v3, :cond_1

    #@19
    .line 141
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->insertRadioButton()V

    #@1c
    .line 143
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    #@1e
    .line 144
    .local v0, "compoundButton":Landroid/widget/CompoundButton;
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    #@20
    .line 153
    .local v2, "otherCompoundButton":Landroid/widget/CompoundButton;
    :goto_0
    if-eqz p1, :cond_7

    #@22
    .line 154
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    #@24
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isChecked()Z

    #@27
    move-result v3

    #@28
    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    #@2b
    .line 156
    if-eqz p1, :cond_6

    #@2d
    const/4 v1, 0x0

    #@2e
    .line 157
    .local v1, "newVisibility":I
    :goto_1
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    #@31
    move-result v3

    #@32
    if-eq v3, v1, :cond_2

    #@34
    .line 158
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    #@37
    .line 162
    :cond_2
    if-eqz v2, :cond_3

    #@39
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->getVisibility()I

    #@3c
    move-result v3

    #@3d
    if-eq v3, v4, :cond_3

    #@3f
    .line 163
    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setVisibility(I)V

    #@42
    .line 129
    .end local v1    # "newVisibility":I
    :cond_3
    :goto_2
    return-void

    #@43
    .line 146
    .end local v0    # "compoundButton":Landroid/widget/CompoundButton;
    .end local v2    # "otherCompoundButton":Landroid/widget/CompoundButton;
    :cond_4
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    #@45
    if-nez v3, :cond_5

    #@47
    .line 147
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->insertCheckBox()V

    #@4a
    .line 149
    :cond_5
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    #@4c
    .line 150
    .restart local v0    # "compoundButton":Landroid/widget/CompoundButton;
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    #@4e
    .restart local v2    # "otherCompoundButton":Landroid/widget/CompoundButton;
    goto :goto_0

    #@4f
    .line 156
    :cond_6
    const/16 v1, 0x8

    #@51
    .restart local v1    # "newVisibility":I
    goto :goto_1

    #@52
    .line 166
    .end local v1    # "newVisibility":I
    :cond_7
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    #@54
    if-eqz v3, :cond_8

    #@56
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    #@58
    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    #@5b
    .line 167
    :cond_8
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    #@5d
    if-eqz v3, :cond_3

    #@5f
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    #@61
    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    #@64
    goto :goto_2
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    #@0
    .prologue
    .line 174
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    #@2
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 175
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    #@a
    if-nez v1, :cond_0

    #@c
    .line 176
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->insertRadioButton()V

    #@f
    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    #@11
    .line 186
    .local v0, "compoundButton":Landroid/widget/CompoundButton;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    #@14
    .line 171
    return-void

    #@15
    .line 180
    .end local v0    # "compoundButton":Landroid/widget/CompoundButton;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    #@17
    if-nez v1, :cond_2

    #@19
    .line 181
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->insertCheckBox()V

    #@1c
    .line 183
    :cond_2
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    #@1e
    .restart local v0    # "compoundButton":Landroid/widget/CompoundButton;
    goto :goto_0
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    #@0
    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    #@2
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    #@4
    .line 111
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 203
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    #@4
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->shouldShowIcon()Z

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_5

    #@a
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    #@c
    .line 204
    :goto_0
    if-nez v0, :cond_0

    #@e
    iget-boolean v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    #@10
    if-eqz v2, :cond_6

    #@12
    .line 208
    :cond_0
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    #@14
    if-nez v2, :cond_1

    #@16
    if-nez p1, :cond_1

    #@18
    iget-boolean v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    #@1a
    if-eqz v2, :cond_7

    #@1c
    .line 212
    :cond_1
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    #@1e
    if-nez v2, :cond_2

    #@20
    .line 213
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->insertIconView()V

    #@23
    .line 216
    :cond_2
    if-nez p1, :cond_3

    #@25
    iget-boolean v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    #@27
    if-eqz v2, :cond_9

    #@29
    .line 217
    :cond_3
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    #@2b
    if-eqz v0, :cond_8

    #@2d
    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@30
    .line 219
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    #@32
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    #@35
    move-result v1

    #@36
    if-eqz v1, :cond_4

    #@38
    .line 220
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    #@3a
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    #@3d
    .line 202
    :cond_4
    :goto_2
    return-void

    #@3e
    .line 203
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_5
    const/4 v0, 0x1

    #@3f
    .local v0, "showIcon":Z
    goto :goto_0

    #@40
    .line 205
    .end local v0    # "showIcon":Z
    :cond_6
    return-void

    #@41
    .line 209
    :cond_7
    return-void

    #@42
    :cond_8
    move-object p1, v1

    #@43
    .line 217
    goto :goto_1

    #@44
    .line 223
    :cond_9
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    #@46
    const/16 v2, 0x8

    #@48
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    #@4b
    goto :goto_2
.end method

.method public setShortcut(ZC)V
    .locals 3
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    #@0
    .prologue
    .line 190
    if-eqz p1, :cond_2

    #@2
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    #@4
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_2

    #@a
    .line 191
    const/4 v0, 0x0

    #@b
    .line 193
    .local v0, "newVisibility":I
    :goto_0
    if-nez v0, :cond_0

    #@d
    .line 194
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    #@f
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    #@11
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@18
    .line 197
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    #@1a
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    #@1d
    move-result v1

    #@1e
    if-eq v1, v0, :cond_1

    #@20
    .line 198
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    #@22
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    #@25
    .line 189
    :cond_1
    return-void

    #@26
    .line 191
    .end local v0    # "newVisibility":I
    :cond_2
    const/16 v0, 0x8

    #@28
    .restart local v0    # "newVisibility":I
    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/16 v2, 0x8

    #@2
    const/4 v1, 0x0

    #@3
    .line 116
    if-eqz p1, :cond_1

    #@5
    .line 117
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    #@7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@a
    .line 119
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    #@c
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    #@14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    #@17
    .line 115
    :cond_0
    :goto_0
    return-void

    #@18
    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    #@1a
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    #@1d
    move-result v0

    #@1e
    if-eq v0, v2, :cond_0

    #@20
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    #@22
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    #@25
    goto :goto_0
.end method

.method public showsIcon()Z
    .locals 1

    #@0
    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    #@2
    return v0
.end method
