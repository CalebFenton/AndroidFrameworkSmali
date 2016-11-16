.class public Lcom/android/internal/widget/WatchHeaderListView;
.super Landroid/widget/ListView;
.source "WatchHeaderListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;
    }
.end annotation


# instance fields
.field private mTopPanel:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 44
    return-void
.end method

.method private wrapAdapterIfNecessary()V
    .locals 3

    #@0
    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    #@3
    move-result-object v0

    #@4
    .line 111
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_1

    #@6
    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 112
    instance-of v1, v0, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;

    #@c
    if-nez v1, :cond_0

    #@e
    .line 113
    invoke-virtual {p0}, Landroid/widget/ListView;->wrapHeaderListAdapterInternal()V

    #@11
    .line 116
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;

    #@17
    iget-object v2, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    #@19
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;->setTopPanel(Landroid/view/View;)V

    #@1c
    .line 117
    invoke-virtual {p0}, Landroid/widget/ListView;->dispatchDataSetObserverOnChangedInternal()V

    #@1f
    .line 109
    :cond_1
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 59
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/WatchHeaderListView;->setTopPanel(Landroid/view/View;)V

    #@7
    .line 57
    return-void

    #@8
    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v1, "WatchHeaderListView can host only one header"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    #@0
    .prologue
    .line 96
    .local p1, "predicate":Lcom/android/internal/util/Predicate;, "Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 97
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    #@6
    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    #@8
    if-eqz v1, :cond_0

    #@a
    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    #@c
    if-eq v1, p2, :cond_0

    #@e
    .line 98
    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    #@10
    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 101
    :cond_0
    return-object v0

    #@17
    .line 99
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    #@19
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    #@1c
    move-result-object v1

    #@1d
    return-object v1
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/widget/ListView;->findViewTraversal(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 79
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    #@6
    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    #@8
    if-eqz v1, :cond_0

    #@a
    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    #@c
    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 82
    :cond_0
    return-object v0

    #@13
    .line 80
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    #@15
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@18
    move-result-object v1

    #@19
    return-object v1
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/widget/ListView;->findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    .line 88
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    #@6
    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    #@8
    if-eqz v1, :cond_0

    #@a
    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    #@c
    invoke-virtual {v1}, Landroid/view/View;->isRootNamespace()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 91
    :cond_0
    return-object v0

    #@13
    .line 89
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    #@15
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    #@18
    move-result-object v1

    #@19
    return-object v1
.end method

.method public getHeaderViewsCount()I
    .locals 1

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-super {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    #@c
    move-result v0

    #@d
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    #@0
    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@3
    .line 73
    invoke-direct {p0}, Lcom/android/internal/widget/WatchHeaderListView;->wrapAdapterIfNecessary()V

    #@6
    .line 71
    return-void
.end method

.method public setTopPanel(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/internal/widget/WatchHeaderListView;->mTopPanel:Landroid/view/View;

    #@2
    .line 67
    invoke-direct {p0}, Lcom/android/internal/widget/WatchHeaderListView;->wrapAdapterIfNecessary()V

    #@5
    .line 65
    return-void
.end method

.method protected wrapHeaderListAdapterInternal(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)Landroid/widget/HeaderViewListAdapter;
    .locals 1
    .param p3, "adapter"    # Landroid/widget/ListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")",
            "Landroid/widget/HeaderViewListAdapter;"
        }
    .end annotation

    #@0
    .prologue
    .line 53
    .local p1, "headerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    .local p2, "footerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/ListView$FixedViewInfo;>;"
    new-instance v0, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;

    #@2
    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/widget/WatchHeaderListView$WatchHeaderListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    #@5
    return-object v0
.end method
