.class public abstract Lcom/android/internal/view/menu/BaseMenuPresenter;
.super Ljava/lang/Object;
.source "BaseMenuPresenter.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter;


# instance fields
.field private greylist-max-o mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field protected greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mId:I

.field protected greylist-max-o mInflater:Landroid/view/LayoutInflater;

.field private greylist-max-o mItemLayoutRes:I

.field protected greylist-max-o mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private greylist-max-o mMenuLayoutRes:I

.field protected greylist-max-o mMenuView:Lcom/android/internal/view/menu/MenuView;

.field protected greylist-max-o mSystemContext:Landroid/content/Context;

.field protected greylist-max-o mSystemInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menuLayoutRes"    # I
    .param p3, "itemLayoutRes"    # I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    .line 58
    iput p2, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    .line 59
    iput p3, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    .line 60
    return-void
.end method


# virtual methods
.method protected greylist-max-o addItemView(Landroid/view/View;I)V
    .registers 5
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "childIndex"    # I

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 128
    .local v0, "currentParent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_b

    .line 129
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 131
    :cond_b
    iget-object v1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 132
    return-void
.end method

.method public abstract greylist-max-o bindItemView(Lcom/android/internal/view/menu/MenuItemImpl;Lcom/android/internal/view/menu/MenuView$ItemView;)V
.end method

.method public greylist-max-o collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 4
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o createItemView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView$ItemView;
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 159
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuView$ItemView;

    return-object v0
.end method

.method public greylist-max-o expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 4
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method protected greylist-max-o filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .registers 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "childIndex"    # I

    .line 141
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o flagActionItems()Z
    .registers 2

    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getCallback()Lcom/android/internal/view/menu/MenuPresenter$Callback;
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    return-object v0
.end method

.method public greylist-max-o getId()I
    .registers 2

    .line 229
    iget v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mId:I

    return v0
.end method

.method public greylist-max-o getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 175
    instance-of v0, p2, Lcom/android/internal/view/menu/MenuView$ItemView;

    if-eqz v0, :cond_8

    .line 176
    move-object v0, p2

    check-cast v0, Lcom/android/internal/view/menu/MenuView$ItemView;

    .local v0, "itemView":Lcom/android/internal/view/menu/MenuView$ItemView;
    goto :goto_c

    .line 178
    .end local v0    # "itemView":Lcom/android/internal/view/menu/MenuView$ItemView;
    :cond_8
    invoke-virtual {p0, p3}, Lcom/android/internal/view/menu/BaseMenuPresenter;->createItemView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView$ItemView;

    move-result-object v0

    .line 180
    .restart local v0    # "itemView":Lcom/android/internal/view/menu/MenuView$ItemView;
    :goto_c
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/view/menu/BaseMenuPresenter;->bindItemView(Lcom/android/internal/view/menu/MenuItemImpl;Lcom/android/internal/view/menu/MenuView$ItemView;)V

    .line 181
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    return-object v1
.end method

.method public greylist-max-o getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .registers 5
    .param p1, "root"    # Landroid/view/ViewGroup;

    .line 71
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-nez v0, :cond_1c

    .line 72
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuView;

    iput-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    .line 73
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    iget-object v1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v1}, Lcom/android/internal/view/menu/MenuView;->initialize(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 77
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method public greylist-max-o initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 64
    iput-object p1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 66
    iput-object p2, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 67
    return-void
.end method

.method public greylist-max-o onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .registers 4
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 204
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_9

    .line 205
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 207
    :cond_9
    return-void
.end method

.method public greylist-max-o onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .registers 3
    .param p1, "menu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 210
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_b

    .line 211
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    move-result v0

    return v0

    .line 213
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .registers 2
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 146
    iput-object p1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 147
    return-void
.end method

.method public greylist-max-o setId(I)V
    .registers 2
    .param p1, "id"    # I

    .line 233
    iput p1, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mId:I

    .line 234
    return-void
.end method

.method public greylist-max-o shouldIncludeItem(ILcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 4
    .param p1, "childIndex"    # I
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o updateMenuView(Z)V
    .registers 12
    .param p1, "cleared"    # Z

    .line 84
    iget-object v0, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    .line 85
    .local v0, "parent":Landroid/view/ViewGroup;
    if-nez v0, :cond_7

    return-void

    .line 87
    :cond_7
    const/4 v1, 0x0

    .line 88
    .local v1, "childIndex":I
    iget-object v2, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_52

    .line 89
    iget-object v2, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->flagActionItems()V

    .line 90
    iget-object v2, p0, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 91
    .local v2, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 92
    .local v3, "itemCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    if-ge v4, v3, :cond_52

    .line 93
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 94
    .local v5, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/view/menu/BaseMenuPresenter;->shouldIncludeItem(ILcom/android/internal/view/menu/MenuItemImpl;)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 95
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 96
    .local v6, "convertView":Landroid/view/View;
    instance-of v7, v6, Lcom/android/internal/view/menu/MenuView$ItemView;

    if-eqz v7, :cond_3a

    .line 97
    move-object v7, v6

    check-cast v7, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v7}, Lcom/android/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v7

    goto :goto_3b

    :cond_3a
    const/4 v7, 0x0

    .line 98
    .local v7, "oldItem":Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_3b
    invoke-virtual {p0, v5, v6, v0}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 99
    .local v8, "itemView":Landroid/view/View;
    if-eq v5, v7, :cond_48

    .line 101
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setPressed(Z)V

    .line 102
    invoke-virtual {v8}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 104
    :cond_48
    if-eq v8, v6, :cond_4d

    .line 105
    invoke-virtual {p0, v8, v1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->addItemView(Landroid/view/View;I)V

    .line 107
    :cond_4d
    add-int/lit8 v1, v1, 0x1

    .line 92
    .end local v5    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v6    # "convertView":Landroid/view/View;
    .end local v7    # "oldItem":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v8    # "itemView":Landroid/view/View;
    :cond_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 113
    .end local v2    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .end local v3    # "itemCount":I
    .end local v4    # "i":I
    :cond_52
    :goto_52
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_61

    .line 114
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v2

    if-nez v2, :cond_52

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 118
    :cond_61
    return-void
.end method
