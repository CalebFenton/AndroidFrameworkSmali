.class public abstract Lcom/android/internal/view/menu/BaseMenuPresenter;
.super Ljava/lang/Object;
.source "BaseMenuPresenter.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter;


# instance fields
.field private mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field protected mContext:Landroid/content/Context;

.field private mId:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mItemLayoutRes:I

.field protected mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuLayoutRes:I

.field protected mMenuView:Lcom/android/internal/view/menu/MenuView;

.field protected mSystemContext:Landroid/content/Context;

.field protected mSystemInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menuLayoutRes"    # I
    .param p3, "itemLayoutRes"    # I

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    iput-object p1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    #@5
    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    #@b
    .line 56
    iput p2, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    #@d
    .line 57
    iput p3, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    #@f
    .line 53
    return-void
.end method


# virtual methods
.method protected addItemView(Landroid/view/View;I)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "childIndex"    # I

    #@0
    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/view/ViewGroup;

    #@6
    .line 126
    .local v0, "currentParent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    #@8
    .line 127
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@b
    .line 129
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@d
    check-cast v1, Landroid/view/ViewGroup;

    #@f
    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    #@12
    .line 124
    return-void
.end method

.method public abstract bindItemView(Lcom/android/internal/view/menu/MenuItemImpl;Lcom/android/internal/view/menu/MenuView$ItemView;)V
.end method

.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    #@0
    .prologue
    .line 223
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public createItemView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView$ItemView;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    #@2
    iget v1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    #@4
    const/4 v2, 0x0

    #@5
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/android/internal/view/menu/MenuView$ItemView;

    #@b
    return-object v0
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    #@0
    .prologue
    .line 219
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "childIndex"    # I

    #@0
    .prologue
    .line 139
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    #@3
    .line 140
    const/4 v0, 0x1

    #@4
    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    #@0
    .prologue
    .line 215
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCallback()Lcom/android/internal/view/menu/MenuPresenter$Callback;
    .locals 1

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@2
    return-object v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 227
    iget v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mId:I

    #@2
    return v0
.end method

