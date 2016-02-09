.class public Lcom/android/internal/view/menu/MenuBuilder;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Landroid/view/Menu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/MenuBuilder$Callback;,
        Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
    }
.end annotation


# static fields
.field private static final ACTION_VIEW_STATES_KEY:Ljava/lang/String; = "android:menu:actionviewstates"

.field private static final EXPANDED_ACTION_VIEW_ID:Ljava/lang/String; = "android:menu:expandedactionview"

.field private static final PRESENTER_KEY:Ljava/lang/String; = "android:menu:presenters"

.field private static final TAG:Ljava/lang/String; = "MenuBuilder"

.field private static final sCategoryToOrder:[I


# instance fields
.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDefaultShowAsAction:I

.field private mExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mFrozenViewStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field mHeaderTitle:Ljava/lang/CharSequence;

.field mHeaderView:Landroid/view/View;

.field private mIsActionItemsStale:Z

.field private mIsClosing:Z

.field private mIsVisibleItemsStale:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsChangedWhileDispatchPrevented:Z

.field private mNonActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalIconsVisible:Z

.field private mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/view/menu/MenuPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreventDispatchingItemsChanged:Z

.field private mQwertyMode:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShortcutsVisible:Z

.field private mTempShortcutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 56
    const/4 v0, 0x6

    #@1
    new-array v0, v0, [I

    #@3
    fill-array-data v0, :array_0

    #@6
    sput-object v0, Lcom/android/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    #@8
    .line 49
    return-void

    #@9
    .line 56
    nop

    #@a
    :array_0
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 116
    iput v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    #@7
    .line 142
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    #@9
    .line 143
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    #@b
    .line 145
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    #@d
    .line 147
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsClosing:Z

    #@f
    .line 149
    new-instance v0, Ljava/util/ArrayList;

    #@11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@14
    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    #@16
    .line 152
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@18
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@1b
    .line 151
    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@1d
    .line 187
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    #@1f
    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    #@25
    .line 190
    new-instance v0, Ljava/util/ArrayList;

    #@27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2a
    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@2c
    .line 192
    new-instance v0, Ljava/util/ArrayList;

    #@2e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@31
    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    #@33
    .line 193
    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    #@35
    .line 195
    new-instance v0, Ljava/util/ArrayList;

    #@37
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@3a
    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    #@3c
    .line 196
    new-instance v0, Ljava/util/ArrayList;

    #@3e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@41
    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    #@43
    .line 197
    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    #@45
    .line 199
    invoke-direct {p0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    #@48
    .line 186
    return-void
.end method

.method private addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 8
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 406
    invoke-static {p3}, Lcom/android/internal/view/menu/MenuBuilder;->getOrdering(I)I

    #@3
    move-result v4

    #@4
    .line 409
    .local v4, "ordering":I
    iget v6, p0, Lcom/android/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    #@6
    move-object v0, p0

    #@7
    move v1, p1

    #@8
    move v2, p2

    #@9
    move v3, p3

    #@a
    move-object v5, p4

    #@b
    .line 408
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/MenuBuilder;->createNewMenuItem(IIIILjava/lang/CharSequence;I)Lcom/android/internal/view/menu/MenuItemImpl;

    #@e
    move-result-object v7

    #@f
    .line 411
    .local v7, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 413
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    #@15
    invoke-virtual {v7, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    #@18
    .line 416
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@1a
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@1c
    invoke-static {v1, v4}, Lcom/android/internal/view/menu/MenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I

    #@1f
    move-result v1

    #@20
    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@23
    .line 417
    const/4 v0, 0x1

    #@24
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@27
    .line 419
    return-object v7
.end method

.method private createNewMenuItem(IIIILjava/lang/CharSequence;I)Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 8
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "ordering"    # I
    .param p5, "title"    # Ljava/lang/CharSequence;
    .param p6, "defaultShowAsAction"    # I

    #@0
    .prologue
    .line 425
    new-instance v0, Lcom/android/internal/view/menu/MenuItemImpl;

    #@2
    move-object v1, p0

    #@3
    move v2, p1

    #@4
    move v3, p2

    #@5
    move v4, p3

    #@6
    move v5, p4

    #@7
    move-object v6, p5

    #@8
    move v7, p6

    #@9
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/view/menu/MenuItemImpl;-><init>(Lcom/android/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    #@c
    return-object v0
.end method

.method private dispatchPresenterUpdate(Z)V
    .locals 4
    .param p1, "cleared"    # Z

    #@0
    .prologue
    .line 249
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    #@5
    move-result v3

    #@6
    if-eqz v3, :cond_0

    #@8
    return-void

    #@9
    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    #@c
    .line 252
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@e
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v2

    #@12
    .local v2, "ref$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_2

    #@18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Ljava/lang/ref/WeakReference;

    #@1e
    .line 253
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Lcom/android/internal/view/menu/MenuPresenter;

    #@24
    .line 254
    .local v0, "presenter":Lcom/android/internal/view/menu/MenuPresenter;
    if-nez v0, :cond_1

    #@26
    .line 255
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@28
    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@2b
    goto :goto_0

    #@2c
    .line 257
    :cond_1
    invoke-interface {v0, p1}, Lcom/android/internal/view/menu/MenuPresenter;->updateMenuView(Z)V

    #@2f
    goto :goto_0

    #@30
    .line 260
    .end local v0    # "presenter":Lcom/android/internal/view/menu/MenuPresenter;
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/view/menu/MenuPresenter;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    #@33
    .line 248
    return-void
.end method

.method private dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 309
    const-string/jumbo v6, "android:menu:presenters"

    #@3
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    #@6
    move-result-object v3

    #@7
    .line 311
    .local v3, "presenterStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v3, :cond_0

    #@9
    iget-object v6, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@b
    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    #@e
    move-result v6

    #@f
    if-eqz v6, :cond_1

    #@11
    :cond_0
    return-void

    #@12
    .line 313
    :cond_1
    iget-object v6, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@14
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v5

    #@18
    .local v5, "ref$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v6

    #@1c
    if-eqz v6, :cond_4

    #@1e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v4

    #@22
    check-cast v4, Ljava/lang/ref/WeakReference;

    #@24
    .line 314
    .local v4, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Lcom/android/internal/view/menu/MenuPresenter;

    #@2a
    .line 315
    .local v2, "presenter":Lcom/android/internal/view/menu/MenuPresenter;
    if-nez v2, :cond_3

    #@2c
    .line 316
    iget-object v6, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2e
    invoke-virtual {v6, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@31
    goto :goto_0

    #@32
    .line 318
    :cond_3
    invoke-interface {v2}, Lcom/android/internal/view/menu/MenuPresenter;->getId()I

    #@35
    move-result v0

    #@36
    .line 319
    .local v0, "id":I
    if-lez v0, :cond_2

    #@38
    .line 320
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v1

    #@3c
    check-cast v1, Landroid/os/Parcelable;

    #@3e
    .line 321
    .local v1, "parcel":Landroid/os/Parcelable;
    if-eqz v1, :cond_2

    #@40
    .line 322
    invoke-interface {v2, v1}, Lcom/android/internal/view/menu/MenuPresenter;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@43
    goto :goto_0

    #@44
    .line 308
    .end local v0    # "id":I
    .end local v1    # "parcel":Landroid/os/Parcelable;
    .end local v2    # "presenter":Lcom/android/internal/view/menu/MenuPresenter;
    .end local v4    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/view/menu/MenuPresenter;>;"
    :cond_4
    return-void
.end method

.method private dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "outState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 286
    iget-object v6, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    #@5
    move-result v6

    #@6
    if-eqz v6, :cond_0

    #@8
    return-void

    #@9
    .line 288
    :cond_0
    new-instance v2, Landroid/util/SparseArray;

    #@b
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@e
    .line 290
    .local v2, "presenterStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v6, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@10
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v4

    #@14
    .local v4, "ref$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v6

    #@18
    if-eqz v6, :cond_3

    #@1a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    check-cast v3, Ljava/lang/ref/WeakReference;

    #@20
    .line 291
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    check-cast v1, Lcom/android/internal/view/menu/MenuPresenter;

    #@26
    .line 292
    .local v1, "presenter":Lcom/android/internal/view/menu/MenuPresenter;
    if-nez v1, :cond_2

    #@28
    .line 293
    iget-object v6, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2a
    invoke-virtual {v6, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@2d
    goto :goto_0

    #@2e
    .line 295
    :cond_2
    invoke-interface {v1}, Lcom/android/internal/view/menu/MenuPresenter;->getId()I

    #@31
    move-result v0

    #@32
    .line 296
    .local v0, "id":I
    if-lez v0, :cond_1

    #@34
    .line 297
    invoke-interface {v1}, Lcom/android/internal/view/menu/MenuPresenter;->onSaveInstanceState()Landroid/os/Parcelable;

    #@37
    move-result-object v5

    #@38
    .line 298
    .local v5, "state":Landroid/os/Parcelable;
    if-eqz v5, :cond_1

    #@3a
    .line 299
    invoke-virtual {v2, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@3d
    goto :goto_0

    #@3e
    .line 305
    .end local v0    # "id":I
    .end local v1    # "presenter":Lcom/android/internal/view/menu/MenuPresenter;
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/view/menu/MenuPresenter;>;"
    .end local v5    # "state":Landroid/os/Parcelable;
    :cond_3
    const-string/jumbo v6, "android:menu:presenters"

    #@41
    invoke-virtual {p1, v6, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    #@44
    .line 285
    return-void
.end method

.method private dispatchSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;Lcom/android/internal/view/menu/MenuPresenter;)Z
    .locals 5
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;
    .param p2, "preferredPresenter"    # Lcom/android/internal/view/menu/MenuPresenter;

    #@0
    .prologue
    .line 265
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_0

    #@8
    const/4 v4, 0x0

    #@9
    return v4

    #@a
    .line 267
    :cond_0
    const/4 v3, 0x0

    #@b
    .line 270
    .local v3, "result":Z
    if-eqz p2, :cond_1

    #@d
    .line 271
    invoke-interface {p2, p1}, Lcom/android/internal/view/menu/MenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    #@10
    move-result v3

    #@11
    .line 274
    .end local v3    # "result":Z
    :cond_1
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@13
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v2

    #@17
    .local v2, "ref$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_4

    #@1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Ljava/lang/ref/WeakReference;

    #@23
    .line 275
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Lcom/android/internal/view/menu/MenuPresenter;

    #@29
    .line 276
    .local v0, "presenter":Lcom/android/internal/view/menu/MenuPresenter;
    if-nez v0, :cond_3

    #@2b
    .line 277
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2d
    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@30
    goto :goto_0

    #@31
    .line 278
    :cond_3
    if-nez v3, :cond_2

    #@33
    .line 279
    invoke-interface {v0, p1}, Lcom/android/internal/view/menu/MenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    #@36
    move-result v3

    #@37
    .local v3, "result":Z
    goto :goto_0

    #@38
    .line 282
    .end local v0    # "presenter":Lcom/android/internal/view/menu/MenuPresenter;
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/view/menu/MenuPresenter;>;"
    .end local v3    # "result":Z
    :cond_4
    return v3
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .locals 4
    .param p1, "ordering"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    const/4 v3, 0x0

    #@1
    .line 774
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    #@4
    move-result v2

    #@5
    add-int/lit8 v0, v2, -0x1

    #@7
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@9
    .line 775
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    #@f
    .line 776
    .local v1, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getOrdering()I

    #@12
    move-result v2

    #@13
    if-gt v2, p1, :cond_0

    #@15
    .line 777
    add-int/lit8 v2, v0, 0x1

    #@17
    return v2

    #@18
    .line 774
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1a
    goto :goto_0

    #@1b
    .line 781
    .end local v1    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1
    return v3
.end method

.method private static getOrdering(I)I
    .locals 3
    .param p0, "categoryOrder"    # I

    #@0
    .prologue
    .line 707
    const/high16 v1, -0x10000

    #@2
    and-int/2addr v1, p0

    #@3
    shr-int/lit8 v0, v1, 0x10

    #@5
    .line 709
    .local v0, "index":I
    if-ltz v0, :cond_0

    #@7
    sget-object v1, Lcom/android/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    #@9
    array-length v1, v1

    #@a
    if-lt v0, v1, :cond_1

    #@c
    .line 710
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v2, "order does not contain a valid category."

    #@11
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v1

    #@15
    .line 713
    :cond_1
    sget-object v1, Lcom/android/internal/view/menu/MenuBuilder;->sCategoryToOrder:[I

    #@17
    aget v1, v1, v0

    #@19
    shl-int/lit8 v1, v1, 0x10

    #@1b
    const v2, 0xffff

    #@1e
    and-int/2addr v2, p0

    #@1f
    or-int/2addr v1, v2

    #@20
    return v1
.end method

.method private removeItemAtInt(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "updateChildrenOnMenuViews"    # Z

    #@0
    .prologue
    .line 525
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    if-lt p1, v0, :cond_1

    #@a
    :cond_0
    return-void

    #@b
    .line 527
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@10
    .line 529
    if-eqz p2, :cond_2

    #@12
    const/4 v0, 0x1

    #@13
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@16
    .line 524
    :cond_2
    return-void
.end method

.method private setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 4
    .param p1, "titleRes"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "iconRes"    # I
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 1128
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    .line 1130
    .local v0, "r":Landroid/content/res/Resources;
    if-eqz p5, :cond_0

    #@8
    .line 1131
    iput-object p5, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    #@a
    .line 1134
    iput-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    #@c
    .line 1135
    iput-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    #@e
    .line 1154
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@11
    .line 1127
    return-void

    #@12
    .line 1137
    :cond_0
    if-lez p1, :cond_3

    #@14
    .line 1138
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@17
    move-result-object v1

    #@18
    iput-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    #@1a
    .line 1143
    :cond_1
    :goto_1
    if-lez p3, :cond_4

    #@1c
    .line 1144
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@23
    move-result-object v1

    #@24
    iput-object v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    #@26
    .line 1150
    :cond_2
    :goto_2
    iput-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    #@28
    goto :goto_0

    #@29
    .line 1139
    :cond_3
    if-eqz p2, :cond_1

    #@2b
    .line 1140
    iput-object p2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    #@2d
    goto :goto_1

    #@2e
    .line 1145
    :cond_4
    if-eqz p4, :cond_2

    #@30
    .line 1146
    iput-object p4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    #@32
    goto :goto_2
.end method

.method private setShortcutsVisibleInner(Z)V
    .locals 2
    .param p1, "shortcutsVisible"    # Z

    #@0
    .prologue
    .line 739
    if-eqz p1, :cond_0

    #@2
    .line 740
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    #@4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@7
    move-result-object v0

    #@8
    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    #@a
    const/4 v1, 0x1

    #@b
    if-eq v0, v1, :cond_0

    #@d
    .line 741
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    #@f
    .line 742
    const v1, 0x112005a

    #@12
    .line 741
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@15
    move-result v0

    #@16
    .line 739
    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    #@18
    .line 738
    return-void

    #@19
    .line 739
    :cond_0
    const/4 v0, 0x0

    #@1a
    goto :goto_0
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "titleRes"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 434
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    #@3
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-direct {p0, v1, v1, v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # I

    #@0
    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 438
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 430
    invoke-direct {p0, v0, v0, v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 13
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "caller"    # Landroid/content/ComponentName;
    .param p5, "specifics"    # [Landroid/content/Intent;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "flags"    # I
    .param p8, "outSpecificItems"    # [Landroid/view/MenuItem;

    #@0
    .prologue
    .line 467
    iget-object v10, p0, Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5
    move-result-object v7

    #@6
    .line 469
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    #@7
    move-object/from16 v0, p4

    #@9
    move-object/from16 v1, p5

    #@b
    move-object/from16 v2, p6

    #@d
    invoke-virtual {v7, v0, v1, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    #@10
    move-result-object v6

    #@11
    .line 470
    .local v6, "lri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_2

    #@13
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@16
    move-result v3

    #@17
    .line 472
    .local v3, "N":I
    :goto_0
    and-int/lit8 v10, p7, 0x1

    #@19
    if-nez v10, :cond_0

    #@1b
    .line 473
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->removeGroup(I)V

    #@1e
    .line 476
    :cond_0
    const/4 v4, 0x0

    #@1f
    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_4

    #@21
    .line 477
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v8

    #@25
    check-cast v8, Landroid/content/pm/ResolveInfo;

    #@27
    .line 478
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/content/Intent;

    #@29
    .line 479
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    #@2b
    if-gez v10, :cond_3

    #@2d
    move-object/from16 v10, p6

    #@2f
    .line 478
    :goto_2
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@32
    .line 480
    .local v9, "rintent":Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    #@34
    .line 481
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@36
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@38
    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@3a
    .line 482
    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@3c
    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@3e
    .line 480
    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@41
    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@44
    .line 483
    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@47
    move-result-object v10

    #@48
    move/from16 v0, p3

    #@4a
    invoke-virtual {p0, p1, p2, v0, v10}, Lcom/android/internal/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    #@4d
    move-result-object v10

    #@4e
    .line 484
    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@51
    move-result-object v11

    #@52
    .line 483
    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    #@55
    move-result-object v10

    #@56
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    #@59
    move-result-object v5

    #@5a
    .line 486
    .local v5, "item":Landroid/view/MenuItem;
    if-eqz p8, :cond_1

    #@5c
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    #@5e
    if-ltz v10, :cond_1

    #@60
    .line 487
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    #@62
    aput-object v5, p8, v10

    #@64
    .line 476
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@66
    goto :goto_1

    #@67
    .line 470
    .end local v3    # "N":I
    .end local v4    # "i":I
    .end local v5    # "item":Landroid/view/MenuItem;
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "rintent":Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x0

    #@68
    .restart local v3    # "N":I
    goto :goto_0

    #@69
    .line 479
    .restart local v4    # "i":I
    .restart local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    #@6b
    aget-object v10, p5, v10

    #@6d
    goto :goto_2

    #@6e
    .line 491
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    return v3
.end method

.method public addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V
    .locals 1
    .param p1, "presenter"    # Lcom/android/internal/view/menu/MenuPresenter;

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    #@5
    .line 214
    return-void
.end method

.method public addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V
    .locals 2
    .param p1, "presenter"    # Lcom/android/internal/view/menu/MenuPresenter;
    .param p2, "menuContext"    # Landroid/content/Context;

    #@0
    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@4
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    #@a
    .line 229
    invoke-interface {p1, p2, p0}, Lcom/android/internal/view/menu/MenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    #@d
    .line 230
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    #@10
    .line 227
    return-void
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 2
    .param p1, "titleRes"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 450
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    #@3
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # I

    #@0
    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    #@2
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 3
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 454
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    #@6
    .line 455
    .local v0, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    new-instance v1, Lcom/android/internal/view/menu/SubMenuBuilder;

    #@8
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    #@a
    invoke-direct {v1, v2, p0, v0}, Lcom/android/internal/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)V

    #@d
    .line 456
    .local v1, "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuItemImpl;->setSubMenu(Lcom/android/internal/view/menu/SubMenuBuilder;)V

    #@10
    .line 458
    return-object v1
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 446
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public changeMenuMode()V
    .locals 1

    #@0
    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 769
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    #@6
    invoke-interface {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder$Callback;->onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V

    #@9
    .line 767
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 547
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@6
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    #@9
    .line 549
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@e
    .line 551
    const/4 v0, 0x1

    #@f
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@12
    .line 545
    return-void
.end method

.method public clearAll()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 537
    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    #@4
    .line 538
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->clear()V

    #@7
    .line 539
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->clearHeader()V

    #@a
    .line 540
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    #@c
    .line 541
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    #@e
    .line 542
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@11
    .line 536
    return-void
.end method

.method public clearHeader()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1119
    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    #@3
    .line 1120
    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    #@5
    .line 1121
    iput-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    #@7
    .line 1123
    const/4 v0, 0x0

    #@8
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@b
    .line 1118
    return-void
.end method

.method public close()V
    .locals 1

    #@0
    .prologue
    .line 959
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    #@4
    .line 958
    return-void
.end method

.method public final close(Z)V
    .locals 4
    .param p1, "allMenusAreClosing"    # Z

    #@0
    .prologue
    .line 943
    iget-boolean v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsClosing:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    return-void

    #@5
    .line 945
    :cond_0
    const/4 v3, 0x1

    #@6
    iput-boolean v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsClosing:Z

    #@8
    .line 946
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v2

    #@e
    .local v2, "ref$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_2

    #@14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Ljava/lang/ref/WeakReference;

    #@1a
    .line 947
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Lcom/android/internal/view/menu/MenuPresenter;

    #@20
    .line 948
    .local v0, "presenter":Lcom/android/internal/view/menu/MenuPresenter;
    if-nez v0, :cond_1

    #@22
    .line 949
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@24
    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@27
    goto :goto_0

    #@28
    .line 951
    :cond_1
    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/menu/MenuPresenter;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    #@2b
    goto :goto_0

    #@2c
    .line 954
    .end local v0    # "presenter":Lcom/android/internal/view/menu/MenuPresenter;
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/view/menu/MenuPresenter;>;"
    :cond_2
    const/4 v3, 0x0

    #@2d
    iput-boolean v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsClosing:Z

    #@2f
    .line 942
    return-void
.end method

.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 6
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1279
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@3
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    #@6
    move-result v4

    #@7
    if-nez v4, :cond_0

    #@9
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@b
    if-eq v4, p1, :cond_1

    #@d
    :cond_0
    const/4 v4, 0x0

    #@e
    return v4

    #@f
    .line 1281
    :cond_1
    const/4 v0, 0x0

    #@10
    .line 1283
    .local v0, "collapsed":Z
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    #@13
    .line 1284
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@15
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v3

    #@19
    .end local v0    # "collapsed":Z
    .local v3, "ref$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_4

    #@1f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    check-cast v2, Ljava/lang/ref/WeakReference;

    #@25
    .line 1285
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Lcom/android/internal/view/menu/MenuPresenter;

    #@2b
    .line 1286
    .local v1, "presenter":Lcom/android/internal/view/menu/MenuPresenter;
    if-nez v1, :cond_3

    #@2d
    .line 1287
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2f
    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@32
    goto :goto_0

    #@33
    .line 1288
    :cond_3
    invoke-interface {v1, p0, p1}, Lcom/android/internal/view/menu/MenuPresenter;->collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z

    #@36
    move-result v0

    #@37
    .local v0, "collapsed":Z
    if-eqz v0, :cond_2

    #@39
    .line 1292
    .end local v0    # "collapsed":Z
    .end local v1    # "presenter":Lcom/android/internal/view/menu/MenuPresenter;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/view/menu/MenuPresenter;>;"
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    #@3c
    .line 1294
    if-eqz v0, :cond_5

    #@3e
    .line 1295
    iput-object v5, p0, Lcom/android/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@40
    .line 1297
    :cond_5
    return v0
.end method

.method dispatchMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    #@6
    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder$Callback;->onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

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

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 5
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    #@0
    .prologue
    .line 1257
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_0

    #@8
    const/4 v4, 0x0

    #@9
    return v4

    #@a
    .line 1259
    :cond_0
    const/4 v0, 0x0

    #@b
    .line 1261
    .local v0, "expanded":Z
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    #@e
    .line 1262
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@10
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v3

    #@14
    .end local v0    # "expanded":Z
    .local v3, "ref$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_3

    #@1a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Ljava/lang/ref/WeakReference;

    #@20
    .line 1263
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    check-cast v1, Lcom/android/internal/view/menu/MenuPresenter;

    #@26
    .line 1264
    .local v1, "presenter":Lcom/android/internal/view/menu/MenuPresenter;
    if-nez v1, :cond_2

    #@28
    .line 1265
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2a
    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@2d
    goto :goto_0

    #@2e
    .line 1266
    :cond_2
    invoke-interface {v1, p0, p1}, Lcom/android/internal/view/menu/MenuPresenter;->expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z

    #@31
    move-result v0

    #@32
    .local v0, "expanded":Z
    if-eqz v0, :cond_1

    #@34
    .line 1270
    .end local v0    # "expanded":Z
    .end local v1    # "presenter":Lcom/android/internal/view/menu/MenuPresenter;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/view/menu/MenuPresenter;>;"
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    #@37
    .line 1272
    if-eqz v0, :cond_4

    #@39
    .line 1273
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@3b
    .line 1275
    :cond_4
    return v0
.end method

.method public findGroupIndex(I)I
    .locals 1
    .param p1, "group"    # I

    #@0
    .prologue
    .line 655
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->findGroupIndex(II)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public findGroupIndex(II)I
    .locals 4
    .param p1, "group"    # I
    .param p2, "start"    # I

    #@0
    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    #@3
    move-result v2

    #@4
    .line 661
    .local v2, "size":I
    if-gez p2, :cond_0

    #@6
    .line 662
    const/4 p2, 0x0

    #@7
    .line 665
    :cond_0
    move v0, p2

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@a
    .line 666
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    #@12
    .line 668
    .local v1, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    #@15
    move-result v3

    #@16
    if-ne v3, p1, :cond_1

    #@18
    .line 669
    return v0

    #@19
    .line 665
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 673
    .end local v1    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_2
    const/4 v3, -0x1

    #@1d
    return v3
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 6
    .param p1, "id"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 624
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    #@4
    move-result v3

    #@5
    .line 625
    .local v3, "size":I
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    #@8
    .line 626
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    #@10
    .line 627
    .local v1, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    #@13
    move-result v4

    #@14
    if-ne v4, p1, :cond_0

    #@16
    .line 628
    return-object v1

    #@17
    .line 629
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_1

    #@1d
    .line 630
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    #@20
    move-result-object v4

    #@21
    invoke-interface {v4, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    #@24
    move-result-object v2

    #@25
    .line 632
    .local v2, "possibleItem":Landroid/view/MenuItem;
    if-eqz v2, :cond_1

    #@27
    .line 633
    return-object v2

    #@28
    .line 625
    .end local v2    # "possibleItem":Landroid/view/MenuItem;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 638
    .end local v1    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_2
    return-object v5
.end method

.method public findItemIndex(I)I
    .locals 4
    .param p1, "id"    # I

    #@0
    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    #@3
    move-result v2

    #@4
    .line 644
    .local v2, "size":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@7
    .line 645
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    #@f
    .line 646
    .local v1, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    #@12
    move-result v3

    #@13
    if-ne v3, p1, :cond_0

    #@15
    .line 647
    return v0

    #@16
    .line 644
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 651
    .end local v1    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1
    const/4 v3, -0x1

    #@1a
    return v3
.end method

.method findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    .line 850
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    #@4
    .line 851
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@7
    .line 852
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    #@a
    .line 854
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@d
    move-result v8

    #@e
    if-eqz v8, :cond_0

    #@10
    .line 855
    return-object v11

    #@11
    .line 858
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    #@14
    move-result v3

    #@15
    .line 859
    .local v3, "metaState":I
    new-instance v4, Landroid/view/KeyCharacterMap$KeyData;

    #@17
    invoke-direct {v4}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    #@1a
    .line 861
    .local v4, "possibleChars":Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    #@1d
    .line 864
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@20
    move-result v7

    #@21
    .line 865
    .local v7, "size":I
    const/4 v8, 0x1

    #@22
    if-ne v7, v8, :cond_1

    #@24
    .line 866
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v8

    #@28
    check-cast v8, Lcom/android/internal/view/menu/MenuItemImpl;

    #@2a
    return-object v8

    #@2b
    .line 869
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    #@2e
    move-result v5

    #@2f
    .line 872
    .local v5, "qwerty":Z
    const/4 v0, 0x0

    #@30
    .local v0, "i":I
    :goto_0
    if-ge v0, v7, :cond_7

    #@32
    .line 873
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v1

    #@36
    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    #@38
    .line 874
    .local v1, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    if-eqz v5, :cond_3

    #@3a
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    #@3d
    move-result v6

    #@3e
    .line 876
    .local v6, "shortcutChar":C
    :goto_1
    iget-object v8, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    #@40
    aget-char v8, v8, v10

    #@42
    if-ne v6, v8, :cond_4

    #@44
    .line 877
    and-int/lit8 v8, v3, 0x2

    #@46
    if-nez v8, :cond_4

    #@48
    .line 882
    :cond_2
    return-object v1

    #@49
    .line 875
    .end local v6    # "shortcutChar":C
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    #@4c
    move-result v6

    #@4d
    .restart local v6    # "shortcutChar":C
    goto :goto_1

    #@4e
    .line 878
    :cond_4
    iget-object v8, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    #@50
    const/4 v9, 0x2

    #@51
    aget-char v8, v8, v9

    #@53
    if-ne v6, v8, :cond_5

    #@55
    .line 879
    and-int/lit8 v8, v3, 0x2

    #@57
    if-nez v8, :cond_2

    #@59
    .line 880
    :cond_5
    if-eqz v5, :cond_6

    #@5b
    const/16 v8, 0x8

    #@5d
    if-ne v6, v8, :cond_6

    #@5f
    .line 881
    const/16 v8, 0x43

    #@61
    if-eq p1, v8, :cond_2

    #@63
    .line 872
    :cond_6
    add-int/lit8 v0, v0, 0x1

    #@65
    goto :goto_0

    #@66
    .line 885
    .end local v1    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v6    # "shortcutChar":C
    :cond_7
    return-object v11
.end method

.method findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 12
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    const/16 v11, 0x43

    #@2
    const/4 v10, 0x0

    #@3
    .line 807
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    #@6
    move-result v6

    #@7
    .line 808
    .local v6, "qwerty":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    #@a
    move-result v4

    #@b
    .line 809
    .local v4, "metaState":I
    new-instance v5, Landroid/view/KeyCharacterMap$KeyData;

    #@d
    invoke-direct {v5}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    #@10
    .line 811
    .local v5, "possibleChars":Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p3, v5}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    #@13
    move-result v2

    #@14
    .line 813
    .local v2, "isKeyCodeMapped":Z
    if-nez v2, :cond_0

    #@16
    if-eq p2, v11, :cond_0

    #@18
    .line 814
    return-void

    #@19
    .line 818
    :cond_0
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@1e
    move-result v0

    #@1f
    .line 819
    .local v0, "N":I
    const/4 v1, 0x0

    #@20
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_6

    #@22
    .line 820
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v3

    #@28
    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    #@2a
    .line 821
    .local v3, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    #@2d
    move-result v8

    #@2e
    if-eqz v8, :cond_1

    #@30
    .line 822
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    #@33
    move-result-object v8

    #@34
    check-cast v8, Lcom/android/internal/view/menu/MenuBuilder;

    #@36
    invoke-virtual {v8, p1, p2, p3}, Lcom/android/internal/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    #@39
    .line 824
    :cond_1
    if-eqz v6, :cond_4

    #@3b
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    #@3e
    move-result v7

    #@3f
    .line 825
    .local v7, "shortcutChar":C
    :goto_1
    and-int/lit8 v8, v4, 0x5

    #@41
    if-nez v8, :cond_3

    #@43
    .line 826
    if-eqz v7, :cond_3

    #@45
    .line 827
    iget-object v8, v5, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    #@47
    aget-char v8, v8, v10

    #@49
    if-eq v7, v8, :cond_2

    #@4b
    .line 828
    iget-object v8, v5, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    #@4d
    const/4 v9, 0x2

    #@4e
    aget-char v8, v8, v9

    #@50
    if-ne v7, v8, :cond_5

    #@52
    .line 831
    :cond_2
    :goto_2
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    #@55
    move-result v8

    #@56
    .line 825
    if-eqz v8, :cond_3

    #@58
    .line 832
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5b
    .line 819
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@5d
    goto :goto_0

    #@5e
    .line 824
    .end local v7    # "shortcutChar":C
    :cond_4
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getNumericShortcut()C

    #@61
    move-result v7

    #@62
    .restart local v7    # "shortcutChar":C
    goto :goto_1

    #@63
    .line 829
    :cond_5
    if-eqz v6, :cond_3

    #@65
    const/16 v8, 0x8

    #@67
    if-ne v7, v8, :cond_3

    #@69
    .line 830
    if-ne p2, v11, :cond_3

    #@6b
    goto :goto_2

    #@6c
    .line 806
    .end local v3    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v7    # "shortcutChar":C
    :cond_6
    return-void
.end method

.method public flagActionItems()V
    .locals 10

    #@0
    .prologue
    .line 1069
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    #@3
    move-result-object v7

    #@4
    .line 1071
    .local v7, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    iget-boolean v8, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    #@6
    if-nez v8, :cond_0

    #@8
    .line 1072
    return-void

    #@9
    .line 1076
    :cond_0
    const/4 v0, 0x0

    #@a
    .line 1077
    .local v0, "flagged":Z
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@c
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v6

    #@10
    .end local v0    # "flagged":Z
    .local v6, "ref$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v8

    #@14
    if-eqz v8, :cond_2

    #@16
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v5

    #@1a
    check-cast v5, Ljava/lang/ref/WeakReference;

    #@1c
    .line 1078
    .local v5, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@1f
    move-result-object v4

    #@20
    check-cast v4, Lcom/android/internal/view/menu/MenuPresenter;

    #@22
    .line 1079
    .local v4, "presenter":Lcom/android/internal/view/menu/MenuPresenter;
    if-nez v4, :cond_1

    #@24
    .line 1080
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@26
    invoke-virtual {v8, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@29
    goto :goto_0

    #@2a
    .line 1082
    :cond_1
    invoke-interface {v4}, Lcom/android/internal/view/menu/MenuPresenter;->flagActionItems()Z

    #@2d
    move-result v8

    #@2e
    or-int/2addr v0, v8

    #@2f
    .local v0, "flagged":Z
    goto :goto_0

    #@30
    .line 1086
    .end local v0    # "flagged":Z
    .end local v4    # "presenter":Lcom/android/internal/view/menu/MenuPresenter;
    .end local v5    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/view/menu/MenuPresenter;>;"
    :cond_2
    if-eqz v0, :cond_4

    #@32
    .line 1087
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    #@37
    .line 1088
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    #@3c
    .line 1089
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@3f
    move-result v3

    #@40
    .line 1090
    .local v3, "itemsSize":I
    const/4 v1, 0x0

    #@41
    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_5

    #@43
    .line 1091
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@46
    move-result-object v2

    #@47
    check-cast v2, Lcom/android/internal/view/menu/MenuItemImpl;

    #@49
    .line 1092
    .local v2, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    #@4c
    move-result v8

    #@4d
    if-eqz v8, :cond_3

    #@4f
    .line 1093
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    #@51
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@54
    .line 1090
    :goto_2
    add-int/lit8 v1, v1, 0x1

    #@56
    goto :goto_1

    #@57
    .line 1095
    :cond_3
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    #@59
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5c
    goto :goto_2

    #@5d
    .line 1101
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v3    # "itemsSize":I
    :cond_4
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    #@5f
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    #@62
    .line 1102
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    #@64
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    #@67
    .line 1103
    iget-object v8, p0, Lcom/android/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    #@69
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    #@6c
    move-result-object v9

    #@6d
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@70
    .line 1105
    :cond_5
    const/4 v8, 0x0

    #@71
    iput-boolean v8, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    #@73
    .line 1066
    return-void
.end method

.method public getActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->flagActionItems()V

    #@3
    .line 1110
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    #@5
    return-object v0
.end method

.method protected getActionViewStatesKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 395
    const-string/jumbo v0, "android:menu:actionviewstates"

    #@3
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getExpandedItem()Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 1

    #@0
    .prologue
    .line 1301
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    #@2
    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    #@0
    .prologue
    .line 1222
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 1226
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/MenuItem;

    #@8
    return-object v0
.end method

.method public getNonActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1114
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->flagActionItems()V

    #@3
    .line 1115
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    #@5
    return-object v0
.end method

.method getOptionalIconsVisible()Z
    .locals 1

    #@0
    .prologue
    .line 1253
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    #@2
    return v0
.end method

.method getResources()Landroid/content/res/Resources;
    .locals 1

    #@0
    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    #@2
    return-object v0
.end method

.method public getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;
    .locals 0

    #@0
    .prologue
    .line 1234
    return-object p0
.end method

.method public getVisibleItems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1024
    iget-boolean v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    #@2
    if-nez v3, :cond_0

    #@4
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    #@6
    return-object v3

    #@7
    .line 1027
    :cond_0
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@c
    .line 1029
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v2

    #@12
    .line 1031
    .local v2, "itemsSize":I
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@15
    .line 1032
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    #@1d
    .line 1033
    .local v1, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_1

    #@23
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@28
    .line 1031
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 1036
    .end local v1    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_2
    const/4 v3, 0x0

    #@2c
    iput-boolean v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    #@2e
    .line 1037
    const/4 v3, 0x1

    #@2f
    iput-boolean v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    #@31
    .line 1039
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    #@33
    return-object v3
.end method

.method public hasVisibleItems()Z
    .locals 4

    #@0
    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    #@3
    move-result v2

    #@4
    .line 613
    .local v2, "size":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@7
    .line 614
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    #@f
    .line 615
    .local v1, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_0

    #@15
    .line 616
    const/4 v3, 0x1

    #@16
    return v3

    #@17
    .line 613
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 620
    .end local v1    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1
    const/4 v3, 0x0

    #@1b
    return v3
.end method

.method isQwertyMode()Z
    .locals 1

    #@0
    .prologue
    .line 720
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mQwertyMode:Z

    #@2
    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 686
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/MenuItemImpl;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    #@0
    .prologue
    .line 749
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    #@2
    return v0
.end method

.method onItemActionRequestChanged(Lcom/android/internal/view/menu/MenuItemImpl;)V
    .locals 1
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1019
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    #@3
    .line 1020
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@6
    .line 1017
    return-void
.end method

.method onItemVisibleChanged(Lcom/android/internal/view/menu/MenuItemImpl;)V
    .locals 1
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 1009
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    #@3
    .line 1010
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@6
    .line 1007
    return-void
.end method

.method public onItemsChanged(Z)V
    .locals 2
    .param p1, "structureChanged"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 970
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    #@3
    if-nez v0, :cond_1

    #@5
    .line 971
    if-eqz p1, :cond_0

    #@7
    .line 972
    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    #@9
    .line 973
    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    #@b
    .line 976
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->dispatchPresenterUpdate(Z)V

    #@e
    .line 969
    :goto_0
    return-void

    #@f
    .line 978
    :cond_1
    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    #@11
    goto :goto_0
.end method

.method public performIdentifierAction(II)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 890
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 894
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Lcom/android/internal/view/menu/MenuPresenter;I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;Lcom/android/internal/view/menu/MenuPresenter;I)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "preferredPresenter"    # Lcom/android/internal/view/menu/MenuPresenter;
    .param p3, "flags"    # I

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    move-object v1, p1

    #@3
    .line 898
    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    #@5
    .line 900
    .local v1, "itemImpl":Lcom/android/internal/view/menu/MenuItemImpl;
    if-eqz v1, :cond_1

    #@7
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    #@a
    move-result v5

    #@b
    if-eqz v5, :cond_1

    #@d
    .line 904
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->invoke()Z

    #@10
    move-result v0

    #@11
    .line 906
    .local v0, "invoked":Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    #@14
    move-result-object v2

    #@15
    .line 907
    .local v2, "provider":Landroid/view/ActionProvider;
    if-eqz v2, :cond_2

    #@17
    invoke-virtual {v2}, Landroid/view/ActionProvider;->hasSubMenu()Z

    #@1a
    move-result v3

    #@1b
    .line 908
    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    #@1e
    move-result v5

    #@1f
    if-eqz v5, :cond_3

    #@21
    .line 909
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->expandActionView()Z

    #@24
    move-result v5

    #@25
    or-int/2addr v0, v5

    #@26
    .line 910
    if-eqz v0, :cond_0

    #@28
    invoke-virtual {p0, v7}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    #@2b
    .line 930
    :cond_0
    :goto_1
    return v0

    #@2c
    .line 901
    .end local v0    # "invoked":Z
    .end local v2    # "provider":Landroid/view/ActionProvider;
    :cond_1
    return v6

    #@2d
    .line 907
    .restart local v0    # "invoked":Z
    .restart local v2    # "provider":Landroid/view/ActionProvider;
    :cond_2
    const/4 v3, 0x0

    #@2e
    .local v3, "providerHasSubMenu":Z
    goto :goto_0

    #@2f
    .line 911
    .end local v3    # "providerHasSubMenu":Z
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    #@32
    move-result v5

    #@33
    if-nez v5, :cond_4

    #@35
    if-eqz v3, :cond_7

    #@37
    .line 912
    :cond_4
    invoke-virtual {p0, v6}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    #@3a
    .line 914
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    #@3d
    move-result v5

    #@3e
    if-nez v5, :cond_5

    #@40
    .line 915
    new-instance v5, Lcom/android/internal/view/menu/SubMenuBuilder;

    #@42
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    #@45
    move-result-object v6

    #@46
    invoke-direct {v5, v6, p0, v1}, Lcom/android/internal/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)V

    #@49
    invoke-virtual {v1, v5}, Lcom/android/internal/view/menu/MenuItemImpl;->setSubMenu(Lcom/android/internal/view/menu/SubMenuBuilder;)V

    #@4c
    .line 918
    :cond_5
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    #@4f
    move-result-object v4

    #@50
    check-cast v4, Lcom/android/internal/view/menu/SubMenuBuilder;

    #@52
    .line 919
    .local v4, "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    if-eqz v3, :cond_6

    #@54
    .line 920
    invoke-virtual {v2, v4}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    #@57
    .line 922
    :cond_6
    invoke-direct {p0, v4, p2}, Lcom/android/internal/view/menu/MenuBuilder;->dispatchSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;Lcom/android/internal/view/menu/MenuPresenter;)Z

    #@5a
    move-result v5

    #@5b
    or-int/2addr v0, v5

    #@5c
    .line 923
    if-nez v0, :cond_0

    #@5e
    invoke-virtual {p0, v7}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    #@61
    goto :goto_1

    #@62
    .line 925
    .end local v4    # "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    :cond_7
    and-int/lit8 v5, p3, 0x1

    #@64
    if-nez v5, :cond_0

    #@66
    .line 926
    invoke-virtual {p0, v7}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    #@69
    goto :goto_1
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 785
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/MenuItemImpl;

    #@3
    move-result-object v1

    #@4
    .line 787
    .local v1, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    const/4 v0, 0x0

    #@5
    .line 789
    .local v0, "handled":Z
    if-eqz v1, :cond_0

    #@7
    .line 790
    invoke-virtual {p0, v1, p3}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    #@a
    move-result v0

    #@b
    .line 793
    .end local v0    # "handled":Z
    :cond_0
    and-int/lit8 v2, p3, 0x2

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 794
    const/4 v2, 0x1

    #@10
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    #@13
    .line 797
    :cond_1
    return v0
.end method

.method public removeGroup(I)V
    .locals 6
    .param p1, "group"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 499
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->findGroupIndex(I)I

    #@4
    move-result v0

    #@5
    .line 501
    .local v0, "i":I
    if-ltz v0, :cond_1

    #@7
    .line 502
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v4

    #@d
    sub-int v1, v4, v0

    #@f
    .line 503
    .local v1, "maxRemovable":I
    const/4 v2, 0x0

    #@10
    .local v2, "numRemoved":I
    move v3, v2

    #@11
    .line 504
    .end local v2    # "numRemoved":I
    .local v3, "numRemoved":I
    :goto_0
    add-int/lit8 v2, v3, 0x1

    #@13
    .end local v3    # "numRemoved":I
    .restart local v2    # "numRemoved":I
    if-ge v3, v1, :cond_0

    #@15
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v4

    #@1b
    check-cast v4, Lcom/android/internal/view/menu/MenuItemImpl;

    #@1d
    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    #@20
    move-result v4

    #@21
    if-ne v4, p1, :cond_0

    #@23
    .line 506
    invoke-direct {p0, v0, v5}, Lcom/android/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    #@26
    move v3, v2

    #@27
    .end local v2    # "numRemoved":I
    .restart local v3    # "numRemoved":I
    goto :goto_0

    #@28
    .line 510
    .end local v3    # "numRemoved":I
    .restart local v2    # "numRemoved":I
    :cond_0
    const/4 v4, 0x1

    #@29
    invoke-virtual {p0, v4}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@2c
    .line 498
    .end local v1    # "maxRemovable":I
    .end local v2    # "numRemoved":I
    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 495
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->findItemIndex(I)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-direct {p0, v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    #@8
    .line 494
    return-void
.end method

.method public removeItemAt(I)V
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 533
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    #@4
    .line 532
    return-void
.end method

.method public removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V
    .locals 4
    .param p1, "presenter"    # Lcom/android/internal/view/menu/MenuPresenter;

    #@0
    .prologue
    .line 240
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v2

    #@6
    .local v2, "ref$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_2

    #@c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Ljava/lang/ref/WeakReference;

    #@12
    .line 241
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/view/menu/MenuPresenter;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/android/internal/view/menu/MenuPresenter;

    #@18
    .line 242
    .local v0, "item":Lcom/android/internal/view/menu/MenuPresenter;
    if-eqz v0, :cond_1

    #@1a
    if-ne v0, p1, :cond_0

    #@1c
    .line 243
    :cond_1
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@1e
    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@21
    goto :goto_0

    #@22
    .line 239
    .end local v0    # "item":Lcom/android/internal/view/menu/MenuPresenter;
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/internal/view/menu/MenuPresenter;>;"
    :cond_2
    return-void
.end method

.method public restoreActionViewStates(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "states"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 365
    if-nez p1, :cond_0

    #@2
    .line 366
    return-void

    #@3
    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    #@6
    move-result-object v8

    #@7
    .line 369
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    #@a
    move-result-object v7

    #@b
    .line 372
    .local v7, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    #@e
    move-result v3

    #@f
    .line 373
    .local v3, "itemCount":I
    const/4 v1, 0x0

    #@10
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    #@12
    .line 374
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    #@15
    move-result-object v2

    #@16
    .line 375
    .local v2, "item":Landroid/view/MenuItem;
    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    #@19
    move-result-object v6

    #@1a
    .line 376
    .local v6, "v":Landroid/view/View;
    if-eqz v6, :cond_1

    #@1c
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    #@1f
    move-result v8

    #@20
    const/4 v9, -0x1

    #@21
    if-eq v8, v9, :cond_1

    #@23
    .line 377
    invoke-virtual {v6, v7}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    #@26
    .line 379
    :cond_1
    invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z

    #@29
    move-result v8

    #@2a
    if-eqz v8, :cond_2

    #@2c
    .line 380
    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    #@2f
    move-result-object v5

    #@30
    check-cast v5, Lcom/android/internal/view/menu/SubMenuBuilder;

    #@32
    .line 381
    .local v5, "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    invoke-virtual {v5, p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    #@35
    .line 373
    .end local v5    # "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@37
    goto :goto_0

    #@38
    .line 385
    .end local v2    # "item":Landroid/view/MenuItem;
    .end local v6    # "v":Landroid/view/View;
    :cond_3
    const-string/jumbo v8, "android:menu:expandedactionview"

    #@3b
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@3e
    move-result v0

    #@3f
    .line 386
    .local v0, "expandedId":I
    if-lez v0, :cond_4

    #@41
    .line 387
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    #@44
    move-result-object v4

    #@45
    .line 388
    .local v4, "itemToExpand":Landroid/view/MenuItem;
    if-eqz v4, :cond_4

    #@47
    .line 389
    invoke-interface {v4}, Landroid/view/MenuItem;->expandActionView()Z

    #@4a
    .line 364
    .end local v4    # "itemToExpand":Landroid/view/MenuItem;
    :cond_4
    return-void
.end method

.method public restorePresenterStates(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 333
    return-void
.end method

.method public saveActionViewStates(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "outStates"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 338
    const/4 v5, 0x0

    #@1
    .line 340
    .local v5, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    #@4
    move-result v2

    #@5
    .line 341
    .local v2, "itemCount":I
    const/4 v0, 0x0

    #@6
    .end local v5    # "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    #@8
    .line 342
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    #@b
    move-result-object v1

    #@c
    .line 343
    .local v1, "item":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    #@f
    move-result-object v4

    #@10
    .line 344
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_1

    #@12
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    #@15
    move-result v6

    #@16
    const/4 v7, -0x1

    #@17
    if-eq v6, v7, :cond_1

    #@19
    .line 345
    if-nez v5, :cond_0

    #@1b
    .line 346
    new-instance v5, Landroid/util/SparseArray;

    #@1d
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    #@20
    .line 348
    :cond_0
    invoke-virtual {v4, v5}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    #@23
    .line 349
    invoke-interface {v1}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    #@26
    move-result v6

    #@27
    if-eqz v6, :cond_1

    #@29
    .line 350
    const-string/jumbo v6, "android:menu:expandedactionview"

    #@2c
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    #@2f
    move-result v7

    #@30
    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@33
    .line 353
    :cond_1
    invoke-interface {v1}, Landroid/view/MenuItem;->hasSubMenu()Z

    #@36
    move-result v6

    #@37
    if-eqz v6, :cond_2

    #@39
    .line 354
    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    #@3c
    move-result-object v3

    #@3d
    check-cast v3, Lcom/android/internal/view/menu/SubMenuBuilder;

    #@3f
    .line 355
    .local v3, "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    invoke-virtual {v3, p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    #@42
    .line 341
    .end local v3    # "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@44
    goto :goto_0

    #@45
    .line 359
    .end local v1    # "item":Landroid/view/MenuItem;
    .end local v4    # "v":Landroid/view/View;
    :cond_3
    if-eqz v5, :cond_4

    #@47
    .line 360
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    #@4a
    move-result-object v6

    #@4b
    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    #@4e
    .line 337
    :cond_4
    return-void
.end method

.method public savePresenterStates(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 330
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 329
    return-void
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuBuilder$Callback;

    #@0
    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    #@2
    .line 398
    return-void
.end method

.method public setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    #@0
    .prologue
    .line 1245
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    #@2
    .line 1244
    return-void
.end method

.method public setDefaultShowAsAction(I)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 0
    .param p1, "defaultShowAsAction"    # I

    #@0
    .prologue
    .line 203
    iput p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    #@2
    .line 204
    return-object p0
.end method

.method setExclusiveItemChecked(Landroid/view/MenuItem;)V
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 555
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    #@3
    move-result v2

    #@4
    .line 557
    .local v2, "group":I
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    .line 558
    .local v0, "N":I
    const/4 v3, 0x0

    #@b
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    #@d
    .line 559
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    #@15
    .line 560
    .local v1, "curItem":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    #@18
    move-result v4

    #@19
    if-ne v4, v2, :cond_0

    #@1b
    .line 561
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    #@1e
    move-result v4

    #@1f
    if-nez v4, :cond_1

    #@21
    .line 558
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@23
    goto :goto_0

    #@24
    .line 562
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isCheckable()Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_0

    #@2a
    .line 565
    if-ne v1, p1, :cond_2

    #@2c
    const/4 v4, 0x1

    #@2d
    :goto_2
    invoke-virtual {v1, v4}, Lcom/android/internal/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    #@30
    goto :goto_1

    #@31
    :cond_2
    const/4 v4, 0x0

    #@32
    goto :goto_2

    #@33
    .line 554
    .end local v1    # "curItem":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_3
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 4
    .param p1, "group"    # I
    .param p2, "checkable"    # Z
    .param p3, "exclusive"    # Z

    #@0
    .prologue
    .line 571
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 573
    .local v0, "N":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 574
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/internal/view/menu/MenuItemImpl;

    #@11
    .line 575
    .local v2, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    #@14
    move-result v3

    #@15
    if-ne v3, p1, :cond_0

    #@17
    .line 576
    invoke-virtual {v2, p3}, Lcom/android/internal/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    #@1a
    .line 577
    invoke-virtual {v2, p2}, Lcom/android/internal/view/menu/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    #@1d
    .line 573
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 570
    .end local v2    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 4
    .param p1, "group"    # I
    .param p2, "enabled"    # Z

    #@0
    .prologue
    .line 600
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 602
    .local v0, "N":I
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 603
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/internal/view/menu/MenuItemImpl;

    #@11
    .line 604
    .local v2, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    #@14
    move-result v3

    #@15
    if-ne v3, p1, :cond_0

    #@17
    .line 605
    invoke-virtual {v2, p2}, Lcom/android/internal/view/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    #@1a
    .line 602
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 599
    .end local v2    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 5
    .param p1, "group"    # I
    .param p2, "visible"    # Z

    #@0
    .prologue
    .line 583
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 588
    .local v0, "N":I
    const/4 v1, 0x0

    #@7
    .line 589
    .local v1, "changedAtLeastOneItem":Z
    const/4 v2, 0x0

    #@8
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@a
    .line 590
    iget-object v4, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    #@12
    .line 591
    .local v3, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    #@15
    move-result v4

    #@16
    if-ne v4, p1, :cond_0

    #@18
    .line 592
    invoke-virtual {v3, p2}, Lcom/android/internal/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_0

    #@1e
    const/4 v1, 0x1

    #@1f
    .line 589
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@21
    goto :goto_0

    #@22
    .line 596
    .end local v3    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1
    if-eqz v1, :cond_2

    #@24
    const/4 v4, 0x1

    #@25
    invoke-virtual {p0, v4}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@28
    .line 582
    :cond_2
    return-void
.end method

.method protected setHeaderIconInt(I)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 6
    .param p1, "iconRes"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1201
    const/4 v1, 0x0

    #@2
    move-object v0, p0

    #@3
    move v3, p1

    #@4
    move-object v4, v2

    #@5
    move-object v5, v2

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    #@9
    .line 1202
    return-object p0
.end method

.method protected setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    move-object v0, p0

    #@3
    move v3, v1

    #@4
    move-object v4, p1

    #@5
    move-object v5, v2

    #@6
    .line 1189
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    #@9
    .line 1190
    return-object p0
.end method

.method protected setHeaderTitleInt(I)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 6
    .param p1, "titleRes"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1177
    const/4 v3, 0x0

    #@2
    move-object v0, p0

    #@3
    move v1, p1

    #@4
    move-object v4, v2

    #@5
    move-object v5, v2

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    #@9
    .line 1178
    return-object p0
.end method

.method protected setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 6
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v2, p1

    #@4
    move v3, v1

    #@5
    move-object v5, v4

    #@6
    .line 1165
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    #@9
    .line 1166
    return-object p0
.end method

.method protected setHeaderViewInt(Landroid/view/View;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    move-object v0, p0

    #@3
    move v3, v1

    #@4
    move-object v4, v2

    #@5
    move-object v5, p1

    #@6
    .line 1213
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    #@9
    .line 1214
    return-object p0
.end method

.method setOptionalIconsVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    #@0
    .prologue
    .line 1249
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    #@2
    .line 1248
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 1
    .param p1, "isQwerty"    # Z

    #@0
    .prologue
    .line 690
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mQwertyMode:Z

    #@2
    .line 692
    const/4 v0, 0x0

    #@3
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@6
    .line 689
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1
    .param p1, "shortcutsVisible"    # Z

    #@0
    .prologue
    .line 732
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mShortcutsVisible:Z

    #@2
    if-ne v0, p1, :cond_0

    #@4
    return-void

    #@5
    .line 734
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    #@8
    .line 735
    const/4 v0, 0x0

    #@9
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@c
    .line 731
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public startDispatchingItemsChanged()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 995
    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    #@3
    .line 997
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 998
    iput-boolean v1, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    #@9
    .line 999
    const/4 v0, 0x1

    #@a
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    #@d
    .line 994
    :cond_0
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .locals 1

    #@0
    .prologue
    .line 988
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 989
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    #@7
    .line 990
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    #@a
    .line 987
    :cond_0
    return-void
.end method
