.class public Lcom/android/internal/view/menu/SubMenuBuilder;
.super Lcom/android/internal/view/menu/MenuBuilder;
.source "SubMenuBuilder.java"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private mItem:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentMenu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    #@0
    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    #@3
    .line 37
    iput-object p2, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@5
    .line 38
    iput-object p3, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@7
    .line 34
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method dispatchMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 82
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    #@b
    move-result v0

    #@c
    .line 81
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x1

    #@e
    goto :goto_0
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->expandItemActionView(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getActionViewStatesKey()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 127
    iget-object v1, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@7
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    #@a
    move-result v0

    #@b
    .line 128
    .local v0, "itemId":I
    :goto_0
    if-nez v0, :cond_1

    #@d
    .line 129
    return-object v2

    #@e
    .line 127
    .end local v0    # "itemId":I
    :cond_0
    const/4 v0, 0x0

    #@f
    .restart local v0    # "itemId":I
    goto :goto_0

    #@10
    .line 131
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    invoke-super {p0}, Lcom/android/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const-string/jumbo v2, ":"

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    return-object v1
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@2
    return-object v0
.end method

.method public getParentMenu()Landroid/view/Menu;
    .locals 1

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    return-object v0
.end method

.method public getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    return-object v0
.end method

.method public isQwertyMode()Z
    .locals 1

    #@0
    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->isShortcutsVisible()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/view/menu/MenuBuilder$Callback;

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    #@5
    .line 70
    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1
    .param p1, "iconRes"    # I

    #@0
    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderIconInt(I)Lcom/android/internal/view/menu/MenuBuilder;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/view/SubMenu;

    #@6
    return-object v0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/android/internal/view/menu/MenuBuilder;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/view/SubMenu;

    #@6
    return-object v0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1
    .param p1, "titleRes"    # I

    #@0
    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderTitleInt(I)Lcom/android/internal/view/menu/MenuBuilder;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/view/SubMenu;

    #@6
    return-object v0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/android/internal/view/menu/MenuBuilder;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/view/SubMenu;

    #@6
    return-object v0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderViewInt(Landroid/view/View;)Lcom/android/internal/view/menu/MenuBuilder;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/view/SubMenu;

    #@6
    return-object v0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1
    .param p1, "iconRes"    # I

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuItemImpl;->setIcon(I)Landroid/view/MenuItem;

    #@5
    .line 92
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuItemImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    #@5
    .line 87
    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1
    .param p1, "isQwerty"    # Z

    #@0
    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    #@5
    .line 42
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1
    .param p1, "shortcutsVisible"    # Z

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setShortcutsVisible(Z)V

    #@5
    .line 52
    return-void
.end method
