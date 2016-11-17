.class final Lcom/android/internal/view/menu/CascadingMenuPopup;
.super Lcom/android/internal/view/menu/MenuPopup;
.source "CascadingMenuPopup.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/CascadingMenuPopup$1;,
        Lcom/android/internal/view/menu/CascadingMenuPopup$2;,
        Lcom/android/internal/view/menu/CascadingMenuPopup$3;,
        Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    }
.end annotation


# static fields
.field private static final HORIZ_POSITION_LEFT:I = 0x0

.field private static final HORIZ_POSITION_RIGHT:I = 0x1

.field private static final SUBMENU_TIMEOUT_MS:I = 0xc8


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private final mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private mForceShowIcon:Z

.field private final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHasXOffset:Z

.field private mHasYOffset:Z

.field private mLastPosition:I

.field private final mMenuItemHoverListener:Landroid/widget/MenuItemHoverListener;

.field private final mMenuMaxWidth:I

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field private final mPendingMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/view/menu/MenuBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mRawDropDownGravity:I

.field private mShouldCloseImmediately:Z

.field private mShowTitle:Z

.field private final mShowingMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShownAnchorView:Landroid/view/View;

.field private final mSubMenuHoverHandler:Landroid/os/Handler;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/view/menu/CascadingMenuPopup;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/view/View;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/view/ViewTreeObserver;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/view/menu/CascadingMenuPopup;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/view/menu/CascadingMenuPopup;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@2
    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "popupStyleAttr"    # I
    .param p4, "popupStyleRes"    # I
    .param p5, "overflowOnly"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 202
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuPopup;-><init>()V

    #@4
    .line 72
    new-instance v1, Ljava/util/LinkedList;

    #@6
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    #@9
    iput-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    #@b
    .line 78
    new-instance v1, Ljava/util/ArrayList;

    #@d
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@10
    iput-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@12
    .line 80
    new-instance v1, Lcom/android/internal/view/menu/CascadingMenuPopup$1;

    #@14
    invoke-direct {v1, p0}, Lcom/android/internal/view/menu/CascadingMenuPopup$1;-><init>(Lcom/android/internal/view/menu/CascadingMenuPopup;)V

    #@17
    iput-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    #@19
    .line 102
    new-instance v1, Lcom/android/internal/view/menu/CascadingMenuPopup$2;

    #@1b
    invoke-direct {v1, p0}, Lcom/android/internal/view/menu/CascadingMenuPopup$2;-><init>(Lcom/android/internal/view/menu/CascadingMenuPopup;)V

    #@1e
    .line 101
    iput-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    #@20
    .line 119
    new-instance v1, Lcom/android/internal/view/menu/CascadingMenuPopup$3;

    #@22
    invoke-direct {v1, p0}, Lcom/android/internal/view/menu/CascadingMenuPopup$3;-><init>(Lcom/android/internal/view/menu/CascadingMenuPopup;)V

    #@25
    iput-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mMenuItemHoverListener:Landroid/widget/MenuItemHoverListener;

    #@27
    .line 179
    iput v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    #@29
    .line 180
    iput v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    #@2b
    .line 204
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-result-object v1

    #@2f
    check-cast v1, Landroid/content/Context;

    #@31
    iput-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    #@33
    .line 205
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    move-result-object v1

    #@37
    check-cast v1, Landroid/view/View;

    #@39
    iput-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    #@3b
    .line 206
    iput p3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPopupStyleAttr:I

    #@3d
    .line 207
    iput p4, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPopupStyleRes:I

    #@3f
    .line 208
    iput-boolean p5, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mOverflowOnly:Z

    #@41
    .line 210
    iput-boolean v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    #@43
    .line 211
    invoke-direct {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->getInitialMenuPosition()I

    #@46
    move-result v1

    #@47
    iput v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mLastPosition:I

    #@49
    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4c
    move-result-object v0

    #@4d
    .line 214
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@50
    move-result-object v1

    #@51
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    #@53
    div-int/lit8 v1, v1, 0x2

    #@55
    .line 215
    const v2, 0x105000e

    #@58
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@5b
    move-result v2

    #@5c
    .line 214
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@5f
    move-result v1

    #@60
    iput v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    #@62
    .line 217
    new-instance v1, Landroid/os/Handler;

    #@64
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    #@67
    iput-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    #@69
    .line 203
    return-void
.end method

.method private createPopupWindow()Landroid/widget/MenuPopupWindow;
    .locals 5

    #@0
    .prologue
    .line 226
    new-instance v0, Landroid/widget/MenuPopupWindow;

    #@2
    .line 227
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    #@4
    iget v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPopupStyleAttr:I

    #@6
    iget v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPopupStyleRes:I

    #@8
    const/4 v4, 0x0

    #@9
    .line 226
    invoke-direct {v0, v1, v4, v2, v3}, Landroid/widget/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@c
    .line 228
    .local v0, "popupWindow":Landroid/widget/MenuPopupWindow;
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mMenuItemHoverListener:Landroid/widget/MenuItemHoverListener;

    #@e
    invoke-virtual {v0, v1}, Landroid/widget/MenuPopupWindow;->setHoverListener(Landroid/widget/MenuItemHoverListener;)V

    #@11
    .line 229
    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@14
    .line 230
    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    #@17
    .line 231
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    #@19
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    #@1c
    .line 232
    iget v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    #@1e
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setDropDownGravity(I)V

    #@21
    .line 233
    const/4 v1, 0x1

    #@22
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    #@25
    .line 234
    const/4 v1, 0x2

    #@26
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    #@29
    .line 235
    return-object v0
.end method

.method private findIndexOfAddedMenu(Lcom/android/internal/view/menu/MenuBuilder;)I
    .locals 4
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    .line 602
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@3
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@6
    move-result v0

    #@7
    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 603
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@b
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@11
    .line 604
    .local v2, "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v3, v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@13
    if-ne p1, v3, :cond_0

    #@15
    .line 605
    return v1

    #@16
    .line 602
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 609
    .end local v2    # "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_1
    const/4 v3, -0x1

    #@1a
    return v3
.end method

.method private findMenuItemForSubmenu(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuBuilder;)Landroid/view/MenuItem;
    .locals 4
    .param p1, "parent"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "submenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    .line 463
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    #@4
    move-result v0

    #@5
    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@7
    .line 464
    invoke-virtual {p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    #@a
    move-result-object v2

    #@b
    .line 465
    .local v2, "item":Landroid/view/MenuItem;
    invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    #@14
    move-result-object v3

    #@15
    if-ne p2, v3, :cond_0

    #@17
    .line 466
    return-object v2

    #@18
    .line 463
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 470
    .end local v2    # "item":Landroid/view/MenuItem;
    :cond_1
    const/4 v3, 0x0

    #@1c
    return-object v3
.end method

.method private findParentViewForSubmenu(Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;Lcom/android/internal/view/menu/MenuBuilder;)Landroid/view/View;
    .locals 12
    .param p1, "parentInfo"    # Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    .param p2, "submenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 484
    iget-object v10, p1, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@3
    invoke-direct {p0, v10, p2}, Lcom/android/internal/view/menu/CascadingMenuPopup;->findMenuItemForSubmenu(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuBuilder;)Landroid/view/MenuItem;

    #@6
    move-result-object v7

    #@7
    .line 485
    .local v7, "owner":Landroid/view/MenuItem;
    if-nez v7, :cond_0

    #@9
    .line 487
    return-object v11

    #@a
    .line 493
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    #@d
    move-result-object v5

    #@e
    .line 494
    .local v5, "listView":Landroid/widget/ListView;
    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    #@11
    move-result-object v4

    #@12
    .line 495
    .local v4, "listAdapter":Landroid/widget/ListAdapter;
    instance-of v10, v4, Landroid/widget/HeaderViewListAdapter;

    #@14
    if-eqz v10, :cond_2

    #@16
    move-object v1, v4

    #@17
    .line 496
    nop

    #@18
    nop

    #@19
    .line 497
    .local v1, "headerAdapter":Landroid/widget/HeaderViewListAdapter;
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    #@1c
    move-result v2

    #@1d
    .line 498
    .local v2, "headersCount":I
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    #@20
    move-result-object v6

    #@21
    check-cast v6, Lcom/android/internal/view/menu/MenuAdapter;

    #@23
    .line 505
    .end local v1    # "headerAdapter":Landroid/widget/HeaderViewListAdapter;
    .local v6, "menuAdapter":Lcom/android/internal/view/menu/MenuAdapter;
    :goto_0
    const/4 v8, -0x1

    #@24
    .line 506
    .local v8, "ownerPosition":I
    const/4 v3, 0x0

    #@25
    .local v3, "i":I
    invoke-virtual {v6}, Lcom/android/internal/view/menu/MenuAdapter;->getCount()I

    #@28
    move-result v0

    #@29
    .local v0, "count":I
    :goto_1
    if-ge v3, v0, :cond_1

    #@2b
    .line 507
    invoke-virtual {v6, v3}, Lcom/android/internal/view/menu/MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    #@2e
    move-result-object v10

    #@2f
    if-ne v7, v10, :cond_3

    #@31
    .line 508
    move v8, v3

    #@32
    .line 512
    :cond_1
    const/4 v10, -0x1

    #@33
    if-ne v8, v10, :cond_4

    #@35
    .line 514
    return-object v11

    #@36
    .line 500
    .end local v0    # "count":I
    .end local v2    # "headersCount":I
    .end local v3    # "i":I
    .end local v6    # "menuAdapter":Lcom/android/internal/view/menu/MenuAdapter;
    .end local v8    # "ownerPosition":I
    :cond_2
    const/4 v2, 0x0

    #@37
    .restart local v2    # "headersCount":I
    move-object v6, v4

    #@38
    .line 501
    check-cast v6, Lcom/android/internal/view/menu/MenuAdapter;

    #@3a
    .restart local v6    # "menuAdapter":Lcom/android/internal/view/menu/MenuAdapter;
    goto :goto_0

    #@3b
    .line 506
    .restart local v0    # "count":I
    .restart local v3    # "i":I
    .restart local v8    # "ownerPosition":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@3d
    goto :goto_1

    #@3e
    .line 518
    :cond_4
    add-int/2addr v8, v2

    #@3f
    .line 521
    invoke-virtual {v5}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    #@42
    move-result v10

    #@43
    sub-int v9, v8, v10

    #@45
    .line 522
    .local v9, "ownerViewPosition":I
    if-ltz v9, :cond_5

    #@47
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    #@4a
    move-result v10

    #@4b
    if-lt v9, v10, :cond_6

    #@4d
    .line 524
    :cond_5
    return-object v11

    #@4e
    .line 527
    :cond_6
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@51
    move-result-object v10

    #@52
    return-object v10
.end method

.method private getInitialMenuPosition()I
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 296
    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    #@3
    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    #@6
    move-result v0

    #@7
    .line 297
    .local v0, "layoutDirection":I
    if-ne v0, v1, :cond_0

    #@9
    const/4 v1, 0x0

    #@a
    :cond_0
    return v1
.end method

.method private getNextMenuPosition(I)I
    .locals 9
    .param p1, "nextMenuWidth"    # I

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 310
    iget-object v5, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@4
    iget-object v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@6
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@9
    move-result v6

    #@a
    add-int/lit8 v6, v6, -0x1

    #@c
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v5

    #@10
    check-cast v5, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@12
    invoke-virtual {v5}, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    #@15
    move-result-object v1

    #@16
    .line 312
    .local v1, "lastListView":Landroid/widget/ListView;
    const/4 v5, 0x2

    #@17
    new-array v4, v5, [I

    #@19
    .line 313
    .local v4, "screenLocation":[I
    invoke-virtual {v1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    #@1c
    .line 315
    new-instance v0, Landroid/graphics/Rect;

    #@1e
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@21
    .line 316
    .local v0, "displayFrame":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    #@23
    invoke-virtual {v5, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    #@26
    .line 318
    iget v5, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mLastPosition:I

    #@28
    if-ne v5, v8, :cond_1

    #@2a
    .line 319
    aget v5, v4, v7

    #@2c
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    #@2f
    move-result v6

    #@30
    add-int/2addr v5, v6

    #@31
    add-int v3, v5, p1

    #@33
    .line 320
    .local v3, "right":I
    iget v5, v0, Landroid/graphics/Rect;->right:I

    #@35
    if-le v3, v5, :cond_0

    #@37
    .line 321
    return v7

    #@38
    .line 323
    :cond_0
    return v8

    #@39
    .line 325
    .end local v3    # "right":I
    :cond_1
    aget v5, v4, v7

    #@3b
    sub-int v2, v5, p1

    #@3d
    .line 326
    .local v2, "left":I
    if-gez v2, :cond_2

    #@3f
    .line 327
    return v8

    #@40
    .line 329
    :cond_2
    return v7
.end method

.method private showMenu(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 24
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    .line 350
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    #@4
    move-object/from16 v21, v0

    #@6
    invoke-static/range {v21 .. v21}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@9
    move-result-object v5

    #@a
    .line 351
    .local v5, "inflater":Landroid/view/LayoutInflater;
    new-instance v3, Lcom/android/internal/view/menu/MenuAdapter;

    #@c
    move-object/from16 v0, p0

    #@e
    iget-boolean v0, v0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mOverflowOnly:Z

    #@10
    move/from16 v21, v0

    #@12
    move-object/from16 v0, p1

    #@14
    move/from16 v1, v21

    #@16
    invoke-direct {v3, v0, v5, v1}, Lcom/android/internal/view/menu/MenuAdapter;-><init>(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/LayoutInflater;Z)V

    #@19
    .line 357
    .local v3, "adapter":Lcom/android/internal/view/menu/MenuAdapter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->isShowing()Z

    #@1c
    move-result v21

    #@1d
    if-nez v21, :cond_2

    #@1f
    move-object/from16 v0, p0

    #@21
    iget-boolean v0, v0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    #@23
    move/from16 v21, v0

    #@25
    if-eqz v21, :cond_2

    #@27
    .line 359
    const/16 v21, 0x1

    #@29
    move/from16 v0, v21

    #@2b
    invoke-virtual {v3, v0}, Lcom/android/internal/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    #@2e
    .line 366
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    #@30
    iget-object v0, v0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    #@32
    move-object/from16 v21, v0

    #@34
    move-object/from16 v0, p0

    #@36
    iget v0, v0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    #@38
    move/from16 v22, v0

    #@3a
    const/16 v23, 0x0

    #@3c
    move-object/from16 v0, v23

    #@3e
    move-object/from16 v1, v21

    #@40
    move/from16 v2, v22

    #@42
    invoke-static {v3, v0, v1, v2}, Lcom/android/internal/view/menu/CascadingMenuPopup;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    #@45
    move-result v8

    #@46
    .line 367
    .local v8, "menuWidth":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->createPopupWindow()Landroid/widget/MenuPopupWindow;

    #@49
    move-result-object v14

    #@4a
    .line 368
    .local v14, "popupWindow":Landroid/widget/MenuPopupWindow;
    invoke-virtual {v14, v3}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    #@4d
    .line 369
    invoke-virtual {v14, v8}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    #@50
    .line 370
    move-object/from16 v0, p0

    #@52
    iget v0, v0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    #@54
    move/from16 v21, v0

    #@56
    move/from16 v0, v21

    #@58
    invoke-virtual {v14, v0}, Landroid/widget/ListPopupWindow;->setDropDownGravity(I)V

    #@5b
    .line 374
    move-object/from16 v0, p0

    #@5d
    iget-object v0, v0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@5f
    move-object/from16 v21, v0

    #@61
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    #@64
    move-result v21

    #@65
    if-lez v21, :cond_3

    #@67
    .line 375
    move-object/from16 v0, p0

    #@69
    iget-object v0, v0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@6b
    move-object/from16 v21, v0

    #@6d
    move-object/from16 v0, p0

    #@6f
    iget-object v0, v0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@71
    move-object/from16 v22, v0

    #@73
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    #@76
    move-result v22

    #@77
    add-int/lit8 v22, v22, -0x1

    #@79
    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7c
    move-result-object v10

    #@7d
    check-cast v10, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@7f
    .line 376
    .local v10, "parentInfo":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    move-object/from16 v0, p0

    #@81
    move-object/from16 v1, p1

    #@83
    invoke-direct {v0, v10, v1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->findParentViewForSubmenu(Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;Lcom/android/internal/view/menu/MenuBuilder;)Landroid/view/View;

    #@86
    move-result-object v13

    #@87
    .line 382
    .end local v10    # "parentInfo":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :goto_1
    if-eqz v13, :cond_8

    #@89
    .line 384
    const/16 v21, 0x0

    #@8b
    move/from16 v0, v21

    #@8d
    invoke-virtual {v14, v0}, Landroid/widget/MenuPopupWindow;->setTouchModal(Z)V

    #@90
    .line 385
    const/16 v21, 0x0

    #@92
    move-object/from16 v0, v21

    #@94
    invoke-virtual {v14, v0}, Landroid/widget/MenuPopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    #@97
    .line 387
    move-object/from16 v0, p0

    #@99
    invoke-direct {v0, v8}, Lcom/android/internal/view/menu/CascadingMenuPopup;->getNextMenuPosition(I)I

    #@9c
    move-result v9

    #@9d
    .line 388
    .local v9, "nextMenuPosition":I
    const/16 v21, 0x1

    #@9f
    move/from16 v0, v21

    #@a1
    if-ne v9, v0, :cond_4

    #@a3
    const/4 v15, 0x1

    #@a4
    .line 389
    .local v15, "showOnRight":Z
    :goto_2
    move-object/from16 v0, p0

    #@a6
    iput v9, v0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mLastPosition:I

    #@a8
    .line 391
    const/16 v21, 0x2

    #@aa
    move/from16 v0, v21

    #@ac
    new-array v0, v0, [I

    #@ae
    move-object/from16 v16, v0

    #@b0
    .line 395
    .local v16, "tempLocation":[I
    move-object/from16 v0, v16

    #@b2
    invoke-virtual {v13, v0}, Landroid/view/View;->getLocationInWindow([I)V

    #@b5
    .line 396
    iget-object v0, v10, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    #@b7
    move-object/from16 v21, v0

    #@b9
    invoke-virtual/range {v21 .. v21}, Landroid/widget/ListPopupWindow;->getHorizontalOffset()I

    #@bc
    move-result v21

    #@bd
    const/16 v22, 0x0

    #@bf
    aget v22, v16, v22

    #@c1
    add-int v11, v21, v22

    #@c3
    .line 397
    .local v11, "parentOffsetLeft":I
    iget-object v0, v10, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    #@c5
    move-object/from16 v21, v0

    #@c7
    invoke-virtual/range {v21 .. v21}, Landroid/widget/ListPopupWindow;->getVerticalOffset()I

    #@ca
    move-result v21

    #@cb
    const/16 v22, 0x1

    #@cd
    aget v22, v16, v22

    #@cf
    add-int v12, v21, v22

    #@d1
    .line 402
    .local v12, "parentOffsetTop":I
    move-object/from16 v0, p0

    #@d3
    iget v0, v0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    #@d5
    move/from16 v21, v0

    #@d7
    and-int/lit8 v21, v21, 0x5

    #@d9
    const/16 v22, 0x5

    #@db
    move/from16 v0, v21

    #@dd
    move/from16 v1, v22

    #@df
    if-ne v0, v1, :cond_6

    #@e1
    .line 403
    if-eqz v15, :cond_5

    #@e3
    .line 404
    add-int v19, v11, v8

    #@e5
    .line 416
    .local v19, "x":I
    :goto_3
    move/from16 v0, v19

    #@e7
    invoke-virtual {v14, v0}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    #@ea
    .line 418
    move/from16 v20, v12

    #@ec
    .line 419
    .local v20, "y":I
    invoke-virtual {v14, v12}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    #@ef
    .line 432
    .end local v9    # "nextMenuPosition":I
    .end local v11    # "parentOffsetLeft":I
    .end local v12    # "parentOffsetTop":I
    .end local v15    # "showOnRight":Z
    .end local v16    # "tempLocation":[I
    .end local v19    # "x":I
    .end local v20    # "y":I
    :goto_4
    new-instance v7, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@f1
    move-object/from16 v0, p0

    #@f3
    iget v0, v0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mLastPosition:I

    #@f5
    move/from16 v21, v0

    #@f7
    move-object/from16 v0, p1

    #@f9
    move/from16 v1, v21

    #@fb
    invoke-direct {v7, v14, v0, v1}, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;-><init>(Landroid/widget/MenuPopupWindow;Lcom/android/internal/view/menu/MenuBuilder;I)V

    #@fe
    .line 433
    .local v7, "menuInfo":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    move-object/from16 v0, p0

    #@100
    iget-object v0, v0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@102
    move-object/from16 v21, v0

    #@104
    move-object/from16 v0, v21

    #@106
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@109
    .line 435
    invoke-virtual {v14}, Landroid/widget/ListPopupWindow;->show()V

    #@10c
    .line 438
    if-nez v10, :cond_1

    #@10e
    move-object/from16 v0, p0

    #@110
    iget-boolean v0, v0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowTitle:Z

    #@112
    move/from16 v21, v0

    #@114
    if-eqz v21, :cond_1

    #@116
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    #@119
    move-result-object v21

    #@11a
    if-eqz v21, :cond_1

    #@11c
    .line 439
    invoke-virtual {v14}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    #@11f
    move-result-object v6

    #@120
    .line 441
    .local v6, "listView":Landroid/widget/ListView;
    const v21, 0x10900a0

    #@123
    const/16 v22, 0x0

    #@125
    .line 440
    move/from16 v0, v21

    #@127
    move/from16 v1, v22

    #@129
    invoke-virtual {v5, v0, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@12c
    move-result-object v17

    #@12d
    check-cast v17, Landroid/widget/FrameLayout;

    #@12f
    .line 442
    .local v17, "titleItemView":Landroid/widget/FrameLayout;
    const v21, 0x1020016

    #@132
    move-object/from16 v0, v17

    #@134
    move/from16 v1, v21

    #@136
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@139
    move-result-object v18

    #@13a
    check-cast v18, Landroid/widget/TextView;

    #@13c
    .line 443
    .local v18, "titleView":Landroid/widget/TextView;
    const/16 v21, 0x0

    #@13e
    move-object/from16 v0, v17

    #@140
    move/from16 v1, v21

    #@142
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    #@145
    .line 444
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    #@148
    move-result-object v21

    #@149
    move-object/from16 v0, v18

    #@14b
    move-object/from16 v1, v21

    #@14d
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@150
    .line 445
    const/16 v21, 0x0

    #@152
    const/16 v22, 0x0

    #@154
    move-object/from16 v0, v17

    #@156
    move-object/from16 v1, v21

    #@158
    move/from16 v2, v22

    #@15a
    invoke-virtual {v6, v0, v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    #@15d
    .line 448
    invoke-virtual {v14}, Landroid/widget/ListPopupWindow;->show()V

    #@160
    .line 349
    .end local v6    # "listView":Landroid/widget/ListView;
    .end local v17    # "titleItemView":Landroid/widget/FrameLayout;
    .end local v18    # "titleView":Landroid/widget/TextView;
    :cond_1
    return-void

    #@161
    .line 360
    .end local v7    # "menuInfo":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    .end local v8    # "menuWidth":I
    .end local v14    # "popupWindow":Landroid/widget/MenuPopupWindow;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->isShowing()Z

    #@164
    move-result v21

    #@165
    if-eqz v21, :cond_0

    #@167
    .line 362
    invoke-static/range {p1 .. p1}, Lcom/android/internal/view/menu/MenuPopup;->shouldPreserveIconSpacing(Lcom/android/internal/view/menu/MenuBuilder;)Z

    #@16a
    move-result v21

    #@16b
    move/from16 v0, v21

    #@16d
    invoke-virtual {v3, v0}, Lcom/android/internal/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    #@170
    goto/16 :goto_0

    #@172
    .line 378
    .restart local v8    # "menuWidth":I
    .restart local v14    # "popupWindow":Landroid/widget/MenuPopupWindow;
    :cond_3
    const/4 v10, 0x0

    #@173
    .line 379
    .local v10, "parentInfo":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    const/4 v13, 0x0

    #@174
    .local v13, "parentView":Landroid/view/View;
    goto/16 :goto_1

    #@176
    .line 388
    .end local v10    # "parentInfo":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    .end local v13    # "parentView":Landroid/view/View;
    .restart local v9    # "nextMenuPosition":I
    :cond_4
    const/4 v15, 0x0

    #@177
    .restart local v15    # "showOnRight":Z
    goto/16 :goto_2

    #@179
    .line 406
    .restart local v11    # "parentOffsetLeft":I
    .restart local v12    # "parentOffsetTop":I
    .restart local v16    # "tempLocation":[I
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    #@17c
    move-result v21

    #@17d
    sub-int v19, v11, v21

    #@17f
    .restart local v19    # "x":I
    goto/16 :goto_3

    #@181
    .line 409
    .end local v19    # "x":I
    :cond_6
    if-eqz v15, :cond_7

    #@183
    .line 410
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    #@186
    move-result v21

    #@187
    add-int v19, v11, v21

    #@189
    .restart local v19    # "x":I
    goto/16 :goto_3

    #@18b
    .line 412
    .end local v19    # "x":I
    :cond_7
    sub-int v19, v11, v8

    #@18d
    .restart local v19    # "x":I
    goto/16 :goto_3

    #@18f
    .line 421
    .end local v9    # "nextMenuPosition":I
    .end local v11    # "parentOffsetLeft":I
    .end local v12    # "parentOffsetTop":I
    .end local v15    # "showOnRight":Z
    .end local v16    # "tempLocation":[I
    .end local v19    # "x":I
    :cond_8
    move-object/from16 v0, p0

    #@191
    iget-boolean v0, v0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mHasXOffset:Z

    #@193
    move/from16 v21, v0

    #@195
    if-eqz v21, :cond_9

    #@197
    .line 422
    move-object/from16 v0, p0

    #@199
    iget v0, v0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mXOffset:I

    #@19b
    move/from16 v21, v0

    #@19d
    move/from16 v0, v21

    #@19f
    invoke-virtual {v14, v0}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    #@1a2
    .line 424
    :cond_9
    move-object/from16 v0, p0

    #@1a4
    iget-boolean v0, v0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mHasYOffset:Z

    #@1a6
    move/from16 v21, v0

    #@1a8
    if-eqz v21, :cond_a

    #@1aa
    .line 425
    move-object/from16 v0, p0

    #@1ac
    iget v0, v0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mYOffset:I

    #@1ae
    move/from16 v21, v0

    #@1b0
    move/from16 v0, v21

    #@1b2
    invoke-virtual {v14, v0}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    #@1b5
    .line 427
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/MenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    #@1b8
    move-result-object v4

    #@1b9
    .line 428
    .local v4, "epicenterBounds":Landroid/graphics/Rect;
    invoke-virtual {v14, v4}, Landroid/widget/ListPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    #@1bc
    goto/16 :goto_4
.end method


# virtual methods
.method public addMenu(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {p1, p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    #@5
    .line 337
    invoke-virtual {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->isShowing()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 338
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->showMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    #@e
    .line 334
    :goto_0
    return-void

    #@f
    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    #@11
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@14
    goto :goto_0
.end method

.method public dismiss()V
    .locals 6

    #@0
    .prologue
    .line 268
    iget-object v4, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@2
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@5
    move-result v3

    #@6
    .line 269
    .local v3, "length":I
    if-lez v3, :cond_1

    #@8
    .line 271
    iget-object v4, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@a
    new-array v5, v3, [Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@c
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, [Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@12
    .line 272
    .local v0, "addedMenus":[Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    add-int/lit8 v1, v3, -0x1

    #@14
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@16
    .line 273
    aget-object v2, v0, v1

    #@18
    .line 274
    .local v2, "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v4, v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    #@1a
    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->isShowing()Z

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_0

    #@20
    .line 275
    iget-object v4, v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    #@22
    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->dismiss()V

    #@25
    .line 272
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@27
    goto :goto_0

    #@28
    .line 263
    .end local v0    # "addedMenus":[Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    .end local v1    # "i":I
    .end local v2    # "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_1
    return-void
.end method

.method public flagActionItems()Z
    .locals 1

    #@0
    .prologue
    .line 673
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 2

    #@0
    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    return-object v0

    #@a
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@c
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@e
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@11
    move-result v1

    #@12
    add-int/lit8 v1, v1, -0x1

    #@14
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@1a
    invoke-virtual {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    #@1d
    move-result-object v0

    #@1e
    goto :goto_0
.end method

.method public isShowing()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 535
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@3
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@6
    move-result v1

    #@7
    if-lez v1, :cond_0

    #@9
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@b
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@11
    iget-object v0, v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    #@13
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    #@16
    move-result v0

    #@17
    :cond_0
    return v0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 10
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 614
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->findIndexOfAddedMenu(Lcom/android/internal/view/menu/MenuBuilder;)I

    #@5
    move-result v3

    #@6
    .line 615
    .local v3, "menuIndex":I
    if-gez v3, :cond_0

    #@8
    .line 616
    return-void

    #@9
    .line 620
    :cond_0
    add-int/lit8 v4, v3, 0x1

    #@b
    .line 621
    .local v4, "nextMenuIndex":I
    iget-object v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@d
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@10
    move-result v6

    #@11
    if-ge v4, v6, :cond_1

    #@13
    .line 622
    iget-object v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@15
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@1b
    .line 623
    .local v0, "childInfo":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v6, v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@1d
    invoke-virtual {v6, v8}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    #@20
    .line 627
    .end local v0    # "childInfo":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_1
    iget-object v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@22
    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@28
    .line 628
    .local v2, "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v6, v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2a
    invoke-virtual {v6, p0}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    #@2d
    .line 629
    iget-boolean v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    #@2f
    if-eqz v6, :cond_2

    #@31
    .line 631
    iget-object v6, v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    #@33
    invoke-virtual {v6, v9}, Landroid/widget/MenuPopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    #@36
    .line 632
    iget-object v6, v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    #@38
    invoke-virtual {v6, v8}, Landroid/widget/ListPopupWindow;->setAnimationStyle(I)V

    #@3b
    .line 634
    :cond_2
    iget-object v6, v2, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    #@3d
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->dismiss()V

    #@40
    .line 636
    iget-object v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@42
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@45
    move-result v1

    #@46
    .line 637
    .local v1, "count":I
    if-lez v1, :cond_7

    #@48
    .line 638
    iget-object v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@4a
    add-int/lit8 v7, v1, -0x1

    #@4c
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4f
    move-result-object v6

    #@50
    check-cast v6, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@52
    iget v6, v6, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->position:I

    #@54
    iput v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mLastPosition:I

    #@56
    .line 643
    :goto_0
    if-nez v1, :cond_8

    #@58
    .line 645
    invoke-virtual {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->dismiss()V

    #@5b
    .line 647
    iget-object v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@5d
    if-eqz v6, :cond_3

    #@5f
    .line 648
    iget-object v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@61
    const/4 v7, 0x1

    #@62
    invoke-interface {v6, p1, v7}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    #@65
    .line 651
    :cond_3
    iget-object v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@67
    if-eqz v6, :cond_5

    #@69
    .line 652
    iget-object v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@6b
    invoke-virtual {v6}, Landroid/view/ViewTreeObserver;->isAlive()Z

    #@6e
    move-result v6

    #@6f
    if-eqz v6, :cond_4

    #@71
    .line 653
    iget-object v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@73
    iget-object v7, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    #@75
    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@78
    .line 655
    :cond_4
    iput-object v9, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@7a
    .line 657
    :cond_5
    iget-object v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    #@7c
    iget-object v7, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    #@7e
    invoke-virtual {v6, v7}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@81
    .line 661
    iget-object v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    #@83
    invoke-interface {v6}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    #@86
    .line 613
    :cond_6
    :goto_1
    return-void

    #@87
    .line 640
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->getInitialMenuPosition()I

    #@8a
    move-result v6

    #@8b
    iput v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mLastPosition:I

    #@8d
    goto :goto_0

    #@8e
    .line 662
    :cond_8
    if-eqz p2, :cond_6

    #@90
    .line 666
    iget-object v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@92
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@95
    move-result-object v5

    #@96
    check-cast v5, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@98
    .line 667
    .local v5, "rootInfo":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v6, v5, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@9a
    invoke-virtual {v6, v8}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    #@9d
    goto :goto_1
.end method

.method public onDismiss()V
    .locals 6

    #@0
    .prologue
    .line 545
    const/4 v1, 0x0

    #@1
    .line 546
    .local v1, "dismissedInfo":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    const/4 v2, 0x0

    #@2
    .local v2, "i":I
    iget-object v4, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@4
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@7
    move-result v0

    #@8
    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@a
    .line 547
    iget-object v4, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@c
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@12
    .line 548
    .local v3, "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v4, v3, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    #@14
    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->isShowing()Z

    #@17
    move-result v4

    #@18
    if-nez v4, :cond_2

    #@1a
    .line 549
    move-object v1, v3

    #@1b
    .line 556
    .end local v1    # "dismissedInfo":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    .end local v3    # "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_0
    if-eqz v1, :cond_1

    #@1d
    .line 557
    iget-object v4, v1, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@1f
    const/4 v5, 0x0

    #@20
    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    #@23
    .line 542
    :cond_1
    return-void

    #@24
    .line 546
    .restart local v1    # "dismissedInfo":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    .restart local v3    # "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 283
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    #@4
    move-result v0

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/16 v0, 0x52

    #@9
    if-ne p2, v0, :cond_0

    #@b
    .line 284
    invoke-virtual {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->dismiss()V

    #@e
    .line 285
    return v1

    #@f
    .line 287
    :cond_0
    const/4 v0, 0x0

    #@10
    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 682
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    #@0
    .prologue
    .line 678
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 4
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 576
    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v1

    #@7
    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@13
    .line 577
    .local v0, "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    iget-object v2, v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    #@15
    if-ne p1, v2, :cond_0

    #@17
    .line 579
    invoke-virtual {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    #@1e
    .line 580
    return v3

    #@1f
    .line 584
    .end local v0    # "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_3

    #@25
    .line 585
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->addMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    #@28
    .line 587
    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@2a
    if-eqz v2, :cond_2

    #@2c
    .line 588
    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@2e
    invoke-interface {v2, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    #@31
    .line 590
    :cond_2
    return v3

    #@32
    .line 592
    :cond_3
    const/4 v2, 0x0

    #@33
    return v2
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;

    #@0
    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 697
    iput-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    #@6
    .line 701
    iget v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    #@8
    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    #@a
    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    #@d
    move-result v1

    #@e
    .line 700
    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    #@11
    move-result v0

    #@12
    iput v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    #@14
    .line 695
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@0
    .prologue
    .line 570
    iput-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@2
    .line 569
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    #@0
    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mForceShowIcon:Z

    #@2
    .line 221
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "dropDownGravity"    # I

    #@0
    .prologue
    .line 687
    iget v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 688
    iput p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    #@6
    .line 690
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    #@8
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    #@b
    move-result v0

    #@c
    .line 689
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    #@f
    move-result v0

    #@10
    iput v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mDropDownGravity:I

    #@12
    .line 686
    :cond_0
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1
    .param p1, "x"    # I

    #@0
    .prologue
    .line 717
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mHasXOffset:Z

    #@3
    .line 718
    iput p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mXOffset:I

    #@5
    .line 716
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    #@0
    .prologue
    .line 707
    iput-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    #@2
    .line 706
    return-void
.end method

.method public setShowTitle(Z)V
    .locals 0
    .param p1, "showTitle"    # Z

    #@0
    .prologue
    .line 729
    iput-boolean p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowTitle:Z

    #@2
    .line 728
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "y"    # I

    #@0
    .prologue
    .line 723
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mHasYOffset:Z

    #@3
    .line 724
    iput p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mYOffset:I

    #@5
    .line 722
    return-void
.end method

.method public show()V
    .locals 5

    #@0
    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->isShowing()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 241
    return-void

    #@7
    .line 245
    :cond_0
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    #@9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    .local v2, "menu$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_1

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Lcom/android/internal/view/menu/MenuBuilder;

    #@19
    .line 246
    .local v1, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    invoke-direct {p0, v1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->showMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    #@1c
    goto :goto_0

    #@1d
    .line 248
    .end local v1    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    #@1f
    invoke-interface {v3}, Ljava/util/List;->clear()V

    #@22
    .line 250
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    #@24
    iput-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    #@26
    .line 252
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    #@28
    if-eqz v3, :cond_3

    #@2a
    .line 253
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@2c
    if-nez v3, :cond_4

    #@2e
    const/4 v0, 0x1

    #@2f
    .line 254
    .local v0, "addGlobalListener":Z
    :goto_1
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    #@31
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@34
    move-result-object v3

    #@35
    iput-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@37
    .line 255
    if-eqz v0, :cond_2

    #@39
    .line 256
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@3b
    iget-object v4, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    #@3d
    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@40
    .line 258
    :cond_2
    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    #@42
    iget-object v4, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    #@44
    invoke-virtual {v3, v4}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@47
    .line 239
    .end local v0    # "addGlobalListener":Z
    :cond_3
    return-void

    #@48
    .line 253
    :cond_4
    const/4 v0, 0x0

    #@49
    .restart local v0    # "addGlobalListener":Z
    goto :goto_1
.end method

.method public updateMenuView(Z)V
    .locals 3
    .param p1, "cleared"    # Z

    #@0
    .prologue
    .line 563
    iget-object v2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    #@12
    .line 564
    .local v0, "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    invoke-virtual {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    #@19
    move-result-object v2

    #@1a
    invoke-static {v2}, Lcom/android/internal/view/menu/CascadingMenuPopup;->toMenuAdapter(Landroid/widget/ListAdapter;)Lcom/android/internal/view/menu/MenuAdapter;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuAdapter;->notifyDataSetChanged()V

    #@21
    goto :goto_0

    #@22
    .line 562
    .end local v0    # "info":Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
    :cond_0
    return-void
.end method
