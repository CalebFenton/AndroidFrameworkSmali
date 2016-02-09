.class public final Lcom/android/internal/view/menu/IconMenuItemView;
.super Landroid/widget/TextView;
.source "IconMenuItemView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuView$ItemView;


# static fields
.field private static final NO_ALPHA:I = 0xff

.field private static sPrependShortcutLabel:Ljava/lang/String;


# instance fields
.field private mDisabledAlpha:F

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconMenuView:Lcom/android/internal/view/menu/IconMenuView;

.field private mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

.field private mPositionIconAvailable:Landroid/graphics/Rect;

.field private mPositionIconOutput:Landroid/graphics/Rect;

.field private mShortcutCaption:Ljava/lang/String;

.field private mShortcutCaptionMode:Z

.field private mTextAppearance:I

.field private mTextAppearanceContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 89
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/view/menu/IconMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 85
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/view/menu/IconMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 84
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
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 52
    new-instance v1, Landroid/graphics/Rect;

    #@5
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mPositionIconAvailable:Landroid/graphics/Rect;

    #@a
    .line 53
    new-instance v1, Landroid/graphics/Rect;

    #@c
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mPositionIconOutput:Landroid/graphics/Rect;

    #@11
    .line 63
    sget-object v1, Lcom/android/internal/view/menu/IconMenuItemView;->sPrependShortcutLabel:Ljava/lang/String;

    #@13
    if-nez v1, :cond_0

    #@15
    .line 68
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->getResources()Landroid/content/res/Resources;

    #@18
    move-result-object v1

    #@19
    .line 69
    const v2, 0x1040312

    #@1c
    .line 68
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    sput-object v1, Lcom/android/internal/view/menu/IconMenuItemView;->sPrependShortcutLabel:Ljava/lang/String;

    #@22
    .line 73
    :cond_0
    sget-object v1, Lcom/android/internal/R$styleable;->MenuView:[I

    #@24
    .line 72
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@27
    move-result-object v0

    #@28
    .line 76
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x6

    #@29
    const v2, 0x3f4ccccd    # 0.8f

    #@2c
    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@2f
    move-result v1

    #@30
    iput v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mDisabledAlpha:F

    #@32
    .line 77
    const/4 v1, 0x1

    #@33
    .line 78
    const/4 v2, -0x1

    #@34
    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@37
    move-result v1

    #@38
    iput v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mTextAppearance:I

    #@3a
    .line 79
    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    #@3c
    .line 81
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@3f
    .line 60
    return-void
.end method

.method private positionIcon()V
    .locals 7

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 279
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 280
    return-void

    #@6
    .line 284
    :cond_0
    iget-object v6, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mPositionIconOutput:Landroid/graphics/Rect;

    #@8
    .line 285
    .local v6, "tmpRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v3, v6}, Lcom/android/internal/view/menu/IconMenuItemView;->getLineBounds(ILandroid/graphics/Rect;)I

    #@b
    .line 286
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mPositionIconAvailable:Landroid/graphics/Rect;

    #@d
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->getWidth()I

    #@10
    move-result v1

    #@11
    iget v2, v6, Landroid/graphics/Rect;->top:I

    #@13
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    #@16
    .line 287
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->getLayoutDirection()I

    #@19
    move-result v5

    #@1a
    .line 288
    .local v5, "layoutDirection":I
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    #@1c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@1f
    move-result v1

    #@20
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    #@22
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@25
    move-result v2

    #@26
    .line 289
    iget-object v3, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mPositionIconAvailable:Landroid/graphics/Rect;

    #@28
    iget-object v4, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mPositionIconOutput:Landroid/graphics/Rect;

    #@2a
    .line 288
    const v0, 0x800013

    #@2d
    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    #@30
    .line 291
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    #@32
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mPositionIconOutput:Landroid/graphics/Rect;

    #@34
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@37
    .line 277
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    #@0
    .prologue
    .line 230
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    #@3
    .line 232
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    #@5
    if-eqz v1, :cond_1

    #@7
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 235
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    #@d
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_0

    #@13
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->isPressed()Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_2

    #@19
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->isFocused()Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_2

    #@1f
    :cond_0
    const/4 v0, 0x0

    #@20
    .line 236
    .local v0, "isInAlphaState":Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    #@22
    if-eqz v0, :cond_3

    #@24
    iget v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mDisabledAlpha:F

    #@26
    const/high16 v3, 0x437f0000    # 255.0f

    #@28
    mul-float/2addr v1, v3

    #@29
    float-to-int v1, v1

    #@2a
    :goto_1
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@2d
    .line 229
    .end local v0    # "isInAlphaState":Z
    :cond_1
    return-void

    #@2e
    .line 235
    :cond_2
    const/4 v0, 0x1

    #@2f
    .restart local v0    # "isInAlphaState":Z
    goto :goto_0

    #@30
    .line 236
    :cond_3
    const/16 v1, 0xff

    #@32
    goto :goto_1
.end method

.method public getItemData()Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
        retrieveReturn = true
    .end annotation

    #@0
    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    #@2
    return-object v0
.end method

.method getTextAppropriateLayoutParams()Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    .locals 3

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 260
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    #@7
    .line 261
    .local v0, "lp":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    if-nez v0, :cond_0

    #@9
    .line 263
    new-instance v0, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    #@b
    .end local v0    # "lp":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    invoke-direct {v0, v1, v1}, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;-><init>(II)V

    #@e
    .line 268
    .restart local v0    # "lp":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->getText()Ljava/lang/CharSequence;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->getPaint()Landroid/text/TextPaint;

    #@15
    move-result-object v2

    #@16
    invoke-static {v1, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    #@19
    move-result v1

    #@1a
    float-to-int v1, v1

    #@1b
    iput v1, v0, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->desiredWidth:I

    #@1d
    .line 270
    return-object v0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V
    .locals 2
    .param p1, "itemData"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    #@0
    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    #@2
    .line 112
    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/android/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/menu/IconMenuItemView;->initialize(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    #@d
    .line 114
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    const/4 v0, 0x0

    #@14
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setVisibility(I)V

    #@17
    .line 115
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    #@1a
    move-result v0

    #@1b
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setEnabled(Z)V

    #@1e
    .line 109
    return-void

    #@1f
    .line 114
    :cond_0
    const/16 v0, 0x8

    #@21
    goto :goto_0
.end method

.method initialize(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 98
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setClickable(Z)V

    #@4
    .line 99
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setFocusable(Z)V

    #@7
    .line 101
    iget v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mTextAppearance:I

    #@9
    const/4 v1, -0x1

    #@a
    if-eq v0, v1, :cond_0

    #@c
    .line 102
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    #@e
    iget v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mTextAppearance:I

    #@10
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/menu/IconMenuItemView;->setTextAppearance(Landroid/content/Context;I)V

    #@13
    .line 105
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/IconMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    #@16
    .line 106
    invoke-virtual {p0, p2}, Lcom/android/internal/view/menu/IconMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    #@19
    .line 97
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    .line 242
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    #@3
    .line 244
    invoke-direct {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->positionIcon()V

    #@6
    .line 241
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    #@0
    .prologue
    .line 249
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    #@3
    .line 252
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->getTextAppropriateLayoutParams()Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@a
    .line 248
    return-void
.end method

.method public performClick()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 125
    invoke-super {p0}, Landroid/widget/TextView;->performClick()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 126
    return v3

    #@9
    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    #@b
    if-eqz v0, :cond_1

    #@d
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    #@f
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    #@11
    invoke-interface {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 130
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/IconMenuItemView;->playSoundEffect(I)V

    #@1a
    .line 131
    return v3

    #@1b
    .line 133
    :cond_1
    return v2
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    #@0
    .prologue
    .line 313
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method setCaptionMode(Z)V
    .locals 2
    .param p1, "shortcut"    # Z

    #@0
    .prologue
    .line 157
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 158
    return-void

    #@5
    .line 161
    :cond_0
    if-eqz p1, :cond_3

    #@7
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    #@9
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    #@c
    move-result v1

    #@d
    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mShortcutCaptionMode:Z

    #@f
    .line 163
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    #@11
    invoke-virtual {v1, p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/android/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    #@14
    move-result-object v0

    #@15
    .line 165
    .local v0, "text":Ljava/lang/CharSequence;
    iget-boolean v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mShortcutCaptionMode:Z

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 167
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mShortcutCaption:Ljava/lang/String;

    #@1b
    if-nez v1, :cond_1

    #@1d
    .line 168
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    #@1f
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    iput-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mShortcutCaption:Ljava/lang/String;

    #@25
    .line 171
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mShortcutCaption:Ljava/lang/String;

    #@27
    .line 174
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setText(Ljava/lang/CharSequence;)V

    #@2a
    .line 152
    return-void

    #@2b
    .line 161
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_3
    const/4 v1, 0x0

    #@2c
    goto :goto_0
.end method

.method public setCheckable(Z)V
    .locals 0
    .param p1, "checkable"    # Z

    #@0
    .prologue
    .line 294
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    #@0
    .prologue
    .line 297
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 178
    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    #@4
    .line 180
    if-eqz p1, :cond_0

    #@6
    .line 183
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@9
    move-result v0

    #@a
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@d
    move-result v1

    #@e
    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@11
    .line 186
    invoke-virtual {p0, v2, p1, v2, v2}, Lcom/android/internal/view/menu/IconMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@14
    .line 189
    const/16 v0, 0x51

    #@16
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setGravity(I)V

    #@19
    .line 196
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->requestLayout()V

    #@1c
    .line 177
    :goto_0
    return-void

    #@1d
    .line 198
    :cond_0
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/android/internal/view/menu/IconMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@20
    .line 201
    const/16 v0, 0x11

    #@22
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setGravity(I)V

    #@25
    goto :goto_0
.end method

.method setIconMenuView(Lcom/android/internal/view/menu/IconMenuView;)V
    .locals 0
    .param p1, "iconMenuView"    # Lcom/android/internal/view/menu/IconMenuView;

    #@0
    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIconMenuView:Lcom/android/internal/view/menu/IconMenuView;

    #@2
    .line 224
    return-void
.end method

.method public setItemData(Lcom/android/internal/view/menu/MenuItemImpl;)V
    .locals 0
    .param p1, "data"    # Lcom/android/internal/view/menu/MenuItemImpl;

    #@0
    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    #@2
    .line 118
    return-void
.end method

.method public setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0
    .param p1, "itemInvoker"    # Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    #@0
    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    #@2
    .line 205
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 1
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    #@0
    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mShortcutCaptionMode:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 307
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mShortcutCaption:Ljava/lang/String;

    #@7
    .line 308
    const/4 v0, 0x1

    #@8
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setCaptionMode(Z)V

    #@b
    .line 300
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mShortcutCaptionMode:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 145
    const/4 v0, 0x1

    #@5
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setCaptionMode(Z)V

    #@8
    .line 137
    :cond_0
    :goto_0
    return-void

    #@9
    .line 147
    :cond_1
    if-eqz p1, :cond_0

    #@b
    .line 148
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/IconMenuItemView;->setText(Ljava/lang/CharSequence;)V

    #@e
    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "v"    # I

    #@0
    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    #@3
    .line 218
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIconMenuView:Lcom/android/internal/view/menu/IconMenuView;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 220
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIconMenuView:Lcom/android/internal/view/menu/IconMenuView;

    #@9
    invoke-virtual {v0}, Lcom/android/internal/view/menu/IconMenuView;->markStaleChildren()V

    #@c
    .line 215
    :cond_0
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    #@0
    .prologue
    .line 317
    const/4 v0, 0x1

    #@1
    return v0
.end method
