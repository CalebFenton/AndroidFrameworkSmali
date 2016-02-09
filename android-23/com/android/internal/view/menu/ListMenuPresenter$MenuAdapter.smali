.class Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "ListMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ListMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mExpandedIndex:I

.field final synthetic this$0:Lcom/android/internal/view/menu/ListMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/ListMenuPresenter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/view/menu/ListMenuPresenter;

    #@0
    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@2
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    #@5
    .line 222
    const/4 v0, -0x1

    #@6
    iput v0, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    #@8
    .line 225
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->findExpandedIndex()V

    #@b
    .line 224
    return-void
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 6

    #@0
    .prologue
    .line 263
    iget-object v5, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@2
    iget-object v5, v5, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@4
    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getExpandedItem()Lcom/android/internal/view/menu/MenuItemImpl;

    #@7
    move-result-object v1

    #@8
    .line 264
    .local v1, "expandedItem":Lcom/android/internal/view/menu/MenuItemImpl;
    if-eqz v1, :cond_1

    #@a
    .line 265
    iget-object v5, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@c
    iget-object v5, v5, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@e
    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    #@11
    move-result-object v4

    #@12
    .line 266
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@15
    move-result v0

    #@16
    .line 267
    .local v0, "count":I
    const/4 v2, 0x0

    #@17
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@19
    .line 268
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    #@1f
    .line 269
    .local v3, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    if-ne v3, v1, :cond_0

    #@21
    .line 270
    iput v2, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    #@23
    .line 271
    return-void

    #@24
    .line 267
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_0

    #@27
    .line 275
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_1
    const/4 v5, -0x1

    #@28
    iput v5, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    #@2a
    .line 262
    return-void
.end method

.method public getCount()I
    .locals 4

    #@0
    .prologue
    .line 229
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@2
    iget-object v2, v2, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@4
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    #@7
    move-result-object v1

    #@8
    .line 230
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v2

    #@c
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@e
    invoke-static {v3}, Lcom/android/internal/view/menu/ListMenuPresenter;->-get0(Lcom/android/internal/view/menu/ListMenuPresenter;)I

    #@11
    move-result v3

    #@12
    sub-int v0, v2, v3

    #@14
    .line 231
    .local v0, "count":I
    iget v2, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    #@16
    if-gez v2, :cond_0

    #@18
    .line 232
    return v0

    #@19
    .line 234
    :cond_0
    add-int/lit8 v2, v0, -0x1

    #@1b
    return v2
.end method

.method public getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    .line 238
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@2
    iget-object v1, v1, Lcom/android/internal/view/menu/ListMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    #@4
    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    #@7
    move-result-object v0

    #@8
    .line 239
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@a
    invoke-static {v1}, Lcom/android/internal/view/menu/ListMenuPresenter;->-get0(Lcom/android/internal/view/menu/ListMenuPresenter;)I

    #@d
    move-result v1

    #@e
    add-int/2addr p1, v1

    #@f
    .line 240
    iget v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    #@11
    if-ltz v1, :cond_0

    #@13
    iget v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->mExpandedIndex:I

    #@15
    if-lt p1, v1, :cond_0

    #@17
    .line 241
    add-int/lit8 p1, p1, 0x1

    #@19
    .line 243
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    #@1f
    return-object v1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

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
    .line 249
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
    .line 253
    if-nez p2, :cond_0

    #@3
    .line 254
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@5
    iget-object v1, v1, Lcom/android/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    #@7
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->this$0:Lcom/android/internal/view/menu/ListMenuPresenter;

    #@9
    iget v2, v2, Lcom/android/internal/view/menu/ListMenuPresenter;->mItemLayoutRes:I

    #@b
    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@e
    move-result-object p2

    #@f
    :cond_0
    move-object v0, p2

    #@10
    .line 257
    check-cast v0, Lcom/android/internal/view/menu/MenuView$ItemView;

    #@12
    .line 258
    .local v0, "itemView":Lcom/android/internal/view/menu/MenuView$ItemView;
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    #@15
    move-result-object v1

    #@16
    invoke-interface {v0, v1, v3}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    #@19
    .line 259
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    #@0
    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuPresenter$MenuAdapter;->findExpandedIndex()V

    #@3
    .line 281
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    #@6
    .line 279
    return-void
.end method
