.class public final Lcom/android/internal/view/menu/IconMenuItemView;
.super Landroid/widget/TextView;
.source "IconMenuItemView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuView$ItemView;


# static fields
.field private static final blacklist NO_ALPHA:I = 0xff

.field private static blacklist sPrependShortcutLabel:Ljava/lang/String;


# instance fields
.field private blacklist mDisabledAlpha:F

.field private blacklist mIcon:Landroid/graphics/drawable/Drawable;

.field private blacklist mIconMenuView:Lcom/android/internal/view/menu/IconMenuView;

.field private blacklist mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

.field private blacklist mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

.field private blacklist mPositionIconAvailable:Landroid/graphics/Rect;

.field private blacklist mPositionIconOutput:Landroid/graphics/Rect;

.field private blacklist mShortcutCaption:Ljava/lang/String;

.field private blacklist mShortcutCaptionMode:Z

.field private blacklist mTextAppearance:I

.field private blacklist mTextAppearanceContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/view/menu/IconMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/view/menu/IconMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 88
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mPositionIconAvailable:Landroid/graphics/Rect;

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mPositionIconOutput:Landroid/graphics/Rect;

    .line 65
    sget-object v0, Lcom/android/internal/view/menu/IconMenuItemView;->sPrependShortcutLabel:Ljava/lang/String;

    if-nez v0, :cond_22

    .line 70
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10408d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/menu/IconMenuItemView;->sPrependShortcutLabel:Ljava/lang/String;

    .line 74
    :cond_22
    sget-object v0, Lcom/android/internal/R$styleable;->MenuView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x6

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mDisabledAlpha:F

    .line 79
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mTextAppearance:I

    .line 81
    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    .line 83
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    return-void
.end method

.method private blacklist positionIcon()V
    .registers 12

    .line 295
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    .line 296
    return-void

    .line 300
    :cond_5
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mPositionIconOutput:Landroid/graphics/Rect;

    .line 301
    .local v0, "tmpRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 302
    iget-object v2, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mPositionIconAvailable:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 303
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->getLayoutDirection()I

    move-result v10

    .line 304
    .local v10, "layoutDirection":I
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 305
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mPositionIconAvailable:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mPositionIconOutput:Landroid/graphics/Rect;

    .line 304
    const v5, 0x800013

    invoke-static/range {v5 .. v10}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 307
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mPositionIconOutput:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 308
    return-void
.end method


# virtual methods
.method protected whitelist drawableStateChanged()V
    .registers 5

    .line 244
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 246
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_32

    .line 249
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->isPressed()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_21

    :cond_1f
    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    .line 250
    .local v0, "isInAlphaState":Z
    :goto_22
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2d

    iget v2, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mDisabledAlpha:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_2f

    :cond_2d
    const/16 v2, 0xff

    :goto_2f
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 252
    .end local v0    # "isInAlphaState":Z
    :cond_32
    return-void
.end method

.method public blacklist getItemData()Lcom/android/internal/view/menu/MenuItemImpl;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
        retrieveReturn = true
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method greylist getTextAppropriateLayoutParams()Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    .registers 7

    .line 275
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    .line 276
    .local v0, "lp":Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    if-nez v0, :cond_f

    .line 278
    new-instance v1, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 283
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v4

    .line 283
    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v3, v4}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->desiredWidth:I

    .line 286
    return-object v0
.end method

