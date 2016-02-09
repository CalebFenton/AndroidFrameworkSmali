.class public Lcom/android/internal/view/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;
    }
.end annotation


# static fields
.field static final ITEM_LAYOUT:I = 0x109009a


# instance fields
.field private final mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field mForceShowIcon:Z

.field private mHasContentWidth:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mMeasureParent:Landroid/view/ViewGroup;

.field private final mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private final mOverflowOnly:Z

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private final mPopupMaxWidth:I

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method static synthetic -get0(Lcom/android/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/view/menu/MenuPopupHelper;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/view/menu/MenuPopupHelper;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    #@2
    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 75
    const/4 v3, 0x0

    #@2
    const v5, 0x1010300

    #@5
    move-object v0, p0

    #@6
    move-object v1, p1

    #@7
    move-object v2, p2

    #@8
    move v6, v4

    #@9
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    #@c
    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 79
    const v5, 0x1010300

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move-object v3, p3

    #@8
    move v6, v4

    #@9
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    #@c
    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "overflowOnly"    # Z
    .param p5, "popupStyleAttr"    # I

    #@0
    .prologue
    .line 84
    const/4 v6, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    #@a
    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "overflowOnly"    # Z
    .param p5, "popupStyleAttr"    # I
    .param p6, "popupStyleRes"    # I

    #@0
    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    const/4 v1, 0x0

    #@4
    iput v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    #@6
    .line 89
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    #@8
    .line 90
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@b
    move-result-object v1

    #@c
    iput-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    #@e
    .line 91
    iput-object p2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@10
    .line 92
    new-instance v1, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    #@12
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@14
    invoke-direct {v1, p0, v2}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;-><init>(Lcom/android/internal/view/menu/MenuPopupHelper;Lcom/android/internal/view/menu/MenuBuilder;)V

    #@17
    iput-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    #@19
    .line 93
    iput-boolean p4, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mOverflowOnly:Z

    #@1b
    .line 94
    iput p5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    #@1d
    .line 95
    iput p6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    #@1f
    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@22
    move-result-object v0

    #@23
    .line 98
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@26
    move-result-object v1

    #@27
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    #@29
    div-int/lit8 v1, v1, 0x2

    #@2b
    .line 99
    const v2, 0x105000e

    #@2e
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@31
    move-result v2

    #@32
    .line 98
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@35
    move-result v1

    #@36
    iput v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    #@38
    .line 101
    iput-object p3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    #@3a
    .line 104
    invoke-virtual {p2, p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    #@3d
    .line 88
    return-void
.end method

.method private measureContentWidth()I
    .locals 12

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 214
    const/4 v7, 0x0

    #@2
    .line 215
    .local v7, "maxWidth":I
    const/4 v5, 0x0

    #@3
    .line 216
    .local v5, "itemView":Landroid/view/View;
    const/4 v4, 0x0

    #@4
    .line 218
    .local v4, "itemType":I
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    #@6
    .line 219
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@9
    move-result v9

    #@a
    .line 220
    .local v9, "widthMeasureSpec":I
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@d
    move-result v2

    #@e
    .line 221
    .local v2, "heightMeasureSpec":I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    #@11
    move-result v1

    #@12
    .line 222
    .local v1, "count":I
    const/4 v3, 0x0

    #@13
    .end local v5    # "itemView":Landroid/view/View;
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    #@15
    .line 223
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    #@18
    move-result v8

    #@19
    .line 224
    .local v8, "positionType":I
    if-eq v8, v4, :cond_0

    #@1b
    .line 225
    move v4, v8

    #@1c
    .line 226
    const/4 v5, 0x0

    #@1d
    .line 229
    :cond_0
    iget-object v10, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    #@1f
    if-nez v10, :cond_1

    #@21
    .line 230
    new-instance v10, Landroid/widget/FrameLayout;

    #@23
    iget-object v11, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    #@25
    invoke-direct {v10, v11}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@28
    iput-object v10, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    #@2a
    .line 233
    :cond_1
    iget-object v10, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    #@2c
    invoke-interface {v0, v3, v5, v10}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@2f
    move-result-object v5

    #@30
    .line 234
    .local v5, "itemView":Landroid/view/View;
    invoke-virtual {v5, v9, v2}, Landroid/view/View;->measure(II)V

    #@33
    .line 236
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    #@36
    move-result v6

    #@37
    .line 237
    .local v6, "itemWidth":I
    iget v10, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    #@39
    if-lt v6, v10, :cond_2

    #@3b
    .line 238
    iget v10, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupMaxWidth:I

    #@3d
    return v10

    #@3e
    .line 239
    :cond_2
    if-le v6, v7, :cond_3

    #@40
    .line 240
    move v7, v6

    #@41
    .line 222
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@43
    goto :goto_0

    #@44
    .line 244
    .end local v5    # "itemView":Landroid/view/View;
    .end local v6    # "itemWidth":I
    .end local v8    # "positionType":I
    :cond_4
    return v7
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    #@0
    .prologue
    .line 345
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public dismiss()V
    .locals 1

    #@0
    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 177
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    #@8
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    #@b
    .line 175
    :cond_0
    return-void
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    #@0
    .prologue
    .line 341
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    #@0
    .prologue
    .line 337
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getGravity()I
    .locals 1

    #@0
    .prologue
    .line 120
    iget v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    #@2
    return v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 350
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 280
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "MenuPopupHelpers manage their own views"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getPopup()Landroid/widget/ListPopupWindow;
    .locals 1

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    .line 274
    return-void
.end method

.method public isShowing()Z
    .locals 1

    #@0
    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    #@6
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    #@0
    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    if-eq p1, v0, :cond_0

    #@4
    return-void

    #@5
    .line 329
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    #@8
    .line 330
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 331
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@e
    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    #@11
    .line 325
    :cond_1
    return-void
.end method

.method public onDismiss()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 183
    iput-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    #@3
    .line 184
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@5
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    #@8
    .line 185
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 186
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@e
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_0

    #@14
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    #@16
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@1c
    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@1e
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@21
    .line 188
    iput-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@23
    .line 190
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    #@25
    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@28
    .line 182
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    #@0
    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 250
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    #@8
    .line 251
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_1

    #@a
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 253
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 255
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    #@18
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    #@1b
    .line 248
    .end local v0    # "anchor":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    #@1c
    .line 252
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    #@1f
    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 199
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    #@2
    .line 200
    .local v0, "adapter":Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;
    invoke-static {v0}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->-get0(Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lcom/android/internal/view/menu/MenuBuilder;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, p3}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    #@9
    move-result-object v2

    #@a
    const/4 v3, 0x0

    #@b
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    #@e
    .line 198
    return-void
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
    .line 205
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
    .line 206
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    #@e
    .line 207
    return v1

    #@f
    .line 209
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
    .line 359
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    #@0
    .prologue
    .line 355
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 7
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    #@0
    .prologue
    .line 299
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    #@3
    move-result v5

    #@4
    if-eqz v5, :cond_3

    #@6
    .line 300
    new-instance v4, Lcom/android/internal/view/menu/MenuPopupHelper;

    #@8
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    #@a
    iget-object v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    #@c
    invoke-direct {v4, v5, p1, v6}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;)V

    #@f
    .line 301
    .local v4, "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@11
    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/MenuPopupHelper;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    #@14
    .line 303
    const/4 v3, 0x0

    #@15
    .line 304
    .local v3, "preserveIconSpacing":Z
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->size()I

    #@18
    move-result v1

    #@19
    .line 305
    .local v1, "count":I
    const/4 v2, 0x0

    #@1a
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    #@1c
    .line 306
    invoke-virtual {p1, v2}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    #@1f
    move-result-object v0

    #@20
    .line 307
    .local v0, "childItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    #@23
    move-result v5

    #@24
    if-eqz v5, :cond_2

    #@26
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    #@29
    move-result-object v5

    #@2a
    if-eqz v5, :cond_2

    #@2c
    .line 308
    const/4 v3, 0x1

    #@2d
    .line 312
    .end local v0    # "childItem":Landroid/view/MenuItem;
    :cond_0
    invoke-virtual {v4, v3}, Lcom/android/internal/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    #@30
    .line 314
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow()Z

    #@33
    move-result v5

    #@34
    if-eqz v5, :cond_3

    #@36
    .line 315
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@38
    if-eqz v5, :cond_1

    #@3a
    .line 316
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@3c
    invoke-interface {v5, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    #@3f
    .line 318
    :cond_1
    const/4 v5, 0x1

    #@40
    return v5

    #@41
    .line 305
    .restart local v0    # "childItem":Landroid/view/MenuItem;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@43
    goto :goto_0

    #@44
    .line 321
    .end local v0    # "childItem":Landroid/view/MenuItem;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "preserveIconSpacing":Z
    .end local v4    # "subPopup":Lcom/android/internal/view/menu/MenuPopupHelper;
    :cond_3
    const/4 v5, 0x0

    #@45
    return v5
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 261
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 267
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@6
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@12
    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@14
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@17
    .line 270
    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@1a
    .line 265
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    #@0
    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    #@2
    .line 107
    return-void
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@0
    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@2
    .line 293
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    #@0
    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    #@2
    .line 111
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    #@0
    .prologue
    .line 116
    iput p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    #@2
    .line 115
    return-void
.end method

.method public show()V
    .locals 2

    #@0
    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "MenuPopupHelper cannot be used without an anchor"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 123
    :cond_0
    return-void
.end method

.method public tryShow()Z
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 141
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 142
    return v6

    #@9
    .line 145
    :cond_0
    new-instance v2, Landroid/widget/ListPopupWindow;

    #@b
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    #@d
    iget v4, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleAttr:I

    #@f
    iget v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopupStyleRes:I

    #@11
    invoke-direct {v2, v3, v7, v4, v5}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@14
    iput-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    #@16
    .line 146
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    #@18
    invoke-virtual {v2, p0}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    #@1b
    .line 147
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    #@1d
    invoke-virtual {v2, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@20
    .line 148
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    #@22
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    #@24
    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    #@27
    .line 149
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    #@29
    invoke-virtual {v2, v6}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    #@2c
    .line 151
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    #@2e
    .line 152
    .local v1, "anchor":Landroid/view/View;
    if-eqz v1, :cond_4

    #@30
    .line 153
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@32
    if-nez v2, :cond_3

    #@34
    const/4 v0, 0x1

    #@35
    .line 154
    .local v0, "addGlobalListener":Z
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@38
    move-result-object v2

    #@39
    iput-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@3b
    .line 155
    if-eqz v0, :cond_1

    #@3d
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    #@3f
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@42
    .line 156
    :cond_1
    invoke-virtual {v1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@45
    .line 157
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    #@47
    invoke-virtual {v2, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    #@4a
    .line 158
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    #@4c
    iget v3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mDropDownGravity:I

    #@4e
    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setDropDownGravity(I)V

    #@51
    .line 163
    iget-boolean v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mHasContentWidth:Z

    #@53
    if-nez v2, :cond_2

    #@55
    .line 164
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->measureContentWidth()I

    #@58
    move-result v2

    #@59
    iput v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContentWidth:I

    #@5b
    .line 165
    iput-boolean v6, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mHasContentWidth:Z

    #@5d
    .line 168
    :cond_2
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    #@5f
    iget v3, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mContentWidth:I

    #@61
    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    #@64
    .line 169
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    #@66
    const/4 v3, 0x2

    #@67
    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    #@6a
    .line 170
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    #@6c
    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->show()V

    #@6f
    .line 171
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    #@71
    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    #@74
    move-result-object v2

    #@75
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    #@78
    .line 172
    return v6

    #@79
    .line 153
    .end local v0    # "addGlobalListener":Z
    :cond_3
    const/4 v0, 0x0

    #@7a
    .restart local v0    # "addGlobalListener":Z
    goto :goto_0

    #@7b
    .line 160
    .end local v0    # "addGlobalListener":Z
    :cond_4
    const/4 v2, 0x0

    #@7c
    return v2
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    #@0
    .prologue
    .line 285
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mHasContentWidth:Z

    #@3
    .line 287
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 288
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper;->mAdapter:Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;

    #@9
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->notifyDataSetChanged()V

    #@c
    .line 284
    :cond_0
    return-void
.end method
