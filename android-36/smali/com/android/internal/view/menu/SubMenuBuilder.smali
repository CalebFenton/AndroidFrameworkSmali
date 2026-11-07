.class public Lcom/android/internal/view/menu/SubMenuBuilder;
.super Lcom/android/internal/view/menu/MenuBuilder;
.source "SubMenuBuilder.java"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private greylist-max-o mItem:Lcom/android/internal/view/menu/MenuItemImpl;

.field private greylist-max-o mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentMenu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .line 36
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p2, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 39
    iput-object p3, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 40
    return-void
.end method


# virtual methods
.method public greylist-max-o collapseItemActionView(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 3
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .line 125
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    return v0
.end method

.method greylist-max-o dispatchMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 84
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 85
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 84
    :goto_12
    return v0
.end method

.method public greylist-max-o expandItemActionView(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 3
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .line 120
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->expandItemActionView(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o getActionViewStatesKey()Ljava/lang/String;
    .registers 4

    .line 130
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 131
    .local v0, "itemId":I
    :goto_c
    if-nez v0, :cond_10

    .line 132
    const/4 v1, 0x0

    return-object v1

    .line 134
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getItem()Landroid/view/MenuItem;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mItem:Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public greylist-max-o getParentMenu()Landroid/view/Menu;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public greylist getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o isGroupDividerEnabled()Z
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->isGroupDividerEnabled()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isQwertyMode()Z
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isShortcutsVisible()Z
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    return v0
.end method

.method public greylist setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 73
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 74
    return-void
.end method

.method public whitelist setGroupDividerEnabled(Z)V
    .registers 3
    .param p1, "groupDividerEnabled"    # Z

    .line 139
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setGroupDividerEnabled(Z)V

    .line 140
    return-void
.end method

.method public whitelist setHeaderIcon(I)Landroid/view/SubMenu;
    .registers 3
    .param p1, "iconRes"    # I

    .line 103
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderIconInt(I)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public whitelist setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 99
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public whitelist setHeaderTitle(I)Landroid/view/SubMenu;
    .registers 3
    .param p1, "titleRes"    # I

    .line 111
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderTitleInt(I)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public whitelist setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 107
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public whitelist setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 115
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderViewInt(Landroid/view/View;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public whitelist setIcon(I)Landroid/view/SubMenu;
    .registers 3
    .param p1, "iconRes"    # I

    .line 94
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuItemImpl;->setIcon(I)Landroid/view/MenuItem;

    .line 95
    return-object p0
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 89
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuItemImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 90
    return-object p0
.end method

.method public whitelist setQwertyMode(Z)V
    .registers 3
    .param p1, "isQwerty"    # Z

    .line 44
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 45
    return-void
.end method

.method public greylist-max-o setShortcutsVisible(Z)V
    .registers 3
    .param p1, "shortcutsVisible"    # Z

    .line 54
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setShortcutsVisible(Z)V

    .line 55
    return-void
.end method
