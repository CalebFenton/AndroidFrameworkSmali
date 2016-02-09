.class Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mExpandedIndex:I

.field final synthetic this$0:Lcom/android/internal/view/menu/MenuPopupHelper;


# direct methods
.method static synthetic -get0(Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@2
    return-object v0
.end method

.method public constructor <init>(Lcom/android/internal/view/menu/MenuPopupHelper;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/view/menu/MenuPopupHelper;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    #@0
    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #@2
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    #@5
    .line 364
    const/4 v0, -0x1

    #@6
    iput v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    #@8
    .line 367
    iput-object p2, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@a
    .line 368
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    #@d
    .line 366
    return-void
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 6

    #@0
    .prologue
    .line 409
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #@2
    invoke-static {v5}, Lcom/android/internal/view/menu/MenuPopupHelper;->-get1(Lcom/android/internal/view/menu/MenuPopupHelper;)Lcom/android/internal/view/menu/MenuBuilder;

    #@5
    move-result-object v5

    #@6
    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getExpandedItem()Lcom/android/internal/view/menu/MenuItemImpl;

    #@9
    move-result-object v1

    #@a
    .line 410
    .local v1, "expandedItem":Lcom/android/internal/view/menu/MenuItemImpl;
    if-eqz v1, :cond_1

    #@c
    .line 411
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #@e
    invoke-static {v5}, Lcom/android/internal/view/menu/MenuPopupHelper;->-get1(Lcom/android/internal/view/menu/MenuPopupHelper;)Lcom/android/internal/view/menu/MenuBuilder;

    #@11
    move-result-object v5

    #@12
    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    #@15
    move-result-object v4

    #@16
    .line 412
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v0

    #@1a
    .line 413
    .local v0, "count":I
    const/4 v2, 0x0

    #@1b
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@1d
    .line 414
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v3

    #@21
    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    #@23
    .line 415
    .local v3, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    if-ne v3, v1, :cond_0

    #@25
    .line 416
    iput v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    #@27
    .line 417
    return-void

    #@28
    .line 413
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 421
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    const/4 v5, -0x1

    #@2c
    iput v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    #@2e
    .line 408
    return-void
.end method

.method public getCount()I
    .locals 2

    #@0
    .prologue
    .line 372
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #@2
    invoke-static {v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->-get2(Lcom/android/internal/view/menu/MenuPopupHelper;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 373
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@a
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    #@d
    move-result-object v0

    #@e
    .line 374
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    #@10
    if-gez v1, :cond_1

    #@12
    .line 375
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@15
    move-result v1

    #@16
    return v1

    #@17
    .line 373
    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    #@1c
    move-result-object v0

    #@1d
    .restart local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    goto :goto_0

    #@1e
    .line 377
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@21
    move-result v1

    #@22
    add-int/lit8 v1, v1, -0x1

    #@24
    return v1
.end method

.method public getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 381
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #@2
    invoke-static {v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->-get2(Lcom/android/internal/view/menu/MenuPopupHelper;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 382
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@a
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    #@d
    move-result-object v0

    #@e
    .line 383
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    #@10
    if-ltz v1, :cond_0

    #@12
    iget v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    #@14
    if-lt p1, v1, :cond_0

    #@16
    .line 384
    add-int/lit8 p1, p1, 0x1

    #@18
    .line 386
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    #@1e
    return-object v1

    #@1f
    .line 382
    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@21
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    #@24
    move-result-object v0

    #@25
    .restart local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 380
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 392
    int-to-long v0, p1

    #@1
    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 396
    if-nez p2, :cond_0

    #@3
    .line 397
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #@5
    invoke-static {v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->-get0(Lcom/android/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;

    #@8
    move-result-object v1

    #@9
    const v2, 0x109009a

    #@c
    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@f
    move-result-object p2

    #@10
    :cond_0
    move-object v0, p2

    #@11
    .line 400
    check-cast v0, Lcom/android/internal/view/menu/MenuView$ItemView;

    #@13
    .line 401
    .local v0, "itemView":Lcom/android/internal/view/menu/MenuView$ItemView;
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #@15
    iget-boolean v1, v1, Lcom/android/internal/view/menu/MenuPopupHelper;->mForceShowIcon:Z

    #@17
    if-eqz v1, :cond_1

    #@19
    move-object v1, p2

    #@1a
    .line 402
    check-cast v1, Lcom/android/internal/view/menu/ListMenuItemView;

    #@1c
    const/4 v2, 0x1

    #@1d
    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    #@20
    .line 404
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    #@23
    move-result-object v1

    #@24
    invoke-interface {v0, v1, v3}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    #@27
    .line 405
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    #@0
    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    #@3
    .line 427
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    #@6
    .line 425
    return-void
.end method
