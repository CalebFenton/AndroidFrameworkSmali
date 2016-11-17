.class public Lcom/android/internal/view/menu/ActionMenuItem;
.super Ljava/lang/Object;
.source "ActionMenuItem.java"

# interfaces
.implements Landroid/view/MenuItem;


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8

.field private static final NO_ICON:I


# instance fields
.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mContext:Landroid/content/Context;

.field private mFlags:I

.field private final mGroup:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutNumericChar:C

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # I
    .param p3, "id"    # I
    .param p4, "categoryOrder"    # I
    .param p5, "ordering"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconResId:I

    #@6
    .line 52
    const/16 v0, 0x10

    #@8
    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    #@a
    .line 61
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    #@c
    .line 62
    iput p3, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mId:I

    #@e
    .line 63
    iput p2, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mGroup:I

    #@10
    .line 64
    iput p4, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mCategoryOrder:I

    #@12
    .line 65
    iput p5, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mOrdering:I

    #@14
    .line 66
    iput-object p6, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    #@16
    .line 60
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 1

    #@0
    .prologue
    .line 264
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public expandActionView()Z
    .locals 1

    #@0
    .prologue
    .line 259
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    #@0
    .prologue
    .line 243
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 233
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    #@0
    .prologue
    .line 70
    iget-char v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    #@2
    return v0
.end method

.method public getGroupId()I
    .locals 1

    #@0
    .prologue
    .line 74
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mGroup:I

    #@2
    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    #@2
    return-object v0
.end method

.method public getItemId()I
    .locals 1

    #@0
    .prologue
    .line 86
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mId:I

    #@2
    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    #@0
    .prologue
    .line 90
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    #@0
    .prologue
    .line 94
    iget-char v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    #@2
    return v0
.end method

.method public getOrder()I
    .locals 1

    #@0
    .prologue
    .line 98
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mOrdering:I

    #@2
    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    #@0
    .prologue
    .line 102
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    #@9
    goto :goto_0
.end method

.method public hasSubMenu()Z
    .locals 1

    #@0
    .prologue
    .line 114
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public invoke()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 212
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    #@7
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 213
    return v2

    #@e
    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 217
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    #@14
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    #@16
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@19
    .line 218
    return v2

    #@1a
    .line 221
    :cond_1
    const/4 v0, 0x0

    #@1b
    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    #@0
    .prologue
    .line 269
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isCheckable()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 118
    iget v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isChecked()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 122
    iget v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    #@3
    and-int/lit8 v1, v1, 0x2

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isEnabled()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 126
    iget v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

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

.method public isVisible()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 130
    iget v1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    #@3
    and-int/lit8 v1, v1, 0x8

    #@5
    if-nez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "actionProvider"    # Landroid/view/ActionProvider;

    #@0
    .prologue
    .line 248
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 238
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "actionView"    # Landroid/view/View;

    #@0
    .prologue
    .line 229
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 0
    .param p1, "alphaChar"    # C

    #@0
    .prologue
    .line 134
    iput-char p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    #@2
    .line 135
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 2
    .param p1, "checkable"    # Z

    #@0
    .prologue
    .line 139
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    #@2
    and-int/lit8 v1, v0, -0x2

    #@4
    if-eqz p1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    or-int/2addr v0, v1

    #@8
    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    #@a
    .line 140
    return-object p0

    #@b
    .line 139
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 2
    .param p1, "checked"    # Z

    #@0
    .prologue
    .line 149
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    #@2
    and-int/lit8 v1, v0, -0x3

    #@4
    if-eqz p1, :cond_0

    #@6
    const/4 v0, 0x2

    #@7
    :goto_0
    or-int/2addr v0, v1

    #@8
    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    #@a
    .line 150
    return-object p0

    #@b
    .line 149
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 2
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 154
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    #@2
    and-int/lit8 v1, v0, -0x11

    #@4
    if-eqz p1, :cond_0

    #@6
    const/16 v0, 0x10

    #@8
    :goto_0
    or-int/2addr v0, v1

    #@9
    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    #@b
    .line 155
    return-object p0

    #@c
    .line 154
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public setExclusiveCheckable(Z)Lcom/android/internal/view/menu/ActionMenuItem;
    .locals 2
    .param p1, "exclusive"    # Z

    #@0
    .prologue
    .line 144
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

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
    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    #@a
    .line 145
    return-object p0

    #@b
    .line 144
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "iconRes"    # I

    #@0
    .prologue
    .line 165
    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconResId:I

    #@2
    .line 166
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    #@a
    .line 167
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    .line 160
    const/4 v0, 0x0

    #@3
    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIconResId:I

    #@5
    .line 161
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mIntent:Landroid/content/Intent;

    #@2
    .line 172
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 0
    .param p1, "numericChar"    # C

    #@0
    .prologue
    .line 176
    iput-char p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    #@2
    .line 177
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "listener"    # Landroid/view/MenuItem$OnActionExpandListener;

    #@0
    .prologue
    .line 275
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "menuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    #@0
    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    #@2
    .line 182
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 0
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C

    #@0
    .prologue
    .line 186
    iput-char p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutNumericChar:C

    #@2
    .line 187
    iput-char p2, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mShortcutAlphabeticChar:C

    #@4
    .line 188
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 0
    .param p1, "show"    # I

    #@0
    .prologue
    .line 224
    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0
    .param p1, "actionEnum"    # I

    #@0
    .prologue
    .line 253
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuItem;->setShowAsAction(I)V

    #@3
    .line 254
    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # I

    #@0
    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    #@c
    .line 198
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitle:Ljava/lang/CharSequence;

    #@2
    .line 193
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    #@2
    .line 203
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 2
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 207
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    #@2
    and-int/lit8 v1, v0, 0x8

    #@4
    if-eqz p1, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    :goto_0
    or-int/2addr v0, v1

    #@8
    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuItem;->mFlags:I

    #@a
    .line 208
    return-object p0

    #@b
    .line 207
    :cond_0
    const/16 v0, 0x8

    #@d
    goto :goto_0
.end method
