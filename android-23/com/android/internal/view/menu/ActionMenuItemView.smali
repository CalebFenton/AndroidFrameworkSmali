.class public Lcom/android/internal/view/menu/ActionMenuItemView;
.super Landroid/widget/TextView;
.source "ActionMenuItemView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuView$ItemView;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;,
        Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;
    }
.end annotation


# static fields
.field private static final MAX_ICON_SIZE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "ActionMenuItemView"


# instance fields
.field private mAllowTextWithIcon:Z

.field private mExpandedFormat:Z

.field private mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

.field private mMaxIconSize:I

.field private mMinWidth:I

.field private mPopupCallback:Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;

.field private mSavedPaddingLeft:I

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method static synthetic -get0(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mPopupCallback:Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 61
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 65
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 69
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v2

    #@8
    .line 76
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x1120062

    #@b
    .line 75
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@e
    move-result v3

    #@f
    iput-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    #@11
    .line 78
    sget-object v3, Lcom/android/internal/R$styleable;->ActionMenuItemView:[I

    #@13
    .line 77
    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@16
    move-result-object v0

    #@17
    .line 79
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@1a
    move-result v3

    #@1b
    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    #@1d
    .line 81
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@20
    .line 83
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@23
    move-result-object v3

    #@24
    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    #@26
    .line 84
    .local v1, "density":F
    const/high16 v3, 0x42000000    # 32.0f

    #@28
    mul-float/2addr v3, v1

    #@29
    const/high16 v4, 0x3f000000    # 0.5f

    #@2b
    add-float/2addr v3, v4

    #@2c
    float-to-int v3, v3

    #@2d
    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    #@2f
    .line 86
    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@32
    .line 87
    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    #@35
    .line 89
    const/4 v3, -0x1

    #@36
    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    #@38
    .line 72
    return-void
.end method

.method private updateTextButtonVisibility()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 175
    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    #@4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_2

    #@a
    const/4 v0, 0x0

    #@b
    .line 176
    .local v0, "visible":Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 177
    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    #@11
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->showsTextAsAction()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_3

    #@17
    iget-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    #@19
    if-nez v3, :cond_0

    #@1b
    iget-boolean v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    #@1d
    .line 176
    :cond_0
    :goto_1
    and-int/2addr v0, v2

    #@1e
    .line 179
    .local v0, "visible":Z
    if-eqz v0, :cond_1

    #@20
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    #@22
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setText(Ljava/lang/CharSequence;)V

    #@25
    .line 174
    return-void

    #@26
    .line 175
    .end local v0    # "visible":Z
    :cond_2
    const/4 v0, 0x1

    #@27
    .local v0, "visible":Z
    goto :goto_0

    #@28
    .line 177
    :cond_3
    const/4 v2, 0x0

    #@29
    goto :goto_1
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuItemView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuItemView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 222
    const/4 v0, 0x1

    #@4
    return v0
.end method

.method public getItemData()Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 1

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    #@2
    return-object v0
.end method

.method public hasText()Z
    .locals 1

    #@0
    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getText()Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V
    .locals 1
    .param p1, "itemData"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    #@0
    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    #@2
    .line 115
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    #@9
    .line 116
    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/android/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    #@10
    .line 117
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    #@13
    move-result v0

    #@14
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setId(I)V

    #@17
    .line 119
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_1

    #@1d
    const/4 v0, 0x0

    #@1e
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setVisibility(I)V

    #@21
    .line 120
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    #@24
    move-result v0

    #@25
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setEnabled(Z)V

    #@28
    .line 122
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_0

    #@2e
    .line 123
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

    #@30
    if-nez v0, :cond_0

    #@32
    .line 124
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;

    #@34
    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;-><init>(Lcom/android/internal/view/menu/ActionMenuItemView;)V

    #@37
    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

    #@39
    .line 112
    :cond_0
    return-void

    #@3a
    .line 119
    :cond_1
    const/16 v0, 0x8

    #@3c
    goto :goto_0
.end method

.method public needsDividerAfter()Z
    .locals 1

    #@0
    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public needsDividerBefore()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 245
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    #@9
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    #@c
    move-result-object v1

    #@d
    if-nez v1, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :cond_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 141
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    #@6
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    #@8
    invoke-interface {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    #@b
    .line 139
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    .line 96
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a
    move-result-object v0

    #@b
    .line 97
    const v1, 0x1120062

    #@e
    .line 96
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@11
    move-result v0

    #@12
    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    #@14
    .line 98
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    #@17
    .line 93
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 254
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    #@5
    move-result v9

    #@6
    if-eqz v9, :cond_0

    #@8
    .line 256
    return v11

    #@9
    .line 259
    :cond_0
    const/4 v9, 0x2

    #@a
    new-array v6, v9, [I

    #@c
    .line 260
    .local v6, "screenPos":[I
    new-instance v2, Landroid/graphics/Rect;

    #@e
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    #@11
    .line 261
    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p0, v6}, Lcom/android/internal/view/menu/ActionMenuItemView;->getLocationOnScreen([I)V

    #@14
    .line 262
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    #@17
    .line 264
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    #@1a
    move-result-object v1

    #@1b
    .line 265
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getWidth()I

    #@1e
    move-result v8

    #@1f
    .line 266
    .local v8, "width":I
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getHeight()I

    #@22
    move-result v3

    #@23
    .line 267
    .local v3, "height":I
    aget v9, v6, v12

    #@25
    div-int/lit8 v10, v3, 0x2

    #@27
    add-int v4, v9, v10

    #@29
    .line 268
    .local v4, "midy":I
    aget v9, v6, v11

    #@2b
    div-int/lit8 v10, v8, 0x2

    #@2d
    add-int v5, v9, v10

    #@2f
    .line 269
    .local v5, "referenceX":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    #@32
    move-result v9

    #@33
    if-nez v9, :cond_1

    #@35
    .line 270
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@38
    move-result-object v9

    #@39
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@3c
    move-result-object v9

    #@3d
    iget v7, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    #@3f
    .line 271
    .local v7, "screenWidth":I
    sub-int v5, v7, v5

    #@41
    .line 273
    .end local v7    # "screenWidth":I
    :cond_1
    iget-object v9, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    #@43
    invoke-virtual {v9}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    #@46
    move-result-object v9

    #@47
    invoke-static {v1, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    #@4a
    move-result-object v0

    #@4b
    .line 274
    .local v0, "cheatSheet":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    #@4e
    move-result v9

    #@4f
    if-ge v4, v9, :cond_2

    #@51
    .line 277
    aget v9, v6, v12

    #@53
    add-int/2addr v9, v3

    #@54
    iget v10, v2, Landroid/graphics/Rect;->top:I

    #@56
    sub-int/2addr v9, v10

    #@57
    .line 276
    const v10, 0x800035

    #@5a
    invoke-virtual {v0, v10, v5, v9}, Landroid/widget/Toast;->setGravity(III)V

    #@5d
    .line 282
    :goto_0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    #@60
    .line 283
    return v12

    #@61
    .line 280
    :cond_2
    const/16 v9, 0x51

    #@63
    invoke-virtual {v0, v9, v11, v3}, Landroid/widget/Toast;->setGravity(III)V

    #@66
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    #@2
    .line 288
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    #@5
    move-result v3

    #@6
    .line 289
    .local v3, "textVisible":Z
    if-eqz v3, :cond_0

    #@8
    iget v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    #@a
    if-ltz v7, :cond_0

    #@c
    .line 290
    iget v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    #@e
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingTop()I

    #@11
    move-result v8

    #@12
    .line 291
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    #@15
    move-result v9

    #@16
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I

    #@19
    move-result v10

    #@1a
    .line 290
    invoke-super {p0, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    #@1d
    .line 294
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    #@20
    .line 296
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@23
    move-result v5

    #@24
    .line 297
    .local v5, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@27
    move-result v6

    #@28
    .line 298
    .local v6, "widthSize":I
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    #@2b
    move-result v1

    #@2c
    .line 299
    .local v1, "oldMeasuredWidth":I
    const/high16 v7, -0x80000000

    #@2e
    if-ne v5, v7, :cond_3

    #@30
    iget v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    #@32
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    #@35
    move-result v2

    #@36
    .line 302
    .local v2, "targetWidth":I
    :goto_0
    if-eq v5, v11, :cond_1

    #@38
    iget v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    #@3a
    if-lez v7, :cond_1

    #@3c
    if-ge v1, v2, :cond_1

    #@3e
    .line 304
    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@41
    move-result v7

    #@42
    invoke-super {p0, v7, p2}, Landroid/widget/TextView;->onMeasure(II)V

    #@45
    .line 308
    :cond_1
    if-nez v3, :cond_2

    #@47
    iget-object v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    #@49
    if-eqz v7, :cond_2

    #@4b
    .line 311
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    #@4e
    move-result v4

    #@4f
    .line 312
    .local v4, "w":I
    iget-object v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    #@51
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@54
    move-result-object v7

    #@55
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    #@58
    move-result v0

    #@59
    .line 313
    .local v0, "dw":I
    sub-int v7, v4, v0

    #@5b
    div-int/lit8 v7, v7, 0x2

    #@5d
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingTop()I

    #@60
    move-result v8

    #@61
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    #@64
    move-result v9

    #@65
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I

    #@68
    move-result v10

    #@69
    invoke-super {p0, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    #@6c
    .line 287
    .end local v0    # "dw":I
    .end local v4    # "w":I
    :cond_2
    return-void

    #@6d
    .line 300
    .end local v2    # "targetWidth":I
    :cond_3
    iget v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    #@6f
    .restart local v2    # "targetWidth":I
    goto :goto_0
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 227
    invoke-super {p0, p1}, Landroid/widget/TextView;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 228
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getContentDescription()Ljava/lang/CharSequence;

    #@6
    move-result-object v0

    #@7
    .line 229
    .local v0, "cdesc":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 230
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    #@10
    move-result-object v1

    #@11
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@14
    .line 226
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 132
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mForwardingListener:Landroid/widget/ListPopupWindow$ForwardingListener;

    #@e
    invoke-virtual {v0, p0, p1}, Landroid/widget/ListPopupWindow$ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    #@11
    move-result v0

    #@12
    .line 131
    if-eqz v0, :cond_0

    #@14
    .line 133
    const/4 v0, 0x1

    #@15
    return v0

    #@16
    .line 135
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@19
    move-result v0

    #@1a
    return v0
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    #@0
    .prologue
    .line 154
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public setCheckable(Z)V
    .locals 0
    .param p1, "checkable"    # Z

    #@0
    .prologue
    .line 157
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    #@0
    .prologue
    .line 161
    return-void
.end method

.method public setExpandedFormat(Z)V
    .locals 1
    .param p1, "expandedFormat"    # Z

    #@0
    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 167
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    #@6
    .line 168
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 169
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    #@c
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->actionFormatChanged()V

    #@f
    .line 165
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 183
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    #@4
    .line 184
    if-eqz p1, :cond_2

    #@6
    .line 185
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@9
    move-result v2

    #@a
    .line 186
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@d
    move-result v0

    #@e
    .line 187
    .local v0, "height":I
    iget v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    #@10
    if-le v2, v3, :cond_0

    #@12
    .line 188
    iget v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    #@14
    int-to-float v3, v3

    #@15
    int-to-float v4, v2

    #@16
    div-float v1, v3, v4

    #@18
    .line 189
    .local v1, "scale":F
    iget v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    #@1a
    .line 190
    int-to-float v3, v0

    #@1b
    mul-float/2addr v3, v1

    #@1c
    float-to-int v0, v3

    #@1d
    .line 192
    .end local v1    # "scale":F
    :cond_0
    iget v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    #@1f
    if-le v0, v3, :cond_1

    #@21
    .line 193
    iget v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    #@23
    int-to-float v3, v3

    #@24
    int-to-float v4, v0

    #@25
    div-float v1, v3, v4

    #@27
    .line 194
    .restart local v1    # "scale":F
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    #@29
    .line 195
    int-to-float v3, v2

    #@2a
    mul-float/2addr v3, v1

    #@2b
    float-to-int v2, v3

    #@2c
    .line 197
    .end local v1    # "scale":F
    :cond_1
    invoke-virtual {p1, v6, v6, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@2f
    .line 199
    .end local v0    # "height":I
    .end local v2    # "width":I
    :cond_2
    invoke-virtual {p0, p1, v5, v5, v5}, Lcom/android/internal/view/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@32
    .line 201
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    #@35
    .line 182
    return-void
.end method

.method public setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0
    .param p1, "invoker"    # Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    #@0
    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    #@2
    .line 145
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    #@0
    .prologue
    .line 103
    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    #@2
    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    #@5
    .line 102
    return-void
.end method

.method public setPopupCallback(Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;)V
    .locals 0
    .param p1, "popupCallback"    # Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;

    #@0
    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mPopupCallback:Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;

    #@2
    .line 149
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    #@0
    .prologue
    .line 208
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    #@2
    .line 215
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    #@4
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@7
    .line 216
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    #@a
    .line 212
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    #@0
    .prologue
    .line 241
    const/4 v0, 0x1

    #@1
    return v0
.end method
