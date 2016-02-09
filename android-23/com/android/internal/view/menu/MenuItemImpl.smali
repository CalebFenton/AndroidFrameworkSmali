.class public final Lcom/android/internal/view/menu/MenuItemImpl;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroid/view/MenuItem;


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8

.field private static final IS_ACTION:I = 0x20

.field static final NO_ICON:I = 0x0

.field private static final SHOW_AS_ACTION_MASK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MenuItemImpl"

.field private static sDeleteShortcutLabel:Ljava/lang/String;

.field private static sEnterShortcutLabel:Ljava/lang/String;

.field private static sLanguage:Ljava/lang/String;

.field private static sPrependShortcutLabel:Ljava/lang/String;

.field private static sSpaceShortcutLabel:Ljava/lang/String;


# instance fields
.field private mActionProvider:Landroid/view/ActionProvider;

.field private mActionView:Landroid/view/View;

.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mFlags:I

.field private final mGroup:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private mIsActionViewExpanded:Z

.field private mItemCallback:Ljava/lang/Runnable;

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutNumericChar:C

.field private mShowAsAction:I

.field private mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;


# direct methods
.method static synthetic -get0(Lcom/android/internal/view/menu/MenuItemImpl;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    return-object v0
.end method

.method constructor <init>(Lcom/android/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V
    .locals 3
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "group"    # I
    .param p3, "id"    # I
    .param p4, "categoryOrder"    # I
    .param p5, "ordering"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "showAsAction"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 62
    iput v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconResId:I

    #@6
    .line 72
    const/16 v1, 0x10

    #@8
    iput v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    #@a
    .line 80
    iput v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    #@c
    .line 85
    iput-boolean v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    #@e
    .line 118
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@19
    move-result-object v1

    #@1a
    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@1c
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    .line 119
    .local v0, "lang":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/view/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    #@22
    if-eqz v1, :cond_0

    #@24
    sget-object v1, Lcom/android/internal/view/menu/MenuItemImpl;->sLanguage:Ljava/lang/String;

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_0

    #@2c
    .line 132
    :goto_0
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2e
    .line 133
    iput p3, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mId:I

    #@30
    .line 134
    iput p2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mGroup:I

    #@32
    .line 135
    iput p4, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mCategoryOrder:I

    #@34
    .line 136
    iput p5, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mOrdering:I

    #@36
    .line 137
    iput-object p6, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    #@38
    .line 138
    iput p7, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    #@3a
    .line 116
    return-void

    #@3b
    .line 120
    :cond_0
    sput-object v0, Lcom/android/internal/view/menu/MenuItemImpl;->sLanguage:Ljava/lang/String;

    #@3d
    .line 122
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@44
    move-result-object v1

    #@45
    .line 123
    const v2, 0x1040312

    #@48
    .line 122
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    sput-object v1, Lcom/android/internal/view/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    #@4e
    .line 124
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@55
    move-result-object v1

    #@56
    .line 125
    const v2, 0x1040314

    #@59
    .line 124
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    sput-object v1, Lcom/android/internal/view/menu/MenuItemImpl;->sEnterShortcutLabel:Ljava/lang/String;

    #@5f
    .line 126
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@66
    move-result-object v1

    #@67
    .line 127
    const v2, 0x1040315

    #@6a
    .line 126
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@6d
    move-result-object v1

    #@6e
    sput-object v1, Lcom/android/internal/view/menu/MenuItemImpl;->sDeleteShortcutLabel:Ljava/lang/String;

    #@70
    .line 128
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    #@73
    move-result-object v1

    #@74
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@77
    move-result-object v1

    #@78
    .line 129
    const v2, 0x1040313

    #@7b
    .line 128
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@7e
    move-result-object v1

    #@7f
    sput-object v1, Lcom/android/internal/view/menu/MenuItemImpl;->sSpaceShortcutLabel:Ljava/lang/String;

    #@81
    goto :goto_0
.end method


# virtual methods
.method public actionFormatChanged()V
    .locals 1

    #@0
    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemActionRequestChanged(Lcom/android/internal/view/menu/MenuItemImpl;)V

    #@5
    .line 510
    return-void
.end method

.method public collapseActionView()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 633
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    #@3
    and-int/lit8 v0, v0, 0x8

    #@5
    if-nez v0, :cond_0

    #@7
    .line 634
    return v1

    #@8
    .line 636
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    #@a
    if-nez v0, :cond_1

    #@c
    .line 638
    const/4 v0, 0x1

    #@d
    return v0

    #@e
    .line 641
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    #@10
    if-eqz v0, :cond_2

    #@12
    .line 642
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    #@14
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    #@17
    move-result v0

    #@18
    .line 641
    if-eqz v0, :cond_3

    #@1a
    .line 643
    :cond_2
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@1c
    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    #@1f
    move-result v0

    #@20
    return v0

    #@21
    .line 646
    :cond_3
    return v1
.end method

.method public expandActionView()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 619
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 620
    return v1

    #@8
    .line 623
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 624
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    #@e
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    #@11
    move-result v0

    #@12
    .line 623
    if-eqz v0, :cond_2

    #@14
    .line 625
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@16
    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->expandItemActionView(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    #@19
    move-result v0

    #@1a
    return v0

    #@1b
    .line 628
    :cond_2
    return v1
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    #@0
    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    #@2
    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 580
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 581
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    #@7
    return-object v0

    #@8
    .line 582
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 583
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    #@e
    invoke-virtual {v0, p0}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    #@14
    .line 584
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    #@16
    return-object v0

    #@17
    .line 586
    :cond_1
    return-object v1
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    #@0
    .prologue
    .line 229
    iget-char v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    #@2
    return v0
.end method

.method getCallback()Ljava/lang/Runnable;
    .locals 1

    #@0
    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    #@0
    .prologue
    .line 194
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mGroup:I

    #@2
    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 383
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 384
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    #@8
    return-object v1

    #@9
    .line 387
    :cond_0
    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconResId:I

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 388
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@f
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    #@12
    move-result-object v1

    #@13
    iget v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconResId:I

    #@15
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@18
    move-result-object v0

    #@19
    .line 389
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    iput v3, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconResId:I

    #@1b
    .line 390
    iput-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    #@1d
    .line 391
    return-object v0

    #@1e
    .line 394
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-object v2
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    #@0
    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    #@2
    return-object v0
.end method

.method public getItemId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    #@0
    .prologue
    .line 199
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mId:I

    #@2
    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    #@0
    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    #@2
    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    #@0
    .prologue
    .line 243
    iget-char v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    #@2
    return v0
.end method

.method public getOrder()I
    .locals 1

    #@0
    .prologue
    .line 203
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mCategoryOrder:I

    #@2
    return v0
.end method

.method public getOrdering()I
    .locals 1

    #@0
    .prologue
    .line 207
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mOrdering:I

    #@2
    return v0
.end method

.method getShortcut()C
    .locals 1

    #@0
    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-char v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    iget-char v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    #@d
    goto :goto_0
.end method

.method getShortcutLabel()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getShortcut()C

    #@3
    move-result v1

    #@4
    .line 280
    .local v1, "shortcut":C
    if-nez v1, :cond_0

    #@6
    .line 281
    const-string/jumbo v2, ""

    #@9
    return-object v2

    #@a
    .line 284
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    sget-object v2, Lcom/android/internal/view/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    #@e
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@11
    .line 285
    .local v0, "sb":Ljava/lang/StringBuilder;
    sparse-switch v1, :sswitch_data_0

    #@14
    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    .line 304
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    return-object v2

    #@1c
    .line 288
    :sswitch_0
    sget-object v2, Lcom/android/internal/view/menu/MenuItemImpl;->sEnterShortcutLabel:Ljava/lang/String;

    #@1e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    goto :goto_0

    #@22
    .line 292
    :sswitch_1
    sget-object v2, Lcom/android/internal/view/menu/MenuItemImpl;->sDeleteShortcutLabel:Ljava/lang/String;

    #@24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    goto :goto_0

    #@28
    .line 296
    :sswitch_2
    sget-object v2, Lcom/android/internal/view/menu/MenuItemImpl;->sSpaceShortcutLabel:Ljava/lang/String;

    #@2a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    goto :goto_0

    #@2e
    .line 285
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0xa -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    #@0
    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

    #@2
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    #@0
    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    #@9
    goto :goto_0
.end method

.method getTitleForItemView(Lcom/android/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "itemView"    # Lcom/android/internal/view/menu/MenuView$ItemView;

    #@0
    .prologue
    .line 344
    if-eqz p1, :cond_0

    #@2
    invoke-interface {p1}, Lcom/android/internal/view/menu/MenuView$ItemView;->prefersCondensedTitle()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 345
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    #@b
    move-result-object v0

    #@c
    .line 344
    :goto_0
    return-object v0

    #@d
    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    #@10
    move-result-object v0

    #@11
    goto :goto_0
.end method

.method public hasCollapsibleActionView()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 656
    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    #@3
    and-int/lit8 v1, v1, 0x8

    #@5
    if-eqz v1, :cond_2

    #@7
    .line 657
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    #@9
    if-nez v1, :cond_0

    #@b
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 658
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    #@11
    invoke-virtual {v1, p0}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    #@14
    move-result-object v1

    #@15
    iput-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    #@17
    .line 660
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    #@19
    if-eqz v1, :cond_1

    #@1b
    const/4 v0, 0x1

    #@1c
    :cond_1
    return v0

    #@1d
    .line 662
    :cond_2
    return v0
.end method

.method public hasSubMenu()Z
    .locals 1

    #@0
    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public invoke()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 147
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 148
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    #@7
    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    #@a
    move-result v1

    #@b
    .line 147
    if-eqz v1, :cond_0

    #@d
    .line 149
    return v3

    #@e
    .line 152
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@10
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@12
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2, p0}, Lcom/android/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 153
    return v3

    #@1d
    .line 156
    :cond_1
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    #@1f
    if-eqz v1, :cond_2

    #@21
    .line 157
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    #@23
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    #@26
    .line 158
    return v3

    #@27
    .line 161
    :cond_2
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    #@29
    if-eqz v1, :cond_3

    #@2b
    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2d
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    #@30
    move-result-object v1

    #@31
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    #@33
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 164
    return v3

    #@37
    .line 165
    :catch_0
    move-exception v0

    #@38
    .line 166
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v1, "MenuItemImpl"

    #@3b
    const-string/jumbo v2, "Can\'t find activity to handle intent; ignoring"

    #@3e
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@41
    .line 170
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    #@43
    if-eqz v1, :cond_4

    #@45
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    #@47
    invoke-virtual {v1}, Landroid/view/ActionProvider;->onPerformDefaultAction()Z

    #@4a
    move-result v1

    #@4b
    if-eqz v1, :cond_4

    #@4d
    .line 171
    return v3

    #@4e
    .line 174
    :cond_4
    const/4 v1, 0x0

    #@4f
    return v1
.end method

.method public isActionButton()Z
    .locals 2

    #@0
    .prologue
    .line 522
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    #@2
    and-int/lit8 v0, v0, 0x20

    #@4
    const/16 v1, 0x20

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    #@0
    .prologue
    .line 671
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    #@2
    return v0
.end method

.method public isCheckable()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 416
    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-ne v1, v0, :cond_0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    #@0
    .prologue
    .line 438
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    #@2
    and-int/lit8 v0, v0, 0x2

    #@4
    const/4 v1, 0x2

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 178
    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    #@3
    and-int/lit8 v1, v1, 0x10

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isExclusiveCheckable()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 434
    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    #@3
    and-int/lit8 v1, v1, 0x4

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isVisible()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 462
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    #@3
    if-eqz v1, :cond_1

    #@5
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    #@7
    invoke-virtual {v1}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 463
    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    #@f
    and-int/lit8 v1, v1, 0x8

    #@11
    if-nez v1, :cond_0

    #@13
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    #@15
    invoke-virtual {v0}, Landroid/view/ActionProvider;->isVisible()Z

    #@18
    move-result v0

    #@19
    :cond_0
    return v0

    #@1a
    .line 465
    :cond_1
    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    #@1c
    and-int/lit8 v1, v1, 0x8

    #@1e
    if-nez v1, :cond_2

    #@20
    const/4 v0, 0x1

    #@21
    :cond_2
    return v0
.end method

.method public requestsActionButton()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 526
    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-ne v1, v0, :cond_0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public requiresActionButton()Z
    .locals 2

    #@0
    .prologue
    .line 530
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    #@2
    and-int/lit8 v0, v0, 0x2

    #@4
    const/4 v1, 0x2

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "actionProvider"    # Landroid/view/ActionProvider;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 595
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 596
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    #@7
    invoke-virtual {v0}, Landroid/view/ActionProvider;->reset()V

    #@a
    .line 598
    :cond_0
    iput-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    #@c
    .line 599
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    #@e
    .line 600
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@10
    const/4 v1, 0x1

    #@11
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@14
    .line 601
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 602
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    #@1a
    new-instance v1, Lcom/android/internal/view/menu/MenuItemImpl$1;

    #@1c
    invoke-direct {v1, p0}, Lcom/android/internal/view/menu/MenuItemImpl$1;-><init>(Lcom/android/internal/view/menu/MenuItemImpl;)V

    #@1f
    invoke-virtual {v0, v1}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    #@22
    .line 608
    :cond_1
    return-object p0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 4
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 573
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    .line 574
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@9
    move-result-object v1

    #@a
    .line 575
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Landroid/widget/LinearLayout;

    #@c
    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@f
    const/4 v3, 0x0

    #@10
    invoke-virtual {v1, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    #@17
    .line 576
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 563
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    #@3
    .line 564
    iput-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mActionProvider:Landroid/view/ActionProvider;

    #@5
    .line 565
    if-eqz p1, :cond_0

    #@7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@a
    move-result v0

    #@b
    const/4 v1, -0x1

    #@c
    if-ne v0, v1, :cond_0

    #@e
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mId:I

    #@10
    if-lez v0, :cond_0

    #@12
    .line 566
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mId:I

    #@14
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    #@17
    .line 568
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@19
    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemActionRequestChanged(Lcom/android/internal/view/menu/MenuItemImpl;)V

    #@1c
    .line 569
    return-object p0
.end method

.method public setActionViewExpanded(Z)V
    .locals 2
    .param p1, "isExpanded"    # Z

    #@0
    .prologue
    .line 666
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIsActionViewExpanded:Z

    #@2
    .line 667
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@8
    .line 665
    return-void
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 2
    .param p1, "alphaChar"    # C

    #@0
    .prologue
    .line 233
    iget-char v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    #@2
    if-ne v0, p1, :cond_0

    #@4
    return-object p0

    #@5
    .line 235
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    #@8
    move-result v0

    #@9
    iput-char v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    #@b
    .line 237
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@11
    .line 239
    return-object p0
.end method

.method public setCallback(Ljava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "callback"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    #@2
    .line 225
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 4
    .param p1, "checkable"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 420
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    #@3
    .line 421
    .local v0, "oldFlags":I
    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    #@5
    and-int/lit8 v3, v1, -0x2

    #@7
    if-eqz p1, :cond_1

    #@9
    const/4 v1, 0x1

    #@a
    :goto_0
    or-int/2addr v1, v3

    #@b
    iput v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    #@d
    .line 422
    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    #@f
    if-eq v0, v1, :cond_0

    #@11
    .line 423
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@13
    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@16
    .line 426
    :cond_0
    return-object p0

    #@17
    :cond_1
    move v1, v2

    #@18
    .line 421
    goto :goto_0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "checked"    # Z

    #@0
    .prologue
    .line 442
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    #@2
    and-int/lit8 v0, v0, 0x4

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 445
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@8
    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setExclusiveItemChecked(Landroid/view/MenuItem;)V

    #@b
    .line 450
    :goto_0
    return-object p0

    #@c
    .line 447
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    #@f
    goto :goto_0
.end method

.method setCheckedInt(Z)V
    .locals 4
    .param p1, "checked"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 454
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    #@3
    .line 455
    .local v0, "oldFlags":I
    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    #@5
    and-int/lit8 v3, v1, -0x3

    #@7
    if-eqz p1, :cond_1

    #@9
    const/4 v1, 0x2

    #@a
    :goto_0
    or-int/2addr v1, v3

    #@b
    iput v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    #@d
    .line 456
    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    #@f
    if-eq v0, v1, :cond_0

    #@11
    .line 457
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@13
    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@16
    .line 453
    :cond_0
    return-void

    #@17
    :cond_1
    move v1, v2

    #@18
    .line 455
    goto :goto_0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 2
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 182
    if-eqz p1, :cond_0

    #@2
    .line 183
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    #@4
    or-int/lit8 v0, v0, 0x10

    #@6
    iput v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    #@8
    .line 188
    :goto_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@e
    .line 190
    return-object p0

    #@f
    .line 185
    :cond_0
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    #@11
    and-int/lit8 v0, v0, -0x11

    #@13
    iput v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    #@15
    goto :goto_0
.end method

.method public setExclusiveCheckable(Z)V
    .locals 2
    .param p1, "exclusive"    # Z

    #@0
    .prologue
    .line 430
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    #@2
    and-int/lit8 v1, v0, -0x5

    #@4
    if-eqz p1, :cond_0

    #@6
    const/4 v0, 0x4

    #@7
    :goto_0
    or-int/2addr v0, v1

    #@8
    iput v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    #@a
    .line 429
    return-void

    #@b
    .line 430
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "iconResId"    # I

    #@0
    .prologue
    .line 406
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    #@3
    .line 407
    iput p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconResId:I

    #@5
    .line 410
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@b
    .line 412
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 398
    iput v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconResId:I

    #@3
    .line 399
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    .line 400
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@a
    .line 402
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    #@2
    .line 216
    return-object p0
.end method

.method public setIsActionButton(Z)V
    .locals 1
    .param p1, "isActionButton"    # Z

    #@0
    .prologue
    .line 534
    if-eqz p1, :cond_0

    #@2
    .line 535
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    #@4
    or-int/lit8 v0, v0, 0x20

    #@6
    iput v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    #@8
    .line 533
    :goto_0
    return-void

    #@9
    .line 537
    :cond_0
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    #@b
    and-int/lit8 v0, v0, -0x21

    #@d
    iput v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    #@f
    goto :goto_0
.end method

.method setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    #@0
    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    #@2
    .line 502
    return-void
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 2
    .param p1, "numericChar"    # C

    #@0
    .prologue
    .line 247
    iget-char v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    #@2
    if-ne v0, p1, :cond_0

    #@4
    return-object p0

    #@5
    .line 249
    :cond_0
    iput-char p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    #@7
    .line 251
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@9
    const/4 v1, 0x0

    #@a
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@d
    .line 253
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "listener"    # Landroid/view/MenuItem$OnActionExpandListener;

    #@0
    .prologue
    .line 651
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    #@2
    .line 652
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "clickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    #@0
    .prologue
    .line 493
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    #@2
    .line 494
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 2
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C

    #@0
    .prologue
    .line 257
    iput-char p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    #@2
    .line 258
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    #@5
    move-result v0

    #@6
    iput-char v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    #@8
    .line 260
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@a
    const/4 v1, 0x0

    #@b
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@e
    .line 262
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 2
    .param p1, "actionEnum"    # I

    #@0
    .prologue
    .line 546
    and-int/lit8 v0, p1, 0x3

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 555
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 558
    :pswitch_0
    iput p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    #@10
    .line 559
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@12
    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemActionRequestChanged(Lcom/android/internal/view/menu/MenuItemImpl;)V

    #@15
    .line 545
    return-void

    #@16
    .line 546
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0
    .param p1, "actionEnum"    # I

    #@0
    .prologue
    .line 613
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuItemImpl;->setShowAsAction(I)V

    #@3
    .line 614
    return-object p0
.end method

.method setSubMenu(Lcom/android/internal/view/menu/SubMenuBuilder;)V
    .locals 1
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    #@0
    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

    #@2
    .line 328
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    #@9
    .line 325
    return-void
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # I

    #@0
    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    #@2
    .line 352
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@8
    .line 354
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 355
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

    #@e
    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    #@11
    .line 358
    :cond_0
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    #@2
    .line 373
    if-nez p1, :cond_0

    #@4
    .line 374
    iget-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    #@6
    .line 377
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@c
    .line 379
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "shown"    # Z

    #@0
    .prologue
    .line 487
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@8
    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemVisibleChanged(Lcom/android/internal/view/menu/MenuItemImpl;)V

    #@b
    .line 489
    :cond_0
    return-object p0
.end method

.method setVisibleInt(Z)Z
    .locals 4
    .param p1, "shown"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 478
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    #@3
    .line 479
    .local v0, "oldFlags":I
    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    #@5
    and-int/lit8 v3, v1, -0x9

    #@7
    if-eqz p1, :cond_1

    #@9
    move v1, v2

    #@a
    :goto_0
    or-int/2addr v1, v3

    #@b
    iput v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    #@d
    .line 480
    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    #@f
    if-eq v0, v1, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    return v2

    #@13
    .line 479
    :cond_1
    const/16 v1, 0x8

    #@15
    goto :goto_0
.end method

.method public shouldShowIcon()Z
    .locals 1

    #@0
    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getOptionalIconsVisible()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method shouldShowShortcut()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 314
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@3
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->isShortcutsVisible()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getShortcut()C

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :cond_0
    return v0
.end method

.method public showsTextAsAction()Z
    .locals 2

    #@0
    .prologue
    .line 542
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    #@2
    and-int/lit8 v0, v0, 0x4

    #@4
    const/4 v1, 0x4

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 499
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    #@7
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method
