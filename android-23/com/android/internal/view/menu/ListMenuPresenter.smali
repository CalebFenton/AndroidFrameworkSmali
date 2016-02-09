.class public Lcom/android/internal/view/menu/ListMenuPresenter;
.super Ljava/lang/Object;
.source "ListMenuPresenter.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ListMenuPresenter"

.field public static final VIEWS_TAG:Ljava/lang/String; = "android:menu:list"


# instance fields
.field mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

.field private mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field mContext:Landroid/content/Context;

.field private mId:I

.field mInflater:Landroid/view/LayoutInflater;

.field private mItemIndexOffset:I

.field mItemLayoutRes:I

.field mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

.field mThemeRes:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/view/menu/ListMenuPresenter;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    #@2
    return v0
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "itemLayoutRes"    # I
    .param p2, "themeRes"    # I

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 74
    iput p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mItemLayoutRes:I

    #@5
    .line 75
    iput p2, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mThemeRes:I

    #@7
    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemLayoutRes"    # I

    #@0
    .prologue
    .line 63
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p2, v0}, Lcom/android/internal/view/menu/ListMenuPresenter;-><init>(II)V

    #@4
    .line 64
    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    #@6
    .line 65
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    #@8
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    #@e
    .line 62
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    #@0
    .prologue
    .line 178
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
    .line 174
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    #@0
    .prologue
    .line 170
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 118
    new-instance v0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    #@6
    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Lcom/android/internal/view/menu/ListMenuPresenter;)V

    #@9
    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    #@b
    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    #@d
    return-object v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 202
    iget v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mId:I

    #@2
    return v0
.end method

.method getItemIndexOffset()I
    .locals 1

    #@0
    .prologue
    .line 153
    iget v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    #@2
    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 98
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    #@6
    .line 99
    const v1, 0x1090057

    #@9
    const/4 v2, 0x0

    #@a
    .line 98
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/internal/view/menu/ExpandedMenuView;

    #@10
    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    #@12
    .line 100
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    #@14
    if-nez v0, :cond_0

    #@16
    .line 101
    new-instance v0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    #@18
    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Lcom/android/internal/view/menu/ListMenuPresenter;)V

    #@1b
    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    #@1d
    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    #@1f
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    #@21
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@24
    .line 104
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    #@26
    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@29
    .line 106
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    #@2b
    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    .line 80
    iget v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mThemeRes:I

    #@2
    if-eqz v0, :cond_2

    #@4
    .line 81
    new-instance v0, Landroid/view/ContextThemeWrapper;

    #@6
    iget v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mThemeRes:I

    #@8
    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@b
    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    #@d
    .line 82
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    #@f
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    #@15
    .line 89
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@17
    .line 90
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 91
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    #@1d
    invoke-virtual {v0}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    #@20
    .line 79
    :cond_1
    return-void

    #@21
    .line 83
    :cond_2
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    #@23
    if-eqz v0, :cond_0

    #@25
    .line 84
    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    #@27
    .line 85
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    #@29
    if-nez v0, :cond_0

    #@2b
    .line 86
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    #@2d
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    #@33
    goto :goto_0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 148
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@6
    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    #@9
    .line 146
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 165
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    #@4
    invoke-virtual {v1, p3}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    #@7
    move-result-object v1

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Lcom/android/internal/view/menu/MenuPresenter;I)Z

    #@c
    .line 164
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 218
    check-cast p1, Landroid/os/Bundle;

    #@2
    .end local p1    # "state":Landroid/os/Parcelable;
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    #@5
    .line 217
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 207
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 208
    return-object v2

    #@6
    .line 211
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    #@8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@b
    .line 212
    .local v0, "state":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    #@e
    .line 213
    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 135
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 138
    :cond_0
    new-instance v0, Lcom/android/internal/view/menu/MenuDialogHelper;

    #@b
    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/MenuDialogHelper;-><init>(Lcom/android/internal/view/menu/MenuBuilder;)V

    #@e
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    #@11
    .line 139
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 140
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@17
    invoke-interface {v0, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    #@1a
    .line 142
    :cond_1
    const/4 v0, 0x1

    #@1b
    return v0
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "inState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 190
    const-string/jumbo v1, "android:menu:list"

    #@3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    #@6
    move-result-object v0

    #@7
    .line 191
    .local v0, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v0, :cond_0

    #@9
    .line 192
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    #@b
    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    #@e
    .line 189
    :cond_0
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 182
    new-instance v0, Landroid/util/SparseArray;

    #@2
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@5
    .line 183
    .local v0, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 184
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    #@b
    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    #@e
    .line 186
    :cond_0
    const-string/jumbo v1, "android:menu:list"

    #@11
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    #@14
    .line 181
    return-void
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@0
    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    #@2
    .line 129
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    #@0
    .prologue
    .line 197
    iput p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mId:I

    #@2
    .line 196
    return-void
.end method

.method public setItemIndexOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 157
    iput p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    #@2
    .line 158
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/ExpandedMenuView;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 159
    const/4 v0, 0x0

    #@7
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ListMenuPresenter;->updateMenuView(Z)V

    #@a
    .line 156
    :cond_0
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter;->mAdapter:Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;

    #@6
    invoke-virtual {v0}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    #@9
    .line 124
    :cond_0
    return-void
.end method