.method public blacklist initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V
    .registers 5
    .param p1, "itemData"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .line 122
    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 124
    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/android/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/menu/IconMenuItemView;->initialize(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 126
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    goto :goto_17

    :cond_15
    const/16 v0, 0x8

    :goto_17
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setVisibility(I)V

    .line 127
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setEnabled(Z)V

    .line 128
    return-void
.end method

.method blacklist initialize(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setClickable(Z)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setFocusable(Z)V

    .line 103
    iget v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mTextAppearance:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    .line 104
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mTextAppearance:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/menu/IconMenuItemView;->setTextAppearance(Landroid/content/Context;I)V

    .line 107
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/IconMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {p0, p2}, Lcom/android/internal/view/menu/IconMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_39

    .line 111
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 112
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/IconMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_30

    .line 115
    :cond_2d
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 117
    :goto_30
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/IconMenuItemView;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 119
    .end local v0    # "contentDescription":Ljava/lang/CharSequence;
    :cond_39
    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 256
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 258
    invoke-direct {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->positionIcon()V

    .line 259
    return-void
.end method

.method protected whitelist onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .line 263
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 266
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->getTextAppropriateLayoutParams()Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    return-void
.end method

.method public whitelist performClick()Z
    .registers 5

    .line 137
    invoke-super {p0}, Landroid/widget/TextView;->performClick()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 138
    return v1

    .line 141
    :cond_8
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    iget-object v3, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-interface {v0, v3}, Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 142
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/IconMenuItemView;->playSoundEffect(I)V

    .line 143
    return v1

    .line 145
    :cond_1b
    return v2
.end method

.method public blacklist prefersCondensedTitle()Z
    .registers 2

    .line 329
    const/4 v0, 0x1

    return v0
.end method

.method blacklist setCaptionMode(Z)V
    .registers 4
    .param p1, "shortcut"    # Z

    .line 169
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    if-nez v0, :cond_5

    .line 170
    return-void

    .line 173
    :cond_5
    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mShortcutCaptionMode:Z

    .line 175
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/android/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 177
    .local v0, "text":Ljava/lang/CharSequence;
    iget-boolean v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mShortcutCaptionMode:Z

    if-eqz v1, :cond_2c

    .line 179
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mShortcutCaption:Ljava/lang/String;

    if-nez v1, :cond_2a

    .line 180
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mShortcutCaption:Ljava/lang/String;

    .line 183
    :cond_2a
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mShortcutCaption:Ljava/lang/String;

    .line 186
    :cond_2c
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    return-void
.end method

.method public blacklist setCheckable(Z)V
    .registers 2
    .param p1, "checkable"    # Z

    .line 311
    return-void
.end method

.method public blacklist setChecked(Z)V
    .registers 2
    .param p1, "checked"    # Z

    .line 314
    return-void
.end method

.method public blacklist setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 190
    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 192
    const/4 v0, 0x0

    if-eqz p1, :cond_1d

    .line 195
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 198
    invoke-virtual {p0, v0, p1, v0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 201
    const/16 v0, 0x51

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setGravity(I)V

    .line 208
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuItemView;->requestLayout()V

    goto :goto_25

    .line 210
    :cond_1d
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 213
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setGravity(I)V

    .line 215
    :goto_25
    return-void
.end method

.method greylist setIconMenuView(Lcom/android/internal/view/menu/IconMenuView;)V
    .registers 2
    .param p1, "iconMenuView"    # Lcom/android/internal/view/menu/IconMenuView;

    .line 239
    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIconMenuView:Lcom/android/internal/view/menu/IconMenuView;

    .line 240
    return-void
.end method

.method public blacklist setItemData(Lcom/android/internal/view/menu/MenuItemImpl;)V
    .registers 2
    .param p1, "data"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .line 131
    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 132
    return-void
.end method

.method public greylist setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .registers 2
    .param p1, "itemInvoker"    # Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    .line 219
    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    .line 220
    return-void
.end method

.method public blacklist setShortcut(ZC)V
    .registers 4
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .line 318
    iget-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mShortcutCaptionMode:Z

    if-eqz v0, :cond_b

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mShortcutCaption:Ljava/lang/String;

    .line 324
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setCaptionMode(Z)V

    .line 326
    :cond_b
    return-void
.end method

.method public blacklist setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 151
    iget-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mShortcutCaptionMode:Z

    if-eqz v0, :cond_9

    .line 157
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setCaptionMode(Z)V

    goto :goto_e

    .line 159
    :cond_9
    if-eqz p1, :cond_e

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/IconMenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :cond_e
    :goto_e
    return-void
.end method

.method public whitelist setVisibility(I)V
    .registers 3
    .param p1, "v"    # I

    .line 229
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIconMenuView:Lcom/android/internal/view/menu/IconMenuView;

    if-eqz v0, :cond_c

    .line 233
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuItemView;->mIconMenuView:Lcom/android/internal/view/menu/IconMenuView;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/IconMenuView;->markStaleChildren()V

    .line 235
    :cond_c
    return-void
.end method

.method public blacklist showsIcon()Z
    .registers 2

    .line 333
    const/4 v0, 0x1

    return v0
.end method