.method public getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 173
    instance-of v1, p2, Lcom/android/internal/view/menu/MenuView$ItemView;

    #@2
    if-eqz v1, :cond_0

    #@4
    move-object v0, p2

    #@5
    .line 174
    check-cast v0, Lcom/android/internal/view/menu/MenuView$ItemView;

    #@7
    .line 178
    .local v0, "itemView":Lcom/android/internal/view/menu/MenuView$ItemView;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/view/menu/BaseMenuPresenter;->bindItemView(Lcom/android/internal/view/menu/MenuItemImpl;Lcom/android/internal/view/menu/MenuView$ItemView;)V

    #@a
    .line 179
    check-cast v0, Landroid/view/View;

    #@c
    .end local v0    # "itemView":Lcom/android/internal/view/menu/MenuView$ItemView;
    return-object v0

    #@d
    .line 176
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/internal/view/menu/BaseMenuPresenter;->createItemView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView$ItemView;

    #@10
    move-result-object v0

    #@11
    .restart local v0    # "itemView":Lcom/android/internal/view/menu/MenuView$ItemView;
    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 70
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    #@6
    iget v1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/android/internal/view/menu/MenuView;

    #@f
    iput-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@11
    .line 71
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@13
    iget-object v1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@15
    invoke-interface {v0, v1}, Lcom/android/internal/view/menu/MenuView;->initialize(Lcom/android/internal/view/menu/MenuBuilder;)V

    #@18
    .line 72
    const/4 v0, 0x1

    #@19
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    #@1c
    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@1e
    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    #@2
    .line 63
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    #@4
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    #@a
    .line 64
    iput-object p2, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@c
    .line 61
    return-void
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    #@0
    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 203
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@6
    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    #@9
    .line 201
    :cond_0
    return-void
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    #@0
    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 209
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@6
    invoke-interface {v0, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 211
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@0
    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@2
    .line 143
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    #@0
    .prologue
    .line 231
    iput p1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mId:I

    #@2
    .line 230
    return-void
.end method

.method public shouldIncludeItem(ILcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    #@0
    .prologue
    .line 198
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public updateMenuView(Z)V
    .locals 10
    .param p1, "cleared"    # Z

    #@0
    .prologue
    .line 82
    iget-object v7, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    #@2
    check-cast v7, Landroid/view/ViewGroup;

    #@4
    .line 83
    .local v7, "parent":Landroid/view/ViewGroup;
    if-nez v7, :cond_0

    #@6
    return-void

    #@7
    .line 85
    :cond_0
    const/4 v0, 0x0

    #@8
    .line 86
    .local v0, "childIndex":I
    iget-object v9, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@a
    if-eqz v9, :cond_5

    #@c
    .line 87
    iget-object v9, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@e
    invoke-virtual {v9}, Lcom/android/internal/view/menu/MenuBuilder;->flagActionItems()V

    #@11
    .line 88
    iget-object v9, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@13
    invoke-virtual {v9}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    #@16
    move-result-object v8

    #@17
    .line 89
    .local v8, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v4

    #@1b
    .line 90
    .local v4, "itemCount":I
    const/4 v2, 0x0

    #@1c
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_5

    #@1e
    .line 91
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    #@24
    .line 92
    .local v3, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/view/menu/BaseMenuPresenter;->shouldIncludeItem(ILcom/android/internal/view/menu/MenuItemImpl;)Z

    #@27
    move-result v9

    #@28
    if-eqz v9, :cond_3

    #@2a
    .line 93
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@2d
    move-result-object v1

    #@2e
    .line 94
    .local v1, "convertView":Landroid/view/View;
    instance-of v9, v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    #@30
    if-eqz v9, :cond_4

    #@32
    move-object v9, v1

    #@33
    .line 95
    check-cast v9, Lcom/android/internal/view/menu/MenuView$ItemView;

    #@35
    invoke-interface {v9}, Lcom/android/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    #@38
    move-result-object v6

    #@39
    .line 96
    :goto_1
    invoke-virtual {p0, v3, v1, v7}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@3c
    move-result-object v5

    #@3d
    .line 97
    .local v5, "itemView":Landroid/view/View;
    if-eq v3, v6, :cond_1

    #@3f
    .line 99
    const/4 v9, 0x0

    #@40
    invoke-virtual {v5, v9}, Landroid/view/View;->setPressed(Z)V

    #@43
    .line 100
    invoke-virtual {v5}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    #@46
    .line 102
    :cond_1
    if-eq v5, v1, :cond_2

    #@48
    .line 103
    invoke-virtual {p0, v5, v0}, Lcom/android/internal/view/menu/BaseMenuPresenter;->addItemView(Landroid/view/View;I)V

    #@4b
    .line 105
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@4d
    .line 90
    .end local v1    # "convertView":Landroid/view/View;
    .end local v5    # "itemView":Landroid/view/View;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@4f
    goto :goto_0

    #@50
    .line 95
    .restart local v1    # "convertView":Landroid/view/View;
    :cond_4
    const/4 v6, 0x0

    #@51
    .local v6, "oldItem":Lcom/android/internal/view/menu/MenuItemImpl;
    goto :goto_1

    #@52
    .line 111
    .end local v1    # "convertView":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v4    # "itemCount":I
    .end local v6    # "oldItem":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v8    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_5
    :goto_2
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    #@55
    move-result v9

    #@56
    if-ge v0, v9, :cond_6

    #@58
    .line 112
    invoke-virtual {p0, v7, v0}, Lcom/android/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    #@5b
    move-result v9

    #@5c
    if-nez v9, :cond_5

    #@5e
    .line 113
    add-int/lit8 v0, v0, 0x1

    #@60
    goto :goto_2

    #@61
    .line 81
    :cond_6
    return-void
.end method
