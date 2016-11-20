.class public Landroid/widget/MenuPopupWindow$MenuDropDownListView;
.super Landroid/widget/DropDownListView;
.source "MenuPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MenuPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuDropDownListView"
.end annotation


# instance fields
.field final mAdvanceKey:I

.field private mHoverListener:Landroid/widget/MenuItemHoverListener;

.field private mHoveredMenuItem:Landroid/view/MenuItem;

.field final mRetreatKey:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    #@0
    .prologue
    const/16 v5, 0x16

    #@2
    const/16 v4, 0x15

    #@4
    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V

    #@7
    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a
    move-result-object v1

    #@b
    .line 106
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@e
    move-result-object v0

    #@f
    .line 107
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    #@12
    move-result v2

    #@13
    const/4 v3, 0x1

    #@14
    if-ne v2, v3, :cond_0

    #@16
    .line 108
    iput v4, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    #@18
    .line 109
    iput v5, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    #@1a
    .line 102
    :goto_0
    return-void

    #@1b
    .line 111
    :cond_0
    iput v5, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    #@1d
    .line 112
    iput v4, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    #@1f
    goto :goto_0
.end method


# virtual methods
.method public clearSelection()V
    .locals 1

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 121
    invoke-virtual {p0, v0}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->setSelectedPositionInt(I)V

    #@4
    .line 122
    invoke-virtual {p0, v0}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->setNextSelectedPositionInt(I)V

    #@7
    .line 120
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    #@0
    .prologue
    .line 150
    iget-object v9, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroid/widget/MenuItemHoverListener;

    #@2
    if-eqz v9, :cond_2

    #@4
    .line 154
    invoke-virtual {p0}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    #@7
    move-result-object v0

    #@8
    .line 155
    .local v0, "adapter":Landroid/widget/ListAdapter;
    instance-of v9, v0, Landroid/widget/HeaderViewListAdapter;

    #@a
    if-eqz v9, :cond_3

    #@c
    move-object v1, v0

    #@d
    .line 156
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    #@f
    .line 157
    .local v1, "headerAdapter":Landroid/widget/HeaderViewListAdapter;
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    #@12
    move-result v2

    #@13
    .line 158
    .local v2, "headersCount":I
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    #@16
    move-result-object v5

    #@17
    check-cast v5, Lcom/android/internal/view/menu/MenuAdapter;

    #@19
    .line 165
    .end local v1    # "headerAdapter":Landroid/widget/HeaderViewListAdapter;
    .local v5, "menuAdapter":Lcom/android/internal/view/menu/MenuAdapter;
    :goto_0
    const/4 v6, 0x0

    #@1a
    .line 166
    .local v6, "menuItem":Landroid/view/MenuItem;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@1d
    move-result v9

    #@1e
    const/16 v10, 0xa

    #@20
    if-eq v9, v10, :cond_0

    #@22
    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@25
    move-result v9

    #@26
    float-to-int v9, v9

    #@27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@2a
    move-result v10

    #@2b
    float-to-int v10, v10

    #@2c
    invoke-virtual {p0, v9, v10}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->pointToPosition(II)I

    #@2f
    move-result v8

    #@30
    .line 168
    .local v8, "position":I
    const/4 v9, -0x1

    #@31
    if-eq v8, v9, :cond_0

    #@33
    .line 169
    sub-int v3, v8, v2

    #@35
    .line 170
    .local v3, "itemPosition":I
    if-ltz v3, :cond_0

    #@37
    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuAdapter;->getCount()I

    #@3a
    move-result v9

    #@3b
    if-ge v3, v9, :cond_0

    #@3d
    .line 171
    invoke-virtual {v5, v3}, Lcom/android/internal/view/menu/MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    #@40
    move-result-object v6

    #@41
    .line 176
    .end local v3    # "itemPosition":I
    .end local v6    # "menuItem":Landroid/view/MenuItem;
    .end local v8    # "position":I
    :cond_0
    iget-object v7, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mHoveredMenuItem:Landroid/view/MenuItem;

    #@43
    .line 177
    .local v7, "oldMenuItem":Landroid/view/MenuItem;
    if-eq v7, v6, :cond_2

    #@45
    .line 178
    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuAdapter;->getAdapterMenu()Lcom/android/internal/view/menu/MenuBuilder;

    #@48
    move-result-object v4

    #@49
    .line 179
    .local v4, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    if-eqz v7, :cond_1

    #@4b
    .line 180
    iget-object v9, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroid/widget/MenuItemHoverListener;

    #@4d
    invoke-interface {v9, v4, v7}, Landroid/widget/MenuItemHoverListener;->onItemHoverExit(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    #@50
    .line 183
    :cond_1
    iput-object v6, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mHoveredMenuItem:Landroid/view/MenuItem;

    #@52
    .line 185
    if-eqz v6, :cond_2

    #@54
    .line 186
    iget-object v9, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroid/widget/MenuItemHoverListener;

    #@56
    invoke-interface {v9, v4, v6}, Landroid/widget/MenuItemHoverListener;->onItemHoverEnter(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    #@59
    .line 191
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "headersCount":I
    .end local v4    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    .end local v5    # "menuAdapter":Lcom/android/internal/view/menu/MenuAdapter;
    .end local v7    # "oldMenuItem":Landroid/view/MenuItem;
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/DropDownListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    #@5c
    move-result v9

    #@5d
    return v9

    #@5e
    .line 160
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_3
    const/4 v2, 0x0

    #@5f
    .restart local v2    # "headersCount":I
    move-object v5, v0

    #@60
    .line 161
    check-cast v5, Lcom/android/internal/view/menu/MenuAdapter;

    #@62
    .restart local v5    # "menuAdapter":Lcom/android/internal/view/menu/MenuAdapter;
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v2, -0x1

    #@2
    .line 127
    invoke-virtual {p0}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedView()Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/view/menu/ListMenuItemView;

    #@8
    .line 128
    .local v0, "selectedItem":Lcom/android/internal/view/menu/ListMenuItemView;
    if-eqz v0, :cond_1

    #@a
    iget v1, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    #@c
    if-ne p1, v1, :cond_1

    #@e
    .line 129
    invoke-virtual {v0}, Lcom/android/internal/view/menu/ListMenuItemView;->isEnabled()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    invoke-virtual {v0}, Lcom/android/internal/view/menu/ListMenuItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_0

    #@1e
    .line 132
    invoke-virtual {p0}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedItemPosition()I

    #@21
    move-result v1

    #@22
    .line 133
    invoke-virtual {p0}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedItemId()J

    #@25
    move-result-wide v2

    #@26
    .line 130
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    #@29
    .line 135
    :cond_0
    return v4

    #@2a
    .line 136
    :cond_1
    if-eqz v0, :cond_2

    #@2c
    iget v1, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    #@2e
    if-ne p1, v1, :cond_2

    #@30
    .line 137
    invoke-virtual {p0, v2}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->setSelectedPositionInt(I)V

    #@33
    .line 138
    invoke-virtual {p0, v2}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->setNextSelectedPositionInt(I)V

    #@36
    .line 141
    invoke-virtual {p0}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    #@39
    move-result-object v1

    #@3a
    check-cast v1, Lcom/android/internal/view/menu/MenuAdapter;

    #@3c
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuAdapter;->getAdapterMenu()Lcom/android/internal/view/menu/MenuBuilder;

    #@3f
    move-result-object v1

    #@40
    const/4 v2, 0x0

    #@41
    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    #@44
    .line 142
    return v4

    #@45
    .line 144
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@48
    move-result v1

    #@49
    return v1
.end method

.method public setHoverListener(Landroid/widget/MenuItemHoverListener;)V
    .locals 0
    .param p1, "hoverListener"    # Landroid/widget/MenuItemHoverListener;

    #@0
    .prologue
    .line 117
    iput-object p1, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroid/widget/MenuItemHoverListener;

    #@2
    .line 116
    return-void
.end method
