.class public abstract Lcom/android/internal/view/menu/MenuPopup;
.super Ljava/lang/Object;
.source "MenuPopup.java"

# interfaces
.implements Lcom/android/internal/view/menu/ShowableListMenu;
.implements Lcom/android/internal/view/menu/MenuPresenter;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mEpicenterBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method protected static measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I
    .locals 10
    .param p0, "adapter"    # Landroid/widget/ListAdapter;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "maxAllowedWidth"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 140
    const/4 v6, 0x0

    #@2
    .line 141
    .local v6, "maxWidth":I
    const/4 v4, 0x0

    #@3
    .line 142
    .local v4, "itemView":Landroid/view/View;
    const/4 v3, 0x0

    #@4
    .line 144
    .local v3, "itemType":I
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@7
    move-result v8

    #@8
    .line 145
    .local v8, "widthMeasureSpec":I
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@b
    move-result v1

    #@c
    .line 146
    .local v1, "heightMeasureSpec":I
    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    #@f
    move-result v0

    #@10
    .line 147
    .local v0, "count":I
    const/4 v2, 0x0

    #@11
    .end local v4    # "itemView":Landroid/view/View;
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    #@13
    .line 148
    invoke-interface {p0, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    #@16
    move-result v7

    #@17
    .line 149
    .local v7, "positionType":I
    if-eq v7, v3, :cond_0

    #@19
    .line 150
    move v3, v7

    #@1a
    .line 151
    const/4 v4, 0x0

    #@1b
    .line 154
    :cond_0
    if-nez p1, :cond_1

    #@1d
    .line 155
    new-instance p1, Landroid/widget/FrameLayout;

    #@1f
    .end local p1    # "parent":Landroid/view/ViewGroup;
    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@22
    .line 158
    .restart local p1    # "parent":Landroid/view/ViewGroup;
    :cond_1
    invoke-interface {p0, v2, v4, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@25
    move-result-object v4

    #@26
    .line 159
    .local v4, "itemView":Landroid/view/View;
    invoke-virtual {v4, v8, v1}, Landroid/view/View;->measure(II)V

    #@29
    .line 161
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    #@2c
    move-result v5

    #@2d
    .line 162
    .local v5, "itemWidth":I
    if-lt v5, p3, :cond_2

    #@2f
    .line 163
    return p3

    #@30
    .line 164
    :cond_2
    if-le v5, v6, :cond_3

    #@32
    .line 165
    move v6, v5

    #@33
    .line 147
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@35
    goto :goto_0

    #@36
    .line 169
    .end local v4    # "itemView":Landroid/view/View;
    .end local v5    # "itemWidth":I
    .end local v7    # "positionType":I
    :cond_4
    return v6
.end method

.method protected static shouldPreserveIconSpacing(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .locals 5
    .param p0, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    .line 199
    const/4 v3, 0x0

    #@1
    .line 200
    .local v3, "preserveIconSpacing":Z
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    #@4
    move-result v1

    #@5
    .line 202
    .local v1, "count":I
    const/4 v2, 0x0

    #@6
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@8
    .line 203
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    #@b
    move-result-object v0

    #@c
    .line 204
    .local v0, "childItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_1

    #@12
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    #@15
    move-result-object v4

    #@16
    if-eqz v4, :cond_1

    #@18
    .line 205
    const/4 v3, 0x1

    #@19
    .line 210
    .end local v0    # "childItem":Landroid/view/MenuItem;
    :cond_0
    return v3

    #@1a
    .line 202
    .restart local v0    # "childItem":Landroid/view/MenuItem;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_0
.end method

.method protected static toMenuAdapter(Landroid/widget/ListAdapter;)Lcom/android/internal/view/menu/MenuAdapter;
    .locals 1
    .param p0, "adapter"    # Landroid/widget/ListAdapter;

    #@0
    .prologue
    .line 181
    instance-of v0, p0, Landroid/widget/HeaderViewListAdapter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 182
    check-cast p0, Landroid/widget/HeaderViewListAdapter;

    #@6
    .end local p0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/internal/view/menu/MenuAdapter;

    #@c
    return-object v0

    #@d
    .line 184
    .restart local p0    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    check-cast p0, Lcom/android/internal/view/menu/MenuAdapter;

    #@f
    .end local p0    # "adapter":Landroid/widget/ListAdapter;
    return-object p0
.end method


# virtual methods
.method public abstract addMenu(Lcom/android/internal/view/menu/MenuBuilder;)V
.end method

.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    #@0
    .prologue
    .line 113
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    #@0
    .prologue
    .line 108
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getEpicenterBounds()Landroid/graphics/Rect;
    .locals 1

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopup;->mEpicenterBounds:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 118
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 103
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "MenuPopups manage their own views"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    .line 97
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 123
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/widget/ListAdapter;

    #@6
    .line 124
    .local v0, "outerAdapter":Landroid/widget/ListAdapter;
    invoke-static {v0}, Lcom/android/internal/view/menu/MenuPopup;->toMenuAdapter(Landroid/widget/ListAdapter;)Lcom/android/internal/view/menu/MenuAdapter;

    #@9
    move-result-object v1

    #@a
    .line 128
    .local v1, "wrappedAdapter":Lcom/android/internal/view/menu/MenuAdapter;
    iget-object v3, v1, Lcom/android/internal/view/menu/MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@c
    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/view/MenuItem;

    #@12
    const/4 v4, 0x0

    #@13
    invoke-virtual {v3, v2, v4}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    #@16
    .line 122
    return-void
.end method

.method public abstract setAnchorView(Landroid/view/View;)V
.end method

.method public setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopup;->mEpicenterBounds:Landroid/graphics/Rect;

    #@2
    .line 70
    return-void
.end method

.method public abstract setForceShowIcon(Z)V
.end method

.method public abstract setGravity(I)V
.end method

.method public abstract setHorizontalOffset(I)V
.end method

.method public abstract setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
.end method

.method public abstract setShowTitle(Z)V
.end method

.method public abstract setVerticalOffset(I)V
.end method
