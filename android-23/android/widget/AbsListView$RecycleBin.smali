.class Landroid/widget/AbsListView$RecycleBin;
.super Ljava/lang/Object;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private mActiveViews:[Landroid/view/View;

.field private mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstActivePosition:I

.field private mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSkippedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViewsById:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method static synthetic -get0(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)Landroid/widget/AbsListView$RecyclerListener;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    #@2
    return-object p1
.end method

.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    #@0
    .prologue
    .line 6375
    iput-object p1, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 6389
    const/4 v0, 0x0

    #@6
    new-array v0, v0, [Landroid/view/View;

    #@8
    iput-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    #@a
    .line 6375
    return-void
.end method

.method private clearAccessibilityFromScrap(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 6866
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    #@3
    .line 6867
    const/4 v0, 0x0

    #@4
    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    #@7
    .line 6865
    return-void
.end method

.method private clearScrap(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 6859
    .local p1, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v1

    #@4
    .line 6860
    .local v1, "scrapCount":I
    const/4 v0, 0x0

    #@5
    .local v0, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@7
    .line 6861
    add-int/lit8 v2, v1, -0x1

    #@9
    sub-int/2addr v2, v0

    #@a
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    check-cast v2, Landroid/view/View;

    #@10
    const/4 v3, 0x0

    #@11
    invoke-direct {p0, v2, v3}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    #@14
    .line 6860
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 6858
    :cond_0
    return-void
.end method

.method private getSkippedScrap()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 6653
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6654
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    #@b
    .line 6656
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    #@d
    return-object v0
.end method

.method private pruneScrapViews()V
    .locals 14

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    .line 6743
    iget-object v12, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    #@3
    array-length v3, v12

    #@4
    .line 6744
    .local v3, "maxViews":I
    iget v11, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    #@6
    .line 6745
    .local v11, "viewTypeCount":I
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    #@8
    .line 6746
    .local v5, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v11, :cond_1

    #@b
    .line 6747
    aget-object v4, v5, v1

    #@d
    .line 6748
    .local v4, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v6

    #@11
    .line 6749
    .local v6, "size":I
    sub-int v0, v6, v3

    #@13
    .line 6750
    .local v0, "extras":I
    add-int/lit8 v6, v6, -0x1

    #@15
    .line 6751
    const/4 v2, 0x0

    #@16
    .local v2, "j":I
    move v7, v6

    #@17
    .end local v6    # "size":I
    .local v7, "size":I
    :goto_1
    if-ge v2, v0, :cond_0

    #@19
    .line 6752
    add-int/lit8 v6, v7, -0x1

    #@1b
    .end local v7    # "size":I
    .restart local v6    # "size":I
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@1e
    move-result-object v12

    #@1f
    check-cast v12, Landroid/view/View;

    #@21
    invoke-direct {p0, v12, v13}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    #@24
    .line 6751
    add-int/lit8 v2, v2, 0x1

    #@26
    move v7, v6

    #@27
    .end local v6    # "size":I
    .restart local v7    # "size":I
    goto :goto_1

    #@28
    .line 6746
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 6756
    .end local v0    # "extras":I
    .end local v2    # "j":I
    .end local v4    # "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "size":I
    :cond_1
    iget-object v9, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    #@2d
    .line 6757
    .local v9, "transViewsByPos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    if-eqz v9, :cond_3

    #@2f
    .line 6758
    const/4 v1, 0x0

    #@30
    :goto_2
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    #@33
    move-result v12

    #@34
    if-ge v1, v12, :cond_3

    #@36
    .line 6759
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@39
    move-result-object v10

    #@3a
    check-cast v10, Landroid/view/View;

    #@3c
    .line 6760
    .local v10, "v":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->hasTransientState()Z

    #@3f
    move-result v12

    #@40
    if-nez v12, :cond_2

    #@42
    .line 6761
    invoke-direct {p0, v10, v13}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    #@45
    .line 6762
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->removeAt(I)V

    #@48
    .line 6763
    add-int/lit8 v1, v1, -0x1

    #@4a
    .line 6758
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@4c
    goto :goto_2

    #@4d
    .line 6768
    .end local v10    # "v":Landroid/view/View;
    :cond_3
    iget-object v8, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    #@4f
    .line 6769
    .local v8, "transViewsById":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    if-eqz v8, :cond_5

    #@51
    .line 6770
    const/4 v1, 0x0

    #@52
    :goto_3
    invoke-virtual {v8}, Landroid/util/LongSparseArray;->size()I

    #@55
    move-result v12

    #@56
    if-ge v1, v12, :cond_5

    #@58
    .line 6771
    invoke-virtual {v8, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@5b
    move-result-object v10

    #@5c
    check-cast v10, Landroid/view/View;

    #@5e
    .line 6772
    .restart local v10    # "v":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->hasTransientState()Z

    #@61
    move-result v12

    #@62
    if-nez v12, :cond_4

    #@64
    .line 6773
    invoke-direct {p0, v10, v13}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    #@67
    .line 6774
    invoke-virtual {v8, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    #@6a
    .line 6775
    add-int/lit8 v1, v1, -0x1

    #@6c
    .line 6770
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@6e
    goto :goto_3

    #@6f
    .line 6742
    .end local v10    # "v":Landroid/view/View;
    :cond_5
    return-void
.end method

.method private removeDetachedView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    #@0
    .prologue
    .line 6871
    const/4 v0, 0x0

    #@1
    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    #@4
    .line 6872
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    #@6
    invoke-static {v0, p1, p2}, Landroid/widget/AbsListView;->-wrap5(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    #@9
    .line 6870
    return-void
.end method

.method private retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 10
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    #@0
    .prologue
    .line 6831
    .local p1, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v5

    #@4
    .line 6832
    .local v5, "size":I
    if-lez v5, :cond_3

    #@6
    .line 6834
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_2

    #@9
    .line 6835
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v6

    #@d
    check-cast v6, Landroid/view/View;

    #@f
    .line 6837
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    #@15
    .line 6839
    .local v1, "params":Landroid/widget/AbsListView$LayoutParams;
    iget-object v7, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    #@17
    iget-boolean v7, v7, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    #@19
    if-eqz v7, :cond_0

    #@1b
    .line 6840
    iget-object v7, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    #@1d
    iget-object v7, v7, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@1f
    invoke-interface {v7, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    #@22
    move-result-wide v2

    #@23
    .line 6841
    .local v2, "id":J
    iget-wide v8, v1, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    #@25
    cmp-long v7, v2, v8

    #@27
    if-nez v7, :cond_1

    #@29
    .line 6842
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@2c
    move-result-object v7

    #@2d
    check-cast v7, Landroid/view/View;

    #@2f
    return-object v7

    #@30
    .line 6844
    .end local v2    # "id":J
    :cond_0
    iget v7, v1, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    #@32
    if-ne v7, p2, :cond_1

    #@34
    .line 6845
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@37
    move-result-object v4

    #@38
    check-cast v4, Landroid/view/View;

    #@3a
    .line 6846
    .local v4, "scrap":Landroid/view/View;
    invoke-direct {p0, v4}, Landroid/widget/AbsListView$RecycleBin;->clearAccessibilityFromScrap(Landroid/view/View;)V

    #@3d
    .line 6847
    return-object v4

    #@3e
    .line 6834
    .end local v4    # "scrap":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@40
    goto :goto_0

    #@41
    .line 6850
    .end local v1    # "params":Landroid/widget/AbsListView$LayoutParams;
    .end local v6    # "view":Landroid/view/View;
    :cond_2
    add-int/lit8 v7, v5, -0x1

    #@43
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@46
    move-result-object v4

    #@47
    check-cast v4, Landroid/view/View;

    #@49
    .line 6851
    .restart local v4    # "scrap":Landroid/view/View;
    invoke-direct {p0, v4}, Landroid/widget/AbsListView$RecycleBin;->clearAccessibilityFromScrap(Landroid/view/View;)V

    #@4c
    .line 6852
    return-object v4

    #@4d
    .line 6854
    .end local v0    # "i":I
    .end local v4    # "scrap":Landroid/view/View;
    :cond_3
    const/4 v7, 0x0

    #@4e
    return-object v7
.end method


# virtual methods
.method addScrapView(Landroid/view/View;I)V
    .locals 6
    .param p1, "scrap"    # Landroid/view/View;
    .param p2, "position"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 6587
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    #@7
    .line 6588
    .local v0, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-nez v0, :cond_0

    #@9
    .line 6591
    return-void

    #@a
    .line 6594
    :cond_0
    iput p2, v0, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    #@c
    .line 6598
    iget v2, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    #@e
    .line 6599
    .local v2, "viewType":I
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    #@11
    move-result v3

    #@12
    if-nez v3, :cond_2

    #@14
    .line 6603
    const/4 v3, -0x2

    #@15
    if-eq v2, v3, :cond_1

    #@17
    .line 6604
    invoke-direct {p0}, Landroid/widget/AbsListView$RecycleBin;->getSkippedScrap()Ljava/util/ArrayList;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1e
    .line 6606
    :cond_1
    return-void

    #@1f
    .line 6609
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    #@22
    .line 6615
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    #@24
    invoke-virtual {v3, v4}, Landroid/widget/AbsListView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    #@27
    .line 6619
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    #@2a
    move-result v1

    #@2b
    .line 6620
    .local v1, "scrapHasTransientState":Z
    if-eqz v1, :cond_8

    #@2d
    .line 6621
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    #@2f
    iget-object v3, v3, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@31
    if-eqz v3, :cond_5

    #@33
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    #@35
    iget-boolean v3, v3, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    #@37
    if-eqz v3, :cond_5

    #@39
    .line 6624
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    #@3b
    if-nez v3, :cond_3

    #@3d
    .line 6625
    new-instance v3, Landroid/util/LongSparseArray;

    #@3f
    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    #@42
    iput-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    #@44
    .line 6627
    :cond_3
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    #@46
    iget-wide v4, v0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    #@48
    invoke-virtual {v3, v4, v5, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@4b
    .line 6586
    :cond_4
    :goto_0
    return-void

    #@4c
    .line 6628
    :cond_5
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    #@4e
    iget-boolean v3, v3, Landroid/widget/AbsListView;->mDataChanged:Z

    #@50
    if-nez v3, :cond_7

    #@52
    .line 6631
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    #@54
    if-nez v3, :cond_6

    #@56
    .line 6632
    new-instance v3, Landroid/util/SparseArray;

    #@58
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    #@5b
    iput-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    #@5d
    .line 6634
    :cond_6
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    #@5f
    invoke-virtual {v3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@62
    goto :goto_0

    #@63
    .line 6637
    :cond_7
    invoke-direct {p0}, Landroid/widget/AbsListView$RecycleBin;->getSkippedScrap()Ljava/util/ArrayList;

    #@66
    move-result-object v3

    #@67
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@6a
    goto :goto_0

    #@6b
    .line 6640
    :cond_8
    iget v3, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    #@6d
    if-ne v3, v4, :cond_9

    #@6f
    .line 6641
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    #@71
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@74
    .line 6646
    :goto_1
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    #@76
    if-eqz v3, :cond_4

    #@78
    .line 6647
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    #@7a
    invoke-interface {v3, p1}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    #@7d
    goto :goto_0

    #@7e
    .line 6643
    :cond_9
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    #@80
    aget-object v3, v3, v2

    #@82
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@85
    goto :goto_1
.end method

.method clear()V
    .locals 5

    #@0
    .prologue
    .line 6458
    iget v3, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    #@2
    const/4 v4, 0x1

    #@3
    if-ne v3, v4, :cond_1

    #@5
    .line 6459
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    #@7
    .line 6460
    .local v1, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v1}, Landroid/widget/AbsListView$RecycleBin;->clearScrap(Ljava/util/ArrayList;)V

    #@a
    .line 6469
    .end local v1    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView$RecycleBin;->clearTransientStateViews()V

    #@d
    .line 6457
    return-void

    #@e
    .line 6462
    :cond_1
    iget v2, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    #@10
    .line 6463
    .local v2, "typeCount":I
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@13
    .line 6464
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    #@15
    aget-object v1, v3, v0

    #@17
    .line 6465
    .restart local v1    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v1}, Landroid/widget/AbsListView$RecycleBin;->clearScrap(Ljava/util/ArrayList;)V

    #@1a
    .line 6463
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0
.end method

.method clearTransientStateViews()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 6542
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    #@3
    .line 6543
    .local v3, "viewsByPos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    if-eqz v3, :cond_1

    #@5
    .line 6544
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@8
    move-result v0

    #@9
    .line 6545
    .local v0, "N":I
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@c
    .line 6546
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v4

    #@10
    check-cast v4, Landroid/view/View;

    #@12
    invoke-direct {p0, v4, v5}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    #@15
    .line 6545
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 6548
    :cond_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    #@1b
    .line 6551
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    #@1d
    .line 6552
    .local v2, "viewsById":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    if-eqz v2, :cond_3

    #@1f
    .line 6553
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    #@22
    move-result v0

    #@23
    .line 6554
    .restart local v0    # "N":I
    const/4 v1, 0x0

    #@24
    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    #@26
    .line 6555
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@29
    move-result-object v4

    #@2a
    check-cast v4, Landroid/view/View;

    #@2c
    invoke-direct {p0, v4, v5}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    #@2f
    .line 6554
    add-int/lit8 v1, v1, 0x1

    #@31
    goto :goto_1

    #@32
    .line 6557
    :cond_2
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    #@35
    .line 6541
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method fillActiveViews(II)V
    .locals 6
    .param p1, "childCount"    # I
    .param p2, "firstActivePosition"    # I

    #@0
    .prologue
    .line 6480
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    #@2
    array-length v4, v4

    #@3
    if-ge v4, p1, :cond_0

    #@5
    .line 6481
    new-array v4, p1, [Landroid/view/View;

    #@7
    iput-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    #@9
    .line 6483
    :cond_0
    iput p2, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    #@b
    .line 6486
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    #@d
    .line 6487
    .local v0, "activeViews":[Landroid/view/View;
    const/4 v2, 0x0

    #@e
    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    #@10
    .line 6488
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    #@12
    invoke-virtual {v4, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    #@15
    move-result-object v1

    #@16
    .line 6489
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@19
    move-result-object v3

    #@1a
    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    #@1c
    .line 6491
    .local v3, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v3, :cond_1

    #@1e
    iget v4, v3, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    #@20
    const/4 v5, -0x2

    #@21
    if-eq v4, v5, :cond_1

    #@23
    .line 6494
    aput-object v1, v0, v2

    #@25
    .line 6496
    add-int v4, p2, v2

    #@27
    iput v4, v3, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    #@29
    .line 6487
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 6479
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_2
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 6509
    iget v3, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    #@3
    sub-int v1, p1, v3

    #@5
    .line 6510
    .local v1, "index":I
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    #@7
    .line 6511
    .local v0, "activeViews":[Landroid/view/View;
    if-ltz v1, :cond_0

    #@9
    array-length v3, v0

    #@a
    if-ge v1, v3, :cond_0

    #@c
    .line 6512
    aget-object v2, v0, v1

    #@e
    .line 6513
    .local v2, "match":Landroid/view/View;
    aput-object v4, v0, v1

    #@10
    .line 6514
    return-object v2

    #@11
    .line 6516
    .end local v2    # "match":Landroid/view/View;
    :cond_0
    return-object v4
.end method

.method getScrapView(I)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 6565
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    #@3
    iget-object v1, v1, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@5
    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    #@8
    move-result v0

    #@9
    .line 6566
    .local v0, "whichScrap":I
    if-gez v0, :cond_0

    #@b
    .line 6567
    return-object v3

    #@c
    .line 6569
    :cond_0
    iget v1, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    #@e
    const/4 v2, 0x1

    #@f
    if-ne v1, v2, :cond_1

    #@11
    .line 6570
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    #@13
    invoke-direct {p0, v1, p1}, Landroid/widget/AbsListView$RecycleBin;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    #@16
    move-result-object v1

    #@17
    return-object v1

    #@18
    .line 6571
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    #@1a
    array-length v1, v1

    #@1b
    if-ge v0, v1, :cond_2

    #@1d
    .line 6572
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    #@1f
    aget-object v1, v1, v0

    #@21
    invoke-direct {p0, v1, p1}, Landroid/widget/AbsListView$RecycleBin;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    #@24
    move-result-object v1

    #@25
    return-object v1

    #@26
    .line 6574
    :cond_2
    return-object v3
.end method

.method getTransientStateView(I)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 6520
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    #@3
    iget-object v4, v4, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@5
    if-eqz v4, :cond_0

    #@7
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    #@9
    iget-boolean v4, v4, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    #@b
    if-eqz v4, :cond_0

    #@d
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    #@f
    if-eqz v4, :cond_0

    #@11
    .line 6521
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    #@13
    iget-object v4, v4, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@15
    invoke-interface {v4, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    #@18
    move-result-wide v0

    #@19
    .line 6522
    .local v0, "id":J
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    #@1b
    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Landroid/view/View;

    #@21
    .line 6523
    .local v3, "result":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    #@23
    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    #@26
    .line 6524
    return-object v3

    #@27
    .line 6526
    .end local v0    # "id":J
    .end local v3    # "result":Landroid/view/View;
    :cond_0
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    #@29
    if-eqz v4, :cond_1

    #@2b
    .line 6527
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    #@2d
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@30
    move-result v2

    #@31
    .line 6528
    .local v2, "index":I
    if-ltz v2, :cond_1

    #@33
    .line 6529
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    #@35
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@38
    move-result-object v3

    #@39
    check-cast v3, Landroid/view/View;

    #@3b
    .line 6530
    .restart local v3    # "result":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    #@3d
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->removeAt(I)V

    #@40
    .line 6531
    return-object v3

    #@41
    .line 6534
    .end local v2    # "index":I
    .end local v3    # "result":Landroid/view/View;
    :cond_1
    return-object v5
.end method

.method public markChildrenDirty()V
    .locals 8

    #@0
    .prologue
    .line 6420
    iget v6, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    #@2
    const/4 v7, 0x1

    #@3
    if-ne v6, v7, :cond_0

    #@5
    .line 6421
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    #@7
    .line 6422
    .local v3, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v4

    #@b
    .line 6423
    .local v4, "scrapCount":I
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    #@e
    .line 6424
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v6

    #@12
    check-cast v6, Landroid/view/View;

    #@14
    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    #@17
    .line 6423
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 6427
    .end local v1    # "i":I
    .end local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "scrapCount":I
    :cond_0
    iget v5, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    #@1c
    .line 6428
    .local v5, "typeCount":I
    const/4 v1, 0x0

    #@1d
    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v5, :cond_2

    #@1f
    .line 6429
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    #@21
    aget-object v3, v6, v1

    #@23
    .line 6430
    .restart local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@26
    move-result v4

    #@27
    .line 6431
    .restart local v4    # "scrapCount":I
    const/4 v2, 0x0

    #@28
    .local v2, "j":I
    :goto_2
    if-ge v2, v4, :cond_1

    #@2a
    .line 6432
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2d
    move-result-object v6

    #@2e
    check-cast v6, Landroid/view/View;

    #@30
    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    #@33
    .line 6431
    add-int/lit8 v2, v2, 0x1

    #@35
    goto :goto_2

    #@36
    .line 6428
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@38
    goto :goto_1

    #@39
    .line 6436
    .end local v2    # "j":I
    .end local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "scrapCount":I
    .end local v5    # "typeCount":I
    :cond_2
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    #@3b
    if-eqz v6, :cond_3

    #@3d
    .line 6437
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    #@3f
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    #@42
    move-result v0

    #@43
    .line 6438
    .local v0, "count":I
    const/4 v1, 0x0

    #@44
    :goto_3
    if-ge v1, v0, :cond_3

    #@46
    .line 6439
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    #@48
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@4b
    move-result-object v6

    #@4c
    check-cast v6, Landroid/view/View;

    #@4e
    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    #@51
    .line 6438
    add-int/lit8 v1, v1, 0x1

    #@53
    goto :goto_3

    #@54
    .line 6442
    .end local v0    # "count":I
    :cond_3
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    #@56
    if-eqz v6, :cond_4

    #@58
    .line 6443
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    #@5a
    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    #@5d
    move-result v0

    #@5e
    .line 6444
    .restart local v0    # "count":I
    const/4 v1, 0x0

    #@5f
    :goto_4
    if-ge v1, v0, :cond_4

    #@61
    .line 6445
    iget-object v6, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    #@63
    invoke-virtual {v6, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@66
    move-result-object v6

    #@67
    check-cast v6, Landroid/view/View;

    #@69
    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    #@6c
    .line 6444
    add-int/lit8 v1, v1, 0x1

    #@6e
    goto :goto_4

    #@6f
    .line 6419
    .end local v0    # "count":I
    :cond_4
    return-void
.end method

.method reclaimScrapViews(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 6785
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget v4, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    #@2
    const/4 v5, 0x1

    #@3
    if-ne v4, v5, :cond_1

    #@5
    .line 6786
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    #@7
    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@a
    .line 6784
    :cond_0
    return-void

    #@b
    .line 6788
    :cond_1
    iget v3, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    #@d
    .line 6789
    .local v3, "viewTypeCount":I
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    #@f
    .line 6790
    .local v2, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    #@12
    .line 6791
    aget-object v1, v2, v0

    #@14
    .line 6792
    .local v1, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@17
    .line 6790
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0
.end method

.method removeSkippedScrap()V
    .locals 4

    #@0
    .prologue
    .line 6663
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 6664
    return-void

    #@5
    .line 6666
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v0

    #@b
    .line 6667
    .local v0, "count":I
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@e
    .line 6668
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Landroid/view/View;

    #@16
    const/4 v3, 0x0

    #@17
    invoke-direct {p0, v2, v3}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    #@1a
    .line 6667
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 6670
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@22
    .line 6662
    return-void
.end method

.method scrapActiveViews()V
    .locals 13

    #@0
    .prologue
    .line 6677
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    #@2
    .line 6678
    .local v0, "activeViews":[Landroid/view/View;
    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    #@4
    if-eqz v11, :cond_2

    #@6
    const/4 v2, 0x1

    #@7
    .line 6679
    .local v2, "hasListener":Z
    :goto_0
    iget v11, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    #@9
    const/4 v12, 0x1

    #@a
    if-le v11, v12, :cond_3

    #@c
    const/4 v7, 0x1

    #@d
    .line 6681
    .local v7, "multipleScraps":Z
    :goto_1
    iget-object v8, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    #@f
    .line 6682
    .local v8, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v1, v0

    #@10
    .line 6683
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    #@12
    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_a

    #@14
    .line 6684
    aget-object v9, v0, v3

    #@16
    .line 6685
    .local v9, "victim":Landroid/view/View;
    if-eqz v9, :cond_1

    #@18
    .line 6687
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1b
    move-result-object v6

    #@1c
    check-cast v6, Landroid/widget/AbsListView$LayoutParams;

    #@1e
    .line 6688
    .local v6, "lp":Landroid/widget/AbsListView$LayoutParams;
    iget v10, v6, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    #@20
    .line 6690
    .local v10, "whichScrap":I
    const/4 v11, 0x0

    #@21
    aput-object v11, v0, v3

    #@23
    .line 6692
    invoke-virtual {v9}, Landroid/view/View;->hasTransientState()Z

    #@26
    move-result v11

    #@27
    if-eqz v11, :cond_7

    #@29
    .line 6694
    invoke-virtual {v9}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    #@2c
    .line 6696
    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    #@2e
    iget-object v11, v11, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@30
    if-eqz v11, :cond_4

    #@32
    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    #@34
    iget-boolean v11, v11, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    #@36
    if-eqz v11, :cond_4

    #@38
    .line 6697
    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    #@3a
    if-nez v11, :cond_0

    #@3c
    .line 6698
    new-instance v11, Landroid/util/LongSparseArray;

    #@3e
    invoke-direct {v11}, Landroid/util/LongSparseArray;-><init>()V

    #@41
    iput-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    #@43
    .line 6700
    :cond_0
    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    #@45
    iget-object v11, v11, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    #@47
    iget v12, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    #@49
    add-int/2addr v12, v3

    #@4a
    invoke-interface {v11, v12}, Landroid/widget/ListAdapter;->getItemId(I)J

    #@4d
    move-result-wide v4

    #@4e
    .line 6701
    .local v4, "id":J
    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    #@50
    invoke-virtual {v11, v4, v5, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    #@53
    .line 6683
    .end local v4    # "id":J
    .end local v6    # "lp":Landroid/widget/AbsListView$LayoutParams;
    .end local v10    # "whichScrap":I
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, -0x1

    #@55
    goto :goto_2

    #@56
    .line 6678
    .end local v1    # "count":I
    .end local v2    # "hasListener":Z
    .end local v3    # "i":I
    .end local v7    # "multipleScraps":Z
    .end local v8    # "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v9    # "victim":Landroid/view/View;
    :cond_2
    const/4 v2, 0x0

    #@57
    .restart local v2    # "hasListener":Z
    goto :goto_0

    #@58
    .line 6679
    :cond_3
    const/4 v7, 0x0

    #@59
    .restart local v7    # "multipleScraps":Z
    goto :goto_1

    #@5a
    .line 6702
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    .restart local v6    # "lp":Landroid/widget/AbsListView$LayoutParams;
    .restart local v8    # "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v9    # "victim":Landroid/view/View;
    .restart local v10    # "whichScrap":I
    :cond_4
    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    #@5c
    iget-boolean v11, v11, Landroid/widget/AbsListView;->mDataChanged:Z

    #@5e
    if-nez v11, :cond_6

    #@60
    .line 6703
    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    #@62
    if-nez v11, :cond_5

    #@64
    .line 6704
    new-instance v11, Landroid/util/SparseArray;

    #@66
    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    #@69
    iput-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    #@6b
    .line 6706
    :cond_5
    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    #@6d
    iget v12, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    #@6f
    add-int/2addr v12, v3

    #@70
    invoke-virtual {v11, v12, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@73
    goto :goto_3

    #@74
    .line 6707
    :cond_6
    const/4 v11, -0x2

    #@75
    if-eq v10, v11, :cond_1

    #@77
    .line 6709
    const/4 v11, 0x0

    #@78
    invoke-direct {p0, v9, v11}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    #@7b
    goto :goto_3

    #@7c
    .line 6711
    :cond_7
    invoke-virtual {p0, v10}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    #@7f
    move-result v11

    #@80
    if-nez v11, :cond_8

    #@82
    .line 6713
    const/4 v11, -0x2

    #@83
    if-eq v10, v11, :cond_1

    #@85
    .line 6714
    const/4 v11, 0x0

    #@86
    invoke-direct {p0, v9, v11}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    #@89
    goto :goto_3

    #@8a
    .line 6718
    :cond_8
    if-eqz v7, :cond_9

    #@8c
    .line 6719
    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    #@8e
    aget-object v8, v11, v10

    #@90
    .line 6722
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    #@93
    .line 6723
    iget v11, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    #@95
    add-int/2addr v11, v3

    #@96
    iput v11, v6, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    #@98
    .line 6724
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9b
    .line 6726
    if-eqz v2, :cond_1

    #@9d
    .line 6727
    iget-object v11, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    #@9f
    invoke-interface {v11, v9}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    #@a2
    goto :goto_3

    #@a3
    .line 6733
    .end local v6    # "lp":Landroid/widget/AbsListView$LayoutParams;
    .end local v9    # "victim":Landroid/view/View;
    .end local v10    # "whichScrap":I
    :cond_a
    invoke-direct {p0}, Landroid/widget/AbsListView$RecycleBin;->pruneScrapViews()V

    #@a6
    .line 6676
    return-void
.end method

.method setCacheColorHint(I)V
    .locals 10
    .param p1, "color"    # I

    #@0
    .prologue
    .line 6803
    iget v8, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    #@2
    const/4 v9, 0x1

    #@3
    if-ne v8, v9, :cond_0

    #@5
    .line 6804
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    #@7
    .line 6805
    .local v4, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v5

    #@b
    .line 6806
    .local v5, "scrapCount":I
    const/4 v2, 0x0

    #@c
    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_2

    #@e
    .line 6807
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v8

    #@12
    check-cast v8, Landroid/view/View;

    #@14
    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    #@17
    .line 6806
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 6810
    .end local v2    # "i":I
    .end local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "scrapCount":I
    :cond_0
    iget v6, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    #@1c
    .line 6811
    .local v6, "typeCount":I
    const/4 v2, 0x0

    #@1d
    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v6, :cond_2

    #@1f
    .line 6812
    iget-object v8, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    #@21
    aget-object v4, v8, v2

    #@23
    .line 6813
    .restart local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@26
    move-result v5

    #@27
    .line 6814
    .restart local v5    # "scrapCount":I
    const/4 v3, 0x0

    #@28
    .local v3, "j":I
    :goto_2
    if-ge v3, v5, :cond_1

    #@2a
    .line 6815
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2d
    move-result-object v8

    #@2e
    check-cast v8, Landroid/view/View;

    #@30
    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    #@33
    .line 6814
    add-int/lit8 v3, v3, 0x1

    #@35
    goto :goto_2

    #@36
    .line 6811
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@38
    goto :goto_1

    #@39
    .line 6820
    .end local v3    # "j":I
    .end local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "scrapCount":I
    .end local v6    # "typeCount":I
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    #@3b
    .line 6821
    .local v0, "activeViews":[Landroid/view/View;
    array-length v1, v0

    #@3c
    .line 6822
    .local v1, "count":I
    const/4 v2, 0x0

    #@3d
    :goto_3
    if-ge v2, v1, :cond_4

    #@3f
    .line 6823
    aget-object v7, v0, v2

    #@41
    .line 6824
    .local v7, "victim":Landroid/view/View;
    if-eqz v7, :cond_3

    #@43
    .line 6825
    invoke-virtual {v7, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    #@46
    .line 6822
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@48
    goto :goto_3

    #@49
    .line 6802
    .end local v7    # "victim":Landroid/view/View;
    :cond_4
    return-void
.end method

.method public setViewTypeCount(I)V
    .locals 4
    .param p1, "viewTypeCount"    # I

    #@0
    .prologue
    .line 6406
    const/4 v2, 0x1

    #@1
    if-ge p1, v2, :cond_0

    #@3
    .line 6407
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v3, "Can\'t have a viewTypeCount < 1"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 6410
    :cond_0
    new-array v1, p1, [Ljava/util/ArrayList;

    #@e
    .line 6411
    .local v1, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    #@11
    .line 6412
    new-instance v2, Ljava/util/ArrayList;

    #@13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@16
    aput-object v2, v1, v0

    #@18
    .line 6411
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 6414
    :cond_1
    iput p1, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    #@1d
    .line 6415
    const/4 v2, 0x0

    #@1e
    aget-object v2, v1, v2

    #@20
    iput-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    #@22
    .line 6416
    iput-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    #@24
    .line 6405
    return-void
.end method

.method public shouldRecycleViewType(I)Z
    .locals 1
    .param p1, "viewType"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6451
    if-ltz p1, :cond_0

    #@3
    const/4 v0, 0x1

    #@4
    :cond_0
    return v0
.end method
