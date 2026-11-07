.class public abstract Lcom/android/internal/view/menu/MenuPopup;
.super Ljava/lang/Object;
.source "MenuPopup.java"

# interfaces
.implements Lcom/android/internal/view/menu/ShowableListMenu;
.implements Lcom/android/internal/view/menu/MenuPresenter;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private greylist-max-o mEpicenterBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static greylist-max-o measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I
    .registers 13
    .param p0, "adapter"    # Landroid/widget/ListAdapter;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "maxAllowedWidth"    # I

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "maxWidth":I
    const/4 v1, 0x0

    .line 142
    .local v1, "itemView":Landroid/view/View;
    const/4 v2, 0x0

    .line 144
    .local v2, "itemType":I
    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 145
    .local v4, "widthMeasureSpec":I
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 146
    .local v3, "heightMeasureSpec":I
    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    .line 147
    .local v5, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_11
    if-ge v6, v5, :cond_37

    .line 148
    invoke-interface {p0, v6}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v7

    .line 149
    .local v7, "positionType":I
    if-eq v7, v2, :cond_1b

    .line 150
    move v2, v7

    .line 151
    const/4 v1, 0x0

    .line 154
    :cond_1b
    if-nez p1, :cond_23

    .line 155
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object p1, v8

    .line 158
    :cond_23
    invoke-interface {p0, v6, v1, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 159
    invoke-virtual {v1, v4, v3}, Landroid/view/View;->measure(II)V

    .line 161
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 162
    .local v8, "itemWidth":I
    if-lt v8, p3, :cond_31

    .line 163
    return p3

    .line 164
    :cond_31
    if-le v8, v0, :cond_34

    .line 165
    move v0, v8

    .line 147
    .end local v7    # "positionType":I
    .end local v8    # "itemWidth":I
    :cond_34
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 169
    .end local v6    # "i":I
    :cond_37
    return v0
.end method

.method protected static greylist-max-o shouldPreserveIconSpacing(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .registers 6
    .param p0, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "preserveIconSpacing":Z
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v1

    .line 202
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_1d

    .line 203
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 204
    .local v3, "childItem":Landroid/view/MenuItem;
    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 205
    const/4 v0, 0x1

    .line 206
    goto :goto_1d

    .line 202
    .end local v3    # "childItem":Landroid/view/MenuItem;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 210
    .end local v2    # "i":I
    :cond_1d
    :goto_1d
    return v0
.end method

.method protected static greylist-max-o toMenuAdapter(Landroid/widget/ListAdapter;)Lcom/android/internal/view/menu/MenuAdapter;
    .registers 2
    .param p0, "adapter"    # Landroid/widget/ListAdapter;

    .line 181
    instance-of v0, p0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v0, :cond_e

    .line 182
    move-object v0, p0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuAdapter;

    return-object v0

    .line 184
    :cond_e
    move-object v0, p0

    check-cast v0, Lcom/android/internal/view/menu/MenuAdapter;

    return-object v0
.end method


# virtual methods
.method public abstract greylist-max-o addMenu(Lcom/android/internal/view/menu/MenuBuilder;)V
.end method

.method public greylist-max-o collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 4
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 4
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getEpicenterBounds()Landroid/graphics/Rect;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopup;->mEpicenterBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public greylist-max-o getId()I
    .registers 2

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .registers 4
    .param p1, "root"    # Landroid/view/ViewGroup;

    .line 103
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MenuPopups manage their own views"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 99
    return-void
.end method

.method public whitelist onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 123
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 124
    .local v0, "outerAdapter":Landroid/widget/ListAdapter;
    invoke-static {v0}, Lcom/android/internal/view/menu/MenuPopup;->toMenuAdapter(Landroid/widget/ListAdapter;)Lcom/android/internal/view/menu/MenuAdapter;

    move-result-object v1

    .line 128
    .local v1, "wrappedAdapter":Lcom/android/internal/view/menu/MenuAdapter;
    iget-object v2, v1, Lcom/android/internal/view/menu/MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MenuItem;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 129
    return-void
.end method

.method public abstract greylist-max-o setAnchorView(Landroid/view/View;)V
.end method

.method public greylist-max-o setEpicenterBounds(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 71
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopup;->mEpicenterBounds:Landroid/graphics/Rect;

    .line 72
    return-void
.end method

.method public abstract greylist-max-o setForceShowIcon(Z)V
.end method

.method public abstract greylist-max-o setGravity(I)V
.end method

.method public abstract greylist-max-o setHorizontalOffset(I)V
.end method

.method public abstract greylist-max-o setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
.end method

.method public abstract greylist-max-o setShowTitle(Z)V
.end method

.method public abstract greylist-max-o setVerticalOffset(I)V
.end method
