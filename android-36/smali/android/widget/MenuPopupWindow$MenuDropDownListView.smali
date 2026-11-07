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
.field final greylist-max-o mAdvanceKey:I

.field private greylist-max-o mHoverListener:Landroid/widget/MenuItemHoverListener;

.field private greylist-max-o mHoveredMenuItem:Landroid/view/MenuItem;

.field final greylist-max-o mRetreatKey:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Z)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 106
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 107
    .local v1, "config":Landroid/content/res/Configuration;
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x15

    const/16 v5, 0x16

    if-ne v2, v3, :cond_1b

    .line 108
    iput v4, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    .line 109
    iput v5, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    goto :goto_1f

    .line 111
    :cond_1b
    iput v5, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    .line 112
    iput v4, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    .line 114
    :goto_1f
    return-void
.end method


# virtual methods
.method public greylist-max-o clearSelection()V
    .registers 2

    .line 121
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->setSelectedPositionInt(I)V

    .line 122
    invoke-virtual {p0, v0}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->setNextSelectedPositionInt(I)V

    .line 123
    return-void
.end method

.method public whitelist onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 150
    iget-object v0, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroid/widget/MenuItemHoverListener;

    if-eqz v0, :cond_5f

    .line 154
    invoke-virtual {p0}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 155
    .local v0, "adapter":Landroid/widget/ListAdapter;
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_1b

    .line 156
    move-object v1, v0

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .line 157
    .local v1, "headerAdapter":Landroid/widget/HeaderViewListAdapter;
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 158
    .local v2, "headersCount":I
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/internal/view/menu/MenuAdapter;

    .line 159
    .local v1, "menuAdapter":Lcom/android/internal/view/menu/MenuAdapter;
    goto :goto_1f

    .line 160
    .end local v1    # "menuAdapter":Lcom/android/internal/view/menu/MenuAdapter;
    .end local v2    # "headersCount":I
    :cond_1b
    const/4 v2, 0x0

    .line 161
    .restart local v2    # "headersCount":I
    move-object v1, v0

    check-cast v1, Lcom/android/internal/view/menu/MenuAdapter;

    .line 165
    .restart local v1    # "menuAdapter":Lcom/android/internal/view/menu/MenuAdapter;
    :goto_1f
    const/4 v3, 0x0

    .line 166
    .local v3, "menuItem":Landroid/view/MenuItem;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_47

    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0, v4, v5}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->pointToPosition(II)I

    move-result v4

    .line 168
    .local v4, "position":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_47

    .line 169
    sub-int v5, v4, v2

    .line 170
    .local v5, "itemPosition":I
    if-ltz v5, :cond_47

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuAdapter;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_47

    .line 171
    invoke-virtual {v1, v5}, Lcom/android/internal/view/menu/MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v3

    .line 176
    .end local v4    # "position":I
    .end local v5    # "itemPosition":I
    :cond_47
    iget-object v4, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mHoveredMenuItem:Landroid/view/MenuItem;

    .line 177
    .local v4, "oldMenuItem":Landroid/view/MenuItem;
    if-eq v4, v3, :cond_5f

    .line 178
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuAdapter;->getAdapterMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v5

    .line 179
    .local v5, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    if-eqz v4, :cond_56

    .line 180
    iget-object v6, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroid/widget/MenuItemHoverListener;

    invoke-interface {v6, v5, v4}, Landroid/widget/MenuItemHoverListener;->onItemHoverExit(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    .line 183
    :cond_56
    iput-object v3, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mHoveredMenuItem:Landroid/view/MenuItem;

    .line 185
    if-eqz v3, :cond_5f

    .line 186
    iget-object v6, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroid/widget/MenuItemHoverListener;

    invoke-interface {v6, v5, v3}, Landroid/widget/MenuItemHoverListener;->onItemHoverEnter(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    .line 191
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v1    # "menuAdapter":Lcom/android/internal/view/menu/MenuAdapter;
    .end local v2    # "headersCount":I
    .end local v3    # "menuItem":Landroid/view/MenuItem;
    .end local v4    # "oldMenuItem":Landroid/view/MenuItem;
    .end local v5    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_5f
    invoke-super {p0, p1}, Landroid/widget/DropDownListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 127
    invoke-virtual {p0}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/ListMenuItemView;

    .line 128
    .local v0, "selectedItem":Lcom/android/internal/view/menu/ListMenuItemView;
    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    iget v2, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    if-ne p1, v2, :cond_2a

    .line 129
    invoke-virtual {v0}, Lcom/android/internal/view/menu/ListMenuItemView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ListMenuItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 130
    nop

    .line 132
    invoke-virtual {p0}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedItemPosition()I

    move-result v2

    .line 133
    invoke-virtual {p0}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedItemId()J

    move-result-wide v3

    .line 130
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 135
    :cond_29
    return v1

    .line 136
    :cond_2a
    if-eqz v0, :cond_46

    iget v2, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    if-ne p1, v2, :cond_46

    .line 137
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->setSelectedPositionInt(I)V

    .line 138
    invoke-virtual {p0, v2}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->setNextSelectedPositionInt(I)V

    .line 141
    invoke-virtual {p0}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuAdapter;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuAdapter;->getAdapterMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 142
    return v1

    .line 144
    :cond_46
    invoke-super {p0, p1, p2}, Landroid/widget/DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public greylist-max-o setHoverListener(Landroid/widget/MenuItemHoverListener;)V
    .registers 2
    .param p1, "hoverListener"    # Landroid/widget/MenuItemHoverListener;

    .line 117
    iput-object p1, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroid/widget/MenuItemHoverListener;

    .line 118
    return-void
.end method
